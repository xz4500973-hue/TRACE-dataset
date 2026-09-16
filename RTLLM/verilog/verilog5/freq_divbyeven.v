`timescale 1ns/1ps
module freq_divbyeven(clk,rst_n,clk_div);
    input clk,rst_n; output clk_div;
    reg[2:0] shift_reg;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)shift_reg<=3'b001;
        else shift_reg<={shift_reg[1:0],shift_reg[2]};
    assign clk_div=shift_reg[2];
endmodule