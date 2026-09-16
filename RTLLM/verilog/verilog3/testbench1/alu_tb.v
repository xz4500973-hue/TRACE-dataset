`timescale 1ns/1ps
module alu_tb;
    reg clk; reg[31:0]a,b; reg[5:0]aluc; wire[31:0]r; wire zero,carry,negative,overflow,flag;
    alu dut(.a(a),.b(b),.aluc(aluc),.r(r),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow),.flag(flag));
    always #5 clk=~clk; integer p;
    initial begin
        $dumpfile("alu_tb.vcd");$dumpvars(0,alu_tb);
        clk=0;a=0;b=0;aluc=0;#14;
        for(p=0;p<6;p=p+1)begin @(posedge clk);a=32'h0F0F0F0F;b=32'h33333333;aluc=6'b000000+p*2;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule