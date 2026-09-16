`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer q;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#9;
        // Random addresses every 10ns
        for(q=0;q<20;q=q+1)begin addr=$random%256;#10;end
        $finish;
    end
endmodule