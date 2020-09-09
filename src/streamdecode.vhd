----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09/24/2019 09:43:42 AM
-- Design Name:
-- Module Name: streamdecode - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
--use ieee.std_logic_signed.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;

use work.stream_util.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
entity streamdecode is
    -- Adjustable parameters
    generic(
        bufsize: integer := 252; -- Buffer size. Default is 4 blocks, without NS bits -> 4*(64-1)
        timeout: integer := 500 -- time to wait after last block before declaring stream finished
    );

    -- I/O
    port(
        data:          in  std_logic_vector(63 downto 0);   -- One block of input stream data
        datavalid_in:  in  std_logic;                       -- Flag indicating input data ready to read
        datavalid_out: out std_logic;                       -- Flag indicating output data ready to read
        clk:           in  std_logic;                       -- Clock
        reset:         in  std_logic;                       -- Flag to trigger reset to starting state
        block_out:     out std_logic_vector(62 downto 0);   -- One block of output stream data
        evt_bounds_out: out pos_array(7 downto 0);              -- Array of event boundaries in output block
        dbg_pos:       out integer range 0 to bufsize       -- FOR DEBUGGING ONLY: current position in the buffer

    );

end streamdecode;

architecture Behavioral of streamdecode is
    type StateType is (newevent, newqcore, waitrow, idle);
    type bufpos_array is array (natural range <>) of signed( integer(ceil(log2(real(bufsize)))) downto 0);
    signal state : StateType;                               -- States


    -- Buffer + I/O management
    shared variable pos:           integer range 0 to bufsize-1;         -- Current position in the buffer
    shared variable evt_bound_count:           integer range 0 to 8;         -- Current position in the buffer

    signal buf :                   std_logic_vector(bufsize-1 downto 0); -- Cache of inputs, 4x63 bits
    signal buf_empty :             std_logic;                            -- Flag to indicate whether buffer is empty
    signal blocks_read :           integer range 0 to 4;                 -- Counter for the number of blocks processed since reset
    signal time_since_last_block : integer range 0 to 511;               -- Counter for clock cycles since last block was read
    signal evt_bounds:             bufpos_array(31 downto 0);            -- Array of event boundaries in buffer

    -- Internal stream meta data
    signal tworows : std_logic;                 -- Whether the current qcore has two rows. If not, it is assumed that it has one
    signal islast : std_logic;                  -- The 'islast' bit for the current qcore. If true, next qcore will have ccol field
    signal isneighbor : std_logic;              -- The 'isneighbor' bit for the current qcore. If true, next qcore will not have qrow field
    signal tag : std_logic_vector(7 downto 0);  -- Tag for the current event

    -- I/O signals for row decoder
    signal rd_reset: std_logic;                    -- Reset state to start
    signal rd_rdy:   std_logic;                    -- Flag to say we are done decoding
    signal rd_nhits: std_logic_vector(3 downto 0); -- Decoding output: Number of hits in the row (1-8)
    signal rd_nbits: std_logic_vector(3 downto 0);  -- Decoding output: Number of bits in the row (1-14)
    signal rd_row:   std_logic_vector(13 downto 0);

    shared variable total_nhits: integer range 0 to 16; -- Sum of nhits over all rows in current qcore

