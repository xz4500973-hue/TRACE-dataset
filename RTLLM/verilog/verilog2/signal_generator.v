`timescale 1ns/1ps

module signal_generator(
    input clk, rst_n,
    output reg [4:0] wave
);

    reg dir; // 0=up, 1=down

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wave <= 0;
            dir  <= 0;
        end else begin
            if (!dir) begin
                if (wave == 31) dir <= 1;
                else            wave <= wave + 1;
            end else begin
                if (wave == 0)  dir <= 0;
                else            wave <= wave - 1;
            end
        end
    end

endmodule