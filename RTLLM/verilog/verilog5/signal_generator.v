`timescale 1ns/1ps

module signal_generator #(
    parameter WIDTH = 5
)(
    input clk, rst_n,
    output reg [WIDTH-1:0] wave
);

    reg up;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wave <= 0;
            up   <= 1'b1;
        end else begin
            wave <= up ? wave + 1 : wave - 1;
            if (wave == ((1<<WIDTH)-2) && up) up <= 1'b0;
            if (wave == 1 && !up) up <= 1'b1;
        end
    end

endmodule