`timescale 1ns/1ps
module edge_detect(input clk,rst_n,a,output reg rise,down);
    reg prev;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) prev<=0;
        else prev<=a;
    end
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) {rise,down}<=0;
        else {rise,down}<={a&&!prev, !a&&prev};
    end
endmodule