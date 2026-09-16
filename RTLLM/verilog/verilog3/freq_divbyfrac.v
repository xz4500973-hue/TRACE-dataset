`timescale 1ns/1ps
module freq_divbyfrac(input rst_n,clk,output clk_div);
    parameter MUL2_DIV_CLK=7;
    reg[3:0]cnt; reg pos_r,neg_r;
    wire h1=cnt==0,h2=cnt==(MUL2_DIV_CLK/2)+1;
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin cnt<=0;pos_r<=0;end
        else begin cnt<=(cnt==MUL2_DIV_CLK-1)?0:cnt+1;pos_r<=h1||h2;end
    end
    always @(negedge clk or negedge rst_n)begin
        if(!rst_n)neg_r<=0;
        else neg_r<=(cnt==1)||(cnt==(MUL2_DIV_CLK/2)+1);
    end
    assign clk_div=pos_r|neg_r;
endmodule