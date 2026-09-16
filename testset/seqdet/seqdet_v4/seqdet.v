`timescale 1ns/1ps
// sequence detector "1011", variant 4: binary + if-else
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [2:0] state;
    localparam S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= S0;
        else if (state == S0)      state <= din ? S1 : S0;
        else if (state == S1)      state <= din ? S1 : S2;
        else if (state == S2)      state <= din ? S3 : S0;
        else if (state == S3)      state <= din ? S4 : S2;
        else                       state <= din ? S1 : S2;
    end
    assign detected = (state == S4);
endmodule
