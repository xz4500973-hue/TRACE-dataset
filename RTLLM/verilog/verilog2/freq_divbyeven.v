`timescale 1ns/1ps
module freq_divbyeven(clk,rst_n,clk_div);
    input clk,rst_n; output reg clk_div; reg[3:0]cnt;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)begin cnt<=0;clk_div<=0;end
        else if(cnt<2)cnt<=cnt+1;
        else begin cnt<=0;clk_div<=~clk_div;end
endmodule