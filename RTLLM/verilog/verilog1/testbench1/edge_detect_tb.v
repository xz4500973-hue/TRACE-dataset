`timescale 1ns/1ps
module edge_detect_tb;
    reg clk,rst_n,a; wire rise,down;
    edge_detect dut(.clk(clk),.rst_n(rst_n),.a(a),.rise(rise),.down(down));
    always #5 clk=~clk;
    initial begin
        $dumpfile("edge_detect_tb.vcd");$dumpvars(0,edge_detect_tb);
        clk=0;rst_n=0;a=0;#15 rst_n=1;
        repeat(3)@(posedge clk);a=1;repeat(3)@(posedge clk);a=0;repeat(3)@(posedge clk);
        a=1;repeat(5)@(posedge clk);a=0;repeat(5)@(posedge clk);
        $finish;
    end
endmodule