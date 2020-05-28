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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity streamdecode is port(
    data: in std_logic_vector(63 downto 0); -- Binary tree encoded input row information we want to decode
    datavalid: in std_logic;
    clk: in std_logic;
    reset: in std_logic; -- Reset state to start
    dbg_pos: out integer range 0 to 255
    );
--  Port ( );
end streamdecode;

architecture Behavioral of streamdecode is
    type StateType is (newevent, newqcore, waitrow, idle);
    shared variable pos: integer range 0 to 251;  -- Position in the input row we are currently looking at
    signal state : StateType;
    signal buf : std_logic_vector(251 downto 0); -- Cache of inputs, 4x63 bits
    signal buf_empty : std_logic; -- Cache of inputs

    signal tworows : std_logic;                 -- Whether the current qcore has two rows. If not, it is assumed that it has one
    signal islast : std_logic;                  -- The 'islast' bit for the current qcore. If true, next qcore will have ccol field
    signal isneighbor : std_logic;              -- The 'isneighbor' bit for the current qcore. If true, next qcore will not have qrow field
    signal tag : std_logic_vector(7 downto 0);  -- Tag for the current event

    -- I/O signals for row decoder
    signal rd_reset: std_logic;                    -- Reset state to start
    signal rd_rdy:   std_logic;                    -- Flag to say we are done decoding
    signal rd_nhits: std_logic_vector(3 downto 0); -- Decoding output: Number of hits in the row (1-8)
    signal rd_nbits: std_logic_vector(3 downto 0);  -- Decoding output: Number of bits in the row (1-14)
    signal rd_row: std_logic_vector(13 downto 0);

    signal total_nhits: unsigned(16 downto 0); -- Sum of nhits over all rows in current qcore

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
            else
                --- Assumption:
                --- At every clock tick, we might receive a new input 64-bit block
                --- If so, we shift our current buffer by one block length
                --- and insert the new block
                --- TODO: Handle case where pos < 64, i.e. we are being too slow!
                if(datavalid='1') then
                    -- Shift left by 63 bits
                    -- we currently ignore the leading bit of the input,
                    -- which is the new stream bit
                    -- TODO: handle new stream bit
                    buf <= buf(188 downto 0) & (62 downto 0 => '0');

                    -- Insert new block
                    buf(62 downto 0) <= data(62 downto 0);

                    -- Shfit position pointer
                    if(pos=0) then
                        pos := 62;
                    else
                        pos := pos+63;
                    end if;
                    -- Signal that the buffer is not empty
                    buf_empty <= '0';
                end if;

                if(buf_empty = '0') then
                    case state is
                        when idle =>
                            state <= newevent;
                        when newevent =>
                            -- Initialization
                            islast<='0';
                            isneighbor<='0';
                            tworows<='0';
                            total_nhits <= (others => '0');

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
                                if (islast='0') then
                                    pos := pos-6;
                                end if;

                                -- Read 1-bit islast
                                islast <= buf(pos);
                                pos := pos - 1;

                                -- Read 1-bit isneighbor
                                isneighbor <= buf(pos);
                                pos := pos - 1;

                                if (isneighbor='0') then
                                    -- Skip 8-bit qrow address
                                    pos := pos - 8;
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
                                total_nhits <= total_nhits + unsigned(rd_nhits);--, total_nhits'length);
                                -- Next action depends on whether or not there is
                                -- another row to decode
                                if (tworows = '0') then
                                    -- This was the last row, so it's time
                                    -- to skip the ToTs
                                    pos := pos - 4*conv_integer(std_logic_vector(total_nhits));
                                    total_nhits <= (others => '0');
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
