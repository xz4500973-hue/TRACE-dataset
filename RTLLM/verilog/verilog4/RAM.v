`timescale 1ns/1ps

module RAM (
    input clk, rst_n,
    input write_en,
    input [7:0] write_addr,
    input [5:0] write_data,
    input read_en,
    input [7:0] read_addr,
    output reg [5:0] read_data
);

    // Inferred block RAM with single always block
    reg [5:0] mem [0:11];
    reg [5:0] rd_data_r;

    always @(posedge clk) begin
        if (write_en)
            mem[write_addr] <= write_data;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_data_r <= 6'd0;
            read_data <= 6'd0;
        end else begin
            if (read_en)
                rd_data_r <= mem[read_addr];
            read_data <= read_en ? rd_data_r : 6'd0;
        end
    end

endmodule