// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Sep  8 15:00:06 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_infifo_sim_netlist.v
// Design      : async_infifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_infifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 55456)
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
