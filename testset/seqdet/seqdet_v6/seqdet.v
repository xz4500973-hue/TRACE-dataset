`timescale 1ns/1ps
// sequence detector "1011", variant 6: gray + two always blocks
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [2:0] state, next;
    localparam S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010, S4 = 3'b110;
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
    assign detected = (state == S4);
endmodule
