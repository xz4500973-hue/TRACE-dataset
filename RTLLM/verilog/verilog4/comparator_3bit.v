`timescale 1ns/1ps
module comparator_3bit(input[2:0]A,B,output A_greater,A_equal,A_less);
    reg[2:0] result;
    always@(*)begin
        if(A>B)      result=3'b100;
        else if(A==B)result=3'b010;
        else         result=3'b001;
    end
    assign{A_greater,A_equal,A_less}=result;
endmodule