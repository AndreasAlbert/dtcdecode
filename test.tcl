
set fp [open test.txt w]
launch_sim

add_force {/rowdecode/row} -radix bin {00000000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/3 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {00100000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/4 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {00110000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/4 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01000000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/4 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {01100000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01101000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01101100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {01010000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {01110000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01110100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01110110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {01011000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {01111000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {01111100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {01111110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {10000000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/4 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {11000000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11000100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11000110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11010000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11011000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011001000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011001100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11010010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11011010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011010100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011010110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11010011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011011100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011011110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {10010000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {11001000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11001010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11001011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11010100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11011100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011100100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011100110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11010101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11011101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011101010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011101011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11010101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011101110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011101111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {10011000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11001100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11001110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11001111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11010110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011110100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011110110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11010111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11011111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011111010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011111011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11010111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11011111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11011111110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11011111111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10100000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/5 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {11100000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11100010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11100011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11101100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101100100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101100110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101001000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11101101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101101010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101101011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101001100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101101110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101101111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {10110000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11110000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110001000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110001100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111100010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111100011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111000100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111100100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111100101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111100101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111000110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111100110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111100111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111100111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10110100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11110010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110010100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110010110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111001000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101001000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101001100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111001010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111101010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101010100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101010110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111001011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101011100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101011110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10110110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110011100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110011110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111001100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111001110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111101110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101110100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101110110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111001111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111101111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111101111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111101111110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {10101000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/1"
restart

add_force {/rowdecode/row} -radix bin {11100100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11100101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11100101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11101110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101110010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101110011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101010100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11101110100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101110101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101110101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101010110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101110110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101110111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101110111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {10111000000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11110100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110100100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110100110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110001000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110001100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111010010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111110010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110010100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110010110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111010011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110011100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110011110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10111010000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11110101000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110101010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110101011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111010100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111110100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110100100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110100110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111010101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11111110101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110101010 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110101011 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111010101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110101110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110101111 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10111011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110101100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110101110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110101111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111010110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110110100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110110110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111010111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111110111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110111010 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110111011 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111010111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111110111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111110111110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111110111111 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {10101100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/6 [get_value -radix unsigned nhits]/2"
restart

add_force {/rowdecode/row} -radix bin {11100110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11100111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11100111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101111010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101111011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11101011100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11101111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101111101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101111101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11101011110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11101111110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11101111111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11101111111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {10111100000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/7 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/9 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110110100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110110110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111011000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111001000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111001100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111011010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111111010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111010100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111010110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111011011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111011100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111011110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {10111110000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/3"
restart

add_force {/rowdecode/row} -radix bin {11110111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110111010000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110111011000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111011100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111100100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111100110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111011101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11111111101000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111101010 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111101011 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111011101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111101100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111101110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111101111 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {10111111000000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/8 [get_value -radix unsigned nhits]/4"
restart

add_force {/rowdecode/row} -radix bin {11110111100000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/10 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11110111110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11110111111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111011110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/11 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111110000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111110100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111110110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {11111011111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/5"
restart

add_force {/rowdecode/row} -radix bin {11111111111000 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111111010 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111111011 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {11111011111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/12 [get_value -radix unsigned nhits]/6"
restart

add_force {/rowdecode/row} -radix bin {11111111111100 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/13 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {11111111111110 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/7"
restart

add_force {/rowdecode/row} -radix bin {11111111111111 0ns}
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns

puts $fp "[get_value -radix bin row] [get_value -radix bin rdy] [get_value -radix bin state] [get_value -radix unsigned pos] [get_value -radix unsigned nbits]/14 [get_value -radix unsigned nhits]/8"
restart

close $fp
exit