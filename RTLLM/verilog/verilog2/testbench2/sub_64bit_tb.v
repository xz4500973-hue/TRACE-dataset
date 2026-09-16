`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer n;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#7;
        // Same sign: positive - positive
        for(n=0;n<10;n=n+1)begin @(posedge clk);A=n*1000;B=n*500;end
        // Negative - negative
        for(n=0;n<10;n=n+1)begin @(posedge clk);A=64'h8000000000000000|n*500;B=64'h8000000000000000|n*300;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule