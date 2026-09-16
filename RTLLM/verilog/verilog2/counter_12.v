`timescale 1ns/1ps
module counter_12(input rst_n, clk, valid_count, output reg[3:0]out);
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) out<=0;
        else if(valid_count) out<=(out==11)?0:out+1;
    end
endmodule