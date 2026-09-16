`timescale 1ns/1ps
module JC_counter #(parameter W=64)(input clk,rst_n,output reg[W-1:0]Q);
    always @(posedge clk or negedge rst_n)
        if(!rst_n) Q<=0;
        else Q<={~Q[0],Q[W-1:1]};
endmodule