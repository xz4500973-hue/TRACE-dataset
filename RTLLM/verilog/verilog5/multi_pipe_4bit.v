`timescale 1ns/1ps
module multi_pipe_4bit#(parameter size=4)(input clk,rst_n,input[size-1:0]mul_a,mul_b,output[size*2-1:0]mul_out);
    parameter N=2*size;
    reg[N-1:0] pipe[0:2];
    genvar i; wire[N-1:0] pp[0:size-1];
    generate for(i=0;i<size;i=i+1)assign pp[i]=mul_b[i]?(mul_a<<i):0; endgenerate
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin pipe[0]<=0;pipe[1]<=0;pipe[2]<=0;end
        else begin pipe[0]<=pp[0]+pp[1];pipe[1]<=pp[2]+pp[3];pipe[2]<=pipe[0]+pipe[1];end
    end
    assign mul_out=pipe[2];
endmodule