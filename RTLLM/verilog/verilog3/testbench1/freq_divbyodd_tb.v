`timescale 1ns/1ps
module freq_divbyodd_tb;
    reg clk,rst_n; wire clk_div;
    freq_divbyodd dut(.clk(clk),.rst_n(rst_n),.clk_div(clk_div));
    always #5 clk=~clk;
    initial begin
        $dumpfile("freq_divbyodd_tb.vcd");$dumpvars(0,freq_divbyodd_tb);
        clk=0;rst_n=0;#14 rst_n=1;
        repeat(5)@(posedge clk);
        rst_n=0;@(posedge clk);rst_n=1;
        repeat(10)@(posedge clk);
        rst_n=0;@(posedge clk);rst_n=1;
        repeat(15)@(posedge clk);$finish;
    end
endmodule