`timescale 1ns/1ps
module counter_12(input rst_n, clk, valid_count, output reg[3:0]out);
    reg[3:0] next_out;
    wire roll = (out==11);
    always @(*) next_out = valid_count ? (roll?0:out+1) : out;
    always @(posedge clk or negedge rst_n) if(!rst_n) out<=0; else out<=next_out;
endmodule