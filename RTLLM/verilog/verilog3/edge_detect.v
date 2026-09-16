`timescale 1ns/1ps
module edge_detect(input clk,rst_n,a,output rise,down);
    wire a_d;
    dff_sync u_dff(.clk(clk),.rst_n(rst_n),.d(a),.q(a_d));
    assign rise = a && !a_d;
    assign down = !a && a_d;
endmodule
module dff_sync(input clk,rst_n,d,output reg q);
    always @(posedge clk or negedge rst_n) if(!rst_n)q<=0;else q<=d;
endmodule