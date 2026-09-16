`timescale 1ns / 1ps

module lfsr_tb;

    reg clk, rst;
    reg cke, clear, set, rew;

    // 生成 VCD 文件
    initial begin
        $dumpfile("vcnt.vcd");
        $dumpvars(0, lfsr_tb);
    end

    // 100MHz 时钟
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // 主测试流程
    integer i;
    initial begin
        // 初始化
        cke   = 0;
        clear = 0;
        set   = 0;
        rew   = 0;
        rst   = 1;
        #400 rst = 0;

        // 使能计数器
        #1000 cke = 1;

        // 随机改变控制信号，产生复杂翻转
        for (i = 0; i < 100; i = i + 1) begin
            // 随机使能/禁用
            cke   = $random % 2;
            // 偶尔清零
            clear = ($random % 5 == 0);
            // 偶尔置数
            set   = ($random % 7 == 0);
            // 偶尔改变方向
            rew   = ($random % 3 == 0);
            // 等待若干时钟周期
            repeat($random % 20 + 5) @(posedge clk);
            // 恢复控制信号默认值
            clear = 0;
            set   = 0;
        end

        // 继续运行一段时间后停止
        repeat(100) @(posedge clk);
        $display("Simulation finished at %0t", $time);
        $finish;
    end

    // DUT 实例化
    vcnt DUT (
        .clear(clear),
        .cke(cke),
        .set(set),
        .rew(rew),
        .q(),
        .clk(clk),
        .rst(rst)
    );

endmodule