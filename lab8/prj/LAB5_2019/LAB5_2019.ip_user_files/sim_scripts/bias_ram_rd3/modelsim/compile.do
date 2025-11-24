vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../LAB5_2019.srcs/sources_1/ip/bias_ram_rd3/sim/bias_ram_rd3.v" \


vlog -work xil_defaultlib \
"glbl.v"

