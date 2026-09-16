`timescale 1ns/1ps
module fixed_point_substractor_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer u;
    fixed_point_substractor dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_substractor_tb.vcd");$dumpvars(0,fixed_point_substractor_tb);
        clk=0;a=0;b=0;#10;
        for(u=0;u<30;u=u+1)begin @(posedge clk);a=u[0]?u*10:32'h80000000|(u*10);b=u[1]?u*5:32'h80000000|(u*5);end
        repeat(5)@(posedge clk);$finish;
    end
endmodule