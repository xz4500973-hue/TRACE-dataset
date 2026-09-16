// UART_BRG.v - dataset2: case-style counter control

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

    // Case-style counter control
    always @(posedge Clk)
        if(Rst) begin PSCntr <= 0; Divider <= 0; CE_16x <= 0; end
        else begin
            case({TC_PSCntr, TC_Divider})
                2'b00: begin if(~TC_PSCntr) PSCntr <= PSCntr - 1; end
                2'b10: begin PSCntr <= PS; if(~TC_PSCntr) Divider <= Divider - 1; end
                2'b11: begin PSCntr <= PS; Divider <= Div; CE_16x <= 1; end
                default: ;
            endcase
            if(~TC_Divider) CE_16x <= 0;
        end

    assign TC_PSCntr = (PSCntr == 0);
    assign TC_Divider = TC_PSCntr & (Divider == 0);

endmodule