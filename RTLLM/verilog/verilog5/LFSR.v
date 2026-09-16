`timescale 1ns/1ps
module LFSR #(parameter W=4)(out,clk,rst);
    input clk,rst; output reg[W-1:0]out;
    always @(posedge clk or posedge rst)
        if(rst) out<=0;
        else out<={out[W-2:0],~(out[W-1]^out[W-2])};
endmodule