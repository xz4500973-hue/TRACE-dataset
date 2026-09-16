`timescale 1ns/1ns

module pulse_detect(    
    input clk, rst_n, data_in,
    output reg data_out
);

    parameter S0=2'b00, S1=2'b01, S2=2'b10;
    reg [1:0] state, next_state;
    wire match;

    always @(posedge clk or negedge rst_n)
        if (!rst_n) state <= S0; else state <= next_state;

    always @(*) begin
        case (state)
            S0: next_state = data_in ? S0 : S1;
            S1: next_state = data_in ? S2 : S1;
            S2: next_state = data_in ? S0 : S2; // S2: seen "01", if 0 match stays
            default: next_state = S0;
        endcase
    end

    assign match = (state == S2 && !data_in);

    always @(posedge clk or negedge rst_n)
        if (!rst_n) data_out <= 0; else data_out <= match;

endmodule