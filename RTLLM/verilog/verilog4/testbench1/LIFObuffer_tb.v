`timescale 1ns/1ps
module LIFObuffer_tb;
    reg[3:0]di; reg RW,EN,Rst,Clk; wire EF,FL; wire[3:0]doo; integer r;
    LIFObuffer dut(.dataIn(di),.RW(RW),.EN(EN),.Rst(Rst),.Clk(Clk),.EMPTY(EF),.FULL(FL),.dataOut(doo));
    always #5 Clk=~Clk;
    initial begin
        $dumpfile("LIFObuffer_tb.vcd");$dumpvars(0,LIFObuffer_tb);
        Clk=0;Rst=1;EN=0;RW=0;di=0;#11 Rst=0;EN=1;
        for(r=0;r<3;r=r+1)begin @(posedge Clk);di=r*3;RW=0;end
        Rst=1;@(posedge Clk);Rst=0;
        for(r=0;r<4;r=r+1)begin @(posedge Clk);di=r;RW=0;end
        for(r=0;r<4;r=r+1)begin @(posedge Clk);RW=1;end
        $finish;
    end
endmodule