
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity tb_rowdecode is
    port (
        clk : in std_logic;
        rnd : in std_logic;
        rdy : out std_logic
    );
end entity tb_rowdecode;

architecture behavioral of tb_rowdecode is
signal rdy0 : std_logic;
signal row0 : std_logic_vector(13 downto 0);
signal rdy1 : std_logic;
signal row1 : std_logic_vector(13 downto 0);
signal rdy2 : std_logic;
signal row2 : std_logic_vector(13 downto 0);
signal rdy3 : std_logic;
signal row3 : std_logic_vector(13 downto 0);
signal rdy4 : std_logic;
signal row4 : std_logic_vector(13 downto 0);
signal rdy5 : std_logic;
signal row5 : std_logic_vector(13 downto 0);
signal rdy6 : std_logic;
signal row6 : std_logic_vector(13 downto 0);
signal rdy7 : std_logic;
signal row7 : std_logic_vector(13 downto 0);
signal rdy8 : std_logic;
signal row8 : std_logic_vector(13 downto 0);
signal rdy9 : std_logic;
signal row9 : std_logic_vector(13 downto 0);
signal buf: std_logic_vector(29 downto 0);
signal clk_bufg: std_logic;

begin  -- architecture behavioral


--BUFG:GeneralClockBuffer
--UltraScale
--XilinxHDLLanguageTemplate,version2018.1
BUFG_inst : BUFG
port map(
        O=>clk_bufg,  --1-bitoutput:Clockoutput
        I=>clk        --1-bitinput:Clockinput
    );
--EndofBUFG_instinstantiation


rowdecoder0: entity work.rowdecode
    port map (
        row => row0,
        clk => clk,
        rdy => rdy0
        );


rowdecoder1: entity work.rowdecode
    port map (
        row => row1,
        clk => clk,
        rdy => rdy1
        );


rowdecoder2: entity work.rowdecode
    port map (
        row => row2,
        clk => clk,
        rdy => rdy2
        );


rowdecoder3: entity work.rowdecode
    port map (
        row => row3,
        clk => clk,
        rdy => rdy3
        );


rowdecoder4: entity work.rowdecode
    port map (
        row => row4,
        clk => clk,
        rdy => rdy4
        );


rowdecoder5: entity work.rowdecode
    port map (
        row => row5,
        clk => clk,
        rdy => rdy5
        );


rowdecoder6: entity work.rowdecode
    port map (
        row => row6,
        clk => clk,
        rdy => rdy6
        );


rowdecoder7: entity work.rowdecode
    port map (
        row => row7,
        clk => clk,
        rdy => rdy7
        );


rowdecoder8: entity work.rowdecode
    port map (
        row => row8,
        clk => clk,
        rdy => rdy8
        );


rowdecoder9: entity work.rowdecode
    port map (
        row => row9,
        clk => clk,
        rdy => rdy9
        );


dummy_proc:process(clk, rnd) begin
    if rising_edge(clk) then
        rdy <= rdy0 xor rdy1 xor rdy2 xor rdy3 xor rdy4 xor rdy5 xor rdy6 xor rdy7 xor rdy8 xor rdy9 xor rnd;

buf <= std_logic_vector(shift_left(unsigned(buf), 1));
buf(29) <= rnd;

row0 <= buf(13 downto 0);
row1 <= buf(14 downto 1);
row2 <= buf(15 downto 2);
row3 <= buf(16 downto 3);
row4 <= buf(17 downto 4);
row5 <= buf(18 downto 5);
row6 <= buf(19 downto 6);
row7 <= buf(20 downto 7);
row8 <= buf(21 downto 8);
    end if;
end process dummy_proc;

end architecture behavioral;
