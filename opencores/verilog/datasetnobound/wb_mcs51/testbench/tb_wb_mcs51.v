`timescale 1ns / 1ps

module tb_wb_mcs51;

    // 参数定义
    parameter mcs51_aw = 8;
    parameter wb_aw = 16;

    reg  nrst_i;
    reg  clk_i;
    reg  mcs51_ale;
    reg  mcs51_rd;
    reg  mcs51_wr;
    wire [mcs51_aw-1:0] mcs51_ad_inout;

    // Wishbone 接口
    wire [wb_aw-1:0]  wbm_adr_o;
    wire [7:0]        wbm_dat_i;
    wire [7:0]        wbm_dat_o;
    wire              wbm_sel_o;
    wire              wbm_cyc_o;
    wire              wbm_stb_o;
    wire              wbm_we_o;
    reg               wbm_ack_i;
    reg               wbm_rty_i;
    reg               wbm_err_i;
    reg  [7:0]        wbm_dat_i_reg;

    // 双向总线的建模
    reg  [mcs51_aw-1:0] mcs51_ad_drive;
    reg                 mcs51_ad_oe;
    assign mcs51_ad_inout = mcs51_ad_oe ? mcs51_ad_drive : {mcs51_aw{1'bz}};

    // 例化 DUT
    wb_mcs51 #(
        .mcs51_aw(mcs51_aw),
        .wb_aw(wb_aw)
    ) uut (
        .nrst_i           (nrst_i),
        .clk_i            (clk_i),
        .mcs51_ale        (mcs51_ale),
        .mcs51_rd         (mcs51_rd),
        .mcs51_wr         (mcs51_wr),
        .mcs51_ad_inout   (mcs51_ad_inout),
        .wbm_adr_o        (wbm_adr_o),
        .wbm_dat_i        (wbm_dat_i),
        .wbm_dat_o        (wbm_dat_o),
        .wbm_sel_o        (wbm_sel_o),
        .wbm_cyc_o        (wbm_cyc_o),
        .wbm_stb_o        (wbm_stb_o),
        .wbm_we_o         (wbm_we_o),
        .wbm_ack_i        (wbm_ack_i),
        .wbm_rty_i        (wbm_rty_i),
        .wbm_err_i        (wbm_err_i)
    );

    // Wishbone 从设备模型：当 stb_i 有效时，返回随机数据并给出 ack
    // 写操作不检查数据，只是给出应答
    always @(posedge clk_i or negedge nrst_i)
        if (!nrst_i) begin
            wbm_ack_i <= 1'b0;
            wbm_dat_i_reg <= 8'h00;
            wbm_rty_i <= 1'b0;
            wbm_err_i <= 1'b0;
        end else begin
            if (wbm_cyc_o && wbm_stb_o && !wbm_ack_i) begin
                // 单周期应答
                wbm_ack_i <= 1'b1;
                if (!wbm_we_o) begin  // 读周期，返回数据
                    wbm_dat_i_reg <= $random % 256;
                end
            end else begin
                wbm_ack_i <= 1'b0;
            end
        end

    assign wbm_dat_i = wbm_dat_i_reg;

    // 100MHz 时钟
    initial clk_i = 0;
    always #5 clk_i = ~clk_i;

    // MCS-51 总线任务
    // 写周期: ALE 锁存地址，WR 低有效，AD 总线在 WR 下降沿附近驱动数据
    task mcs51_write;
        input [mcs51_aw-1:0] addr;
        input [7:0] data;
        begin
            // 地址阶段
            mcs51_ale = 1;
            mcs51_rd = 1;
            mcs51_wr = 1;
            mcs51_ad_oe = 1;
            mcs51_ad_drive = addr;
            #20;  // ALE 脉冲宽度
            mcs51_ale = 0;
            #10;
            // 数据阶段
            mcs51_ad_drive = data;
            mcs51_wr = 0;   // 写使能低有效
            #40;            // WR 脉冲宽度
            mcs51_wr = 1;
            #10;
            mcs51_ad_oe = 0; // 释放总线
        end
    endtask

    // 读周期: ALE 锁存地址，RD 低有效，设备在 RD 期间驱动数据到 AD 总线
    task mcs51_read;
        input  [mcs51_aw-1:0] addr;
        output [7:0] data;
        begin
            // 地址阶段
            mcs51_ale = 1;
            mcs51_rd = 1;
            mcs51_wr = 1;
            mcs51_ad_oe = 1;
            mcs51_ad_drive = addr;
            #20;
            mcs51_ale = 0;
            #10;
            // 释放总线，由外部设备驱动
            mcs51_ad_oe = 0;
            mcs51_rd = 0;   // 读使能低有效
            #40;
            data = mcs51_ad_inout;  // 采样
            mcs51_rd = 1;
            #10;
        end
    endtask

    integer i;
    reg [7:0] rd_data;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("wb_mcs51.vcd");
        $dumpvars(0, tb_wb_mcs51);

        // 初始化
        nrst_i = 1'b0;
        mcs51_ale = 1;
        mcs51_rd = 1;
        mcs51_wr = 1;
        mcs51_ad_oe = 0;
        mcs51_ad_drive = 0;

        // 释放复位
        #100;
        nrst_i = 1'b1;
        #100;

        // ② 执行多次写周期
        $display("Starting write cycles...");
        for (i = 0; i < 50; i = i + 1) begin
            mcs51_write($random % 256, $random % 256);
        end

        // ③ 执行多次读周期
        $display("Starting read cycles...");
        for (i = 0; i < 50; i = i + 1) begin
            mcs51_read($random % 256, rd_data);
        end

        // ④ 混合随机读写
        for (i = 0; i < 100; i = i + 1) begin
            if ($random % 2)
                mcs51_write($random % 256, $random % 256);
            else
                mcs51_read($random % 256, rd_data);
        end

        // ⑤ 仿真结束
        #1000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule