`timescale 1ns/1ps
module comparator_4bit(input[3:0]A,B,output A_greater,A_equal,A_less);
    wire[4:0] diff;
    assign diff = {1'b0,A} - {1'b0,B};
    assign A_less    = diff[4];
    assign A_greater = ~diff[4] & (|diff[3:0]);
    assign A_equal   = (diff == 5'd0);
endmodule