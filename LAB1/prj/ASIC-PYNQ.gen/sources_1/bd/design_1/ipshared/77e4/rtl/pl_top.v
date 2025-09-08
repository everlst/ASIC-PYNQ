`timescale 1ns / 1ps


module pl_top#(
        parameter DATA_WIDTH = 64
    )(
        // base signal
        input         rst_n,
        input         led_clk,
        input         switch,
        output [3:0]  led,        

        // axi stream slave ports
        input         s_axis_aclk,
        input  [63:0] s_axis_tdata,
        input  [7:0]  s_axis_tkeep,
        input         s_axis_tlast,
        input         s_axis_tvalid,
        output        s_axis_tready,

        // axi stream master ports
        input         m_axis_tready,
        output [63:0] m_axis_tdata,
        output [7:0]  m_axis_tkeep,
        output        m_axis_tlast,
        output        m_axis_tvalid
    );

    wire [DATA_WIDTH-1 : 0] dout;
    wire [DATA_WIDTH-1 : 0] output_data;

    axis_rd_interface #(
        .DATA_WIDTH(DATA_WIDTH)
    )
    axis_rd_interface_inst
    (
        .rst_n(rst_n),
        .led_clk(led_clk),

        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),

        .almost_full(led_almost_full),
        .dout(dout),
        .dout_valid(dout_valid)
    );

    led_top#(
        .DATA_WIDTH(DATA_WIDTH)
    )
    led_inst
    (
        .rst_n(rst_n),
        .led_clk(led_clk),
        .switch(switch), 
        .led(led),

        .din(dout),
        .din_valid(dout_valid),
        .outfifo_almost_full(outfifo_almost_full),

        .output_data(output_data),
        .output_data_vld(output_data_vld),
        .led_almost_full(led_almost_full)
    );

    axis_wr_interface #(
        .DATA_WIDTH(DATA_WIDTH)
    )
    axis_wr_interface_inst
    (
        .rst_n(rst_n),
        .led_clk(led_clk),

        .din(output_data),
        .din_valid(output_data_vld),
        .almost_full(outfifo_almost_full),

        .s_axis_aclk(s_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid)
    );

endmodule
