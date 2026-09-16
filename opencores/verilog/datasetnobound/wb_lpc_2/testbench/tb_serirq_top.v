`timescale 1ns / 1ps
`include "serirq_defines.v"

module tb_serirq_top;

    reg         clk;
    reg         rst_n;
    reg         mode;
    reg  [31:0] irq_in;
    wire [31:0] irq_out;

    // 例化顶层
    serirq_top dut (
        .clk_i          (clk),
        .nrst_i         (rst_n),
        .serirq_mode_i  (mode),
        .irq_i          (irq_in),
        .irq_o          (irq_out)
    );

    // 时钟生成 (33 MHz, 周期 30 ns)
    initial clk = 0;
    always #15 clk = ~clk;

    // 测试主流程
    initial begin
        // ① 生成 VCD
        $dumpfile("serirq_top.vcd");
        $dumpvars(0, tb_serirq_top);

        // ② 初始化
        rst_n  = 1'b0;
        mode   = `SERIRQ_MODE_CONTINUOUS;
        irq_in = 32'hFFFFFFFF;      // 所有中断无效（低有效）

        // 释放复位
        #100;
        rst_n = 1'b1;

        // ③ 等待系统启动
        #500;

        // ④ 使能 Quiet 模式，观察启动序列
        mode = `SERIRQ_MODE_QUIET;
        #5000;

        // ⑤ 切换回 Continuous 模式
        mode = `SERIRQ_MODE_CONTINUOUS;
        #5000;

        // ⑥ 产生一些随机中断请求（低有效）
        repeat (10) begin
            irq_in = $random;
            #10000;
        end

        // ⑦ 关闭所有中断
        irq_in = 32'hFFFFFFFF;

        // ⑧ 再运行一段时间，让状态机稳定
        #20000;

        // ⑨ 结束仿真
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule