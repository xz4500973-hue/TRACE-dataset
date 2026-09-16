`timescale 1ns/1ps

module sub_64bit #(
    parameter W = 64
)(
    input  [W-1:0] A,
    input  [W-1:0] B,
    output [W-1:0] result,
    output         overflow
);

    wire [W-1:0] diff;
    wire         borrow;
    assign {borrow, diff} = {1'b0, A} - {1'b0, B};

    assign result   = diff;
    assign overflow = (A[W-1] != B[W-1]) && (diff[W-1] != A[W-1]);

endmodule