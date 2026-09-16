`timescale 1ns/1ps
// 8x8 multiplier, variant 4: Booth radix-2
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [15:0] term [0:7];
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : BOOTH
            wire prev = (i == 0) ? 1'b0 : b[i-1];
            wire [15:0] shifted = a << i;
            assign term[i] = (prev & ~b[i]) ? shifted :
                             (~prev & b[i]) ? (~shifted + 16'd1) : 16'd0;
        end
    endgenerate
    assign p = term[0] + term[1] + term[2] + term[3] + term[4] + term[5] + term[6] + term[7];
endmodule
