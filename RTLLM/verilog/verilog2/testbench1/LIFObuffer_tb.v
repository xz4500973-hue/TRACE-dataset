`timescale 1ns/1ps
module LIFObuffer_tb;
    reg[3:0]di; reg RW,EN,Rst,Clk; wire EF,FL; wire[3:0]doo; integer m;
    LIFObuffer dut(.dataIn(di),.RW(RW),.EN(EN),.Rst(Rst),.Clk(Clk),.EMPTY(EF),.FULL(FL),.dataOut(doo));
    always #5 Clk=~Clk;
    initial begin
        $dumpfile("LIFObuffer_tb.vcd");$dumpvars(0,LIFObuffer_tb);
        Clk=0;Rst=1;EN=0;RW=0;di=0;#12 Rst=0;EN=1;
        for(m=0;m<4;m=m+1)begin @(posedge Clk);di=m*2+1;RW=0;end
        @(posedge Clk);RW=1;@(posedge Clk);RW=1;@(posedge Clk);RW=0;di=8;@(posedge Clk);RW=0;di=9;
        @(posedge Clk);RW=1;@(posedge Clk);RW=1;@(posedge Clk);RW=1;
        $finish;
    end
endmodule