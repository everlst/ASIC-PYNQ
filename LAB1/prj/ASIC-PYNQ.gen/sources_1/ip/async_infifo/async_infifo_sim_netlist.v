// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Sep  8 15:00:06 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/ASIC-PYNQ/LAB1/prj/ASIC-PYNQ.gen/sources_1/ip/async_infifo/async_infifo_sim_netlist.v
// Design      : async_infifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_infifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module async_infifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "505" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "504" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "100" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "100" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  async_infifo_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 55392)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
