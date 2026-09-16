`timescale 1ns/1ps
module JC_counter_tb;
    reg clk,rst_n; wire[63:0]Q;
    JC_counter dut(.clk(clk),.rst_n(rst_n),.Q(Q));
    always #5 clk=~clk;
    initial begin
        $dumpfile("JC_counter_tb.vcd");$dumpvars(0,JC_counter_tb);
        clk=0;rst_n=0;#8 rst_n=1;
        repeat(64)@(posedge clk);
        rst_n=0;@(posedge clk);rst_n=1;
        repeat(64)@(posedge clk);$finish;
    end
endmodule