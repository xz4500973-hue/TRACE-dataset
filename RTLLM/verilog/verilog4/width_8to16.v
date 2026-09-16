`timescale 1ns/1ns

module width_8to16(
    input               clk, rst_n,
    input               valid_in,
    input  [7:0]        data_in,
    output reg          valid_out,
    output reg [15:0]   data_out
);

    reg [7:0]  data_lock;
    reg        toggle;  // 0=first byte, 1=second byte

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_lock <= 8'd0;
            toggle    <= 1'b0;
            valid_out <= 1'b0;
            data_out  <= 16'd0;
        end else if (valid_in) begin
            if (!toggle) begin
                data_lock <= data_in;
                valid_out <= 1'b0;
            end else begin
                data_out  <= {data_lock, data_in};
                valid_out <= 1'b1;
            end
            toggle <= ~toggle;
        end else begin
            valid_out <= 1'b0;
        end
    end

endmodule