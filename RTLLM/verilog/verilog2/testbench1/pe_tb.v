`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer m;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=100;b=0;#12 rst=0;
        for(m=0;m<10;m=m+1)begin @(posedge clk);a=100;b=m+1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule