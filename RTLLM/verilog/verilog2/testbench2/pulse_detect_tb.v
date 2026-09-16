`timescale 1ns/1ns
module pulse_detect_tb;
    reg clk,rst_n,data_in; wire data_out; integer n;
    pulse_detect dut(.clk(clk),.rst_n(rst_n),.data_in(data_in),.data_out(data_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pulse_detect_tb.vcd");$dumpvars(0,pulse_detect_tb);
        clk=0;rst_n=0;data_in=0;#7 rst_n=1;
        // Long high then 010
        repeat(8)begin @(posedge clk);data_in=1;end
        @(posedge clk);data_in=0;@(posedge clk);data_in=1;@(posedge clk);data_in=0;
        repeat(5)@(posedge clk);$finish;
    end
endmodule