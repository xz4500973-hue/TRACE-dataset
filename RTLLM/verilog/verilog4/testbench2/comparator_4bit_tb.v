`timescale 1ns/1ps
module comparator_4bit_tb;
    reg clk; reg[3:0]A,B; wire g,e,l; integer s;
    comparator_4bit dut(.A(A),.B(B),.A_greater(g),.A_equal(e),.A_less(l));
    always #5 clk=~clk;
    initial begin
        $dumpfile("comparator_4bit_tb.vcd");$dumpvars(0,comparator_4bit_tb);
        clk=0;A=0;B=0;#6;
        for(s=0;s<16;s=s+1)begin @(posedge clk);A=s[3:0];B=~s[3:0];end
        repeat(5)@(posedge clk);$finish;
    end
endmodule