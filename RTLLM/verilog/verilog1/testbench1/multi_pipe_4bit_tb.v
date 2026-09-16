`timescale 1ns/1ps
module multi_pipe_4bit_tb;
    reg clk,rst_n; reg[3:0]mul_a,mul_b; wire[7:0]mul_out; integer i;
    multi_pipe_4bit dut(.clk(clk),.rst_n(rst_n),.mul_a(mul_a),.mul_b(mul_b),.mul_out(mul_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_pipe_4bit_tb.vcd");$dumpvars(0,multi_pipe_4bit_tb);
        clk=0;rst_n=0;mul_a=0;mul_b=0;#10 rst_n=1;
        for(i=0;i<16;i=i+1)begin @(posedge clk);mul_a=i;mul_b=i;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule