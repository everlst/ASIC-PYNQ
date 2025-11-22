// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 20:18:14 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zynq_pro/LAB6_8bit/LAB6_8bit/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/input_ram_rd3/input_ram_rd3_stub.v
// Design      : input_ram_rd3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module input_ram_rd3(clka, rsta, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[0:0],addra[7:0],dina[1023:0],douta[1023:0],rsta_busy" */;
  input clka;
  input rsta;
  input [0:0]wea;
  input [7:0]addra;
  input [1023:0]dina;
  output [1023:0]douta;
  output rsta_busy;
endmodule
