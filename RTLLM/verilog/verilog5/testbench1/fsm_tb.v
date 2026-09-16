`timescale 1ns/1ps
module fsm_tb;
    reg IN,CLK,RST; wire MATCH;
    fsm dut(.IN(IN),.MATCH(MATCH),.CLK(CLK),.RST(RST));
    always #5 CLK=~CLK;
    initial begin
        $dumpfile("fsm_tb.vcd");$dumpvars(0,fsm_tb);
        CLK=0;RST=1;IN=0;#13 RST=0;
        // s0->s1->s2->s3->s4->s5 explicit walk
        @(posedge CLK);IN=1;@(posedge CLK);IN=0;@(posedge CLK);IN=0;
        @(posedge CLK);IN=1;@(posedge CLK);IN=1;@(posedge CLK);IN=0;
        repeat(5)@(posedge CLK);$finish;
    end
endmodule