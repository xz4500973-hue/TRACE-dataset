`timescale 1ns/1ps
// 8-bit barrel shifter, variant 6: case-based combinational
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output reg  [7:0] out
);
    always @(*) begin
        case (shamt)
            3'd0: out = data;
            3'd1: out = data << 1;
            3'd2: out = data << 2;
            3'd3: out = data << 3;
            3'd4: out = data << 4;
            3'd5: out = data << 5;
            3'd6: out = data << 6;
            3'd7: out = data << 7;
            default: out = 8'd0;
        endcase
    end
endmodule