begin
    rowdecoder: entity work.rowdecode
    port map (
        reset => rd_reset,
        row => rd_row,
        clk => clk,
        rdy => rd_rdy,
        nhits => rd_nhits,
        nbits => rd_nbits
    );
    state_proc:process(clk) begin
        if rising_edge(clk) then
            if(reset='1') then
                --- Reset buffer and position, go to start
                buf <= (others => '0');
                pos := 0;
                buf_empty <= '1';
                state <= idle;
                block_out <= (others => '0');
                blocks_read <= 0;

                -- Fill event boundary array with defaults
                -- Negative numbers indicate invalid positions
                for idx in 0 to evt_bounds'length-1 loop
                    evt_bounds(idx) <= to_signed(-1,evt_bounds'length);
                end loop;
            else
                --- Assumption:
                --- At every clock tick, we might receive a new input 64-bit block
                --- If so, we shift our current buffer by one block length
                --- and insert the new block
                --- TODO: Handle case where pos < 64, i.e. we are being too slow!
                if(datavalid_in='1') then
                    time_since_last_block <= 0;
                    -- Output old block
                    block_out <= buf(251 downto 189);

                    -- Data starts being valid as soon as we have
                    -- pushed the first block all the way through
                    -- the buffer. Currently, blocks_read only
                    -- counts to the max capacity of the buffer
                    if (blocks_read=4) then
                        datavalid_out <= '1';

                        -- Initialize array of event boundaries for output
                        for idx in 0 to evt_bounds_out'length-1 loop
                            evt_bounds_out(idx) <= to_signed(-1, evt_bounds_out'length);
                        end loop;

                        -- Find boundaries that are part of current block
                        evt_bound_count := 0;
                        for idx in 0 to evt_bounds'length-1 loop
                            if(evt_bounds(idx)>-1) and (evt_bounds(idx) < 63) then
                                evt_bounds_out(evt_bound_count) <= resize(evt_bounds(idx) - bufsize + 64, evt_bounds_out(0)'length);
                                evt_bounds(idx) <= to_signed(-1, evt_bounds(0)'length);
                                evt_bound_count := evt_bound_count +1;
                            end if;
                         end loop;
                    else
                        blocks_read <= blocks_read + 1;
                    end if;


                    -- Shift left by 63 bits
                    -- we currently ignore the leading bit of the input,
                    -- which is the new stream bit
                    buf <= buf(188 downto 0) & (62 downto 0 => '0');

                    -- Insert new block
                    buf(62 downto 0) <= data(62 downto 0);

                    -- Shift position pointer
                    if(pos=0) then
                        pos := 62;
                    else
                        pos := pos+63;
                    end if;

                    -- Shift event boundaries
                    for idx in 0 to evt_bounds'length-1 loop
                        if(evt_bounds(idx) > 0) then
                            evt_bounds(idx) <= evt_bounds(idx) + 63;
                        end if;
                    end loop;



                    -- Signal that the buffer is not empty
                    buf_empty <= '0';
                else
                    time_since_last_block <= time_since_last_block + 1;
                end if;

                -- We only decode if the buffer is not empty
                -- the and we only want to start decoding the last block (pos>63) if
                -- we have not received data in a long time. That is the only way we can
                -- tell beforehand whether we expect the stream to end here.
                if(buf_empty = '0') and ((pos>63) or (time_since_last_block > timeout)) then
                    case state is
                        when idle =>
                            state <= newevent;
                        when newevent =>
                            -- Push back the new event position
                            for idx in evt_bounds'length-1 downto 1 loop
                                evt_bounds(idx) <= evt_bounds(idx-1);
                            end loop;
                            evt_bounds(0) <= to_signed(pos,evt_bounds(0)'length);
                            -- Initialization
                            -- fine point: "islast" of the previous qcore
                            -- tells you whether the upcoming qcore
                            -- has a ccol address. Therefore, the starting
                            -- value is "1": The first qcore always has it
                            islast<='1';
                            -- All other values are set to 0
                            isneighbor<='0';
                            tworows<='0';
                            total_nhits := 0;

                            -- Events always start with an 8-bit tag
                            tag <= buf(pos downto pos-7);
                            pos := pos-8;

                            -- Which is followed by either another tag
                            -- or a ccol address. Tell them apart by first
                            -- three indicator bits
                            if(buf(pos downto pos-3) = "111") then
                                ---Tag followed by new tag -> Empty event!
                                pos := pos-3;
                                state <= newevent;
                            else
                                state <= newqcore;
                            end if;
                        when newqcore =>
                                -- Skip 6-bit ccol address
                                -- based on "islast" from previous qcore
                                if (islast='1') then
                                    pos := pos-6;
                                end if;

                                -- Read this qcore's 1-bit islast
                                islast <= buf(pos);
                                pos := pos - 1;

                                -- Read 1-bit isneighbor
                                isneighbor <= buf(pos);
                                if(buf(pos)='0') then
                                    -- Skip 8-bit qrow address + 1 bit isneighbor
                                    pos := pos - 9;
                                else
                                    -- Just one bit of isneighbor
                                    pos := pos - 1;
                                end if;

                                -- We have arrived at the hit map
                                -- The following bits tell us how many rows there are
                                -- "0" or "10" -> 1 row
                                -- "11" -> 2 rows
                                if (buf(pos)='0') then
                                    tworows <= '0';
                                    pos := pos-1;
                                elsif (buf(pos downto pos-1)="10") then
                                    tworows <= '0';
                                    pos := pos - 2;
                                else
                                    tworows <= '1';
                                    pos := pos - 2;
                                end if;

                                -- Feed the first row into the
                                -- decoder and start waiting for output
                                rd_row <= buf(pos downto pos-13);
                                rd_reset <= '1';
                                state <= waitrow;
                        when waitrow =>
                            if(rd_reset = '1') then
                                rd_reset <= '0';
                                state <= waitrow;
                            elsif(rd_rdy = '0') then
                                -- Decoder not done yet, nothing to be done
                                state <= waitrow;
                            else
                                -- Decoder has finished
                                -- Skip the bits of the already decoded hitmap
                                pos := pos - conv_integer(rd_nbits); --to_unsigned(rd_nbits, pos'length);
                                -- Add the number of hits to the total
                                total_nhits := to_integer(to_unsigned(total_nhits, rd_nhits'length) + unsigned(rd_nhits));
                                -- Next action depends on whether or not there is
                                -- another row to decode
                                if (tworows = '0') then
                                    -- This was the last row, so it's time
                                    -- to skip the ToTs
                                    pos := pos - 4*total_nhits;
                                    total_nhits := 0;
                                    -- And move on to next event or qcore
                                    if( buf(pos downto pos-3)="111") then
                                        pos := pos - 3;
                                        state <= newevent;
                                    else
                                        state <= newqcore;
                                    end if;
                                else
                                    -- This was the first of two rows
                                    -- so start decoding the second one
                                    tworows <= '0';
                                    rd_row <= buf(pos downto pos-13);
                                    rd_reset <= '1';
                                    state <= waitrow;
                                end if;
                            end if;
                        when others =>
                            state <= newevent;
                    end case;
                end if; --pos!=0
            end if; -- reset
            dbg_pos <= pos;
        end if; -- clk rising edge
    end process state_proc;
end Behavioral;
