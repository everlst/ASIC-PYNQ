`timescale 1ns / 1ps
// 仅控制信号的最小 TB（Verilog-2001）
// - 100MHz 时钟
// - 复位脉冲
// - start 单拍脉冲（可多次触发）
// - 等待 done 后结束或再次触发

module tb_fc_ctrl_only;

  // === 配置 ===
  // 你也可以把 DUT 名改成你的顶层名
  // （若不同：把 fc_top_ip_array 改成你的模块名/端口名）
  reg            clk;
  reg            rst_n;
  reg            start;
  wire           done;
  wire           out_wren;
  wire    [31:0] out_wdata;

  // 添加文件操作变量
  integer        result_file;

  // ====== DUT 实例 ======
  fc_top_ip_array dut (
    .clk_i    (clk),
    .rst_n_i  (rst_n),
    .start_i  (start),
    .done_o   (done),
    .out_wren (out_wren),
    .out_wdata(out_wdata)
  );

  // ====== 100MHz 时钟 ======
  initial clk = 1'b0;
  always #5 clk = ~clk;

  // ====== 控制任务 ======
  task pulse_start_1clk;
    begin
      @(posedge clk);
      start <= 1'b1;
      @(posedge clk);
      start <= 1'b0;
    end
  endtask

  // ====== 数据保存到文件 ======
  initial begin
    result_file = $fopen("F:/GitHub/ASIC-PYNQ/LAB4/sim/result.txt", "w");
    if (result_file == 0) begin
      $display("错误：无法打开result.txt文件");
      $finish;
    end
  end

  // 监控out_wren信号并写入数据
  always @(posedge clk) begin
    if (out_wren) begin
      $fwrite(result_file, "%0d ", out_wdata);
    end
  end

  // ====== 复位与触发时序 ======
  initial begin
    // 初值
    rst_n = 1'b0;
    start = 1'b0;

    // 复位保持若干拍
    repeat (8) @(posedge clk);
    rst_n = 1'b1;

    // 复位后留一点空隙，再发一次 start
    repeat (5) @(posedge clk);
    pulse_start_1clk();



    // 等待本次计算完成
    wait (done == 1'b1);
    @(posedge clk);  // 给1拍余量，done为单拍
    // 若需要多轮，取消下面的注释即可：
    // repeat (20) @(posedge clk);
    // pulse_start_1clk();
    // wait (done == 1'b1);
    // @(posedge clk);

    // 结束仿真前关闭文件
    #50 $fclose(result_file);
    $finish;
  end

endmodule
