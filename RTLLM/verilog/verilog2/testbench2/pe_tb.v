`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer n;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=0;b=0;#7 rst=0;
        for(n=0;n<8;n=n+1)begin @(posedge clk);a=8'hFF;b=8'h01;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule