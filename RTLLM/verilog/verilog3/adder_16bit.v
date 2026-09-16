`timescale 1ns/1ps

module adder_16bit (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        Cin,
    output wire [15:0] y,
    output wire        Co
);

    wire [15:0] c;
    genvar i;

    // bit 0
    assign y[0] = a[0] ^ b[0] ^ Cin;
    assign c[0] = (a[0] & b[0]) | (a[0] & Cin) | (b[0] & Cin);

    // generate loop bits 1..15: flat full adder array
    generate
        for (i = 1; i < 16; i = i + 1) begin : gen_fa
            assign y[i] = a[i] ^ b[i] ^ c[i-1];
            assign c[i] = (a[i] & b[i]) | (a[i] & c[i-1]) | (b[i] & c[i-1]);
        end
    endgenerate

    assign Co = c[15];

endmodule