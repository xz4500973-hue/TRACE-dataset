`timescale 1ns/1ps

module barrel_shifter (
    input  [7:0] in,
    input  [2:0] ctrl,
    output [7:0] out
);

    // Generate-for: 3 stages, shift amounts 4, 2, 1
    wire [7:0] stg [0:3];
    genvar stage;

    assign stg[0] = in;

    generate
        for (stage = 0; stage < 3; stage = stage + 1) begin : shift_stage
            assign stg[stage+1] = ctrl[stage] ? (stg[stage] >> (1 << stage)) : stg[stage];
        end
    endgenerate

    assign out = stg[3];

endmodule