`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer v;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#17;
        for(v=0;v<128;v=v+1)begin @(posedge clk);A=v*2;B=v*2+1;end
        @(posedge clk);A=32'hFFFFFFFE;B=32'hFFFFFFFF;
        @(posedge clk);A=32'hFFFFFFFF;B=32'hFFFFFFFE;
        repeat(5)@(posedge clk);$finish;
    end
endmodule