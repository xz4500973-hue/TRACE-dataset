`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer u;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=0;B=0;#10;
        for(u=0;u<10;u=u+1)begin @(posedge clk);A=u*2;B=128;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule