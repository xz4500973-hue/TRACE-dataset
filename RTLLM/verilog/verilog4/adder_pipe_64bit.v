`timescale 1ns/1ps

module adder_pipe_64bit
#(
    parameter DATA_WIDTH = 64,
    parameter STG_WIDTH = 16
)
(
    input                clk,
    input                rst_n,
    input                i_en,
    input  [63:0]        adda,
    input  [63:0]        addb,
    output [64:0]        result,
    output reg           o_en
);

    // Carry-select pipelined: 4 x 16bit blocks, each with dual-path
    reg [16:0] s0, s1_0, s1_1, s2_0, s2_1, s3_0, s3_1;
    reg [15:0] a1d, b1d, a2d, b2d, a3d, b3d;
    reg        en0, en1, en2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            s0   <= 17'd0; s1_0 <= 17'd0; s1_1 <= 17'd0;
            s2_0 <= 17'd0; s2_1 <= 17'd0; s3_0 <= 17'd0; s3_1 <= 17'd0;
            a1d  <= 16'd0; b1d <= 16'd0; a2d <= 16'd0; b2d <= 16'd0; a3d <= 16'd0; b3d <= 16'd0;
            en0  <= 1'b0;  en1 <= 1'b0;  en2 <= 1'b0;
            o_en <= 1'b0;
        end else begin
            en0  <= i_en;
            en1  <= en0;
            en2  <= en1;
            o_en <= en2;

            if (i_en) begin
                s0  <= {1'b0, adda[15:0]} + {1'b0, addb[15:0]};
                a1d <= adda[31:16]; b1d <= addb[31:16];
                a2d <= adda[47:32]; b2d <= addb[47:32];
                a3d <= adda[63:48]; b3d <= addb[63:48];
            end
            if (en0) begin
                s1_0 <= {1'b0, a1d} + {1'b0, b1d};
                s1_1 <= {1'b0, a1d} + {1'b0, b1d} + 1'b1;
            end
            if (en1) begin
                s2_0 <= {1'b0, a2d} + {1'b0, b2d};
                s2_1 <= {1'b0, a2d} + {1'b0, b2d} + 1'b1;
            end
            if (en2) begin
                s3_0 <= {1'b0, a3d} + {1'b0, b3d};
                s3_1 <= {1'b0, a3d} + {1'b0, b3d} + 1'b1;
            end
        end
    end

    wire sel1 = s0[16];
    wire sel2 = sel1 ? s1_1[16] : s1_0[16];
    wire sel3 = sel2 ? s2_1[16] : s2_0[16];

    wire [16:0] s1_final = sel1 ? s1_1 : s1_0;
    wire [16:0] s2_final = sel2 ? s2_1 : s2_0;
    wire [16:0] s3_final = sel3 ? s3_1 : s3_0;

    assign result = {s3_final[16], s3_final[15:0], s2_final[15:0], s1_final[15:0], s0[15:0]};

endmodule