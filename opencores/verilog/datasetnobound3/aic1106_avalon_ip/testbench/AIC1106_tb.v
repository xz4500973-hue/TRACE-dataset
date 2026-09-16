`timescale 1ns / 1ps

module AIC1106_PCM_tb;

    // ================ 时钟和复位 ================
    reg csi_avalon_clk;
    reg csi_reset;
    reg csi_audio_clk;

    // ================ Avalon 从接口 ================
    reg  [1:0]  avs_creg_address;
    reg         avs_creg_chipselect;
    reg         avs_creg_write;
    reg         avs_creg_read;
    reg  [31:0] avs_creg_writedata;
    wire [31:0] avs_creg_readdata;

    // ================ Avalon ST 输入 ================
    reg  [31:0] asi_data;
    reg         asi_valid;
    wire        asi_ready;

    // ================ Avalon ST 输出 ================
    wire [31:0] aso_data;
    wire        aso_valid;

    // ================ 外部编解码器信号 ================
    wire        coe_mclk;
    wire        coe_pcmsyn;
    wire        coe_pcmi;
    reg         coe_pcmo;         // 来自编解码器的串行数据
    wire        coe_reset_n;
    wire        coe_mute;
    wire        coe_linsel;

    // ================ DUT 实例化 ================
    AIC1106_PCM u_dut (
        .csi_avalon_clk          (csi_avalon_clk),
        .csi_reset               (csi_reset),
        .csi_audio_clk           (csi_audio_clk),
        .avs_creg_address        (avs_creg_address),
        .avs_creg_chipselect     (avs_creg_chipselect),
        .avs_creg_write          (avs_creg_write),
        .avs_creg_read           (avs_creg_read),
        .avs_creg_writedata      (avs_creg_writedata),
        .avs_creg_readdata       (avs_creg_readdata),
        .asi_data                (asi_data),
        .asi_valid               (asi_valid),
        .asi_ready               (asi_ready),
        .aso_data                (aso_data),
        .aso_valid               (aso_valid),
        .coe_mclk                (coe_mclk),
        .coe_pcmsyn             (coe_pcmsyn),
        .coe_pcmi               (coe_pcmi),
        .coe_pcmo               (coe_pcmo),
        .coe_reset_n            (coe_reset_n),
        .coe_mute               (coe_mute),
        .coe_linsel             (coe_linsel)
    );

    // ================ 时钟生成 ================
    // Avalon 系统时钟 50MHz (20ns)
    initial csi_avalon_clk = 0;
    always #10 csi_avalon_clk = ~csi_avalon_clk;

    // 音频时钟 2.048MHz (约488.28ns，这里用488ns)
    initial csi_audio_clk = 0;
    always #244 csi_audio_clk = ~csi_audio_clk;

    // ================ 外部编解码器串行数据模型 ================
    // 当不启用环回时 (loopback_r=0)，我们需要模拟 coe_pcmo 输入
    reg [15:0] pcm_word;        // 当前发送的 PCM 字
    reg [3:0]  bit_cnt;        // 位计数器 (16 bits)
    reg        shift_active;    // 是否正在移位

    // 在 pcmsyn 上升沿开始一个新字的发送，然后每个音频时钟移出一位
    always @(posedge csi_audio_clk or posedge csi_reset) begin
        if (csi_reset) begin
            coe_pcmo      <= 1'b0;
            pcm_word      <= 16'h0000;
            bit_cnt       <= 0;
            shift_active  <= 1'b0;
        end else begin
            // 如果复位有效，停止
            if (!coe_reset_n) begin
                coe_pcmo      <= 1'b0;
                shift_active  <= 1'b0;
            end else if (coe_pcmsyn && !shift_active) begin
                // 开始一个新字
                pcm_word      <= {$random} % 65536;  // 随机音频样本
                bit_cnt       <= 15;
                coe_pcmo      <= pcm_word[15]; // MSB first
                shift_active  <= 1'b1;
            end else if (shift_active) begin
                if (bit_cnt > 0) begin
                    bit_cnt  <= bit_cnt - 1;
                    coe_pcmo <= pcm_word[bit_cnt-1];
                end else begin
                    coe_pcmo      <= 1'b0;
                    shift_active  <= 1'b0;
                end
            end
        end
    end

    // ================ Avalon 寄存器写任务 ================
    task avalon_write;
        input [31:0] data;
    begin
        @(posedge csi_avalon_clk);
        avs_creg_address    <= 2'h0;
        avs_creg_writedata  <= data;
        avs_creg_chipselect <= 1'b1;
        avs_creg_write      <= 1'b1;
        @(posedge csi_avalon_clk);
        avs_creg_write      <= 1'b0;
        avs_creg_chipselect <= 1'b0;
        @(posedge csi_avalon_clk); // 等待一个周期
    end
    endtask

    // ================ 音频数据流发送任务 ================
    task send_audio_sample;
        input [31:0] sample;    // 包含左右声道？模块中 tx_latch_r 32位，然后拆成高16位和低16位
    begin
        // 等待 asi_ready 有效
        wait (asi_ready);
        @(negedge csi_audio_clk); // 在半周期边缘保证 hold
        asi_data  <= sample;
        asi_valid <= 1'b1;
        @(negedge csi_audio_clk);
        asi_valid <= 1'b0;
    end
    endtask

    // ================ 主测试流程 ================
    integer i;
    reg [31:0] sample;
    initial begin
        // 打开 VCD 波形
        $dumpfile("AIC1106_PCM_d3_tb.vcd");
        $dumpvars(0, AIC1106_PCM_tb);

        // 初始化
        csi_reset           = 1'b1;
        avs_creg_address    = 2'h0;
        avs_creg_chipselect = 1'b0;
        avs_creg_write      = 1'b0;
        avs_creg_read       = 1'b0;
        avs_creg_writedata  = 32'h0;
        asi_data            = 32'h0;
        asi_valid           = 1'b0;

        // 复位保持一段时间
        repeat(20) @(posedge csi_avalon_clk);
        csi_reset = 1'b0;
        repeat(20) @(posedge csi_avalon_clk);

        // 配置寄存器：使能、音量、不静音，先不环回
        // 写入 {6:reset_req, 5:loopback, 4:enable, 3:mute, 2:0, 1:0, 0:volume[2:0]}
        // 设置 enable=1, mute=0, volume=001 (0dB), loopback=0
        avalon_write({25'h0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 3'b001}); // 0x10_01 大致

        // 等待音频部分稳定
        repeat(30) @(posedge csi_audio_clk);

        $display("=== AIC1106_PCM Power Testbench ===");
        $display("Sending random audio samples in normal mode...");

        // 发送 200 帧音频数据（每帧包含两个16-bit采样，左右声道）
        for (i = 0; i < 200; i = i + 1) begin
            sample = {$random} ^ {$random};   // 32位随机数据
            send_audio_sample(sample);
        end

        // 切换到环回模式 (loopback=1)
        $display("Switching to loopback mode...");
        avalon_write({25'h0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 3'b001}); // loopback=1, enable=1

        // 再发送一些数据，但此时内部环回
        for (i = 0; i < 200; i = i + 1) begin
            sample = $random;
            send_audio_sample(sample);
        end

        // 静音测试
        $display("Mute test...");
        avalon_write({25'h0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 3'b001}); // mute=1
        repeat(30) @(posedge csi_audio_clk);
        // 取消静音
        avalon_write({25'h0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 3'b001}); // mute=0

        // 继续发送一些数据
        for (i = 0; i < 200; i = i + 1) begin
            sample = $random;
            send_audio_sample(sample);
        end

        // 软复位测试
        $display("Soft reset test...");
        avalon_write({25'h0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 3'b001}); // reset_req=1
        repeat(15) @(posedge csi_audio_clk);
        avalon_write({25'h0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 3'b001}); // 清除复位，重新使能
        repeat(15) @(posedge csi_audio_clk);

        // 最后再多运行一些时间
        for (i = 0; i < 100; i = i + 1) begin
            sample = $random;
            send_audio_sample(sample);
        end

        #10000;
        $display("=== Testbench complete ===");
        $finish;
    end

endmodule