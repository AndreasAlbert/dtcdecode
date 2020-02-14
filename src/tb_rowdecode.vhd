
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
signal nhits0 : std_logic_vector(2 downto 0);
signal nbits0 : std_logic_vector(3 downto 0);
signal rdy1 : std_logic;
signal row1 : std_logic_vector(13 downto 0);
signal nhits1 : std_logic_vector(2 downto 0);
signal nbits1 : std_logic_vector(3 downto 0);
signal rdy2 : std_logic;
signal row2 : std_logic_vector(13 downto 0);
signal nhits2 : std_logic_vector(2 downto 0);
signal nbits2 : std_logic_vector(3 downto 0);
signal rdy3 : std_logic;
signal row3 : std_logic_vector(13 downto 0);
signal nhits3 : std_logic_vector(2 downto 0);
signal nbits3 : std_logic_vector(3 downto 0);
signal rdy4 : std_logic;
signal row4 : std_logic_vector(13 downto 0);
signal nhits4 : std_logic_vector(2 downto 0);
signal nbits4 : std_logic_vector(3 downto 0);
signal rdy5 : std_logic;
signal row5 : std_logic_vector(13 downto 0);
signal nhits5 : std_logic_vector(2 downto 0);
signal nbits5 : std_logic_vector(3 downto 0);
signal rdy6 : std_logic;
signal row6 : std_logic_vector(13 downto 0);
signal nhits6 : std_logic_vector(2 downto 0);
signal nbits6 : std_logic_vector(3 downto 0);
signal rdy7 : std_logic;
signal row7 : std_logic_vector(13 downto 0);
signal nhits7 : std_logic_vector(2 downto 0);
signal nbits7 : std_logic_vector(3 downto 0);
signal rdy8 : std_logic;
signal row8 : std_logic_vector(13 downto 0);
signal nhits8 : std_logic_vector(2 downto 0);
signal nbits8 : std_logic_vector(3 downto 0);
signal rdy9 : std_logic;
signal row9 : std_logic_vector(13 downto 0);
signal nhits9 : std_logic_vector(2 downto 0);
signal nbits9 : std_logic_vector(3 downto 0);
signal buf: std_logic_vector(24 downto 0);
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
        clk => clk_bufg,
        rdy => rdy0,
        nhits => nhits0,
        nbits => nbits0
        );


rowdecoder1: entity work.rowdecode
    port map (
        row => row1,
        clk => clk_bufg,
        rdy => rdy1,
        nhits => nhits1,
        nbits => nbits1
        );


rowdecoder2: entity work.rowdecode
    port map (
        row => row2,
        clk => clk_bufg,
        rdy => rdy2,
        nhits => nhits2,
        nbits => nbits2
        );


rowdecoder3: entity work.rowdecode
    port map (
        row => row3,
        clk => clk_bufg,
        rdy => rdy3,
        nhits => nhits3,
        nbits => nbits3
        );


rowdecoder4: entity work.rowdecode
    port map (
        row => row4,
        clk => clk_bufg,
        rdy => rdy4,
        nhits => nhits4,
        nbits => nbits4
        );


rowdecoder5: entity work.rowdecode
    port map (
        row => row5,
        clk => clk_bufg,
        rdy => rdy5,
        nhits => nhits5,
        nbits => nbits5
        );


rowdecoder6: entity work.rowdecode
    port map (
        row => row6,
        clk => clk_bufg,
        rdy => rdy6,
        nhits => nhits6,
        nbits => nbits6
        );


rowdecoder7: entity work.rowdecode
    port map (
        row => row7,
        clk => clk_bufg,
        rdy => rdy7,
        nhits => nhits7,
        nbits => nbits7
        );


rowdecoder8: entity work.rowdecode
    port map (
        row => row8,
        clk => clk_bufg,
        rdy => rdy8,
        nhits => nhits8,
        nbits => nbits8
        );


rowdecoder9: entity work.rowdecode
    port map (
        row => row9,
        clk => clk_bufg,
        rdy => rdy9,
        nhits => nhits9,
        nbits => nbits9
        );


dummy_proc:process(clk, rnd) begin
    if rising_edge(clk) then
        if(nhits0="010") and (nbits0="0010") and(nhits1="010") and (nbits1="0010") and(nhits2="010") and (nbits2="0010") and(nhits3="010") and (nbits3="0010") and(nhits4="010") and (nbits4="0010") and(nhits5="010") and (nbits5="0010") and(nhits6="010") and (nbits6="0010") and(nhits7="010") and (nbits7="0010") and(nhits8="010") and (nbits8="0010") and(nhits9="010") and (nbits9="0010") then
        rdy <= rdy0 xor rdy <= rdy1 xor rdy <= rdy2 xor rdy <= rdy3 xor rdy <= rdy4 xor rdy <= rdy5 xor rdy <= rdy6 xor rdy <= rdy7 xor rdy <= rdy8 xor rdy9 xor rnd;
    else
        rdy <= rdy0 and rdy <= rdy1 and rdy <= rdy2 and rdy <= rdy3 and rdy <= rdy4 and rdy <= rdy5 and rdy <= rdy6 and rdy <= rdy7 and rdy <= rdy8 and rdy9 and rnd;
    end if;

buf <= std_logic_vector(shift_left(unsigned(buf), 1));
buf(23) <= rnd;

row0 <= buf(13 downto 0);
row1 <= buf(14 downto 1);
row2 <= buf(15 downto 2);
row3 <= buf(16 downto 3);
row4 <= buf(17 downto 4);
row5 <= buf(18 downto 5);
row6 <= buf(19 downto 6);
row7 <= buf(20 downto 7);
row8 <= buf(21 downto 8);
row9 <= buf(22 downto 9);
    end if;
end process dummy_proc;

end architecture behavioral;
