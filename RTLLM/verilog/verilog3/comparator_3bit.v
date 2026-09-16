`timescale 1ns/1ps
module comparator_3bit(input[2:0]A,B,output A_greater,A_equal,A_less);
    wire[2:0] xnor_out;
    assign xnor_out = ~(A ^ B);
    assign A_equal   = &xnor_out;
    assign A_greater = (A[2] & ~B[2]) | (xnor_out[2] & A[1] & ~B[1]) | (xnor_out[2] & xnor_out[1] & A[0] & ~B[0]);
    assign A_less    = ~A_greater & ~A_equal;
endmodule