`timescale 1ns/1ps
// traffic light: green(4) yellow(1) red(4), variant 1: binary counter + assign decode
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
    assign lights = (cnt < 4'd4)  ? 3'b001 :
                    (cnt == 4'd4) ? 3'b010 : 3'b100;
endmodule
