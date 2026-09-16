`timescale 1ns/1ps

module synchronizer #(
    parameter DW = 4
)(
    input              clk_a, clk_b, arstn, brstn,
    input  [DW-1:0]    data_in,
    input              data_en,
    output reg [DW-1:0] dataout
);

    reg [DW-1:0] data_reg;
    reg          en_reg;
    reg [DW-1:0] data_sync [0:1];
    reg          en_sync [0:1];

    always @(posedge clk_a or negedge arstn) begin
        if (!arstn) begin
            data_reg <= 0; en_reg <= 0;
        end else begin
            data_reg <= data_in; en_reg <= data_en;
        end
    end

    genvar i;
    generate
        always @(posedge clk_b or negedge brstn) begin
            if (!brstn) begin
                data_sync[0] <= 0; data_sync[1] <= 0;
                en_sync[0]   <= 0; en_sync[1]   <= 0;
                dataout      <= 0;
            end else begin
                data_sync[0] <= data_reg; data_sync[1] <= data_sync[0];
                en_sync[0]   <= en_reg;   en_sync[1]   <= en_sync[0];
                dataout      <= en_sync[1] ? data_sync[1] : dataout;
            end
        end
    endgenerate

endmodule