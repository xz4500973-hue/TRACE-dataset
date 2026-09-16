`timescale 1ns/1ps

module right_shifter(clk, q, d);
    input clk, d;
    output reg [7:0] q;

    wire [7:0] next_q;
    assign next_q = {d, q[7:1]};

    always @(posedge clk)
        q <= next_q;

endmodule