`timescale 1ns / 1ps

module axis_rd_interface_fc #(
  parameter integer DATA_WIDTH = 64,
  parameter integer FIFO_AW    = 5    // depth=32 beats
) (
  input wire rst_n,
  input wire core_clk,

  // AXI-Stream slave (MM2S)
  input  wire                    s_axis_aclk,
  input  wire [  DATA_WIDTH-1:0] s_axis_tdata,
  input  wire [DATA_WIDTH/8-1:0] s_axis_tkeep,
  input  wire                    s_axis_tlast,
  input  wire                    s_axis_tvalid,
  output wire                    s_axis_tready,

  // backpressure from core
  input wire almost_full,

  // data to core_clk domain
  output wire [DATA_WIDTH-1:0] dout,
  output wire                  dout_valid
);

  wire in_full, in_empty;
  wire wr_en = s_axis_tvalid && s_axis_tready;

  assign s_axis_tready = ~in_full;

  reg rd_en;

  // async fifo: axi clk -> core clk
  asy_fifo #(
    .data_width(DATA_WIDTH),
    .addr_width(FIFO_AW)
  ) u_infifo (
    .rst_n (rst_n),
    .wr_clk(s_axis_aclk),
    .wr_en (wr_en),
    .din   (s_axis_tdata),

    .rd_clk(core_clk),
    .rd_en (rd_en),
    .valid (dout_valid),
    .dout  (dout),

    .full (in_full),
    .empty(in_empty)
  );

  // rd_en FSM in core_clk domain
  localparam IDLE = 2'b01;
  localparam FETCH = 2'b10;
  reg [1:0] c_state, n_state;

  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) c_state <= IDLE;
    else c_state <= n_state;
  end

  always @(*) begin
    case (c_state)
      IDLE:    n_state = (~in_empty) ? FETCH : IDLE;
      FETCH:   n_state = (in_empty) ? IDLE : FETCH;
      default: n_state = IDLE;
    endcase
  end

  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) rd_en <= 1'b0;
    else begin
      case (c_state)
        IDLE:    rd_en <= 1'b0;
        FETCH:   rd_en <= (~almost_full);  // core能接就一直读
        default: rd_en <= 1'b0;
      endcase
    end
  end

endmodule
