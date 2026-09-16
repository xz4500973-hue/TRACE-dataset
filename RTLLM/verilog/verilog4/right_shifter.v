`timescale 1ns/1ps

module right_shifter(clk, q, d);
    input clk, d;
    output [7:0] q;

    reg [7:0] sr;

    always @(posedge clk)
        sr <= {sr[6:0], d};

    assign q = {sr[6:0], d};  // output = current state

endmodule