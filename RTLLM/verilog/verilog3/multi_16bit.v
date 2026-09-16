`timescale 1ns/1ps

module multi_16bit(
    input clk, rst_n, start,
    input [15:0] ain, bin,
    output [31:0] yout,
    output reg done
);

    reg [15:0] areg, breg;
    reg [31:0] yout_r;
    reg [4:0] i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            i <= 0; done <= 0; areg <= 0; breg <= 0; yout_r <= 0;
        end else if (start) begin
            i <= i + 1'b1;
            if (i == 0) begin
                areg <= ain; breg <= bin; yout_r <= 0; done <= 0;
            end else if (i < 17 && areg[i-1]) begin
                yout_r <= yout_r + (breg << (i-1));
            end
            if (i == 16) done <= 1;
        end else begin
            i <= 0; done <= 0;
        end
    end

    assign yout = yout_r;

endmodule