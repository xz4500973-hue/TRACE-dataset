`timescale 1ns/1ps

module ring_counter (
    input wire clk,
    input wire reset,
    output wire [7:0] out
);

    reg [7:0] state;
    wire [7:0] next_state;

    assign next_state = reset ? 8'b00000001 : {state[6:0], state[7]};

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 8'b00000001;
        else
            state <= next_state;
    end

    assign out = state;

endmodule