`timescale 1ns / 1ps

module tb_pl_top_fc;

  // --------------------------------------------------------------------
  // 参数配置（和你 Python 里一致）
  // --------------------------------------------------------------------
  parameter integer DATA_WIDTH = 64;
  parameter integer NUM_GROUPS = 42;
  parameter integer LINES_PER_GROUP = 4;
  parameter integer BITS_PER_LINE = 1024;
  parameter integer TOTAL_LINES = NUM_GROUPS * LINES_PER_GROUP;
  parameter integer BEATS_PER_GROUP = (BITS_PER_LINE * LINES_PER_GROUP) / DATA_WIDTH; // 512B /8 = 64

  // --------------------------------------------------------------------
  // 时钟 / 复位
  // --------------------------------------------------------------------
  reg core_clk;
  reg s_axis_aclk;
  reg rst_n;

  initial begin
    core_clk = 1'b0;
    forever #5 core_clk = ~core_clk;  // 100 MHz
  end

  // 这里直接让 AXI 时钟和 core_clk 同源
  initial begin
    s_axis_aclk = 1'b0;
    forever #5 s_axis_aclk = ~s_axis_aclk;
  end

  initial begin
    rst_n = 1'b0;
    #100;
    rst_n = 1'b1;
  end

  // --------------------------------------------------------------------
  // AXI-Stream 接口信号
  // --------------------------------------------------------------------
  reg  [  DATA_WIDTH-1:0] s_axis_tdata;
  reg  [DATA_WIDTH/8-1:0] s_axis_tkeep;
  reg                     s_axis_tlast;
  reg                     s_axis_tvalid;
  wire                    s_axis_tready;

  wire [  DATA_WIDTH-1:0] m_axis_tdata;
  wire [DATA_WIDTH/8-1:0] m_axis_tkeep;
  wire                    m_axis_tlast;
  wire                    m_axis_tvalid;
  reg                     m_axis_tready;

  // --------------------------------------------------------------------
  // DUT 实例化
  // --------------------------------------------------------------------
  pl_top_fc #(
    .DATA_WIDTH(DATA_WIDTH)
  ) dut (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    .s_axis_aclk  (s_axis_aclk),
    .s_axis_tdata (s_axis_tdata),
    .s_axis_tkeep (s_axis_tkeep),
    .s_axis_tlast (s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),

    .m_axis_tready(m_axis_tready),
    .m_axis_tdata (m_axis_tdata),
    .m_axis_tkeep (m_axis_tkeep),
    .m_axis_tlast (m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid)
  );

  // --------------------------------------------------------------------
  // 输入数据存储：每行 1024bit
  // --------------------------------------------------------------------
  reg     [BITS_PER_LINE-1:0] in_bits    [    0:TOTAL_LINES-1];

  // 每组打包好的 64 个 64bit beat
  reg     [   DATA_WIDTH-1:0] group_beats[0:BEATS_PER_GROUP-1];

  integer                     g;
  integer                     line;
  integer                     b;

  // m_axis 始终 ready
  initial begin
    m_axis_tready = 1'b1;
  end

  // --------------------------------------------------------------------
  // 主激励过程
  // --------------------------------------------------------------------
  initial begin
    // 初始化 AXIS 输入
    s_axis_tdata  = {DATA_WIDTH{1'b0}};
    s_axis_tkeep  = {DATA_WIDTH / 8{1'b0}};
    s_axis_tlast  = 1'b0;
    s_axis_tvalid = 1'b0;

    // 读输入文件（要求每行只有 0/1，长度 1024）
    // 仿真目录下放 sel_data_processed.txt
    $display("TB: loading input bits from sel_data_processed.txt ...");
    $readmemb("sel_data_processed.txt", in_bits);
    $display("TB: input load done.");

    // 等复位释放
    @(posedge rst_n);
    @(posedge core_clk);

    // 依次发送 42 组数据
    for (g = 0; g < NUM_GROUPS; g = g + 1) begin
      // 1) 先把本组 4 行 1024bit -> 64 个 64bit beat
      //    映射规则：beat0 = line_bits[63:0]，beat1 = [127:64] ...
      for (line = 0; line < LINES_PER_GROUP; line = line + 1) begin
        for (b = 0; b < 16; b = b + 1) begin
          group_beats[line*16+b] = in_bits[g*LINES_PER_GROUP+line][(b*DATA_WIDTH)+:DATA_WIDTH];
        end
      end

      // 2) 通过 AXIS 发送这一组
      send_one_group(g);

      // 3) 等待 1 个输出 beat，并打印结果
      wait_for_output(g);
    end

    $display("TB: all groups done.");
    #100;
    $finish;
  end

  // --------------------------------------------------------------------
  // task: 发送一组 64 个 beat 到 s_axis
  // --------------------------------------------------------------------
  task send_one_group;
    input integer group_idx;
    integer bi;
    begin
      $display("TB: sending group %0d ...", group_idx);

      for (bi = 0; bi < BEATS_PER_GROUP; bi = bi + 1) begin
        @(posedge s_axis_aclk);

        s_axis_tdata  <= group_beats[bi];
        s_axis_tkeep  <= {DATA_WIDTH / 8{1'b1}};  // 全字节有效
        s_axis_tlast  <= (bi == BEATS_PER_GROUP - 1);
        s_axis_tvalid <= 1'b1;

        // 等待 ready 拉高完成 handshake
        while (!s_axis_tready) begin
          @(posedge s_axis_aclk);
        end
      end

      // 发送完一组，拉低 valid/last
      @(posedge s_axis_aclk);
      s_axis_tvalid <= 1'b0;
      s_axis_tlast  <= 1'b0;
      s_axis_tdata  <= {DATA_WIDTH{1'b0}};
      s_axis_tkeep  <= {DATA_WIDTH / 8{1'b0}};
    end
  endtask

  // --------------------------------------------------------------------
  // task: 等待 1 个 m_axis 输出 beat，解析低 2 字节为 int8 并打印
  // --------------------------------------------------------------------
  task wait_for_output;
    input integer group_idx;
    reg        [DATA_WIDTH-1:0] out_word;
    reg signed [           7:0] y0_s;
    reg signed [           7:0] y1_s;
    begin
      // 等待一次 valid && ready 的握手
      @(posedge s_axis_aclk);
      while (!(m_axis_tvalid && m_axis_tready)) begin
        @(posedge s_axis_aclk);
      end

      out_word = m_axis_tdata;

      // 低字节 = out0，高字节 = out1（和 Python parse_two_int8 对齐）
      y0_s     = out_word[7:0];
      y1_s     = out_word[15:8];

      $display("TB [Group %0d] raw=0x%016h -> out0=%0d, out1=%0d", group_idx, out_word, y0_s, y1_s);
    end
  endtask

endmodule
