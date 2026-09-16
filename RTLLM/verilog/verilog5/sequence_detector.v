`timescale 1ns/1ps

module sequence_detector #(
    parameter PATTERN = 4'b1101
)(
    input  clk, rst_n, data_in,
    output sequence_detected
);

    reg [3:0] sr;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) sr <= 4'b0000;
        else sr <= {sr[2:0], data_in};
    end

    assign sequence_detected = (sr == PATTERN);

endmodule