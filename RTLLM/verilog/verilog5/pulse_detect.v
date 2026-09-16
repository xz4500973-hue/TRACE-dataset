`timescale 1ns/1ns

module pulse_detect #(
    parameter PATTERN = 3'b010
)(
    input clk, rst_n, data_in,
    output reg data_out
);

    reg [2:0] shift;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift <= ~PATTERN;  // ensure no false match on reset
            data_out <= 0;
        end else begin
            shift <= {shift[1:0], data_in};
            data_out <= (shift == PATTERN);
        end
    end

endmodule