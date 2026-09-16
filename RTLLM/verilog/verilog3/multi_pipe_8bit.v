`timescale 1ns/1ps

module multi_pipe_8bit #(parameter size=8)(
    input clk,rst_n,mul_en_in,
    input [size-1:0] mul_a,mul_b,
    output reg mul_en_out,
    output reg [size*2-1:0] mul_out
);

    reg [size-1:0] a_r,b_r;
    reg [size*2-1:0] s0,s1,s2,s3,out_r;
    reg [2:0] en_sr;
    genvar i;
    wire [size*2-1:0] pp [0:size-1];

    generate for(i=0;i<size;i=i+1)assign pp[i]=b_r[i]?(a_r<<i):0;endgenerate

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            a_r<=0;b_r<=0;s0<=0;s1<=0;s2<=0;s3<=0;out_r<=0;mul_out<=0;mul_en_out<=0;en_sr<=0;
        end else begin
            a_r<=mul_en_in?mul_a:0; b_r<=mul_en_in?mul_b:0;
            s0<=pp[0]+pp[1]; s1<=pp[2]+pp[3]; s2<=pp[4]+pp[5]; s3<=pp[6]+pp[7];
            out_r<=s0+s1+s2+s3;
            en_sr<={en_sr[1:0],mul_en_in}; mul_en_out<=en_sr[2]; mul_out<=en_sr[2]?out_r:0;
        end
    end
endmodule