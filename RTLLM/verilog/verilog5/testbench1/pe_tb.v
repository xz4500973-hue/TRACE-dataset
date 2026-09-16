`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer t;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=16'h1000;b=0;#13 rst=0;
        for(t=0;t<10;t=t+1)begin @(posedge clk);a=16'h1000;b=t;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule