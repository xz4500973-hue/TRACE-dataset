`timescale 1ns/1ps
module LFSR_tb;
    reg clk,rst; wire[3:0]out;
    LFSR dut(.out(out),.clk(clk),.rst(rst));
    always #5 clk=~clk;
    initial begin
        $dumpfile("LFSR_tb.vcd");$dumpvars(0,LFSR_tb);
        clk=0;rst=1;#6 rst=0;
        repeat(12)@(posedge clk);$finish;
    end
endmodule