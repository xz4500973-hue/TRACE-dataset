`timescale 1ns/1ps
module multi_pipe_4bit#(parameter size=4)(input clk,rst_n,input[size-1:0]mul_a,mul_b,output reg[size*2-1:0]mul_out);
    wire[size*2-1:0] pp[0:3]; genvar i;
    generate for(i=0;i<4;i=i+1)assign pp[i]=mul_b[i]?(mul_a<<i):0; endgenerate
    reg[size*2-1:0] s0,s1;
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin s0<=0;s1<=0;mul_out<=0;end
        else begin s0<=pp[0]+pp[1];s1<=pp[2]+pp[3];mul_out<=s0+s1;end
    end
endmodule