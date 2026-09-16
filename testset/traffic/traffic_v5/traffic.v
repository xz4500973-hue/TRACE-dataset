`timescale 1ns/1ps
// traffic light, variant 5: clock-gated counter
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [3:0] cnt;
    reg gclk_en;
    always @(clk or rst_n) begin
        if (!clk) gclk_en <= 1'b1;
    end
    wire gclk = clk & gclk_en;
    always @(posedge gclk or negedge rst_n) begin
        if (!rst_n) cnt <= 4'd0;
        else if (cnt == 4'd8) cnt <= 4'd0;
        else cnt <= cnt + 4'd1;
    end
    assign lights = (cnt < 4'd4)  ? 3'b001 :
                    (cnt == 4'd4) ? 3'b010 : 3'b100;
endmodule
