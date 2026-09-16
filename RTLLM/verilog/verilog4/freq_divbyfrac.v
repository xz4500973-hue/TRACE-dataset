`timescale 1ns/1ps
module freq_divbyfrac(rst_n,clk,clk_div);
    input rst_n,clk; output clk_div;
    parameter MUL2_DIV_CLK=7;
    reg[3:0]cnt; reg toggle;
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin cnt<=0;toggle<=0;end
        else begin
            if(cnt==MUL2_DIV_CLK-1)begin cnt<=0;end
            else begin cnt<=cnt+1;end
            if(cnt==0||cnt==(MUL2_DIV_CLK/2)+1)toggle<=1;
            else toggle<=0;
        end
    end
    assign clk_div=toggle;
endmodule