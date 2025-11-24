vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/processing_system7_vip_v1_0_10
vlib activehdl/xil_defaultlib
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_24
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_23
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_16
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_protocol_converter_v2_1_22

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 activehdl/processing_system7_vip_v1_0_10
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_24 activehdl/axi_datamover_v5_1_24
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_23 activehdl/axi_dma_v7_1_23
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 activehdl/mult_gen_v12_0_16
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv2k12 "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_23 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/src/bias_ram_fc2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/bias_ram_fc2/sim/bias_ram_fc2.v" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/bias_ram_rd3/sim/bias_ram_rd3.v" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/bias_weight_fc3/sim/bias_weight_fc3.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/src/mult_8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/src/mult_8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/src/mult_8/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/src/mult_8/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/mult_8/sim/mult_8.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/weight_ram_fc2/sim/weight_ram_fc2.v" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/weight_ram_fc3/sim/weight_ram_fc3.v" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/src/weight_ram_rd3/sim/weight_ram_rd3.v" \
"../../../bd/design_1/ipshared/9510/src/adder_tree.v" \
"../../../bd/design_1/ipshared/9510/src/adder_tree3.v" \
"../../../bd/design_1/ipshared/9510/src/asy_fifo.v" \
"../../../bd/design_1/ipshared/9510/src/axis_rd_interface_fc.v" \
"../../../bd/design_1/ipshared/9510/src/axis_wr_interface_fc.v" \
"../../../bd/design_1/ipshared/9510/src/fc.v" \
"../../../bd/design_1/ipshared/9510/src/fc_2.v" \
"../../../bd/design_1/ipshared/9510/src/fc_3.v" \
"../../../bd/design_1/ipshared/9510/src/fc_top_wrap.v" \
"../../../bd/design_1/ipshared/9510/src/multi_array.v" \
"../../../bd/design_1/ipshared/9510/src/top.v" \
"../../../bd/design_1/ipshared/9510/src/pl_top_fc.v" \
"../../../bd/design_1/ip/design_1_pl_top_fc_0_0/sim/design_1_pl_top_fc_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../LAB5_2019.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

