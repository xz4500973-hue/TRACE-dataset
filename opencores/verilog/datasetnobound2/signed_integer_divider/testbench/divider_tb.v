`timescale 1ns / 1ps

module divider_tb;
    reg clk = 0, rst = 0;
    always #1 clk = ~clk;
    reg [31:0] dividend = 0, divisor = 0;
    reg start = 0;
    wire ready;
    wire [31:0] quotient, remainder;
    integer test_count = 0;

    divider_dshift dut (
        .i_clk(clk), .i_rst(rst), .i_dividend(dividend), .i_divisor(divisor),
        .i_start(start), .o_ready(ready), .o_quotient(quotient), .o_remainder(remainder)
    );

    initial begin
        $dumpfile("divider.vcd"); $dumpvars(0, divider_tb);
    end

    initial begin
        rst = 0; #10 rst = 1;
        repeat (100) begin
            @(posedge clk);
            start <= 1; dividend <= $random; divisor <= $random;
            @(posedge clk); start <= 0;
            while (!ready) @(posedge clk);
            test_count = test_count + 1;
        end
        #20;
        $display("Sim finished at %0t, tested %0d divisions", $time, test_count);
        $finish;
    end

    reg state_m = 0;
    always @(posedge clk)
        if (rst) case (state_m)
            0: if (start) begin
                if (dividend[31]) $write("%6d dividend=-%d",$time,(~dividend)+1);
                else $write("%6d dividend=%d",$time,dividend);
                if (divisor[31]) $write(" divisor=-%d\n",(~divisor)+1);
                else $write(" divisor=%d\n",divisor);
                state_m <= 1;
            end
            1: if (ready) begin state_m <= 0; end
        endcase
endmodule