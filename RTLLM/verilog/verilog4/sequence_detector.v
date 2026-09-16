`timescale 1ns/1ps

module sequence_detector(
    input  clk, rst_n, data_in,
    output sequence_detected
);

    // Explicit state encoding: one-hot
    localparam IDLE = 5'b00001, S1 = 5'b00010, S2 = 5'b00100, S3 = 5'b01000, S4 = 5'b10000;
    reg [4:0] curr;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) curr <= IDLE;
        else begin
            case (curr)
                IDLE: curr <= data_in ? S1 : IDLE;
                S1:   curr <= data_in ? S1 : S2;
                S2:   curr <= data_in ? S1 : S3;
                S3:   curr <= data_in ? S4 : IDLE;
                S4:   curr <= data_in ? S1 : S2;
                default: curr <= IDLE;
            endcase
        end
    end

    assign sequence_detected = curr[4];  // one-hot bit4 = S4

endmodule