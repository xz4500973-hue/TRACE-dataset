`timescale 1ns/1ps
module freq_divbyfrac(rst_n,clk,clk_div);
    input rst_n,clk; output reg clk_div;
    parameter MUL2_DIV_CLK=7;
    reg[3:0]t;
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin t<=0;clk_div<=0;end
        else begin
            if(t==0)begin clk_div<=1;t<=1;end
            else if(t==MUL2_DIV_CLK/2+1)begin clk_div<=1;t<=t+1;end
            else if(t==MUL2_DIV_CLK-1)begin clk_div<=0;t<=0;end
            else begin clk_div<=0;t<=t+1;end
        end
    end
endmodule