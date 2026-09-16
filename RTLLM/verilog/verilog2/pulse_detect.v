`timescale 1ns/1ns

module pulse_detect(    
    input clk, rst_n, data_in,
    output reg data_out
);

    // Single always block FSM: detect "010"
    parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
    reg [1:0] state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= S0;
            data_out <= 1'b0;
        end else begin
            case (state)
                S0: state <= data_in ? S0 : S1;
                S1: state <= data_in ? S2 : S1;
                S2: state <= data_in ? S0 : S3;
                S3: state <= data_in ? S2 : S1;
            endcase
            data_out <= (state == S2 && !data_in);
        end
    end

endmodule