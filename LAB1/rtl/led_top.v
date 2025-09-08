`timescale 1ns / 1ps


module led_top#(
        parameter DATA_WIDTH = 64
    )(
        input                  rst_n,
        input                  led_clk,
        input                  switch,
        output reg [3:0]       led,

        input  [DATA_WIDTH-1:0] din,
        input                   din_valid,
        input                   outfifo_almost_full,   

        output reg [DATA_WIDTH-1:0] output_data,
        output reg                  output_data_vld,
        output                      led_almost_full
    );


    assign led_almost_full = outfifo_almost_full;

    reg switch_d;
    wire switch_rise;

    always @(posedge led_clk or negedge rst_n) begin
        if (!rst_n) begin
            switch_d <= 1'b0;
        end else begin
            switch_d <= switch;
        end
    end

    assign switch_rise = switch & ~switch_d;

    always @(posedge led_clk or negedge rst_n) begin
        if (!rst_n) begin
            output_data <= {DATA_WIDTH{1'b0}};
            output_data_vld <= 1'b0;
        end else begin
            if (switch_rise && ~outfifo_almost_full) begin
                output_data <= {1'b1, 63'd1}; 
                output_data_vld <= 1'b1;
            end else begin
                output_data_vld <= 1'b0;
            end
        end
    end

    always @(posedge led_clk or negedge rst_n) begin
        if (!rst_n) begin
            led <= 4'b0000;
        end else begin
            if (din_valid) begin
                led <= din[3:0];  
            end
        end
    end

endmodule

