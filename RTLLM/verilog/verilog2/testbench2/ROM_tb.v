`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer n;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#7;
        // Repeated addresses: 0,0,0,1,1,2,2,3,3
        addr=0;#7;#7;addr=1;#7;#7;addr=2;#7;#7;addr=3;#7;#7;
        $finish;
    end
endmodule