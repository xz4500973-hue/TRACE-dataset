`timescale 1ns/1ps

module serial2parallel(
    input clk, rst_n,
    input din_serial, din_valid,
    output reg [7:0] dout_parallel,
    output reg dout_valid
);

    reg [7:0] sr;
    reg [3:0] cnt;
    wire done = (cnt == 4'd8);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 0; sr <= 0; dout_parallel <= 0; dout_valid <= 0;
        end else begin
            dout_valid <= 0;
            if (din_valid) begin
                if (!done) sr <= {sr[6:0], din_serial};
                cnt <= done ? 4'd1 : cnt + 1'b1;
            end else begin
                cnt <= 0;
            end
            if (done) begin
                dout_parallel <= sr;
                dout_valid    <= 1;
            end
        end
    end

endmodule