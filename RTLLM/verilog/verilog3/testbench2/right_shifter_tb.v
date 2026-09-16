`timescale 1ns/1ps
module right_shifter_tb;
    reg clk,d; wire[7:0]q; integer qq;
    right_shifter dut(.clk(clk),.q(q),.d(d));
    always #5 clk=~clk;
    initial begin
        $dumpfile("right_shifter_tb.vcd");$dumpvars(0,right_shifter_tb);
        clk=0;d=0;
        // Toggle every other
        for(qq=0;qq<16;qq=qq+1)begin d=~d;@(posedge clk);end
        $finish;
    end
endmodule