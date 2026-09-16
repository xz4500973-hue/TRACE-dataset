`timescale 1ns/1ps
// traffic light, variant 10: function-based decode
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [3:0] cnt;
    function [2:0] decode;
        input [3:0] c;
        begin
            if (c < 4'd4)       decode = 3'b001;
            else if (c == 4'd4) decode = 3'b010;
            else                decode = 3'b100;
        end
    endfunction
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cnt <= 4'd0;
        else if (cnt == 4'd8) cnt <= 4'd0;
        else cnt <= cnt + 4'd1;
    end
    assign lights = decode(cnt);
endmodule
