`timescale 1ns/1ps
module JC_counter(input clk,rst_n,output reg[63:0]Q);
    always @(posedge clk or negedge rst_n)
        if(!rst_n) Q<=0;
        else Q<={~Q[0],Q[63:1]};
endmodule