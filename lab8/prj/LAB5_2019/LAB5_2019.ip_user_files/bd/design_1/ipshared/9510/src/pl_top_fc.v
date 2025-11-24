`timescale 1ns / 1ps

module pl_top_fc #(
  parameter integer DATA_WIDTH = 64
) (
  input wire rst_n,
  input wire core_clk, // 可与s_axis_aclk同源

  // AXI-Stream slave (MM2S)
  input  wire                    s_axis_aclk,
  input  wire [  DATA_WIDTH-1:0] s_axis_tdata,
  input  wire [DATA_WIDTH/8-1:0] s_axis_tkeep,
  input  wire                    s_axis_tlast,
  input  wire                    s_axis_tvalid,
  output wire                    s_axis_tready,

  // AXI-Stream master (S2MM)
  input  wire                    m_axis_tready,
  output wire [  DATA_WIDTH-1:0] m_axis_tdata,
  output wire [DATA_WIDTH/8-1:0] m_axis_tkeep,
  output wire                    m_axis_tlast,
  output wire                    m_axis_tvalid
);

  wire [DATA_WIDTH-1:0] rd_dout;
  wire                  rd_dout_vld;
  wire                  in_almost_full;

  wire [DATA_WIDTH-1:0] wr_din;
  wire                  wr_din_vld;
  wire                  outfifo_almost_full;

  // AXIS -> inFIFO -> core_clk
  axis_rd_interface_fc #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_AW   (6)            // depth=64 beats, 一帧刚好64 beats
  ) u_rd (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    .s_axis_aclk  (s_axis_aclk),
    .s_axis_tdata (s_axis_tdata),
    .s_axis_tkeep (s_axis_tkeep),
    .s_axis_tlast (s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),

    .almost_full(in_almost_full),

    .dout      (rd_dout),
    .dout_valid(rd_dout_vld)
  );

  // pack -> fc_top_ip -> unpack
  fc_top_wrap #(
    .AXIS_W(DATA_WIDTH)
  ) u_wrap (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    .din      (rd_dout),
    .din_valid(rd_dout_vld),

    .outfifo_almost_full(outfifo_almost_full),

    .output_data    (wr_din),
    .output_data_vld(wr_din_vld),

    .in_almost_full(in_almost_full)
  );

  // core_clk -> outFIFO -> AXIS
  axis_wr_interface_fc #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_AW   (4)
  ) u_wr (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    .din        (wr_din),
    .din_valid  (wr_din_vld),
    .almost_full(outfifo_almost_full),

    .s_axis_aclk  (s_axis_aclk),
    .m_axis_tready(m_axis_tready),

    .m_axis_tdata (m_axis_tdata),
    .m_axis_tkeep (m_axis_tkeep),
    .m_axis_tlast (m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid)
  );

endmodule
