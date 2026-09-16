`timescale 1ns/1ps

module instr_reg (
    input clk, rst,
    input [1:0] fetch,
    input [7:0] data,
    output [2:0] ins,
    output [4:0] ad1,
    output [7:0] ad2
);

    reg [7:0] reg_file [0:1]; // reg_file[0]=ins_p1, reg_file[1]=ins_p2

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            reg_file[0] <= 8'd0;
            reg_file[1] <= 8'd0;
        end else begin
            if (fetch == 2'b01)
                reg_file[0] <= data;
            else if (fetch == 2'b10)
                reg_file[1] <= data;
        end
    end

    assign ins = reg_file[0][7:5];
    assign ad1 = reg_file[0][4:0];
    assign ad2 = reg_file[1];

endmodule