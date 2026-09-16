`timescale 1ns/1ps
module alu_tb;
    reg clk; reg[31:0]a,b; reg[5:0]aluc; wire[31:0]r; wire zero,carry,negative,overflow,flag;
    alu dut(.a(a),.b(b),.aluc(aluc),.r(r),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow),.flag(flag));
    always #5 clk=~clk; integer k;
    initial begin
        $dumpfile("alu_tb.vcd");$dumpvars(0,alu_tb);
        clk=0;a=0;b=0;aluc=0;#11;
        for(k=0;k<17;k=k+1)begin @(posedge clk);a=k*100;b=k*50;aluc=6'b100000+(k%7);end
        repeat(5)@(posedge clk);$finish;
    end
endmodule