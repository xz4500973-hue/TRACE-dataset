`timescale 1ns/1ps
module fixed_point_substractor_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer r;
    fixed_point_substractor dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_substractor_tb.vcd");$dumpvars(0,fixed_point_substractor_tb);
        clk=0;a=0;b=0;#11;
        for(r=0;r<20;r=r+1)begin @(posedge clk);a=$random(1);b=$random(2);end
        repeat(5)@(posedge clk);$finish;
    end
endmodule