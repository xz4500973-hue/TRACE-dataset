`timescale 1ns/1ps
module freq_divbyodd_tb;
    reg clk,rst_n; wire clk_div;
    freq_divbyodd dut(.clk(clk),.rst_n(rst_n),.clk_div(clk_div));
    always #5 clk=~clk;
    initial begin
        $dumpfile("freq_divbyodd_tb.vcd");$dumpvars(0,freq_divbyodd_tb);
        clk=0;rst_n=0;#10 rst_n=1;
        repeat(50)@(posedge clk);$finish;
    end
endmodule