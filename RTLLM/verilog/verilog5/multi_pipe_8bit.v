`timescale 1ns/1ps

module multi_pipe_8bit #(parameter W=8)(
    input clk,rst_n,mul_en_in,
    input [W-1:0] mul_a,mul_b,
    output reg mul_en_out,
    output reg [2*W-1:0] mul_out
);

    reg [W-1:0] a_r,b_r;
    reg [2*W-1:0] sum_low,sum_high,sum_total;
    reg [2:0] en_sr;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            a_r<=0;b_r<=0;sum_low<=0;sum_high<=0;sum_total<=0;en_sr<=0;mul_en_out<=0;mul_out<=0;
        end else begin
            a_r<=mul_en_in?mul_a:0; b_r<=mul_en_in?mul_b:0;
            // Low 4 bits partial products combined
            sum_low<=(b_r[0]?a_r:0)+((b_r[1]?a_r:0)<<1)+((b_r[2]?a_r:0)<<2)+((b_r[3]?a_r:0)<<3);
            // High 4 bits
            sum_high<=((b_r[4]?a_r:0)<<4)+((b_r[5]?a_r:0)<<5)+((b_r[6]?a_r:0)<<6)+((b_r[7]?a_r:0)<<7);
            sum_total<=sum_low+sum_high;
            en_sr<={en_sr[1:0],mul_en_in}; mul_en_out<=en_sr[2]; mul_out<=en_sr[2]?sum_total:0;
        end
    end
endmodule