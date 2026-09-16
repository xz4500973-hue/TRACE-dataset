`timescale 1ns/1ps
// 16-bit accumulator, variant 7: Kogge-Stone prefix adder
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    wire [15:0] next;
    wire [15:0] p0 = acc_r ^ din;
    wire [15:0] g0 = acc_r & din;
    wire [15:0] p [0:4];
    wire [15:0] g [0:4];
    assign p[0] = p0;
    assign g[0] = g0;
    genvar lv, i;
    generate
        for (lv = 0; lv < 4; lv = lv + 1) begin : KS_LV
            for (i = 0; i < 16; i = i + 1) begin : KS_BIT
                if (i < (1 << lv)) begin
                    assign g[lv+1][i] = g[lv][i];
                    assign p[lv+1][i] = p[lv][i];
                end else begin
                    assign g[lv+1][i] = g[lv][i] | (p[lv][i] & g[lv][i - (1 << lv)]);
                    assign p[lv+1][i] = p[lv][i] & p[lv][i - (1 << lv)];
                end
            end
        end
    endgenerate
    genvar k;
    generate
        for (k = 0; k < 16; k = k + 1) begin : S
            if (k == 0) assign next[0] = p0[0];
            else assign next[k] = p0[k] ^ g[4][k-1];
        end
    endgenerate
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else if (en) acc_r <= next;
    end
    assign acc = acc_r;
endmodule
