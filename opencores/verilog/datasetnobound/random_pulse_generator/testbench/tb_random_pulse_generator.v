`timescale 1ns / 1ps

module tb_random_pulse_generator;

    reg clk;
    reg ce;
    reg rst;
    wire q;

    // 例化顶层模块
    random_pulse_generator #(
        .LN2_PERIOD(4)       // 与原设计保持一致
    ) u_dut (
        .clk(clk),
        .ce(ce),
        .rst(rst),
        .q(q)
    );

    // 100MHz 时钟
    initial clk = 0;
    always #5 clk = ~clk;

    // 仿真控制
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("random_pulse_generator.vcd");
        $dumpvars(0, tb_random_pulse_generator);

        // 初始化
        rst = 1;
        ce  = 0;

        // 复位释放
        #100;
        rst = 0;
        #20;

        // ② 使能并运行 100μs，让 LFSR 和脉冲产生器持续活动
        ce = 1;
        #100_000;   // 100,000ns = 100μs，约 10,000 个时钟周期

        // ③ 关闭使能，再运行一小段时间
        ce = 0;
        #5000;

        // 结束仿真
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule