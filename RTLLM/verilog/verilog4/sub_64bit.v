`timescale 1ns/1ps

module sub_64bit(
    input  [63:0] A,
    input  [63:0] B,
    output [63:0] result,
    output        overflow
);

    reg [63:0] res;
    reg        ov;

    always @(*) begin
        res = A - B;
        ov  = (A[63] ^ B[63]) && (res[63] == B[63]);
    end

    assign result   = res;
    assign overflow = ov;

endmodule