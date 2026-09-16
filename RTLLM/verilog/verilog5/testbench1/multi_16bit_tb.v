`timescale 1ns/1ps
module multi_16bit_tb;
    reg clk,rst_n,start; reg[15:0]ain,bin; wire[31:0]yout; wire done; integer t;
    multi_16bit dut(.clk(clk),.rst_n(rst_n),.start(start),.ain(ain),.bin(bin),.yout(yout),.done(done));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_16bit_tb.vcd");$dumpvars(0,multi_16bit_tb);
        clk=0;rst_n=0;start=0;ain=16'hFFFF;bin=16'hFFFF;#13 rst_n=1;
        for(t=0;t<4;t=t+1)begin @(posedge clk);start=1;@(posedge clk);start=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule