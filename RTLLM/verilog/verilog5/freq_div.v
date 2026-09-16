`timescale 1ns/1ps

module freq_div (CLK_in, CLK_50, CLK_10, CLK_1, RST);
    input CLK_in, RST;
    output CLK_50, CLK_10, CLK_1;

    parameter DIV2  = 1;
    parameter DIV10 = 5;
    parameter DIV100 = 50;

    reg [$clog2(DIV100):0] cnt2, cnt10, cnt100;
    reg clk2, clk10, clk100;

    always @(posedge CLK_in or posedge RST) begin
        if(RST) begin
            cnt2<=0; cnt10<=0; cnt100<=0;
            clk2<=0; clk10<=0; clk100<=0;
        end else begin
            cnt2 <= (cnt2 == DIV2-1) ? 0 : cnt2+1;
            cnt10 <= (cnt10 == DIV10-1) ? 0 : cnt10+1;
            cnt100 <= (cnt100 == DIV100-1) ? 0 : cnt100+1;
            if(cnt2 == DIV2-1)  clk2  <= ~clk2;
            if(cnt10 == DIV10-1) clk10 <= ~clk10;
            if(cnt100 == DIV100-1)clk100 <= ~clk100;
        end
    end

    assign CLK_50 = clk2;
    assign CLK_10 = clk10;
    assign CLK_1  = clk100;

endmodule