`timescale 1ns/1ps

module right_shifter #(parameter W=8)(clk, q, d);
    input clk, d;
    output reg [W-1:0] q;

    always @(posedge clk)
        q <= {d, q[W-1:1]};

endmodule