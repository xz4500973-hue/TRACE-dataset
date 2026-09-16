`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer q;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#11;
        for(q=0;q<64;q=q+1)begin @(posedge clk);A=q;B=q;end
        @(posedge clk);A=127;B=127; @(posedge clk);A=128;B=128;
        @(posedge clk);A=32767;B=32767;
        repeat(5)@(posedge clk);$finish;
    end
endmodule