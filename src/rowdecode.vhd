----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09/24/2019 09:43:42 AM
-- Design Name:
-- Module Name: rowdecode - Behavioral
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

entity rowdecode is port(
    row: in std_logic_vector(13 downto 0); -- Binary tree encoded input row information we want to decode
    clk: in std_logic; 
    reset: in std_logic; -- Reset state to start

    rdy: out std_logic;                      -- Flag to say we are done decoding
    nhits: out std_logic_vector(3 downto 0); -- Decoding output: Number of hits in the row (1-8)
    nbits: out std_logic_vector(3 downto 0)  -- Decoding output: Number of bits in the row (1-14)
    );
--  Port ( );
end rowdecode;

architecture Behavioral of rowdecode is
    type StateType is (start, tier0, tier1, tier2, combine, idle);
    shared variable pos: integer range 0 to 13;       -- Position in the input row we are currently looking at
    signal state : StateType;
    signal rowbuf : std_logic_vector(13 downto 0); -- Cache of the input row

    signal node0 : std_logic_vector(1 downto 0); -- One node signal for each of the 7
    signal node1 : std_logic_vector(1 downto 0); -- nodes of the binary tree.
    signal node2 : std_logic_vector(1 downto 0); -- Node 0 is the root node,
    signal node3 : std_logic_vector(1 downto 0); -- nodes 1 and 2 are on tier 1
    signal node4 : std_logic_vector(1 downto 0); -- 3-6 are on tier 2
    signal node5 : std_logic_vector(1 downto 0);
    signal node6 : std_logic_vector(1 downto 0);

    -- Helper function to count the number of bits set to one
    function count_1s(data : std_logic_vector) return integer is
        variable n_1s : integer :=0;
        begin
            for i in data'range loop
                if data(i) = '1' then
                    n_1s := n_1s + 1;
                end if;
            end loop;
            return n_1s;
    end function count_1s;
begin
    state_proc:process(clk) begin
        if rising_edge(clk) then
            if(reset='1') then
                -- Disable rdy flag and go to start
                rdy <= '0';
                state <= start;
            else
                case state is
                    when start =>
                        -- Cache the input row
                        rowbuf <= row;

                        -- Initialize all nodes to zero,
                        -- set the position to the start
                        -- (13 == most significant bit
                        -- of the 14-bit input)
                        node0 <= "00";
                        node1 <= "00";
                        node2 <= "00";
                        node3 <= "00";
                        node4 <= "00";
                        node5 <= "00";
                        node6 <= "00";
                        rdy <= '0';
                        nhits <= "0000";
                        nbits <= "0000";
                        pos:=13;
                        -- Start decoding
                        state <= tier0;
                    when tier0 =>
                        -- In tier 0, there is only one node,
                        -- so no ambiguity.
                        -- The if/else block checks if the next symbol
                        -- has 1 bits (in which case it starts with '0')
                        -- or two bits (in which case it starts with '1')
                        if (rowbuf(pos)='0') then
                            node0 <= "01";
                            pos := pos-1;
                        elsif (rowbuf(pos-1)='1') then
                            node0<= "11";
                            pos := pos-2;
                        else
                            node0<="10";
                            pos := pos-2;
                        end if;

                        state <= tier1;
                    when tier1 =>
                        -- Same as tier0, except we now have to
                        -- check which node to write to, as there are
                        -- two nodes on this layer. The decision is based
                        -- on whether the respective nodes have already
                        -- been filled and whether or not the parent node
                        -- says that the given node *should* be filled.
                        if (node0(1)='1') and (node1="00") then
                            -- Fill node 1
                            if (rowbuf(pos)='0') then
                                node1 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node1<= "11";
                                pos := pos-2;
                            else
                                node1<="10";
                                pos := pos-2;
                            end if;

                            -- Shortcut to tier 2
                            if(node0(0)='1') then
                                state <= tier1;
                            else
                                state <= tier2;
                            end if;
                        elsif (node0(0)='1') and (node2="00") then
                        -- Fill node 2
                            if (rowbuf(pos)='0') then
                                node2 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node2<= "11";
                                pos := pos-2;
                            else
                                node2<="10";
                                pos := pos-2;
                            end if;
                            state <= tier2;
                        else
                            state <= tier2;
                        end if;
                    when tier2 =>
                        -- Same as tier1, except there are now
                        -- four possible nodes, descending from
                        -- two parent nodes.
                        if (node1(1)='1') and (node3="00") then
                        -- Fill node 3
                            if (rowbuf(pos)='0') then
                                node3 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node3<= "11";
                                pos := pos-2;
                            else
                                node3<="10";
                                pos := pos-2;
                            end if;

                            -- Shortcut to end
                            if(node1(0)='0') and (node2="00") then
                                state <= combine;
                            else
                                state <= tier2;
                            end if;
                        elsif (node1(0)='1') and (node4="00") then
                        -- Fill node 4
                            if (rowbuf(pos)='0') then
                                node4 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node4<= "11";
                                pos := pos-2;
                            else
                                node4<="10";
                                pos := pos-2;
                            end if;

                            -- Shortcut to end
                            if(node2="00") then
                                state <= combine;
                            else
                                state <= tier2;
                            end if;
                        elsif (node2(1)='1') and (node5="00") then
                            -- Fill node 5
                            if (rowbuf(pos)='0') then
                                node5 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node5 <= "11";
                                pos := pos-2;
                            else
                                node5<="10";
                                pos := pos-2;
                            end if;
                            state <= tier2;
                            -- Shortcut to end
                            if(node2(0)='0') then
                                state <= combine;
                            else
                                state <= tier2;
                            end if;
                        elsif (node2(0)='1') and (node6="00") then
                            -- Fill node 6
                            if (rowbuf(pos)='0') then
                                node6 <= "01";
                                pos := pos-1;
                            elsif (rowbuf(pos-1)='1') then
                                node6<= "11";
                                pos := pos-2;
                            else
                                node6<="10";
                                pos := pos-2;
                            end if;
                            state <= combine;
                        else
                            state <= combine;
                        end if;
                    when combine =>
                        -- All nodes have been filled.
                        -- Derive the quantities we are interestd in


                        -- The number of hits in the row is equal
                        -- to the number of '1's in the 4 nodes of
                        -- tier2.
                        nhits <= std_logic_vector(to_unsigned(count_1s(node3 & node4 & node5 & node6), nhits'length));

                        -- The length of the encoded row in bits is given by the
                        -- value of the 'pos' variable.
                        nbits <= std_logic_vector(to_unsigned(13-pos, nbits'length));

                        -- Set the rdy signal to let the world know we are done
                        state <= idle;
                        rdy <= '1';
                    when idle =>
                        state <= idle;
                    when others =>
                        state <= start;
                end case;
            end if; -- reset
        end if; -- clk rising edge
    end process state_proc;
end Behavioral;
