`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer p;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=0;b=0;#14 rst=0;
        for(p=0;p<12;p=p+1)begin @(posedge clk);a=$random%100;b=$random%100;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule