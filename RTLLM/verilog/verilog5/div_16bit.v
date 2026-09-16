`timescale 1ns/1ps

module div_16bit(
    input  wire [15:0] A,
    input  wire [7:0]  B,
    output wire [15:0] result,
    output wire [15:0] odd
);

    // Array divider: 16 rows of subtract-and-select cells
    wire [15:0] partial_rem [0:16];
    wire [15:0] partial_quo [0:16];

    assign partial_rem[0] = 16'd0;
    assign partial_quo[0] = 16'd0;

    genvar stage;
    generate
        for (stage = 0; stage < 16; stage = stage + 1) begin : div_row
            wire [15:0] shifted = {partial_rem[stage][14:0], A[15-stage]};
            wire borrow;
            wire [15:0] diff;
            assign {borrow, diff[7:0]} = {1'b0, shifted[7:0]} - {1'b0, B};
            assign diff[15:8] = shifted[15:8] - borrow;

            assign partial_quo[stage+1] = {partial_quo[stage][14:0], ~borrow};
            assign partial_rem[stage+1] = borrow ? shifted : diff;
        end
    endgenerate

    assign result = partial_quo[16];
    assign odd    = partial_rem[16];

endmodule