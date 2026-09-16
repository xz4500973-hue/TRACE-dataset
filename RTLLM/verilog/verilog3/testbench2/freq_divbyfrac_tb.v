`timescale 1ns/1ps
module freq_divbyfrac_tb;
    reg rst_n,clk; wire clk_div;
    freq_divbyfrac dut(.rst_n(rst_n),.clk(clk),.clk_div(clk_div));
    always #5 clk=~clk;
    initial begin
        $dumpfile("freq_divbyfrac_tb.vcd");$dumpvars(0,freq_divbyfrac_tb);
        clk=0;rst_n=0;#9 rst_n=1;
        repeat(56)@(posedge clk);$finish;
    end
endmodule