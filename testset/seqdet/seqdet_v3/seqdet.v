`timescale 1ns/1ps
// sequence detector "1011", variant 3: gray encoding
module seqdet (
    input  wire clk,
    input  wire rst_n,
    input  wire din,
    output wire detected
);
    reg [2:0] state;
    localparam S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010, S4 = 3'b110;
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
    assign detected = (state == S4);
endmodule
