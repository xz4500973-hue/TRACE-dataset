`timescale 1ns/1ps
module edge_detect(input clk,rst_n,a,output reg rise,down);
    reg a_d;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin a_d<=0;rise<=0;down<=0;end
        else begin a_d<=a;rise<=a&&!a_d;down<=!a&&a_d;end
    end
endmodule