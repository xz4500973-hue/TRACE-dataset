`timescale 1ns/1ps
// 8x8 multiplier, variant 8: carry-save accumulation
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [15:0] pp [0:7];
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : PP
            assign pp[i] = b[i] ? (a << i) : 16'd0;
        end
    endgenerate

    wire [16:0] s [0:8];
    wire [16:0] c [0:8];
    assign s[0] = 17'd0;
    assign c[0] = 17'd0;

    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : CSA
            wire [16:0] ppj = {1'b0, pp[j]};
            assign s[j+1] = ppj ^ s[j] ^ c[j];
            assign c[j+1] = ((ppj & s[j]) | (ppj & c[j]) | (s[j] & c[j])) << 1;
        end
    endgenerate

    assign p = s[8] + c[8];
endmodule
