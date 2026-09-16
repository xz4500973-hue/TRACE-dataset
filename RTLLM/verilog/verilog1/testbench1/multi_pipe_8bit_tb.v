`timescale 1ns/1ps
module multi_pipe_8bit_tb;
    reg clk,rst_n,mul_en_in; reg[7:0]mul_a,mul_b; wire mul_en_out; wire[15:0]mul_out; integer i;
    multi_pipe_8bit dut(.clk(clk),.rst_n(rst_n),.mul_en_in(mul_en_in),.mul_a(mul_a),.mul_b(mul_b),.mul_en_out(mul_en_out),.mul_out(mul_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_pipe_8bit_tb.vcd");$dumpvars(0,multi_pipe_8bit_tb);
        clk=0;rst_n=0;mul_en_in=0;mul_a=0;mul_b=0;#10 rst_n=1;
        for(i=0;i<10;i=i+1)begin @(posedge clk);mul_a=i*25+5;mul_b=i*10+3;mul_en_in=1;end
        @(posedge clk);mul_en_in=0;repeat(10)@(posedge clk);$finish;
    end
endmodule