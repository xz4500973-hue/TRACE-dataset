`timescale 1ns/1ns

module parallel2serial (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [3:0] d,
    output wire       valid_out,
    output wire       dout
);

    reg [3:0] data;
    reg [1:0] cnt;
    reg       valid;
    wire      load = (cnt == 2'd3);

    assign dout      = data[3];
    assign valid_out = valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data  <= 4'd0;
            cnt   <= 2'd0;
            valid <= 1'b0;
        end else begin
            cnt   <= load ? 2'd0 : cnt + 2'd1;
            data  <= load ? d    : {data[2:0], 1'b0};
            valid <= load;
        end
    end

endmodule