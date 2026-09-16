`timescale 1ns/1ps

module barrel_shifter (
    input  [7:0] in,
    input  [2:0] ctrl,
    output [7:0] out
);

    // 3-stage MUX tree: stage0 shift 1, stage1 shift 2, stage2 shift 4
    wire [7:0] s0, s1;
    assign s0  = ctrl[0] ? {1'b0, in[7:1]} : in;
    assign s1  = ctrl[1] ? {2'b0, s0[7:2]} : s0;
    assign out = ctrl[2] ? {4'b0, s1[7:4]} : s1;

endmodule