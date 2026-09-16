`timescale 1ns/1ps
module freq_divbyeven_tb;
    reg clk,rst_n; wire clk_div;
    freq_divbyeven dut(.clk(clk),.rst_n(rst_n),.clk_div(clk_div));
    always #5 clk=~clk;
    initial begin
        $dumpfile("freq_divbyeven_tb.vcd");$dumpvars(0,freq_divbyeven_tb);
        clk=0;rst_n=0;#10 rst_n=1;
        repeat(60)@(posedge clk);$finish;
    end
endmodule