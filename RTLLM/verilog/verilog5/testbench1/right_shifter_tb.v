`timescale 1ns/1ps
module right_shifter_tb;
    reg clk,d; wire[7:0]q; integer t;
    right_shifter dut(.clk(clk),.q(q),.d(d));
    always #5 clk=~clk;
    initial begin
        $dumpfile("right_shifter_tb.vcd");$dumpvars(0,right_shifter_tb);
        clk=0;d=0;
        // All ones then all zeros
        d=1;repeat(8)@(posedge clk);
        d=0;repeat(8)@(posedge clk);
        $finish;
    end
endmodule