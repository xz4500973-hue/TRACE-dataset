`timescale 1ns/1ps

module multi_pipe_8bit #(parameter size=8)(
    input clk,rst_n,mul_en_in,
    input [size-1:0] mul_a,mul_b,
    output reg mul_en_out,
    output [size*2-1:0] mul_out
);

    reg [size-1:0] a_r,b_r;
    reg [size*2-1:0] pipe[0:3]; // 4-stage pipeline
    reg [2:0] en_sr;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            a_r<=0;b_r<=0;pipe[0]<=0;pipe[1]<=0;pipe[2]<=0;pipe[3]<=0;en_sr<=0;mul_en_out<=0;
        end else begin
            a_r<=mul_en_in?mul_a:0; b_r<=mul_en_in?mul_b:0;
            // Stage0: sum pairs of partial products
            pipe[0]<=(b_r[0]?a_r:0)+(b_r[1]?(a_r<<1):0)+(b_r[2]?(a_r<<2):0)+(b_r[3]?(a_r<<3):0);
            pipe[1]<=(b_r[4]?(a_r<<4):0)+(b_r[5]?(a_r<<5):0)+(b_r[6]?(a_r<<6):0)+(b_r[7]?(a_r<<7):0);
            pipe[2]<=pipe[0]+pipe[1];
            pipe[3]<=pipe[2];
            en_sr<={en_sr[1:0],mul_en_in}; mul_en_out<=en_sr[2];
        end
    end

    assign mul_out = mul_en_out ? pipe[3] : 0;

endmodule