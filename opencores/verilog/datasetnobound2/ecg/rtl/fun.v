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

// fun.v: Have you got fun reading the code ?
`include "inc.v"

// turn "00000001111111111111111" into "00000001000000000000000"
// refactored: 2-stage shift register -> 3-state explicit FSM
(* keep_hierarchy = "yes" *) module func6(clk, reset, in, out);
    input clk, reset, in;
    output reg out;
    
    localparam S_IDLE = 2'b00;
    localparam S_WAIT = 2'b01;
    localparam S_DONE = 2'b10;
    
    reg [1:0] state, next_state;
    
    always @(posedge clk)
        if (reset)
            state <= S_IDLE;
        else
            state <= next_state;
    
    always @(*) begin
        next_state = state;
        out = 1'b0;
        case (state)
            S_IDLE: begin
                if (in)
                    next_state = S_WAIT;
            end
            S_WAIT: begin
                if (in)
                    next_state = S_DONE;
                else
                    next_state = S_IDLE;
            end
            S_DONE: begin
                out = 1'b1;
                if (in)
                    next_state = S_DONE;
                else
                    next_state = S_IDLE;
            end
        endcase
    end
endmodule