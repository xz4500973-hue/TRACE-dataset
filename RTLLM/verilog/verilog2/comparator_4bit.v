`timescale 1ns/1ps
module comparator_4bit(input[3:0]A,B,output A_greater,A_equal,A_less);
    assign {A_greater,A_equal,A_less} = (A > B) ? 3'b100 : (A == B) ? 3'b010 : 3'b001;
endmodule