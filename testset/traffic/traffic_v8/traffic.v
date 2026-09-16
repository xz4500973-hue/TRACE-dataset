`timescale 1ns/1ps
// traffic light, variant 8: explicit wrap comparator
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [3:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cnt <= 4'd0;
        else if (cnt == 4'd8) cnt <= 4'd0;
        else cnt <= cnt + 4'd1;
    end
    wire green  = (cnt < 4'd4);
    wire yellow = (cnt == 4'd4);
    assign lights = {~green & ~yellow, yellow, green};
endmodule
