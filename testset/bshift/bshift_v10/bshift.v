`timescale 1ns/1ps
// 8-bit barrel shifter, variant 10: one-hot decode then OR
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] onehot = 8'd1 << shamt;
    wire [7:0] terms [0:7];
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : T
            assign terms[i] = onehot[i] ? (data << i) : 8'd0;
        end
    endgenerate
    assign out = terms[0] | terms[1] | terms[2] | terms[3] | terms[4] | terms[5] | terms[6] | terms[7];
endmodule
