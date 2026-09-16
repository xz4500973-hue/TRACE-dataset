`timescale 1ns/1ps
// 8-bit comparator, variant 8: function-based
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    function [1:0] cmp;
        input [7:0] x, y;
        begin
            if (x > y)      cmp = 2'b10;
            else if (x < y) cmp = 2'b01;
            else            cmp = 2'b00;
        end
    endfunction
    wire [1:0] res = cmp(a, b);
    assign gt = res[1];
    assign lt = res[0];
    assign eq = (res == 2'b00);
endmodule
