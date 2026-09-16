`timescale 1ns/1ps
module comparator_4bit_tb;
    reg clk; reg[3:0]A,B; wire g,e,l; integer i,j;
    comparator_4bit dut(.A(A),.B(B),.A_greater(g),.A_equal(e),.A_less(l));
    always #5 clk=~clk;
    initial begin
        $dumpfile("comparator_4bit_tb.vcd");$dumpvars(0,comparator_4bit_tb);
        clk=0;A=0;B=0;#10;
        for(i=0;i<16;i=i+1)for(j=0;j<16;j=j+1)begin @(posedge clk);A=i;B=j;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule