`timescale 1ns/1ps

module div_16bit(
    input  wire [15:0] A,
    input  wire [7:0]  B,
    output wire [15:0] result,
    output wire [15:0] odd
);

    // Non-restoring division: unrolled 16 stages
    reg [15:0] q [0:16];
    reg [16:0] r [0:16];
    integer j;

    always @(*) begin
        q[0] = 16'd0;
        r[0] = 17'd0;
        for (j = 0; j < 16; j = j + 1) begin
            r[j+1] = {r[j][15:0], A[15-j]};
            if (r[j][16] == 1'b0) begin
                r[j+1] = r[j+1] - B;
                q[j+1] = {q[j][14:0], 1'b1};
            end else begin
                r[j+1] = r[j+1] + B;
                q[j+1] = {q[j][14:0], 1'b0};
            end
        end
    end

    assign result = q[16];
    assign odd    = r[16][16] ? (r[16][15:0] + B) : r[16][15:0];

endmodule