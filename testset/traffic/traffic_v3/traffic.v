`timescale 1ns/1ps
// traffic light, variant 3: one-hot ring counter + decode
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [8:0] ring;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) ring <= 9'b000000001;
        else ring <= {ring[7:0], ring[8]};
    end
    assign lights[0] = ring[0] | ring[1] | ring[2] | ring[3];
    assign lights[1] = ring[4];
    assign lights[2] = ring[5] | ring[6] | ring[7] | ring[8];
endmodule
