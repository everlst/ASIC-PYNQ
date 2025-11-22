// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 16:36:22 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90352)
`pragma protect data_block
lGXgJdhgXQHQK6PnrIS4fR2ojFvARHA48jq3K45rlSGWoO+W4Fc+hGpA9Rl7q/7ku+j2oSXTrq66
rm+nUVHwr5nRobEvFLw/xh1pIt1iX0BpawZWpTSz5t5UKd+1X1rIH9/kD5f4yc3UIeAtVPJu1YPw
76gUIZPzQ7qawh3iqdjOyr908ugtPK5OrfOE/CHpJvl3tnbQ2DbpIf52s8iljqPi0t62nyzxyhaT
o9rLZafJcuNZpRL4+0tgii4rGRLdz3ivQFAc7EKHGcBSpWRnMYZe4z1eSt6mKSjNiWRStWRbF0zb
4sVCYDTtjcp1orTjIM6jBpx7vvIO9VbexXPdpu+6TzMJ7YK5P+/rUHRwKbw6uy12ui5nKqBTrFnM
QLdx/yhLGMmD21Ed+CW54zxreoQC+HwZ5miPyV6iitBrPudL+zwYCuvnexTmUSSpv6++UNPUiBYd
BKb0rPE/SI/p5+SpSMLyhUaieL7Dif+mbLNf4aA70H0WM3qH1J0Zl8K+Piheo+yvQi5nniaOmLpt
awxcaL9MaPD7Nedta/C6KHkTRyieshejp3sSodhbI3dxoVc/xy7N6Evi9nT3p81ZdNrMsbxiOtvF
p2zT3BnZiULtOuHB1cB/knMAjxbUuUk5BhhNqpDlKNG26HoYqvU2Z9igWK+UGdnsYGX6oq3q6Gju
I2aDdmsLz9L+09mt4LuYJCwk9ber1EsRuAxQPwlWJpDWgT451GKEMAUqcjyq5/ypXRXPI7AF542v
tr39hWMILQyA2DFaQaTADLTOPrnmxVuPPjRuoZgDhZwBDaZCv/Nb4v8aQfep+jmfoE7WWZVY2OR9
kNxbQ6vLr2oVKGiqNWKORtlMyKrOu2L4Dn9Lvrlc3Ut44FNZtRg6NEvRyENloeUV0ktsNrODCkD7
qnD3eAPv6fd8NuiI+A4UTThEbCUvcnwiKU7Sb/4ZY5ecUGig1Bsgj1zfelYUn0yHcCw4kSMYckkK
GshDtWaGrSaRVRvgZBDvk2CMwCPQScvfmsGvgL1o3sjmqwO0sPNhj8b1jWYexgtyoU8p0CfpGY/w
Oi+P4mAxVAGBCbjM53HGpw176OWZNHFiqfEWHxEK0Vx+jyZ9zyOpQRmF7RtY+bp2ERxhtDJI4SSQ
OTXGC26XvYCXGs6aiXtHJxajKCPHGBBFVHaRuC94p9xcLMrq5OtBlHevttig/uNl/JF0lm1av9K1
3g25yG8iWop92612387+XESPsHlMF03yeNX/k+RmF4glx32ohAQlEkAKnupqxLBcNqJBdLKB9DZ4
B+kM3OLXEj3rJxF7eS/bxd2bIAbkhjQfP8LR7yJjsh9+uKYKcCAX7Ku26twDQ7PSDmeAm3csi3lP
RBpSpR0ikYz0BLC8Jp+aSsreWkUC1hpy7P52PurRHu+l/gIn8mv2LvOHqTq6JkCVyBzYIdkQtIfn
TVCQc3UdAl7/FufRuwiTQ9DqwfrK5PdixMoE0LsMLTePaOogwpZetHLUcLxwgOoF0SP96nPat5X2
cs10ED/t9IBHraGNT6qvO8bOBLzSYvP/kIZVrsyEiJt/pXFpR5Zv5cnPmzP1dpELMrumdTOXyNnr
N/o6cNm/HeKs6BjUfOz+UAmg9omch42SVqiFa1OIhHnC5sYRqMte249NrHaCcMwqcOb9I1wpF4on
ISrN4Tfl1idrIUOQVKpH3JSVKBSigLO4Af5hEHGoZFKFuOnqxZmpSSHqp4fqTdZJT3aDOtxXXIs7
EOCfLKeiia80FpVc+tU7LVKFpBP6wA6USbkfNgQLqxUBk+MFh5rBBPs+JnSpV1/l4TUptR/49MTw
s8myk70sNCsw+3pMJ2D4iRnlL5glw3yMziya23+WUYqPdokOMXUP8b/lgZMFKsH1/KnSKhmmctGK
c23nJXR/bfyqoVrKsydifRnHLwAS30WDwGGqeZbjWQpd3+3PK8Q6+guWMIgblWdMLVkCqSnMHwT3
grq41wmolA5LMY/Ow1OFcgHAgwmS9muU9bswJAw1/z5G/w6XmGA+xDN6D3a0N7halgKghYQWDZZP
RAjLTeUfJcbyvAk2WVqhptfKvY/MEL2e8mLVjUJ/BJ1VX6WAEjvkXcBDV5x8PUTQUmMK5dwwPUN7
31jOjbday8Gbm6YzryeC6f48sp1EI/fXNaILN05NeZLENr7Q1LhU1NUMsgUzgfNQntuxe5t7D/Nj
8S+Hhb8B0eNsZACuGCE3CccTYvmyEy5dfzEIc2E5OWVnNEmCcysc5qrylZipjZlCLNx64REMVo/7
xy7Dt0XVshrnBRFzaTgOXsfdnJFkuyplOg/gkg21/bxP2ouEusg4ON954TrwVbNkhc2ljTGEElEy
0uxU7rhVuD4rfzDAmQxvarXpWBuZmG/OKLD4pYYFo5viIYhYsfb5MFQKd30xGz+0MkJA6wF4nf1E
8IiSUDUVmOBFps+S6Tg7h+KD0YwJSEgj0ZOgKR5mBucuHdQ2gocfx3G6Ss1fQBvE+YpqRMz7ZeXs
WhIwrPXa7dn/1n0WhEhZdBSdh4yMTY/iZj5ki2BQy0R+Xg4EjSbAMx5TvRQRMu8iOJOF4Bv+7+aO
IrvvqF4yt/xv2MV8yd/ilygHxTuvtIF1aZC/H6BxLBQwwdrX5eH8iqiSJ7VSSWyv9SFZRRvIJZd4
nf1q2pbblLctW0+7YjydB9SuJPjgCQ46SYrQRnfJQHcizAKpzevrJtvOqGlG9AAkfsD75zL7Gy7h
fnLqPm9JYeAkiB5mseFnOSuBzT5QpuM4zHWMaWAyyP3JSxl3+aIYS408BvcwsABNjaOuFp+mp3dS
/gESWQT2LsrYsEfZrx0g4DurJJbIvJau3vGb6ENF1iG0+KQ7TLzHRE1nGrjmmRt5uL1dO0iF2UL9
kSy0JuzxCwslJ5qhOBES1Oe2f+GMHVHIBGsyMEmos5YqV9fbf3Ilt3xldcjXOa90avn0VFuwOszr
od6arebLbItJcBrcQjbj2eXgx8rJ+/3K+LrxdZEiJT9jfLlycsS3vM0wthB3NeOLLy122g6QsTBE
fJlZdoO6MC6s9w2k+rE6/GrPmGWm+kjcxw79wWV58h8Jdd+VX/hWLWnmXDkml8a6etxW4J1krwlF
iGuA6/sXWDd3+V3dnr9yo7K45FkhW6o9zDSEpt7TDorkSKC9fsontG4M0s1hHcuhUzUGV5q2NMG+
fUb8lH1HWI5XbM7vj156HsmMwmC7YvYMpOfI3xLovK/v+f/VQU3lnAcqnjQkfiuxJmfTSdTEzYyC
8cTzTBOyL75e/sqEu0tCJm2NPfxjx+PSpVJzB+JRs4R/sS4ky5IMPFu2W+gfJlcYOsaJGU5alMIT
RFPx6wP/n1+SQSgPa/9HrsPwjckWnpVy1AnVIHgwUKiUDuQVWnvDB2ol8yMCJj8DK1iV+rAJnCtK
0atrOq7PAHrq3GJyqY8JphDf0lfUc21xa1LsP+mx/LStTuE9JbiwMysyJB+m+bTrk1COtyUl9XvH
vACk6WDAJHVJhBBOFGFmQvxwnmkGGqf3bO5jYZA32rUrOcKTmE8QNVK5MqswQCDufkdg4tHmrRhV
2FR5Bz1BtyjVgMzFMDYSSThFxAZgOHeAmFoNdGbfmW7lTS/3542EBTFjWmHFLD6eu6beRp9xXfWe
0ioT9+ClXAyW883AoGjk0GaDF2/plICCkzuQVmrxjfdJl4GWBtk+WSiKBvwuUUfWBcXwKJuKQs2z
nb+qy4WTLyXqnGlmYflapNw6ETKhqDtKFHT8BwDJrs5TZbE8ZUzHzASfHaIayEIbRy2d18bviT6o
tNjsncYixlaKCrcwS6W9dmAC0IJJL5dbk8rbWenve5YAfZ+Ypcpfjc9UWvyWnIqBEo7nLPwt+mxj
OfAaJDu0vDcweZztAi9lzVgAUj6WFcikdFwsBNkXuEqpllj0YMinOmeW0/zVd2X2/9/8m6CeD8Uh
CFMb6y9iEh1rZLx3kxNKjVo3jZxjRsP79amRhZ8GdrubB0ayqYdiyTqE5yxvtJ8/JchpyiZm3cWJ
9lSpvw2YMFzEqt7ptIuNV+cmXbPLSgbRz7B5q8iyGfnxTu73sJ7glrX0ypd5+wWF6eDBcJG3Liby
KjwUn0L2YiFlVPp6HhCOYH8h9NyT4D9xcV/VFo/1LMWI3irwnmvCAxHO5LjKAteREnTH05IUJi/s
9BJtxmF/zqYPDR6MetbOX+EAZD0CpawGn0qwjc2f17hDBywvvO+XORaMIYSdHin+yEwWMfLiKz8f
k2W3VSP62vQTe4e28E+zD2fTSZaRtyh6+f17CWUXy3I3lG24+2C83rsI1iO3ioMcPTNdwE0p0i3z
n+D8RI8UgXBwQWqRus3ybzpXAG3gVP9viZaRAGPRExVH6JsFE8xy/UY6zx+9xUU+oOOpHZuCgq9D
VuvjUGEs9vH81LOccCNpeDCv6DsJ70BSGnUU3q88uapIDktIgyG7oMXbtfgOjSCPd2SrmCt3waGQ
3J5QTMwIvgmTsnDnbV+HepOraYL1FgD8nHmmt2RgGJucq4syPbK0ZY4ri4A5kRdzS02OF6mblytr
VKE0xx6bWsW1qt4OcRjs9hgROo+y+lFdg8gbj3XOqdHR1IZtn1ewpxqN9VH2btLhMpazC2oo+9bV
X2R9mjazDqfJR3eejy7p/A0KKN2M2hSVjSI+cDAUepd6rNjDfJH9EuVNO6XEd7MIab5/2Dq9ygXT
pmzVccM9DdH0NH6FOHkqliz+8L3XneJhM+eddcl2XYpRpTMly4ZuNuEOvZaXcr5fB4UqAB39PNxz
JAMnKBLBU/v0HBizjIDQtr/Cjgvh5AqhtBiLQ5vRfxe0t4U1JODAuIguq/9Xzp2rruunT3KPNryl
hTIKGkZL8O4lLmDY4vhFpERCUbjoXJAqvSmzulU0IU7hZb7jZZIIG/2UmbSmXDFI8weljREuHnfx
mV0biIswZK3lm1rSRIuNqZOZ3/ZkMk3G44tb/SDkYm+UKUTeR+3DQXnPpqju3S7N8jKOuWuF/Uku
OfzqwldWvkgnKPYCGEjuhv2pzvJagbrNbQmiGf1RWgrflqZp5goOrPiNuV3iTwbDB/U00YFq+geG
xlKOKGIOvGomwUkAe/K2m85dBD+MoNK3+1nKpUPsQIl2ThOKuCRvbOxLerj7fy5GVdFXA4AnOUGE
cKCWj/FFolWs5ssCvjONqDWM5LpGFG6RP9cumGyVBFmee2jaliZfPtGB1FF1uxruihQ/9SiTVhxD
rlXEWY/ojogamVgEam148llEa0znnosw/89WhOPQ/muo1GrsW9XSw8WYO6e4n5Wnip+cf7oyqtW+
SUc4+9FpqgHHzuQV2OGD96GQ9+z3bfELlWFLtoyxJL/mmzFThHPdcctKhpHZtwcNUQARCMEs2pNc
QFHHeLBKeGmTLw/0bYludkVQXvqrx/LTcoIgb/J88IRYs7oKvXzYE2XspfjHCnPqChNUg4tMNTLg
u9OsYVD6QMB7HUZdqXVBZxh8EU9aJQsYi+kmDywN/Yv/r6R125mjPJkU+SwQi4pCx8UJpUQb2RQs
VNnc1VKqHlCfU1/EUn7FEUiL03xrpjQMThh843r6FJykuXpUaPREOY82RmLlgike7gOZy/EgmGkE
xvf947S/62t5psWySMhCxLG+fiFX3EZQo/BPnBF+MWilOtAl5RYbLsQqDONd9lRQ8c4tYzqNsEYX
7LJ1/HM9p0HC6snLExp2Zda8eNcHIMKENSlJuMItY6zx44y4PQBSIttEqmwi0UIsaaC6+ly7MeWd
hkg+oePxZazV7/buS/GZk0b+jMuDmRqhGy3rJj7bUKLA4UHbyrfvzmx5Y1H4FWBqHCMYsCLygj2S
Na/pelPNTPJk3dRUAOJp/CI+8omh0p5BdUBGCNxs7KyAxSNY3IHroZLjsmMWigHajMOTzEc5RUHX
7QLUO6nju1n298zwooRVkNAdEDVEYrZelDJ6Ex/q1My0VCAM4ER68/2MQvOtr4Siz1q8Z5kFmSsu
dNIPUAU+lDOeebkJFAWUPW928LZWDj25F9aIGIGQ7tVprk7Yl4nO0F+44yzw1umldytJBXeudE/W
Jhc2DQCEVQYefLZn8jSa3Tq/11TKhxPiKKd1NrdfV+NwK+fZejP+tXINNl85FffgvXyg2YxVEgZK
Fpy5kAsCrd1X6Z7XKZZy3JBJRpCdlnx1wokqIHIM+7vxU2cY0rGlNvRPhdOvSNoZduj5U7EwgxXR
S2pUPPqkrHGpswBTbjIBWrYfwgumNdH86KgHPBDMAbMl9/ssA9hRkF+Pd9rU9LVm8L3pOrFJbrxu
AMTm0yJI3zlHTA+ATvNA+fQ/FdGltOzCmNSDyqJVdyXgcnJsa9OZ6WXstv4JVNUiEv8K4njmyaNQ
Zt+AF8hUHh40Z4+K644QuMrmZbDIUdijkMnI7kSBnmTqCmIKP5pitsL38eEauD2dZHe9ymZ81rww
/8gV1yGtgHcUbeVPQdP1Thx573Cb0ZqNJHCGMLde7wOdU4MWcS0FY0xbZUPfmm7bGduqYnyFildu
17vgzYkvunI/qSZsKU0jr5yHkJdE1XQDaFwiqrlZ0cat00E368RULFrmC5zP7UOwwEhjGuuWA8qI
1aIpceBwgR/zaPuP22TdSqaYOsGJZRQCb8pB6b5GEy+2FL0RlyhA/c4VLEfLmX8gqwZxwEeLS/kW
OBTfL2AE4YtDyJuomzA5alppBHsSmKXn2cWXM1tOnlXWa0VgzhpQw/NT++i3GfAuZdf3AS3B2WJd
nufANYat2CYAdBozyOwWbvOUTdkkhltkUXt64vhjP5+y2JTnohdVtsTzQGArX52VmoBRTPMqxykH
nU07ptNAoN6ZSF/vAP6EIWs4toeQOOdscNdxigj533efsPx4qDFbWVUpPHG3nAsdCo7a/N93GKz/
9zL0igJfXsmGYrEAvCGhJosi/7lWULZJRccr1TaSllMRMsnkw95GXOZ5MJ+puq36bDmf2wEINPkI
ySrmt0kPbFikT2b3Xy167lroqQ+VxR7E4VGT4iRKt4nhIeq8zwMM5A5+CzQbqhA6nWOyjyFvvVE8
gW21ICMKlEgZEYDMIxtUuxCB0wNaB0On3qYbnnfcHHptqOSZEw1nm+9/mJWqZAWfQyz/VkB2smFv
vY2tIl2PodNo7q4jYsy/Wjs7SnLglxZTBdLlMKMyo32Xd09OCKaBceNn0wja+KmEhpwPklxOKMZE
u84oU2JONfP9JDgxwpsIp2Qv+MeYhTC7YLohcCxUPmGxfIR9bDXo2Y5xjbyXvIuPSPsEkCXV+ZRs
ap6HTWk6gOKGk45GjiHFeNw8vVOCINmrZjC22byDh6S7Fi9frLkf6FmwO3joWjT6o86x/4xiyvTS
K5Z4cdW3CiO14EvyMgvOpKGiqqZWeHwqbPhitOpQPI6GWNzlLrqBDEZRWoDgLAWKD3HJzGKmrhUD
3AfVYhqMK/WaLQg+8eFmUZDbYF7q9RPHc4CVoOvCQo2AWeZGbIIowMV4c+jJkgt+lVL+/bzUpMCc
U56efAPRUJr6orzmtJydigNsC+JCgXg2XWcD3+yDVF6qAAECbncVTXvUl3ivJZFoEk+Vb5XQ0WAB
OqHNyplvqqZnpRHCDfv+peb4EH024jZsgsqdE8IE3/wgXCWY4iyi8DsTlweO30P1UpYwh9rz580J
nfmTGOw1KLb5Gv13ZeSx4j3I13LpSVqCiOzJsTfU4etZdZLI2eKyvB0+8up/lzL8onpphnDeaVf2
KHGmrIAVhrUoVyXFCkEMsI9ih0YbejJOa34u2aGlINt9sh/XPy5RBAemIUuCyAN+iZnMt7ZQ0a3P
6oumRWt0NNCiEGL287M+oRtVysbEgjKq4517PD4fljHQsNT3MFjvHK3MCEScOblIGCNWmVk0DGmY
7cxb7IfL31xDegFfoMhyhI22mcLVJmZiDx1wuY0wZmpbih4KtjekkrV2sZ3HIX3uTSKraR8GazP4
jC/2Dk7w+2zOC4R+/rRrX0pZ0QpjlgutvN66EWGFa6v5MJgea9vjTzXW/mrnkEf2+Vb5zGg8pXPr
KUDt9g/fhidCiSnR8qgFZAJf+2QaGUve6xYK4i9TfHept5Yi6L8itDKJTzpfIDHGapCWB+q2EHrj
iR/ThK0aYiEv0k/l3m2ywHH8SQEFey0IJ9Ccn70fQf2uoRNcd4skk0A2BiwRUp6zhCkkl4tLIXbB
25ADeCx/CAm09mVob76+d8pempcrw/TG/B+hHtoL5y91jVC/vKkUEKJhVf23MPIrVC2Q/R2c/fXl
UJs7PmzsDqCGP4P3AwOsIt+5SSav/KWfTZOnzDa6cD9NY6piCk0IFln/ZMqExHV0zbeyxZHrbXbh
/nFz+hFk0D4Rf7tGQI7DGJRgVq+6Pd6WNe8SHoNYQ/MwWmf1Tq/9rpJ+vPT2ZgvKv9uabPwIQhcj
xoPOlibH1sz6N0R6d07Jy1nPW20+NXvHC6TkqySIM5clRD/ym29lr5N7qYUwtjK3LlhmuNMTsUZh
C1OkXyLGyx5UR75D+nWRmIE9z39k1dbuKGEZ8qyto85Ri8MsRwmCgksEj4X6mL4b7rS+v8rWK2YS
7BFsW3R6w+lKztSjBbPfCWnUIaNXvYSIeSpWMQaRl+LyAvrwQYVe2/+qzSndsMoJK2I5NGChtKOk
w3gKsKd4XG6SOemdZBYaKlrRUccSfYrbqdMWJVViOSqqPXehs6UMK/diny9aNR2kjtwuK0Q8NJow
ZmQM+rhYUHlOcKDWk/IUBuXlZHaSdLLMtNAmBnMT0d7o7m1Ti+2Esz0oMJ+30cq0BQUf2Isf5+gD
AOl3GTDIO3VWLEF7ARk5k3SQI3TrHAXSqI4K4TutddcpRHCPWW0lOkp2kKwUBW6+SnkTmRoH9///
vNtB6M3uSjdi1SXAVP22wgdJqPMUROUje2DgedZIiiNnDu1fxS904kdisYsq9iJs49sDYALZY+51
hIg7xkdmOm+oGnbjUCTZkLm8ShBo/Teb8RpacIN5i7h/i5VQwZLsyt1UMq3JBTDddS99oeYVxBsA
o+TSops9lRtFo9SVJIA4F5hsCYiiG+yQuNKRwPTqXptJ8pNlg0IrpHtBq4qrsYRmsx4SIrph7nX2
iafVwmK6kvmIVH8v5Q2eN1l0dr4LU/kh10f2Qo+J9I/eX2j6SvuehD9MuVHk+XZihsrwUcz8TqCa
r+OqzoW2JrFuf7PUpe8/FxiUtQknR4gJE74B4SKUyNGdjmCr2IN5M+81Fvq/gBcQUVwC0Rwcr4cN
8d5s+JAGHrwcEpEbBJjhu+9i2U6qi8acc8HkXAoAX1IV2dI4zW4iMrsnjvGPNq99xlGWQgBACc3/
5ji8wgFPaQj5k5L60buh9Y9uPCP7AjWLYDyzY7nyEON/3vhQAMtgUp25JxxUrGxTUjil/WdXv6Oi
2VQnCgYO2MYeqoVhsSP8d6CMeDlq32eoVyV3Rrw30R1hojVX0oSC/agEt6FFChlzO7POkOd1s6Do
k0QzwXVRFYyD7RMIipKzdLdvwlg2vjmImcQ9IAabpk09YNXEOhKs/jzwWtunWolWEAEDEBx+6UHA
35eU0SqvXJuUy5M5sS11J5QC4gVkMDXKy9lOMgIMQFQsPrmgP56DuKzikdQrYyO0ISWkMsjWL2IO
6CQ7EHsheTjrlCEGH0cQsQ9a9TntnrRiWlLNTkTrkLjx0ozN33McWoL6qoz7ry3HyRE/F/wPFzAr
Bdz98t0Tkp47XG5WuhM3bG0ki8UNufLIu7P4KcZr0vNlSk84i8Sri0sZzfjJN4tQ1K3AGcOuCiOm
yXwbXX/Qkceo+lXGueNoc8ZHTgg4Yg2+kSkx7T0dpMYZnrhfPleRy3t16ZGvUnRHdJrouQPxDCAI
TBjctGpJZXE4qocfWlvwprf2ZOU3Dl2LEQxG7a49muNyNEuJ7TbF+AMvxGn8ll8+UyincsLqUo05
IwEjzO8tXuRN5SFp3qX3f/KKBPVGIhEqm+9AZTxYnlzmC0XWqwIKXZksAS/wCKUocTSXY72zukfx
EKPG5viHtUP9vAqnu9XP330jRSl4+Nxdccia3yI4Ype2P+dAXWUHIMc3M4OGnk6GqRqzTu4coCD/
RpwJL5FJPjMVLMW3tReR/hjphUaXLsayvtjdSx/Y1c8S2hHRSFtxNS6azc41G7I4OUiaUyJJXA75
6qiT18781VJX08RMIbqxivobT+im/oAxEfL535TTgWCoedfZsyLkSPmEyM7BgPdX6EluAhF1NE05
NuecTs98EHgUdxB/adR9TfDNWNd7n68eUpiHwKeuy9WqkKBduu82MRRZf0yMQZxx5ObsDEOPZKcn
uXH7hWzIi9Vg3NUZVl8rglnEcShW46Ttg0fDSiBUVagUbGXWhOU0X+sOzrv8cYmU37a6+dqyVS+q
sE8l/MFgCQVVKA5cxHdC5F+dzsjK5XJlKnAFln3Cd7bUoOeczuHeGxm3Xti9gCPS3U/9sxW0ITMf
GZgbLpGGEzhqGFR0oyktdAW1doHQ9Lhhco8udRQ7/xImQlOoAkAFJbjQMXwf9TqJIwFEqt8AE2tn
y5yE3jupyLqI7RtucvgTMmMH7att5LG+xMg1o7r0fW0f5T0AGrNRRhxoVXY7mmhKiaA2+79AV5eG
wTYhZH1jhkt+o29ySDycBqLd/vjt2vDdiaOIJv30XW9kDbtK4b2Ri3y86MgdeQNn4nHjMnABfNNF
NryRVDZRqjCk7Yj/kufOeEzgnFc2bCfmlXpr2IEQ9xKamGIkt7IYaJY47S0wTykWP0PBG7qR4UsE
ZB/DtaP4/Y3Jeym+XHEe78NAx0SqHNBq0dsHPW4/D9Csfw6dXyHodWVSsxJA4Vw4TEzXzVQtzRGv
cNct/nHkeWx3FtaFhz14yxzV/QWo9Q5TB/UMc3647dBWVL7iZbuXlflDrz9WhwkVP1AGLLUcJVXn
sB2I9lZ7BDhw0lXStF1ucJkyU24HQ51bZufS7yEDTbbodigcZb/ODYCSwohf3CuOsSmtBUjifdTD
1Z+IZhTQ6bK4l6DnVzPwuWIeHi+9tGB9i5At45fqCGksdKLAA47iyOtjycEospUKBF9r7rAHT0EB
kvSHHizC04F5y15+WmqRP57+naPqXga28inPs2c4j5j4O3XeQDYOVm3OQCqddw9QlVU+WtOBKluU
43otJJxmFyGRdFdokeKknpuxIMaW0vG03gYdPJ+/u10dir97MW6PZHYbCslY+fM4kUJraU1u/080
14Z/bIjI/EoDrodIJ/vGfFaiuvTZvDOK+fIAfhHWSAbIYWUyno1g24/uGXwJJM22ao7ZdlQfCnYf
xTHtvlXc+R4PqVssDNA59yxUhFdeyt7aNDdmI+G3nQ4pocF/awvdI2YW9IrPOqktF85I7YNLSl3C
Hej7lqOHifJeviJ3Ki94py/K91yt0Xj2uu034m9MzikfHAc2kHSJk1Rh0ag3XBYaWKhk/1EgxM5z
e/tk+9B7hGacXzX5n2sRLjQcAmXKFVwnGiTbOgnT5h/r4YA8ADEDDjlVvL8UFMpBkrYI64xfqz/o
Tk37N4oXHC+NpRz8cP3izSCeWQLNI3RfSlSDtjA9EAvqawL+U/CrS+HN7VNocDL/Lfh3vWyjpz45
mvdtkFAAqh9btqCg8N7ss1BjtjKiDRzNkP2nNRa5/PffmKqA0/gPG+eMxeO51dCGtMc4pS9hd9dV
ZexECrEyMF9wcyNXPecvDuC9bQFT/kz2Nv9SMJlOZzYTJhjqBhcHM+AXBV98/3Q/UI9mPMVF9HcP
tkZlQuYVpZcKDF0p6D/e0jLoToRA1caDaimByXRQh/BMmpR8kZFqwRMPzAPvK5o0ospNuYEJpNvR
FdPm1d7KdLmMH6vVMkJFBKUf/wKnGeSqSU9RkQIjlHLNbzRni00P65QfDcCMQZF+1Bi8rwtD39XH
dkK4yMUL64UcjJba2iSaGYb3MO08EaEDsKsP4n/p1TBxSAAvc+G+lF5vFXqlbw27S+0Xs+EVRrcM
CXvdsVkPdYwxEsH5MmB06n64Trh0jO5z23ZscvAbP20XfE+b7Rr7G8DBa2M7vY+o+3OUGS0ydYq7
Bp+MNO55jusxfGqBSffw/bos4/LIkb3hZKaou+1YSTFDrconXzIslrwnBG42Iokr4lRXb8Ub6KIx
D3W1rNxKD1qHN6Np4jcur69FL7P/0meEnZIyYgPPHAkPcQjU0qByZtnM7kH9bU29MXQGM0ytw0RI
GYR2sm5CkoLwaR5rT3edp+9Js+jHUx+/oQDdyUP9Gd1EZ4CEnuzdlQ1eC+e+XaBlbZ3W2poh6ldd
Spg4nui/tAuDndgs0KppXlwwcVEhwd3Nwif+8JxLee0sHJ/BoW9Y5ay834CPIXQ5vPHIjsMxm6Ed
+yagx0Pc710cia8vBBz+Njy0o7cdOO6sD+L05xJ1VqaeJx5sNcGpV/BqDZ+OtFXObmsu44s6LIKH
cFRIyYbz1FUcJ2rLZfYQ22wqdp4u/BIlmHOE+5iegd91dd6jpImr6NfEhZNXyzk2az4MbDM4K4bZ
1zGkwr6ukhuqkzPPoVvLOhpt8aAwu7+C64hbyAaSsAwWDR0uIYyv2OgE0Irp0PRFkGgnOM3Jg1lW
RjXNJk4toRXLi/5yr8HOS/K7U/lqXpkFrKxKsVieTEuvgnjiSzXQIRMLnc3xt7TUst20/zV6f5Ol
Mpf3w1HKNtiLpgBJm+mPCTLr6jsmaMxvBnA/Q/YJHqbzAz16ycQOpDcAQvhxJGxs500afdkaLUSI
poZhLpHpaGIqEnkBRPRP7HgozuM0e09pOz//JU+/G72DDRiG2hzoFfZAUQJ5SeStrdp4rmDsZiVO
59Mqu1AQHWL0CNg8vv0fBZz7HCdxaKwVTBkikVbYZRpxzufwxbjGqX0zRwUNVnl3qqxWz9X3PKdP
4mCl6q8EJEB34e6Eo8vBBw2z1QZuh+IwC66J4e+oVrw4nWWmkpBZo+/KNmclNE8ocYN/VgUHb78H
dnWmIGI5V+lKnGdFFzMo4uNUSy1UhH6PrGcDSlvK3aiv5zugyUb0xKLJrY8M73MmqOP8zWRrfTJ6
GR4wlqsLN1JLWdaI55YW1leMIi9j8FFoL2hagStZnrOyEcydaxfYD7QvWGCKIFB1gxoR3yGWxqJm
gJrWjMYgJFoXrTCmqBhAlIpD5azGq5OeTXETp1WfcK0vR3FVromihNAEqm0xhrd4/cdR6Ylv6/Zq
2iHodFHji8NwPcMrCurIXgJFIGFQBklL+FA1E6PvWpuvVS6Pdq7ePaFmx2xZIyIwWn6yU8thZ2J3
WDZUf8l9GLv2bO525ga64ZcDp3oyMKUzMiEW9PuZlDDQqqgidW+N4Hh5479pGOk+15JtW2kMY10g
Ib+Yx553fUJV7+hB5GWQjYjBcI+nRutMlqdtWXMWK1xgCuzNmB4oYPbgL18i5zGm7xo+vOaRrtWn
mSz+23zoSQgt73h5twjbqObyFRDZwXbHAGNJpkTvkyGs2bHQF2UpsJGI8nszg9yPKfIoWlaAl4QG
DYInAp5IvBSPb66Ix1GNa1dUnH9izXcRsNjEW4LjS45sQf91vW24A/OgfuB5RxBZwsltAEsrr2Uq
v7iezbwjTYFbNsRTNKvfUm4OBRLWWnXmWzDN2ppQBnoczzgulIGoCzMPeAoZ2nHyA6mEV329K+5t
LrKgqRdJJnAiiWddT0S9G0no6UUcr4NPaEUeMcfW2lMVM7JpERmJaXvYSZwFRu1VQVz7bPNqxk54
C0au08XpS6mT0VIi5QZligKzB4hvBKgdV8ywUPhNyDfP0lqFsJlDgp+WYDvWzEgu41cCEUGEU+/2
KVdF9gydi8dcBWoEE/fC0WDjzGVEFT69ZNNL/pH1rHuji3sByT2wrJrjSBY8mBW2PQvhPvW4T8bL
WyIg3hxEMSjLu1M3D9cW3CV9Ia/jzK2QfAnoWndms/3SZg6qyZIeZe9p1YePwqCyY/XagjD930zZ
T/kQzvis0gBydRVoYFo8MsFPR4sRM+pXPh1+26K0Eum/2DWTkR64/a39sV+pNR5ClozQMGJuaxrO
iun9nJ+5iA7brvAmsBXa98n+h+0vGLthwCKKmAgFhSkHCh4wfpliQvdol3GvgQ+geUHqwbALYylV
7rTeCtf5AJR5HUROF8prWKxDyTnODmX6oExbKdESqJclYyw7ok5Ck6TNXO8rN43oHf8ff7SQwDGK
RRFG+f56ImL0YD4cU1bZcUmaqV2rkCYKzA5lMyo61tNPD498e9ivzJsQv7cpwBnwK0wUVvKONRSs
2Qn9Xemjoc2z2lhvTQ3bK+gVGgUwiUeHao6I8aSbOlHSp0R2siHUOwWjjSjLqiWH8OfkTkUZwj3v
nXg7vRr4FK/jI9LE8ljtRG+S35ZFMe3uM0gHOrQgxzeq+0m0F+gybWJJEfktzXAYwnTuGpiHAZG/
lvQJ/m4+hzKlQVy7WgMHMA97uOJUGjoDQbIIae4uDxydxNJ5Nhz6xl/EGKFcm9TO9ZVkksdz3Zl3
LQp6Lg1QPwR/bD+kij7GVuJebb+JCnfUx7R5hLbVhUT1ovVYCFYl6DlPkOY75Shcl/8M+069hxWZ
pyNGXO60TkyLRAytOPuclkJJIuaKasGK1ZFY9QVMsvntopC7G5+h89ky/1mmja2ZJwWem+mqhx7m
Bb88bHhF5FdBHr8UOuMOgrGo7TArUCmmttsI0Yn/zqCc5sD+3HCRACesrFACU/BclxFf4P35h9j5
3y2f95yvZ+ysaEd1j5wNODdEmKTwVqq32ABQ/LugPy81Tsd88F7h2i8FedSPCvNyTPAFaT8TM45T
ylFMD1cgKRDjidbULyavypEXSEgbTbdxoqTzzwz/rHPSXYFXmF3Z4xnuIoFouICEfcAvv+eKjXn/
FE9KLdh+sSh6/lLLp2NOP/Vc7hHwyp+dIetZlnH6NsdKMaeVCWhdXhKq1iPiAtCtM+6N6Verfo8G
+0ZetHALYp3pF8mxYHzhzwYwx16p9Ux2ubCYxwaizjLOJ3f/K8u90nYNyuhikPtSLi6udq4dZs4k
artuFZ25lmSm6qIHR2rrSBM801+GLSpQmE8kiTj9N+AEqWtznIIxoYxuCRW7oIbASEckuPlO+il4
hscOTd6fTyYEklTs1Za+Rt6yHq6uunGsyWyRcm/Rz6i88iMlF11oFmSXmPgMVrlaFg2OzrAh8X2B
Z2nMoTc/+2FJEz7UVRkwTVj5XO8FrGUDJ0inflKgpD027SJLR0eblF3dxlyCpsmyXFfZyA6IVFqG
w2j/02/iVmhpbEgkHjx7sEX/yE3As3i786Sft8S69JG6NE0g4nP2kxc1faP+I3S4M1S7eqGIiltn
p4VOVv4WXgJEqOYAkfmSCjcPXOQ1c/Y/2LA5qE/AqfkQmdQLnDQnC/AxE+8Ae99soxT7RiZmcaRh
BbG76gsDZ/7JJJxE67MHIjK8CrK6L1aSAfZVu5hH0UbMykvW8zESSGDKdk4YTzpo36g7wRmththd
tBiBoA9uh8zWAoHdUEzH9spZjOLnE20O+z72o7zR6a/HIHFWsoq7zL9C45dsEwDpgpV00c+94QEj
JTfixov1jayO8jufM/7fOUpqfyr2QtJvOtEPIT4aCo7NuYmRuBon2XwHeSFzqH5/V3kxuXS9gwzI
PwWsyvOQsTgc4EUbOxnYO/SodfQb7yNfYZ1CtviZHDXFfqrPRhSThtDft1O7nzMn8vKff5yNYR2k
mqe2rxHeyEI+Y7Z7a8vYGoMgC36M5rXRv38pPRwBlRxUP9FGzOaZ+Ev0FEZTHLdXwhYPu9NDMc2L
J1hXjn6awPSGKQZsUaJZsnld+8jaxMIeUiYvxh89gNHJpw3XhYaDua2gDEcFaeOWf3rH6efkLKl0
207nStVfm98gAvqcrAg7YYzioph1ECUZJjfN3UFRhHqkj18WlPvCTnsBilVWTas08LcbOZL0QKJV
+C4EMZnnbohFh28G5gg0D79DIfYjLfginM0TNq50pg1N02L/aIdGPZfwhK4pRcWO7v8Ags7tn2Ih
BcCdQaKob8E9/NcLElYIicwzODEwrd5NQZhi80iA8v7oAAlJb9WFU5Pb0QJlJarg8SBGsa3BcFWN
kiRfRQ9rNpvcgb+JYLPCXIUwmn/+Pxm1eP3FdO/aCk8VFnS80esHh5BtoOThJP/raZTAFYleB9t9
wmUrfv6EikYW71LEXY9CsksiT4TFHd5YOxpelA3IPhHoTsMDX21M/tP1kobzPFQaWKJ0UEiVB2Ca
9tUmQfRp7+Zbjt6hsnxnFMUZSA58aNGsVE5IdOhImk4KQtd8pwhFa17p6aqsbhcNfqN9Wolt/xNr
gan3bIBeWPPMEAVgC8IqP3x7txrkwgT19EDSJnElKhgIRK47tY+eCrXiP29fwnGbtaNsEab5rm1s
6y2oKKx1x7pw4/77vkfEfuJXtSqPWikDba6OG/IorFQU5cjSuXdOEY56oO/3sumw6f+E4XAoq5CN
2usJqn3ffw8og6oAswFalkdgwmW+WBTlKjqmQdAn/bg3ZdZpwJPssDd0KkfYekViaJnHY9hzsDW8
7NkXUB6nam33vFv79mAzNstvNk+lOuXxFzQ/eWoBruqqq9lDuTOUB9Q0UpDA5yiupMz3a+WSZ7TM
zf1vQdWEYs4paoFLCFZ/xhXKq9FlmQq/qwTOb+mESzgYZA07zTU34WyN4t7EkKJT/hpld1hZmV+H
KhNTr6OXd8HeZ45caSNhPwyDnBeZev5NweeH5X/wrlb9oS/AG89cOJeitt008o47o5kifrfB50xo
o+Uoh/64e++0IRJLuKtOmWy6Qds5RCGKhy/BUZYRCzTy4TKSN9OP7dNuzDUay5qVq9xTdPPnpsEK
qxRqMOCRky976F/WamRv3/K06+r/pp0hY84rwpbtbVWHPAqEeIl3ujvkGZHSpLsV6ldmeaTdhnyg
Ay4zHpyjjv6fnNXv83iiNnRlzi1GBYKFyLNzSPs5ItkGUL9zCcel1BxtAmgSxcu7ueGShPUEfIIS
eZjGwL7lZeAo2a48ZMJFwvie3R7+lmv0T2GA/eN1zpzUsBFJxGrc+z9L6hLmvLZbkdaA8Vvp/SFR
cmsZFCQ+5oZO5QhL3sFNQEVFZnMRKmSFQA22rR+l6S8eU8GzTnOcZ2LS9RWbvwuOK2TIXGWL7xMl
mALgoVl5HgTwCXR9XXQyCTGZR27zSGaOBv7FBNy/Pv07qKdKxGY3637LYtKkcE06XY5SsU5McBN/
LK+PycH+Q73N+diVT5BV8HC/8Yq/r2GD0+PNXbbHnynniPd6KEx1ZOJQwyGZ6zcuHVKfSjAh27h9
kn02IdaBifvAdUH9fciJP409r92e6M3/leyJZRFkaKWmTv65QHZOwvnNyQxGh3NTxxYiuzta44JN
9s98pM/PoiNPWSBBR0UXoD9bcVLewFbVXZYkxm0+9B9Uh0bcHFLpup9A7ryBS7MukcufiT9UEtAg
qMwgHZnicgXYPrPXZB4xOLe+FFwP9Lh0yDS4Q9no92PYFlfYLYGGEXqj+tk3ljlcs0mGRWyWk0Ku
PT81Xe3b0a5+xLH315k8LwSMcx9FsZIT7r3lCDR1pfhgzDwp09GziaSHPiOulm6FO/Plo4DseVfn
dpCDNT1ndjWtA0ipYjIxKLBw5M50ltNCUyLv8XHGqiD5POMWFyZrTdijNPFF1HkCdjrFp7/dlKZu
eQFKYJnvYuH9LUp0tsZH40D7hSkAWzhTFIhXyzrba/7JKCkSH6pkE2whFOl/3tvQOrNdS62Cd774
0DX9TnqMMr1wZn31aWF39hywjyTUU0FMghZfiy6vi5q8qbhR+d0knBNPzNpKiPosybVHdNA158v2
PYzCqMTbLub/ZEzO0CppVZhuJpIaRPzBN46lv7SChURozW/bHQciu2DzkGAVzloPMrNgI+7V2l2q
gJmk508sP+WegluarbxrMxxyF/I2DY1Vz569zucW7RrgPdBdRZn6j7fjw0ofUriecDbJ3dZVYXwI
e2SYYh6oLfQKe3kEOMlAxzL0jZWBqyDHn5HVmzjndnoAp3tS4pBtulYRggwOIlZ1wMltqcJrF1Uh
fge+r+d/r2Sky0xjxPKTA20FzRce+jo7aIlfupZisFweV6bZwi66qc5Jag26BnxzA/77Jvu3nhre
3MKgi8/hlQXDWx8Mk3bu9vkY+7oKJiZV2B17zZieD94qj8jgKoYkCSFBMD2wy/6f3vZ7uWo45n/v
qHBHTQ+CHEg8c/Q24WLUfj3qyVADGv4OCJRCOF7maL4GjN77BEpRdyD3VUTH7BuEOWKJtcv56/cN
s2liWck6W7B0KXP9hb4YhQTsQ1JRPJ50I4RnUit65oz1HCdlN8lOGKpv6b1BXnFIlaFnhW+ZmVXG
sYVu6XdkLBsQc6hRCxJJV+Dv4Yt+/X/jJtT/kqYo62lEphXKe7n2gfzjlkh6mpVpT3hUzL4YGXpJ
GDwEyw5fv/Pa2M0BEjXNyfMj375KOtZnK+pXT4hPZHqvdC/f1lMt2ZzAmS1KmaDFeQCEpmwfIZFQ
iu8I6qItA78gkO9kmT9PsP8pTbjEGmnVeToN/Mq/QKghjHfWTVE01X2EIcSwRZ8NEhuhL8LqQsdI
BWpTh7CkUbZlFpJxjlEVU84DvsXRQXW5LIR5CRMX+rafdW3HKKnNczf/2/dGhHs95FNc9x6uYZpa
ZFq6Ojcz+SUpa+HgAlLna2mFLQukE2Vi904PLLrGZsMk6Yh+o0GRMreG8Ow5QmehYLUQAqIbk8SX
Kjna3bvz9E8JuXpRcIA0kh5chHYE5JMdpg7/EiC//Gp2taadVsUtC0GBKMkkd85QX3A/dOuyXPRh
Md2azexsfr3oWW6tOwZV3p6Eb1dgMo72KWEeWBfVV80G4IS8WtgA5s25m6/cNzJizeRVYHrUno7l
sKH0YSBNWk1qDbxzWFXUJAIWyRtHCvFFcHQ/RnT44l8fAA6qL4CwGTRtv6e29JqpBAp9+ZNIE2nw
DlgELozw/HDt2oq8OwXBvC/92Aj8v7tNqmFXI1a8uucoYX/lo9i2NyIugDzWSl0Sjy9bdhij1wdU
88jYgvlkx7C0Y6cSB6SYhB9t67nWh1jjutYqF2ZkInbgl2GD/1APcU1H+W/gaPsonSUQe2DKgSdg
yCDsFu+EIbrzu14xfpbL9FlsHlhW1EUFP4lBiUUVGHsowKtxtbd6hElqVOB7vp+HLxFGfCaO910B
Dpe9Bj7NFOEj686SxSD+2loFAopILkf0ohhTo5fmykocotDXOGGa+EwU2Jjt1MQ909rpzLL31hjG
2bQJrqQ1HwIw6TzDMIF3xijhYGRRnDNMeDapXyuOPS+9Rvmu2y5cRKmONtkXxTNSjvkEUqRFOYiC
C9oSI1sOEe0aeES+X/WsD1mjMvWnrzrqRCuc6CQFRvNB09vU+zfu4inuLmZWmvIUm3tD/wdojLut
eN9LEBivLsb6Zezwi8IRP5oC1Y6D0YqDeMe1EF9dmoq/OzEOtqbPCbm9IOoVPGtbC3KGhH16arZn
fmHJgp7X4EzP0F8U2GTpNUmwaSF3wsiLe6wKY73HrN98XqJBkkOd6xKehM2b31su4kzKZOReWMwM
JYMyUFpcbcUKHyfq7Ifrs2T5KYFLsmFEC85YHrhvvUZs+FDlu6V4uuipPPNOK8ZIBGkjebXh+rPQ
YozUHFsBlRfWVRgUQNnFSKaec0lceCf6PgdpzeBNnzLoteR+ejWJnDaKIfN3ojNlyNExZY9dfZbK
D6BpYp1KbFb8i9u+zoqgKr0/X1FtymsIDZAwimmnwUam9Cqj2+e2Fp9cYAjX+kR3iLeSelNdNUuI
hNRrZCy8qBAqM+uQgFA7trsz2b7QjHXnQHNPfIVfvnk2rj68AzKojPUug879gsoRrUT6R0Sn3aC0
vSShfIbhvzsSXluHAIZFYpgzW3L2w5KHtsxGxyf2yQCTO6azhpmWBCYaQf2TJJgcryOZqB7C2SZz
6c3iO6xpaGR4M3MQiksM/wA2JApU9VkeoogvO5uf5Nax/+myY1YPXuXPzUxWYuc1Xt8RvKiQ9B6K
Z+REvYTY5dYCVEeGJex+KW52wXK44vj68AP23P9sPNj31LIGLokXR0MwoQNRviHKwLrwYufWgi7r
cDPMR2Mm1cgkLPjEDtWFe6S5L3Xzi36oO86tZBLHpLTaB15aZyuYQYIbGZdl0+UDw2cnGF5pGOBL
pUW0LSyPBGJ4g6oEW6+AkxB/qd6CZvL9MXMBWzAP4aTu0shyV4Gt88G+Z0CM1htYAR7lSSD/7XYa
j7EpyYIuFpnCWApB2rGVu/bWnCYU8xpYE/cj339jvvfFI1WqTthBh9uTKf7vq0hnuwgW5Vq9UfO6
U+0DSbpRQFU5B/TGSjDo29Ag6bMrg4Y7ccQrrQUBrGfT3yfr6BtDo4wVWKPZxVCddp6fujixHEws
rSPfgERCHX8DZ9lns5HveijATR4id29p5eY82A6uJ5cYdQpkwxbwX1LPrMtxZO0dxCZ5Rv7lHQsP
xVOzzwwrc+lMfP0TSsijQlJnV5un/JqAz0nmc9vR6vwxc5VSHqlYF7zHRwNmcXLpZQIFFJJVtcke
Oxq0LtOHF5Mo1lg+PIhbLCTp8PF3lI1tCJoooNZdH6gYTF/p6289Xw7DMnd1wXWEysn252S7hh7O
p0q6nOHcODFYKLQCzGiYF5nGQ/gk1txv1jQ6yUOBPOJ4gJp9lQSxbpAtiOt9cgbtzwd8iCIo5bs9
krKOwQAAKuraQBGcnauJVO5CBEdWWGb3uIhg+QEAZ2ic/i6ciZIPWmA3VI7943q1FPGz7jvknCEu
cVjIZt1zNeGQMClc2bJ0S9BS7+ohWpLZTFaJW21OaCusuxf8QRsIMMvNruTECZ2VrltGa0pPf9Ow
hixygfo36EGzGx5WPobDKxCsM0X3rWi0ITJCVQUNHG6GeppYmCWBDZTjfBpFxBHX4S3Ys623ihlQ
y4CyuFOmdRYeP1OlpcubiDxe1SHCvhzYWGnUn1CWz/TRL8pL8sF9eYhHxsjZzj+7P0stEF+pgyAF
IHrLIOX7sa8HcbWFlHPYuzHwMnIf6Oo6mujCVj1pAEJWAQ93NOkcXWATFw9DjrraMG6R83X/42+G
bqBnTt2TwONj7/ws6Eoiu1umfaEf5+8JQwSuHwuUmmz3Ue+I2B0+mywCRfkubenz04HnkosetLd2
PbHna/IOeKyUzUSHJXFH/cjjKQWytsnOHyNxTav2rVgElEl8qW9cFYz9d6iXHm+GdjnGAFMVHNUi
ZQ1ivfm7BeDYrCQFiBn6HHcswej16HXNqLp89CEGlxIiZKMGA6AdrxentoqfzgFFGFdmiX6r1c3X
tYvZy4Fsjjtu8FXCxquMYjtmg8wmXAptZDtahua+9gHtIX2tN8jqR7AoKPAhAwnlw3DP6ThlAXB1
BA4SAjlR+kZeer3kaUyQJU+2L9TwyzbDb1GTkOsZ5J46c3BY6oOkno7gVNRKgCbrH4+ipgVvx6h+
aOyw5f11erziIE3h4h/Vas3IwBqYXp/KohV+eznFyAlYHvrDphsJY3AXLDw+aHkMHHmyaD1Fzs7t
aItz9rCGm7dkQDQlaORLbMb1r5vhuE8B4TUG5FAkwq5PQEvITADgpqjoTiL12WJb6xD2ppLMOtgy
sobuGuhlTvM18/u8NDpKepzZGgl7sD53ZS5jE0NfdthkrrrBVj85Lte/9XqvEpUTSsCQLCegDuO2
er259Cfz9SmJyU+AVDO8gXT6znHa3WTiIlUabSvHBu6xn2c8WxSLe81OjFmJAxG5cpHyYPu28Gmg
0Mlx67MkJHlhntwfRx7Wi90ueN+PN9c6d1WGN5/mGZNkiST/zFgSSvcfMsyaN+eeUUJUA1gCOz3G
/HjA0793ZaUctJdCexC5A/OOial7raoic0qwHhTSuPQbIFd7rRAz7zUT41yumAKOn8I/DWCZFQsj
efgIJCOL+Qm7yWSWs7c/4Hy6RlM/yGoyFiH9f8ayMLjFN2FLNKGaDT91sXFQI0ZCXfPD+Dazox9+
z/z4UktWIvBEu5UprLglSpsUKbOlQWPwBR1ibXYmgqHD0QhM2pfXFNS2whSf9EZiMks5+qzcT9/G
5sVcSmawEjJ+nsBaYuyj2IMhAkHEQuR9sgQwiUz+MW/ZgNIL40NiEHu1f+xyh41iAaexd2wS5+5P
dNJaqLbNIEByFv9i7cdeigcrCh8hx/2qNUxRJKFcifB5D7Pmi5QajUjQdc1ypdzWiCi7Sw0US/HC
+xXwQo4gg+PNl3RbYIKhEGXYLtjnb+8Xv183sp/XPShvbc1XQA2Dtjk0HZIh8A8G8VqEcAzWq/Mu
MoCxlW3XeEZNZcgLfAXd1zyBUBN8MEZeCGciRlSdWOXbrsyeRYHT3iYkoCuohlh2j0k/gYf7Az+U
Op+hSXFBune8P27S9Pdq1hcubLcipYD5PaTeg8GhEF4yMhyop57bJQs53+mqxT2IjWszWtbTf3Hb
lKSnuKIIcgRUEpDHfo+pE4nSc0l6v8vYS9O/EcF1xTYrqZZZ1jSyW3o6tu4OP7PUrU2e6FV4cJZY
9ucF2951BYVfNMF5f6mKUJ7U+kZzkt2G9iESRcV2BGYLl0BZH9zfw0E53deHEolIMKYpAX1pk6jm
Q9ZVmaXvJHtDwQ9SFQLPLWtOEEmjQjhqb0soHKnFLvajknJc2WHd9NFQXzPllkHX3qBaDEtyFs9T
XmPG8OIBv1ZADP4N4mNHlvrTdM15adRZqIdhTNkl7vpUTfOhVk3MNZEkGzddwRuwPFINgUxoAyhm
Yx9uFhDUKdjZfpH5EOdBN22vBnOjX04T3iflcd6geJjaMmM95XiNAJWpNz28vypKuzZ8K0GLlpbX
2C89XvLYSoNbUVYsrQQWhX3I+NIMgbbVJ9Htt0EObUor0jipKaifZTsn+H2jCwM/hMs9Wswz5528
+n9mBGp+nnpyS+lqeruAl4sDO/s0usl30VwMvM/2A1GRIwj0Q7i25k+lvva7NddFMucUFikJKCwt
a43RlGAQDz1eA/xohnlubBAwt1c2yxfhozBbZhiu4HAsBTtJKgxR4Tp8bem1jg0LUG4sE7ox1IlL
ivEcNwnF2B+TWDsJA9w1+WGBrN8x15c/Fvxh9JeTXbHXngCAN4oxxhiSgt4Bc9bnDP9q130NzZIo
Ckd0CTSDjK8Sm9dde8GpYdyKm0ow1ewD8atqknTqo6X8hHdAs1y4ErzAsbZpfTiY84BoynmF9nCl
7y4MQH2zqHvFZZcDdZ7dxHi3sTl+Bh4k0iGhot3MNNYjmAlDhglZiaSGIeiE+4/X4cOosCC/huzs
s9t+ndShMwuCfHYUMU2OecoijmljbPZyjzIxfcKJEobFfrfc9iLz0UGoJZvqVxh8b/pzbVNuqAAh
kcySx7XRd5F6mPGjfZY9StQojkAsbblWbqQZF/aR3irCXVRJhZPvqosU1dm1zqPd+f1rHGvRFflp
eR2D2JbG4bnkJJQZ59JPtIQG7mRviHthJ89rI3aLgvFvrgx1JHoVDnSAB0XVprJjpxjWNE4vpJMM
2eotfyWfDNfBIWU1Wxb+mZVtBUEC37lhfTjhWF0l3+9pFBZv+JeGx7Av4u8W5tJGCweuFHAsc0xW
HaMioDQnWHyrVmPCuWdtWPahB4KnJPH4idkHAwJMXmg8eu5ACrcuUHb7gLBTX6VwQOSwU7y4pHbO
ov8Q41uuZUA9dTwq449ZvgoeSg0GoYxnjSrmIffD0PoiROdz6bADXsOk7bFY3dzgpE3ZZFKCUm2c
bUijf3OI4DaX6+ucOBfsCHQm/ELQA/YdV6+1TtWNXUc4lan99Xjijpsfr35JubRNB7jV27O7veyS
dILRNtEelB7h+zERZXQLIqhk6ezZHq7IlM6VS3G5YkzLmfbGqvK6Qbuf0YWoBNdh1k4WkMMtulMH
JTr9T2s22OACLuFtpUP39C79NQa6ASVSie7x4IH8m+lUa8GXXNimb+OPR9g+gvVSOqYpmSOHfovb
zgBdt9QvzmJD5j4pjk1/1i4IOoDYlZjmfJjew65RMwnO35eQjg/kxSPivVovhZ6kKWoL0wEllz3T
ks4QrqEIzLqSd+H1J0im3IaDB3x7vqsBeTcw0D1eFrbEa0+5rvVmCJFldtMBv7gRMKE312YX2/dD
2Et4VfDuU0hLyJqXVLB0jG6vveniQkbUJYHKCv83yqQh4UABq1vT0XQKfdwCklmC5W44hjL25fgu
OngZVG790k4hZ7BtHGWqHmtiYZ11jSUIjWasNJLGqxr0BVXwczMKc8NQk8Cn1koNyHAtzO989i6L
/3llfH1x16FqmgDdH7O7c/+8ZAwq2EoHvgNqfK70dXGyWSGiRdhNylQHWsloHf957Mc+b53rzc1e
c3U5C3mtlfxvZPv55tBGw7wwnsh6kac1MuUS4PK9e3qYtHkQjkOnWpqnnw6B7Ei+sjYQtbb2f0Yu
ugnAP+fNQF0moo2MqBpgYBkU20e5dSMRT/FXjkzFG+ibn1hyakDfez8vBRfUWwOSOLnMnYOS7KGm
aHLFw94J4MymRYyON+BqakZOOGditKy/lrCFzuCfRVNMCpQkbVh20LTP7dgH74GlQokahNt3l7Do
sn0gCJ6s6uHBPw8PVbZhmYVTVApNqjXhtKBS8GOjVhSqNHPeApS3WwcyX27yiVdO4xwKEvh0oV9I
IHCWr6TcfsvgFg+4F9mDepBUelA2SbAKNJyhmrqyh/dSju7VH2bEVZQG7iYXO1pBNCf5cJWL5VDG
IE2Ui4Rou4pux7xvvPf2WeQR0RQ6Qe1GWqftfDvNfeS3JiabLA+FYpscDTsLOHj5RTlH7fXuhSvL
KmnT2+aQ0Rb08PRwl6w6oguyVU8f6TuQdeWCvoamp703t9v0gecz9hzAscX/QlC9oQY/mYZcQC05
IgyUkKYc7r/xXceoZfjzbibrAfPcvkKouo94IybKFLKQ5iZnq6BbN44Md+cmJoKeFlt1EfUrM/6m
LXmeNLWTu/ThCViYGLxqDMiW6ExXhyI1JzTi6aCImZJ8rpAD0OX/3nWhrFBzzGfGRaZEw/RvoqBX
GJ+mcIm83ehJWeVA/2rja+UFRLsu8DTjz8LGe+SylMB3ByM9MDI81moYnVdX7b6QzMegD/2XTsPT
HPIYLvb1banbbL35R2vPLwHtLt1dN1tRA77m57NZYS+nv0csVRJLG0hbxE929gx0S1chXrf66iSA
XE8xjBzElNhjc3V8EE6LxhRDgBXuCLfxvPUmzlfVt1S/bLLquEYcD6C+NemlY6he4fjg7kzqyzqj
vPeUsGMUEAjmmZGYg2CnidA/eHKlMfdITzCH5C7StVp8PyZEdxkt/g1I5h5rWBiy9edLAgYaJujU
6yNxWR0pNJLtJsPytd6NpOIHczLU25syECzTyaPoSlw47Li52h3Xqzbs4NXHz2xr1LJ3vH7oYZqz
xP05pMZmMqIFH/B6QbtxJRaKM5ePAYKrtldn2T1hTmQgwBI93bYVHYrqkum//DKwveaB1MxzuX8p
EbChMJi/+W2n5ps1Js9RIlkcyVXRp5E/CTYT+J8/co+EekCHtP7empE3TSmV6hwQIq+u7Sf7QJk1
621iYdHWAwt+uYjRsn6LZo74tk0rL0J1jDQZATWyk+pikcqUZUcX4lUyMVKvAFiF53v2qcOXo2uv
8VFIQXqTXihXpB1gFHIqZ9S0LbkZ6qN2yRkXR95b1QSBZ8dmPbn6WrWcULWQwcYDbAfTultlrbp3
xfaCTGsMNWJlI+vechgouX+QlhlLXb7USBQd33q4eUE2CuNMSOQFJXA2yu+ALv0wcN78IG2uGUnu
A9PrWmTHsOLX6Oa21uxKwg2CufMI6BdkVsiJhY16617USf7Whskwo9uHq8dL6n/meaRf43ZYw11p
I94luZZmCSZ0VBsoefEY1EsTlYKqwsgHWTRj7RFZgIvdeg6UMi46vE6pu7z/8TDWPN7eftgELkC2
zrnB1mzRHb/AB8GaWBMGqQf6qLCpgiuUKwE0UY59Lq7Web8cvKyhvvvgJyUL4xEEm/xy0Q103/Xm
8o3CZJJIy2t608fsjWaiIA7j5e3+otk6GGM9cP186h0aQrVdu40SOYfgS89vSnd6JhUrLbtWJHWU
+F3rAizQySGiUK6xrnv6Y+RIO6RyPDGEzoke8XlimBjHBfBWRqOn07TAAqYvKSr16Op9tENGyGQr
6hPwyb56Xi2Dq0sy9jUaWiOqr6jaMwVAjvq/UFSeenDNhc6A50RLaJu49UxbwpCN/MUkhjQk4Gua
2fimUqjYkejuSHwN0BS6BMs+3eVDcb4APDqwJu3X2rAIapmEE8qlFUJCZKK86gbORi/4ODJq3bcg
UycxipX05fC95tk3jzu0KSJCUA1//4tZZ6GtVp/juzmeURY2/LrhlzREeEhwm+RLuIzKCzSCazgs
MNSxM8fUgqyIjDmaX31a64nUB00C2ZKViwpYaJFj5m3bhcT0z++HUujmzrK36S0jatgrMeE5eVRI
Rhd+X7fZ9dciX74Nesy/ikkDjgOI6Th4WLLMFF1l/iFX2xnkuEBhgdTjXmrC8kTpsAgSF5aeyPo/
eFLkN/yfVjwdKgyGqW9h3cR/cyU3OxpJoK/KNtbQTOh1T44sV7ap70zfvg9Tk9T4l9O7QqehJE73
ZYDWH3+pkPHNy/26z3spFbMqpFPlDbsjz9TUscXgCkefCSFFq+698MyuIO6pJg42q686VbTyFaeV
7CVWJg3Lhl9IHOseONP9OuET4XgJ9B9znxyRdSIUXr46/lwbCvduI2H4gwBfid3cuKWwvhWA7QG/
Iy2k8M7YJMF/J3UnFU9GAAcm3a7Tj9l26PJmg2F9C1wuOvbkTYuYSyE6u6sMRwM0Agstfg/4b61u
r0sU+fyW/Te6CGaVigkJjvW6SCnK92+XQ7Jyvq586v6vYXknYRjKRC+KPtq6ihRHbK0Qx8QiQS1M
91MJkW2P4wl+NR6Ti58BuqY/CNRq+KbRkiQyKAaTEq7gjBCXgxCX+Ftm7Ki3K8cuXmbSctFv165T
ype/KlZ6FAJqEoYkrdbSxtB0mbBdrtoutHoE5gqzY6+cHolPuwIS48Mb9xzIPkjt8iEajHzT/+Er
yryp9gxsxq5Co9qmhoUJV2lbt/QhT9d36OZ8OOO6R2SnNnhKfDJ8t0mjBK8iPNvVRSofjN/WKChg
EaqYBDazTBFE87u9zhv4Kd5OaeIKN+PZ4ipEACp25AzjOaA3zZ3DTA+IOd+XUbAu4G39S7blLjNm
vOL135r0br34Yj+gc5B7pCxsMO+ZCEK9PXLUeUZwBM2+oHUJRFDjRbv7EHUOYO7cCMXVU8kTesJW
rYXxRv7CU4a5/ZTDHNTIbpm0Qui7PS3YIjuNyXJFC0ZqDpFKoLaX9P3JOWBkM7pRc6u3GX+FPFyA
Ki9fdKUrdAaHrsmoy2sLsXxP5V3pkdxz+eIxfE5O9/K6tfcMD22NTE+1Vp4+KCK+opUV9/AzfCmq
YIRKWsz8tyamUlFBzXL1n6lg9zysfDbNFHd9h3gHZn+jzpDM6UA65CnACzrXGLhKRQHjn+HtLr/y
sky2GmfPE41B/tJxWQIa50wAbVM7P8Vr08+cGKZTZP8JayYTmU00nLoKAOLv6lmT7vPNMaBxZKUo
xVoavWvhqPZIlOOrgLz6DrQ8rop53R49nwzh2OqgQQsJF75IcO1o2QhZfnX7sNg8U4/QHz4hDLko
7CD1mCzSSK974l+5Roex/42/GTnhsiyyMHR3PSdz2d8XKdEltD4pJJwnKgvNOznP6A8RQgwEBpVs
pFDx5uQd0eBpbnffEirhYvx/MAwr8wMBpYvLki7Eyk+H4b6fqizhuRWns0X0O5PJCNMoZI0XO4qj
fSmiGf4CVIGpwq0qcej0Lh3FMbE9T5P7X6cD+1w4QNJ7aGZKe3uwELLIAqGDK+e7ryCwbbWTox/4
g6UfTe6do58pxi/d+XZdJWn2UFzj4ZGXcBHbxKXXHtpIxKoYc1nzG1U/Qc7wVZSDyOvvgR+wmB8y
OEJIEHCl7rj78muV58BZpx+SbqnYroM//Bzeskoddu3yBLtj8Sv1WHVhurfHd1x6z78k3ECyYc5o
VeNwJH/2p42rg2L9tuh2DcEOX2hGZ8pwkuBXCcuop1mPF2dfAJrusxn2Y2QnDPvEu9DuMvhe8IcB
LFX17awraMObn6fTnDPQmek/nSGarNqpkescwfFbxpCHF+R9tQfgOraQvVsYGt29cAoqWM/kz0ot
+9gkO1D3Cisi4Gz5WQuHemBZORbAbQjznPST/zc0E7KhEIP8gtFiXe9QVYXvCtNwj8wXGkdi4a9n
ChiZSm94brpPra6h/tFhcCNTiCDTmVsxNuwVwTBVBWjMS5wmpM3hydgNNdDXBtzgtmbxkPh2DIPn
eAPlMf4+Z1rqUylQV8dwlH+gsPCBzjP3h1+j/8PHSSdjTBJ/RLrHyGMyMzfP6KVMwK4teBV3vRAU
Di19AO3q6X3/hnjSXeg5IMBymMBJVpAV/CR2EWhqwij7Nh7A1ywwQLwGPpwCbx7V/vXdEckh759K
EiXts84uIKzQU2ZOCwHF7TGJUVVcIH5+AEiRga6eBRYoyv9MoC7yDZ4mU4M4LPmughKQZAgoM11l
mpaFIvPQ5WOSEMApurwNrDgKETxM7+OuxpqV+6Y6+9weL+k2jfCjGWsnuJqVfLJ3jyD6DCR4dxgH
TQHBvaoMk8C8iBSd9GdExQUh2OdHSq6ETk52sAugMdqax6I/TAJrSAM4VIYLEEOCmYX6aO8D4ENO
e9js90i/P4+rOBhx7uk8m36Qb0WVmcyiYDntAZcyhQ7U0BZmOSkQ4jFfkJKpvMC0iUBEZmU0OJKm
Oo+8aPmAW65OMOQiNiot0PTzdK9Vy+9Qj1YY+niMWYDkKa8B45wcdZYdpvF1sCtdGqz0HE0Q7eBy
0cZH9Fl0l6GhP8WAa0zxI5e283R7tMM3K4ek+dlFOsF68O7b665G7mml/RsjHCdHFVnUHLHMhS6G
hi6TrDE/0KwY7hhuSrDUGXIENhVZ1NCKWVL80ZDVFqKcuDMAO6znnjBcYbfxHMDDU6cTbnaNvQ2s
50KaLxuaqvBQ3UJl/5CsOX/DNL8yNXR6akJrC8IY8c25WOxijqNTlxIBIrVGGBzwNeLq3/X1BHUS
KLZuvkmmvRvkVHFLeNjYPIi8Rot4M9rCXulxJLaCwNzS46GFlyoIxurEkkCv0HsoVDjPAVNLJagE
l2Qb7FWpWj4g8G85dIzSMpcv3Xk64BjWbG1rC+qPScW9DFxYafPJ8XhK7pSnoIMJlHKUsaoB4q7J
/B9jrqx/zUYJgqsnzrEFyIHnoU5FzeZDPCwPxGrGPgXBNmcjW+cIe1mM+37gSTEDlHpYX495HWDD
+nQ8/+J8keMQvW4m0dGl9Uj5eT5DaE3RtSY8p1PXb+d+wFuVyJqJGyk0oujor3qgM03MaZkCVNnb
lZGb+aYxZSvgS2gCGDMh6W4fbqnjYxvo++jw54EQJfWrluMbTWLFIxMGqCAUFAD77WQGHYtVn3Xy
GnhDRX3p4ChI18Zi8kc+VPBWL9PuK8oVWbwCOyaXFJSRjrujcOUiXqHoOMtK8hl1TfLez4MGSI/I
68g5xcacvLie0jj7uvu9AZGgvTQAigjzThksyc6b1igdIjbRQJgm4zGP4/hitb0FZTf5XKPVya4Y
7Ptd1knn4+QQ0qOGOTSJWrwP5k0eaGvId8ZFGz+IabvqwscrLb0el1rbmSKdHqDLNr3lHlcfvkdn
j5Sa+IZpEEhkvaA1uPSrOUR2N2uHgdw6JfQJGNHHvS4cu+CUZdSDOIzfMnBdryGPODb22+aGh9rA
5/brbKx32kBaRNyRdTu2UPMrhCVHQE5RFi1GTARZnjFLEDufjEclKg+yayUfHDTzK8bL9UnxK9kZ
mIAzTTtgNCiCnkWGN7awsGSTMCXxlG9+f8iszbm9aSddQ1PDhxxpBRraHrFCEi4IbRepr37LBpUU
vl3lKbqepWcOZ81qoKqxq89QnXh9OM2tJLwFwKXKIRI0BxoMtAE+HqLaK6ZcE8A5ClZPUIMOAqDL
3ijLOekwSywWUm3X1v1zoH9qmnRD3SzjXMyXNv4MZTDoG9OZ2Myzo9ddGb+dexl7NnGpegZt0xZ1
ZTtI+CPzYJtA16KjwhMTMMaE89mUFeiIH4cPrIjRQT/5DBu2HCS+G4keYz0nVesIXv7Bp3nCK1eP
qe0y+TOQxWfBGJ2+YDmniPyuRDmuCtrWD3aQ5b+gU6mQXxXMuvQSACrorg+o4dxO7EmGIbD+NK5A
GFfKLV/aS+ZZ3RetzQaVZ1qCmaVC5aCJ3ZT+4DJ0YbtsflSnjXEvxgAJGwb3AXQoo2cJpM/uuGmK
FSNs40DNYO98Dw/Og8pRCf4eVr4tnXtgyFdA7wjPEPLxlF5KKrYAk122ZlxJjyO7K2GQyHnWQYnT
ckewNMD//OvJ+0ataQtQ5SPwPoGwMylKoPyvQspAt48yDGjRd9eoDAgxXu8OxVniviGZo3pEypPa
j4Vw+PCMjjgQBtmhw0Rr7cjNm3bA5Gq1c2n7wE03JpoE/LGN+xGofmSAApUuJvnjhuLmCikmRuVM
GUChNLDjfUHrTYx62013fLv/ZUKIu1DJa+0VaEGx1Fh9opM8d5VrBgLwIGm/hL0340916vYaU2ag
o61EsaX9cFYTj0Z5EtRAQ1gd+JZkr9Xuje5pbErsQYtRyBQbIaggyDcyZ3uamNbspbKpN961tdPs
LM66vnkKVhnr0gaZI+ESCohV5uhT1jDwnSrzG4MSZ+PgA0uTtCy0s59oN3Mku2ZyXEo6YidsMdko
9OBl1fbPwnSf96jf/fZP4xrHUjYuWN+B4lJKB7jl9b00wIYv9jpYTdLFqHSbodxwJynGL1IUYviU
SL7ESjpDmgVfqRSqDowAjPyR1xe3Yqq8gjtH1/SjtW+hzh6XKcXNH4ke3CEznXGbA4L14Gvn5gse
pejCR2CJ6BaJUP9JnLUisass3salhSB5tUxXjDyrqsoXE1v37kjhLebUvCkv0TC7VzvSas0/RPmA
T5Vl743SpIKi4nfU8oC9cqwdjnnfUkcTbTQX9ZWR7G0ISCPiTL7J4T1EjhUtasyH3heHyP8zujyR
nPwsw3gxdLo5AIVtViwbD5moMmgUl4ygjpNmX642QerWf8FtTHfelSi/uEzOaJ2t0BbCHMnqhMaK
9Ym55Rr58/j7eo665Nvv5df7akocurbRb7ZPTvw0Sit0qYV44BhWYZ39fNeXo7B78DrPaj/DYnSm
Fxmhj0ZWaAzVEVNeTk5C1aRr6loq+T6SXl0owgdxtpcI4fZoIGpl3PEtsJEarxssMytDCHIymvOC
DT5hTGSxWw6zuI9QSS8/m+4n3SBOVCEtV4ngDLuyYaLvuyL4diY5djQrevkgK4qRhBEUeq0rcUsq
tg1UXkyU+Q+cGb7+KPJkeIhAhnv3K2vgxzqQuxdfEBYgNb4O4oXpZA0EeZZCmHA7+QNjovOZ2qzo
kj9nBK5si+LYpuosQkVriKgvUMneDoDnm5X3FmN444jcsX3BtHVsWNaveKXz1/ihjnPhshpm2Ttp
ls7muvA+Iptu5+8MT/Brnok6KXvS62/J3g74Vd1jaZroMGuLlonJdrjM+f4RBCou+KFoERQ2Z3IX
MnLMd0Jitz7Sg1M1rcHEdpwKQ5Uwo7vXHWfaJQk2gtNR3nQEXy3iR33Z0kBtCwSYU2BKy9pgCy8t
v4w7EKyjiL5LUOy0BOTg3Iu5b8qMLMTxWj6kH4GJWPThny6tL/qU1AXUZuGqCrN2LKJeL7sE3DdC
4uZh+ReBpbDFGF6mfZ/hLbimNRIyBK7VO0pVGvCxmf4nk9mr98s3pgG45OLHimgNiMIcIL3aK7jo
4/6DBPc+HZG5UwHScWTOBBpFqhhSH/rG2VFw151yjNrdhp3D1ZYcJwFVZBh3q4Obr9iqpQnZfx+M
DyKKjKM400NUNHxoSJSDOjyHrDNPSVgmL7siiWCvlfHrtIZxeFNHgsfyHI8g9lYLDZC4zg8ZlKGh
+tZmIzzC649G2evYmCjHFWNPdzhEagqfICOiCWy25OLgtUiPJZfjIqV9gvIYyGfORundD5e98mSu
C0tewD/mV/Z5ziP/r/Ee3o9v46bO5AV4QNUyiD2CpIo/nLdA26YC9zfEI3wsv+hdsjQzNH1kS332
I0dozPlaVg4khC+Dx5f7ml7zmfp1A0FSmfkPAGZVWOdGB8MurH7jnUqkPB5mtMWwZ9b9KHLI+TrJ
KutknRU63wXTS9oE2COHSftjdmSinI9YhVPHhxCuY5MxG3x8KzYaRG7Z0ZNc1mYlnCXzWZg+Gazj
E7ID3DW+ykNvuPEOjQLf26aI6VI/GLuow+JDMeu668FuOgYHFfz8cBFL+sZQqUXyFK09rjh88CSP
aXKsklUzPMOdm+Yqmhum2REGuEiZucNjln+XQjeV8+uo4WQQrXryAlV6kZgv0jiTOtA09jc0znII
tEMEWCoTcUvh/jrcVIt3M0zQDPnMb/T1d/CQm+YmZpRzLVmxxpfvu8YogH4qjwYJO6sCb0O4XHZp
SBYmsHdLjBjhmJSOiReR9L1hJq+FCqysrqjvg9zT1Uz1+k9mNr2/4ENqwlMtJKOfFLssgsr/EQRv
RCfhMwVUcrNK0EVlunYp7++VBmSmRasFT9t0fdD2mbFaSsfiKF0jIFtRzsPcoy4IxakpcWP77pjb
xlHXBtNLzXjoTPBRWWbux/wfCr2DIGwODg8f9vWpg7mtcPtKftQawS6nNwAHvJhMFevP9dPO8zBW
nQU63U3TPoD2mU5gpzxQ2qEi1Rb7NDKGu7DY3lwm59iBXK6y6oMBSHpGodFistA7Me259yRJ1tUy
CeA2un50+VnirX0w9PA+PkvBhqO2My4aA0u0WBN9Yb/9WwLFMrxX/aYyc0T1U2vR6CglW8GHAmgI
B1S0Ep9LZbvg4ni6vtRcPkCUfmNNRNAtmq/iCmRmAUVmqFct8gKN8NPCMSqYW0ajBLlZkUdoYa1Z
CmcEMOk9kmyT7ae0L4myQhXFkcF6okR3RCk7DVuPayy1GAvwZJfGSwrQlC/5bVxGg2tcRk9I1qxZ
+DDk0ycImNe4j3hD2f5aEpFO3OqkFzXf5gBSsJRUhVjKBldWA1/cMs3UMbVa/Hr9wE155OYetq08
fttL83AKPvamxFI5PO5/XlIAP3LcAJOuhAc2pjLMfOOBYz4kTs/voJJZbRzny4oZhYRCi63y0a38
4Qh4PB9Ij8CEnnQFf+ZjJOzVdNjWuw22BJCzH76RrCWVYw4PCgOVCgFqnNaUYei3sUEh7EWx0FoD
wnoiML51DtxNC8KVgoAMypfI4ARr3nbnOQu7JP0bYjwJK2A10lYjDpmjHoIpxHNXyNU6vdaCK6Fa
dkgjvOa6afsfP9VPW9vdCb+Lmn2/Ok/1cs5Oe3xXbM3seyXx//H2fOl2zZKKNyP4fVP8ysOpdYQi
ax2xD8OgCNXg7oC5kjyy0X7Bu5wpog1WcUoi0assR45b/Dmnv69hn5bkdz9BqBNSCfSNSWuvk3d5
+yHI2BtOVzQlHllYZoKNjEtgcsXSVGSIax1xPMDYNRpdKj11OQ0Yr/qFhZZCwP3aYTxrCTbo2TJR
R+2ZWTSKA1OhRTQnlmifjSiq7LtMZfyMKzW+sWiuSH+2XUQdImSjEdCPwriAQf5oYZRWq24fi0tp
RxqnJ2N/7Fi/OXFUSfmxUuZrmLW4a0jLXHAJ7Y2eIkjlhbB9/DZKbTOS07/pa05Ri9oM5GWQNzUP
SvgYzz63H+6w9gSbdc5ra70xctoZSlLzKBP+iL2onU15/kVBBTlG05pAId0+q4DSpnaeP28vzHnc
b/R+Thma5u+jg2SutCpx6y+Q8YtXrViEo/1v7RLMOLGfmnyJH+JUbiFny9uRImJssz5PL9TNIjtg
VPqAzu9VCBzdo73aIfwGgnLhAH5Bpu5s4HHFvov9dB1uAInfRIkkkFP2ChQIQ8n4UIjx3HVhxFCk
z9cbZDCLQl5UJ0fhOc2WoO9AIfTcvYP2ACLEGTfoAMrUMQNHX3dJSS5JqagJi0d5+evuP9I9iEKX
Df+ANH5zKjs7IncV2Z5yAL4pBJOUbC2zLpSnkuCwC4jgrnjN15/tL6zsOJ3DBoEO2SXAUkTapVgI
x2gT2cyubb+q8HHNS0J6n+Pl9X0YMVgCAF9+1iItrEWIH5UQUyR2IKWinDuDny58FYBykBcO6UeZ
dPu3QTtJafSDFjadVnbLgGn3nvNXZha2XazcZTlYVs4aVb+PTdiKhkH/wZp/5rSJ/dEzo8VXpysE
gC7bIhbRnFRLxYALPQ5dYRRTEjB+bW9lb7iwIQ1saQcprP/h6DBUP8MpsNhAu5sGce5w7PgXCZR9
0RVnYLuXluGSz2yrm52wwPIouJFCId+0tSjsh8o7alqq/85cBMYFdRAnfDLdmXX8HXIGpbiEj9c8
J4c0vuXR8MGDSW37Tn7Kj5SmXYIZNQyGdyjC3505P76EJLim4lnvNlZnSr3fxtIYhSuZg44LmVLk
B35G5kMQEjUv8K6brH5PaaF21fULlJPH/7/8wPM9SHojeTtba+qcahkznASkjugUT/FovFAH5vKY
L6Ig9cRLt0QTUeH/d1KpIvELitlu6p0VIQMGnPvJP2x15e+LpDfnmPkLAFIH8dF5u8msd0YKB8SE
fKMr/dwJ8N55YI8ne7qUH3ab26TrRWd3J0fZfGD3wLWli+3XmqNE0054zMQLgCipGVTrfIFsUL9/
2Z4Qy/nx9rd38vYe1FRraOGp1fRVCmNytIXvfgmjQH637/hT0bx55J/uVxO7BDWo81OQrvI9mU/G
GKO8yg+6rijzxX/fbd2HtMWPEPhV8/CoibpUTEXVpjaPzk4elMdTCXNUA0Lb0rsxybeTf6I88XMO
cFW14/DICNXMEF2mzQ38+zFxzyBH5NaaSWcK/Btav/kEzNel9gjwIbGDzXtmmLEOwlC0DkA8nYl3
WpWBt63FPtoMvzIjvonw6Fs3SXSWy22eJPp0L70m7F7WvC4qqy7SoF7Q9kNan9s5PLF3dj+/hRvs
hXw0Y3yc4zBoPOKsOd0zBV7C059WVx7Nc0qFDd9groGwXzLLHwdA6LJLpzpj4Fra5Qu10qRNfoUL
mZuYMtFyR+yYkIWGqJ33QH3p26Hp7AhacMdKp0NNuJ7GoFauZoJ0X+pPyMk28mn1DdlqSVTy3Mtc
R483mZhE8JHQVG9nfZZ765RPzc9p600K0CnxwEdLpijNkXgNw7QGGmxUHOKHspsY9YB36ZRBFLSw
bCqwAiP7RstkzYwuNLclwjeHdYvst76ahlFO/8Ew8uYkJeW8JEyEoQvLAWIkAA7Y7+05lOLBdpg6
chNBqopqlOoNUWHJvPHHt4fZiOnYxdskIY0Vv73HfWE1Eda4yqMSRtAiANsVMARM6skPGc8NEKh2
l/jugTcMf3zkaN/VChAEL2bYzUp/C58oDgGRu86yZlbqEUWrnLIQEyxlQQGJMbUljcV+iwRwOD62
sqf9sFqeJqm5oPjBPCTGMpPy+ocrdvjM79zNsUsl1k8WSoE07mDPgZfMPxUOZWmCYBZHKsNsipTr
IGV9x5c3lgKGjMDbmeH3LWgJU1PBZKxcu923JtAu8i7+l3m2P6LYOD02vY8fzNGeZnGX6gzYRfz3
Xp4nPBLQS7nFFFBOGm6/6WUnm3abtKcGLOceV6eBjuj2pywjh8ucRbkQ57iO0/wT5RQektHjpFAB
kTP/Cm8GnjUUojfEHH3j7ftVfMqos0eg8qoCPOBDoJV8r45teSRzby9i6of2hg8Hq6hOtDPh7Jin
60ZbwKeb5OHDF4vqwMzwG7Su4AkDH0Rgbsh5EcUFPcBCK5LJa7eD7smwhYPdCR2lKLXwGZJhsfwP
BvX07XpImbVPIG9mwPPdckGmWB74HoA35G8bmf5R+KP52YEZY9kKbHST4pvjCwtIHhb8y4SFLBua
aiNhndS7BA5QoNd4XscCipr46CqUalqjUFuwCQhvR0rzB8DECfWbZDDTgB5SMYLyKBrEIhMScuT8
R4555Kb7inh3h8a4kyrwqEAXN1BtMmhO7B3DZtznDho5o5B0vM6uoLosEQW2SQBB8Vry05x2oYet
9jhl2cSmTk3nkVKmmW5gEmGpmcd8IEOWw+E2scF+afabXhkfsq/xdpQf0twswGeTsAdev6lGahCM
/BgSHFZGl/Xdr9S3aSodQtpcwAFCszQWidP8REJkBzbZGD/Zgrxr7P0mKEzD/RLfG9lKbNIp/ZJC
dSme+r4vioe9DZg/iA+4fWUSemyWzLkAcRwYdcV88Ig41OCP0rGdh95Y1+9H3rOP9xMUxygPnfU9
nuuQzsYMJr2iWPj8jWwKAOPuICvIkw2yNuSGBvaCqmPzjiQ+XNkWZY3vlwkes9tJZuAoDO/5O1Uc
lJd4/vkwyvh7H7ImedGN/Xwv5KbfAXTjxH9wa9LHPzxUJQR8Nw9dXbGMkUz0CdI87/4wtUd+gcsV
9ogyYMPvp3eMiQG7IGHkYfgDU98qCOmnI8l0oybNYLkTszbnmOvK50dHWrkumqGwglcdobkFWkph
pFI57YyVBiOqYBSUTmw+CEk4baBuhoywQMS+ZpddjQTYc7MG0RQEY0vRZy8MxvZgWbMLElxHvVY8
TAWuB5TgjRRuh0s55evUx+bYipXbqCo92UfMUTarMJfJ4Zz9kyZCCZrPbSDwlbuza3SLkvD4NfDo
R34S0xxBk2Gbpku+RdcQSodhhYEhxzS2mtRJlFdE1rPNZDVC28P6jYTtdfcrzu1QAWdELDXkGrDq
mS7D+VPm//WpqpXchoHpWXMlNan2KVsh5TWVkTpHdrl15YhoENfIC3jmzNVdAHU3u6IpLuCy3eTq
eIRP0iD+wTn3UcqJ+pezOC2Vy/uLpxr7UbN8U/DCn2nyi0ogTJFeBl9GbFdncxtbLAUXoZysmtzt
a/u2CwUx60S0CKlOoKoqT+WGmIbUU803nb71AVNAtkEIrwTNfDt5R22hLhy5E2Mvo0TV81fJftBe
NYdMeavfjiLUdr9zWa4ABAyjL2+KREcnYIn6lvHHl7SysBU15USOblXJMppLmvIevGOcReyU6qp/
LObhY3ucqH4BGo2G+0SHS6utoxucWbWzpYiu/UuxP+dTVYqtrqGScgNVII6FaHm4qgOfTrTnQ5FX
ZuZ2N54KQ8ldc8j/PPF0lHEeUIGWKn3/8v4AYVGxGqh0X55J0scgza3a5NtczR8YZhugdShV39CJ
+9HWdQbht+1ZR9/Y5OkhPx7LvaKlaFe71S82u00E3q97Mfy0kAZ7oO+yLxC0EwsjLf0qxkpll5I2
o3GQCHzCAKVBLRZWIQck9HjM/EoP3nr8QVmBU8kHbBg9M7c2SPDd00jzfAeTVlkTrK19ZtV0M5az
kvhT+HBHGByo00f5aD0Dy5bEE6U8of6xHUlTVQMZsH3nv8O2MWIedU/U6pAOzHnYDnle6nU04blH
JfqC41lNdHIfMCiZsCW3iZYz1vIaTJR9Q7Xf2Vn+91M1G1aKAL0Mnpf0jjdePYngOONwtokG3hrE
jLZ3yJwRaSx2AT8Fgts0XkZkrIL+Lqw+JNI32G++BEU2ChE79tq7vBe/Wev6SBvu4/sp8CGUn7nQ
K0iXXulTUzyLYaUIiV7fAf4UnKENHswteFidbFD5RhNUc9HXteV3ezxH0uMP+WmhJ/I8irpAiVt0
bW+iJAcranZr+XScjruAkJxw6CGH7e57EqzztJyrcFoy1s7UhMgN5v6W89lg09uaDPT+jEA5mfiz
5+C2sbxyv2TwRVPe2poWOITJ2EGNJWz7FSOrqGFEztnsE3uq/6FVA5yI/aSA12rJNoDE06M/Lm3N
2IW4WvXPaXstmfJSU37q9PnBYleT4K7V/Dx9+18Gt4JAHNnY8iBzUVBUkbYf5v6wa3p/90tQX4Qz
UcD6zWDKBybR51XoujZagt5D+MD6q2kujlD/sRQeIvZZ5myFIpQ28ReW3vnyQxl+anRjrlOLQJe8
fULFzhg2+lJr5Y+TlF8ND8ie/BkQRnchnc+D2LJ34CG82+aLLwyzESq54XtRe+sl1McWuKdFn6YH
0qyBy2PfNK8zgh004esrSl0SfZClqHilYJ26XZhy2eRCFFIQY140LT4RaKFDiklbNcHkEQN50xYJ
qLd8Y/H5TA8LowMOK12epYxFyUFvuP1Azhs64Wz5OTBt0sg94Fsfh7kTQQfhNJkEKTeYjnGSP6cN
OEwVL5tNgE/z4SEGZWCRq1NaYm15iMzeuwUe9ZxZVNuL4pxklTvfJfhDBD8oaBKs6z6tMT1510Et
gy8VWVBOTtjjL8giAKI27E9vm7H6thESn9xUMjp7Vy6J3pMz0qQr0EmaLZnKPGRblqAPk6K1oTXD
aeH/Cp8hLU89cjc5KcM2Ou1L6oSp3Ok4bXteRZzmSe5MlDjNXDYXWr47Mj1lSNSl0sM0tPybY2gC
X9reVHm/E5pDpFWw5JPSZMkDv0NkzqFZvw9MWzdEiI8+g+4iGoZue5Em4ZHQQXmbj2NV1ianyHNw
htedxcFMxlFGLoL2KlHAgTLr3RKOLi+MnjcUSQ2Gpk68/Alupz4nmoQdrLGpHN+p5dLLD2mqYR8w
YBTl3j0BdQziQ64c5FxOkWtob8e14UWYJsTg6oaqOK6kGOm9hU0jX7rrtp+qb4FhSvsxc73NUW3D
ZtOM8IMtEDSxHCdevv4qRtvYmHLo2iyp4G/X4jDTYCBHoLmFvB/uGtGlyCO3OYP74rmEA2sYpl1I
6OIvJefwutDxQiyHDFzr+QA0J0XK5sKh8fdH7vuwG3Q1DJoAS3AT0HCJ3aJHccXQWqdjHajfHQxO
3sUj7huduITjCkax7C3JkWBWGRz3Q3oscvi1MJISKihKOnX2+HjQQqKVys4NHdJ7a6YGgjZNFGT7
a5p2M2ITjqYjay7eRgwRRLBPQHEs+Exwb2f7mDL/1WPbeH+w82eSMco/Q21qFZ+CLzAlgXPix1U+
u6ii2UVo4e7FRSOZnAJHFRWnkb/9asK0GAWKMsCvZuCYgSBuTyk6EiHAwV2WVoTo09mtrlqQvJz1
1bczK7K1CzN9jLgtD53SgbGwloC4Sw1UMdkwppypObr6Clg62i7thDYiNfWaRhoXoBLuoxEb7zqJ
C5gUTRuLc/EH0e1Uz19i3DoBCLGcrYUAkFYKN7byZkdUK9Z4mJSv6fIwG7sO3lx8OEp+4OW9YgZu
dRr0tWLd5IA16PtHZl+yxPA7NWwvjYip/Qqi+tvVt2kjf2RF5TEPTUDuf3C2MD+Yn4qiq3t0elhp
OkwAAnrx0M7xYbux/pMuSwGGO05CvwdITY0er0EKjUVg3T4wO0WdT3TdX/ZuDcxdHlurn4GwuTjo
VI+ZQbS2oXvvQ1AgUPtxJfpwNlSWM1wGp/Jqgm8KI7/vxes5waKvJZJDyW9qFLi8lzdqB1giS5mj
8oNyLRZx9vW9/Faz/np2vXlTdaOV0AbFvDUJOiIO0oH7cOtL/7hfjHtSbxgTGjmtX4+zxdjo0+g1
QL9fDc28SENftTY9+zhGPFm2AWPppThQ9a8giGILLcYf7GUZJwTZBt38yuASxrbqexUsn6PUN99z
I73EAsYxyvVoH9mstGg8c8LnHYw/8Z7fKAO2kpKpCQlZxORfsGhsPmL/koOyIq9IH54/bnGfRkmG
wluSMYMq3sUsOO5ahNod4qaThwOQoPcylNyB4/zS5SVpKsWC8UT7diLIWvqq1yeR2DO3o7eic/2h
xhrT93XwxvX+LtlvcGtNqZICOn5PSJjiSdcpkBUBaa+yVvI3SQ3LbG7eBB/Tf0g45Y+0ccf8z+/B
mdHu9DjuMR8UAAz2cNKtnOQjltML5ZZWFBQZ0KlrThhDZz/h2XWT3idOtnno696C/db3c9idLvke
8RvMq5QSJrnFgaTn707WQztJLVH356Ro9OvcP9IKbHEWdUZVv+kMTD3LGCFrgCgHOJQtwdFFZupF
EuTXN/ZaJskd5NB0CdRwuP+niy64ObZjTwvyZ/Pjz51PNcrE3ILM+jNjs4H5XnLjGYcGaOglfRG/
3w0wrB6GI6mCoQTglVn8Ro0QqteIdz4yVAfcG7BoOyQ7vMOsUUAJBwZuTKyjGZdOnYQeHOq2c+5V
Rud/vN2mBrg1sazGAePs8E9Kr/LZEwfkFHK2w9JvJ4uD44hAYJvhdNSrBI1Ofhp828DeClqq+P1F
YLeF4RYfftXxGyxVnfX9TxkeoUTlfxY4uD8bZtiWxJNDNXCqJa7P0cdxDVtsOTkeLXa9/Duy82//
py365VA4OW9W607pEEQpuaG08ENEZVYxY+CC1MPDTOFxZ2B2WffqO6T3jjbEIGx0Dp6r69UqQNZu
gaKip3+2AYqk8tSIxaJIfB1JnEm7Wl+f5scExVjMZpR3jb8bH3wieoCkvHE9ofeNze3SdEFb7iqS
+O527Qi8F9Kb2aFPBh4J6eNM4ika6Fvy2IFXUuHdDLwovRf1o/xpTKAQSIa8UlbcXiCH5VHzyAlW
Pu/bKlhA9fZHI0LAQjc9OGAlTk1KxLO3aD4+suBou/wn3BZbgtvX/4VAqtqChc28tPhk3zPvM+Dj
jipIxE8/WED3p15QBPqokCg86GNK7BzYo2UNwbRY4Urb5goZwfeom8ElJqzQrvcZqyai6ogg0lAH
xvZ9qElHnwQsT0GC5q52caiSwDHRImLEYZqmJ/l6y/a4nAlHn3VlmIyfFB1D+GkZuv7F9AVwovOI
HPiR6qrSG9OuLdYA9SDH+7VkqYVprocki+6iclYMUnldrcl8FJAaKoaD95hCiMXsFP9BQfIeSvl3
OlDQeHqX/BeqfEvewpTCv+ZJTXHfcRKTDDN5/KfQO9lhJAh61BbYhD3fMZT4g28JtHy/aV2jRGGI
HRPkdjO+5EcKMWITbpHUSJRcwM60e3udw4DH/gd8thbBUAHs4OGhdXb1Wy9RTOLCHC6TO373ahxD
fME/yOLMYBLpE+eMs9w/tzF2A2sgQWNQ1l51v0IZrNKaX1IfH6emmo7pzmRl7sG0BYIcsyY/xYrC
02CluAJ5IwZCIEOUCiXukF23sIuUWF/C4uxjWAvfO280nP8NTbbzxNYbWb5E6BIOoTusskbug1Es
nOFgE5+qoF50cqshxaiZgkX3p5BvAmQWvjlVzouOE/9oHzdG7UIJbdeUvquWIQHTgFViSuTrH2Qy
IaNd1JD4DKVOP+gUrGtiKd8bnAmszUHu/erLdDQQh71+ZxJ/Q+FvbecR3MPSpdy1iF9KezCq+OhC
IQ1Dc/nb3w9mrD3pVq8qqo8sA73/Q7KSbgnRDmAbD5VoMtPCz23gbWNCF2OlMN5YV/Eypg5cA2I7
0dfRU+AbXHQPW0ZLQ05nTonfT1HtjzS+xIexuKdoAxkMoK0ejgZm+c3q6uPWhn/ejqoWssu8Hnmi
27A3NT1221+NiabT2bicxRvFDNIRqcCTf/jTGsucjEyOE3SWxaY4IBmmsU+XwcRN4w2mlGgcYUJF
1vZmWVSVqY9xGqoPo3pgyYbUoZEQkWqER7FvT4y+DFfL92MLkmYBtbKotkZqDmNFM0gWE8exsCRK
Nhsv8YCN/8mwqDw1mIE1mIYkcR9OKvdncaIpuD73eqzBwX7movlPyV+UfUHTFoPweu6RYtis20ze
xVqnuHUJ/PMHsDr2SPk4XJX0tsfIII+Qx9Mlm1bhvh2pMk61ElKHP1jOGwfq2+NsN+/36fPyoY2E
qe8PvOh4qysohjv6B2UpkXejNVqAhJXg6YtaIPzxXPdZFH1UwYCqUJGceVy8x44lZAnX12vOankz
YXaDkJvw2JpTaS/C129W2bb4o1QSQRYwxnl4DYc2ml4rvY2EsgWbV3ynLb/C9TNd50lfhScoPlpJ
IQQ+YJn69f5hmmbWI0iovEfPNqGExhuiLUQRMy+AUnNttKYfiDTmIoREI/sEVHShC0jyrQsmpcwl
Gjqf4WHFz4/GYm6IPubkk/BCEqEgubpFNHGiuTzsWFOM+/HgYb9fcuaYruI0XiQzyyAs9mbUIZ/u
vibX1nRpdjVjytM/as1KwHpjXwZgb/zvi2ZXmzH5Kna9WMQRx7lSWQj1mCay0HEN08ELF5Gf5LKM
swxBL6CqiWAvdlqKFU6c67BlxnUAQJLaqyd42yw3q7fcsxjPgKr+BuNuG6ho2gcbn9xosxp31xML
6XAZhyOXjOi1FffljytyVweGncjTK6Tf/VyKeML1Q8b7zKqwhziFrm03uGpzQRHN4KNyQ7bwoDQx
eFLT28O/uBlHuvUadGn6WukSyduy/f8feMNKea/otN2VUB463clxSTpcNmSDqK8yanmHhqpD054x
ocf1bay+4nLrYhv+3SQjxCMztPCa2+8ePJtMUuKDljiB7m7Gt7e/ANgksi5uak83uDKOonugojnT
eBpLn20eWvrRmKrhWJgTHaF1Q9tUJHBhiszDl1A6MGS/+UB8v+xzxl9iAJuVZhUEX2WPe7G906qK
o7losxlRUoOLkFiBVdKCWXWWcc9edFc652ldkIacelq0n+lQ7765p9gSQH/XGtS8PggkEUfEYKQ9
Eth1nvqEZhDxwxL18voXjUagYABmThDVOdG4f0vA8+UjzxCmlpwlhNvSSErXzDfWhNIw1mqNgD43
MG3Bk0DUy+7QJg83JX/qLoyaI/AEumqLSZ2QQ4i1XcMIDZO4gJyU4ndiUjzfdiuTubRZVzJJb/2X
qGmdREt0H3+y3LiWhrCcs/QsL1eTxEK8SPNKxO7Y+OsvxgDyTgwUjjhWi9TOM467SSKezvBYv/Lm
IemqTjBxmkV0WtKjyh+wZswzdcK+wf0159HgEgFCscXDZqZAIDVkTNTLHcN0ydNDK2BSu/mlNSjG
lInq6/6F+BJZIeU8l2cNcqvRgE455SxuR4EF2Tvn/6UKp9KWXcTkRypsj7bSRwmcszWAPMezgYH0
GI8yAADHlt6fVc3ts4I1r8pQkcvCbAKyfvEF0t4dMiJCJYguKXAlWi/kOHBQqjwG6pXtNiOKPqcV
NrV34v2aijjI6+7zdE1bNGaD7QIr13O3a7IoqGEUr5fORh7yNacuYGBeMNTZqImcZocv6Lb01LPa
aZ7PC1swYkLO6efX9CB+fYUqJs6tW1RCQcXOuvzl6YjwOit6z9VGnAtQlciR0LhV5bsYW2Licde+
thyyP9y7YDcqlKU9iBLkDINWX79Zrvkg2PJE6TpZ9sr2gLIWG8FH+UEHWJWN7LqIav/6XbYozDxT
g4e1pVaRO8Q/qyOnX3bKcBABsHuEzonknt4DgrldTW8cNSIMReUELQ21AYCtDIu+APsEV6Ns9h+v
r9lhTnsGqsAodhZ4T8hq0lYwWLeRX/4cp05xWDfAuEFcylIG8euAFZAiDqzXwXkSyFAMYQyMPThE
7EjnwDLE6ssmBCLxSlf3PW2JsjMGjBwpkv/+mpac2E51uRQ+FC78x0aSHSzDFGSkkzSIYVIEmyaT
spv9nYMvN4SDtFvEGrdAA8o/iheWdByGxTuFKXVzn8nCIq+hQTsuxAEgk0EQ3pztHrVZKXh/6fDg
NppzVnVwW4ZQtGtONWV548cST24KDTOdksT/pHHOFOhL73CdGB0gMYeixswWnps7ijsEt0rudHe7
MbmVNiBCWDySZLCIIpln2sNbB57+6GgEDAFwxEz6tVkx6EKYwDah1Bv5zP2rkb9/6U91CXbTF66m
D6TtLCtkPBchtl0zX8ZZ9lNA7wDUZyUok6q7wLQVU3aMSZEhqxGlk+CJXA3P7gOX4mfCKkL5SoEF
fnWYPBnYwFpV1SZ6ys88H04aNpZZbLY0q7gl+MQ8pn2ZPiKNOsYtuuqmzZik3ZUHkYVn6yh2My+c
1VewF1ATbROXH9VxDvCuvLQUFSHFWJwwLP1a84S42vQoBzDio3nBXh7YCXZuPan0G1159IsHL8fY
Jr/WJLG5IPrkaO0O6Y+9xQooA/04zhT7b9Seu0GgLqX0expj4Dpd64G5iQAvcW04Fv+0TBMpi/N7
a6CLTZcdlBrXyxTjh83JUjL4MS1UE+Y5Yl/SQ/l3j7ABkyYVIyHURLKaGvjOBvMNNN20eQu9z0L8
ck5mchZ9On5qpVYi1zHo24JCmobBCy4XtIQzGWqbis/RzsvFVuk6y8RvdbotOOYkCMpDMsLRyFbc
psIoiSWGiDe5JZvt9AZFHoQ8EpHVTzfYWyak1IIBY6Zp+3p5jqxpH4LC0PQfIAZevcGwns0xEHSc
3eHx4YgiUzZAJuspUVT1MQFbEgWamusAe9H8pAWO15WuAGmtccAWQFleKFm9czk2GqbJvu6TV7Gh
QJ74Vnd8044c5P0i3CXVxz8Gej1umpQ+K9+vkvqe0iqA7vXdZV7VLwFeSM0rn3YvLiNHVjxKk0fk
B6c4YkMT1Ka0nDP8Uw2irwZ09rJtZnorCEdgkyWuUm/0nxZLL6RxTI74rrIgwwLM37IGm5jeXH7t
fQ0VEbtH+9UwghbPKKlEpCWW8FrBP/sUibv88gb2E+u7CRANe7QLMy80uHjgzIrp6Go5TTrzdXnR
K5ZhvuWiAap1/hlFaLBZk2x/xdR9Onm0lGOWZUB0PCCrTNAAfR6ScrXI2zQVFGstpkxWbdMdD7Jq
wRaRRMyymtksNEYGgxteqMI1kPdSYbVvN/DHyYxRjld/Izzb7hmDfzYo1gHNBWwP85LQufa7d0EH
VwmGx80Idn1biNptvNToUMpdlR3byni9nqbvMJu14E+Z6CIoT5MZn4OOBvxUMovudHbuvXAtIb6B
qfhGvBP5loqSJmOBzkZiW9bQ0ZOVWxowHP6si/3k+UGCcMwwKsq41VvOMCoC3OajR1I+MfZEj3Sy
5M3+IYNlZHC2rt+LvP8ntK7OHLjipzcVqvwMMDdW0G9NX1Zwx90uhkQAUrfwsOA/EDJArslkUSBp
1NxTS3hA9SpTj9TL+AofU7+MM5XK1Mr2nvRs6ih3g5H3Vf9vZ8UuMqUYxEEaT7Sy6AvTaUHqaAky
IF1Jixrx5Vwq3DAczKjIW58COla3B/nnG/qwy1Q25uUnhycS8LWytcvuDLNH7d2fcKs5TKEZfLxa
iqNCe6VvqaG2066W4ahLZJ4RONWU/MhOweZS0Pvo/to6Xz41Ki3rIV0DfS5ybIzMCG356qCnQaoL
QM/p4l1n43hMPvWvJh2U0+JeyhgdejQXBD9IHNiCFWLPiTl2TA7mvT2ql9YB0UQqRvycGkY5eA0a
Y+wPIlu0hekM8TegweAx1UTiFlZBosXFNuv2sOuiB4hU7QvlmBYX8mWQist9SlVYmiIawrU8JHk7
A0FHEi99bFxMYt/cIVuussEBlC9hlkRPYfNcB8q4uH9XANcsvJAp3f0cnLoaSrOxsPu57dhmhT3k
+KQ2irkpA56LVDVkLLg9k3Tc601W+cUnqx7Yd8W//6hbXD5uKQqeQPUqMdeQ69XvfbJ0QvaTU9+Q
2G3k2JBU4lb5S16iqoOteoxMIUhMOBLXUhSlyWD3OapssACzHsW0I15o0brQSPVgVXNYlS8gTpGP
7qGSReUXAj+zTUqUbvQMX8q9Gt3+ameCe1OpFBz5ot4ISfDhLnrzmKVD0Wz+leGjhJnANVRSOBpW
MV/yAmPFtEVPTk+OpI6awQUunflHFgPkKfHVbPS0/mC3ZBk59dxfX/69hK8qyBjYuFQjafJ+Zym6
RQ+TrWkiDNX6JTHyzcTAOkWT3hw3YIPqR97ZXl33+YbqdCBAFlOOaqRlaTJJy+4M468ua15rkd6o
JPnhwRWEpSI31oPZUZx9bf8xafk0b6xC3cLltU5Z4/2ZUByDEWHhgGnRUCQ0cD05W1Kvl7x+9fx1
OdERlq1QQIqJCCGozvlKQ5VKmo68QEW4NbBUOkOH0tclyQ/PADU8F3FklFXq8rDeI8kbKV3lsC50
Wa8w4lGO5b4wlfPjt8fP4V854ksh+oj2I2QkOSD88xaemqyLNaJ0uB4xccg1094HKjTvAQK0zEZw
FcfJ9FmI0lCeBfSaN6kEx3HW5qhk+NvM+yDJUaKixTHbpOCSyE6kzqnp7ii4TDDxe9HOxlBnd6Bo
r25z73gfdk0yx6gVZsvJy43Kmzx/kzS0UVlcedSDRhPO/e7JAxebCU+CG27daaW9cqCgEPlyLRXW
ZT7Wj29pk76tbIrON2pgiY0mxCVP6PMJuqMqsJBP8PhTvsIogqW5g1+jSG1qnr7jitMw6SkzHS24
2OJ3DuoMFMB4xAj4UDs7+nejF8Xfz7azK5KT8QkGwOJ0nputQkKiGN27DnvMIkzqtUIiT6PT1xx/
6u30FmLJa19DtDVYxFgIKGD8K+3QFZN7LxGyMuvgNoWGwChxxBL6jLv3nTcmctWX57+MDBkGUd9p
lZtAAdG/fqsJQ9OXGDB2cwyCDJ4JzEE1CV5dV7zfbL+HfQxyoUMktZvW2nkOskY134y+waNVo1q+
QB+Pa51T3H0ILbR4mSPdP/UNCgqZYugkB6USAX7muf2h5A3rztEJ0gzmZtI/nuUujSt4c09mqhpa
/+DCMTOwJBVIISwiCDhkmZW8YbuhpSXhNXV+T1qqDzHZy5zd01kP84c0eWevJQ4MC0eFlO2qXQW1
sec0Hp091RN00aPT6OofoO+ykVjtu6O+4UT9Y7TN6OJ2q9O8jLIEjJLvJ7DRhTsahESUskcvS4GC
l1vLPF0glYim9ljahJrHydsmGvUYCCwNt7pMaBU+5M9gu+IkmVBBvh+PUzNTDlSNbhmOYgyx9QfF
2LUw6qooXTEjqY4iU6aewgJQ1dKBdKYYuughQdd8uHhmCtmZWnPupaMASsWUAsbLXiHB3+gGDr6O
lEeS0WRhntuPy7CNR+bHI0SdXXjtBQqOnt7el9XH7EKuqrOUmeQQo8GvrPUbE8aIVvHxzmXLE8YH
EQ5Wy7mIN6XzFC1AYG5gdm/lmvaympUxv0YezBLA7n5b/fDBeq18p7ggtXXEBfBtS5+7M+G+3J4n
J+3czdhk5HPPnIt8RrBznspAxfAXR8q0O33jTPUNUlbkLbvEURTavPGXwYuabyd3VQRCZ4P0apCU
ylS8HXXOiZkrCVIfFd6kaPxgq/iN/0FQTJiLCgnIbSDQdK0e69XE/2h34qlcgslg8Z/EbkqTNne0
hHhD+sSFiH2Linz00+a6WR/AGFCVASAb6KViGLTEVaUtcXwYpvlLlqjRcMq6x45twK3fUti3e9zw
QuxlqDzN4Q6Iuq/mYU/hhw2BXUVt/fp+8VvFHwd+mFaTT5oy3aCc3EwqzlVNCCbJRqOIq6eijECr
NjDbnDNS470N//xsVY5aBAolmV8//UC9/jrVJc+nm9w9tK9+ZsnQMtwE6tRRdvSqsBCROHRxK+XM
Hacwp5NwcXrVgNjJZrkwjkeCDvOF3otPv6J0xBBFRRqn5IC3F+q4JHGUmzfWj7wCaGY++BtWcG9O
oC4R6JQQ0R/qeWO/g6xEzxU75PEiQlfh+655moUsJdtFeO3c66uSM79M2Esky4l4iwgvVLuRUbQh
0vLm6bMcVEJ3AvtwYlLzYj4ceWjBPa9Ys4kNUBKcJE4I926/AwQ30LX1+3xvbb0C8qawM/3sneCH
qv9xyE/ve49woQs5T50zcKNUuVeWO6TiiXqpdwEj9M26Fp6T3KnxlrJQyn7L2EvkDYqeEfvYtiVB
ueBbCNT04z2nBNuS7g6rsqF57FDn1L01/hvAOwGNoeNDaDoWN8sji2Go48qLnovs2Kjf0f+Dx6AW
Tmk4XTZeXOBdmy0+uYYwF25LXqz2X1SIcX3dh8Xjgj+6c+owToDuV9Iui4mhiqUuHQF6InGjPODq
8Php5YkDB4uknMsNUDUJDd0GOr+y4n02Qylzx2M2f+dsdwkbfizKxP01TyqpnuFQ3DR1ZabJrIIs
7H0f3dUcCY+75bI7j5eyOVz2Ge7DQsZNOgwv9jA9U+zGnphLoljyqrs6x1iWn8jS8xX7Mwfkt02m
ltw2nkw0LODgU+ACYHe1ZOAv25QQnKfdDrss9IE3430uHbVikoVFWQJ9jtVgg8zckJ50+OrOCeHW
XBQeEczTT4xIWbNPpPJY56maps938cyS5daEpdk2K/oFZJ6YhtMfl9Uq0VQ+CoMgVFdHwc4dTQYp
vErsOi1pPwc7Cj7sRPc00Y1B4X2E9aXSqdda+6IPU3kyR7OOkwX7n3FmMvaT7yz086dZyo1LTnRy
YYHr2z+njmF33dKtoijXuXX/xRmNjkLLNWHkZzefpnMdR64rYlQevMqeZDqIdF+Wz7gm/NSFa1sz
9BDrdaz3qsSZtXxpNuJucRc4z17Wbm9LaIW/94+ZU4id4MCr768Nj0lCydRHnUiDiomLknK6NGYJ
x/trZP5jAioFFP/bEKIwhUELEFimMDW0zNPZq5F6SCnLqth84gGrc6FiZGsx7CIiNheJDY/tucu0
gH5vGzf+CV/NyDmd7bp3P0Udb6oxfQGYgDOgaLAmHCQVa+YqSgaC4XphoTN3JD53w+mdAOr4kv4Y
N++skltOu40oEZh+0HpM+r3jOgvwv7ULBS1ABkjFVdYAbJuXu6JLBuPhlhMx9loralqJipvKUjwy
dW6Ag+19N0PP36CSodm0RD9LFz9svRtZpqLqXciTQiOyawgMhBPEqmGpfrbo4fr2E+DKfLaFYy/B
LEZ+eFjlFNKS85Ht/VElkYnPASKGf03nSSBSBND9YroVrC+zei1YbPbyulDlEP7Z2UJ6fkzexUxK
97y9QeTNsCoZGjPCwjCl/su7TF3G5SJbMVa9K5jT/RfuWlcMIUDIgONjoWBHLams2MJsxvkVnbMk
wKix0e4vDZYXjdNfgdYYifvEHRQ5+k/AL9xuy4/Mpuwnewd4Ft7n4s4BNNbpfoDnJ/R5ULBfmYeZ
jqfRhdNNw71dXK30JXm64WYWKFokt6yPQa8OYvDdzNbr3G4/j4ya0xfFELVmq66KEwNjRkrDPx1s
MRKi+1DC21y+xdCYUH8w9YHAFAYY6AWa0gktEM42oIXwqaR5kdczYGYUIXfsCbHBCuFM6QE3FwWp
j0GjVUW1SVbWB4tlUkzGX2EFfG8lpQ33fsTscdxXXpgfs+LYFmi9vbotc5gMjvmHDucdExO19YuO
mk1BKoLaZgt/Pgh9iDrHOkDDAgArG0Odofzo7byagG50A2sQf36Mu0TUrZchSzGznXWcltqjAuJS
HbgyoB98Sg+AN7LlJzvTQ43ARAN4Xe9JH3gDXcyqBZNXGtwOSXhah/0ONh7rpOi3o1cuk3WP+py5
o81SJ4Muq7LE7A+VOkuBZ2c9dRtV1/0F9qQjU+uYEhFyE2ydUZohTuWyhkXipSsWb6h2oCyS6Ntt
AGYouA02Z76k/do3BPzYSd4zjIPG7jnjpP2OSMcAHVR+hc7gBKCYiEbEXQO10w3IH00TPHWXk8hj
s2O7UwLIaE4G1IrOSkETCPjePGMWpR4Oa24lUlQcZfpeZxK96uWb7ZTEVDV1CCNqxKW2BrgMl4qr
zTljxjU7E/PKd+Ftt8ms+gsoRXxK4lX2bD5qHCJw+rFGWjJFe3ffihh82HZwfo/1CNteOwH9XoeM
Txnjgx3MWI6Jrl1Cw/dlyPFTAp5tYNWsiXRG0v7aTd9WF+wDWdfYcZMRJLbw60OuQ07HP9kS+jpx
WoZumXJqnSkTdeDGUFPx/NsgSKk9BLCqvtNwACFS3sZArfZ+gwm6aINWv8RI2hcGunD2Nmxa5xlJ
28j5LHXOqYat1c3aJ5AXN/veEE1aBoLYuFfmVBREVEmsGD5FzrKNHAXF+C9fgd1J95kO0+/J3mQr
nTqYk1cc12lnP1WK9AbkkZBzYtOFPF1R20X97q7VpgnUPFqbfVd84fcsjny5FCVjVYyeYUf3zf5x
NChELMbANuFCglio6SI/jONx3frbglxWbBei5VFizuWMYW1m2bVPwe0wYAReaRwS25ulNRkVL7qe
/lyS8WCzusl6GoQ4+5y3ZFIN4beIjo5KNiY4Ce164vHx9FAMpM8d3GuOadC1nk+0IXYScHO4yFoG
1CxAUS2oRNgoyP6VhXp7WowD2h1fPMr+iZMoFrWuBvun6cBARktO49uUuKGDULRSInBlni4RpCNl
8lcAWATKBa1vUso+eZNW3azcsuM2a2y2nIc9uVZMRBcKqq5aLkdfuPuDtWixZFngXmCa3tptpPAX
f5Tl1UhM9SXiG9bkTpH2c4xVVYQE0cBDrpEmswEzvCg/QPjUoF9wsPjpfIeGnxFdde3jRJtWL/xG
ZnKABTc+6iddAitOd7R3JV3uCjUXMdy+DD1blmIjbuhnvkBrd4ckJWM2mVw69O7a82Vcct/k+gRb
QCGevRBfiwnhyooBJuiSYBAclD7qy1HJBlSwLY4k63OrvBhqQQATX95LW6KLfTrBJEC6tIU9SJAf
Z+s1IRenTZff+vqFkj9G05XCMiYCvg7saV+i/8qCdH/75TMferZd/K92zJT/co/yvLP14fG8y2qg
opnnfywpA3TbWEGq1dW6cDNphV6kCAnxS5XZnLbUp0HfJXF5LANXGqla5kjuvmXkffTi/mhb26Xx
ex5iW0w4uZjVkduW0aTRrI2FnLGl/ypEJrZusv4/1WmsYA0B7E9uq/d11p0OMB+aTPFYawmjFE5D
vFcJMJzR+RGQFETTUsnk8T3VKXUlP0bBpYrQ6u/DmJ55ElQtLXdFNv5qJmh/WuOV2tEyYpmLLC4+
cfzjP3e6nze8ekJPlszmH4a7uEefk06Q6errEKK+8LltfUp25iZZu4tmkTgSGxaxFBJ2rqUw9kGN
8ii+YWlRJxtSSyr0dZSQuv9FLQPBc/eRnQuCldJ03HRat5CqfALMIN8QUrxgiaBkGUqzoeMER82Z
2qK5osqWLXJvtpv9ghkIo+kXnw9cPyAVJlxmy7L6siFZcj8YmZ4AKWl1Lz1TnUndgH+M78fjSD/S
CddZe7ooBPSxiTrtNoGoPWva4V0QSSeU4npsfyPuCjiGavokPCB6ZjjCI4mg20EohxMCFveW7ag5
kLx05NKqGBSiikK3MyYJHeNgex08dg91+tRjLg1m13KqsWeXy6WeCy81H73z89EAxBxt3QEtywME
48aF67eJ/a2ihVX6KSJsNXw8Fq6hEFdi/RZKxhuymbaElE6KnnDyvNVG4xDTZWXRSWFqT3vGWEkY
6b6ywl7HxUtXy4z9bWJMKMQUflL2/2cOyCp5V8GUoCRLsFL0Od0qAHFPO51pmQcsrisNUyNj0FMk
jDTfcxdrBVYaD7yQw0Oi9opD1h4jnbICiqqgs5rGK/KF0/sDkPWOzb4XpqHbBodMmDNTbQu1R+ej
Kvqq5jiQIzcpjcVZ2otuFD26Av8iiVx3KAD9/ATHeKnLMBDBk9rS0KeCdZf3uS1rZ4LAUxb5z3xU
FqwzCmOLGH9XPAxPawkJrXOYBLlVkpZPPbwrbjAYIUDrdaMbIGlBVfib4+sU0a7ZTdaGx0uKGUiw
KIpwWEf546RGAz3jVu4rCp/zzAET+QtkyHhRQCgkv0h4e+sPxjoKsHod+hCLb5oQ3pTi49AWqyBH
ssxiutb/0+xkGcJ4vJLQwu6uDM/zTCUnj/xxRSE8tddMvYK4MxyeY1y1OKPvtiZ7Ybbiy4P/w+3Z
BahMuSz8NqcCjtNiiqZtZxbhHtpyvZPr3GwqM8tB673oisOB5LMcc2w/wBfSGGMuaj1W6fLKZ1OR
Z0o/IwEg1gjHYa/B/NDoSSeCHKD4zQudUaiTJeX54P48p7+tuCq/29UW/g3pPWdz/WLyAsOwUAYx
lIhDHMDSWFKTr7Hwh7zhijO5gpRExmQJIhF8OuB7qOPiS7WjqipRZyfd4S/OPQi86aBTCiQ+ycPI
qOYe7vB4OLzB1sz2C3uywPY624Ks+XPddA7L+oZdBhRQQb+aFJH/uRuW86rVJakMwjiEkngmhHpp
DI76qacvzBbBjx2MEmIg0+xIXghxt5w7zW+rJakOQ5JvuiohhjghVabIRKf8vKu3U/IiepOuLYLj
WHxccAuhZgPC29l1iNVqv9wl0D35v/atLMSQT6Z+qpqh6dSxeiQOFg2xFMbWtq6uWmLGK2ikYnf3
FPDWEBYC061TAE90a4U/Ijccgk3fDpVKx+29S7qO6VO/g8CK45u2Hb8HgFIDRn5Veb+7tDrgOGr2
14LShsdgu7N4FiVLmjcCTugZUwt9Gb4bx1504BHjtjLqfdHOUdQGQhEAwnUZa1mD4+q8LJr19+FE
y3zABrLQBO8aFubg9dxud4gA2tNF2kI1iS7QpiAnxfxFQvu/RSGlmiJanki6FSkYAKpXBAQHYLra
gdlZxJKBWb72fzPIhqPfDeWWBHV4kSLWAGy+LcPZtG2UIJEavQQnwroagFeZMkMVRpDqqzCE46KU
EQP4Cv7npQTa8rqVgEFutsRxlSiiXDI5hUloPyQo9JXqe083hh2iUqUcoKwWEZJM5g6bj7hcKscP
2dOMVEuQQO+AGKWBz8Znxx3dFL9y9fx06lCbh3GjaUye7YD4FLk5Y0DtTo8kLXtfjuV/8uA3HOyH
F4hGNv0sOORekU3U4tS9ek/Zg9ikBoLX2tIP+ogkMMugc+q14k8zGUdeKY+Qmv/FNHcuKv6uHy4q
obMxKpXiz5H5MVrVXz4jtByvcFx64HEvXJnHKfaiXJdejjhLc0i+Hx2ETzrH6Jncy01Y2xO1vAql
xLcIWIZhCVfSaahlK5VBBsU59VRaZ5zlZyZnsaxbua85MiEOdbsdBk5mIrE97DtrzK7Pe3LP8chu
JTwH1qmE37oqwj1LY3J+gUAE4A9bXczfRFdcuUcWf2Uq1DWmOksGHW8CeO8YfVnfuJMJITPJdpCK
1WuEn1SRUK9gMd8+RB8cXAwm4Pv2AbgVg7AbFiLWNYT2kyyIncS+mqfjxSWgK/u8isFVEr6uT6gE
Z7h+L8YgLfpQWRpGnteIFogxZYt/lgsG4oVC1dMbtBsRJBURUh1FUU+SlyrAhXPaWlxBEZwFZh+E
rYg9HhMx6km+VCu9MQ/ueY/fLIOd+MQuTlCuAi/ldsdsvF3QMR+Gcxy79BkSnXtUXjDDYi5Wn956
kSuavUS720NDwHrVPlB5KuaS7usxhv7oXguEQHBDLjr+FKBZeO1AIplSu1L7L6vRENk6qewYRvSo
TCZbxkc2n6eInCHpeIo7mze9Ig1qrnuydjxDl02qwMn1lD+Y7qyW0hJWkK5n1WqMEsL4hNdI0jUo
jNjDz9fOERmTAdLWdV7cP5DdI7fHxA85YsoBqysj+ebXzVK08SKMoTWeMGOAR/bqw8bScqGaIkZO
IQvEuOtIPsDdx17hnVlQQyzQODbnmyCHNhwwTOvfmLj9DWzNVQcg2NzNk6DS+vAcpmVwsGZqrYJx
tW26be0TkMkaccBEE7O8wj9U/74yMwR0tRCZijD90USTaLGCNKCjLNPqf8CMYuBDyILabq80rRCq
ALafnyasOBPBjww3JBMkPTT6n10PAhQgvwZ7EDfJPPWd/vhm7zxzj0DWKTtYnmxr/EvXdyZdn9BD
K7GIdy+UBd42vnrKZBKJXpT3QLoaTw9+Ob921EwZr43cv8bGTwhglbaA57LRKQ6smmCvJ/5YdQHb
ZayBcBCKf9N1uthLZrpUk3kQXCXdRGdyJHLDo0wuQURNpMJyMu0z+U92MdKDj7u8d7cVuD6If00f
OWvw4XIFkv1V29YRkVbAKPkJDnJXobF+zDfsSLoNEQtWzVcxA4b1EH36eK36GEhEWClpeKBhbR3T
TUmg3ek5LJPOtTYWIRWPjM4pabyOyzpUoMEzLDcNBVPeeiz17dByZQUulo1lI8H1sdfaajGzUQKV
oGcXeqFB/fEKFeMGDAMckv9GIhgU4BdtzkbKOxNJkarPhHSYgxz/miu2bJMmm+lnUztY0YKmIcbr
AMN43F7f8+GLfGjQugSREJBm5ajkrwYnpewF/m4Axpf549rFF+10np0J0cvT2ikNKjyujN1sQx/q
8b1ArqCGOiQOzPP2RD71gAJuoWkDPeWC57lqyvkekiCJ/Ydxu/ttxNxCNO3bQx0WSzKIZgKWYfES
zND3Dy5BYWl7Vk5N+3ZNeKISPvPQtrmkCbW5QQ+PFvmSndGBsCMsyRTsktFdhpyiamo0FC8rFMgV
FSdYfDMLZANbbYlWLPCrKx6leBSNGH344G3AHTXpG3joGlynmYbid5JN2HDQGq1QtiE8vb3XhB9F
N70CS1qi8Kk/Vj6wwgrGELnGrim6H6dx1rdg4X4YGwfylPnhIr9LM8C0z/LnB7BGl/9+fZd0/Oys
qd6YpnQVJ/7Vw152FQXXbct8GVHbvxYyFIzFI3N5TU+Rt14dmVuRqkC4wf5ndsED6n8qOLLZyMDm
a4tnFsuqRMQ5oNbNyNdrnycUwSHmOHSxPLEvrnZexkd21WN33b2FkCrLg+/mNgifMZCpecXwxWY5
BBuYCy35dawAV3BJEj0UWUbZld0UJx5v547aCunDSwty8Pm4BaoeZ8aRInI2gjB0lpY0yfe7IgmS
vrPEuxSDV8pFMUx9fDfVqcvW7EVoJzM4GmfTExKi/BePelCdtqYby3Z33n4YTJMZqj+D1x4L6H+J
8LsqD+Ceo7Cyf0BLjXVTQ4Z0Yqc2VUeLX2xHY4Jua+lY7mwIGI/rFEhBYnPWMl0HdfBEfdK2fq8l
FBOTqCxeQnC8YAGYnCPiO7q/nubScu3Pehq6Y5O2i51qBRSlSRZ9+WBezmMgqZgUjsZ0DbHHesyZ
xflzN4tnqpLNLfmob3P5QDlnZT8wTOO7//iI6sUpI58Pg6DvU17gAww6SrccNdMWXrSWkX4jYAia
Vfb0rLfOt+MaLv1k4fSh8VkevQnLsWuoOeEywu5jgu6Iz8NmrsJF0odsFKSOyoyNK4YbHuuHLD57
1BKD8cpRGBCNoNvUSr+X5kLQDifCmUk/BqkQAPT5UL+Wgg6wjaIiy186Tu7xQKPNXDvLkcU9XIAH
TNaFq6sk0fiOIhfsDVI/c5wprg9TTsSHNaFqbx9iUC9O7yTf5DvweTFEjoSQMMR1m4WgveOA168a
/kMxFCNnFf+lcQj5C/PFgQ3k3m7OHKXwbebmLcyiw3ol/gSQOUmVXsBY+j8lVLTkLpiIgo87SNMc
MO9vh9irtlqpcoaAmJaUX1YdOf9wer1WSN/WsnMC6TfW8e2r8bIyvdzCg6feFuspIKmwVs5plPPd
w0sX6Dc/1/lX7RRXlVdp7iAMSJBjxXFquRBR4E0zj4obqJ+oQx4nDR2iB7c3kdbvxwwCHvXoGaOF
f/auxOCNp5J/E4jpsEMNago3njXoTYQ3BSBHu5ShAzM9JCyMfZyOboAQkek//8mlSE/EJt16uiZV
1sPcPR5RyK1y3NS+2/rbKCYU7KsUE916gVw0SHo8+nsmp1B3V5GanIBQWnFxlU10s3uumnHIbHbD
KWjk0Uhbk6n03uDhx8C171zOVQhJMsupP/g1CmKSV1GwOpUNxExTrBIF736zyp2Gfcgd2Z4jBOjU
0MXXjrGkUu/9M+pLz/Mt22u4nDuhplvlnrc0NkXY6gNDFpoM62+vZAjyj3bgUBH2m8hn4DhGcdtC
BCWDPMCyQgw1yv499jpO+N+f8tzYTKwtj3A6a64deQe9m+ke0p07femRBBKsQqSOY2I5X/v4Hd6+
RXWuLZkcXZX3jBMO40BDumGIbP79/aAfFejQF7w5GLiqTIv+BcNS2ZguKifOa2z7JhRxgAigSmRY
ZNOGLPRAJVuZxlvTG8Sw0qfkBAPXUN3kjfs+M5QFTZiTY4/NBG1/V0YSfx2p4khOPZfhQUWWuXFm
fIJwy5MSPh68X6ctg2PIjukMcVzYh7n4/idIx+dqTt6cP7m5cLtgaBnrrUxfJigoyW/NPTXMyD4/
hCudcyoQPVGyFv+ctNXSG1nQSUj1uRLOQG/RNHFovp2ZF/QY7t2NH3dBCiRqM6600EKSYPXhC0L4
oPo7p0Sg3OFIKecGz2JhtMtyyc4c3m1qBjLJPxe3sTIVvqrhQnx+U3NMGo90nZW5nh+GBVOV3KUX
reGQd4Wm6fcun2zIyBHVqfK9YmFEv6dcpa4eKd7vM+vZyVLaS/yQ/Y24XoWepDh4lChuO8X2oSEi
/GhoG4tDaWMH8IyXZwaEaKzcZ+wJl6QfF1979FrqmDHkZK+JINiBmMmMh8dL6fOaTxQa2Pu1ALRf
yU/H+96M9BFxiFCkRnMyeu6u93hddswLQrQUJDRXanvIuOGJuLfqinGnURRRM2wDs2VD+nV0Yr1z
MoGxXsk2l5TqRGC8/6tE+aQg3nnIeo9CGWWxXrRhhrJKSDl8NiHQrStAHQDoxxACvUIA9k4EeXyi
CE01P8420AqEVSyBTNkDiRmyRPPC825KjpHmoqxEp6sPqiskMBz1V6dHSVEbPdLtKURqMHX1LMwb
5qwkMUhSahEw/9zee32Id+2onixOQn03YRuh9L1d+gLqbo3jREyzMIaZflF77isn6Z4qB/LQRRs+
1awChaOeJgy4xPrvIvZcTAdI3NmBLofvYhHNqqo0/D1Smk01vf0tOvVeNqmOa/Ctae+BZs2gZKsQ
zKepJiJzgPtmNvoutBhUFm8WiVVxMSelGyyZuUN10wTGQKr34AzN0sXE7VmnaCT0ZRcvIzvSJIUB
oEK1e8ua+2BG0FkTBONeOhieVVL4yITc57s7u/xGshBMv8hjyR/d+dPMjGuAXyIMa/34TfY0xPIz
QBtZ7q9DlaJKur4pTYQMD8eSuS3bbhdpPMApKZb1QQz8NA6DKcmx/19FocDa57TgXHUC7YCIucgv
lyL514jv1aYCSIwklOkXwJqqXcF6LXYDGYYGt7jgtv9tMWRolpZhdL5XfKsY8hZSVJ0VupmlWcGx
FiA0OVmT18F4GH22dwt1NF6qOI7cCuyi2YHbmhiLBNbY2W5WSlGGgs4W4TV3R+H83+j48bqGHEoN
UjwgsYElLXD5oTCQ7uGKZkTgtKT1LZqYZU5807RQype4j0+q3KbQDWHGpJH8gqvu+QLAWwF+4kvr
OGk7lZgoVibCDyelzJu/rY/WLQucyZ//mYOQ+gTfu35hgMKwzRPo7ZDGajqDDGyVNxDLcCbNnvjL
jTGeCt25bNG6lmlXJIFU576BUwYRdz5yJvW83Ot1K7YLOD0TQxPp9EbZzgRRyqmtggL4XXxFA62m
tLuCQdilapAMZnLujlyHVmK9UKToeuiU5JgtJyRF2etgV8BpnHB9XhCRfLYmtDcj93KoXImXYX9C
XC3d5hALQPGSclmHlPyqjZnE7Fr80MFe4NSEjf2LTylqGPJ1Z1PPZpH0wZ2W1MjFSrzmtKj2ZlQA
/rIs8NM5VbXb2xMFM4J7zJBLdP7xyDx+W8+FNmYAa/ojlZbxiy1EvAZOk5yP0An+t9i7J40sYN40
BzAYshG6arKSQbqyNgF+5gScc+8e8G4iQsAgKKgMxTeUHWZjP3k9re1UEmbxdO2H4QKCYHP33JYW
aMHpkCzeP145DWxqyp9lYv+zg2w0Co3Q6OxAf2uMGNEYG5+mjckEfpIGOpMAwd5ycw50uVnzq/yK
jEbAzSN0pYd6qUsseV9I75ic76rAaa7+gc6VHSTF/SnIjEHdsHe1qLuchH3N4wSg6SlSwfkDCTRA
LiFVN6R70anPTy71SDnOWTzhoHaRCdlYXt7x7WHiSwkIH3uDI3yufxUxK1om88wg/eAibA+0hYmB
M9nSuyRCA8rDtUDBhajKJ+3Lxur6goWJmYSF2Ee9Tu1+8SVj7xwOMrvJbjiC7eEszgjQikbm0hXM
C1RmV0dF1zYMOTDZZ1+zfNnY3qS2pljlgx7Q/XsbEic+cryLaBiH/Z0DwXf/J5nKnNiINhvQxA+y
jr6JWuBbofafy2Mw9jXVCfqNgRpTqT3dRnHH96hgrQsZYadwWTC19wIEIPNteqm1TZgjZMEqH6CV
x/aEDqhUGuskBKOV4vLH8IPSnVI2sx/Pl9E4vnu1qQsQ4j+wSzwXRTeOtQuFGedZWru2Jp1CIhBe
caZf8xmsefmuqSwFJ80XV5udoouuiARgtztyYOSVPFz8At68p+7mvsdAN1BQe/7h8gASQhZ0v3JG
Ml+X/1K9isLXJr0HxRU94LOM/wb/Y7bEJosBuyYrvGaC00nMCZImPrfqdHeLgejWi07GxIm34YTh
RvjWPO3gLYFHhDXhKDPNp44ZHFxoqPtlSmBR2ZtSFPPzlkGom807whWzQKNA33C8m/lEWPHZVilo
al28eH3NUBl6/ckM5slqVEiAP38m+f84SnEn2wiXefcAMKRf5xA8wTV9x8axwKqYH9aMgkLbEAmt
yR0bUmv8Cyc8j3AX8pTfsDwwJJfLrE1a3jrfYjOeZb/t24h1ysY3J9yIN445WAv5QeI4kK53tvI2
2RzH1JwqKKkh7AXmWoXb0eIJlRz2OPcYP85nJ6o96CLqAaHZOUUv1jYO9vnr9byNXo7JcM4psL6D
QtORLcOdl+l91j9p/G70+C7gyDcHNQwAsoXdzA625c9LC9L75ZWGFuwLYIBn4QggKzNL/XpPPBZO
7tvxOwPaJeTZs/QbLVINWbPrqbDeO07z0VPiLy8wQmQNSywbw+oUftZD+7rTCNldr7uttXMb1R/8
lRJubhUlYPI/o410812G3g3vbUSZCAF070lTD2txvPq+ENJEFB3jJ6aAmBUfEPcPDc02tiEQlm7N
F2ALcQfbR4a3fvlwNUIZ7Vwm/XEgpw4/PEdIbfKT5Z8hQFklsbDu5mwNUQ8fKHyFkHyc39BXN8Ca
geM6QqV/19yDV8D4izPmBKRTC4Z3rJZ0QEziAUHvv84hFQI+KSlpEOgUVpDd2ptMvlKi72JMLMUv
3INqjOj3e9Blc/Cm/g2ESp8ZnKWwTsqiRNDUS2V7ICQFJUg8UTJnZLWB9shyyLAp+LMU3Ai/c6YM
6Hblc4wgP+P/N/emZxhdSRjroY/shguwapKD0wr61jF6HAoTHJahG/jCDwDj0u4uK13K+Bez7hZ0
jttLIzeMPrX89EWNH3kd3mmFiNf1y9nHIT/WOE5dqxZyu6MNHhS4mN7r+q6WjM+PYKeiRg2Xs9R1
A4YDvIa+2nNyXEjxNglhBuji46yaj+M5ecjCjYg9gBbXVf8Km+bMAEFG5kr+ADRuP3L+Z+5ihJHR
qQbc5uDjtceIPArkZl90KXDA0BvC78nNrKvgm5SS1Fioo3UdgEFvuaXR27hffTydgDD6miSzxxmj
aZ3CmRXAfZ+v/n356f++9Qe7x6PnyONeE9Qh1b3s6PIi3Ral6q6j1TmadjKWnWdf6w7JbXX4UnMZ
zrOYn8CHX2srl38oiaguVr87PrdPOGfI5ql8RaYyDorG4brm7dXKsDt2RJP+olQ6JWqtEG8LlVOW
I+dEjv2dVONA2hk0EU/ZxAb3iw5i60/fZwhjmQRDQMOe1O+iJ7NfJNuUGeTlfU5g68FULDvKPbXb
yawPsWaL7Unjg0Uls+2zBh6yaoCctKR6mNkb1c5kxHgQ22cQDJCxVL2NbyP1qXSLZ2Obcy4xgIJM
WCosqsEOed7gi+cQfM0iksHDaJWIlFN3bCzlJY8CE5uwEsMLo6TJ1Gt/pOnNhR55+m1JKgIdn3U9
yaarT9QkxCaGupF58zJI802xFsUNMmaoeRVuy98d59jUXnRZeyZ0tY+HAGyjtAWrtCaR1MWTTado
kJ4efEVvenQPo4RYGoQ+sgrqGlk66BbZFx9rpsnn5hQeYhpwrNy7nqOl/mE5Clowi8U86VXp6OLv
OHZhor9i4NrwKCdVjOt5n9lC2A+2FEqERWR15oTJHDGe/90lbQkBZcoqp7VwP1jAJ8QhOkdCW+QJ
3xh3A/W6YeI22Isiv6fYhH/UmoWa/JGuG5n9E1bvqlmHvGCghzHPZYuIksurYVT6Iy3JQKVNMCP8
P737ECDNIEZ9+1z7sO6AfrXNvJ0+igI6eRRVwcxzoNfISQ6j4J4RrO9vgCf9sCRz7+46W4J7AYFj
iRHV+56SKRmPmFQslSOT6Id0AVBQCd6lDhYbikxWq3/0lA00YfsXDW6YvE4xbMcxMVjWWHJsAC9w
5Hp5rs34pa1c3AdjH5SJHmsQa+K6EcJoH1eu5K34u6ZOoeLq0NjNPx1uHIhsnBCIFNfXRw2PrPy7
ATnJD78MDfYsyduMM1jxUbqLb/6yuJUulNFvXZDKqXsDJk2aV75+wbcfc9WIe0iTLzD63jNV4F+p
ZBQS6amruCcaa/BU7Q1F5TLk6CB5mZz+NcNX7vbhtOKBOYAsbK3yWEMs2icCufRcDQsg56q5psrN
GWo4si3JLFvxyDyfgZ323KRxFBGNN1w1iWK4K9jyWi1Wsz+r4G7YOZpza+QSs2FjvCIA/XH5Owjj
Ga80uUxB3BBtu6JnUKyWmfb3FiV6chWHcIv2MrqhctoQ0ysAB1evIjwUUfSjPzUG0l7FV/GUOwg1
gwi2hD1iPoRoWQCRCY1Ip8pOzBoxBX+sUuaS9pZiMVMy65BL3OWcXEuK7TKs3/Pa+NEgNRW5/NcI
dbnypfTzHdV6b2f8NlBZ3zq6bhSzN2VbISiDW74QQTfwtlbNx0X+NNoLcmz9h0zv9VXaZ3F3kMzc
VUZwqJpEvv2osSfSSVch/jEtovPDjDNl6yx7ZXsHaS9eKjGI70k4vy2uW/q5W3iuEpSH5X++VgBy
Mnd+5jCrWONXhfxz0UQrOucHI9i0wNdtG8Up+W4wmiBIGAWjc0+TskyiwG6QN+hOsRgcDRhET445
e5RW4nuTxo0wOaBGyZXhBCC32c1BhbUDTdcf1vEw+SwS/TEyGkPrkvO2EB3PEmVrGGYaGHqkwnYE
cAuQW1LYQ8X8KYLTvbCmygDdtj5nsT5Y/xYMRvlQ0SHGwd6Xdjg0/OrCXI5Uv3DSQXbppX7+nJIq
eBem5KK7I6dpENXMOnc62/aclylYwuHyGpnNk8ZBzmN3/n2PgAuvOzY59+YjFmVBCTm6MTKt2HJQ
Op6VkcbUSrPNhiPk+YzZX4hmAdVxpB5x/holye6sIcL9S6dAPQ0j11XtS+DlRIi5ox+/fNzWK0jf
jIs0vOHP5B0DyLp7nc8oaNECgNWVPqTfGr/fcjWBF1zPULG0JZkMPGnK8d8lsfOilEzFviQr8d/m
WXhahJZspNEXEfEOSCcrrzkB6fuWye5uKeXoLt2D2PiCH3Quf8C+AJMhdtrjayYBSlq8mLyrMkLM
zaER9gljf+Uss+Ojv5sF5olXIWPw25o5okgH4W8BaHpR4ArSW0H75cLQvPuEeWNNFxD5FmbII5FM
yxSaE40oCdfn1lS9jiNvoeWohoGJ5HrrVXsfOFJ4S/NfGetq5+vfc01ADxNlW5EP1zXqN+xR712+
Uh4pogy9Nl4QiGNqtXHioD9fpEGcYvcETCKYwATnZbMTnBRVN7N/nSWvYMddkn3JFcRfOcQ8D157
omQ2y5oEzhxyL+abAilm3upnxUkPRYzvTGsby3/YHmtFfhcZ78OSmsx+CaZoc6Z0AlpLt2gjS8Ft
zwAvHpDXusa0w991yoFvJsYkdwPhF/HQDUDmfS60wuZsuK9zcARcSMe3EHhbgvxST0n6OPj1yXbp
L/A1i6HQMf8m7yu8HsvpxBUJdWeLuDI/BAvj8P1NAsr02ncnZOKlyo5XF0s78bqAZCd7sn5wJOpZ
vxlua73QLsD1lNpoBVhhvdRpoOkUN8CaUjtDJDaRlgk0bfbiUT0+oAD+AdamtucHu7+c0BWkP/i9
3wuFlJ9u31ef3pv/nR4nVE+5QxxIfpbu/UBhOiHnIivfD774j17sWgxG8jP8thpkmojSrv2rfH1p
mK9beVMAIoetrNeKNKYz9tjZWG+PGRJuK3mv9mAP4QXcznA/03hfmtL0e3la6UqAHB36AwhdZ3ZG
eyP6yI5W0I2BT/896tK9WfBYzW1LTufMcUi+m6hqnGElKHjo6aC6cJCsFGII08Hm/xGc1bxJgbmj
RqIXUmH1vQdPuZ5Xnl3i+dHU3pQgE52KWATkygsBzNOKnwO9WLUgZdlp8+YvYuagDOu2irIlETzv
TXmHr/2bLLjGu/fIu2kKnMFbnJqTFShHkU4g5a+hwZ6DsOb+wAzqycwy0F6QqnymA3lAoXs98kng
+aZAwqUNMSbg8OO3H6/BQrVvnKKgt5Mle1WT22yBzoFsPvlsT3Y3nj55FOgTyQg1R8NgPoIB+fXW
gbmzVafn4pNj4NwZNXMeut7RTqVvNB8XECp7uY+plCk5WwmxGBkm/iXDxM2WFkNC8Dv0tIiUlHQZ
XxYCY0hMnqf7MUTieLMI1nEgnaxSlpixvAmrdaGrIMKrurQDrtsC8s/dviDV/+tTZKru4oF6nswC
cxhexmGMq8dXCHpeiJOTjinE7kvrfVuJEn/NdFAB9epp2U4lUU/La77sN1y0Z2ZCoiPnGFmXgHhu
CLSJQPC0dIkfrlwVPplL1qPvdFy5WA0X1O2+P+SFwDET64/81Uv+nDE3vicP2htJt4Vn5PlmdsCo
7mCIA2HAf5PWAt9MW8PF17dG8Y1Lgd09di3vblg8hf6ItLJpNc2xCOWdFE2pyjq7xWZlC5cjKP9I
t1bTFF9dPVlyxl+bMPfiAA4eg4V6nPXjA/LWT3+Rnh+bUnBCYWwYAlk6ezakdw4Ue+PHelO8UyLO
FN/9kzSu3il9aMtjB2kpAvxanBKZBcuoaGvIxV79sD3kC12K5S+4p/b+PiQu99fRNglkHspyR5I4
RHCoylh6HGigIBENgMdg+O4GhBVGnEzCp/DLYcxFMbN/jWu7pdBo2MumFXTCgynrbIOtRe0dIN0x
oX/1KqHYSAKmVLXjRLwh5FeAgwgZ+yeSVCo644nPMwFuD9qKAcNg/WnNczAtPWWC7uD2BStYS6cM
oKcaFYlJ5o5cwz3yGnFOY4A5OGNY2KY3CrDPVLI7WC0lIAFV/ZPg2ebyPm0VOw5TDdKZlYIuelKf
kQ0cl/mYQ8pIcA3zsuQQnjiQNhf4jH4sgW4A+6jC5ZkuavKBoi6e9dWewwQW39/uD8jwzi1nFzTY
b9srwx/AQy4wd7PNf6w9RIr6ImqTw4cu5vvFmaL2zjubOuPTYWd5mkkU2aEUgMhkR+t0BEyf8iB8
5nggaKlK3eCis0Z6t2+YlMUZ8FIfvyDA7uEz46rueBo0MctujE1jsLbYS28RVhGfO7xQpniA23Rc
5SVqMIRjIQLCRyArrkX6nqviyLr9pbNo/ak8H91qJKQiDIAEsFzzBS6YnMVgG+yrzJYps5I2hl1O
gBr3J08y2JsY+TNGJ+SKY4/clnjzfV4AngqMG27ViyOUDKhHqwE85+pJ2rpCV8Um3TPhweTMEvHB
abGiR55qI5cXoBpiL4smUDg0zpxtApkSJ6Mp0wKQBNuZBrVEvd12kNqWz3dtU/fMTuBUWNDBst3Y
rMHqF2EY+TBYOZgOWO9uyehejl66eGhKyQTMGKv6WZcuGm+WmdKwY/7sqhKkapoyJpYescSSDk42
Vw+y9/aHOHv16Ha0XnEpnah5yIcGDre/YliniiA8lqP5CAl+qfxrHzhMJv9tFTNChC8AQ4qCER7a
O0t5UpPNqZPsB6BHZSoCKldprJMGQ/n5OtE6k/T077c5j5WRH8N8ahqGFfZrrp9OOVIo1YkxlUKO
+jAF616Cqz76GXt6CpGrIh11TMbzrc5SOPyXmoBW0VWpX7WSudNhTYQ5bCbduqC5hvNFV7Xicitw
7iZbkrq+c4DGSZfxsrZPYaE9tiT9DVvvO4H7umYrqRr1p1nMAv+JmW18Et5LAsWUoOK9HSE6gpHB
JNnAhENWUW2wxJl84sSn3DAvulqqZFAP8yxQpo7XeHjMFKd0/dPhnOLXkzOZYVruTCJbCq5mIdyT
Rsl0MjuKSOW0MsUIFJa1N9LI+nP/8WxDEAtq/wGiPKpikWZk1TO5OjyWlSJdflBsUZx5C+h8HjwY
ib0/rfF3VHsvsonFwzqATJ1focjBgM7Lj8GRb3xzfkkS5Hme8VPL1YTvNVn+GWYs2zQV3F5fDHGv
NFJ6oZaJeErpUPPWgRwNjMincQsKaloUq7YwOxMMwpVQjyWQ0dD72Jxwb3zPMio1E2G090lgYHfN
/ZQYiOzdWP1GuAwgyRqzbJXFMdPjmksyMf2AORw1Xz11PxgJtyO0j9RH/yxtm0wwXNUUgsUi9tvb
eZy1Y+LauBKDpix26hGH1Ju9jVa4uO1Gyyn0c42VQNWm1lItAQ8S27Qq74KfpqmOXKcKmp+fyMBJ
M80DRj2DCk0MjpqFrEMCx1oKitmTwgD/TOKc6elBDUkeQ1k7zMJZ30BtwRq4WXSZ8AZWM7iK7zEZ
BzLLu5MRbKPfJk+Ru7htiJCDRzMNpYAVAbUUWIyBB9TZxLB7ASRpDTeDUpSk6gqWzcAi4xBY+Qeo
2Wz6S7unHqMeUmXKg+sCqRi6h01hv2Y9mCsz9Th7Lyn7Xb/rzQ7sNkd+qeo87fcJbxRdKyB+kFXl
Fsl2Kn6lkt206fvZHezMlhrF27qfeJZ3fhT+3Cix34wacNrzzxvVW2vWOCmnDAkt6b6sMCiWLTuU
KAwCWpM2Q18rBLalwcjSBozD/Qyj9cFMkpaebyGaK34u6eeh9BuVCE/n9r1ML3BSXh+On3bcLlW4
G/xDDSEaQSR2+sIkoj2LoiwWsbGzxZEQEkaCTgmvutZpAXEw5KKxuRM4KCjC45RJ3yvz/pBivon1
C2B6wQrlk0a85F8FBzERAEMG+2SyQd853a5OeIj/r81ElqfIyAYSZJdtsSEBMmO0rskMqkg8hPnw
TccikLy43WWkjEicpzAWf2RJvLPKPBzSAn9vOrqHEzAUEoB+hmw7HGgqdfbcE8YUY4efeph+yPC8
4cRlqqiIubveWlX04bqjetFTMrxvDCGNfLwJfTnZ2lhWyjC6YyQBhF4bllC7rZshawWT1tBQmYFJ
AM6Y1kxmqAl4H7UkFlc8HyO9g83M6Ecfst+ZxGzAIPcznsQnmz54fAy+IoPm/1luA1Qp0DYJxXDp
5QWN52/TOCTCeD/+sXMY0zVu0gLrPFJFJctIbhFpIY+DWNI4tgtBiTE/Td1gJg/y/XmWfaAHVgzl
yCEmr5XlSCJp0KRpykdwwds34bYdx0Wir7nPfJlkEcnPemXYoX47bPjxiIg8HUa63ww4KYxKX46E
DJeYgLpm+Z0pdPUMji/NeX2Nvs9lOzWDsFa2AHQWG1LLmQ7eB/ynvOn+crgg3Ay/Huq/A1kLDvVp
hqMBV0btZkHmXBr08hOCadp3aO0JP+S+7fuZtHTaAYGzQxAPP/8DP4GP9G6by6T7VxcmVxT/A3Aa
116/ZvMAo+qL/aF00T6SRSKh6fHYKbFIsyZyulpK157j85lc5dUC7fGdAuVhAuzXcLp2vTgLL8jI
d6oKV+9z5Ud/knAnSQMeGc1xlQ0+wsMOY7JdyZaA/ikiJn8MkojbKl19NBXPAdzuTGsr3nLUhUyW
fDeMx7E9Dq6+8WJmYno6dhOBdcKeSE1jqNCn9o+SbvDs7eqTLDqNk3vXB6Zg6KdvZdAXgbx57gNA
vmP/1M7qiYt2TYoRopmedMyx/GhfeuMu3sK9lJYJsdpfFtXtjzRVkBXEK4M/V8PK/TJtKvqIdRdy
y8Pw6DfIxgNjjFR0exJtqJcRxdqPOZYSo2Frag0optnwrvkQd4xedHpL2MJ0qua4ODXJEfwD8G3b
pLLz4BuE6kOY+TXkGmf3/sZlv2us0OfGS3N0mUIQ7uoh/yYovQj4/jb1c4BOxUgQMP5zdgVhk5YN
F1moHi9jalQjpw4OVI9mtzGCPTGpW22Mm7dizZZSR+SI5XBWFepIZmmqzC8UIoBQAObWH5hfhIsH
K5tGzt5L4FjX3TIOIE4+FdlaOdfkwWBbwlDfv9QpSba6ZmXCkbsQ9/pcUT0J/vrNGBnxG0/NxpPe
MZZIdY0sVshvqSumIQLe/ULbqvDJg8Brtw4XBJ7Bmuo/xJPECcDnL7WRLeqSYskRCsSGFr01liPK
ci4uFgm3ZV9vN2HhJaUjCTL744Xw4XFf2WbDVtapOWQ8mVvtX1GarkXt94gGs7s3VdoGNFoeE8Nr
KrN/Zz1iIz6NCn0tNtpC6bIBKox3EcNX+REdpcSfVSZCEeIzp9YOcGQYRd+WWPrpPZRUZEZvBPNM
TERUAm0OaCPQgdkBFf/bwx9HodnbSv9VSphQRAoxiLbeAnV2V6TaeejkQPwChA41F1cHqwloxL3u
7Mi3laAPjHoxLrNj7Jj0EWOc0OFb/vO8W4g3rchI+acCG0qzGu0+T7Xzsqdnmw8LCsXGHRvjGHSW
/UIeBL1RZi67BmLfFSagPsK8IEdfvO6B71KzqG8G94TLQp4ks0Tm5xfnlrA2OB8LSRGm9y3SO/o/
IC8dt83Cdgt9esr26NPCvg9y7FKe1wr1PMgSb7HpCRXoq+k8kohDpRGTANPA2BvHrBXyaeJfEvIc
UcNykX6fhiynOfGS5+9f3YooxDXJpfT/5xbh4ZSV6gDuPlvYs5k3t8bQeGo4toemuuSEYVrmvjVI
EH5truZ/qICPZ7UWAC6dm/EjrmpYakFn2JUDGkZ5RIBZDtRo6/5AgB/C0WS68a+FqOkKm7TdN0ds
GglZYTFoWkHNo8XeyO33YpzuWph8F5Rlxe/+hjAEGwkHOpWjvCE1J6/4FLNl2uG7dYj/YNpMwU2N
nhMGbyfio/+1VF78jkwniP/ecM8T9L4EIj2G3nmmUMTJCVdb0EmJmJcNfO1KGH+jnkxsjinuIY1f
DlGPUOl6BoLCuDeFoz4vFmD3kNHW3OWaK4wVN+8aM5XS+MboAZznk3VrntC4nVuinzDVw5EIHFEn
qnmi3yPjhdriRlhyNHMLxbDmXlQbcq509yuLoYYCnjp9gm/WG6n0+A983XyF4t0P8shnmRAA999A
ip40ZlQ8qVKtw9anXO5QCdN/Vd//nIZMZxT5yjJIEG+YVVfOclizzP6YpJ49qITUS770hLcWKKbR
lttCQD9ilNkEg9uof8YdHrnr6RYEobvEjaQkUme8vgfatUsq1d+VfrwhkPt2inuyFVCfyZECII9s
edsz1FUrXXTgrffyZg2hkPHuaSb65gk9FlPX72bGHgz0HoUYJO8vfl2rhlTrgqGwKC6EdoSmc/Nk
R1AdqdjiaMO0VkQQXsZpY50LMGfaFhrLK1YSAr0MZRYHdjEzzoeidq4KeUDoW2P9vRZ2R72pbrbQ
RuFs0NX2iQ023Unmkd3biIYzuJbJ5I/mrncrHPSTAkkglQAhfOMtsGFluoc7IVDw9eaEKjJCQxPZ
COjp0BEeYKa5JpwOjr/SLDlJ6MRtNOV+Sk+S8n/80MyXhPGljpmUT68cKlqQjOlyGa++dfG7rfmg
xZr081XhuhTZ/pP3yeE14+omPLajVzeegPDMXXJdFv4NzfMkEnirsj2heAtNFPnR+5pXQ2oU1A52
4g/DQe6CGfVWUDTlvjvyAF1LAm+k/t4eJBfcGTp6O34jqETiTmnNyxM23zsE0WdpJrejlvHGrpp4
fyiIjdM/5+yQQH0urh4u9Zp7iBqbX4qXeRvdr36GZspcYc1YghA8ra2jMRgAgU0n0bblxOZACvdQ
jkM4OIUGqgcmCM6fIUzt0+454GIQNuNZrD1gXc0AsP3OOLmnjBouTUhoxUhqvodggTXYjDzNhDnD
/0oheopFfgtOElm0nhDX0JIM3CETOfus5hrWmfAtWZdI/CS2cy77BFigVlvsekRg245PRz/w4giY
qbORF3Z+ST/4MmDps8DNrWd1MytgqTCSfESD/tsOdhjq1uw3dYh6/60Dqb2g9ghlGXsP4emAg2hu
fzqwnDQTekpnPlbcuzRS/Zcjt7/HdTXuQXrO0DjfAKHlAmQ556wiClQ+Hkrts3V9Hlg4CIsgYmTa
O640ItKpEqlgzy/nxPlQZo+3ngn9RmQBcVst8l1mCHCppQj6Tm/64gU3xNb6my5d8bmAyDo9I2tu
mMZ1qohy7+vdhR79EsYM5yjdzx1v8wrBbiGMeUmLtoVkpmTOCL9EZ+a+d5D/5kWDDCjavi7lv9Vf
uwk960QX3EYY6FednSzL8r7a6xGEZ6bhkldxfIg+IGXWMZ3o8zvSonTOdI3jQpx78xPFMzTWBzZa
rHJ8LmyP6Fxv85v7Imyvp5cb6xDhsG+Xv6Y7MRiOZH2OiThCn5a8Jsuf/sv1h6R3j4qordUv8AuR
wt32BluXfhsap3dS/in+lQaIZUn1LENvGrNgrotkhcUYfnw0TSmHfbLNROn103cEcJwxpWyP2xu9
DyY3J5xX2wpH4CDw6Pu3qezJOTV7bcbYogobSElw8oEGVVjZMygL4JE1iTuroKZg/UTc/rAwmND8
1k6ZbSwt3JZOd6j2WwG9bKUQysgusRcWc2WRf0nLe4qzdGOXAk8ZvhAl9Nhk51NPj2f3J3PDr1Ix
t47nAzSiwNKbxLZvrJxhHG0rAkKIiReAqIFM5pPUbWFdYx9EOtvxzmWUyK23gt+ALI0g5G5kU5Pe
ItyOVVKF2x0V/NPglKmbBqUA6DUL7ySjs6IR6Ny5YGIlYD+W1vUnqQdKy63zlAQSkWaqoU8gGX/w
w4zycJx4/6DYl5y24nheR9JLyWg13LgdR9rgd1QVGYe95ObyOn5VlG2UJtc+Q07N23v1mKPwqe9c
vDFMmyyyOCWpkXd6BDVJ/gtm+8+7GkiLUlgO4ToAr0fuEQ4H83W+whb+hJPfCNslQKtmHlLbwR8f
byUA7ZfwEqV7CIg6yfo3a0jf+yuMoiU2/AcQ5B9/AN0fkHrSgwvopYVOiUfWJOtrtfIxUBM8pAyu
DKbPwEmP81zp5jvh+8WrlgFud2X760AZpnUfRaOrGsr4dlhJrguBsRUFwd4NAcqCB4/o/W9cz1tE
wzc/H1EaKzucyswBlwy6KoIKzqZ6Cz89yFEgqXLqNtunWUo7eb5NKwEyIqjheE53vYrLs8Ul/w6z
UjOrYKC15Yrh1uRcNbSN81Q/DfIngaYX0F7pva0TII49/o5JybOjRAxDImSCDDaRdy1Dh+urLxBe
hcvwxPVYE6NCibIRb4HDVxdXS7z9YGJfpUchBprXRDtOVBW+iE9h1S6uLQ7raG+OX+q34pb8vPdl
wmG6qEcn19PfFnahRcKssTF6il2HHE7Kw+auvBfO2OTkz26KchNocHRiYPZTX1HAaN6zAH5ILajZ
lP9wXL4SDSFYhKV+53B8xo0UR8LtFWIgJGCuG0B1pc97D5cww9eoahDGzNuCD3Br3O9V/8zhfl5u
6zE5KwtSF5nEX6RpCoQZoJNYaC/nquf8nBPuvoUD2HpBqmODxT0n0RR/VQ0YXlbK1RzOvnkcMzMm
7kSle5/Q8ig8EMi1g8O6/7VgevKurUtX+7R1hj5T09R5t+lVXQeCEbhsCtDrxJTOWWpoO654+Rmr
C6h7cvlfzjImgX7qj3Zj7z/VTISFm1h6uoHEeCZQWDofFT91XFiG7F9qbCCqgzzzIe/Y528QP3H5
1qnq2lrP+2+/cw49vO+WwI4zTPzZ3YomD552WtlgN8lhdr8gDZuu/4o7C+UBJnUNjQYGtsy4bmak
xfRam0WtknEv5+l5uixo3ikDvBu5NGYbV5UPVVWS4+g8AwekAhnSJnPMy6FQj5IhjZxCQ5mpNoMi
i7+Pmu/OkpkSIEhMQtHknKMSrvUHQ9rlZjJ0dMF6wkQSTjvJsnSG1n+kj3TVnE5HFt3GkelAEsY4
bBGvQLhTaGQJdoyzuXbmyJzV6r7Zfd0/FH9hua/gdSBzcGetjlixrY89lTmdcXOSY4lQsJDvKjd9
+c9K7kUALG1Dk2QYJkdnOW5oHO0fyjml/6JpcvNF+HpQTnyVloe2r7KJrZd1sgCvB6pJ9t1mbRwl
HXH7wGKqebBAhF/wySDBBNgr+aJxfPcMvqWJmXlx2rLXuk4ZWQjdR36+L7nMV6zmErIteaQbdBZw
smOJ3g2INKvJz1ERBgblqMjo8y/DbGRCgKrIVE8ySY0OVaubx1yfmIRbJYLT+OTVqUtI4yc3P9ET
Ck45yVZ50t0bLjUjGzRrxHFiPgdAI6QKl+r60TMEVQmM3WDQNz7GxMJinVUFQ2RgDoZGN5bbdAK9
IUMtM2jXRh+El/pyaaEPCgnSrthXttAiB67QEOxMKkfH5q9MD0eMklTSZHXuJuXkfPylJHN/BRQp
Usb3uNcj0yKNSyVjvCQROsO7RjKLb18t35gMdLPTwSgiCTcyFz3Q4nZar4RljtW9bvQO9P8nRDVZ
kisB1i/z1q5ISQ/ch7z5BxLChksezlwVNfSeMk+hcKGFIPiS0vvVFbn1gKenavHRsVVHz5XiBxzT
3KhMDEYTyeOLEzb+cJ64XI8Oy73e49rpYdFf4w4bVfzosmGU4U6Fmjbu9Mt58q3YBMdBs3SHAMkY
1E0oqEaNTVY/V+jGdhweL1CS0eSMcMvbNvYaJc9lFOgrtV/eqSzxKzet2UD4xVJGRUOJAeG6esDF
Dh9nsajuJzYD/jTBk2o8jwOZ3/aXpxqKcVrhBcfn3qxgsAQKz/WLQCK99euXncbiUlGrh/FdK2Ez
qXrdxvBvQmRJyLuQ5DZTQy305yqUjLWbVgGCZ096M7jmjEkApPyybPohATzSgXHmPijK6n3XNgU2
wRajtNtdKFnB4FYsq6csT6RfkmVj1jPvuo6Bqhk7vwGYcgeRVHxCMSTGCyZ7CSpYq/+MBKhovSfA
TRbrQ/hWIvrKnwq4prFI9H1gVM8vDpKaJZRmzzgiY/xzz25omc2cqPcNFfnfwaO3FeNiHf/6nJ9w
uE2tLEni5XQTVLq6d7f9/Pn6+lMwxuX5ggKcxLwiNwKCSBF4bzRG5yRMYJeMv9Fa0nVCfCr71O7m
nrYB4ByUaS3Fy0ciRD2W74DYRnx5krRuwKVnjqlTbUaeEO3fgeItOAmKn/+pGupfIWZKYwGOemub
s2XcvVplm/9/svnxFDPtb+A7F7gyrgag10iL3w7wgnLlvatKFhVFqG9lmQwlcUdttRl4t1jQBfQ5
Ix55e1+/lm+10jbrO+kr7T6snlZy/RLg0q4tZ9I0KCHRVmEeyY+T83Lux74snsrmxbYg+zhb3U2J
2gvhwhDpXFwoWx3bAd6HGuwPTlBPxn2JDfjhVS77EGMKpZ5BSopwwOuZraZ6hSPsZ8g8smsHlhq2
6if6suQPtULMyBcH5PB6knE6jF+gO8uqrgeiTn4w7ps7tZdCucx3n5XowUCjWBZ6Op6iRXYHSTGz
7lI06So+Weh7BEF+1ledwRAoEVaepZfynlSQpTxPfwM0mjZVzJKgfRxFbQ8p9mCZ0eS4okJVcXGR
36KI+qc3NXmTQQ3vRWDuhXNZdzjdzmyC32sC+58waivCg2JiYe9DKNRX3ICvWf5lzJL1+Hp8Htwt
a+CGKzuZikKdV1UM2uoQqgxLR0mrJERhc0NKxx/4e17tSmMMO5eBm0De8ZNvxYiGVosFWfrkcLoY
d+/uqVQfYavkOEdxMT8gAnI7xo05CBnPbtzq77pYB2QjNZDPdzh2VDcQTDRkKQ/KRhmtMl408gY9
/5ey9qtT+I1VHlNZQG7T4T7BjkDTjIvikdyYfSL31zhCHW34zqzBdJcLrMY0vKJ1qsN6uu2Hn+YT
zozgi9GRvo83V3lg97g9tLCpKa0kR+RC5SNli6Elp+onWv0sDqiMH1hCXJYCGjIs8+8ZXHquCzP7
BC//5tgcMXZxCvFbU5MV8PtP/pRHynlDlB67kzyjiN2V62xGNQyyhy8JvdC/mvOunRmkCP/dbY4E
PGriw3/oXyU7kjVhrSSDCe4D4wNnFmaeJTVXSrWLOyONC9YXASFyhHwCTsu2cjr2S1f/4Dqd5JE6
ABNpLZhiXsEON9wsqAaSy3ZEY1hLpWqH8dgSQCVauZVRCGxUaMAVpwxOM/KsiAbcTWnDS0iZJGiz
LU3rKJHKOqjUdUukfrX5Vx+dyABWX8+FTMn9xOdIyK2ekEeC2D/uitAEk1n0bKbCIae0aEmOxsye
y8URj3xr2uEBeH4G5otrTl4mVPCzX/c61jJQSTsu521Y7Dk7CGQkVQ+qmghbPuIjeDe7GY2ZRksz
8Agq/F7/J7NnLKumglLXpCvMKRnU7KmT1jBM5XnXYtoYlhGk26JrRnO5dKPnc0Puphf+fE8lKtbD
FvbhcPogpOYyaybJhWc2JIIiPoYcBcJr8IVegv2sY6P+rUCbJRymARf4GTm0Q6DrpYrMh2WLHNzZ
wwUQ4GWbSFCUX90iKNSaKJVpfK1QFlhR5SkEXXI3t+ZuQUlZeP67tveutqL5qJLUrsKrkSzu8Bri
hvuFDOCfyEkGLRrOeEkQbOsk5SlBJnC9s3ETSai9okjyHfoQcxQo9LB/4FBA9xt03hAxDznXhxBd
lwz7hQIaTulelpp6mjjavsDehu9Xjz+Q4rrGpMn4j0vpbwz+PqX8GgCtT2Ptqd+wkS6VBy5OTAoL
HzZZAnOSaiGzREpHcI04YPRuaW6ifxOP8UfNqanlmcJyUWy+u8nC0PH0kJmBa7pmwwvOtdOJA4BW
S7yU4ai0rbkKoIN4dXH7Oj96GuH2ddqogpvtLZd3rKaLfPfHxuE+8nD4Vccd/pZ5hIoMzVGDCNNa
KZBzFzbtfTNuj+zJm+UCzDBsChntYqWc+e8ftFEJrz2dcDW4kL30PS1L71yoP9QD8oMXAIHGqblI
uxHdLY1yVgPvUJiMBgyTGfNv20ILPARUdQL7KI58gZmeqc/6J8d/nDHmDLsN7eQ35vds2/lFmZvs
zZWPomRSbHCCxIi1Asb26NcMh/XUsXBP21LZPJFheXatsLS8ktBnCR0994R2ytC3YNP2GHDihFUi
sWH9xZRSsP9SCEZLh0Q2A3FQcI2nnX9uQZK552h6L3Z6QOOLOJlbe7HrvY7k79kme1fBE0JNyVUp
x0frWRzsM+W8jHFqum9uf0j/6zc5bqC4joEJSAmR6ylGBiMGbL5eNxug34hyuAo3eHCVQvjSldnw
wh5d0EQwWSUJT5vR3HkW8Dn6uGX/Ws+EHZLaapaa1ZppA5KeN/LvEuObsAPJtHg8XPRSQeJ12SHa
tLlQ+gt8xSFuVcoC4fDqLq8J93bwm+N4sGekhCNjdnPXj5caunKkHvgVc3oao+z0yUjt4FzpGl+X
Z6sxM8A/CHz8VTo4HgMKTwsMF5PLij8GBtsCsXY6Li4qyMTmngE7QZ2YZ3t00GdB5/gUTK5Ru5Bd
OjTrkeZQ5MNcZd3+TnUNNeGNtS/fqH0NFl6+zKYU0g+MukoV0s0LXY6m1MJT12Lgh3tbs6v/CZ6K
sSY4GOyqDkiMaN+eTQBAt9msT0myK7nPu0c0PrD9VKmZ47A+n15YXU4eXPmzHGjTtpo8S3ly3iep
p1Bsp7mCDbg2vRlaOUKSX5cggtro7V7Y/4ohAbVr0c9tQ3AljPl1YORHb3uBJPMZxswrDZBH+IIi
31Z5Y2VLORSb4lbjBPgEsirN+ywbBUXEANw03pN2XrKdjBjQYXnKNwJp/ZSF1GiuEZmMV71R7UI8
VlQjkSqZlvlQzXGPntLKyrEQWHAxZOizMNhBm8166HwVqqLePwABjY/NxwX1K+ss5EcLaUq6c6G3
gf0bWy1+BLr39ovpzDEYQiMyQMSjFS2FZ8JdpShp+2jbCnsWoMlnX7KrYgSP3DTK6HXfc9/DIY14
ZiqIIdAzML/VwZ3TWVRGAOGq635yJMz6M0EAyxzahMkgozWt+r899HqQrJrwq8oXaz8VmlTQjepF
S/LeHU3AVsUymb12tsOALT3fL6OTId+hNfaB7CK/21e60TeXSkvCtZ/VbUw6OeqGJik/15/6G3Js
1/QBJmrgj/fNNNbt0fRRn7FzEe0YkRMtI7N5Cr0XmpITXn8BHPy9BrmE8a36drGcJTtJEViZcOLg
8qUVaPlPtJ39PP4Jw1y/VC12dgXSKPWm9dWtnSHkSdHHf5V2Roms89p3ops2wo8I/lYAQOpEcScS
EnWlC+tIUfVswEIOxuVqKvgZ0bqpo5o2ZvWi8ijmhpcDBGq1634+uBdIHw87qUxpQ15/5p33KFmV
oP3+S9ZhIqaHH8lFHjayGkab3rKsEKyBB92tY9eKm2XhBzhfj8hYIfGCuXgdA1SMJQ8pMhjk+2SL
p631KuVawhO4/M2PUdxGKNLqRJG0tcNRM0aA5gAoBu55cSTh7Ptf0OZNqzJbpbnGei3Pgd3+zXYb
NSEJPy7ndf3/+MC7iAQmWmNZIXaz+bN7F3AGnSllWXb1HqV0lvBLX4Rq+qFy4pKkqcKAl6r6sZSS
JGL9Dn9AQUZO6w7DgjOO7Tmk2Z7ba6yT9Y1HU3JZfC2f/wo3ENObg5o7JJ8gdxkNLAfU3cg8N9xy
1c4+0fB7SaFHU/+oemHM3d5PzmB1ats9bET7nAtFJDhbbVLZlDZd2oIkryxsynGh9inIpjnKpDeR
2zmyZIVJnEejLa/gs4vUyYpVSo+INDy/2vzw2ViGFyko5Y654FVn/yIK853O9N3cYt8RYM7rwO6n
Qolb2Uxxsy9T9gSFP9gL+yQ5Ui/4TuZLL9e90oZKmOVzst03I9im4D3dbQ/oekE35qDqfzQt0Aoj
uVZFsrj44DfX5EuL94hDpHdYhRdLiYRHy7ywMeQfgFmuJKjOdIwz+E9Vo5HG+Z0auB1cTmpHRtE/
yKmclsLjA9VP4h89ro4DpxF+ex8c98WTqK4ziulCmZ8PQDPxYZyeFgG03qL/TiL4bEiIdGoZpn8E
zr1w3QTkcK9xrQL4CEHAqQEZStFtnLXhoSHpRH0rdQR2Toktp3KkyK7w6o9eRY5EZyw6uHUrhULf
4TJlmMHYpqtgNfAc2oYQItFBnEUSd0+nhaulQ4DMMgNaG5J4edEmL5sjA4ugOEIsdZTRFaIhjtmJ
SA4gNE6bxGn2aOOnM7TCd1HltwJrBc+1FYo26+EEKj7T5R8IoYaLvnKPI4C4q+fnjQGsDCY7rm1Z
dvnnO/I1Vt6hP+r5r0r7/I+naJuNmBYMP2W093uHmOOEpGKIH7WUGKlGMlsLYnpcKTPTZIo6Cvbj
y9D1Qz2GRWG8kjI2rrFNrK3rdvAuKoSIGfXo7vZ89P6agu1ZjicSPI7AWgyEYWnFSTgiE14B0C0u
7T6WJVJR7B0KsyYzB1+mNjTmqQtC1wATLJ6qhWYcRBaUnsHFtFOZkT5m1DLwQWm79nvDfOVIHssB
thPBOvIu5cwCmyVPSI+T7u0fQjBGlol7LmJAOIIoVlkKZGz+gP4axUzhkUielY7zhwC4o5crhpf9
ZLbdMfDTb3idlgPSPUz2kuAH+hwIwrXz+x0PWtFTiGfJyeTgv7lYVljp4Vnup1I0wcniWSm/rZbM
bfUe4eQ1AuPAqEfRpW14UUuDFhTE/oXP+T0Oi7OY5vOWH47WjmMwBA3tGL6J8MgpYWbbDtTZ0AaR
jlbWP52XGcRHTdk71gTuPqHN+l2QRuPie/ImSaLEAH3zeAx2jneGBlMbr/VlJX146E4JXr7wDpqB
GuvaVf9ZPxFNttWijn5dFmXW+eZrEhKCVgR1Meh77x5iTo9ezwslg8qWmHGZ3lD0UNd0GbzJSQXR
XuYBVIEXsZX3KNjv/oKr64PE1exHUDprU666SVGqY84ln79rCGwhsDBDWNLIxi0iRNzWIrVJ3qaE
8q3tkymmPPa66JtYU/1+oZ1J90NOKbho5MvyDGhm10VWQlLiiGz6727g1e5/kYMik+RGuC/NkO8B
p52L0D654F+5CtFw6rvL+28u++Hmuc0DBXFwWsq1rox2mmPenOt4y0vPpXj+u1zOLQV5AkJqwqnh
QCbtWmRp6IitheNv49pfK6wAwu1qN5kmhRM8c6QlT+/1TUpRxGxiTROrH3+1aRLr5W5yNm8Q4GMK
9oWzJaj1Pe4nCWvDMBTK/lwnKebbUesipQkGtq/UGmzL/w/3St6WVjA+pRjSfJfWdqz+qMwrAxBU
gf5sogTUqIXo1d13eaUQk2s6jJFWhfXSV+Bu7ihpYoKn8N4ZcyBkAj1XhjagI/I9gDSQWU5bB/Md
ylIjLVSd0DZKv6xRpp6S+19Lj/E6lyo+fZVwO619iIjIiEPPQSUx4wYMUjCoufUxuKH2Sga0wiSa
NOO8QZZak6rHzNNuRB0AweTjYbiiwPuASDAkDwl3kA96RjM9RzIIsQ4I3bvPDLst7y7VVHA2t/F4
rhgYqSk2z3a6Ce5/OrxNvm+zjHwT8OsNZWCmbndz96ZaXQxu7qkefFplw1zYpkDBM5cw4hNpaKY0
CkuBJJEs1l4a8tpAYoTSW+fwelRjTjDFsFQRgJFNu5eEHUwxE+TjTp8q0kFsm+no6rXeVIKfTjDt
vM8cm5sXrvjKxKdAuIOk3WHo6zh3+5LwajYv79MYTsT/INFcJU31dQzQ3pG1RAV1beI8STAbI2e9
gYZ4ZAPdS+cR3RSam/LY7G/1L1ueqCL+F2M2t+gXujyFqXtTQO9lB+Wlxincs1RoxHJMJE0Y8KuH
Nhlvd9ofKEZpEtAXPmfcn5Mk7OTWhbnysGl0fhLfRQ+ktnRtr4jPMSSpXEVC9pogYV5+kMpHMUke
dxyHjh1I2iwzWgnP0fQzfG3oPaOcYZgDGPIqHa6+WnTLBmlGU5Ms61GlQ8r+DntcE5/7yVJFRkTA
hPQatcti+N9apIAkhFAIgDVHJJ9Iiwv5w4I4dBYTTRuzNDf6NbhTYlqTB0vFEJiEQPoyAsweGHHR
eGA8THa6IUWgQ3l76CbyAEObQOiEki6f0dSoATzsqVNcIYI8s0rFFg9NMHxxbK7o62KGaIlt7fAb
/D8lsAA0rkTHG55acXgscG89Jm8+7i8Kb4vTTXjoiruEwJdXwmY9rU7wTJ32+L0BMrqS+OiGE37b
OpTFU1lox5VAlTXUEVFQyApsCJNZYnQAfBOBAg/dq+sMdaXbxKYaA7Ms1NAdIZ1SrBbsqpSXtwFu
dY0Kdb7S+NuJUfhni5eFdREtYH6qNAJkB1nnIbIDM9Rpqui19pKnVdIjIMOf9QlrjZL1KzANdtpZ
G9JaK+2U/TsZzt1FqApqSlbriUsgXfm6fQRY7Bw++Exhk1oWFlk6Gq3DsQZnzHcC4VfAaPzMr8l7
59foHWlvNF4noksezIaYyRgpNjlReK3jNvYeF7BbpBGmpifusFR30exwGrCnOYj3lPYnOWYUoy3p
0RN203zGrCWrmcBaS66JicYzEa7TioW/g9LamJ0vCMNSmCzoBLnEx2X5X31lTD5BIbfoh0qyqNrc
E65UfQWiGpUpt/R/KGC5m1FBL13AWhi/kzq82x/p0FoaJ8hAQ8Y6dqDUCuN2Y2rm2MrClLH82Zb5
qKUqam5WVlCyndPFAwIEBIiLIkEgk45LohFDJgFMSmskPRt8acct/u1Amo3f1vJ9VmJyWp6dljFn
FsPXZVQTLWTKvVaVCObzfo0NFZWgUbInEM13E3KRRhoyReTHjHgrSDxV2blO4+ZdXVJDN778WfyH
3DXyREx748WFD9qUZeIazl4PEPzUW6J29O0cb3E1Rh5yx+QRjVHRfvSTZqG2tVXC0QhCHjxH+X/8
zL5Sz4VbRG1DtxoX7btpb+h9lvoWQVaYPXxROo+OixFogGvaChmBSK1/Z0Bigs0g9st5YQqUz7hq
bxmc1DXaTQpWma9pRkW1tPEe9wOUt03mIhsI8z9KwBE1jFogA9wrQsOoWBPJTRd7+b6f7qbsGQJX
CzOnQGO7pQeQsDCkPKz+UXENOJkAnwRZrK9wlocarfUQg/ycAilClIF9yb5s0kWIWJHccdVWG9T4
LZUI0dwFtbl6RzBialnMrTZT82fVoKS7gweUtFy0l9VQrog1UZQ3cSM/nOzRvd6BZwgcMZ3hFow7
Pq/IrfVQuYBk4osYJvW7xU1l6E3XMN4AKuFKGI2iIzeJf893eLQs4QEjIqE4X+254H1ruuAmbQaX
L8RGD3qRSQXnMCAPUUfkyCRnxdCVguAPqVBhIqBoGujylYNtH4OyapdG9E+OTi6j/XG3JEv+TlRj
ar/+EtLcuX43KC7HBnejy+zXq++aCVba7PP8qMH4ZFSmWfsZleNOoI4i+S7pgnq/D/Z6nnP+MMX5
HtqFfx0eAdrJKF8Vcc0IBa8WvV05TEZwI9eCSF9e/+5q3uxG4Eii+yqdt9tl5jO2havEkXHtoxh4
4VoBKJzIarOm1HJH4Z7SLr9bl0dPsZSRqyLAXpAwmnix5v8lbSn/uf/qxQcQdav2ErEKKEu+RYv3
9P4HqUuq6RljRlIgl974JT39aEUDjNnp962R1m9EfZgJp5rJhbJKTtV4r6lSCB5GmTu4za3gkOww
2czDo9c54vZU08WNntgBfyeG9dtuFtWhPnydbFkJGAx0jlwy2cq3hEeyhnEpB7qCBLlntaFmkhjh
uww8kzH9LLI0RBUQ/suhKucm4PMcaKBpMjAvKbFpd/PwSCVUxoDEC9b75l8PvyAv0e3dpTAshJtH
PL3SN4r8i877XakGUdc0APxfGdkQfHCQGE4HNuLo5JPhnXs7V2i2xPoMEEZkCJ9WL+MKcvEnwoIi
NntanPdaOTRrjDFdORk+ff3tnzxgXse1lQ+ru/1Y85r06YBkwLuI3GHJlf3MskeT1SGZLOi5xSMh
3NYX3M4ifGQcVFp5iT8O/Iwva+dTPiaI1aq3Ieh2j4Rl/tNum9sODMkiVKVCeHEcCLNdFeFYpCGu
cpJrY8mUv0hxoRIuzEE/SZsAXPzW3kjN+lLOp60HU4yzmDXzRjZhErEKYElB9NFHJwOaIJWAPgp4
jV+WBHezSxW4xoJOOzdIUAR4BOC8cwmsAhenaXp3wiSM10lSXj5NHL8a9ahSNwpvsGjYdBLvlXMp
dvzidk3BdnHBH5iisx/rMOSPpBorjTHQ79Wukfw8NUs87w3Lu38N6afb2LZtW3oumOYMJQ8+ml2F
FeFyrd1698YHLllMtp5wL76I3Czc74sQfKDn1Z8yE3R/M3fXtkurvb4CF7tYp6Hg1RT23b537bE2
WnIN99B3dwh+tdpOTfRAlNyz1CFAyIjQUso5ISxhHNntQ/C/TFczSuTISjUyrUyK7hV019CiK6/R
tkxcWKZQZ1F2bYdY4tGV/5AnEK3GQOqM/IOVEiInTfarkSwWhx+XIVqLvAog08sIuvKP693tBtyA
AyiTyaKfOxQy4uTPSIMKnZ9DnT5yuiWnOClLm0FL4gLfZ29qmWFYYGcPx02xx733NN3lVg+Czpmg
gNXF4xa/55VIjRkTB8gjWnqo33WXGzutl68Ym2Y3XJcRpfg483OsIUa5QImStkWa+BOJZIzPZXne
10pf1DqcQRdamVw4uX6uKoA4s9ODO8PmLRjYqmo1FvbqbthvJg8q7SoMgZ4E0w24hr813FxB9JpK
7iEWJ8B4Dmr2ETjjh3YJ3UjGY0uv8iigASjCbt6aEnfY9JgMaJBc6jjkwuRRlW25n2Vgi+tvx1P0
kOjdiI645Ua//HrAp3JOMwFoKXnKpY0L846TQ2KWapHcGTn4oROj9E6ZQ+Q2t8qtq1axxTSvszkU
kt4PNtL+T7xYq5rFGOcELwaK67cPgCtfEFTJft7otmIKOExpozo1ecohMRjrg6Sz1pXTIF+0eWS7
Y9vv+PQsxVO6ctpczcPKwHeVLdmtbOWT0yvVWKJJRxWs6jhu5dFRnVUQaxWEjfrolV6aRN4lrTlD
I13WiQZ7sTyxYgnpcRvSPd9kdMnoDRquaa8GlBoJeIZ9r9IZZ5tvNnBZMOzPYIU1M8+6MhahTij2
fy+IJisPHp30+GdpOxbx+E1LNZA8y00gof6e3johYAscUAwsz9hFLuwt/0TJ1ldnZArY7+Uitfrd
kPfyJU1FNM/n7PCXK5QZshbm0lx1rAOliiR15gdxidqb9ZzPRiV3kRIrADuoIAYDXPptd/sWuJhm
+HrbzE1d8n6PNKfSEgficYIchBoJDzC0AO9JAzEpCNMlDwZsSvw7snLKtbozcUpd2nfOM/7hXz9+
3T4nUmRRca7fi8lgR3nzLdYQg5+GP4iJwqfvtU142VABuG5D6c6bCUh4fIKSO7U6dxtVA69MhXKJ
a+oTS+FPL4Gcy8RHTOja/D8f7Wx6i4wQYXGZrG1BT25UP5Jnsq5UYFtffdgihYuACCAasAfQeP0u
tSLZ+0wcgSEAlA6lfv8abVup8y4GZxEchfHh0bTUj+Vy++h/sGjZBOrQYMAT0GPnLCqjcTIEHrqW
D8rGuq0ixP/5WB8oDoyrFqg+ThbwHuWp9jyNI0Fg2JOze+V3OFuqOEex+KVxIFTarM6UD9P7JiUI
Q0lOhZNi/XgmwHkO1XU38eJ1XURWPKlbmMEImFqH5m50uzN6Ojz4qens41Tp5yxBPtw/eQSslzbl
r/KOn8w4t6/fX2Hfsyr5krD1RgHmiPtIT0XjdqQXGLEt21nwwnaFNg+EBvXokvWPOckcr4+W4my7
8oS4JP1F6eo95uy5uFx538mFL8OUGkrsQvl9sBscFGstsk20Ku58XUUhIEJb1TUEuazaoVRR3Qmp
4AG6HiUILxAwgF2KXEKYwPQTW0Ug/HcdjQ84yxNS/PQIBrRJ4fDbOohwaB9z0x87uV+qhgV32JuT
2R6k3Dtr6D4lAyPsUswwkouuA3Mh3612qzvB7d7Mo/tnRCnYZPUVqYFyJzbKysSqknmCPst6sWCa
mxY/l8ZDjLGzX9JsPKdM1GtXnC9BPUAj9TtC3IzOr3U09hY/ILa3aQrSxpm3E5f2wW5h342tgqp2
OJmNhH0LC8ObtZ6yZQP7//CnnI+VB0Hu7xFxI9CV8Xhlk1xWCXHllxKirKXDwrDGidNstamUd4OU
Tf6Ttqv4+BR3SuPqn4lWUce9bKWIv0Ddnq2Jyio65i8lIT/s+UyCGFp8YKRKMEfNWkroVlvwYkLW
WH/G/TpnoJlwaWzgcqMVsSShJsiCIfP6c+WUmvvy3gTvlIDK6QFu7IK0BsOgIb9wYWv/c6I+Jw6z
UFjan6G5XC5OGn+/7UvzY7B1jpi6Mpn22BbBHvgU35+RMwTIbcqIGLd+Tl95rgkH1QU6KlA0NeHA
6KI6JEx6uOiWIBWvEfyTNMLmvWPLHxjg6yx4gc+Ikq4qSmf4m9+aV5OA/gF7VYXW1klzHk9fGIqP
32ogmYpNkQb3MfsqarWcWW6L/NodywymlsfGDSACv9wYRmvborlKyF9Zl+IGbkwJQz/QgComeaAT
yG4ztt6Wy9MWXnrNhRseWPjVPrEFn/Vg3ctF52WbfLRvvrJ8P3EZRJdbzuSyYVFPXHUD7TtjT+K5
yMNfiWuk/BfMlePH9mflNpllazJezmro/ssupQNNLBW1flzuGa9pDDayVglf4+ToT4fiOX+NkH9y
0dTS29m+w/aBRR0qx2f7vWso4BbBRzMU8crGZXDoxMuaqPmkH7EGVWJnL5iEZtzosELi2gpqVU5L
ToCWoNxybZQSwGljMJGaiuXX9v0dS5Eq2ZYE3fW9opzh1J+pKqaRRykxgg5oQFuN+JDg3TCfogaj
TWrmpozHA5ZcHTkV8Jpff3LQhfX2MD63Mb7TnAlAATxI5qgAEV1SZz82lMxKTWkbWvkqcArMosxh
E8qbpIwPxW4aogLRkBcZ89CMTHSfe892cCiXmr2ov28RP2Wc/RCVxiaVm64X3FWoDrG1HluA5/A2
9ky5kNfR8FqSVGu4iuyTeVe46qgRTENAzOGOEQ5VVa8pgc9voR0YAm6vGiCHE/qjR+J5hKslMi/i
Ds6aFNfTsICCSG0k5rPThB014UVCK8yjcyH3NHNFRw9SOSZbsecyBbileColYtevPUZbNkV2ozKc
E0Q94r8nV1nQqRdVP/QiIYUNSLrlD0L//q7hgLnBHH9c8C1ibZVtBReWG0BLDHpxVpUrWOZfOoQO
aNB9nw3pSsGycbrUEAJpo88YNHgf5qu3ChoHIGWehOL86FnhQdIHyA/WG/WRsGXFLSJ7YYcYeWZN
iispP5jnQQxFM814kexSe/+ZaqntYNcR4FKoDo1AxBauCBMQYilsuq1uwaLaiMse/dMpyqQsYuOf
LCFRRLWGVRsNKIkM5JOV0gYoBSHMqwdn48hYveXCVKji0aDXkLRIZzbhS/j4KlgY1GJmZ8ACBYcV
6WKeR7diuXHG4o2qS50Al6m51Moa0ZgvE8KU3wbDPijHu4HLlF5rHfSV9O4sBxUO9MhMBGttA9lw
r9BHRJ9ewKcO+JFXtKN2+vsyL1kOdTGmsRPx7AEzWeSASDvWzA+bEek2wGaUD81/ba9WIL5/cP9i
LHD37y+moIbeifIUPx/ylH39lC3h1+QhJAX0/yoGu5SkZ8snMixwW+1aSIeh+NlBc+P/pDDVAGUM
1d36kctkkowL+OsNhBL7brsd0iAOMe9d8OOshl/V1uy4QydjTApreTywZtxvTcycWBDhzeFHv90J
5qTOigkfQtuZLLDcAQqkQa8aV8UTMCjax+W7yDCnx0HAgHBKU0VI4f+x/+ybg9eE+y+nEMGsT8SY
2umiptOTSIy9XDbfnGr32WyzWU8s2nFvOcXDaNMRXw6QMhTxkMpi60v+wX9wF0JS+LHcndR/sd9e
4xzXGajydVSmzdIr5lLdwpivE4M4RYHEV2m/kl+XxYbL1JJnmtLlI88JZDfLRDz0Po26TVVBtQcn
u5VtfXs8snx33AbU9/5tQ6MRY9r2imnmZem04ExhlNf+9R95jGtoTSL+SyHaBaRjJAj7X6TcKVkc
a0/Ybe63gc8f/q9phoydOXP/0LRWuqy792ytyZv5tyKF6iMPu4O7dOn3KZeC7LB16QQ/UBMJmEjF
+srRshG6YdUTCrI6T8EjhK7z5wGBtsDe0lGlrkjIYMjWpTuYs2QpiNTHEam3hnPJUg0KvM9XTdHO
XXorZubUjrJqEUI44uCgIcipfHFv36EALLElZMAST+n2HqzUKdqE1X07EX7Xkr0OgPOWxt7a6paJ
g9TueRFKE9oMEJnALIgUUDw/yiCTMgA66ZFxZFde2j1GpO/3mS5LtbDWRFmD5Ya0l99ML4dTW4ef
yDcEXLBRMfe53SPaZmYOgzdhTuo6ksmdXYy+1u6otLK7JhbkdiCumZAgC1ZUjr00tWhpqsNrh4SF
iQMTbAVpVk6GFKUrszon7hsZuSgObsSSKLir6TnXGuNPJuTlSBb5MSEdVPUgDewzvSXTZRG8k4if
4Ug94dM1x0Qrz0z3eHKU8NTiKWveArIxTGacGBtM848/dhHPXBQ/rmMZMObdYg3iMo9gx9QAQJFo
9gXoc25GQJS3EQPleYZkQO6/gcwgQ9zIf69LsKPlKMu7r4YMb3bh43xuk42NJotDMrNoDNSD6JF+
IdZiHBmULuU+zV7F76s2IlWE7FyKy4wWgok1O2D7p1UFJaw6AlgWtf4XE1UnMsYnZhnMgIuMpzGy
ODyOuNgOhPhbpch2piMz4xMIlloDxX0vi60Fh5IZccuoknZNJHdfSL2RYukyelybB3z8UaWYYk/j
dSjpN8eGQO76dUKf8X7Rw0CY9tfqgsQC2KF2PCTvlSso9lBEtdI9mlO7mChqF1wNXx91Q7HDTeT+
Lx4yqLG/gwl5eq7g4EhcRrmrKdP/JhpSyWJMvKD2i/z4nbVzRJV6IjvtC9cT+YpG9acLHieeyo6E
g7MRnKj4h5yxtxEMAP2dcuydDCgRiCaNR6hmaqhLPTD8jrEHZqYLr9RiuqsQv7gM+7BG2aNYrZ1j
De7JU3nWBiXKDWNFDEFEgK7D6KOXL8teRjcx+HJa6e/msrI+AeEklgMzcbrbw/hyyXcDtJKrTvoW
W4S+cmU4epVr8RshUTdBvS7nIm9pWk/XvW+0zxQJlxkOpp3Wx61C+u0G7BunOx6gu29NpeRGjvBo
7QpRiexS8kswLZNYr4JCcoCJUBF1bubHLRvWr7Tf3XrkHq2SoYTYE0+bdKBYr2BJkOyo9lScdtTg
Pn7fU6pMjou+WttycK/EiuIxSEcoQYWbZyY/B8pXz/t4aodmJ47YixGJtS+YAekU//fTS5zXUo3o
6qrfQa2UhrMyN+uQFxfvNTwLzvvUsBPyd/N9dnuOr4AHKWJ0wwCDe0XQ7fWTsDDmzig5fMn05flf
W9GS48A98FAOBFfhYyqlpz3l5NT+f1Iq/kBA3jmnHl3zJ81+5PEXWJ/934nlq6rJoBq5aFrywe/R
6DjBrFXIhJHoMwAJQP/T1q7vy6biRLPwpNtO6nxzbZwRNULmd1103BbGyXOLJhv7bDC6B+BsoFHF
M235ZWem7Uadpl49NzrZ7QKzB9wtJnJVVP+o86LO376poQZKgZcFP3Az++G2iJdw3TV3ED9MRrUg
+Op/y37JcQn96GSFrwHtow+wMvlDvMiwzeh+Ej/Su+BHNmlkX4jhEmQqcwDgJPyY16p/6K/agOBg
jPv56HKe2jh0xeX2J1CD/sJMnYp9MRu1ktvC6ooRxA0zozXQcfW8UMu1eHcdBUQfy2GGcyUvHfQ7
lMTJ/Frlfd1+dnxIa1hw3l4CWQLx5NnK5FMZpsYUpHvrT9/oJdz39zBk3K8gM0Koq5sG2Cc6bkrp
fmJZY8HlIsnSVethrhiqK/yTq5U9f6pMtEWAlMXef2CO6C6Mek7nNsTY6bJ66dNNfUx/+B+H3juY
gfqHxqXlaFWuSdKNb+l8XcV3ZjUGdeRTdDOlNjFkJv6hmBu85/o59InVxaHDnpkxopuOqFLsESPG
uXQx3+sy5LQ6pGg9jjMie3eP2o2bVajzS3E0ZrkagabD+fygaJZJYU7c13+bZs9c50K6aLfGy1s2
tbBL/otkmVgx8nrI3A/mBqxJ1epJx/IyOi5mC0zEq7QhGV0+lsVTYZP08oqTZMMjZJgseD+2+u2Z
My8Fjf/8LZ4V3/tNWxztomE/9xExQiPAoMWCYuUmtAgY/5rN4nSU/3Xc1wKClV0sZUbOmeU1ZTVE
LHxq/AgdPIo3jmjh9zkuHdtZIw1YMN5CRH9aYLLaSDCifDi6nN2JT1Nie8Bon6MRVRvGWat8MXw0
RLFyoJhzoRUl+t6EdbezP9W7Ly/D7eRX2493utY96XnBDDry1f5KHnFlCQEyGMeHe0he8KzpzzLk
2ShT88FbyugkJI9iT5GxhWOSsdpcIn8S1DyWRJWNWG7VD/RWE6XTbUq+rcleturyXjfbDGuSWjvx
zEuQ+3jhNs/GkRNT5XCYvt6tM3S0mXA8zHqexl9WXU/6EgvhQegtzN6Uum31jJ5jJ4RVeFtIVZeA
WHd+qJ3SWU/la0b3Z8nwXFPJwXbPOdXmCOqfRR0TzfeFHtr9WBt9nQ3UswboyaiXOTKaZzYt2TiK
9Ybu0U73HCTcSghAgidOKWvMKD139qtgLRrTzeNu11SKfReNfjUAYabaEjN9HkXjVseilHLRBk2/
olOV9/WLqj/8FfxxpnAwjK4nvirBjfiL7bvGp16ufgaEI6/Lo6qPuE5wOBeUdn9INjfp8UMd5kEA
D0/JAJsXW0BFEh6Owq+oo1fU+WNgUW9am0D8jdSx959Ke7b8PAdGOC0AjEkUoDz4naLvS0Bx1xHo
G0/snifFfVHt7/kwsKDKsCE5qmf9qp4ANZ2U/hXEyC/oUIP7t8vU32JUD3z31eLA5jjUBMuoGx7Z
Stq7e1uOUl+rX94Qenq0UuqdHlz3jKJyTse/IfSkBU407Mw8AkebVnmjMSSL80cDVXIrQ5l74f/g
+OU99yzbwx4R1XpGQV0dZJqSMBcSAApVHI41LLJG6TgbRHL5nLnOXs+YOuTvw7lmYESB4yikiJbg
9uJp6WnT7rhv0ZeOovYY5auz5x41OlQ30q/fqD7/oZXl45/ghyaNhvJcjvWkwq4tKVnIDfZlWQ6o
rl41wEl2RGQgz7PNNA0nD1Eb/es3PSsDD09GlyzdO7cslzRgQBGNWUFnueTatiisiO3eOTs+3X9T
9B+A+9OEQ7j+RTAX1hBLaRigffRldxBO0TU1rPFDXIlCnNOMvyv17pKAyjAnEn66oGccADvyrgj2
ykXvqjSf4rmZHDKgQr2PpuLVOTIamAWAj2Q7YyU90uzeSzU+1/IQtX+VpC2QcWLCkT6LaAwdWW3D
CLm94gj8kkYZSRcoiNIyGmfZd8MesBPnmPYZWIJ21nfH1NTmRAHtRTRBzt/dKIjKqMvRfjQ3kxQy
JQhEdMXiRhqn4MmbtW1i+RmZZ/0V6GF6AcxN9AE+GglndxdxM7/mcYMPaKyput8EBb1Csuk8EIQo
CgINs5N0L3+kb/xHXC+MQHW2llRWtQV4pcSU7XVlow7RKjw8BJbNLmk+w/IyK5d6WAs82bWoRmL+
C46mBljyZQigNplt3Ds/h+Yy09I8dv2faJc4pBBwPKH0H1IYA0vtrXnnfOdazZsz3gEBWe9R9g7o
3qW976yEdoVTMt5yI/FGMSEKtR0xaS3IPZE4G/BDaxsSWLy7+bCarn5zzy23ON6Nn5Xx+LqZVvOS
gio7FtTkQjnqGYeDg5lED+gv+RuB+LFO7NqkdzC892xLplhSVVEKREgMZUmMmqSSIqupwgwxFQxy
wCX4Z0B35+KzCIGiODiYq5VfOnBCaOMXg+p8CAx5yXZnhn2M78ReAMv74IzZuhttDg0wRJWvl6cQ
bIq4cXqBT3xu7B1RFrbkaZ9ny6QAeoNQLSs/kZqjhQ6KHTgGodj1lv+bDVv1WiJQ1KCstiX7Drj8
+H6R7LqYaTf44cVgmEWphdChSX2j2hoQ7bBhB/4Hz0XERjKI60Ah+mw4i/qEgLMLPvgoA1MPN7u8
KndRnRg8Dr5ehp2ob5Ys3nRig5m6N0joU2738t118PnNnjMxq/0jLzk7CTLjJ5brtXyxTRGcWQ8V
OwDRyKIwHuceG7Hr1MyaPF4OIuJQlULeKx0UMq25uvkri/estoL9AT8tvY4ZTsYQpo9DJDukFD0p
MjQ7i2b3WldjewSR5GwkYQOIkImajS0QJ0MSGUDdvbAcULgOL2XijhfxrrH3DbkWNGrxWL4pZlbm
fI3O1mZ4zfTiD/wfQgv/OkdTDZCCYfUArbmx9YxEXdINgem8NcwVzAPISZPWaGHk/u8L/PF9Em8w
cRor8YYNC2Kawlq3eF3XlS779UjOg1+VJO14A+P7z8RqX/qCbHA/esyznT/DnejXl0s3E7dSaGUN
38SamF/YUEkdCkJdtx/vcRWYPJr+itpdQ/EfIsPDH2IEN6GP3oGOARwWHkYY0W6M7etPC/HQKpS6
opT7QfTYC7MkWhntB9u9mIlyRH+ZtE/oonhJmRNMQbirjVwWtWOJeezqsKGo8FIhRuGHhDqe/Uva
fOmg70VKJRlRbtZtH+n+CV8UVs8kKraLfdDmUxOByoPxZwSdQTpi8gOX0OHLC6xpsgG60mAM9tto
/4zFLoxnDhA9R25MKA77kQzwMYGugmyOSE0L4kU37wSfCic4FdEhzYkV+qH3ZX/WwGorZTcyx0O0
ppecToa2tueZ0oDfF5h97Y3P3KU/KoEfQLJ1eocPCixSdyq9SYxHupuNU1h1fy+PVifN7Ioawiql
kGFX3dzbHX3Q9Kexlwt4dF95wuU6twtYUKIV2P0FMg2f/qMnQajC4JoO+bahORgK8jg0HWll4aRI
H9v+nyxEsXFkn3dTAeu3R7xBYrJeug+hHanHeHVCzA4HVAlxhOIjvjrv63bmvZWy0LwhDQh6ArB7
ZnzhLHHQsRHQqupSn7Egz7cX59CpjIbh6jr/W5SUDC6ecmk8aXbJalCVpY4r2Z5B3VeBWAKb816j
bDw90GZw9OD8gCtg4FGsOlSuVxLeudAW+A5MsMvaTVxbXZxDOsS+5lckkZYJYoLhIDmr92hAPSvc
k/TmIqR91DaypRkAT6LIwPU/WxRsu5RRdtcHrpILSOw0kfQGrWWdyV8zlzOj78LTkcOPnx5ZakYs
E/7ZAennYj4db28r2tDYKLM4JabC7RSBTCgajOUDtDlZcmlsUDPIv6Mcelbu9stDeXcbhUlO9Mma
Z2abWGs/qNujZw4zi0kldeC8wbERMcOsXE3ducdEstoySweX489qYbKhXZqp5ikXaI8gyFoX9Ave
3W1XPxp+yI22ZH+eUjwBsrg/SKerQlf+meMlumDr8vYNCo9I3LQFJjVQ/63lBmZ6Ezso/qaZcXB5
pIpF+IFc4rMYIdtCaukA3V0i7e2KyAcpfAXnkVqR9pLXrKjEUYoUzNqHeAyl4IumLUkLOJP50LPK
XTn9kHulV9D+/nq1Fr8rWP4c9l2KsL5fkazSaY2SjFoP3F8EbibzUdHUWnwsbSkGkBbujk2FTzpv
OAU/0pSD/RlxUjPbb7YJzsZPlxNz9UHK+JEh6epAz/IzMD04C1KHPFvJ2uWnhEB/kDjbKdKzMRD/
WCK+zsuwuKzUGu556+juvt0c+DZ6KhCycXKtDwNJzfBcR4574euG1iY/2I91q9VYXd57iW2FcoSm
P8c6bR6ToAwpdhz3SSviFne1rYeMOpe4EwQqCpEJxfCaLjpRAVI6NOaLIpcdVW+ZT0u8DHJ+djBj
XurVvfkMTQ45SDZ5XmJ3t7tZkftAXKgW+tl+vhq9S3Tlot8sbVo/pmCecs7/Q6LFsfb4NgiZJrMF
BF0akpxcpqLnm/7JQb1Gqdj1oaZwbjTMgKD/GgeCF/lk/niLFhJOTPJLFocxuZHHIOxUMmUsbGma
xq2cU5O6bf3yY9bVUYpKvCcnN4B4NQpVKuwhrsWYeX5Ld79H4vWcq/JNLh/UXZdug8Eulv5JtClN
c+aiK5Fa3cuJ25bLDIt7ETVDFEJTYocDkLOQO8JhQ+5E5akYSZYhdxgQLpEGFl7iOIZZKwhxV50T
qaP43NFrYlqV/eZ840erjBEGIko1e1QkhGYWTbgYv2j974awg+InzpZG/wmrnFXBt+AM5M3m1Wt0
agawb7ja1ptuDeB+p8wx8vr/pML1mkVlScU/ZDWV1//mIRtK24ZMHfP9SJQvAVPCqcsSGV+wkKwm
SdU5JrAtEZpylBdoFIiM3jngpcApiSBSDnrqottRAxj3YXDOGGamL9nZ5fh/28okBWa5cBuvjoyt
jbmwfJf/Ku9J6JKj6vWGDx6cVD2Oou5yvO1E4pJs3QB329j+af9pgmjTDuOOIevEIFhdifX4w3rG
EHMTTc7+DUy4D39mbxGheENBI48JxD5IeY96bvVrIO6KH858o3hkuez6xKNISSsv2x6eVjcQtkCF
I0ihiwjuG2bbWHMKlAatcGrMk5QZLfbV6u+nVXAx2/ulPSyV3yyFTK/z5Obx9unMdbXlobjjl5rD
zY0eL1te26zzqcuEWUubyROr0kR1d1H9psvVu9MS9cAlaTmJqsmmaHI+AalAFzh5ScszhvJ0guKw
6Y0D12LgKH6hHCCsSS53a855qyCrGmm6OR1sUvzQ0HvpDqVNcIYEPPhDKxZuoVZIIqRCxw06OHV7
etGhZQmDwVBcQ6oLc6v8LLwBh1d2EnFwG3i/8SFUnDfbHgahCzzx+fHSbYudQF8iPu8SlGAHHWn4
9TaCo61l7e1OOkWVaH8eqQO4u7p7acASMZecU8asVILn9+T25Niov/vYme6eOyCiqkJfCEni60z9
GZMSxHJbzIvC8zZGsO/HZfo6rLqkBlRjJX+hFBIO/55J7sVMZ2WGMr46iwBbi/kAWOXY1SsDKutT
CKEkegrbOFllHqeO8aAFstlUpZJtVZ6ksszlm6cWXV5hOMnHBU1lHTjZqxOPBR4nS6O/Mfpm5LzC
klSXH+dKBboi4K9c2iUpCg/pTlHR5nip5sdVt1+YUIJnsg7EZAenkz4TC8UQY5349g5XbsJXBs2a
R+UL03SKSyODbzggqaL4brwS4RrNASRIDBjG8v+leWjsm9n20DTg2PNtyCI+lHoTyorb2/ptSEQv
Wdjch9VDib0V4VhYveD06P+4wh1FlxivrW/xkKj0Ic31agiH25XaFfYUc3hgczVTRVVlilIeaOKc
LD0CXIxyB52MKE4NUpH5C+T1dT101JGI0f84xVGJT6zKpZUwM0TGg+7l4U5RUK/UIrcvE9qxNtns
Wr/XaNhUGSsk+XVSUk36wNHT9dlV2YDECMtDGqwd/Sp0iglTTOtGDTiMSMIn2IUbMbK/hM82r+ix
7rP1OISyfyP+cZaA4FabcNP5c6+YfAb6T+XRNyhz344UbuzG95rhVqqyTHbpjY5iDIR/kq+Mfn4e
5zuL/9XzgzKpJge+0PKhnYjXEcqc8dMQg1ow4h5UbdvFpPVF7hfbZin/o9sXjyxvZGSSTvOlAA5y
RDg9lmImuGguG14MKcXFxywg4CEuxLwmvdk3TaT5vYamNEirbSVvg+EG34vIh9h9YSPghSokMEik
vXYZyfYFKvCBIjyHbdx+M3FY3cSwwFq2lAs8JvdzMUUWHEpmVjKBNrdLbEa4tdRxYQr+hsn02NF+
T35rRO9LJIMuks/DGObYdMV11pbDz/4IdRT6QYcnEd4uS929ucfisNKYMMcu6QhlpavDwBxX4cas
D2HN0KJEEs6U/oPiTgBnGakbuiko+rADePoljjg45B5O+NY/Dx2wsRmqwpPlbv5Aw7YVEdfTUOEX
qg41PCNZD98M2TBjRtC12XdkpCJLt3o/f33dJxaSlKHWusduzoh3kdKZjJ2IlMijpOTJzuUzqlNf
LiYT8autIMx6wGgHAZCqeNShCLLiqFZUQzaQuePbdJD43nRbkYwARPTWBEd4YARFzuRLcXU0PY+f
AqxNP3Af4H0W8ihsWqtTizk7jTFEYgI1PewdPoAPIabqDKuH3HKlOLLb+jBlsQX9NDUDtyT8lCOa
AkVv73wn339Iab6+Zo3vXFiP2NpLAXHxd1bxXXVViDsORYjaePOR1OmZWIetm2GtoGw7LzNcLxay
jCIuV1yZW28ToLt6OAd6Q5DUTKY0NEN79DDE+s117SHmWIN27/MZRraauU772tkrOaJyUOiAJ6j/
KBsUQsqeoinRUbBXYhAOYOWY4G4qh9V/su1RdJycgNxisARfhpT6pK01Om6+y1InnCzeii6+iWZM
enSRT2qWbXi4npr2CRAUgq0bOegBPFlgZ33qGeK4GVf86EJXXR2ocAv2LMej461fnPSoOpAwA8OW
JnRkU3WekMIvp8/g4GkGemilLSo4O4h07u1c/Q41sOGcKFI3yq7wDNyeG5tvrXGmfkqj7AblBruN
bNY0R9O6cXkjU0A54crc/DihjUrdrY0c/GUxfBKcVN+N9JgZt/99xjIK/2SWjWJqIrOVizGWIqMy
39Inq6l+ZICzQA7q9su0iXuF8zxFuBC4zq0ssAkhC/MQKJWhcZ/Erg7X1KqFu/ZHeVrmL0SxmjbP
9y5Rhd+1SaCAkSogW1fty6/c/NAnGbU6lE/bU8+2u6U6/PMX6resQffaqyMSCsNty808tHDxeB/z
Xq/xTa/4+D5dO4OMPwopH/OcJQp/iMDjxm8BVVdsIUeYf30y6Lpqcvdowy/csuJjUEQ9tx4tS/T1
SatALyUhtWp526yxVXXW+Uy1TaZhuDrueM6JQUenaBInD1ilMYwoEK5eAaV9CUhKkll4RTTJYoM1
uWFbnrBZozA5NvTEA6ERF+ivA4Q8sHtpetikbS5fAEXVdhOQAfYP9EB6fQViH1bFZ0KuYqpaiAQ3
XGqsFawxgvon9ebEojDargNjyAXAvrB+Q59zBYnRYo4GMnQhRt+YuJoSnSUiz+X1WDrJHlim2dn/
OPb9IPOBc+phCTzB/COAW4WK6jtY8OOQRVDaGOiHJXKl+/ig0Rw4FkceDHkE1TLJYuPzLItIhm15
RW6JAdoHUrvlMcqs1mUO1pzopq+Q0AUDrYll/vKU1j5jIqUWNGFFkEaQoBDoIzM3WGUP05Ln4w1c
jvknM0IncqpwGiOUsbzp2FKmxlq45Dgvj3egKl9jPoJFkt2KEFKq4d+77+1wsodJ4uyCzEFknMke
yYq+enb6oVYlUnRyDWUfD1li456xtrLEBr1B+MaJyrBFqaLcMdC+rR8e/WYZsbJudC/ZGpDCPga0
1iURZlSDDr7W5awYmT66zGwHiuvlBn1FNr87tHNFNalOS2pBpobzBGF6nBVx5iiBrgYR8DwvrJDT
7vBqQV1rstUHgX6U/hSlhN1yYK0KJVELNo3zTZf9sPBCBwOu0jXPmMCEOZplXsnOipz7/W87SBfb
SJKrLRQIXHkBJVvx9lQMrZzTOLzL4YmF83ZC13blQWV/cDT20BANehs6VolRGrAGxJXIOBPSNbZP
m3bfgWVsy553Q1yKxNAlSJg1RvahgZC+kklal0AdECJ00XV99r/+hHjS6NgxPCZyRN6bQvEL5IvI
qCMfHVMg6GXk/cIo1EAHnd466PBpeWizpCJfELpfDIliJ+VnHDpUi5VLPF+ozmK+XSTu1Brsjxfa
JOckeN1NHxI9imYjHYNxE1a1f76+sDinkApb+f04KTOWYf4OXz2Q8y9UAoWuw035+FZJLL3zXfEx
Fd9AoSmvQ/vmwCfwIamUfHKr1quweXu7mSzBMzKwTwG4Mlr9+ApLi//7P7If+4FcNb2QnU5B9NFg
5bOb7oIEZD1LVOVE5L2dR/65/95y410efvio/OI1ZHfg9SoEVLvJZcYzKiay78wrk3XC33AOeLCY
0GOfvpBhHvWS0RrZddO22l2ph8WOSx7wYaXMggndUzb8qiZCSof16U4MyyYc/l+IPqvZ3KbN4YAm
J8+JVgQ58smvVraHVOnjFdwKGFtvPpts2z4fXZZ0HibdXGPQ1xDIxpsb18VJxmG8wzYNsJgMoY99
IOk4EC3Cm37VC8yqwcST9JrFaDW9Immr3+yXfGonWHNdwS1PUZVKcS2d+D6hn5Hlcejr7dqq+sFs
yYBJJkgj/SIfHj/mjLxJRYO0RQDJO8iiwZ1oAZ0KVMaNxTSu5zzrcefmCn2FhYXUFGDjlBrpEboa
5HV/5vOpUWaJjFIfUoy4QAfn6DX+T8eaNXTxUSQ1b59HbCJAjFEanh9bztf4yJ4K7Vrj/hhz7ZO4
i52KcKOf8m7w4oUnUXdT0OAvgmY1sp/5QRawxDoN50vDDLEa8S4WpBpOIdLBkPRBqBDXOXfMPexz
CugD3uhybVKd+LfyIBPmyOH0mxRdQrnQFCgPYVwKhfXi3MbQ2IMg3TAJLHeKoQXO9fEvtNLvVUVP
tmOP8xhnlhZfY4OrSi6Tb/pH/54bUFhTzgzQBRQQsRYvUtofj1zzKVGcSWTFa6581fcyxhrrz35H
J199bKRzfkIC1z873TW9XBm0T83bgueHMx2pFd4vyd8sPfSBI/TjlmYeziG/OYerfKPE6p0NSka9
mhpSAIEXYyOA0uxmTc4yPn6BknHL4URGAPXStsUDiXksfed4tY5OvIlzCGFmVJvfcdvOO+s+i8up
RR+9+CVz7/9z3Q/B4Fr13UKcpZFjpteh6Ivc1T08g6S4rVfYxzdPUTTIrDa3aV8360wr5wKd1Mti
5IRFAeZNnvwwaVA2EBD6UcuspLUtlbV70tabNom38t+4hlK4J+9PrbREXZpGLaDHQmmEFs8gX9ji
KD57EYbG6YmDqFlICWMrQU7R7vj5d5FNcTZ+1AEIj/RILnpwzLJvP7UU4R7AHsk3OzPRQlU//GGs
s0R0yJzGkU/ayIRw7PYW1UrgwTxXrQdFfDVA5BoSpb8VSAKGoQ5vWrjlfGpBYheBNProwUZta9Q3
GVCH5OTNuiDx0l1feDpPRbe/lfXZGh6x4X3Ru4+bIclDgYz4qrYzNyuvgRa52pGli/qYprNFPMv7
xxm4xknOR+8QQ6Tp7iyA8wmPAPIuqXhWtsMFbHWq4nJo3biM+yOdFIn3n1fqyWNA6b6vqTk9hqvj
fx85VRlj2pHw4qNFUjchvBFZQuoSV0QZ/Ewp5H98j2CwW7Khgg/bFHUyEA20upCvMI1iD+Qh0LTV
xZb3K6v49qoaqb2aekhw8sWvg4QcHFJ8P20Ks/AuytVXZ5zTxjtWYryhjkqrSOJZDaN0Xxvf+VDb
J54RFGspvIiaw8wXknLu5fsz8wuyuCCmPuzAVE/BTdy6BGKYqR9ODLg0z+M9E6wGPelFIaqUHhaA
awJqX1nMUWKOGbKyMiVBvbW2Kw6LSp9oNoewAa9PAphQqgFYEdKKGQ0NvfdlnRDl0Er9K44BOQOX
BShZx7/94d0Othb2zgKiuv8/FX6N656EwHclmDc8pRXQCE7ZT48ZVnmSf+Mb6Lq0C8ON3bldwe8g
mF5KrcLJO4YWI0T7fRJ4V+oeiVKkpmewphD30spH/r1rSoYZPMMM/IdT4FT+iE0+Dm3Pc1VXKWkZ
NWlpiqrKV0Qw0456YExkF6UIe1I8T4aNb7ZW1qlhV8dQVm3i264ooxxEbgK8hJ/a/jMSzpw3dnMh
xnr25zbjKio5xUFRfh/wAwO2D8i8ioTURLMNlxUaJgQmPll6nZQMLfDbOyuSPVf8iyqKW3wN84VS
yiqN4/grz3RNDPkw0/R847P4fMuQoxgvvdVJfIkcJavZQ7NTqvuTH9tGU5bvYGbCNV1nAgHyvd1A
2JWqOpueJe6FyWhjt/KPR2Q9LvOPAXfdgpR4nTkZL7nFpWQKqjDOWhVfBwRLK6wykXJRd+qW6QoP
cOmcFDjHaNb0ggQ1eutqbGmYdhmmqwjq7nE1NDqa6hZ3vtaoVT0tVfz4U7KeAO8ZW0pIyZDtIWFB
GMlIzShLqwYV4UGqsLl0qJ1UBOb2bYvp54BT1WVXQx+xjTZ0SmX6wFfdlyyZnwipLGLGJfCHGWPr
QnqYM81vhA9veaNVUr8Jb9BgskyHDuijYiRivalyBbWKsjoPWl0TWLC37Mp+1AIynkO6yA60ExGb
nHSWfNa7nAsEth24L9xISmFdXtP7saEyTi3QeCZQ6J/7DDce+hPonYqmhxtg2aIQn/dlxMgP7ubp
38dZEbFCz7PYxWrL2LjUeubZivAmmMmASbB3UpQAABNAcnP7yk55FMFGhFGXunHNRIQksnRRZjdN
ZWGqsvj5IXHQCZgUQFcypNQS4JaqqAHMUuW6D0Ww39dNglfDRSTYaCiCxjljUURM4GpDdlE/SrqD
WLUQommDb3ijSui0zHyWE1AUtkiDMQSRZ+RRlFroiyuWWsR1PDf5CBdEQKeYeHaw2pmZvHedB5ln
eKjwmTkBiOhQ5NNK07jliOy4Paj4SjvlLGY8q+dQlIsQSndT94y0yZxnyye0HvGjDxUUhRwxeYFk
z1eN1q/ftUYEQtdn7rWf7EyDMbDbUC5W8xrP9Tey7XvlAqTAmSEevJ0ozEoz3Q/qiKQcgHTi1qxu
VRQ4QZeHoWzr3/G/w4p8im48zBtApYQ6UY13EEiBF7z2xd7xZK1J+AvUm2BY2fGndo1UsjXXPL/Z
6d2hEBFrjyPKIM8U8oDaE+cSTTOCdfBPEsOonnH8DvTGVTZWltUc2BOhL8mn5S13wnePehm6aWIt
sj84YV4lBMVK1FBN6Yo9o/LDyR/6juyQyEDq/DkXhFgTHeVLeav3Yaw+cKWydg9QseRC4ncbssYO
/vhRWyRljbQZYgrOMKJmXcGQvsxI5Nar6ASCjY1eqXXvQfOn/SZ9+7UxkXEF/yYcItB2hhlj1lPv
1saNdq3atwi/7W6aRx4JbFyAA5U+nhPHqUqUeQqsVAb7ekV2tnCC+U/Yq8M9h7erRDYsPw58jWUZ
/DVQT0yHtXVKTxR6XgI4LE6Fl0CBFmAHNznKR82cpb6XeATbGXTosPt31yoiuA+5fLpMig8jxkvp
+KenvASITTHedNc4oiLvnfqyTTsfL0qro6Qu7x6PubNHQN74xM3ieHaT7SHuKjNntjgCWdqSeAIr
V7zui0+z3kVvrT720WplqOGz/t2YBvZm4WY5ja0fKt1rivjG1p80YLED5UaSzQzZRPNj3VYzVxAg
FVtVYCgyB1j6qFFgfIhiy2NOfDjYXYMWNLqONRrXgXfuuYJK5MOsb+ngsRG2sd3uRwyoiCqSg3UC
IIqD8UxjKadNBM72Lvu6UJRYVFNmFtHkRmeLUgT3Ya9lbV+do0QajMKDNFYy984LIHw9ZImM+BzP
2AMq/lHnfC8tJ6rI2EnQPBE5FmfJZ4D6HawkTl8ONt+Jsv613wK550GziDHWO2Xt2mktAPV12g/G
pA/Atui3DRUEg4J4itNror1etaTMDGmMyVQXLSFe+iAeXQciDfHX8an+fSsddj3clUKhQY7UCE6r
lv+xcziLBLIKOSagu9EoThQ0Ji1usfYxYB8OTvQq/0w4vbDKb+nuJHSBiJeZa4Vru5ZyUKwZirh9
+vRADac66WcW+bB2J0zarpYHjFnrGzQjwinnbanX6d8GrxAb5oWVJfxhMwEk7UFdDFkFcB1D0nu6
fgY6Y1EWvBsdKsT7F0SX2I9e2jsO6tlNUPH8UnvfldP7QTq1uKnM0gHySYQHxdsRqPCdUnNnlO2L
9OOT0nUWYFjPSTm9k/Rtq9Sg/pCRLi9sAGBy85YNTVOeS57wnkRMzHX5CnIsm9kUq+b385RGy83a
/n/JmoqMOE4XonDcyn4lshqIlfuMvJHik0MCbihmQbQvwejII1vARvMfb5Ac8s44RX2quQl+s/KE
vfWhG7amlOyEc6Kn3Xv9QSrkIc+TYODN404UyjREq3SVk4OZBhxWd4kNyxldC65XniwTb74e2pKT
RZjz/5jGYtCwMkPAg6RdOz9zDlWDeH7VMTsrqIaJDTpqpwgLre6w7zCa/mG7v2OQO6Lx0z8OidK6
ZCyHUwGqC5Lx104yOl+RS4yQRxCkMwb9I9Mc0cDXef4LQJ82YP95IRcOJWGmOm1bEmPLC+pWBNJm
6695Y5T2CxcUShdRFE68yCHAg44MCVpr+JeXpkmRHr0NytMNwQCcnvylIbJpKL4nnyxZomMyHvd5
8l31jLnotaXdglYnMvQxgaSCDaA6Bg9U5jqWJKWNH7Aq+CXajt9ozTxWIWm/TNf/C+GY5OtvBU/4
Guxw1efjLkgELoIfkTx7ML3WtBo/lmZ7qG2vvR2LDyEvQy0ckwJ6U2ZO8ZOy+Adqc/QOyAlCwxUL
1QeK1FbQb7oyvAta94P5nOjI5gnqieCnRHGfhWp+6DJPyRRrTBvs2RyKaolo4KkSc57/qfwCBWnD
dWJWtdLRszbMp9Tm2PxKkiwHqSwD0/PxctFk4j+ZI633E3vwupsIlzVKxhaEBmDdjnIADy7eslPH
qx1be3sJQVfGpqc6EH4AJQsVHX6jiQ9wl199toSWIa1KficpDMrKsA7Zl/o5MVp0aZgsiafQZ/J8
QLEOFtHGahYPr335qALPpXxpAAD6xkf9NxZeXirEQuO5iYDBEGB5WUH5gcaoW+Sh6dtW8Bcw451B
x7A7xGTjjHwhHeLpYeKTrCojcZVTRAD7Q4FAAMMFZLvkdRCGgKc2+tg8RPpUzIW0lEqGdk5HvIH2
7itI/Plp5c6rVLTmyIiM26ipYmDJSO0cFsp3WfWuhnJjSg77G++bbwOnqAYZd29YpRcF5yfLpwR+
06SHHIeGokT87O9/1irtPMRWnoqWe9dTHAURPf6JliQWmVsWxr2cXaAEPQmMPmzXUw1FZTZsKmXy
Csk1rV6cXSvVL5LwC4j0E/xbixY/WSacfxs5nvbv18lOLyk4QCYkTWlaPjsCTYY8Jv6npGDrZacd
21Y6R6roRwvI8q7onkqqpLnGXtf5/fK6E0XU/C83uAqssYrrcEVyOrFfG9nZ9Lr4qPob9/7Cz1XY
jgaYuDANG3Q6VS1ZklyoTvTajgDjJoNkOHVh5HFIraFXJUiPIH34wlRniSSDS/arLns7BzLj/MM6
zOVQrcS0QoajoaS0LpsJk0WOUsqB2W2e7Lnk9xwvseFzOMnUkgmeTb0C44wntw9uQ7bwxA0HtdJK
CgznqnR9pkqZ7TLC6WQOsnsmmOsKEjY3Ta4ZcOC+N9brjzm/iLHcU1wuD25i9re7t7GYOnUq5cI9
qgzykFEnF0ZN+zRS4q7WOl4fwYDMxaFsTiB90/XskueNf/4OyjK4ERUWRMxfKmg2+xprOB5RjTt7
bYsMMa3LJ0BhSOlJk4kIZB1xEXOMCdfpS/MDUbnRlxVsvw6DMAVYRb0DaoucfmQGILUc+jWSkv1f
TSAIZWcnvwh/c694AK7sZh2tIt+1A1arw2NfLC6K821TFpWtMEmj0LbTRKAhnHeyRRG5SLW+3C+H
ASYn5vgS/QdfdcTnNM5NFyLYdnonlICFYBNSCuEuQ06W5JxdXwOW7iX+k0IAsw7tEcae5fhXZibr
EIpWHwvy3chPBFdSK8ZdyHXd8jDxy0wmeicgjrJpWWn3T0X8j2VyJBD/u5u7H4mBReOsGVFGt8oy
uvh3ATCmmGtppcont0WVIBnlktLHlSWDRth2cCrITwdu68C5FezaPvPYva91KjrUGaoH6/Ov0nUW
FWHfS/Fh/h3eu6kOvCBD+gUYwoRGztHjmA/CYQcUmbykP416yBxtkbIatvpNJ/ylgpSssfgeufNr
JQFv24j3oqUpjrAP7TZfhhmTx7ccsF8RQ9+X0FYkn8eOzyCY13Dq2KF2HePvW36Ihi8R4urEd8dZ
c07OvSt4oKIf5MdbjUtaSR2v1wj4zRUsakzkwin//Pb1WCXJKPpvqAqm7TWGucHbRbiAq3MBoAVX
dCjAZBXJSVlChaEutTL/9rrDSMpPrFss5G/SQrB+zU1rP18QdnCpEDA13e67kpsh4WAtZ2pHhRtn
rjvfw56vhsh5sKp06Nb/2DgrZZdZwg19o0LOVsIunHENO7UpmKwcOvp8crNB4naARqV5XVKP4xNy
g7DW+nGuLrPVlZAOIKu8ACCnoz0cd/LXzVnCgA4SubkvvCXCd0kJE3V3Lwa61HLVAnFxs5sM9/5W
+RZ7h2knQ2g82hfrpcqeQgbwo4isLJ4t+RQhInzWB2iJM/EoQ3clzUv3czfqGIqiiJUr9gvlO65R
cPOKGrMYb2XWghMD7vtaN+zxE1vQJAk6iy4NJGc/WUaDFxzCX0ISmjllWTuJ28i3vSI2LQdh3pKF
dls7esaG2BNgbqywmAIjpWbsJSMP7hWMEk+kcX1OCW8KA8ieIXsPCHYxiqLEA+G8fT4gSSPddW9p
MaWniKIG+ehGXM9kdf5e8xrLJWKIdsCpYQLIs5sC3MF1NsTId5DurTH92gsCKwFjJGzHc1a2STlN
SNbXQQHDCPhmohdEDHzb/T11kTs1fX3ZSyof+phkQ/YAfLxlhRJ7p9ev76j0dWcnfPZNzVd7zFfh
QH8nasZLqNl2hj9cWFD9Fb37EAL8L8h9isAqvWHx6Pweme0oe41PyVenNV1iMhvq0z+PuD/Tuj1i
kxaMB/cUvC3dNyktDtoiOVmlixVJAnTcPNbK0UEptPORBJLn8d7gwMl7KAnO7y/nN828jFiQh15x
dxF4XDa48lwGfxNWfbAueIawIWzLpxjlsaA2E2uB7Hz+cValmmxn8Gh7js5KPsvfPimR4qN/2Mc3
b3VNTiRdCM4NobAV+uNfw0dYp45t0Yrp8owFXOWtFYmHLKBx7JoFYthogUBonNhkzfOawvZQgAA8
NbWeAHBQiroNM/6W+7t0nL2f53L4kR/Ew2GXZlrjp38TdLTIxUWgwInjNQ6bIsjuuYJDaU4aqYup
GdIrB9EUhTsYn9rPoK8RPCKBJdkIMgdAhM2v9Chn3UU0F8kxyBL6cScwNG2alxs2KigLXbkbkP1p
eCpfvkO9ojBxiWjOWjpVc5IPdnQ1FM9jpww5hnmoF7JyGnyilTmAUjZfHSLKolM03pa3qdSC/RmN
aPhdtcCaiQAHYb6CEh4CYbUMiLehjlWRs/k7FDGgySJM9N4nOCaoDM0GQDLa5m26OMnn4sRgjDYZ
Ch2jMnbXcrj3+xAOn4P2slid53heKRfrCFqQp4sfiX05XhBqi9r2IfxoPnDldXOiqpxdCMpbWPDE
5+6iSJue1XLHJOVuQakXjk7oa5Y0YTGzWQGX5MBesOAoMjfvKeSvcT14Hm0wfmIH1EjMn1lyJ7H2
grmQrQzJEeddEQDQknAp2ZTvHeZrqai0aFctasA0pLwyn1T8n8bKnF2l9Ja68NjHOr0wTBS7W/2h
wahfD5H0CnydRMU9Hw59F9qECD42pcPuE8pVvja9tgaATSYtWQwLoTtIQO4UVpoNiLEmrJe81ZyO
YyYl5g2ci9iTHB5wbD4gG+1wYggaEPpUEhpWeT9E9sFRkjlcuLFYaM5DyFpnZ61Ggs9al2EZHnry
HqzJpaAUNgk24TZNDhu3YHs4kY5kdZRGcul235PGL20rp20BvWsuEy0WoR1AGC8wOI6sVWZIH+ge
mqmx0VcahFm2lcGYlYVIcbhgoEDCJqsE9WOCCeLjEfvUDPIGwFyScuktWzTfMy4c2AxXQKvslX8s
z/VK3WQkcXiRZrXuYvSk5agWZNal64UNud9Hnerl1nXluqlYJcwFgmp/8ZBKUkIug2e53tZC3Hg/
xAD3ajgHwH8ggnHdDoWELtkkPPoGmFJ7RDzjzsNBY9ooJdjfZwL/4hIBJHmYgE0kpeOZmNMUhZmA
L6LnI+4u7OmNRjnxNCeLO9xzS/us/ORYgTjDhf2Vep0OaaB1UQDgv+Zil85hR5XT393N2DW1ZIvY
TmPZZzIK7fDedYBAtGczoDWlogitdAORAVUqs66g6UePf8AFrDGAEK5T2OBrcgBPq89NFzKpHQZ4
SBD4mUSUOkYKRbNhRoxBUzxnwE03aYP615RQ/SSEl+G3gIMRYT6Mt+Kc4cFYY+rxzT9i4jRd3+c4
XVg1UwNQakDW02kvkgJNt3d28l6YQuPT9AKJEt1AJ84Gp+acm235TITtp2yyLjGkMXLja9Tcde8K
PkLLnJJs8sqMiPHFlf76Jqns3VMWJXMq0GGGUdiV1WwZYymh6lxT+D4kJjA7DSSPC0zCEyLNCPm+
TX8tSv8jvkzbp3jDBSO4rTvhkqpG0/NKSQnObbpr68VocVL5rRp7tKShW461s4KCm6NBxKgxOfis
PVx1Z9Qx4efZT7HRT4h0WvkrsLAQtUgagEtsRz99a5/Kmp5ZLmOliagIuMTgN2k8eGyb/h+9jFrl
vkLBago8clpslUnKlPqzpdlsKrnJuR+W8rxTuHbeawhGQnaHT0/9OK2i1JZzYKK2SgyrFfF+0RVM
y/plqXGaGLe6I8GrqsH5Ka/lm3os2947httnRwKGz39reRJEJez0HKMLr6Xv2L9oe/iQQ5y0QZwa
CYgivwUrdtPm5YUxML0D99lHrqu52M3EsfAFnSr6eP3pem2wPTkfe2uGxHlO54YoMrSkuutgewe7
UaJ+5SFm4Ru7WbCvxZkCT5Nuw72qMblfOBJ1FlxmpxpFnLaqnmIXQciEFYaiawDyq5DDEQ5+gY34
SGKxg5ZH4X8xs30RwgXcNKT3amGBw1nRdCU2CdSq4FHq5D2T/UhN2sqCNa39GcuR1eAbCGVcP1FW
8kE6R7hNmxGIn0Nv2OYdPhkYZrR3cD0vsEPq5RjIO5prRh2RPVBSK/RLRgdYJG8HsNVdHBx000Zf
TnqObvvlN784YaB7F9QcZ3u5auxl3qN/wbRbx4hUEb2LUnrvAmKKgATaX6YOzZcJ9icbVaygTEBZ
N2HrmKqUCD4YStxpxh8j7wihrHxBomPxPOK0QyigHGvppFl3fbfQ88r7pVFoc4M7xR9PjOPtYJIA
LYq8cWNUVDhRRdbVH7U8I9yNK8puDOL4ho32G8oKXHLDtHvIy3fIO6qgUW3eU6wM21bo5HDNtwOK
wi0JzjT/W6ugIPY/bMctJjsUiv1jTdZyLJSsDm5fp19L/qwPPSDdGkd/vQv0y9N97xR+RQVuX/AD
GvPs/sY9NmcL/DHAFrabPHfajBTeuBIG3sa2fHzOksFGglxQ79RDqiNRu8W/vn/HQA/wf1RyxOhC
JMylrgp7Pvjn0fOInDXo+Dwe9rAKb47jflAo6l2QN+jGq3ujLlsRyj+0WiPfWNXDbO25LF7KeV5x
jpgd8vMmlD/aS7+THVzqL5vLrDPmRQiUZ1K25F8vloZZJLM1An3ynh34e2Z+BcvDKlRA2pUnmj2M
XWIHR972tjSDywaP1TvzeSWlwpy51GAjym6G2YZzwX2h7UfrT5xJI+HgmxlWOeZH8mPLUfUXl3rM
daFElORiUCpQBodz791Cd1KaO+gtQvhmUJlGbdj5pNZp8+NPsJZxrz82+HnaRtuGP/mlJqoqesIf
8BCQDv6DRzVUExyKu0NHdZkVSklu7ZduPstBFU4PQd+LWdzxpOJS5vwQyPomQBOst6YkdEpUaPO1
+5pGLKke3r3REBJ6UW0jyF/HZb7e5nXMmnZBsz3w3Z7JSXC09kTR7i4ZQwGJKqo3Ulvb/rMSTSKA
237EzS54FdQ4gdIpWt6LstNGLlRdWeOmkjXZZZs3CgSUCLR8FvCiGCgqt5uGMz7dw8mo71riVHmN
xgSYuBIsIA0x/agV5GIlo+ccbORLMpJTN2NUkQkBUlOn6dYtna/FDwbwHDMbeO88+GOvFmEdUo4G
XFApRISf9l4kFYx4E94iJrtC7NOy+joS0cX0Wi7mSDzO94jtgbk/5CMbdoR9aPL7kjy4UZAyudMn
mSHlCppewCng85gS3Nf3XmvgdZZSwVtctHdYJO9kkGHfB9hBXAzAmFB93VfDhqAry7EwzhUbkSgu
dhoH1yCgG7N8ugtH1D6aFLvcMhrhvaKPyRbP2ufufPRwyiEtv7BUuDCE4dW2O5IEOaFmwSAg00sx
EMrV/Pk3y8ZPWZmUH65D8L53b2AHHV5kdQAk/rlruMtuOoNkg5XdK47i6TEgvoxdI4Au/hU0mYg2
MHcO3w7LEHWHNzc3ZzPi/9tJTW4fGIcN0vLQJUJTCMFVktMcLZpncAVSGfONv13xvFrfUQwdff8Y
XvdUo7AvdLnG173LUCwEUYwn0CQRHs0nRXKEMc3qbWElhnlaAP4I2CMg6an4y6ViuReWGZWmtdWc
We5HUBfnFSrTzfR7p8FPtAXCRVODMIUkaghf2xVNwZ4WFcxUHrCWI4kAJUVLsJGCdG0AdF5xqr0e
fcqzkGuLE6wKeZ/fOk3vYpuTi2Fr9v1Eb4Z9FtANEC/xh9L16byken4i3Vd14LIJpm4W5CrGF2Dx
U7qjCThZvdfCKOF3co3Rsf2k+AeZWTzvIdQv6KrfubqcD8ZZ56KzWkoTIIjn0ByZb7TxkqOEkuy5
zaA0hnWXbLQYEWdjYGuf+yFYoA7ISmoP4X0VbtCiHPTsYYygjUNEdtnvA1Fab3rq0egd6pf2PQG4
XDyvulZ7u306F+Hs0a/1k3wl5UGNr1Sc9ifpfqpG1otCDdTcGETLAkAwT+oZ15GRr2eqgZLKxjs5
KN2JhmGd73Ew4CeoUomse2MSmqZhq6h6toDmw5pTYDQnHSeRfzWCqJQC2580yvF5048QZGlUeGHl
i98IjJNyAEMRPdKyF3uyVvrkB+KKGLs1i5hqDI0IujR7N9Zjl6vHd/DWNH3xwqqjaapeDDKjjAyv
zXqQ1jYZ/qYqM9tFky7bv+f1hkUlhq6jIuuJExWmKERvUL9AyTt65YS1iP0kbnxtmF+On6DIQZhk
spOvofeJDOzUCjHqp2ZlfCHSZoLiThkK6CJ/jEDsnhTJN+51m24Y6QzqSQZpnr58J0FbsIL8/ket
QEK9ux7sQEdxdpGQ/IP74ly9tKo6EtaVTmeb8cRte0yA/gEHp40zUuIL8bPRzByftLt5U21qWFFy
+FxQGDAm5wHT2ye+o2XnMT/LchcDITA/rKRg1hcq/8UbLuhVLX6u/qturSTZuf1UgTZEx7eFoWZb
vU8ZAVjg/m/+8HguKyNsrvafGZ9Ydmg+IB7HWLrqXKHVNRXmmreW15SOwrxGu3nNHp35RFAwSg5p
Vcb3eFU+hszvfkyZjPVMgA1Yc98ebDFL2LOYeFvB8THFuKtRDSe4l4LKQToQg4PWYjwKYBYccC9N
xKDZNL4nnsqtNRvLY04s3fSfB16nxmxsd6bRudk5Prfx8GUOW4D6LSXa5juyd8iLy6k8hEHrwsoL
7cgY8FzUeBtd1kTZMnqJ6nZlGpKUXNdnCmH/8ZHSNedXTx2tz/8g0QI+wIk2VOYd5tTtDddqG4rC
3+bWLmhKjfBVj5eNouMfXSwp4dM16GFKtgCW+kzfhGAqWl0pNH5IYOrrzlJ/uxq5kJdzjIh4PVkL
YYCS68ssJaJanGm1ZgB9fiK4Cfq5pz/0arncDJaYJUjUvlbYjLh054oUft28C/Avgd7dwGCGXUMH
SwDNc36I13O1yrie/bQepa2qKwfy6N7X5fZJgnKgi3VyRuIXNSEczUOc9RVtwSC2mXvDvTUszypd
L6+No7W71I1SHz5CTGcb96SiHznaGmV8wG8A+LOhS/jWKQn/QkZht1S1SIEsQ+5Ayse45G++j0SW
VbkmJr5BIqDqb73A7L1boFq19wt3gNVkaDpf4K7Wg4Tq6HTgAEI91N7PiMQLcpED329UwZJA42eN
BEg2Gzl8Odz1A8XZ6WPeD/WIPP3LZXKOdIWOb5Wwn2EQFn3RDk2hNSrBWT8vYo3r6vfq+DegX/eC
M6hQgllzGrsU8d6n5VrZXAv5dgUITrpAf6zxZGAlHTwdyudOlV7zrzDXVQFCOwOpXHT+AVUt3spW
ulTrpilAuekKnA9nqLlMnWGcmIERycJuOX4DZyYtHjcAZ99n9Xmslkm1U8G/mT2UOlEs5Wd1YGSY
kdo2+x1jkAniugQmiuX5zzo94DSigbCaNBvKloWieo29ClS3dz6xIV9/OBW+3y4lnyGmx6CkzzeR
1rSBNrmO1Koyfe9DFV8GnXxLwSj4EzqcXmChhxeXS0h3lmrdk9Xd6ZiZxz9eYD5GQREJhVTEdAY9
5MUTC/jTBGKyS1AstHek8QJNMppjzeO/RQVUkthuwLRBchZYyJEDrKaKQgno+lBlM4X9dhv5tH4m
NhhdpJUX4PK857BREqXc/p5OxOazq1CK8qPFc1PowIdUc6b3W3iQeiNckVfi1IhvbELWy+dfKpQJ
P4WDs3i3iEgCzsp0E5YIkkGl3Gl113r39ihfnZ0J0gbBRdqs7EcsQkIO3snqkv2pcdSChA5qRkuT
WQjO95vzFt6Lcd0EgxC/642F9P7c/2WFjcjH6Z9Xdt2qjIjkPakWAT+dQXPIkT+JXmL7wcbZdO6P
t49aP7wF/a7nrzpWMnZJgpsRT5xuy9eO4HEuOTj5eugnjIcz1CS0chxDUb3NTUcd9zlPmCrVF9Iw
fYrk90vUGYhwpkTzbR39QM0N/JB+DJ3+IOqgj2yDfrRi2o93Ao80jc1htEM28Lf1CPemWNys8vA7
pQDQX9tR/dLkHW+c2+9tr8beVCpwbaGB4DM2vLzO+g+dhWkMbR5nzNm0fw7fSO2oMoK7CDQlfSHI
hgmAcaj5KTzEpte/L3wl/jnpN89TkCEqH9VCstCN4glUnrnEPPZuzvjnGm1amXg5MFQA9tEqR7Jn
LEgxLjD1n/lYUNwqBZ6Mae/KmDDyPmSXFPMTBzvAUh4/fcD86VMhcRjQC/MPQiasg9EyotzmiiZN
Z1tv+FRkv/PjyxSfjaxOc4VzJIyqAcjtjxDOKtX2XaNf2Rcg1EY0xzgGOtTZfsiD9qe9R9ExIp4q
RegTZxVnHzL3aOzg4X3tpARCsjtN+As0U4qKDmj9GLhHM5m5Nq+LuxnWP2CJQxh3CINHwu6l02tc
59gflyGwcEy7H5mGa7/7UYJr/udimvkULSNKsuAbLKT41Q3vZtFcHw6/ex10vvbrnmPuQk3nL2U3
Ie2QM+4GpATSLT519arz8J/av+hGHbV5DnnTtyslrXyo6USDfCWC06shshlrprUGSSdpovyP5ZQb
m9MhNq+PBmIddRv1X2oj5yNhwpfrK4d8hnvJPm6Wemm1AcCyaW/yhv7wwD4BhQIpbfUEfa5qbnI2
EQwrTGt2oF+ix8V/BTp+2hWqfxMJOUVj3nz72l6JqsRCW6mqBsAf7yyGoAi9raU3Zv1E2SNJRrAI
BX0ULbzZgNwBernUE7MOOGs4eGrQAE4UAexh5uJsb9Hj2OJNLOFoLoiRyjhxvJ/98efHTJr9yxLN
urJWwrOu6DioZeiqrhErogVOzxGm6mVZkvVL7cSGneASnY8lxnF8LphmFjFagUuKOk7A0wm5jvRg
bT6/oB9VUiIur79KRHIKe0DyywX4SA2nycuchyqkeGzJuyj/xC9b0XzPEgZKrp6cJMwq+lW6OlD5
0pk5ilatWZkZWeraclNfMUpJXrFSGH5qKYWqdPo6HphUHNSFGhQzAsdc5/aYPcYa5vsaFd3e6BpO
uqANIy3trGesAdE3aE3TDXK6qdC+3J/KZloJnvFAptrqlxOf5swpnuA5YBeqtX6AwgRxaQXUEj8b
9atsKgy0luqcc6LwN6MLLpFd0VPmR+MX/AmnF1je1NrZoD63pKAMi4Tgn91NNmESViCuK5la94Aw
JU+hI38+3whU9HBXQzWbuKL0dMbUjW1g1FHvVxynts1uOJG53W6cUOcMWanAX8LQEGGpt/CvMxZV
cxx7foBh/Kzr8AKLWIPj/l5cXzE1YzRqk8AjBNDEU7TBK6lUidtwgGpsk3a6HtCJuTw7gOgNilS7
ZUAvu44kN+UGufk32a9l2eP71DM7kOfup6x71g2XAki7TeIhx4UybPA8FeAkRDAySS54ZRd2Mu2k
vDyRtKPnGxqtOnlJ3TCOxw+6ihiyMS2IwOywI40UhTVxvuJU2X51Zg2A5vUc3JAEI3sEz2IIkMcQ
V+lreTcz+JdJbLBFzwfSaFi1TUlbhbJiuN644zHwM+WGaeMt+hUC8B2XbQ5nbjO2+oJ3glitiZsK
nXrs08BOGQ9vOu42/Pc74gDrON2R1znUdIzE3Kzo+5J6DiFa5qRA3IsvkzXXf4ORgl+Y1jdlbThL
qXSNUghOWvTrokOM4tYeehQQ8uDBKBliOgKQrPvqwNg0WhH8EddoEHYX7DYaYPtRfqA8L8NV/AyD
c58OqdrGyZsaPKmkx0BOtuuYljpJo9xYnVTILI03DyLA+OS8btKNRWMK6PrFg0X6xAqGNv6+i1Qs
3FEQk6agLHECZTc8c75IofOyKKHfcSdo1FFNLQD0Gf+ex3K+56PCWh4hf31XICYMb7N8T2RuVgAN
V+szTPv42RbMhlc0DcBBv+A3IufQyVV7ksCJgOF6jCqLZjaoqKdNtVWdLOF6EygLtrgknbgDP66n
u3vWsT443g2R2dMLO4/fqYhRr96cTXva+nP5Ps/88ReBsv4fVr5LS3XhTqtwSVio/I7GjmokbqnY
3jZhMNkOLgS2k7kDFXn9b7+Vd0FpuCwoXi6tZj6ttwRkkv6lrVNhu6ouqtZX2Xs3mtXwsGoxujXV
PXQyHiHollP7bICkaRp2UwdYuVsGz3LpnNk6F8wd284dbkC8lXuKGKoPflxXXhP4+FIBVr3fZ6yf
o+z3qAGRdYAjxelax25A7WjmAcTX9VhhE3dQO1rq4544Suo5/EFnLxZCi73AKEF8XSAPlbEG2XUq
FNMxg01INc3ejyXrbJRQiwC6dQ1j9FuKHPe3/w83D6tqDjXJrfdPiZWHXS9wu0iaAuG9JaTqzYmJ
f0ogeCbXUcwUIjHZccRwmb92WZ1Wym4znmvBfraiZKuXTzdRsLxwll8g6pvJalTdYtyIcWprcrEd
Yy4IddVs86svxdDJVp3LR7jH4ZtRCV76YZmQe1RgPgMvjRwJnf7aHKL2POPT5+K3IxjwvXi+Sq50
trtws0eUkb+ILWB7GrRd9F3tjCovD4fo+QlcScjiKA49BIcil/FRPgjVzHXTmQ3cEW7kYa8F92o8
sXrmcxaDjs21nXqVtltiklUTN+09HnwUBDq6At9OG87cb7usZbwFRfx3iuBRsnEPMcDUaOKwIqAE
BGdOWDI8iIu0+4RLY5RzNYMt149ld58BJAjpC9A5JSfwTvKpDPxEqTlN6nsN0+jNMvOh/N5Wy+Ev
PizJZi66xHamAfgS8niMtNEUlgZNx5rN223z+1rTIAPUNE7xBxAS7GimucydXIVfzfCrbqaMkXQY
gx4/SMsgmgNgtVRF3d49RwI4fdmKmnaTgKihuQKxVCyqB26x32sOIqyOZwRftPgSuF8+6vi1Mz60
v2AW7PULxE6+q4f7AccXYDo5anWqPB5f5x2USE8dEz0YFaH50GvGz0Q6ao+OGixcY5DS2fINWxoo
JKOnXeyRguDmrSkbbSr4xVCRVDEbvgfhtptDvidb4zn2XMAy9pHjcP6pIMEzZIHtxjQkPzwTAG6S
QjR8pWDazmieJFcHm8bmqI3+M8/yL+yRQv2H826vRJGlfZCUYCljC9yTXF8TDfcaDcdzrz3M9QCZ
WHgbYSHBclYOLbJA0pSWULCctqK2TKtU+0MRSI6XNXhIOLH47xvlWH8h8/h0DQWKyWWtw+k81d/w
Uz12DPXJzQ3I+0jrvRfGyotaG8C2xdi8+xewkKuMrbRCEUiUTJgG2XXntUJuUCPU9/KPFTBd2VOK
/Ahy33fGkRQ6EG9QDPntdDbtAzQ9puHerPfLo03CiVmHq5l8jv4sQbi/e9d55y4yR8jL4qoQGPhi
2TE/FC9eTudbUsk6mIDaIpCspDjCRCfiDSIVNBMo1Myivkb/J/YuXZRkLHT5PlR3l3SUUqkZ1Zic
bA6b3RZljdShx2uZzPcF7XbBA6vVPGBZBuB83WDu2mBFc2NI7QI8PYYZg6+vCx76EvYAREdAziqP
JD2Uc/kgizGla50C8nk4uWNkGORLY9pgrWzdV8UPFOXaRyKx9aHx5o969Z3pcKyCLc8lPvdAjUee
dwVAu6OgyVh3Xj33Pf12uhyW765P2yBEb6WV09FIselkjq84B6QIAzNu684uiR1a6HyNMP1FarM6
vnaoHLdmxcPKcK4GxychZfbLZVxoBEg7dNEKPm4K/rlmKnAru11EYGpBpVEwapaCTbg776jVFurx
UbucxiGO+fnbyN+28aUq2ACxfLUEIvyrY/GHnfi0UoL4Ycyl3vq2iW/e58TbwhsAI6w7ogaWonSO
LOs6iip1Xs9xEm+R+Xfpv5ToqnmRsBvZC6M6mfQy+xNR/eV1GZiI9q6PIv4jMk1r+eCkGRKBPXT+
2/vDFnN58/nMkcSPfUq5YIX257hWqvuw1MoKX2C6Bt/PFZUyqRua8Ki7NJGGfFQ/xQa4NNUjz+Wq
EO8JGbnqWAcJcyI0fCdsXp9COuuiL3Ky6v/4Xv+ur81Uq1zZj+sOhF1LjdURjo6EYmVKG29GM8+7
LPnv24MqHLcg1HBe6Kull/xnsNQox+U3D0ebLabE7yE/0taQtY2qbSBoWOmAe8BPk1mu1FYC9A8/
EQD2Gspvj4C0j/A9m3Xg3XE6apoj5eaB2LZxunYqQSWBDB9Jcg4C9HWx02kxBdZU61HP3DNO5Mfa
AG98gLRb/tZ4Z9nK6KJIgqmzN3wCsaekuY1qbWejFNFSmy9OH79gcaqZ9omTfjp9nMspPEIf7Q73
Xflw/p7NyXfjLJmD3oTFI3aZD7c8rrh6rgeELq1qGon0rLYEVTpf7ce8uBuYRJThFEVvgjawyDgN
UMYqtwnasiaEhkDmKWIdZQHYIbywVQPYexAwARKPWz8O/AdAezBze1y7FxXH528JSDJOVKehntmc
YvvaXDMm7M3EbqRcn09mj/3y97A22C9C+QquqUP/vYlHhDk4D293epHiKWiSdA17fPIS7lkRVpWW
Aq5F4rNp0OeDMdvIO4IGV0nD7K2xygbfJr+5Z5ugsA5H2vPF+4JZwdAYuJTuYXAAT8l5rGbqvyaq
hI+o73R6UL8tRazsyhWixKCgaZJMB/hWTAvXEtausQQbQhISFMuYYxqdoyqOj/hi2s181J0lc1gA
h1wjqwE5FtEOexJlQ0+qilKSZTIp4I3mGcI4Qzs4+ECzfMsmhQHmjfMj3oe1KQJCfeLe1ZEpyvJj
AaGp5OwjGonR4JwRdi/6QF6Ew5iIdArYeb2ry45M2t5CRAyQT+5tBt8leK4unq13miTS6g2VfQL3
U3bhsjAvySaldfcTOrNaC1oO0VFJ+HKdihmiPlCM1kgQpHQ9y0BE5cK0y9OWmb0KpSHwKVvYHw0i
Rd5zyz+8Pbrd7BpgaG7vORGjyoXYj/DgWmTKb0hsPwlxLNHDocgRJigHN1a3jySuCsFi9Bu1aT9x
DBB64zQOY6HDm3Xt3zJlxdf0GI5NqBYOLinVy9vr55LnyJNKw78hlYA9vcTDRwdW4nOqXsGMJ4a3
haGBOTWlQbgIeHZPSm8zs7rC59hWJIkxJ6FZdaW630pX6F+dFMfMnzfpOKUKJaJZEu3YFg441nWX
D97ts2pyJLh5ykeOYPZlUwIrbDLpiuoU1i/bOFJ9ZZnOUdqx81bz1hsDz7y3m4QS0AX2Mqbnpkn1
IFHpU9X0Vv++Mj9dXKqnzsXeLROoTMauc+0f6TzFN7mv2sBWn90QN2XSPJeK+Ew/54OX0Du3MLxG
+hSDP0Cbze0Q0+FsiD/I1j4Ty8opbEfsRTH5tvhwWJ1ywMUwZmDalyLPh/TMONJIIZ5nCAdD5dGX
Y9whXEmpxUUKwOTr6cYo4CNZ9zD3vAX1DwonPOAdEP8KtyQPe0evSldUWohNznVy2UMeCqvuQuKj
Qd71vMlQ3VWRbE6uahOAJrJ3AfYl38N9C07tNkcx5q5kvwDzMGusKBP3BJSBxRCxL0SZAKR24ExD
C9sxM5quBaUSexNP101icnQvO1/HkkUxs6X06tzlXwArk0cXRG6pGnrtr2ipH8tlFCuC2nyfvpUg
PvOIEWUauuXyhhz+jzZMF3O1kpn8MWrk93qiev0ZDPHUNjIs66xYLxYLnRJTVVINvH/HSbwRlcwI
nBhFcOKSSDNwqV3NUSDM1jGfy7UccUwo2ukD4tr0+Nzai1LHQTTzLEGvDMGc6/dUC6+PMEizGHhM
17BEG9Uy+0ihPYGenjzz6rX2cr5slfPbNGtqyWfPWMUVkERMhgtrsX/n1yYJEVNFEx8SwWwQ1f4I
leKhmni6O4injmzujiblKSraEwseeIRRu/4VsIoVHuWr4AkVKCntCUuyFop3aXnNSVwUiCaoQmYw
T6IfZj8vI16+7Pqt/9QdVW6YzOPjbAaLFEXRgPGdnenbxq2b6Jg+0piVzgAK9uwFAe7+DPBRNgzA
h6Jvk2++GRWKi5fg976dYx7q4K4pVtnPwwtN8EF8dTrttCSLvb9fd7kqGCAHRkNOupibxn7fhXJ9
wHJ4ikyengUcYpPx/D/TP6wrk3gumZTrduGUmxP37WmVIjntBERZbkiYzlL7iZIkntJQxgQ7xW/V
zUl0RLaXjwxz3Sf47srhVQ7u+im38V+NTQx7YA0kMsDZrqVch1oeqDZyaSLy9+mmMsu925QbS59r
SSaqUmoBby5k6N6ONJnzKOmfqsxLP8XFEC/38T0RwUjsMJCKfvLEqO6ckSWRXsu1Ext0eUahvrA+
fi51os5LObri0vff5/svaDl4S3y46CJkjGkR9GIYUsEeGZJ1OVRWC5mPUWYzUqmyOqjs3Au3XUXA
h2h6Z8XqKmYC4lqh6+lSdc7Duk7eOcDuR220CFFCj6i7cNUd7jwbbSB8onc5swKsMjen+rLGU67p
vvpC/QmVMVJexgDvYcVECcDEniV6LrO60UtAVkuXv4GWANSi3aqvzG46R+mDG4YmZW8mg7wyZ5f9
1ScU4dUm3cNbJSqW9WUDYBD0AcXzBganENIVKrYxAq2qSmNTZIeze8/MvAe0+xisR8o4F52uLCz9
6wg9K0QtsqhuU8xai4w7YMaDXvCwZP5eubIo1PvilHDo/YKe1OyeWhIr2BPDixFyK5U5+PejJ4Am
DD3UUHzwZdHq2cgQBb39bMAuZ0tJsbDar+wVtGYBEPd/4uSwBNaN2Mmj2NsOTLWjt6eirsmr5kcP
IFrGthzdxMgElR7PW562Ju1F3OYvXzuT4htf/Ptc2kaVPjfCMtJMP9tuj9i4D1YEMae/FcjpWd6I
TqDoWRlU0pn9itIm8p6b/TyUVfX6YBdGrGHfEdaSfiqsvETfWCSRop8FlSE1VabXSeDXIqMBcqz0
Ok0C9ibTdcXmP/w2XlldLD8O/3afYMHCI1f8dNnfowyKK0dQg1sFkjq+G63UVn0Z5l7WsOgY4wst
XpLVMJJhdhlU8cqlJy1ZRnAbobMDYOKXTgGFi36eoGZDa/e8ZzzlLDwDwZMI0LopIX0zb23780br
aaONaTOlHrbKoXtWQ6vD6oHnGK0JQcx4HniYZijzXccBxLysa24Gr22jiI9d1o+04bJ+Zyo0tEU5
6VHOKcSGaxbM/9TgGIhH8IoZ6LFJgXtVZLBwjEj0ArbTn5CjVN7COi1VnMYPlQBRRs115a0kfNCI
74kvBSOTUyd1gKKVzJgGibNkVAv+s+A1fHPu9PSfua5gT7ftc2yOd0w66EPgCV58SMFKWTpJVsmg
KvCzDFkl92v4MsgB81Uid+ppHrnDSZzoIDt+I2yhcf0ct/kGnKoKqgbVXwRf9y6xPdU+WiQFuUuo
iGgbT5YYC024B/qDTiNHfU+SbbS8HYu1+s5w/S9unuddPK0QCBxEX1KK2svil7FbAjATtKJlkx3G
lPABGzrTxxwSBs0qAof8NIVi0xQF6ACuY6igyuy4LA9Anfzlp5wzxkL9giJWbp0TnKhMiWbdvS/9
/Sb4yo3qvkOVxRGUGjQ59VVuD+Vrc8joAYJlPBZeI/jTRW1nA8dKi6J8ydQ73fuiZ9MNv0DhFlG5
Y3mdhHhMjeT6GTi8ZfZMXktyy1U8zsqbdMoHuq7XzfuOziTw9OxDC9xW6hUNdHDeruv6/7Z6HzWG
uW26CrAlCGPQRcJdKFlXVfODH0+TG7Y9NFL8oGcMfB/of/vDotr2t8BjQC05A0zoWrhEbisdhS+S
gF35EJQMwnUxCb9KH2/0/tRs45+FMiJ34eKBqhciv4tQ5bY0o+zGKvIf+kVve57dnTCZt+jIagQ4
XF2bNQbDT5akTGVv7PwSfx/tOCXxozxVwKrp1JxFG4DtVxLX2Mc5f2f2HKqWN1rBMz1pAGIfSFXS
iC/iFvZU0Q9GSdS+XM8ehJU8RvIwK1wNU8YOjqUfFZePH6+VKIU1qSc/Z0UA6vMRJWPQyvj1NHqa
K5YXaTwPfqaZuEgH5jSQDUzluGVjiphje5puFss+zKpubsU/Bdx6/Wxdz1faBm3LnhbvmHfRRGBr
jOjPCiZDqBuA1bRxtgBAOiO8Zo2FTFlxhUeEZkm3GWWdkny7nQeDDaprX67QQ6jjat64sbygWcpH
96jLiEfgM8sbka5xKlS4q6A1jAWHIhPOSwHdOFD/ofz1+2d7FGgUiESdOxZo4YNiMsF8QSx/UfRm
QlrnsdXySGVwmERdWRNc3ojgypTuyx8mXRnATa5Nv9JGXSPczBbtW+drpsBtJJdVetv+JyopqiCd
kBvoe7B/gzjbH4dSMY1gzCU64DD1w3H8maIPPB/WzaMp6ifjRox5KjJ2DOlsHw71hmEvk3juQaHD
UMwmH+om/BHnrohJzI2FsNK3q+2wAK11WUnlZDp5mMn7H5Wm3Sr/2Zd+S8Q+k3UFJJROaRSvVejA
WNGc0tWUoTHNjzBj3WRg6hA+9uWOkHnrP8O4PLgiEqkWekOcLYXEfktYpDKN5Dt7/dIXkqOVWUz0
Eta/9PO0UWeIdGBB3Xs2PAcT354NeDMzl7ton1V7tFayn1/IXKz4G2d7wZ/6cUf6zCm0ika0mro5
XRyCS6YhhsswajAGkVZyoqoPb6w6bt20Uf1fzC4/RCgyPv7cci/msgRdeVHPtERotOb5UjMcpXID
0ARYVPnZT9QYdJHNvFrpqcoVDDXIjAkctU0DfqbzkQOT6OZ0IGZ2XZexAFLN4TLx/YIg/kBoCLXb
rw22ZiCrY2VbmFMVD+FmlRXjhPvRl5iZpPYAt5D/OlpHdHVpU6pRoUUIQxtrGa6mTiwb8c8i/hdi
ybPmn3o1ayHWEzdTLG7zkH4OkDwVVUTuAlZIqrQ6lmM2CSVdbAAn3wYmsObkKdmTjWmGdBPxl+Sv
ovqvvM/Tpte9j2/M8KTdAooprAgjW6Sv22PGjnhXMUHC8tsKmw+FtM0FhmGWn4NRldqMbarh6m17
3MvEBrYDz8nOAui88r/g4nT/YF/HHSXzguqxc9zJgPKFFcXEpJfae56fvIALHQJiG7Oks4PFQBoZ
MJ0LlsS9eOd0z0Tpo1TGd1UmN9RFOoTyrSH87cE+bixOLAHHOaVfin0U8uhTkKGFdFigGN5KoCs5
NM7kPJY5Jq/DeRajwFVsUx9OTL6R58+GgBHTp2L/bIS5XLRRB7mjMyTxzVnS4JaP/Y+a18xLzqfr
kWHdeOTNN7rPK/u+h/0iCZ9mX1GWBMsC6VYX+vvAGNTjCTRQDcpVstVioa2S4qRXrEeT3SGjN5PR
OG1U1i0Yb1n1zwsNpSQpKVED7mgxxhj1GVNGzFI4x7zh/k34tl8LcVA4ZUSeMwDqUdQCE4EjekBg
OcZ0IuAlqaR5RX+Z+b89Ff2JD9fbN8VK/66+1VNUAK5YGucIo8V2K8m0B+JKOy0IQSXn0LX5LeO+
s07RWqATKndFoeDKS9sryIRu+YBYVylr9diGskpz6TteMl4Ex2yyCMB+qUM+nJJIPqtI1cqzVjeF
hdcoCevXk56OMdl3vEQXg8XI8nobQtKgzShfrix4lsKewny6qWETi5RLxvy8OLBQtVm3rWSb3fhR
iqBgvavDPF4wflUymetaJfZNg8CHcsC1tInN/+g5oGLUedz+dAMlPOCFadFO4eD7XEQIpqC+roKP
Fu1LoSv9VbhjtHLaARbDW5ed1Mgid4quO+/qR4iVAVg8BtxerP5HGUqUn975xcLau3MJuLVvK1jM
+24oE+KytM5BNYt55cECy/YpFz4UT8ACxVcYKaIfjh5ZartNCbJUdxlBjfG99vOVdBjbSO0rSvcb
7xNo7iXMAI+6nkSVQJsaSKOCyg+C+wmbab/AYb1wk+hjFsvXiR/Q+Frk14Ha0cfBB8hAjAE7kvZ+
rB/6VCGFHSer9BqRD960bAchY0Xaya8Pp+izTtzuokfExtV1ONMcFEOCiqh1EInG5BI16bUvjM9r
rFCI9T+9jp92cksKnk3Mx+HZaYJxOijhsxpiaL6/cqCWg046vdMEWzFjOfpXAPNdKZfdac4y2IWH
iQR5/uF9xD+t+AYd+ZdpMzDJ63EU1hKfl3etXTGwP9PxVt5rnVjV2g7M58K7OYjGimRLMpff04sU
xo6yq3L7HoGcyE3vYqiNrZmlQ4/2Ib8cUXnnG/l0tqaGfdzI8hRnP4q58GfqwsJwLJCiE/uA81K0
FhjpfiqacAkAnTyLvzg9GJmPsG4WmRK9RuCE7rneIYaOB7TIcY5xqMf6sAMMOfyvRSt70HOaeu+h
YMGSt3lFMRk5sGBy/1Tsi13JOEi4IlZD5JrGNG7Z7QuFrT1D/mp3WggxCSrZ1K21/mruDX37lkhq
48cEW6r7Jx9ImUliRWMCuqz3V1l5wHpgBkUP4LnKn9zMjGF2qBKpuDQf1YxjLswATjhkieYwHSpy
9GcU4DXCgnKjYXLpy33zeZ5J336/q1xoCx1qxTAUkCyEHb0w8ni4g+QR0ZNznmg5oh4nO7vk1o8S
yGuh/rfBbrKLFj0ThThz/rhJyuZf78gEMGgRuEHXxubz7Os8e+qqngggevHakmhi1gat8HupKDEA
N9s4nx3fgbTvZfGc5hLP3xMptm9VJ0uqrhoGRy3siojV8rjkFfbG8yARqPw819krUBXn3UnDMvnV
HBCwt9EPC0k3q/0+81iXNYE/XTa3gRh6pQe91tMriLUsmpLuXnHsI2oKBB1sNX6Fq2ZB7s3GgIOv
r2iPBdGTuSOZs9zRx1+p3hKfd6xBgMmTc2geA2I/nCYoCqAavmvwLN/Trn63XGa54GP3Pi31dt8v
TuIZEqwbb3fL6EACWZw3qJUTQYCZBzpdPlT6dl41Srl5Mqc2+EPQAuuQaB4zUuMmeB4RROmKDJB0
b8qVvcr1fCfTtZcErFLcbZXzC1qLqk1O4KN+gTn8/FBK18ptfDnh1NLB+wQjt/6K5VIP4UdKR0Xl
iMBC00yC46Jq4PV4N0xqq4SpCIrM+XgGVZwufLFYglKRIs/aVwW99r6ab0mdf3074F0SLiNd6/d7
cYRhYbAYKYBbwmlomiCMZBXlFQRG5XS3f5AS4F8EuyJs/UwANfPb/LhIDUxw/ZbHEP9KnVyb/bIA
ZFfuqfffNmU3hXEVuEXO/DANCKj55rW9EaCqihXN0BXIeXZP66Iolvnhi1w4s6GJfkWOcathEtkV
LxTh9eJE9/AJ5V92Hsa+RG5OQ00qcx2aU9N/ddPGTFBS+lMhJdAzJAjI4kYlHvm8ijxAao92pV6K
nLelvX4I5FseyrHtEnMP5yrp6Xmp5YuCx28FQJBWsVVEhpLm5aEDkQOrlLTgtX1lnzETGDqR9YYk
HLF3GYZjqC/BIrr3qRCN+Avseh22H8ko9sXQUn0Ve6Mg0G89BGx5HuwAr7+FE1A+R8XXVcJ7sxhv
jKuUWsv9LCiZxZte5wbToc/Ysr+SD+003f9h/W/XZbzfyO337d7KWsR+aJv/q8dTa3MzoDQxIEFX
I1j20yW3G91wXQga+w2D4+vlqhm2MhgPCzrk3mBqg9eY9F/mz3BxEGbd++rLOVo67/SWWy+LKILf
WKvWUnHl8Ps7aNx+c/V+Z4TTQIh6EHqZLeB305/DqO6CvwHX2UshggKARilohKE+M1tpYH8uYcpG
s2gDQ1ruQ7xidXxx1IgNZGYKrpDUZhIpDMFdTldKUds37glq+cIWnWgKXNl6PSf9JuMKOzvXCPZs
bo2QplTUl/rJaKbxskv3/T3na+1oVI+B4UmEhiDx3OKIkBgyvt3/LOEeNK4k5N6YwZv4RojkxfTF
Ydfu8bsybdtr8xIKiu99TDudArFacSux2zavTtRVSjjnu/TrPwZUo1Cd2piMHmNsOMliyIdxsPy2
NT2PWGFu/CgOMf8Ns8I7Y4evPo1uOuuKNARVaacvcxkr8wDR/gf46028r9P3S1zvpf0k67wq5es9
wQjPvv/hYvpcJb5kLPC9gQeQy67hG1SfCPaEj3PqxpnyO/keqpxrZprNNiIY0jATEpNKcNb7ltOg
guZ1ZOie7wCbwi/g2Fm0jlw4oXbvRs4d6z6C6LlpbvFgEx5sLiFeWhKL8LP7cLRmB3nm4C2gY0z0
nflwIcM7toHqCa91aH8VK6jqg+gyYvr7F0JJWTEwOocybZLN9Crdsw6E1UTsQets9gkRw7HJHGBt
m6Hn5f+GhmAarK1M45DEISzfXKYyo5Vxs/6XmOZ5lSFvGZmGlrgMkrQZebr8LqvaC1tMyxHTOxkk
dx9YTi0/ehiMdGEbSQFGUf4uxSgXXcBwW2vMSySwIf9qdBlk0g7cIentr4wyQrsDFQ2J5sINBDgP
elpDquW8t3NJVJBf+oPuQ63+OEcbi1ks7PuH/UIbMv1K96+JmPHV4UHAdrE6ap4RuFpDKMrHQZdz
IQBSkEiJzzmlYmXCRmhp/r+P0fNiW6FeOgXJRLQqHeq7lW1uZMktRdZhc2eDk1t++XmtPYZrmpqm
5ExaP3QwAnj65lmsOB230xyd9hGMPVATh0pFwCtU8NW2wKULeXcTfAXyPs1yHvcSdug4L0NnTU+A
neTAEzalu7pJ188wtYVVlesoCkxB/gMGzKPl36cHxB/foTwfxgC2HymCLoyi6YjkFoez4tdJVK1J
aplMJ7aL8z219ILiikZLTdaiWaAHtp5QRCgoj3GPfcszgS1TmllNXrHaXX7foMuyk/jEYdcyuoqF
oLUEKWEmNCHud5z3tP+SjAWcLy0c3MFsg1D59qA+HlSWQ/GSx+1zkOEed67M3RAyqA/PpV0/1RIl
jpT/sBdc1GldZJQTu/+4mbIrUYShJoruJK21J+lg60Kx0xgnO2+IGazGCLzPuOa5cZitOfOor4Wr
uwipkoHXp1P6ctukGIls8oO4qtHOq0+zNhnnUaPMsUxvL87kjr9iKAkGK653Hw9rv6NC1W9K5vjx
fuddOXm3E/ij4j7MS3kAtVcKSck2I7iq7dB6vECC5ofVrXlNUb0gqvf1qQpwRfNMeEl3J+I0z3jb
xse+nvmAoNGy8wmsaY/Y6OTz/U6/CSE6VRGJ1mtn2/P0KhleTMhkJ1hyEF/FKAtva8DSctNg1128
tNYdbDnT3USAqbCU7nSJq3XLqsXem+bg2sen+XAF4gy6Lg77s6iUaPFjSV/ixjrkd6sfPnv3qsIU
il/wgUYIYITlEPp2F1Sc53BylNh1juBJ5d0nkfeZBinZEktQkuZkKiCjUn+2outyL/b3tBZA94Ct
crhficZhwO4rAO6Ru3gZ6GKKKG+HgPCPdB+lJAT3HwFae4q3MuTua1niaieKU94xoIZhxr2EwzY0
eRJJTqGkXRPOCZgRvsgky7R9xKdqt/TkZNMcP+7iSrPC+EwzDg7TH7x31/nMq6deFVoDAydytJvT
zFFAUQN3rRRF5tzxyv/ubQVsgU5CmKSr0C+ILahcyRArrEUsZfc96F6mkO71CRfqXhE5/d23taiK
pwOIqfKa/8MZJr08733y91lWxKXilX8bmf8ZShCbHSe6BGmbFHsTMT6UAM+f7wiBYyrKz9cWl9p4
8DXelva5/bNT0YXLXf+8GbpTEVVFWUafp5po+1MIuMT0JoJFK7FYzb5IpZFQg+OfMbx25wDggY+D
lWzNzdUK3i5qvVPDcdj1rFckA2XXET5ZKMJkmafhsZfua7V9AHo1WQAbJgiwK+YdZa+6cG0C0yeH
I3ShW6zHmB9kbwGbcu7vQ0BMWITk5NYNyY7LwGZKj2d1xWSmM1QklPYXtDHPy2cYY4P5lQrojNcW
KQtsUF+iNy0VSIR6lDgb0hrUYd2AXB5ZRXJIuOZ9wcO69RnUqoOm4uLAp5Ud9sAObbUO0B9zuOLM
/dAjLHt84i9BPZKu1USThGDmJIv++klmacvY4PBYsARMLdDPB+68+sddH5NuSzHcRPu+C3zz6BsW
6CYqc23xCQ2lsnimUetYCvOsn3f2GN9S6aLPFHXepqXtBrrncVrpm1P4/jyiUX4JpIMWiJT1uGXL
hfhjrxmSM5LppOzL7hjtxL/J+u573VRIXzbY3g7xae1S4pppItBzeWSMPH3cm+6XPgwZB4ROUOqi
qiLbOjvBtL/CKjChpQOALaUf9L3K3+rUvcY3vvsLaAFN6FMcXS4kvcuAHO8h9FLumDSnsAV+OEN1
c64fmjSyE05PM38yrpJBlLxmOyTzkxFVpWFrJWcw3O5za6asWoLfz1sYksKg3JY0cycdDzMVIGhy
NaREnVWIhRoM+GH/mbzcGeJtOpF5XXS8PY0hgeXWubQJYioYKssO6jzuz1ypwrXpZ5OZhvy9NOR5
Rtn7hLfEbA+Ep8lON93xwFkzYAKOGhdub4fPy9P3H12eilRFMoRzENEz1mBLUFRzDJczoLxaj+Fa
hI84W927SCacsJumlU3NJvazQpQvijWu5WBKDqM4M2XD3Q9TjT9OueMF6xIteuvHp+G+j+q0a3Sl
0KI7IKcqBpeL3BaCq4tB8ozRxJfVfDOjoUiYM4RGX3nBbUAbwUTJWo34YONG1F8Iqw0ZiZ7jU9oQ
R8MUcOnCuS7PId1rjkK8xPFNhad6KGhqDe2tA/ayJI0goHimCq+7dQ2ew/pzCeeC1Wo5j976OTAW
Ftl6gwl4+ZDFcN4/6HRAjGZF8QYgHB+3Bvdag8TZML8QR3jKviFYB89x5mGxk0mz9Wq2ZeiKdYQl
7O42Tos//sbzXzc80nDZ4W1AODhtoBff5ycnYcWARRlN56VAIyHVO0ORIHyh6zPh7PP1QoeH24El
Vmu+u65DL3YiZiKNZetU50o4tLH0usUOFNIe3jAZWAlI/CD2M5xOJ6dzOYokIM9JCSDHOPPN1ASd
58D+okqMq9oleeQbPJdSA7/uRMjv96D6XFfELV+RJ25cvDPHfFXmE3Xte4V2dshZmVH18Grg9Yrx
wH7EZwJ0zy8Au8HQYrvVY53urGzk1ec+bKJw1oPSacxkqVQwHBlXzgj8hAd7H0jLemaEDH4Hj7Wr
5y+0iijgBUYMy4WiETyYBO2kUmKp2IplwkglKgZwtzUBkTpOjXYNC73DHy4UKl9fcUz4XAS/o//x
PmlnnbJouuUHjYkcQ78DmM8RQp4N9nCaNPWGqMTNfRkLdosBpXfegMbE2nY9tlkJF1JHUjSFODTr
lj+afzUrNwOSmlvNP3s6gYxjvdVqTvCpam69V2HjZDsEslguAx8hQjgWbrBCOWRy+nP7wUYYZ+Jo
wA0XTq8eZA1IaA4ZG/CPCGFVCZF9Iw6ZuRAyWxOonfcz4WCF3QB2fXbdBxZAT+vxqb16E6bamKns
Pk9btFC2LQ==
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
