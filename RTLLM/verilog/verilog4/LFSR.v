`timescale 1ns/1ps
module LFSR(out,clk,rst);
    input clk,rst; output[3:0]out;
    reg[3:0]sr; wire fb=~(sr[3]^sr[2]);
    always @(posedge clk or posedge rst)
        if(rst) sr<=0;
        else sr<={sr[2:0],fb};
    assign out=sr;
endmodule