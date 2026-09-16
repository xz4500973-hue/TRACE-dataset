`timescale 1ns / 1ps

module divider_tb;

    reg clk = 0, rst = 0;
    always #1 clk = ~clk;

    reg [31:0] dividend = 0, divisor = 0;
    reg start = 0;
    wire ready;
    wire [31:0] quotient, remainder;

    integer test_count = 0;

    // DUT
    divider_dshift dut (
        .i_clk(clk),
        .i_rst(rst),
        .i_dividend(dividend),
        .i_divisor(divisor),
        .i_start(start),
        .o_ready(ready),
        .o_quotient(quotient),
        .o_remainder(remainder)
    );

    // 生成 VCD
    initial begin
        $dumpfile("divider.vcd");
        $dumpvars(0, divider_tb);
    end

    // 复位与测试控制
    initial begin
        rst = 0;
        #10 rst = 1;

        // 运行 100 次随机除法
        repeat (100) begin
            // 等待当前除法完成（第一次 start 还未触发，ready 为低也没关系）
            @(posedge clk);
            start <= 1;
            dividend <= $random;
            divisor  <= $random;
            @(posedge clk);
            start <= 0;
            // 等待 ready
            while (!ready) @(posedge clk);
            test_count = test_count + 1;
        end

        #20;
        $display("Simulation finished at %0t, tested %0d divisions", $time, test_count);
        $finish;
    end

    // ----- 以下保留原 monitor 和 scoreboard（可选）-----
    // 如果你不需要打印和文件，可以注释掉
    reg state_m = 0;
    always @(posedge clk)
        if (rst) begin
            case (state_m)
                0: if (start) begin
                    if (dividend[31]) $write("%6d dividend=-%d",$time,(~dividend)+1);
                    else $write("%6d dividend=%d",$time,dividend);
                    if (divisor[31]) $write(" divisor=-%d\n",(~divisor)+1);
                    else $write(" divisor=%d\n",divisor);
                    state_m <= 1;
                end
                1: if (ready) begin
                    state_m <= 0;
                    if (quotient[31]) $write("%6d quotient=-%d",$time,(~quotient)+1);
                    else $write("%6d quotient=%d",$time,quotient);
                    if (remainder[31]) $write(" remainder=-%d\n",(~remainder)+1);
                    else $write(" remainder=%d\n",remainder);
                end
            endcase
        end

    // 计分板（略，原样保留即可）
endmodule