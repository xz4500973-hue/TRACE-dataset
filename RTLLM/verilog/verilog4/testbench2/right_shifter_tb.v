`timescale 1ns/1ps
module right_shifter_tb;
    reg clk,d; wire[7:0]q; integer s;
    right_shifter dut(.clk(clk),.q(q),.d(d));
    always #5 clk=~clk;
    initial begin
        $dumpfile("right_shifter_tb.vcd");$dumpvars(0,right_shifter_tb);
        clk=0;d=0;
        // Random
        for(s=0;s<25;s=s+1)begin d=$random%2;@(posedge clk);end
        $finish;
    end
endmodule