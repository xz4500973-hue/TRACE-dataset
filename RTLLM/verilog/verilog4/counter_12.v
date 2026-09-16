`timescale 1ns/1ps
module counter_12(input rst_n, clk, valid_count, output[3:0]out);
    reg[3:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) cnt<=0;
        else if(valid_count) cnt<=(cnt>=11)?0:cnt+1;
    end
    assign out=cnt;
endmodule