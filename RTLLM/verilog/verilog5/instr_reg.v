`timescale 1ns/1ps

module instr_reg #(
    parameter DW = 8
)(
    input clk, rst,
    input [1:0] fetch,
    input [DW-1:0] data,
    output [2:0] ins,
    output [4:0] ad1,
    output [DW-1:0] ad2
);

    reg [DW-1:0] ins_p1, ins_p2;
    wire         wen_p1 = (fetch == 2'b01);
    wire         wen_p2 = (fetch == 2'b10);

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            ins_p1 <= 0;
            ins_p2 <= 0;
        end else begin
            ins_p1 <= wen_p1 ? data : ins_p1;
            ins_p2 <= wen_p2 ? data : ins_p2;
        end
    end

    assign ins = ins_p1[DW-1:DW-3];
    assign ad1 = ins_p1[DW-4:0];
    assign ad2 = ins_p2;

endmodule