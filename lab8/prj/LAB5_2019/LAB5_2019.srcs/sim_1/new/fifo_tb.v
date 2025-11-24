`timescale 1ns/1ps

module tb_fc_system;

  // 时钟和复位
  reg         clk;
  reg         rst_n;
  
  // 指令接口
  reg         cmd_i;
  reg [1:0]   ctrl_cmd_i;
  
  // FIFO接口
  wire        fifo_rd_en;
  wire [1023:0] fifo_data;
  wire        fifo_empty;
  
  wire        out_fifo_wr_en;
  wire [7:0]  out_fifo_data;
  
  // 系统输出
  wire [7:0]  final_out_wdata;
  wire [7:0]  fc_out;
  wire        fc_out_en;
  
  // 内部信号
  reg         fifo_wr_en;
  reg [1023:0] fifo_din;
  wire        fifo_full;
  
  // 测试控制
  reg [7:0]   test_phase;
  integer     output_counter;
  integer     i;

  // ===== 时钟生成 =====
  always #5 clk = ~clk;  // 100MHz

  // ===== 待测系统实例化 =====
  fc_top_ip_with_control u_system (
    .clk_i            (clk),
    .rst_n_i          (rst_n),
    .cmd_i            (cmd_i),
    .ctrl_cmd_i       (ctrl_cmd_i),
    .fifo_rd_en_o     (fifo_rd_en),
    .fifo_data_i      (fifo_data),
    .fifo_empty_i     (fifo_empty),
    .out_fifo_wr_en_o (out_fifo_wr_en),
    .out_fifo_data_o  (out_fifo_data),
    .final_out_wdata  (final_out_wdata),
    .fc_out           (fc_out),
    .fc_out_en        (fc_out_en)
  );

  // ===== 输入数据FIFO实例化 =====
  rd_fifo u_input_fifo (
    .wr_clk (clk),        // input wire wr_clk
    .rd_clk (clk),        // input wire rd_clk  
    .din    (fifo_din),   // input wire [1023 : 0] din
    .wr_en  (fifo_wr_en), // input wire wr_en
    .rd_en  (fifo_rd_en), // input wire rd_en
    .dout   (fifo_data),  // output wire [1023 : 0] dout
    .full   (fifo_full),  // output wire full
    .empty  (fifo_empty)  // output wire empty
  );
  // RAM控制信号
  reg [7:0] ram_addr;
  wire [1023:0] ram_data;
  
  // ===== 输入RAM实例化 =====
  input_ram_rd3 u_input_ram (
    .clka  (clk),         // input wire clka
    .addra (ram_addr),    // input wire [7 : 0] addra  
    .douta (ram_data)     // output wire [1023 : 0] douta
  );

  // ===== 初始化 =====
  initial begin
    // 初始化信号
    clk = 0;
    rst_n = 0;
    cmd_i = 0;
    ctrl_cmd_i = 0;
    fifo_wr_en = 0;
    fifo_din = 0;
    ram_addr = 0;
    test_phase = 0;
    output_counter = 0;
    
    // 释放复位
    #100;
    rst_n = 1;
    
    // 开始测试序列
    #20;
    run_test_sequence();
    
    // 结束仿真
    #1000;
    $display("仿真完成");
  end

  // ===== 测试序列 =====
  task run_test_sequence;
    begin
      $display("=== 开始测试序列 ===");
      
      // 阶段1: 将RAM前4个数据写入FIFO
      $display("阶段1: 加载输入数据到FIFO");
      load_ram_to_fifo(0, 3);
      
      // 阶段2: 发送开始指令
      #50;
      $display("阶段2: 发送开始指令");
      send_start_command();
      
      // 阶段3: 发送推理指令
      #50;
      $display("阶段3: 发送推理指令");
      send_inference_command();
      
      // 等待推理完成
      wait_for_inference_complete();
      
      // 阶段4: 发送输出指令
      #50;
      $display("阶段4: 发送输出指令");
      send_output_command();
      
      // 捕获输出数据
      capture_output_data();
    end
  endtask

  // ===== 从RAM加载数据到FIFO =====
  task load_ram_to_fifo;
    input [7:0] start_addr;
    input [7:0] end_addr;
    integer i;
    begin
      for (i = start_addr; i <= end_addr; i = i + 1) begin
        #20;
        ram_addr = i;
        #10; // 等待RAM输出稳定
        fifo_din = ram_data;
        fifo_wr_en = 1;
        #10;
        fifo_wr_en = 0;
        $display("时间 %0t: 加载RAM地址 %0d 数据到FIFO", $time, i);
      end
    end
  endtask

  // ===== 发送开始指令 =====
  task send_start_command;
    begin
      cmd_i = 1'b1;
      #20;
      cmd_i = 1'b0;
      $display("时间 %0t: 发送开始指令", $time);
    end
  endtask

  // ===== 发送推理指令 =====
  task send_inference_command;
    begin
      ctrl_cmd_i = 2'd1;
      #20;
      ctrl_cmd_i = 2'd0;
      $display("时间 %0t: 发送推理指令", $time);
    end
  endtask

  // ===== 等待推理完成 =====
  task wait_for_inference_complete;
    begin
      wait(u_system.u_fc_top.done_o == 1'b1);
      #100; // 额外等待一些周期确保完成
      $display("时间 %0t: 推理完成", $time);
    end
  endtask

  // ===== 发送输出指令 =====
  task send_output_command;
    begin
      // 先发送开始指令进入等待状态
      cmd_i = 1'b1;
      #20;
      cmd_i = 1'b0;
      
      // 然后发送输出指令
      #20;
      ctrl_cmd_i = 2'd2;
      #20;
      ctrl_cmd_i = 2'd0;
      $display("时间 %0t: 发送输出指令", $time);
    end
  endtask

  // ===== 捕获输出数据 =====
  task capture_output_data;
    integer fc1_count, fc2_count, fc3_count;
    begin
      fc1_count = 0;
      fc2_count = 0;
      fc3_count = 0;
      output_counter = 0;
      
      // 等待输出开始
      wait(out_fifo_wr_en == 1'b1);
      $display("时间 %0t: 开始捕获输出数据", $time);
      
      // 捕获128个FC1输出
      while (fc1_count < 128) begin
        @(posedge clk);
        if (out_fifo_wr_en) begin
          $display("FC1输出[%0d]: %h", fc1_count, out_fifo_data);
          fc1_count = fc1_count + 1;
          output_counter = output_counter + 1;
        end
      end
      $display("=== FC1层输出完成，共 %0d 个特征 ===", fc1_count);
      
      // 捕获32个FC2输出
      while (fc2_count < 32) begin
        @(posedge clk);
        if (out_fifo_wr_en) begin
          $display("FC2输出[%0d]: %h", fc2_count, out_fifo_data);
          fc2_count = fc2_count + 1;
          output_counter = output_counter + 1;
        end
      end
      $display("=== FC2层输出完成，共 %0d 个特征 ===", fc2_count);
      
      // 捕获1个FC3输出
      while (fc3_count < 2) begin
        @(posedge clk);
        if (out_fifo_wr_en) begin
          $display("FC3输出[%0d]: %h", fc3_count, out_fifo_data);
          fc3_count = fc3_count + 1;
          output_counter = output_counter + 1;
        end
      end
      $display("=== FC3层输出完成，共 %0d 个特征 ===", fc3_count);
      
      $display("=== 所有层输出完成，总计 %0d 个输出特征 ===", output_counter);
    end
  endtask

  // ===== 监控信号 =====
  always @(posedge clk) begin
    if (u_system.u_fc_top.fc1_out_valid) begin
      $display("时间 %0t: FC1输出有效 - 数据: %h", $time, u_system.u_fc_top.fc1_out_data);
    end
    
    if (u_system.u_fc_top.fc2_out_valid) begin
      $display("时间 %0t: FC2输出有效 - 数据: %h", $time, u_system.u_fc_top.fc2_out_data);
    end
    
    if (u_system.u_fc_top.fc3_out_valid) begin
      $display("时间 %0t: FC3输出有效 - 数据: %h", $time, u_system.u_fc_top.fc3_out_data);
    end
  end

  // ===== FIFO状态监控 =====
  always @(posedge fifo_wr_en) begin
    $display("时间 %0t: FIFO写入数据: %h", $time, fifo_din);
  end

  always @(posedge fifo_rd_en) begin
    $display("时间 %0t: FIFO读取数据", $time);
  end

  // ===== 断言检查 =====
  always @(posedge clk) begin
    // 检查FIFO下溢
    if (fifo_rd_en && fifo_empty) begin
      $display("错误: FIFO下溢!");
      $stop;
    end
    
    // 检查FIFO上溢
    if (fifo_wr_en && fifo_full) begin
      $display("错误: FIFO上溢!");
      $stop;
    end
  end

endmodule