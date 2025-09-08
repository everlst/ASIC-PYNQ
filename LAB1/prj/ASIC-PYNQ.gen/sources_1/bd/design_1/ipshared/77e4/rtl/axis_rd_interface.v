`timescale 1ns / 1ps


module axis_rd_interface#(
        parameter DATA_WIDTH = 64
    )(
        input         rst_n,
        input         led_clk,

        input         s_axis_aclk,
        input  [63:0] s_axis_tdata,
        input  [7:0]  s_axis_tkeep,
        input         s_axis_tlast,
        input         s_axis_tvalid,
        output        s_axis_tready,

        input         almost_full,
        output [63:0] dout,
        output        dout_valid
    );

//=========== led clock signals ============================//
    reg  rd_en;
//==============================================================//

//=========== axi clock domain signals =========================//
    wire full;
    wire wr_en;
    assign s_axis_tready = ~full;
    assign wr_en = s_axis_tvalid & ~full;
//==============================================================//

    async_infifo async_infifo_inst(
        // input signal
        .rst            (~rst_n         ),
        .wr_clk         (s_axis_aclk    ),
        .rd_clk         (led_clk     ),
        .din            (s_axis_tdata   ),
        .wr_en          (wr_en          ),
        .rd_en          (rd_en          ),
        // output signal
        .dout           (dout           ),
        .full           (full           ),
        .empty          (empty          ),
        .valid          (dout_valid     )
    );

//============= led clock domain logic =====================//
    localparam IDLE   = 2'b1;
    localparam FETCH  = 2'b10;
    reg [1:0] n_state;
    reg [1:0] c_state;
    
    always @(posedge led_clk or negedge rst_n) begin
        if(~rst_n) begin
            c_state <= IDLE;
        end
        else begin
            c_state <= n_state;
        end
    end

    always @(posedge led_clk or negedge rst_n) begin
        if(~rst_n) begin
            rd_en <= 1'b0;
        end
        else begin
            case(c_state)
                IDLE: begin
                    rd_en <= 1'b0;
                end
                FETCH: begin
                    if (almost_full) begin
                        rd_en <= 1'b0;
                    end
                    else begin
                        rd_en <= 1'b1;
                    end
                end
            endcase 
        end
    end
    
    always @(*) begin
        case(c_state)
            IDLE: begin
                n_state = (~empty) ? FETCH : IDLE;
            end
            FETCH: begin
                n_state = empty ? IDLE : FETCH;
            end
            default:begin
                n_state = IDLE;
            end
        endcase
    end
//==============================================================//

endmodule
