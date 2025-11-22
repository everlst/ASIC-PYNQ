`timescale 1ns / 1ps

module tb_fc_top_ip;

  // ============== 时钟和复位信号 ==============
  reg         clk_i;
  reg         rst_n_i;
  reg         start_i;
  wire        done_o;

  wire [35:0] final_out_wdata;
  wire [7:0]  fc_out;
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
    .fc_out         (fc_out), 
    .out_en         (out_en)
  );

  // ============== 时钟生成 ==============
  initial begin
    clk_i = 0;
    forever #(CLK_PERIOD / 2) clk_i = ~clk_i;
  end

  // ============== 变量/文件句柄（功能 1~5） ==============
  integer fd;  // 文件句柄
  integer label_fd;  // 标签文件句柄
  integer sample_idx;  // 已写入的样本索引（0..41）
  integer pulse_count;  // out_en 上升沿计数
  reg     out_en_d;  // 延时一拍用于边沿检测
  reg     wait_second;  // 标志：等待下一拍记录第二个值

  reg signed [35:0] first_int, second_int;  // 抓到的两个值（35位有符号）
  real first_real, second_real;
  integer pred;  // 预测结果 0/1

  // ============== 标签和准确率统计 ==============
  integer labels                                  [0:41];  // 存储42个标签
  integer label_value;  // 当前标签值
  integer correct_count;  // 正确预测的数量
  integer i;  // 循环变量
  integer scan_result;  // 文件读取结果
  real    accuracy;  // 准确率

  // ============== 测试激励 ==============
  initial begin
    // 打开输出文件（功能 4）
    fd = $fopen("Y:\\Code\\github\\ASIC-PYNQ\\LAB6_8bit\\sim\\fc_results.txt", "w");
    if (fd == 0) begin
      $display("ERROR: cannot open output file.");
      $finish;
    end

    // 读取标签文件
    label_fd = $fopen("Y:\\Code\\github\\ASIC-PYNQ\\LAB6_8bit\\input_data\\sel_labels.txt", "r");
    if (label_fd == 0) begin
      $display("ERROR: cannot open label file.");
      $fclose(fd);
      $finish;
    end

    // 读取所有42个标签
    for (i = 0; i < 42; i = i + 1) begin
      scan_result = $fscanf(label_fd, "%d,", labels[i]);
      if (scan_result != 1) begin
        $display("ERROR: failed to read label at index %0d", i);
        $fclose(fd);
        $fclose(label_fd);
        $finish;
      end
    end
    $fclose(label_fd);
    $display("Successfully loaded 42 labels from file.");

    // 初始化
    $display("=== FC Top IP Testbench Start ===");
    $display("Time: %0t", $time);

    rst_n_i       = 0;
    start_i       = 0;
    out_en_d      = 0;
    wait_second   = 0;
    sample_idx    = 0;
    pulse_count   = 0;
    correct_count = 0;

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
  //   - 当样本数达到 42 后，计算准确率、关闭文件并结束仿真
  always @(posedge clk_i) begin
    if (!rst_n_i) begin
      out_en_d      <= 1'b0;
      wait_second   <= 1'b0;
      sample_idx    <= 0;
      pulse_count   <= 0;
      correct_count <= 0;
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

        // 获取当前样本的标签
        label_value = labels[sample_idx];

        // 判断预测是否正确
        if (pred == label_value) begin
          correct_count <= correct_count + 1;
          // 写入文件：预测正确
          $fdisplay(fd, "样本 %2d: 输出=(%.2f, %.2f), 预测=%0d, 标签=%0d ✓", sample_idx,
                    first_real, second_real, pred, label_value);
          $display("sample %2d: output=(%.2f, %.2f), predict=%0d, lable=%0d", sample_idx,
                   first_real, second_real, pred, label_value);
        end else begin
          // 写入文件：预测错误
          $fdisplay(fd, "样本 %2d: 输出=(%.2f, %.2f), 预测=%0d, 标签=%0d ✗", sample_idx,
                    first_real, second_real, pred, label_value);
          $display("sample %2d: output=(%.2f, %.2f), predict=%0d, lable=%0d", sample_idx,
                   first_real, second_real, pred, label_value);
        end

        // 完成本组
        sample_idx  <= sample_idx + 1;
        wait_second <= 1'b0;

        // 达到 42 组后结束（功能 1）
        if (sample_idx + 1 >= 42) begin
          $display("Time: %0t - Captured 42 samples. Calculating accuracy...", $time);

          // 计算准确率
          accuracy = correct_count* 100.0 / 42.0; 

          // 输出准确率到文件和控制台
          // $fdisplay(fd, "");
          $fdisplay(fd, "准确率: %0d/42 = %.2f%%",
                    (pred == label_value) ? correct_count + 1 : correct_count, accuracy);
          $display("");
          $display("currenty: %0d/42 = %.2f%%",
                   (pred == label_value) ? correct_count + 1 : correct_count, accuracy);

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
