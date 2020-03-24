#!/usr/bin/env python

from textwrap import dedent
from encoder import Enc8


text = dedent(
    '''
    set fp [open test.txt w]
    launch_sim
    '''
)

for k, v in Enc8.items():
    nbits = v[0]
    row = v[1]
    nhits = k.count("1")
    text = text + dedent(
        f'''
        add_force {{/tb_rowdecode/row0}} -radix bin {{{row} 0ns}}
        add_force {{/tb_rowdecode/clk}} -radix hex {{0 0ns}} {{1 5000ps}} -repeat_every 10000ps
        run 1000ns

        puts $fp "[get_value -radix bin row0] [get_value -radix bin rdy0] [get_value -radix bin nhits0]/{nhits:04b} [get_value -radix bin nbits0]/{nbits:04b}"
        restart
        ''')

text = text + '\nclose $fp' + '\nexit'


with open('test.tcl','w') as f:
    f.write(text)