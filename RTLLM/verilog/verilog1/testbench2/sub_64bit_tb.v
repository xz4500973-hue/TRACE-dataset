`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer k;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#8;
        for(k=0;k<15;k=k+1)begin @(posedge clk);A=$random;B=$random;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule