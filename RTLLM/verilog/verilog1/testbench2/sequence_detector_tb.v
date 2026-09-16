`timescale 1ns/1ps
module sequence_detector_tb;
    reg clk,rst_n,data_in; wire sd; integer k;
    sequence_detector dut(.clk(clk),.rst_n(rst_n),.data_in(data_in),.sequence_detected(sd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sequence_detector_tb.vcd");$dumpvars(0,sequence_detector_tb);
        clk=0;rst_n=0;data_in=0;#8 rst_n=1;
        // Scan 0..255 as bitstream
        for(k=0;k<32;k=k+1)begin data_in=$random%2;@(posedge clk);end
        $finish;
    end
endmodule