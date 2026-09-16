`timescale 1ns/1ps
module fixed_point_substractor_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer i;
    fixed_point_substractor dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_substractor_tb.vcd");$dumpvars(0,fixed_point_substractor_tb);
        clk=0;a=0;b=0;#10;
        for(i=0;i<20;i=i+1)begin @(posedge clk);a=i*1000+100;b=i*300+30;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule