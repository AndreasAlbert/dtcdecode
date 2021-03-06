#!/usr/bin/env python

import textwrap

N = 1
code = textwrap.dedent('''
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity tb_rowdecode is
port (
    clk : in std_logic;
''')
for i in range(N):
    code = code + f'    row{i} : in std_logic_vector(13 downto 0);\n'
    code = code + f'    rdy{i} : out std_logic;\n'
    code = code + f'    nhits{i} : out std_logic_vector(2 downto 0);\n'
    code = code + f'    nbits{i} : out std_logic_vector(3 downto 0)\n'
    code = code + ');'

code = code+textwrap.dedent('''
end entity tb_rowdecode;

architecture behavioral of tb_rowdecode is
''')

# for i in range(N):
#     # code = code + textwrap.dedent(f'''signal rdy{i} : std_logic;
#     # ''')
#     # code = code + textwrap.dedent(f'''signal row{i} : std_logic_vector(13 downto 0);
#     # ''')
#     code = code + textwrap.dedent(f'''signal nhits{i} : std_logic_vector(2 downto 0);
#     ''')
#     code = code + textwrap.dedent(f'''signal nbits{i} : std_logic_vector(3 downto 0);
#     ''')
code = code + textwrap.dedent(f'''signal buf: std_logic_vector({N+14} downto 0);
''')
code = code + textwrap.dedent(f'''signal clk_bufg: std_logic;
''')

code = code + textwrap.dedent(
    '''
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

    '''
    )


for i in range(N):
    code = code + textwrap.dedent(f'''
        rowdecoder{i}: entity work.rowdecode
            port map (
                row => row{i},
                clk => clk_bufg,
                rdy => rdy{i},
                nhits => nhits{i},
                nbits => nbits{i}
                );

    ''')

# code = code + textwrap.dedent(f'''
# dummy_proc:process(clk, rnd) begin
#     if rising_edge(clk) then
#         ''')
# code = code + "        rdy <= "
# for i in range(N-1):
#     # code = code + textwrap.dedent(f'''rdy{i} xor xor_reduce(nhits{i}) xor xor_reduce(nbits{i}) xor ''')
#     code = code + textwrap.dedent(f'''rdy{i} ''')

# # code = code + textwrap.dedent(f'''rdy{N-1} xor xor_reduce(nhits{N-1}) xor xor_reduce(nbits{N-1}) xor rnd;\n''')
# code = code + textwrap.dedent(f'''rdy{N-1} ;\n''')

# code = code + textwrap.dedent(f'''
#         buf <= buf({N+13}) & rnd;
#         buf(0) <= rnd;
# ''')

# for i in range(N):
#     code = code + textwrap.dedent(f'''
#     row{i} <= buf({i+13} downto {i});''')
# code = code + textwrap.dedent(f'''
#         end if;
#     end process dummy_proc;
# ''')

code = code + textwrap.dedent(
    '''
    end architecture behavioral;
    '''
    )


with open('src/tb_rowdecode.vhd','w') as f:
    f.write(code)