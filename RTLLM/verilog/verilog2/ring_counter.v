`timescale 1ns/1ps

module ring_counter (
    input wire clk,
    input wire reset,
    output wire [7:0] out
);

    reg [7:0] state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 8'b00000001;
        else
            state <= {state[0], state[7:1]};  // rotate right instead of left
    end

    assign out = state;

endmodule