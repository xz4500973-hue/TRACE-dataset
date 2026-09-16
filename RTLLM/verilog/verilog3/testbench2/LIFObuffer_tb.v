`timescale 1ns/1ps
module LIFObuffer_tb;
    reg[3:0]di; reg RW,EN,Rst,Clk; wire EF,FL; wire[3:0]doo; integer q;
    LIFObuffer dut(.dataIn(di),.RW(RW),.EN(EN),.Rst(Rst),.Clk(Clk),.EMPTY(EF),.FULL(FL),.dataOut(doo));
    always #5 Clk=~Clk;
    initial begin
        $dumpfile("LIFObuffer_tb.vcd");$dumpvars(0,LIFObuffer_tb);
        Clk=0;Rst=1;EN=0;RW=0;di=0;#9 Rst=0;EN=1;
        for(q=0;q<2;q=q+1)begin @(posedge Clk);di=q;RW=0;end
        @(posedge Clk);RW=1;
        for(q=0;q<2;q=q+1)begin @(posedge Clk);di=q+5;RW=0;end
        for(q=0;q<3;q=q+1)begin @(posedge Clk);RW=1;end
        $finish;
    end
endmodule