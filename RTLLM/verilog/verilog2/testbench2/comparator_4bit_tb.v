`timescale 1ns/1ps
module comparator_4bit_tb;
    reg clk; reg[3:0]A,B; wire g,e,l; integer n;
    comparator_4bit dut(.A(A),.B(B),.A_greater(g),.A_equal(e),.A_less(l));
    always #5 clk=~clk;
    initial begin
        $dumpfile("comparator_4bit_tb.vcd");$dumpvars(0,comparator_4bit_tb);
        clk=0;A=0;B=0;#7;
        for(n=0;n<16;n=n+1)begin @(posedge clk);A=n;B=0;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule