`timescale 1ns/1ps
module ring_counter_tb;
    reg clk,reset; wire[7:0]out; integer q;
    ring_counter dut(.clk(clk),.reset(reset),.out(out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("ring_counter_tb.vcd");$dumpvars(0,ring_counter_tb);
        clk=0;reset=1;#9 reset=0;
        repeat(3)@(posedge clk);reset=1;@(posedge clk);reset=0;
        repeat(3)@(posedge clk);reset=1;@(posedge clk);reset=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule