`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer k;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=0;B=0;#8;
        for(k=0;k<16;k=k+1)begin @(posedge clk);A=k;B=15-k;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule