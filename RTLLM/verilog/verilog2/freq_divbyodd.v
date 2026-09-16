`timescale 1ns/1ps
module freq_divbyodd(clk,rst_n,clk_div);
    input clk,rst_n; output clk_div;
    parameter NUM_DIV=5;
    reg[2:0]cnt1,cnt2; reg clk_div1,clk_div2;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin cnt1<=0;clk_div1<=1;end
        else begin cnt1<=(cnt1<NUM_DIV-1)?cnt1+1:0;clk_div1<=cnt1<(NUM_DIV/2);end
    end
    always @(negedge clk or negedge rst_n) begin
        if(!rst_n)begin cnt2<=0;clk_div2<=1;end
        else begin cnt2<=(cnt2<NUM_DIV-1)?cnt2+1:0;clk_div2<=cnt2<(NUM_DIV/2);end
    end
    assign clk_div=clk_div1|clk_div2;
endmodule