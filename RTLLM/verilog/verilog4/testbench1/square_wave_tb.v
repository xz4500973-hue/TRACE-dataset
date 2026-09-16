`timescale 1ns/1ps
module square_wave_tb;
    reg clk; reg[7:0]freq; wire wave_out; integer r;
    square_wave dut(.clk(clk),.freq(freq),.wave_out(wave_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("square_wave_tb.vcd");$dumpvars(0,square_wave_tb);
        clk=0;freq=7; // odd divisor
        repeat(70)@(posedge clk);
        $finish;
    end
endmodule