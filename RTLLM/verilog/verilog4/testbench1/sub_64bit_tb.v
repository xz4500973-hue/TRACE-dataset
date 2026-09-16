`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer r;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#11;
        // A = B: result should be 0
        for(r=0;r<12;r=r+1)begin @(posedge clk);A=r*200;B=r*200;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule