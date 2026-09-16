`timescale 1ns/1ps
module right_shifter_tb;
    reg clk,d; wire[7:0]q; integer k;
    right_shifter dut(.clk(clk),.q(q),.d(d));
    always #5 clk=~clk;
    initial begin
        $dumpfile("right_shifter_tb.vcd");$dumpvars(0,right_shifter_tb);
        clk=0;d=0;
        for(k=0;k<20;k=k+1)begin d=k%3==0;@(posedge clk);end
        $finish;
    end
endmodule