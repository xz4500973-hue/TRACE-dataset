`timescale 1ns/1ps
module freq_divbyeven(clk,rst_n,clk_div);
    input clk,rst_n; output reg clk_div;
    reg[2:0]cnt; wire roll=(cnt==2);
    always @(posedge clk or negedge rst_n)
        if(!rst_n)begin cnt<=0;clk_div<=0;end
        else begin cnt<=roll?0:cnt+1;if(roll)clk_div<=~clk_div;end
endmodule