`timescale 1ns / 1ps

module tb_fc_top_ip;

  // ============== 时钟和复位信号 ==============
  reg         clk_i;
  reg         rst_n_i;
  reg         start_i;
  wire        done_o;

  wire [31:0] final_out_wdata;
  wire        out_en;

  // ============== 测试参数 ==============
  parameter CLK_PERIOD = 10;  // 100MHz

  // ============== DUT 实例化 ==============
  fc_top_ip u_fc_top_ip (
    .clk_i          (clk_i),
    .rst_n_i        (rst_n_i),
    .start_i        (start_i),
    .done_o         (done_o),
    .final_out_wdata(final_out_wdata),
    .out_en         (out_en)
  );

  // ============== 时钟生成 ==============
  initial begin
    clk_i = 0;
    forever #(CLK_PERIOD / 2) clk_i = ~clk_i;
  end

  // ============== 测试激励 ==============
  initial begin
    // 初始化
    $display("=== FC Top IP Testbench Start ===");
    $display("Time: %0t", $time);

    rst_n_i = 0;
    start_i = 0;

    // 复位
    #(CLK_PERIOD * 2);
    rst_n_i = 1;
    $display("Time: %0t - Reset released", $time);

    // 等待几个周期
    #(CLK_PERIOD * 5);

    // 启动测试
    $display("Time: %0t - Starting FC computation", $time);
    start_i = 1;
    #(CLK_PERIOD);
    start_i = 0;

  end

endmodule
