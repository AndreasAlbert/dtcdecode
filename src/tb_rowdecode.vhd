
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity tb_rowdecode is
port (
    clk : in std_logic;
    row0 : in std_logic_vector(13 downto 0);    -- Input row, will be passed to decoder
    rdy0 : out std_logic;                       -- ready flag of the decoder
    reset0 : in std_logic;                     -- reset switch of the decoder
    nhits0 : out std_logic_vector(3 downto 0);  -- Decoding output
    nbits0 : out std_logic_vector(3 downto 0)   -- Decoding output
);
end entity tb_rowdecode;

architecture behavioral of tb_rowdecode is
signal buf: std_logic_vector(15 downto 0);
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

-- Instantiate a single decoder
-- Inputs and outputs are directly mapped to
-- inputs/outputs of the top module tb_rowdecode
-- -> Connect to pins to ensure that they are variable
rowdecoder0: entity work.rowdecode
    port map (
        row => row0,
        clk => clk_bufg,
        rdy => rdy0,
        reset => reset0,
        nhits => nhits0,
        nbits => nbits0
        );


end architecture behavioral;
