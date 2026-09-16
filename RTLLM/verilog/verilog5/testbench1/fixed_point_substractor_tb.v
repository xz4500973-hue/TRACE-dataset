`timescale 1ns/1ps
module fixed_point_substractor_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer t;
    fixed_point_substractor dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_substractor_tb.vcd");$dumpvars(0,fixed_point_substractor_tb);
        clk=0;a=0;b=0;#13;
        for(t=0;t<12;t=t+1)begin @(posedge clk);a=32'h80000000+t*2000000;b=32'h70000000+t*500000;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule