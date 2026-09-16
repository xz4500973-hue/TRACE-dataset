`timescale 1ns/1ps
module freq_divbyodd(clk,rst_n,clk_div);
    input clk,rst_n; output clk_div;
    parameter NUM_DIV=5;
    reg[2:0]cnt;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)cnt<=0;else cnt<=(cnt<NUM_DIV-1)?cnt+1:0;
    assign clk_div=cnt<(NUM_DIV/2);
endmodule