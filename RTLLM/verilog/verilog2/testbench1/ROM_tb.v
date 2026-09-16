`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer m;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#12;
        // Jump pattern: 0,7,1,6,2,5,3,4
        for(m=0;m<8;m=m+1)begin addr=m<4?m:7-(m-4);#12;end
        $finish;
    end
endmodule