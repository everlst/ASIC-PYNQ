// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:21:11 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/Code/github/ASIC-PYNQ/LAB5/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/bias_ram_rd3/bias_ram_rd3_stub.v
// Design      : bias_ram_rd3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module bias_ram_rd3(clka, rsta, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[0:0],addra[6:0],dina[7:0],douta[7:0]" */;
  input clka;
  input rsta;
  input [0:0]wea;
  input [6:0]addra;
  input [7:0]dina;
  output [7:0]douta;
endmodule
