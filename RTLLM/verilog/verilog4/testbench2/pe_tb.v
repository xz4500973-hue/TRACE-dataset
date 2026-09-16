`timescale 1ns/1ps
module pe_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]c; integer s;
    pe dut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pe_tb.vcd");$dumpvars(0,pe_tb);
        clk=0;rst=1;a=0;b=0;#6 rst=0;
        for(s=0;s<6;s=s+1)begin @(posedge clk);a=s*10;b=s*10;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule