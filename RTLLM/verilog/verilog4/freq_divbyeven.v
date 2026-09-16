`timescale 1ns/1ps
module freq_divbyeven #(parameter DIV=6)(clk,rst_n,clk_div);
    input clk,rst_n; output reg clk_div;
    reg[$clog2(DIV/2)-1:0]cnt;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)begin cnt<=0;clk_div<=0;end
        else if(cnt<(DIV/2-1))cnt<=cnt+1;
        else begin cnt<=0;clk_div<=~clk_div;end
endmodule