`timescale 1ns/1ps

module freq_div (CLK_in, CLK_50, CLK_10, CLK_1, RST);
    input CLK_in, RST;
    output CLK_50, CLK_10, CLK_1;

    reg       clk_50_r;
    reg       clk_10_r;
    reg       clk_1_r;
    reg [3:0] c10;
    reg [6:0] c100;
    wire      t10, t1;

    assign t10 = (c10 == 4);
    assign t1  = (c100 == 49);

    always @(posedge CLK_in or posedge RST) begin
        if(RST) begin clk_50_r<=0; clk_10_r<=0; clk_1_r<=0; c10<=0; c100<=0; end
        else begin
            clk_50_r <= ~clk_50_r;
            c10 <= t10 ? 0 : c10+1;
            if(t10)   clk_10_r <= ~clk_10_r;
            c100 <= t1 ? 0 : c100+1;
            if(t1)    clk_1_r  <= ~clk_1_r;
        end
    end

    assign CLK_50 = clk_50_r;
    assign CLK_10 = clk_10_r;
    assign CLK_1  = clk_1_r;

endmodule