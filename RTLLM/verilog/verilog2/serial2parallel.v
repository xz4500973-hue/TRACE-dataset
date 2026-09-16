`timescale 1ns/1ps

module serial2parallel(
    input clk, rst_n,
    input din_serial, din_valid,
    output reg [7:0] dout_parallel,
    output reg dout_valid
);

    reg [7:0] sr;
    reg [2:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 0; sr <= 0; dout_valid <= 0; dout_parallel <= 0;
        end else begin
            dout_valid <= 0;
            if (din_valid) begin
                sr  <= {sr[6:0], din_serial};
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    dout_parallel <= sr;
                    dout_valid    <= 1;
                    cnt           <= 0;
                end
            end else begin
                cnt <= 0;
            end
        end
    end

endmodule