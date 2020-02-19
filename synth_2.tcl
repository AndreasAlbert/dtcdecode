read_vhdl src/rowdecode.vhd
read_vhdl src/tb_rowdecode.vhd
read_xdc constraints/constraint_test.xdc


synth_design -top tb_rowdecode -part xcku15p-ffva1760-1-e

write_checkpoint -force post_synth

opt_design
power_opt_design
place_design
phys_opt_design
route_design -directive Explore

write_checkpoint -force post_implement


