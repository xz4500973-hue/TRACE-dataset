`timescale 1ns/1ps
module comparator_3bit_tb;
    reg clk; reg[2:0]A,B; wire g,e,l; integer t;
    comparator_3bit dut(.A(A),.B(B),.A_greater(g),.A_equal(e),.A_less(l));
    always #5 clk=~clk;
    initial begin
        $dumpfile("comparator_3bit_tb.vcd");$dumpvars(0,comparator_3bit_tb);
        clk=0;A=0;B=0;#13;
        for(t=0;t<8;t=t+1)begin @(posedge clk);A=3'b101;B=t;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule