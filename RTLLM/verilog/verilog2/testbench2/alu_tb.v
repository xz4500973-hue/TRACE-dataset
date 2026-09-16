`timescale 1ns/1ps
module alu_tb;
    reg clk; reg[31:0]a,b; reg[5:0]aluc; wire[31:0]r; wire zero,carry,negative,overflow,flag;
    alu dut(.a(a),.b(b),.aluc(aluc),.r(r),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow),.flag(flag));
    always #5 clk=~clk; integer n;
    initial begin
        $dumpfile("alu_tb.vcd");$dumpvars(0,alu_tb);
        clk=0;a=0;b=0;aluc=0;#7;
        for(n=0;n<8;n=n+1)begin @(posedge clk);a=n*4;b=n*4+2;aluc=6'b100100+(n%4);end
        repeat(5)@(posedge clk);$finish;
    end
endmodule