`timescale 1ns/1ps

module LIFObuffer #(
    parameter DEPTH = 4,
    parameter DW    = 4
)(
    input [DW-1:0] dataIn,
    input RW, EN, Rst, Clk,
    output reg EMPTY, FULL,
    output reg [DW-1:0] dataOut
);

    reg [DW-1:0] mem [0:DEPTH-1];
    reg [$clog2(DEPTH):0] sp;

    wire push = (!RW && sp != 0);
    wire pop  = (RW && sp != DEPTH);

    always @(posedge Clk) begin
        if (Rst) begin
            sp      <= DEPTH;
            EMPTY   <= 1'b1;
            FULL    <= 1'b0;
            dataOut <= 0;
        end else if (EN) begin
            if (push) begin
                sp <= sp - 1'b1;
                mem[sp-1] <= dataIn;
            end else if (pop) begin
                dataOut <= mem[sp];
                sp <= sp + 1'b1;
            end
            EMPTY <= (sp == DEPTH);
            FULL  <= (sp == 0);
        end
    end

endmodule