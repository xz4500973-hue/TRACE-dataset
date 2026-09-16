`timescale 1ns/1ps
// traffic light, variant 7: down counter + decode
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [3:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cnt <= 4'd8;
        else if (cnt == 4'd0) cnt <= 4'd8;
        else cnt <= cnt - 4'd1;
    end
    assign lights = (cnt >= 4'd5)  ? 3'b001 :
                    (cnt == 4'd4)  ? 3'b010 : 3'b100;
endmodule
