`timescale 10ns / 10ns
`define SIM   // 启用行为级 ROM/RAM 模型

module test;

    reg clk;
    reg rst;

    // core 的外设接口（未使用，置为无效）
    wire [7:0] dvc_wr_addr, dvc_rd_addr, data_mem2dvc;
    wire [7:0] data_dvc2mem = 8'h00;   // 输入固定为 0
    wire dvc_wr, dvc_rd;

    assign dvc_rd = 1'b0;   // 禁止外设读

    // 时钟
    initial begin
        clk = 0;
        forever #1 clk = ~clk;   // 周期 2 个时间单位 (20ns)
    end

    // 仿真控制
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("clairisc.vcd");
        $dumpvars(0, test);

        // ② 复位释放
        rst = 1;
        #10 rst = 0;
        #10 rst = 1;
        #10 rst = 0;

        // ③ 运行一段时间（ROM 里的程序会循环执行，产生丰富的翻转）
        #50000;   // 50000 * 10ns = 0.5ms，足够多指令周期
        $display("Simulation finished at %0t", $time);
        $finish;
    end

    // DUT 实例化
    ClaiRISC_core I_ClaiRISC_core (
        .clk            (clk),
        .rst            (rst),
        .dvc_wr_addr    (dvc_wr_addr),
        .dvc_rd_addr    (dvc_rd_addr),
        .data_mem2dvc   (data_mem2dvc),
        .data_dvc2mem   (data_dvc2mem),
        .dvc_wr         (dvc_wr),
        .dvc_rd         (dvc_rd)
    );

endmodule