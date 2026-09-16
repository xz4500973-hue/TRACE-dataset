`timescale 1ns/1ps
module sequence_detector_tb;
    reg clk,rst_n,data_in; wire sd; integer n;
    sequence_detector dut(.clk(clk),.rst_n(rst_n),.data_in(data_in),.sequence_detected(sd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sequence_detector_tb.vcd");$dumpvars(0,sequence_detector_tb);
        clk=0;rst_n=0;data_in=0;#7 rst_n=1;
        // Long run of 1s then 1101
        repeat(10)begin @(posedge clk);data_in=1;end
        @(posedge clk);data_in=0;@(posedge clk);data_in=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule