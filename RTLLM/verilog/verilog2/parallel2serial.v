`timescale 1ns/1ns

module parallel2serial (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [3:0] d,
    output wire       valid_out,
    output wire       dout
);

    // Simplified: shift register approach
    reg [3:0] sr;
    reg [1:0] cnt;
    reg       valid;

    assign dout      = sr[3];
    assign valid_out = valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sr    <= 4'd0;
            cnt   <= 2'd0;
            valid <= 1'b0;
        end else begin
            if (cnt == 2'd3) begin
                sr    <= d;
                cnt   <= 2'd0;
                valid <= 1'b1;
            end else begin
                sr    <= {sr[2:0], 1'b0};  // shift left, fill 0
                cnt   <= cnt + 2'd1;
                valid <= 1'b0;
            end
        end
    end

endmodule