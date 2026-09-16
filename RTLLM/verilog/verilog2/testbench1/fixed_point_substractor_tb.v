`timescale 1ns/1ps
module fixed_point_substractor_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer m;
    fixed_point_substractor dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_substractor_tb.vcd");$dumpvars(0,fixed_point_substractor_tb);
        clk=0;a=0;b=0;#12;
        for(m=0;m<25;m=m+1)begin @(posedge clk);a=m*800;b=32'h80000000|(m*400);end
        repeat(5)@(posedge clk);$finish;
    end
endmodule