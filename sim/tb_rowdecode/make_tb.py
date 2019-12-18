#!/usr/bin/env python

import textwrap

N = 10
code = textwrap.dedent('''
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
''')

for i in range(10):
    code = code + textwrap.dedent(f'''signal rdy{i} : std_logic;
    ''')
    code = code + textwrap.dedent(f'''signal row{i} : std_logic_vector(13 downto 0);
    ''')
code = code + textwrap.dedent(f'''signal buf: std_logic_vector(29 downto 0);
''')
code = code + textwrap.dedent(f'''signal clk_bufg: std_logic;
''')

code = code + textwrap.dedent(
    '''
    begin  -- architecture behavioral


    --BUFG:GeneralClockBuffer
    --UltraScale
    --XilinxHDLLanguageTemplate,version2018.1
    BUFG_inst:BUFG
    portmap(
            O=>clk_bufg,  --1-bitoutput:Clockoutput
            I=>clk        --1-bitinput:Clockinput
        );
    --EndofBUFG_instinstantiation

    '''
    )


for i in range(N):
    code = code + textwrap.dedent(f'''
        rowdecoder{i}: entity work.rowdecode
            port map (
                row => row{i},
                clk => clk,
                rdy => rdy{i}
                );

    ''')

code = code + textwrap.dedent(f'''
dummy_proc:process(clk, rnd) begin
    if rising_edge(clk) then
        rdy <= ''')
for i in range(N-1):
    code = code + textwrap.dedent(f'''rdy{i} xor ''')
code = code + textwrap.dedent(f'''rdy{N-1} xor rnd;''')
code = code + textwrap.dedent(f'''

        buf <= std_logic_vector(shift_left(unsigned(buf), 1));
        buf(29) <= rnd;
''')

for i in range(N-1):
    code = code + textwrap.dedent(f'''
    row{i} <= buf({i+14} downto {i});''')
    
code = code + textwrap.dedent(f'''
        end if;
    end process dummy_proc;
''')

code = code + textwrap.dedent(
    '''
    end architecture behavioral;
    '''
    )


with open('tb_rowdecode.vhd','w') as f:
    f.write(code)