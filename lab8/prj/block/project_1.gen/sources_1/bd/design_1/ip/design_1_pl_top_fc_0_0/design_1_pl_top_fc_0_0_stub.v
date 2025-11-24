// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov 24 17:53:08 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/GitHub/ASIC-PYNQ/lab8/prj/block/project_1.gen/sources_1/bd/design_1/ip/design_1_pl_top_fc_0_0/design_1_pl_top_fc_0_0_stub.v
// Design      : design_1_pl_top_fc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pl_top_fc,Vivado 2020.2" *)
module design_1_pl_top_fc_0_0(rst_n, core_clk, s_axis_aclk, s_axis_tdata, 
  s_axis_tkeep, s_axis_tlast, s_axis_tvalid, s_axis_tready, m_axis_tready, m_axis_tdata, 
  m_axis_tkeep, m_axis_tlast, m_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="rst_n,core_clk,s_axis_aclk,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,m_axis_tready,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast,m_axis_tvalid" */;
  input rst_n;
  input core_clk;
  input s_axis_aclk;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  output s_axis_tready;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output m_axis_tvalid;
endmodule
