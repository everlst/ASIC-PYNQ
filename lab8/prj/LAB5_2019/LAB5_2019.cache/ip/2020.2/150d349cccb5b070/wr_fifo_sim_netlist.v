// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 19:42:16 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ wr_fifo_sim_netlist.v
// Design      : wr_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wr_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
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
  (* C_USE_EMBEDDED_REG = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 91184)
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
