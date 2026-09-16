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

    integer i;
    reg [31:0] seed;

    initial begin
        $dumpfile("rxaui_rx_only.vcd");
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
        seed = 98765;

        #200;
        reset_in_ = 1'b1;

        // 使能接收同步，但不发送任何数据（tx 数据保持 0）
        lane0_sync_ok = 1'b1;
        lane1_sync_ok = 1'b1;
        s_sigdet = 1'b1;

        // 接收侧注入 400 个随机数据，并每 20 个时钟插入 K28.5 逗号
        for (i = 0; i < 400; i = i + 1) begin
            @(posedge s_rx_clk);
            if (i % 20 == 0)
                rxaui_rx_data = 20'h00BC0;
            else
                rxaui_rx_data = {$random(seed)} % 1048576;
        end

        #200000;
        $finish;
    end

endmodule