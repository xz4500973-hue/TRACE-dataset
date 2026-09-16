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

// f3_add: C == A+B (mod 3) -- refactored: assign -> always@* if-else tree
(* keep_hierarchy = "yes" *) module f3_add(A, B, C);
    input [1:0] A, B;
    output reg [1:0] C;
    wire a0, a1, b0, b1;
    assign {a1, a0} = A;
    assign {b1, b0} = B;
    always @(*) begin
        if (a1 == 1'b0) begin
            if (a0 == 1'b0) begin
                if (b1 == 1'b0) begin
                    if (b0 == 1'b0)      C = 2'b00;
                    else                  C = 2'b01;
                end else begin
                    if (b0 == 1'b0)      C = 2'b10;
                    else                  C = 2'b00;
                end
            end else begin
                if (b1 == 1'b0) begin
                    if (b0 == 1'b0)      C = 2'b10;
                    else                  C = 2'b00;
                end else begin
                    if (b0 == 1'b0)      C = 2'b01;
                    else                  C = 2'b00;
                end
            end
        end else begin
            if (a0 == 1'b0) begin
                if (b1 == 1'b0) begin
                    if (b0 == 1'b0)      C = 2'b01;
                    else                  C = 2'b10;
                end else begin
                    if (b0 == 1'b0)      C = 2'b00;
                    else                  C = 2'b00;
                end
            end else begin
                C = 2'b00;
            end
        end
    end
endmodule

// f3_sub: C == A-B (mod 3)
(* keep_hierarchy = "yes" *) module f3_sub(A, B, C);
    input [1:0] A, B;
    output [1:0] C;
    f3_add m1(A, {B[0], B[1]}, C);
endmodule

// f3_mult: C = A*B (mod 3) -- refactored: assign -> always@* if-else tree
(* keep_hierarchy = "yes" *) module f3_mult(A, B, C); 
    input [1:0] A;
    input [1:0] B; 
    output reg [1:0] C;
    wire a0, a1, b0, b1;
    assign {a1, a0} = A;
    assign {b1, b0} = B;
    always @(*) begin
        if (a1 == 1'b0) begin
            if (a0 == 1'b0) begin
                C = 2'b00;
            end else begin
                if (b1 == 1'b0) begin
                    if (b0 == 1'b0)      C = 2'b00;
                    else                  C = 2'b01;
                end else begin
                    if (b0 == 1'b0)      C = 2'b10;
                    else                  C = 2'b00;
                end
            end
        end else begin
            if (a0 == 1'b0) begin
                if (b1 == 1'b0) begin
                    if (b0 == 1'b0)      C = 2'b00;
                    else                  C = 2'b10;
                end else begin
                    if (b0 == 1'b0)      C = 2'b01;
                    else                  C = 2'b00;
                end
            end else begin
                C = 2'b00;
            end
        end
    end
endmodule

// c == a+1 (mod 3) -- always@* if-else
(* keep_hierarchy = "yes" *) module f3_add1(a, c);
    input [1:0] a;
    output reg [1:0] c;
    always @(*) begin
        if (a[1] == 1'b0) begin
            if (a[0] == 1'b0)           c = 2'b01;
            else                         c = 2'b10;
        end else begin
            if (a[0] == 1'b0)           c = 2'b00;
            else                         c = 2'b00;
        end
    end
endmodule

// c == a-1 (mod 3) -- always@* if-else
(* keep_hierarchy = "yes" *) module f3_sub1(a, c);
    input [1:0] a;
    output reg [1:0] c;
    always @(*) begin
        if (a[1] == 1'b0) begin
            if (a[0] == 1'b0)           c = 2'b10;
            else                         c = 2'b00;
        end else begin
            if (a[0] == 1'b0)           c = 2'b01;
            else                         c = 2'b00;
        end
    end
endmodule