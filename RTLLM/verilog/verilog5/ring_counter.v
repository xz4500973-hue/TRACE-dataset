`timescale 1ns/1ps

module ring_counter #(
    parameter WIDTH = 8
)(
    input wire clk,
    input wire reset,
    output wire [WIDTH-1:0] out
);

    reg [WIDTH-1:0] state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= {{(WIDTH-1){1'b0}}, 1'b1};
        else
            state <= {state[WIDTH-2:0], state[WIDTH-1]};
    end

    assign out = state;

endmodule