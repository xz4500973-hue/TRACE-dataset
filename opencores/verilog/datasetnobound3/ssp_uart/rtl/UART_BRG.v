// UART_BRG.v - dataset3: two-process with nxt_ wires

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module UART_BRG(
    input Rst, Clk,
    input [3:0] PS,
    input [7:0] Div,
    output reg CE_16x
);

    reg [3:0] PSCntr;
    reg [7:0] Divider;
    wire TC_PSCntr, TC_Divider;

    // Next-state wires
    wire [3:0] nxt_PSCntr  = (Rst||TC_PSCntr) ? PS : (PSCntr - 1);
    wire [7:0] nxt_Divider  = (Rst||TC_Divider) ? Div : (TC_PSCntr ? (Divider-1) : Divider);
    wire       nxt_CE_16x   = TC_Divider;

    always @(posedge Clk) begin
        if(Rst) begin PSCntr<=0; Divider<=0; CE_16x<=0; end
        else    begin PSCntr<=nxt_PSCntr; Divider<=nxt_Divider; CE_16x<=nxt_CE_16x; end
    end

    assign TC_PSCntr = (PSCntr == 0);
    assign TC_Divider = TC_PSCntr & (Divider == 0);

endmodule