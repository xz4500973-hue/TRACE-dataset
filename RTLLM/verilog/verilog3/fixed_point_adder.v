`timescale 1ns/1ps

module fixed_point_adder #(
    parameter Q = 15,
    parameter N = 32
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    output [N-1:0] c
);

    wire sign_a = a[N-1];
    wire sign_b = b[N-1];
    wire [N-2:0] mag_a = sign_a ? (~a[N-2:0] + 1) : a[N-2:0];
    wire [N-2:0] mag_b = sign_b ? (~b[N-2:0] + 1) : b[N-2:0];
    wire [N-1:0] mag_sum, mag_diff;
    wire cmp;

    assign mag_sum = mag_a + mag_b;
    assign mag_diff = (mag_a >= mag_b) ? (mag_a - mag_b) : (mag_b - mag_a);
    assign cmp = mag_a >= mag_b;

    reg [N-1:0] result;
    always @(*) begin
        if (sign_a == sign_b) begin
            result = {sign_a, mag_sum[N-2:0]};
        end else if (sign_a) begin // a negative, b positive
            result = cmp ? {1'b1, mag_diff[N-2:0]} : {1'b0, mag_diff[N-2:0]};
        end else begin // a positive, b negative
            result = cmp ? {1'b0, mag_diff[N-2:0]} : {1'b1, mag_diff[N-2:0]};
        end
    end

    assign c = result;

endmodule