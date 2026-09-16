`timescale 1ns/1ps
module multi_pipe_4bit#(parameter size=4)(input clk,rst_n,input[size-1:0]mul_a,mul_b,output reg[size*2-1:0]mul_out);
    parameter N=2*size;
    reg[N-1:0] s1,s2;
    wire[N-1:0] pp0=mul_b[0]?mul_a:0, pp1=mul_b[1]?(mul_a<<1):0, pp2=mul_b[2]?(mul_a<<2):0, pp3=mul_b[3]?(mul_a<<3):0;
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin s1<=0;s2<=0;mul_out<=0;end
        else begin s1<=pp0+pp1+pp2+pp3;s2<=s1;mul_out<=s2;end
    end
endmodule