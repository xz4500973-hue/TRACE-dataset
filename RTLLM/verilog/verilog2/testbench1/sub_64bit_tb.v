`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer m;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=64'h7FFFFFFFFFFFFFFF;B=0;#12;
        for(m=0;m<10;m=m+1)begin @(posedge clk);A=64'h7FFFFFFFFFFFFFFF;B=m*100;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule