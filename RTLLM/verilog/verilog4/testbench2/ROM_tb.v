`timescale 1ns/1ps
module ROM_tb;
    reg[7:0]addr; wire[15:0]dout; integer s;
    ROM dut(.addr(addr),.dout(dout));
    initial begin
        $dumpfile("ROM_tb.vcd");$dumpvars(0,ROM_tb);
        addr=0;#6;
        // Sequential 0..7, hold each for varying duration
        addr=0;#6;addr=1;#15;addr=2;#8;addr=3;#20;addr=4;#6;addr=5;#12;addr=6;#6;addr=7;#10;
        $finish;
    end
endmodule