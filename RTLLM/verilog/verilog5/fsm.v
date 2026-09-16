`timescale 1ns/1ps
module fsm(IN,MATCH,CLK,RST);
    input IN,CLK,RST; output wire MATCH;
    wire[2:0] ns; wire match_w;
    wire[2:0] cs;
    dff3 state_reg(.clk(CLK),.rst(RST),.d(ns),.q(cs));
    assign ns = (cs==3'd0)?(IN?3'd1:3'd0):
                (cs==3'd1)?(IN?3'd1:3'd2):
                (cs==3'd2)?(IN?3'd1:3'd3):
                (cs==3'd3)?(IN?3'd4:3'd0):
                (cs==3'd4)?(IN?3'd5:3'd2):
                            (IN?3'd1:3'd2);
    assign match_w = (cs==3'd4 && IN);
    dff1 match_reg(.clk(CLK),.rst(RST),.d(match_w),.q(MATCH));
endmodule
module dff3(input clk,rst, input[2:0]d, output reg[2:0]q);
    always @(posedge clk or posedge rst) if(rst)q<=0;else q<=d;
endmodule
module dff1(input clk,rst,d,output reg q);
    always @(posedge clk or posedge rst) if(rst)q<=0;else q<=d;
endmodule