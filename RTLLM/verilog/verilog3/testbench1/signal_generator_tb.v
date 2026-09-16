`timescale 1ns/1ps
module signal_generator_tb;
    reg clk,rst_n; wire[4:0]wave;
    signal_generator dut(.clk(clk),.rst_n(rst_n),.wave(wave));
    always #5 clk=~clk;
    initial begin
        $dumpfile("signal_generator_tb.vcd");$dumpvars(0,signal_generator_tb);
        clk=0;rst_n=0;#14 rst_n=1;
        repeat(95)@(posedge clk);$finish;
    end
endmodule