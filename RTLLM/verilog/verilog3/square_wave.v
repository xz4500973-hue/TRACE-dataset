`timescale 1ns/1ps

module square_wave(
    input           clk,
    input  [7:0]    freq,
    output reg      wave_out
);

    reg [7:0] count;
    wire toggle = (count == freq - 1);

    always @(posedge clk) begin
        count    <= toggle ? 0 : count + 1;
        wave_out <= toggle ? ~wave_out : wave_out;
    end

endmodule