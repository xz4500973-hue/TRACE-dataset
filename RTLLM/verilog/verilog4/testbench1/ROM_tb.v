`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer r;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#11;
        // Fast toggle between 0 and 7
        for(r=0;r<10;r=r+1)begin addr=r%2?8'h00:8'h07;#11;end
        $finish;
    end
endmodule