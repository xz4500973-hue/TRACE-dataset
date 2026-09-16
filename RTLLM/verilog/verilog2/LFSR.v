`timescale 1ns/1ps
module LFSR(out,clk,rst);
    input clk,rst; output reg[3:0]out;
    always @(posedge clk or posedge rst)
        if(rst) out<=0;
        else out<={out[2:0],~(out[3]^out[2])};
endmodule