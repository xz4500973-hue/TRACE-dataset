`timescale 1ns/1ps
module edge_detect_tb;
    reg clk,rst_n,a; wire rise,down;
    edge_detect dut(.clk(clk),.rst_n(rst_n),.a(a),.rise(rise),.down(down));
    always #5 clk=~clk;
    reg[7:0] lfsr; wire fb; integer k;
    assign fb=lfsr[7]^lfsr[5]^lfsr[4]^lfsr[3];
    always@(posedge clk or negedge rst_n)if(!rst_n)lfsr<=8'hA5;else lfsr<={lfsr[6:0],fb};
    initial begin
        $dumpfile("edge_detect_tb.vcd");$dumpvars(0,edge_detect_tb);
        clk=0;rst_n=0;a=0;#11 rst_n=1;
        for(k=0;k<20;k=k+1)begin @(posedge clk);a=lfsr[0];end
        $finish;
    end
endmodule