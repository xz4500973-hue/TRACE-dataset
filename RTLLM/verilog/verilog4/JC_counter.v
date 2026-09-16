`timescale 1ns/1ps
module JC_counter(input clk,rst_n,output[63:0]Q);
    genvar i; reg[63:0]sr;
    generate for(i=0;i<63;i=i+1)begin:bit_slice
        always @(posedge clk or negedge rst_n)
            if(!rst_n) sr[i]<=0;
            else sr[i]<=(i==63)?~sr[0]:sr[i+1];
    end endgenerate
    always @(posedge clk or negedge rst_n)
        if(!rst_n) sr[63]<=0;
        else sr[63]<=~sr[0];
    assign Q=sr;
endmodule