`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer p; reg[32:1]w;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#14;
        w=1;B=32'hFFFFFFFF;
        for(p=0;p<32;p=p+1)begin @(posedge clk);A=~w;w=w<<1;end
        w=1;
        for(p=0;p<32;p=p+1)begin @(posedge clk);A=~w;w=w<<1;end
        @(posedge clk);A=32'hFFFFFFFE;B=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule