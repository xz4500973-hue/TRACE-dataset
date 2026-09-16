`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer m;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=8'hFF;B=1;#12;
        for(m=0;m<8;m=m+1)begin @(posedge clk);B=1<<m;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule