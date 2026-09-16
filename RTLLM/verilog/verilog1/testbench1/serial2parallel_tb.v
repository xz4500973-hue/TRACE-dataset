`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,din_serial,din_valid; wire[7:0]dout_parallel; wire dout_valid; integer i;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(din_serial),.din_valid(din_valid),.dout_parallel(dout_parallel),.dout_valid(dout_valid));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;din_serial=0;din_valid=0;#10 rst_n=1;
        for(i=0;i<8;i=i+1)begin @(posedge clk);din_serial=i[0];din_valid=1;end
        @(posedge clk);din_valid=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule