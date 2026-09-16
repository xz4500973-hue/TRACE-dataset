`timescale 1ns/1ps
// sequence detector "1011", variant 7: binary + three always blocks
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [2:0] state, next;
    localparam S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4;
    always @(*) begin
        case (state)
            S0: next = din ? S1 : S0;
            S1: next = din ? S1 : S2;
            S2: next = din ? S3 : S0;
            S3: next = din ? S4 : S2;
            S4: next = din ? S1 : S2;
            default: next = S0;
        endcase
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= S0;
        else state <= next;
    end
    reg det;
    always @(*) det = (state == S4);
    assign detected = det;
endmodule
