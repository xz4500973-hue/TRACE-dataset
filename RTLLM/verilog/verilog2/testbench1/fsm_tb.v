`timescale 1ns/1ps
module fsm_tb;
    reg IN,CLK,RST; wire MATCH;
    fsm dut(.IN(IN),.MATCH(MATCH),.CLK(CLK),.RST(RST));
    always #5 CLK=~CLK;
    initial begin
        $dumpfile("fsm_tb.vcd");$dumpvars(0,fsm_tb);
        CLK=0;RST=1;IN=0;#12 RST=0;
        // All 1's then 0
        repeat(8)begin @(posedge CLK);IN=1;end
        repeat(8)begin @(posedge CLK);IN=0;end
        $finish;
    end
endmodule