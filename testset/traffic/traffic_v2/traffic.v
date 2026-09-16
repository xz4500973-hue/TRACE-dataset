`timescale 1ns/1ps
// traffic light, variant 2: gray counter + decode
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [3:0] gray;
    function [3:0] g2b;
        input [3:0] g;
        integer i;
        begin
            g2b[3] = g[3];
            for (i = 2; i >= 0; i = i - 1)
                g2b[i] = g[i] ^ g2b[i+1];
        end
    endfunction
    wire [3:0] bin = g2b(gray);
    wire [3:0] next_bin  = (bin == 4'd8) ? 4'd0 : bin + 4'd1;
    wire [3:0] next_gray = next_bin ^ (next_bin >> 1);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) gray <= 4'd0;
        else gray <= next_gray;
    end
    assign lights = (bin < 4'd4)  ? 3'b001 :
                    (bin == 4'd4) ? 3'b010 : 3'b100;
endmodule
