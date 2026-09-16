`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer s;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#6;
        // Max/min values
        @(posedge clk);A=64'hFFFFFFFFFFFFFFFF;B=64'h0000000000000001;
        @(posedge clk);A=64'h0000000000000000;B=64'h0000000000000001;
        @(posedge clk);A=64'h8000000000000000;B=64'h7FFFFFFFFFFFFFFF;
        @(posedge clk);A=64'h7FFFFFFFFFFFFFFF;B=64'h8000000000000000;
        @(posedge clk);A=64'hFFFFFFFFFFFFFFFF;B=64'hFFFFFFFFFFFFFFFF;
        repeat(5)@(posedge clk);$finish;
    end
endmodule