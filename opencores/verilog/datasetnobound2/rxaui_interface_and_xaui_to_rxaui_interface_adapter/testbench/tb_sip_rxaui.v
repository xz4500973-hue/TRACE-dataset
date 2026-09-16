`timescale 10ps / 10ps

module tb_sip_rxaui;

    reg         reset_in_;
    reg         media_interface_mode;
    reg         scan_mode_;
    reg         serdes_mode;

    reg         txclk_in0;
    reg         txclk_in1;
    reg [19:0]  txdata_serdes0;
    reg [19:0]  txdata_serdes1;
    wire        txclk_out;

    reg         s_tx_clk;
    wire [19:0] rxaui_tx_data;

    reg         lane0_sync_ok;
    reg         lane1_sync_ok;
    wire        lock;
    wire [19:0] rxdata_serdes0;
    wire [19:0] rxdata_serdes1;
    wire        rx_clk0;
    wire        rx_clk1;

    reg [19:0]  rxaui_rx_data;
    reg         s_sigdet;
    reg         s_rx_clk;

    wire [8:0]  rxaui_status;

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

    integer i;
    reg [31:0] seed;

    initial begin
        $dumpfile("rxaui_tx_only.vcd");
        $dumpvars(0, tb_sip_rxaui);

        reset_in_ = 1'b0;
        media_interface_mode = 1'b0;
        scan_mode_ = 1'b0;
        serdes_mode = 1'b0;
        txdata_serdes0 = 20'h00000;
        txdata_serdes1 = 20'h00000;
        lane0_sync_ok = 1'b0;
        lane1_sync_ok = 1'b0;
        rxaui_rx_data = 20'h00000;
        s_sigdet = 1'b0;
        seed = 54321;

        #200;
        reset_in_ = 1'b1;

        // 不使能接收同步，仅发送数据
        lane0_sync_ok = 1'b0;
        lane1_sync_ok = 1'b0;
        s_sigdet = 1'b0;

        // 发送 500 个随机数据包
        for (i = 0; i < 500; i = i + 1) begin
            @(posedge s_tx_clk);
            txdata_serdes0 = {$random(seed)} % 1048576;
            txdata_serdes1 = {$random(seed)} % 1048576;
        end

        #200000;
        $finish;
    end

endmodule