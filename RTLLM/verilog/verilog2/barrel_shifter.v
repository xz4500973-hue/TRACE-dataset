`timescale 1ns/1ps

module barrel_shifter (
    input  [7:0] in,
    input  [2:0] ctrl,
    output [7:0] out
);

    // Pure behavioral right shift
    assign out = in >> ctrl;

endmodule