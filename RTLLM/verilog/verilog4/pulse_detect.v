`timescale 1ns/1ns

module pulse_detect(    
    input clk, rst_n, data_in,
    output reg data_out
);

    // Shift register approach: 3-stage delay, detect "010"
    reg [2:0] sr;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sr <= 3'b111;
            data_out <= 0;
        end else begin
            sr <= {sr[1:0], data_in};
            data_out <= (sr[2:1] == 2'b01 && data_in == 0);
        end
    end

endmodule