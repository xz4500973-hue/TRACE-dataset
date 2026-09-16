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

    reg [5:0] mem [0:11];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mem[0] <= 6'd0; mem[1] <= 6'd0; mem[2] <= 6'd0; mem[3] <= 6'd0;
            mem[4] <= 6'd0; mem[5] <= 6'd0; mem[6] <= 6'd0; mem[7] <= 6'd0;
            mem[8] <= 6'd0; mem[9] <= 6'd0; mem[10] <= 6'd0; mem[11] <= 6'd0;
        end else if (write_en) begin
            mem[write_addr] <= write_data;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            read_data <= 6'd0;
        else
            read_data <= read_en ? mem[read_addr] : 6'd0;
    end

endmodule