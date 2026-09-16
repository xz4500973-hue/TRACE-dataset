`timescale 1ns/1ps
module edge_detect(input clk,rst_n,a,output reg rise,down);
    reg a0,a1;
    wire a_pos = a && !a0;
    wire a_neg = !a && a0;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin {a1,a0}<={2'b00};{rise,down}<={2'b00};end
        else begin {a1,a0}<={a0,a};rise<=a_pos;down<=a_neg;end
    end
endmodule