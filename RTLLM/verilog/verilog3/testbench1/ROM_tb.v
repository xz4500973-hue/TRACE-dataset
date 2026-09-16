`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer p;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#14;
        // Scan all 256 addresses with random delay
        for(p=0;p<32;p=p+1)begin addr=p*8;#5;end
        $finish;
    end
endmodule