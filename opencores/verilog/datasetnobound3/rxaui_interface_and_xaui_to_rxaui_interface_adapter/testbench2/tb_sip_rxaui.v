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
        $dumpfile("rxaui_random_stress.vcd");
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
        seed = 33333;

        #200;
        reset_in_ = 1'b1;

        // 随机使能/禁用接收同步
        fork
            // 随机产生发送数据
            forever begin
                #({$random(seed)} % 500);
                @(posedge s_tx_clk);
                txdata_serdes0 = {$random(seed)} % 1048576;
                txdata_serdes1 = {$random(seed)} % 1048576;
            end
            // 随机注入接收数据并随机插入逗号
            forever begin
                #({$random(seed)} % 300);
                @(posedge s_rx_clk);
                if ({$random(seed)} % 5 == 0)
                    rxaui_rx_data = 20'h00BC0;
                else
                    rxaui_rx_data = {$random(seed)} % 1048576;
            end
            // 随机切换 lane0_sync_ok, lane1_sync_ok, s_sigdet
            forever begin
                #({$random(seed)} % 1000);
                lane0_sync_ok = {$random(seed)} % 2;
                lane1_sync_ok = {$random(seed)} % 2;
                s_sigdet = {$random(seed)} % 2;
            end
        join

        // 运行 10ms 后结束（足够长）
        #10_000_000;
        $finish;
    end

endmodule