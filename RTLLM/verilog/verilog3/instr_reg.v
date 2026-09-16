`timescale 1ns/1ps

module instr_reg (
    input clk, rst,
    input [1:0] fetch,
    input [7:0] data,
    output [2:0] ins,
    output [4:0] ad1,
    output [7:0] ad2
);

    reg [7:0] ins_p1, ins_p2;
    wire load_p1 = (fetch == 2'b01);
    wire load_p2 = (fetch == 2'b10);

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            ins_p1 <= 8'd0;
            ins_p2 <= 8'd0;
        end else begin
            if (load_p1) ins_p1 <= data;
            if (load_p2) ins_p2 <= data;
        end
    end

    assign ins = ins_p1[7:5];
    assign ad1 = ins_p1[4:0];
    assign ad2 = ins_p2;

endmodule