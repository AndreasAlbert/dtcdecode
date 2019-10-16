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
    row: in std_logic_vector(13 downto 0);
    clk: in std_logic;
    
    rdy: out std_logic;
    nhits: out std_logic_vector(2 downto 0);
    nbits: out std_logic_vector(3 downto 0);

    node0: buffer std_logic_vector(1 downto 0);
    node1: buffer std_logic_vector(1 downto 0);
    node2: buffer std_logic_vector(1 downto 0);
    node3: buffer std_logic_vector(1 downto 0);
    node4: buffer std_logic_vector(1 downto 0);
    node5: buffer std_logic_vector(1 downto 0);
    node6: buffer std_logic_vector(1 downto 0)
    );
--  Port ( );
end rowdecode;

architecture Behavioral of rowdecode is
    type StateType is (start, tier0, tier1, tier2, combine, finish);
    shared variable pos: integer range 0 to 13;
    shared variable nhits_tmp : integer range 0 to 2;
    signal state : StateType;

begin
    state_proc:process(row, clk, state) begin
        if rising_edge(clk) then
            case state is
                when start =>
                    pos:=13;
                    node0 <= "00";
                    node1 <= "00";
                    node2 <= "00";
                    node3 <= "00";
                    node4 <= "00";
                    node5 <= "00";
                    node6 <= "00";
                    state <= tier0;
                 when tier0 =>
                    if (row(pos)='0') then
                        node0 <= "01";
                        pos := pos-1;
                     elsif (row(pos-1)='1') then
                        node0<= "11";
                        pos := pos-2;
                     else
                        node0<="10";
                        pos := pos-2;
                     end if;

                     state <= tier1;
                 when tier1 =>
                    if (node0(1)='1') and (node1="00") then
                        if (row(pos)='0') then
                            node1 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node1<= "11";
                            pos := pos-2;
                         else
                            node1<="10";
                            pos := pos-2;
                         end if;
                         state <= tier1;
                    elsif (node0(0)='1') and (node2="00") then
                        if (row(pos)='0') then
                            node2 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node2<= "11";
                            pos := pos-2;
                         else
                            node2<="10";
                            pos := pos-2;
                         end if;
                         state <= tier2;
                     end if;
                  when tier2 =>
                    if (node1(1)='1') and (node3="00") then
                        if (row(pos)='0') then
                            node3 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node3<= "11";
                            pos := pos-2;
                         else
                            node3<="10";
                            pos := pos-2;
                         end if;
                         state <= tier2;
                    elsif (node1(0)='1') and (node4="00") then
                        if (row(pos)='0') then
                            node4 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node4<= "11";
                            pos := pos-2;
                         else
                            node4<="10";
                            pos := pos-2;
                         end if;
                         state <= tier2;
                     elsif (node2(1)='1') and (node5="00") then
                        if (row(pos)='0') then
                            node5 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node5 <= "11";
                            pos := pos-2;
                         else
                            node5<="10";
                            pos := pos-2;
                         end if;
                         state <= tier2;
                     elsif (node2(0)='1') and (node6="00") then
                        if (row(pos)='0') then
                            node6 <= "01";
                            pos := pos-1;
                         elsif (row(pos-1)='1') then
                            node6<= "11";
                            pos := pos-2;
                         else
                            node6<="10";
                            pos := pos-2;
                         end if;
                         state <= combine;
                      end if;
                  when combine =>
                    nhits_tmp := 0;
                    for i in 0 to 1 loop
                        if node3(i) = '1' then
                            nhits_tmp := nhits_tmp + 1;
                        end if;
                        if node4(i) = '1' then
                            nhits_tmp := nhits_tmp + 1;
                        end if;
                        if node5(i) = '1' then
                            nhits_tmp := nhits_tmp + 1;
                        end if;
                        if node6(i) = '1' then
                            nhits_tmp := nhits_tmp + 1;
                        end if;
                    end loop;
                    nhits <= std_logic_vector(to_unsigned(nhits_tmp, nhits'length));
                    nbits <= std_logic_vector(to_unsigned(13-pos, nbits'length));
                    rdy <= '1';
                  when finish =>
                    state <= finish;
                  when others =>
                    state <= start;
             end case;
        end if;
    end process state_proc;
end Behavioral;
