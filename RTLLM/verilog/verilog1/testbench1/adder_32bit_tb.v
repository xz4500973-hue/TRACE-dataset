`timescale 1ns/1ps

module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk;
    integer i;
    initial begin
        $dumpfile("adder_32bit_tb.vcd"); $dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#10;
        for(i=0;i<256;i=i+1)begin
            @(posedge clk);A=i;B=~i;
        end
        @(posedge clk);A=32'hFFFFFFFF;B=32'hFFFFFFFF;
        @(posedge clk);A=32'h55555555;B=32'hAAAAAAAA;
        repeat(5)@(posedge clk);$finish;
    end
endmodule