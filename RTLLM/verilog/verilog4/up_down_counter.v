`timescale 1ns/1ps

module up_down_counter (
    input  wire       clk,
    input  wire       reset,
    input  wire       up_down,
    output reg [15:0] count
);

    wire inc =  up_down;
    wire dec = ~up_down;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 16'b0;
        else if (inc)
            count <= count + 1;
        else if (dec)
            count <= count - 1;
    end

endmodule