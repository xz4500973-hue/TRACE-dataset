`timescale 1ns/1ps
module ring_counter_tb;
    reg clk,reset; wire[7:0]out;
    ring_counter dut(.clk(clk),.reset(reset),.out(out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("ring_counter_tb.vcd");$dumpvars(0,ring_counter_tb);
        clk=0;reset=1;#10 reset=0;
        repeat(20)@(posedge clk);$finish;
    end
endmodule