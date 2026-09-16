`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer t;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=8'hFF;B=8'hFF;#13;
        for(t=0;t<10;t=t+1)begin @(posedge clk);A=255;B=255;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule