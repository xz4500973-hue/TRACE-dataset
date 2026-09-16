`timescale 1ns/1ps
module fsm_tb;
    reg IN,CLK,RST; wire MATCH;
    fsm dut(.IN(IN),.MATCH(MATCH),.CLK(CLK),.RST(RST));
    always #5 CLK=~CLK;
    initial begin
        $dumpfile("fsm_tb.vcd");$dumpvars(0,fsm_tb);
        CLK=0;RST=1;IN=0;#9 RST=0;
        // Reset mid-stream
        repeat(5)begin @(posedge CLK);IN=1;end
        RST=1;@(posedge CLK);RST=0;
        repeat(10)begin @(posedge CLK);IN=0;end
        $finish;
    end
endmodule