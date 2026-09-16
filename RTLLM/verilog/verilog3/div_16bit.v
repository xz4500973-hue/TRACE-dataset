`timescale 1ns/1ps

module div_16bit(
    input  wire [15:0] A,
    input  wire [7:0]  B,
    output wire [15:0] result,
    output wire [15:0] odd
);

    // Unrolled restoring division: 16 stages via generate
    wire [15:0] rem [0:16];
    wire [15:0] quo [0:16];
    wire [15:0] sub [0:15];
    genvar i;

    assign rem[0] = 16'd0;
    assign quo[0] = 16'd0;

    generate
        for (i = 0; i < 16; i = i + 1) begin : stage
            wire [16:0] shift_rem = {rem[i][14:0], A[15-i]};
            assign sub[i] = shift_rem - {9'd0, B};
            assign quo[i+1] = {quo[i][14:0], ~sub[i][15]};
            assign rem[i+1] = sub[i][15] ? shift_rem : sub[i][15:0];
        end
    endgenerate

    assign result = quo[16];
    assign odd    = rem[16];

endmodule