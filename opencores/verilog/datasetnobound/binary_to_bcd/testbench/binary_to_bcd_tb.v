`timescale 1ns / 1ps

module tb_binary_to_bcd;

    // 参数（与 DUT 匹配）
    localparam BITS_IN_PP        = 16;
    localparam BCD_DIGITS_OUT_PP = 5;  // 足够表示 65535 -> 5 位 BCD
    localparam BIT_COUNT_WIDTH_PP = 4;

    // 信号定义
    reg clk_i;
    reg ce_i;
    reg rst_i;
    reg start_i;
    reg [BITS_IN_PP-1:0] dat_binary_i;
    wire [4*BCD_DIGITS_OUT_PP-1:0] dat_bcd_o;
    wire done_o;

    // 实例化 DUT
    binary_to_bcd #(
        .BITS_IN_PP(BITS_IN_PP),
        .BCD_DIGITS_OUT_PP(BCD_DIGITS_OUT_PP),
        .BIT_COUNT_WIDTH_PP(BIT_COUNT_WIDTH_PP)
    ) u_dut (
        .clk_i(clk_i),
        .ce_i(ce_i),
        .rst_i(rst_i),
        .start_i(start_i),
        .dat_binary_i(dat_binary_i),
        .dat_bcd_o(dat_bcd_o),
        .done_o(done_o)
    );

    // 时钟生成（100 MHz）
    initial clk_i = 0;
    always #5 clk_i = ~clk_i;

    // 时钟使能始终有效
    initial ce_i = 1;

    // 参考模型：二进制转 BCD（使用多次除 10 取余）
    function [4*BCD_DIGITS_OUT_PP-1:0] bin_to_bcd_ref;
        input [BITS_IN_PP-1:0] bin;
        integer i;
        reg [3:0] digits [0:BCD_DIGITS_OUT_PP-1];
        reg [31:0] tmp;
    begin
        tmp = bin;
        for (i = 0; i < BCD_DIGITS_OUT_PP; i = i + 1) begin
            digits[i] = tmp % 10;
            tmp = tmp / 10;
        end
        for (i = 0; i < BCD_DIGITS_OUT_PP; i = i + 1) begin
            bin_to_bcd_ref[4*i +: 4] = digits[i];
        end
    end
    endfunction

    // 测试过程
    integer i, num_tests, seed;
    reg [BITS_IN_PP-1:0] bin_val;
    reg [4*BCD_DIGITS_OUT_PP-1:0] exp_bcd;
    integer err_cnt;

    initial begin
        $dumpfile("binary_to_bcd_gate.vcd");
        $dumpvars(0, tb_binary_to_bcd);
        $display("=== binary_to_bcd Testbench ===");

        // 初始化
        rst_i = 1;
        start_i = 0;
        dat_binary_i = 0;
        #100;
        rst_i = 0;
        #20;

        seed = 12345;
        err_cnt = 0;
        num_tests = 500;   // 运行 500 次转换，产生足够翻转

        for (i = 0; i < num_tests; i = i + 1) begin
            // 等待 DUT 空闲
            wait(done_o == 1'b1);
            #10;  // 等待一个稳定周期
            // 生成随机二进制数
            bin_val = {$random(seed)} % (1 << BITS_IN_PP);
            dat_binary_i = bin_val;
            // 计算期望值
            exp_bcd = bin_to_bcd_ref(bin_val);

            // 启动转换
            start_i = 1;
            #10;
            start_i = 0;

            // 等待转换完成
            wait(done_o == 1'b1);
            #10;
            // 检查结果
            if (dat_bcd_o !== exp_bcd) begin
                $display("ERROR: bin=%h, expected BCD=%h, got BCD=%h", bin_val, exp_bcd, dat_bcd_o);
                err_cnt = err_cnt + 1;
            end else begin
                $display("OK: bin=%h -> BCD=%h", bin_val, dat_bcd_o);
            end
        end

        // 额外增加一些边界测试
        // 全 0
        wait(done_o == 1'b1); #10;
        dat_binary_i = 0;
        start_i = 1; #10; start_i = 0;
        wait(done_o == 1'b1); #10;
        if (dat_bcd_o !== bin_to_bcd_ref(0)) $display("ERROR: zero case");

        // 全 1（最大值）
        wait(done_o == 1'b1); #10;
        dat_binary_i = {BITS_IN_PP{1'b1}};
        start_i = 1; #10; start_i = 0;
        wait(done_o == 1'b1); #10;
        if (dat_bcd_o !== bin_to_bcd_ref({BITS_IN_PP{1'b1}})) $display("ERROR: max case");

        // 增加随机连续启动，不等待之前完成？（不推荐，但为了增加翻转，我们可以连续启动）
        // 但是模块内部 busy_bit 会阻止启动，所以只能等 done。

        $display("Test completed, errors = %0d", err_cnt);
        #50000;
        $finish;
    end

    // 可选：监视状态转换以便调试
    always @(posedge clk_i) begin
        if (done_o !== 1'b1 && u_dut.busy_bit === 1'b1) begin
            // 每 16 周期可以打印一次（可选）
            // $display("Processing: bit_count=%d", u_dut.bit_count);
        end
    end

endmodule