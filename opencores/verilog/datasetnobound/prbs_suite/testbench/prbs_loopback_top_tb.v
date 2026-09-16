`timescale 1ns / 1ps

module prbs_loopback_top_tb;

    reg clk = 0;
    reg rst = 0;
    reg tst = 0;
    wire led15, led14, led13;

    // DUT 例化
    prbs_loopback_top DUT (
        .clk(clk),
        .rst_in(rst),
        .test_in(tst),
        .led15(led15),
        .led14(led14),
        .led13(led13)
    );

    // 100MHz 时钟
    always #5 clk = ~clk;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("prbs_loopback_top.vcd");
        $dumpvars(0, prbs_loopback_top_tb);

        // ② 激励序列
        rst = 1;                // 上电复位
        tst = 0;
        #100;
        rst = 0;                // 释放复位
        #2000;
        tst = 1;                // 注入噪声，扰乱 PRBS 序列
        #50000;                 // 运行 50us（50000ns）
        tst = 0;                // 关闭噪声
        #50000;                 // 再运行 50us，检查器稳定
        #10000;

        // ③ 结束仿真
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule