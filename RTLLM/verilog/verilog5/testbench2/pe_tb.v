`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer u;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=0;b=0;#10 rst=0;
        for(u=0;u<20;u=u+1)begin @(posedge clk);a=u;b=u%3+1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule