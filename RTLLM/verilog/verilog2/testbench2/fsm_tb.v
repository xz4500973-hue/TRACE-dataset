`timescale 1ns/1ps
module fsm_tb;
    reg IN,CLK,RST; wire MATCH;
    fsm dut(.IN(IN),.MATCH(MATCH),.CLK(CLK),.RST(RST));
    always #5 CLK=~CLK;
    initial begin
        $dumpfile("fsm_tb.vcd");$dumpvars(0,fsm_tb);
        CLK=0;RST=1;IN=0;#7 RST=0;
        // Alternating 101010...
        repeat(20)begin @(posedge CLK);IN=~IN;end
        $finish;
    end
endmodule