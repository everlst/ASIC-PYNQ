module fc_axis_ip #(
  parameter integer DATA_W    = 1024,
  parameter integer IN_WORDS  = 4,     // 4个1024b输入块
  parameter integer OUT_BYTES = 2      // 输出2字节
) (
  // ========== AXI-Lite (控制) ==========
  input  wire s_axi_aclk,
  input  wire s_axi_aresetn,
  // 这里只写最小集：你可以用 Vivado 生成 AXI-Lite 模板后把寄存器接进来
  input  wire start_reg,      // AXI-Lite写1启动
  output wire done_reg,       // AXI-Lite读完成

  // ========== AXI-Stream Slave 输入 ==========
  input  wire              s_axis_aclk,
  input  wire              s_axis_aresetn,
  input  wire [DATA_W-1:0] s_axis_tdata,
  input  wire              s_axis_tvalid,
  output wire              s_axis_tready,
  input  wire              s_axis_tlast,    // 可不用

  // ========== AXI-Stream Master 输出 ==========
  input  wire              m_axis_aclk,
  input  wire              m_axis_aresetn,
  output wire [DATA_W-1:0] m_axis_tdata,
  output wire              m_axis_tvalid,
  input  wire              m_axis_tready,
  output wire              m_axis_tlast
);

  wire clk_i = s_axis_aclk;  // 统一时钟
  wire rst_n_i = s_axis_aresetn;

  // =========================================================
  // 1) 输入 FIFO： AXIS -> FIFO
  // =========================================================
  wire in_full, in_near_full, in_empty;
  wire [DATA_W-1:0] in_fifo_dout;
  wire              in_fifo_valid;
  reg               in_fifo_rd_en;

  // 写入来自 S_AXIS（DMA 的 MM2S）
  syn_fifo #(
    .DATA_WIDTH(DATA_W),  // 1024
    .ADDR_WIDTH(3),       // depth=8
    .REMAIN_NUM(3)
  ) u_in_fifo (
    .clk  (clk_i),
    .rst_n(rst_n_i),

    .wr_en  (s_axis_tvalid && s_axis_tready),
    .wr_data(s_axis_tdata),

    .rd_en  (in_fifo_rd_en),
    .rd_data(in_fifo_dout),
    .valid  (in_fifo_valid),

    .full     (in_full),
    .near_full(in_near_full),
    .empty    (in_empty)
  );

  // AXIS ready：FIFO 不满就能收
  assign s_axis_tready = ~in_full;


  // =========================================================
  // 2) 把 4 个 1024b word 缓存成 input_buf[]
  //    并给 fc_top_ip 提供 RAM式接口
  // =========================================================
  reg  [DATA_W-1:0] input_buf     [0:IN_WORDS-1];
  reg  [       2:0] load_cnt;

  // fc_top_ip 接口信号
  wire [       1:0] in_addr_o;
  wire [DATA_W-1:0] in_data_i_mux;
  reg               core_start;
  wire              core_done;

  assign in_data_i_mux = input_buf[in_addr_o];

  // 装载状态机
  localparam L_IDLE = 0, L_LOAD = 1, L_RUN = 2;
  reg [1:0] lstate;

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      lstate        <= L_IDLE;
      load_cnt      <= 0;
      in_fifo_rd_en <= 0;
      core_start    <= 0;
    end else begin
      core_start    <= 0;
      in_fifo_rd_en <= 0;
      case (lstate)
        L_IDLE: begin
          load_cnt <= 0;
          if (start_reg && !in_empty) lstate <= L_LOAD;
        end
        L_LOAD: begin
          if (!in_empty) in_fifo_rd_en <= 1'b1;
          if (in_fifo_valid) begin
            input_buf[load_cnt] <= in_fifo_dout;
            load_cnt            <= load_cnt + 1'b1;
            if (load_cnt == IN_WORDS - 1) begin
              lstate     <= L_RUN;
              core_start <= 1'b1;  // pulse 启动 core
            end
          end
        end
        L_RUN: begin
          if (core_done) lstate <= L_IDLE;
        end
      endcase
    end
  end

  // =========================================================
  // 3) 实例化你的 fc_top_ip
  // =========================================================
  wire [7:0] fc_out;
  wire       fc_out_en;

  fc_top_ip u_core (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(core_start),
    .done_o (core_done),

    .in_addr_o(in_addr_o),
    .in_data_i(in_data_i_mux),

    .final_out_wdata(fc_out),
    .fc_out_en      (fc_out_en)
  );

  assign done_reg = core_done;

  // =========================================================
  // 4) 输出打包：8bit -> DATA_W
  // =========================================================
  localparam integer OUT_WORD_BYTES = DATA_W / 8;
  reg [              DATA_W-1:0] out_pack;
  reg [$clog2(OUT_WORD_BYTES):0] out_byte_cnt;
  reg [     $clog2(OUT_BYTES):0] out_total_cnt;
  reg                            out_pack_fire;

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      out_pack      <= 0;
      out_byte_cnt  <= 0;
      out_total_cnt <= 0;
      out_pack_fire <= 0;
    end else begin
      out_pack_fire <= 0;

      if (fc_out_en) begin
        // little-endian 依次塞入
        out_pack[8*out_byte_cnt+:8] <= fc_out;
        out_byte_cnt                <= out_byte_cnt + 1'b1;
        out_total_cnt               <= out_total_cnt + 1'b1;

        if (out_byte_cnt == OUT_WORD_BYTES - 1 || out_total_cnt == OUT_BYTES - 1) begin
          out_pack_fire <= 1'b1;  // 满一个word或最后一个byte就发
          out_byte_cnt  <= 0;
          out_pack      <= 0;
        end
      end

      if (lstate == L_IDLE) begin
        out_total_cnt <= 0;  // 下一次推理重新计数
      end
    end
  end

  // =========================================================
  // 5) 输出 FIFO： pack -> FIFO -> AXIS
  // =========================================================
  wire out_full, out_near_full, out_empty;
  wire [DATA_W-1:0] out_fifo_dout;
  wire              out_fifo_valid;
  reg               out_fifo_rd_en;

  // 写入来自 fc 输出打包 out_pack_fire / out_pack
  syn_fifo #(
    .DATA_WIDTH(DATA_W),  // 1024
    .ADDR_WIDTH(3),
    .REMAIN_NUM(3)
  ) u_out_fifo (
    .clk  (clk_i),
    .rst_n(rst_n_i),

    .wr_en  (out_pack_fire && !out_full),
    .wr_data(out_pack),

    .rd_en  (out_fifo_rd_en),
    .rd_data(out_fifo_dout),
    .valid  (out_fifo_valid),

    .full     (out_full),
    .near_full(out_near_full),
    .empty    (out_empty)
  );

  // ---------------- AXIS master 寄存握手 ----------------
  reg              axis_valid_r;
  reg [DATA_W-1:0] axis_data_r;
  reg              axis_last_r;

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      axis_valid_r   <= 1'b0;
      axis_data_r    <= {DATA_W{1'b0}};
      axis_last_r    <= 1'b0;
      out_fifo_rd_en <= 1'b0;
    end else begin
      out_fifo_rd_en <= 1'b0;

      // 1) 只有当 AXIS 当前空闲，且 FIFO 非空，才去读 FIFO
      if (!axis_valid_r && !out_empty) begin
        out_fifo_rd_en <= 1'b1;
      end

      // 2) 读出来的那拍 valid=1，把数据锁存到 axis 寄存器
      if (out_fifo_valid) begin
        axis_data_r  <= out_fifo_dout;
        axis_valid_r <= 1'b1;

        // 这里的 last 你需要用“已发word计数”更准
        axis_last_r  <= (  /*out_words_sent == OUT_WORDS-1*/ 1'b0);
      end

      // 3) 下游 ready && 当前 valid => 完成一次 AXIS 发送
      if (axis_valid_r && m_axis_tready) begin
        axis_valid_r <= 1'b0;
        axis_last_r  <= 1'b0;
      end
    end
  end

  assign m_axis_tdata  = axis_data_r;
  assign m_axis_tvalid = axis_valid_r;
  assign m_axis_tlast  = axis_last_r;


endmodule
