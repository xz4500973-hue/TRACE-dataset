`timescale 1ns/1ps

module multi_16bit #(
    parameter W = 16
)(
    input clk, rst_n, start,
    input [W-1:0] ain, bin,
    output [2*W-1:0] yout,
    output reg done
);

    reg [W-1:0] areg, breg;
    reg [2*W-1:0] yout_r;
    reg [$clog2(W+1)-1:0] i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            i <= 0; done <= 0; areg <= 0; breg <= 0; yout_r <= 0;
        end else if (start) begin
            i <= i + 1'b1;
            if (i == 0) begin
                areg <= ain; breg <= bin; yout_r <= 0; done <= 0;
            end else if (i < W+1 && areg[i-1]) begin
                yout_r <= yout_r + (breg << (i-1));
            end
            if (i == W) done <= 1;
        end else begin
            i <= 0; done <= 0;
        end
    end

    assign yout = yout_r;

endmodule