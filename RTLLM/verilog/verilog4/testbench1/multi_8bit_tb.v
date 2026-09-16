`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer r;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=8'h0F;B=8'hF0;#11;
        for(r=0;r<15;r=r+1)begin @(posedge clk);A=r*16+1;B=r+1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule