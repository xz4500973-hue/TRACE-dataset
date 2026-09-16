`timescale 1ns/1ps
module freq_divbyodd(clk,rst_n,clk_div);
    input clk,rst_n; output clk_div;
    parameter NUM_DIV=5;
    reg[4:0]sr; // 5-bit shift register
    always @(posedge clk or negedge rst_n)
        if(!rst_n)sr<=5'b00001;
        else sr<={sr[3:0],sr[4]};
    assign clk_div=sr[2]; // middle bit gives ~50% duty
endmodule