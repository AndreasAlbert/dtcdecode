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
        add_force {{/rowdecode/row}} -radix bin {{{row} 0ns}}
        add_force {{/rowdecode/clk}} -radix hex {{0 0ns}} {{1 5000ps}} -repeat_every 10000ps
        run 1000ns

        puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/{nbits} [get_value -radix unsigned nhits]/{nhits}"
        restart
        ''')

text = text + '\nclose $fp' + '\nexit'


with open('test.tcl','w') as f:
    f.write(text)