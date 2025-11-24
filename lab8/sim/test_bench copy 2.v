`timescale 1ns / 1ps

module tb_fc_top_ip;

  // ============== 时钟和复位信号 ==============
  reg         clk_i;
  reg         rst_n_i;
  reg         start_i;
  wire        done_o;

  wire [34:0] final_out_wdata;
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

  // ============== 变量/文件句柄（功能 1~5） ==============
  integer fd;  // 文件句柄
  integer sample_idx;  // 已写入的样本索引（0..41）
  integer pulse_count;  // out_en 上升沿计数
  reg     out_en_d;  // 延时一拍用于边沿检测
  reg     wait_second;  // 标志：等待下一拍记录第二个值

  integer first_int, second_int;  // 抓到的两个值（按有符号 32 位）
  real first_real, second_real;
  integer pred;  // 预测结果 0/1

  // ============== 测试激励 ==============
  initial begin
    // 打开输出文件（功能 4）
    fd = $fopen("Y:\\Code\\github\\ASIC-PYNQ\\LAB6\\sim\\fc_results.txt", "w");
    if (fd == 0) begin
      $display("ERROR: cannot open output file.");
      $finish;
    end

    // 初始化
    $display("=== FC Top IP Testbench Start ===");
    $display("Time: %0t", $time);

    rst_n_i     = 0;
    start_i     = 0;
    out_en_d    = 0;
    wait_second = 0;
    sample_idx  = 0;
    pulse_count = 0;

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

  // ============== 捕获/比较/写文件/结束仿真 ==============
  // 逻辑说明：
  //   - 在 out_en 上升沿：记录 first_int，并置位 wait_second
  //   - 在下一拍（wait_second=1）：记录 second_int，比较并写入一行；样本数+1
  //   - 当样本数达到 42 后，关闭文件并结束仿真
  always @(posedge clk_i) begin
    if (!rst_n_i) begin
      out_en_d    <= 1'b0;
      wait_second <= 1'b0;
      sample_idx  <= 0;
      pulse_count <= 0;
    end else begin
      // 记录上一拍 out_en
      out_en_d <= out_en;

      // 第二拍捕获（功能 2、3、5）
      if (wait_second) begin
        // 记录第二个值（按有符号）
        second_int  = $signed(final_out_wdata);
        second_real = $itor(second_int);

        // 比较得到预测（功能 3）
        pred        = (first_int > second_int) ? 0 : 1;

        // 写入一行（功能 5）
        // 例：样本  0: 输出=(1444462170.00, -1667237270.00), 预测=0
        $fdisplay(fd, "样本 %2d: 输出=(%.2f, %.2f), 预测=%0d", sample_idx, first_real,
                  second_real, pred);

        // 也在控制台回显（可选）
        $display("sample %2d: output=(%0d, %0d), predict=%0d", sample_idx, first_int, second_int,
                 pred);

        // 完成本组
        sample_idx  <= sample_idx + 1;
        wait_second <= 1'b0;

        // 达到 42 组后结束（功能 1）
        if (sample_idx + 1 >= 42) begin
          $display("Time: %0t - Captured 42 samples. Finishing...", $time);
          $fclose(fd);
          // 给一拍缓冲（可选）
          #(CLK_PERIOD);
          $finish;
        end
      end

      // 检测 out_en 上升沿（功能 1、2）
      if (out_en && !out_en_d) begin
        pulse_count <= pulse_count + 1;

        // 记录第一个值（按有符号），下一拍再取第二个
        first_int  = $signed(final_out_wdata);
        first_real = $itor(first_int);
        wait_second <= 1'b1;
      end
    end
  end

endmodule
