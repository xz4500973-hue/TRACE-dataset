`timescale 1ns/1ps

module multi_booth_8bit #(
    parameter W = 8
)(
    output reg [2*W-1:0] p, output reg rdy,
    input clk, reset, input [W-1:0] a, b
);

    reg [2*W:0] acc;
    reg [$clog2(W):0] cnt;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            acc <= 0; cnt <= 0; rdy <= 0; p <= 0;
        end else if (cnt < W) begin
            case (acc[1:0])
                2'b01: acc[2*W:W] <= acc[2*W:W] + a;
                2'b10: acc[2*W:W] <= acc[2*W:W] - a;
                default: ;
            endcase
            acc <= {acc[2*W], acc[2*W:1]};
            cnt <= cnt + 1;
        end else begin
            p   <= acc[2*W-1:0];
            rdy <= 1;
        end
    end
endmodule