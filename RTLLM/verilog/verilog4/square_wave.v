`timescale 1ns/1ps

module square_wave(
    input           clk,
    input  [7:0]    freq,
    output reg      wave_out
);

    reg [7:0] dcnt; // down counter

    always @(posedge clk) begin
        if (dcnt == 0) begin
            dcnt     <= freq - 1;
            wave_out <= ~wave_out;
        end else begin
            dcnt <= dcnt - 1;
        end
    end

endmodule