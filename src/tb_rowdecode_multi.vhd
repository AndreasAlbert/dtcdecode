
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity tb_rowdecode is
port (
    clk : in std_logic;
    row0 : in std_logic_vector(13 downto 0);
    reset0: in std_logic;
    rdy0 : out std_logic
    -- nhits0 : out std_logic_vector(2 downto 0);
    -- nbits0 : out std_logic_vector(3 downto 0)
);
end entity tb_rowdecode;

architecture behavioral of tb_rowdecode is
-- signal buf: std_logic_vector(15 downto 0);
signal clk_bufg: std_logic;
type rowarr is array (integer range <>) of std_logic_vector(13 downto 0);
type outarr is array (integer range <>) of std_logic_vector(3 downto 0);
type bitarr is array (integer range <>) of std_logic;

signal row_vec: rowarr(0 to 500);
signal nhits_vec: outarr(0 to 500);
signal nbits_vec: outarr(0 to 500);
signal rdy_vec: bitarr(0 to 500);

shared variable counter: integer range 0 to 1023;

function xor_array_vec(data : outarr) return std_logic is
    variable ret : std_logic := '0';
    begin
        for i in data'range loop
            ret := ret xor xor_reduce(data(i));
        end loop;
        return ret;
end function xor_array_vec;

function xor_array(data : bitarr) return std_logic is
    variable ret : std_logic := '0';
    begin
        for i in data'range loop
            ret := ret xor data(i);
        end loop;
        return ret;
end function xor_array;

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

GEN_DEC:
for I in 0 to 500 generate
    rowdecoderX: entity work.rowdecode
    port map (
        reset => reset0,
        row => row_vec(I),
        clk => clk_bufg,
        rdy => rdy_vec(I),
        nhits => nhits_vec(I),
        nbits => nbits_vec(I)
    );
end generate GEN_DEC;


shifter:process(clk) begin
    if reset0='1' then
        counter := 0;
    end if;
    if rising_edge(clk) then
        row_vec(counter) <= row0;
        if counter=500 then
            counter := 0;
        else
            counter := counter + 1;
        end if;
    end if;
end process shifter;

rdy0 <=  xor_array_vec(nhits_vec) xor xor_array_vec(nbits_vec) xor xor_array(rdy_vec);

end architecture behavioral;
