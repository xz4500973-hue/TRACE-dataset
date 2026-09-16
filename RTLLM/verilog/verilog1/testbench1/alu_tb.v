`timescale 1ns/1ps
module alu_tb;
    reg clk; reg[31:0]a,b; reg[5:0]aluc; wire[31:0]r; wire zero,carry,negative,overflow,flag;
    alu dut(.a(a),.b(b),.aluc(aluc),.r(r),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow),.flag(flag));
    always #5 clk=~clk;
    integer i; reg[5:0] ops[0:16]; integer op_idx;
    initial begin
        ops[0]=6'b100000;ops[1]=6'b100001;ops[2]=6'b100010;ops[3]=6'b100011;
        ops[4]=6'b100100;ops[5]=6'b100101;ops[6]=6'b100110;ops[7]=6'b100111;
        ops[8]=6'b101010;ops[9]=6'b101011;ops[10]=6'b000000;ops[11]=6'b000010;
        ops[12]=6'b000011;ops[13]=6'b000100;ops[14]=6'b000110;ops[15]=6'b000111;
        ops[16]=6'b001111;
        $dumpfile("alu_tb.vcd");$dumpvars(0,alu_tb);
        clk=0;a=0;b=0;aluc=0;#10;
        for(op_idx=0;op_idx<17;op_idx=op_idx+1)begin
            for(i=0;i<5;i=i+1)begin @(posedge clk);a=i*10+5;b=i*3+1;aluc=ops[op_idx];end
        end
        repeat(5)@(posedge clk);$finish;
    end
endmodule