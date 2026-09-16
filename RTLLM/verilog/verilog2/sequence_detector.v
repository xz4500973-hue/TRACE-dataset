`timescale 1ns/1ps

module sequence_detector(
    input  clk, rst_n, data_in,
    output sequence_detected
);

    // Detect "1101" (same as original) with single always block
    parameter IDLE=3'd0, S1=3'd1, S2=3'd2, S3=3'd3, S4=3'd4;
    reg [2:0] state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else begin
            case (state)
                IDLE: state <= data_in ? S1 : IDLE;
                S1:   state <= data_in ? S1 : S2;
                S2:   state <= data_in ? S1 : S3;
                S3:   state <= data_in ? S4 : IDLE;
                S4:   state <= data_in ? S1 : S2;
                default: state <= IDLE;
            endcase
        end
    end

    assign sequence_detected = (state == S4);

endmodule