// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:15 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top weight_ram_fc2 -prefix
//               weight_ram_fc2_ weight_ram_fc2_stub.v
// Design      : weight_ram_fc2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module weight_ram_fc2(clka, rsta, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[0:0],addra[4:0],dina[1023:0],douta[1023:0]" */;
  input clka;
  input rsta;
  input [0:0]wea;
  input [4:0]addra;
  input [1023:0]dina;
  output [1023:0]douta;
endmodule
