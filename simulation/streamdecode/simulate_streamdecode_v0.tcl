read_vhdl /home/andreas/dtcdecode//src/rowdecode.vhd
read_vhdl /home/andreas/dtcdecode//src/streamdecode.vhd

# set_property top_file /home/andreas/dtcdecode//src/streamdecode.vhd [current_fileset -simset]
set_property top streamdecode [current_fileset -simset]
save_project_as tmp_project -force


set fp [open test.txt w]
launch_sim

add_force {/streamdecode/clk} -radix hex {0 0ns} {1 5ns} -repeat_every 10ns

add_force {/streamdecode/newblockin} -radix bin {1 0ns}
add_force {/streamdecode/newblockin} -radix bin {0 40ns}


add_force {/streamdecode/blockin} -radix bin {1101010011101010000100001011110111100101101111101100110010011010 0ns}
add_force {/streamdecode/blockin} -radix bin {0101010001110110101000010000110100111100110100011000100111010101 10ns} 
add_force {/streamdecode/blockin} -radix bin {0110010010100101111110100011101000001111111111111110011010101010 20ns}
add_force {/streamdecode/blockin} -radix bin {0101011111101011000100001101111111110011101111111100001011011100 30ns}


run 10ns

# puts $fp "[get_value -radix bin row0] [get_value -radix bin rdy0] [get_value -radix bin nhits0]/0001 [get_value -radix bin nbits0]/0011"
