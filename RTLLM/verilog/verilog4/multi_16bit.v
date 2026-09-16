`timescale 1ns/1ps

module multi_16bit(
    input clk, rst_n, start,
    input [15:0] ain, bin,
    output [31:0] yout,
    output reg done
);

    // 2-stage pipelined multiplier (12-cycle pipeline)
    reg [15:0] areg_s1, breg_s1, areg_s2, breg_s2;
    reg [31:0] yout_r;
    reg [4:0] i;
    reg start_d;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            i <= 0; done <= 0; yout_r <= 0;
            start_d <= 0; areg_s1 <= 0; breg_s1 <= 0;
            areg_s2 <= 0; breg_s2 <= 0;
        end else begin
            start_d <= start;
            if (start_d && i == 0) begin
                areg_s1 <= ain; breg_s1 <= bin;
                areg_s2 <= areg_s1; breg_s2 <= breg_s1;
            end else if (start_d && i == 1) begin
                areg_s2 <= areg_s1; breg_s2 <= breg_s1;
            end

            if (start_d) begin
                i <= i + 1'b1;
                if (i >= 2 && i < 18 && areg_s2[i-2])
                    yout_r <= yout_r + (breg_s2 << (i-2));
                if (i == 18) done <= 1;
            end else begin
                i <= 0; done <= 0; yout_r <= 0;
            end
        end
    end

    assign yout = yout_r;

endmodule