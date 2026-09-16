`timescale 1ns / 1ps

module bcd_to_binary_tb;

    reg clk_i;
    reg ce_i;
    reg rst_i;
    reg start_i;
    reg [23:0] dat_bcd_i;     // 6 位 BCD 输入 (每 4bit 表示一位)

    wire [15:0] dat_binary_o;
    wire        done_o;

    // 实例化被测模块
    // 参数顺序：BCD 位数(6), 二进制输出位宽(16), 位计数器位宽(4)
    bcd_to_binary #(6, 16, 4) u_dut (
        .clk_i        (clk_i),
        .ce_i         (ce_i),
        .rst_i        (rst_i),
        .start_i      (start_i),
        .dat_bcd_i    (dat_bcd_i),
        .dat_binary_o (dat_binary_o),
        .done_o       (done_o)
    );

    // ========== 100MHz 时钟 ==========
    initial clk_i = 0;
    always #5 clk_i = ~clk_i;

    // ========== 主测试流程 ==========
    integer i;
    reg [31:0] seed;

    // 生成一个合法的随机 BCD 数（24bit，共6位，每4bit 0~9）
    function [23:0] rand_bcd;
        input [31:0] seed;
        integer j;
        reg [3:0] digit;
        begin
            rand_bcd = 0;
            for (j = 0; j < 6; j = j + 1) begin
                digit = {$random(seed)} % 10;   // 每位数 0~9
                rand_bcd = rand_bcd | (digit << (4*j));
            end
        end
    endfunction

    initial begin
        // ① 输出 VCD
        $dumpfile("bcd_to_binary.vcd");
        $dumpvars(0, bcd_to_binary_tb);

        // 初始化
        ce_i = 1'b1;
        rst_i = 1'b1;
        start_i = 1'b0;
        dat_bcd_i = 24'h0;
        seed = 12345;

        // 释放复位
        #100;
        rst_i = 1'b0;
        #100;

        // 循环 500 次转换
        for (i = 0; i < 500; i = i + 1) begin
            // 生成随机 BCD 输入
            dat_bcd_i = rand_bcd(seed);

            // 发起转换（start_i 维持一个时钟周期）
            @(posedge clk_i);
            start_i = 1'b1;
            @(posedge clk_i);
            start_i = 1'b0;

            // 等待转换完成
            wait (done_o);

            // 随机空闲 1~5 个时钟周期
            repeat({$random(seed)} % 5 + 1) @(posedge clk_i);
        end

        #200;
        $finish;
    end

endmodule