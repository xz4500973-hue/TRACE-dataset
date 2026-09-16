`timescale 1ns/1ps

module RAM #(
    parameter DEPTH = 12,
    parameter AW    = 8,
    parameter DW    = 6
)(
    input clk, rst_n,
    input write_en,
    input [AW-1:0] write_addr,
    input [DW-1:0] write_data,
    input read_en,
    input [AW-1:0] read_addr,
    output reg [DW-1:0] read_data
);

    reg [DW-1:0] mem [0:DEPTH-1];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            read_data <= 0;
        else
            read_data <= read_en ? mem[read_addr] : 0;
    end

    always @(posedge clk) begin
        if (write_en)
            mem[write_addr] <= write_data;
    end

endmodule