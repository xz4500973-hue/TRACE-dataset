`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer u;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#16;
        for(u=0;u<25;u=u+1)begin @(posedge clk);A=$random(1);B=$random(2);end
        @(posedge clk);A=0;B=0;
        @(posedge clk);A=32'h7FFFFFFF;B=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule