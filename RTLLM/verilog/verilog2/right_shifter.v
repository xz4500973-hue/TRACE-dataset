`timescale 1ns/1ps

module right_shifter(clk, q, d);
    input clk, d;
    output reg [7:0] q;

    always @(posedge clk)
        q <= {d, q[7:1]};

endmodule