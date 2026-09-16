`timescale 1ns/1ps

module up_down_counter (
    input  wire       clk,
    input  wire       reset,
    input  wire       up_down,
    output reg [15:0] count
);

    wire [15:0] next_count;
    assign next_count = up_down ? count + 1 : count - 1;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 16'b0;
        else
            count <= next_count;
    end

endmodule