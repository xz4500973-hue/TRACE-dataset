`timescale 1ns/1ps

module up_down_counter #(
    parameter WIDTH = 16
)(
    input  wire                clk,
    input  wire                reset,
    input  wire                up_down,
    output reg  [WIDTH-1:0]    count
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else
            count <= up_down ? count + 1 : count - 1;
    end

endmodule