`timescale 1ns/1ps
// 8-bit barrel shifter, variant 7: function-based
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    function [7:0] shl;
        input [7:0] d;
        input [2:0] s;
        begin
            shl = d << s;
        end
    endfunction
    assign out = shl(data, shamt);
endmodule
