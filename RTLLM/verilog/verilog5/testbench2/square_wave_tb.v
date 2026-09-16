`timescale 1ns/1ps
module square_wave_tb;
    reg clk; reg[7:0]freq; wire wave_out; integer u;
    square_wave dut(.clk(clk),.freq(freq),.wave_out(wave_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("square_wave_tb.vcd");$dumpvars(0,square_wave_tb);
        clk=0;freq=1; repeat(10)@(posedge clk);
        freq=3;  repeat(24)@(posedge clk);
        freq=7;  repeat(56)@(posedge clk);
        freq=15; repeat(60)@(posedge clk);
        $finish;
    end
endmodule