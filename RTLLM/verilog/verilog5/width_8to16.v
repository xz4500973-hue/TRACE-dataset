`timescale 1ns/1ns

module width_8to16 #(
    parameter DW_IN  = 8,
    parameter DW_OUT = 16
)(
    input                       clk, rst_n,
    input                       valid_in,
    input  [DW_IN-1:0]          data_in,
    output reg                  valid_out,
    output reg [DW_OUT-1:0]     data_out
);

    reg [DW_IN-1:0] data_lock;
    reg             flag;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_lock <= 0;
            flag      <= 1'b0;
            valid_out <= 1'b0;
            data_out  <= 0;
        end else begin
            valid_out <= 1'b0;
            if (valid_in) begin
                if (!flag)
                    data_lock <= data_in;
                else begin
                    data_out  <= {data_lock, data_in};
                    valid_out <= 1'b1;
                end
                flag <= ~flag;
            end
        end
    end

endmodule