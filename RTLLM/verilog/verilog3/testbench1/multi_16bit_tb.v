`timescale 1ns/1ps
module multi_16bit_tb;
    reg clk,rst_n,start; reg[15:0]ain,bin; wire[31:0]yout; wire done; integer p;
    multi_16bit dut(.clk(clk),.rst_n(rst_n),.start(start),.ain(ain),.bin(bin),.yout(yout),.done(done));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_16bit_tb.vcd");$dumpvars(0,multi_16bit_tb);
        clk=0;rst_n=0;start=0;ain=0;bin=0;#14 rst_n=1;
        for(p=0;p<6;p=p+1)begin @(posedge clk);ain=$random%65536;bin=$random%65536;start=1;@(posedge clk);start=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule