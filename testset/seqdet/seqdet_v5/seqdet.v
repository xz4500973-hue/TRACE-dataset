`timescale 1ns/1ps
// sequence detector "1011", variant 5: one-hot structural next-state
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [4:0] state;
    wire [4:0] next;
    assign next[0] = (state[0] & ~din) | (state[2] & ~din);        // -> S0
    assign next[1] = (state[0] & din) | (state[1] & din) | (state[4] & din); // -> S1
    assign next[2] = (state[1] & ~din) | (state[3] & ~din) | (state[4] & ~din); // -> S2
    assign next[3] = (state[2] & din);                              // -> S3
    assign next[4] = (state[3] & din);                              // -> S4
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= 5'b00001;
        else state <= next;
    end
    assign detected = state[4];
endmodule
