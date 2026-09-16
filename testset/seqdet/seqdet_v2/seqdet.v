`timescale 1ns/1ps
// sequence detector "1011", variant 2: one-hot encoding
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [4:0] state;
    localparam S0 = 5'b00001, S1 = 5'b00010, S2 = 5'b00100, S3 = 5'b01000, S4 = 5'b10000;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= S0;
        else begin
            case (state)
                S0: state <= din ? S1 : S0;
                S1: state <= din ? S1 : S2;
                S2: state <= din ? S3 : S0;
                S3: state <= din ? S4 : S2;
                S4: state <= din ? S1 : S2;
                default: state <= S0;
            endcase
        end
    end
    assign detected = state[4];
endmodule
