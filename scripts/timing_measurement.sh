#!/bin/bash -e
source /opt/Xilinx/Vivado/2018.2/settings64.sh
TOPDIR=$(pwd)

mkdir -p timing
pushd timing
CONSTRAINT_TEMPLATE=$(readlink -e "${TOPDIR}/constraints/constraint_tb_multi.xdc")
for freq in 650; do

    # Working directory, skip if exists
    NAME=freq_${freq}
    if [ -e $NAME ]; then
        echo "Skip ${NAME}"
        continue
    fi
    mkdir ${NAME}
    pushd ${NAME}

    # Make custom constraint file to set frequency
    cp ${CONSTRAINT_TEMPLATE} ./constraints.xdc
    PERIOD=$(bc <<< "scale=4; 1000.0/${freq}")
    HALF_PERIOD=$(bc <<< "scale=4; ${PERIOD}/2")
    sed -i "/create_clock/d" ./constraints.xdc
    echo "create_clock -period ${PERIOD} -name sys_clk_pin -waveform {0.000 ${HALF_PERIOD}} -add [get_ports clk]" >> ./constraints.xdc


    # Write executable


    #!/bin/bash
    echo \
    "read_vhdl ${TOPDIR}/src/rowdecode.vhd
    read_vhdl ${TOPDIR}/src/tb_rowdecode_multi.vhd
    read_xdc ./constraints.xdc
    
    synth_design -top tb_rowdecode -part xcku15p-ffva1760-1-e
    
    write_checkpoint -force post_synth_freq${freq}
    
    opt_design
    power_opt_design
    place_design
    phys_opt_design
    route_design -directive Explore
    
    write_checkpoint -force post_implement_freq${freq}
    report_timing_summary -file timing_summary_freq${freq}.txt
    exit" > run.tcl

    vivado  -mode tcl -source run.tcl | tee log.txt
    popd
done
popd

