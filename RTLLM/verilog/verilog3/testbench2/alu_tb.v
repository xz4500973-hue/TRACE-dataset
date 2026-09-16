`timescale 1ns/1ps
module alu_tb;
    reg clk; reg[31:0]a,b; reg[5:0]aluc; wire[31:0]r; wire zero,carry,negative,overflow,flag;
    alu dut(.a(a),.b(b),.aluc(aluc),.r(r),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow),.flag(flag));
    always #5 clk=~clk; integer q;
    initial begin
        $dumpfile("alu_tb.vcd");$dumpvars(0,alu_tb);
        clk=0;a=0;b=0;aluc=0;#9;
        for(q=0;q<5;q=q+1)begin @(posedge clk);a=q*10+5;b=q*10-5;aluc=6'b000000+q*2;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule