`timescale 1ns/1ns

module parallel2serial (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [3:0] d,
    output wire       valid_out,
    output wire       dout
);

    reg [3:0] sr;
    reg [1:0] phase;

    assign dout      = sr[3];
    assign valid_out = (phase == 2'd3);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sr    <= 4'd0;
            phase <= 2'd3;
        end else begin
            if (phase == 2'd3) begin
                sr    <= d;
                phase <= 2'd0;
            end else begin
                sr    <= {sr[2:0], 1'b0};
                phase <= phase + 2'd1;
            end
        end
    end

endmodule