`timescale 1ns/1ns

module parallel2serial #(
    parameter WIDTH = 4
) (
    input  wire                clk,
    input  wire                rst_n,
    input  wire [WIDTH-1:0]    d,
    output wire                valid_out,
    output wire                dout
);

    reg [WIDTH-1:0] sr;
    reg [$clog2(WIDTH)-1:0] cnt;
    reg valid;

    assign dout      = sr[WIDTH-1];
    assign valid_out = valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sr    <= 0;
            cnt   <= 0;
            valid <= 1'b0;
        end else begin
            if (cnt == (WIDTH-1)) begin
                sr    <= d;
                cnt   <= 0;
                valid <= 1'b1;
            end else begin
                sr    <= {sr[WIDTH-2:0], 1'b0};
                cnt   <= cnt + 1'b1;
                valid <= 1'b0;
            end
        end
    end

endmodule