`timescale 1ns/1ps
// traffic light, variant 4: binary counter + case decode
module traffic (
    input  wire clk,
    input  wire rst_n,
    output reg  [2:0] lights
);
    reg [3:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cnt <= 4'd0;
        else if (cnt == 4'd8) cnt <= 4'd0;
        else cnt <= cnt + 4'd1;
    end
    always @(*) begin
        case (1'b1)
            (cnt < 4'd4):  lights = 3'b001;
            (cnt == 4'd4): lights = 3'b010;
            default:       lights = 3'b100;
        endcase
    end
endmodule
