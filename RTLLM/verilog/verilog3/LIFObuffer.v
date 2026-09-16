`timescale 1ns/1ps

module LIFObuffer (
    input [3:0] dataIn,
    input RW, EN, Rst, Clk,
    output reg EMPTY, FULL,
    output reg [3:0] dataOut
);

    reg [3:0] mem [0:3];
    reg [2:0] sp;  // 3'd4=empty, 3'd0=full

    wire push = (!RW && sp != 3'd0);
    wire pop  = (RW && sp != 3'd4);

    always @(posedge Clk) begin
        if (Rst) begin
            sp <= 3'd4;
            EMPTY <= 1'b1;
            FULL  <= 1'b0;
            dataOut <= 4'h0;
        end else if (EN) begin
            if (push) begin
                sp <= sp - 1'b1;
                mem[sp-1] <= dataIn;
            end else if (pop) begin
                sp <= sp + 1'b1;
                dataOut <= mem[sp];
            end
            EMPTY <= (sp == 3'd4);
            FULL  <= (sp == 3'd0);
        end
    end

endmodule