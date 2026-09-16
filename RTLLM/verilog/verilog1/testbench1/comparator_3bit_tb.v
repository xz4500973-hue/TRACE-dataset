`timescale 1ns/1ps
module comparator_3bit_tb;
    reg clk; reg[2:0]A,B; wire A_gt,A_eq,A_lt; integer i,j;
    comparator_3bit dut(.A(A),.B(B),.A_greater(A_gt),.A_equal(A_eq),.A_less(A_lt));
    always #5 clk=~clk;
    initial begin
        $dumpfile("comparator_3bit_tb.vcd");$dumpvars(0,comparator_3bit_tb);
        clk=0;A=0;B=0;#10;
        for(i=0;i<8;i=i+1)for(j=0;j<8;j=j+1)begin @(posedge clk);A=i;B=j;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule