`timescale 1ns/1ps

module freq_divbyfrac(
    input               rst_n,
    input               clk,
    output              clk_div
);

    parameter MUL2_DIV_CLK = 7;

    reg [3:0] cnt;
    reg       clk_div_r;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt       <= 'b0;
            clk_div_r <= 1'b0;
        end
        else begin
            if (cnt == MUL2_DIV_CLK-1)
                cnt <= 'b0;
            else
                cnt <= cnt + 1'b1;

            // First half: cnt 0..2 high, cnt 3 low
            // Second half: cnt 4..5 high, cnt 6 low (approx 50% duty)
            clk_div_r <= (cnt < (MUL2_DIV_CLK/2)) || (cnt >= (MUL2_DIV_CLK/2+1) && cnt < MUL2_DIV_CLK-1);
        end
    end

    assign clk_div = clk_div_r;

endmodule