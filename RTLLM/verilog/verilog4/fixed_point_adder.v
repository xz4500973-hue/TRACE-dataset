`timescale 1ns/1ps

module fixed_point_adder #(
    parameter Q = 15,
    parameter N = 32
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    output [N-1:0] c
);

    // Sign-magnitude based with explicit magnitude addition/subtraction
    wire sa = a[N-1];
    wire sb = b[N-1];
    wire [N-2:0] ma = sa ? -a[N-2:0] : a[N-2:0];
    wire [N-2:0] mb = sb ? -b[N-2:0] : b[N-2:0];

    wire [N-2:0] sum_mag  = ma + mb;
    wire [N-2:0] diff_mag;
    wire         borrow;
    assign {borrow, diff_mag} = (ma >= mb) ? {1'b0, ma - mb} : {1'b0, mb - ma};

    reg [N-1:0] res;
    always @(*) begin
        if (sa == sb)
            res = {sa, sum_mag};
        else if (ma >= mb)
            res = {sa, diff_mag};
        else
            res = {~sa, diff_mag};
    end

    assign c = res;

endmodule