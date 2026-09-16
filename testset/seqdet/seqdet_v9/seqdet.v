`timescale 1ns/1ps
// sequence detector "1011", variant 9: binary + function next-state
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [2:0] state;
    localparam S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4;
    function [2:0] fsm_next;
        input [2:0] s;
        input d;
        begin
            case (s)
                S0: fsm_next = d ? S1 : S0;
                S1: fsm_next = d ? S1 : S2;
                S2: fsm_next = d ? S3 : S0;
                S3: fsm_next = d ? S4 : S2;
                S4: fsm_next = d ? S1 : S2;
                default: fsm_next = S0;
            endcase
        end
    endfunction
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= S0;
        else state <= fsm_next(state, din);
    end
    assign detected = (state == S4);
endmodule
