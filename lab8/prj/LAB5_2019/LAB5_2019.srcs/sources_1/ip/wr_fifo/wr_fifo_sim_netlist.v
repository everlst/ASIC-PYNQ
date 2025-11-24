// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 16:36:22 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top wr_fifo -prefix
//               wr_fifo_ wr_fifo_sim_netlist.v
// Design      : wr_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wr_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module wr_fifo
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
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
  wire NLW_U0_valid_UNCONNECTED;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  wr_fifo_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module wr_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module wr_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 88784)
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
