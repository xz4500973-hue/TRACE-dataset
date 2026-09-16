`timescale 1ns/1ps
module comparator_3bit(input[2:0]A,B,output A_greater,A_equal,A_less);
    assign {A_greater,A_equal,A_less} = (A > B) ? 3'b100 : (A == B) ? 3'b010 : 3'b001;
endmodule