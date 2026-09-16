`timescale 1ns/1ps
module multi_pipe_4bit_tb;
    reg clk,rst_n; reg[3:0]ma,mb; wire[7:0]mo; integer k;
    multi_pipe_4bit dut(.clk(clk),.rst_n(rst_n),.mul_a(ma),.mul_b(mb),.mul_out(mo));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_pipe_4bit_tb.vcd");$dumpvars(0,multi_pipe_4bit_tb);
        clk=0;rst_n=0;ma=0;mb=0;#8 rst_n=1;
        for(k=0;k<16;k=k+1)begin @(posedge clk);ma=k;mb=15-k;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule