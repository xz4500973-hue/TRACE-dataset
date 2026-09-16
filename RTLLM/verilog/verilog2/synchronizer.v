`timescale 1ns/1ps

module synchronizer(
    input              clk_a, clk_b, arstn, brstn,
    input  [3:0]       data_in,
    input              data_en,
    output reg [3:0]   dataout
);

    // Data captured in clk_a, 2-stage sync, output in clk_b
    reg [3:0] data_reg;
    reg       en_reg;
    reg [3:0] data_s1, data_s2;
    reg       en_s1, en_s2;

    // clk_a domain: capture input
    always @(posedge clk_a or negedge arstn) begin
        if (!arstn) begin
            data_reg <= 0;
            en_reg   <= 0;
        end else begin
            data_reg <= data_in;
            en_reg   <= data_en;
        end
    end

    // clk_b domain: 2-stage synchronizer for both data and enable
    always @(posedge clk_b or negedge brstn) begin
        if (!brstn) begin
            data_s1 <= 0; data_s2 <= 0;
            en_s1   <= 0; en_s2   <= 0;
            dataout <= 0;
        end else begin
            data_s1 <= data_reg;
            data_s2 <= data_s1;
            en_s1   <= en_reg;
            en_s2   <= en_s1;
            dataout <= en_s2 ? data_s2 : dataout;
        end
    end

endmodule