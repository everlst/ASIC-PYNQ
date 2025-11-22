`timescale 1ns/1ps

module tb_fc_top_ip;

  // ============== 时钟和复位信号 ==============
  reg clk_i;
  reg rst_n_i;
  reg start_i;
  wire done_o;

  // ============== 测试参数 ==============
  parameter CLK_PERIOD = 10;  // 100MHz

  // ============== DUT 实例化 ==============
  fc_top_ip u_fc_top_ip (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(start_i),
    .done_o (done_o)
  );

  // ============== 时钟生成 ==============
  initial begin
    clk_i = 0;
    forever #(CLK_PERIOD/2) clk_i = ~clk_i;
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

  // ============== 波形监控和调试 ==============
  
  // 监控关键信号变化
  always @(posedge clk_i) begin
    if (start_i) 
      $display("Time: %0t - Start signal asserted", $time);
    
    if (done_o) 
      $display("Time: %0t - Done signal asserted", $time);
  end

  // 监控 RAM 地址变化
  always @(posedge clk_i) begin
    if (u_fc_top_ip.u_fc_1.input_data_addr_o !== 2'bxx)
      $display("Time: %0t - Input RAM address: %h", $time, u_fc_top_ip.u_fc_1.input_data_addr_o);
    
    if (u_fc_top_ip.u_fc_1.weight_addr_o !== 10'bxxxxxxxxxx)
      $display("Time: %0t - Weight RAM address: %h", $time, u_fc_top_ip.u_fc_1.weight_addr_o);
    
    if (u_fc_top_ip.u_fc_1.bias_addr_o !== 7'bxxxxxxx)
      $display("Time: %0t - Bias RAM address: %h", $time, u_fc_top_ip.u_fc_1.bias_addr_o);
  end

  // 监控乘法器输入输出
  always @(posedge clk_i) begin
    if (|u_fc_top_ip.u_fc_1.mul_data1_o && |u_fc_top_ip.u_fc_1.mul_data2_o) begin
      $display("Time: %0t - Mul inputs active, a[127:120]=%h, b[127:120]=%h", 
               $time, 
               u_fc_top_ip.u_fc_1.mul_data1_o[127:120],
               u_fc_top_ip.u_fc_1.mul_data2_o[127:120]);
    end
    
    if (|u_fc_top_ip.mul_p) begin
      $display("Time: %0t - Mul outputs active, p[15:0]=%h", 
               $time, u_fc_top_ip.mul_p[15:0]);
    end
  end

  // 监控输出写回
  always @(posedge clk_i) begin
    if (u_fc_top_ip.u_fc_1.fc_output_wren_o) begin
      $display("Time: %0t - Writing output: addr=%h, data=%h", 
               $time, 
               u_fc_top_ip.u_fc_1.fc_output_addr_o,
               u_fc_top_ip.u_fc_1.fc_output_data_o);
    end
  end

  // ============== VCD 波形文件生成 ==============
  initial begin
    $dumpfile("fc_top_ip_wave.vcd");
    $dumpvars(0, tb_fc_top_ip);
    
    // 记录所有层次的所有信号
    $dumpvars(1, u_fc_top_ip);
    $dumpvars(2, u_fc_top_ip.u_fc_1);
    $dumpvars(3, u_fc_top_ip.u_input_ram);
    $dumpvars(3, u_fc_top_ip.u_weight_ram);
    $dumpvars(3, u_fc_top_ip.u_bias_ram);
    $display("VCD waveform file will be saved as: fc_top_ip_wave.vcd");
  end

  // ============== 实时进度显示 ==============
  initial begin
    #1000;
    $display("Time: %0t - Simulation running...", $time);
    #2000;
    $display("Time: %0t - Simulation running...", $time);
    #3000;
    $display("Time: %0t - Simulation running...", $time);
  end

endmodule