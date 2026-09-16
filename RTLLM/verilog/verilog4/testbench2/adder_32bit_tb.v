`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer s;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#13;
        for(s=0;s<16;s=s+1)begin
            @(posedge clk);
            A=s[3:0]*32'h11111111;
            B=~A;
        end
        @(posedge clk);A=32'hAAAAAAAA;B=32'h55555555;
        @(posedge clk);A=32'h0F0F0F0F;B=32'hF0F0F0F0;
        repeat(5)@(posedge clk);$finish;
    end
endmodule