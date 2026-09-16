`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer n;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=8'h55;B=8'hAA;#7;
        for(n=0;n<10;n=n+1)begin @(posedge clk);A=n*25;B=n*10;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule