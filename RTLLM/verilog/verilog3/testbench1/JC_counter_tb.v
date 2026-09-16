`timescale 1ns/1ps
module JC_counter_tb;
    reg clk,rst_n; wire[63:0]Q;
    JC_counter dut(.clk(clk),.rst_n(rst_n),.Q(Q));
    always #5 clk=~clk;
    initial begin
        $dumpfile("JC_counter_tb.vcd");$dumpvars(0,JC_counter_tb);
        clk=0;rst_n=0;#14 rst_n=1;
        repeat(128)@(posedge clk);$finish;
    end
endmodule