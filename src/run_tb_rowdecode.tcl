
launch_sim
add_force {/rowdecode/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
run 1000ns
