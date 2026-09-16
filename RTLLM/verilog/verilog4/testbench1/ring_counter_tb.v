`timescale 1ns/1ps
module ring_counter_tb;
    reg clk,reset; wire[7:0]out; integer r;
    ring_counter dut(.clk(clk),.reset(reset),.out(out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("ring_counter_tb.vcd");$dumpvars(0,ring_counter_tb);
        clk=0;reset=1;#11 reset=0;
        repeat(32)@(posedge clk);$finish;
    end
endmodule