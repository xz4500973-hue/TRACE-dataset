`timescale 1ns/1ps

module freq_div (CLK_in, CLK_50, CLK_10, CLK_1, RST);
    input CLK_in, RST;
    output CLK_50, CLK_10, CLK_1;

    reg clk_50_r, clk_10_r, clk_1_r;
    reg [6:0] total_cnt;

    always @(posedge CLK_in or posedge RST) begin
        if(RST) begin
            clk_50_r<=0; clk_10_r<=0; clk_1_r<=0; total_cnt<=0;
        end else begin
            total_cnt <= (total_cnt == 99) ? 0 : total_cnt + 1;

            // toggle /2 every clock
            clk_50_r <= ~clk_50_r;

            // toggle /10: every 5 clocks
            if(total_cnt[2:0] == 3'd4) clk_10_r <= ~clk_10_r;

            // toggle /100: every 50 clocks
            if(total_cnt == 6'd49) clk_1_r <= ~clk_1_r;
        end
    end

    assign CLK_50 = clk_50_r;
    assign CLK_10 = clk_10_r;
    assign CLK_1  = clk_1_r;

endmodule