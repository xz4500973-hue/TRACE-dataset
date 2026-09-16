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
    wire [5:0] rd_data_wire;
    wire we = write_en;

    assign rd_data_wire = mem[read_addr];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            read_data <= 6'd0;
        else
            read_data <= read_en ? rd_data_wire : 6'd0;
    end

    genvar i;
    generate
        for (i = 0; i < 12; i = i + 1) begin : mem_block
            always @(posedge clk or negedge rst_n) begin
                if (!rst_n)
                    mem[i] <= 6'd0;
                else if (we && write_addr == i)
                    mem[i] <= write_data;
            end
        end
    endgenerate

endmodule