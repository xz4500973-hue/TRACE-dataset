`timescale 1ns/1ps

module LIFObuffer (
    input [3:0] dataIn,
    input RW, EN, Rst, Clk,
    output reg EMPTY, FULL,
    output reg [3:0] dataOut
);

    reg [3:0] stack_mem [0:3];
    reg [1:0] SP;  // stack pointer: 0=empty, 1..4=items

    always @(posedge Clk) begin
        if (Rst) begin
            SP <= 2'd0;
            EMPTY <= 1'b1;
            FULL  <= 1'b0;
            dataOut <= 4'h0;
            stack_mem[0] <= 4'h0;
            stack_mem[1] <= 4'h0;
            stack_mem[2] <= 4'h0;
            stack_mem[3] <= 4'h0;
        end else if (EN) begin
            if (!RW && !FULL) begin  // PUSH
                stack_mem[SP] <= dataIn;
                SP <= SP + 1'b1;
                FULL  <= (SP == 2'd3);
                EMPTY <= 1'b0;
            end else if (RW && !EMPTY) begin  // POP
                dataOut <= stack_mem[SP-1];
                SP <= SP - 1'b1;
                EMPTY <= (SP == 2'd1);
                FULL  <= 1'b0;
            end
        end
    end

endmodule