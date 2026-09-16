`timescale 1ns/1ps
module multi_pipe_8bit_tb;
    reg clk,rst_n,ein; reg[7:0]a,b; wire eout; wire[15:0]o; integer k;
    multi_pipe_8bit dut(.clk(clk),.rst_n(rst_n),.mul_en_in(ein),.mul_a(a),.mul_b(b),.mul_en_out(eout),.mul_out(o));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_pipe_8bit_tb.vcd");$dumpvars(0,multi_pipe_8bit_tb);
        clk=0;rst_n=0;ein=0;a=0;b=0;#8 rst_n=1;
        for(k=0;k<12;k=k+1)begin @(posedge clk);a=k*20;b=255-k*20;ein=1;end
        @(posedge clk);ein=0;repeat(10)@(posedge clk);$finish;
    end
endmodule