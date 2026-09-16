`timescale 10ps / 10ps
`include "sip_rxaui_params.inc"

module tb_sip_rxaui;

    // ========== 全局信号 ==========
    reg         reset_in_;
    reg         media_interface_mode;
    reg         scan_mode_;
    reg         serdes_mode;

    // ========== 发送接口 (XPCS → Serdes) ==========
    reg         txclk_in0;
    reg         txclk_in1;
    reg [19:0]  txdata_serdes0;
    reg [19:0]  txdata_serdes1;
    wire        txclk_out;

    // ========== Serdes 发送时钟与数据 ==========
    reg         s_tx_clk;
    wire [19:0] rxaui_tx_data;

    // ========== 接收接口 (Serdes → XPCS) ==========
    reg         lane0_sync_ok;
    reg         lane1_sync_ok;
    wire        lock;
    wire [19:0] rxdata_serdes0;
    wire [19:0] rxdata_serdes1;
    wire        rx_clk0;
    wire        rx_clk1;

    // ========== Serdes 接收接口 (模拟) ==========
    reg [19:0]  rxaui_rx_data;
    reg         s_sigdet;
    reg         s_rx_clk;

    // ========== 状态输出 ==========
    wire [8:0]  rxaui_status;

    // ========== DUT 例化 ==========
    sip_rxaui_top u_dut (
        .reset_in_           (reset_in_),
        .media_interface_mode(media_interface_mode),
        .scan_mode_          (scan_mode_),
        .serdes_mode         (serdes_mode),

        .txclk_in0           (txclk_in0),
        .txclk_in1           (txclk_in1),
        .txdata_serdes0      (txdata_serdes0),
        .txdata_serdes1      (txdata_serdes1),
        .txclk_out           (txclk_out),

        .s_tx_clk            (s_tx_clk),
        .rxaui_tx_data       (rxaui_tx_data),

        .lane0_sync_ok       (lane0_sync_ok),
        .lane1_sync_ok       (lane1_sync_ok),
        .lock                (lock),
        .rxdata_serdes0      (rxdata_serdes0),
        .rxdata_serdes1      (rxdata_serdes1),
        .rx_clk0             (rx_clk0),
        .rx_clk1             (rx_clk1),

        .rxaui_rx_data       (rxaui_rx_data),
        .s_sigdet            (s_sigdet),
        .s_rx_clk            (s_rx_clk),

        .rxaui_status        (rxaui_status)
    );

    // ========== 时钟生成 (周期 10ns = 100MHz) ==========
    initial s_tx_clk = 0;
    always #50 s_tx_clk = ~s_tx_clk;      // 100MHz (周期 100*10ps = 1ns) → 实际 10ns

    initial s_rx_clk = 0;
    always #50 s_rx_clk = ~s_rx_clk;

    initial txclk_in0 = 0;
    always #50 txclk_in0 = ~txclk_in0;

    initial txclk_in1 = 0;
    always #50 txclk_in1 = ~txclk_in1;

    // ========== 激励与 VCD 控制 ==========
    reg [31:0] seed;
    integer    i;

    initial begin
        // ① 生成 VCD
        $dumpfile("rxaui_top.vcd");
        $dumpvars(0, tb_sip_rxaui);

        // 初始化
        reset_in_           = 1'b0;      // 低有效复位生效
        media_interface_mode = 1'b0;
        scan_mode_          = 1'b0;
        serdes_mode         = 1'b0;
        txdata_serdes0      = 20'h00000;
        txdata_serdes1      = 20'h00000;
        lane0_sync_ok       = 1'b0;
        lane1_sync_ok       = 1'b0;
        rxaui_rx_data       = 20'h00000;
        s_sigdet            = 1'b0;
        seed                = 12345;

        // 复位释放
        #200;
        reset_in_ = 1'b1;

        // ② 使能接收同步
        #100;
        lane0_sync_ok = 1'b1;
        lane1_sync_ok = 1'b1;
        s_sigdet      = 1'b1;

        // ③ 产生随机发送数据（走发送通路）
        for (i = 0; i < 100; i = i + 1) begin
            @(posedge s_tx_clk);
            txdata_serdes0 = {$random(seed)} % 1048576;
            txdata_serdes1 = {$random(seed)} % 1048576;
        end

        // ④ 产生带逗号的接收激励（走接收通路）
        for (i = 0; i < 200; i = i + 1) begin
            @(posedge s_rx_clk);
            // 每 20 个周期插入一个 K28.5 逗号 (0xBC)
            if (i % 20 == 0)
                rxaui_rx_data = 20'h00BC0;  // 根据实际编码调整
            else
                rxaui_rx_data = {$random(seed)} % 1048576;
        end

        // ⑤ 运行一段时间后结束
        #2000;
        $display("Simulation finished at %0t ps", $time);
        $finish;
    end

endmodule