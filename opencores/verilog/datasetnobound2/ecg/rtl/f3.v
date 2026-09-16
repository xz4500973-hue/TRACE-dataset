/*
    Copyright 2011, City University of Hong Kong
    Author is Homer (Dongsheng) Hsing.

    This file is part of Tate Bilinear Pairing Core.

    Tate Bilinear Pairing Core is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Tate Bilinear Pairing Core is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with Tate Bilinear Pairing Core.  If not, see http://www.gnu.org/licenses/lgpl.txt
*/

// f3_add: C == A+B (mod 3) -- refactored: assign -> always@* case truth table
(* keep_hierarchy = "yes" *) module f3_add(A, B, C);
    input [1:0] A, B;
    output reg [1:0] C;
    always @(*) begin
        case ({A, B})
            4'b0000: C = 2'b00;
            4'b0001: C = 2'b01;
            4'b0010: C = 2'b10;
            4'b0011: C = 2'b00;
            4'b0100: C = 2'b10;
            4'b0101: C = 2'b00;
            4'b0110: C = 2'b01;
            4'b0111: C = 2'b00;
            4'b1000: C = 2'b01;
            4'b1001: C = 2'b10;
            4'b1010: C = 2'b00;
            4'b1011: C = 2'b00;
            4'b1100: C = 2'b00;
            4'b1101: C = 2'b00;
            4'b1110: C = 2'b00;
            4'b1111: C = 2'b00;
        endcase
    end
endmodule

// f3_sub: C == A-B (mod 3)
(* keep_hierarchy = "yes" *) module f3_sub(A, B, C);
    input [1:0] A, B;
    output [1:0] C;
    f3_add m1(A, {B[0], B[1]}, C);
endmodule

// f3_mult: C = A*B (mod 3) -- refactored: assign -> always@* case truth table
(* keep_hierarchy = "yes" *) module f3_mult(A, B, C); 
    input [1:0] A;
    input [1:0] B; 
    output reg [1:0] C;
    always @(*) begin
        case ({A, B})
            4'b0000: C = 2'b00;
            4'b0001: C = 2'b00;
            4'b0010: C = 2'b00;
            4'b0011: C = 2'b00;
            4'b0100: C = 2'b00;
            4'b0101: C = 2'b01;
            4'b0110: C = 2'b10;
            4'b0111: C = 2'b00;
            4'b1000: C = 2'b00;
            4'b1001: C = 2'b10;
            4'b1010: C = 2'b01;
            4'b1011: C = 2'b00;
            4'b1100: C = 2'b00;
            4'b1101: C = 2'b00;
            4'b1110: C = 2'b00;
            4'b1111: C = 2'b00;
        endcase
    end
endmodule

// c == a+1 (mod 3) -- refactored to always@*
(* keep_hierarchy = "yes" *) module f3_add1(a, c);
    input [1:0] a;
    output reg [1:0] c;
    always @(*) begin
        case (a)
            2'b00: c = 2'b01;
            2'b01: c = 2'b10;
            2'b10: c = 2'b00;
            2'b11: c = 2'b00;
        endcase
    end
endmodule

// c == a-1 (mod 3) -- refactored to always@*
(* keep_hierarchy = "yes" *) module f3_sub1(a, c);
    input [1:0] a;
    output reg [1:0] c;
    always @(*) begin
        case (a)
            2'b00: c = 2'b10;
            2'b01: c = 2'b00;
            2'b10: c = 2'b01;
            2'b11: c = 2'b00;
        endcase
    end
endmodule