`timescale 1ns/1ps

module sequence_detector(
    input  clk, rst_n, data_in,
    output sequence_detected
);

    // Shift register approach: 4-stage shift, compare with 4'b1101
    reg [3:0] sr;
    wire match;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) sr <= 4'b0000;
        else sr <= {sr[2:0], data_in};
    end

    assign match = (sr == 4'b1101);
    assign sequence_detected = match;

endmodule