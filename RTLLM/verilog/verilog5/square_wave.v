`timescale 1ns/1ps

module square_wave #(
    parameter FW = 8
)(
    input           clk,
    input  [FW-1:0] freq,
    output reg      wave_out
);

    reg [FW-1:0] cnt;

    always @(posedge clk) begin
        if (cnt >= freq - 1) begin
            cnt      <= 0;
            wave_out <= ~wave_out;
        end else begin
            cnt <= cnt + 1;
        end
    end

endmodule