`timescale 1ns/1ps
// sequence detector "1011", variant 8: one-hot + function next-state
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [4:0] state;
    function [4:0] fsm_next;
        input [4:0] s;
        input d;
        begin
            case (1'b1)
                s[0]: fsm_next = d ? 5'b00010 : 5'b00001;
                s[1]: fsm_next = d ? 5'b00010 : 5'b00100;
                s[2]: fsm_next = d ? 5'b01000 : 5'b00001;
                s[3]: fsm_next = d ? 5'b10000 : 5'b00100;
                s[4]: fsm_next = d ? 5'b00010 : 5'b00100;
                default: fsm_next = 5'b00001;
            endcase
        end
    endfunction
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= 5'b00001;
        else state <= fsm_next(state, din);
    end
    assign detected = state[4];
endmodule
