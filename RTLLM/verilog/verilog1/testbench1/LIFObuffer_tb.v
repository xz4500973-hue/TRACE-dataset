`timescale 1ns/1ps
module LIFObuffer_tb;
    reg[3:0]dataIn; reg RW,EN,Rst,Clk; wire EMPTY,FULL; wire[3:0]dataOut;
    LIFObuffer dut(.dataIn(dataIn),.RW(RW),.EN(EN),.Rst(Rst),.Clk(Clk),.EMPTY(EMPTY),.FULL(FULL),.dataOut(dataOut));
    always #5 Clk=~Clk; integer i;
    initial begin
        $dumpfile("LIFObuffer_tb.vcd");$dumpvars(0,LIFObuffer_tb);
        Clk=0;Rst=1;EN=0;RW=0;dataIn=0;#10 Rst=0;EN=1;
        for(i=0;i<4;i=i+1)begin @(posedge Clk);dataIn=i;RW=0;end
        for(i=0;i<4;i=i+1)begin @(posedge Clk);RW=1;end
        repeat(5)@(posedge Clk);$finish;
    end
endmodule