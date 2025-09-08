`timescale 1ns / 1ps


module axis_wr_interface#(
        parameter DATA_WIDTH = 64
    )(
        input         rst_n,
        input         led_clk,

        input  [63:0] din,
        input         din_valid,
        output        almost_full,

        input         s_axis_aclk,
        input         m_axis_tready,
        output [63:0] m_axis_tdata,
        output [7:0]  m_axis_tkeep,
        output        m_axis_tlast,
        output        m_axis_tvalid
    );

//=========== led clock signals ============================//
    reg dout_valid_keep;
    wire dout_valid;

    assign m_axis_tvalid = dout_valid | dout_valid_keep;
    assign m_axis_tkeep = {8{m_axis_tvalid}};
    assign m_axis_tlast = m_axis_tdata[63] && m_axis_tvalid;   // data's MSB identifies the tlast
//==============================================================//

//=========== axi clock domain signals =========================//
    wire   full;
    wire   wr_en;
    assign wr_en = din_valid & ~full;
//==============================================================//

    async_outfifo async_outfifo_inst(
        // input signal
        .rst            (~rst_n         ),
        .wr_clk         (led_clk     ),
        .rd_clk         (s_axis_aclk    ),
        .din            (din            ),
        .wr_en          (wr_en          ),
        .rd_en          (m_axis_tready  ),
        // output signal
        .dout           (m_axis_tdata   ),
        .full           (full           ),
        .empty          (empty          ),
        .valid          (dout_valid     ),
        .prog_full      (almost_full    )
    );

//=========== axi clock domain logic ===========================//
    always @(posedge s_axis_aclk or negedge rst_n) begin
        if(~rst_n) begin
            dout_valid_keep <= 1'b0;
        end
        else begin
            if (dout_valid & ~m_axis_tready) begin
                dout_valid_keep <= 1'b1;
            end
            else if (dout_valid_keep & m_axis_tready) begin
                dout_valid_keep <= 1'b0;
            end
        end
    end
//==============================================================//


endmodule
