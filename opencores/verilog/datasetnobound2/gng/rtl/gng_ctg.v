//------------------------------------------------------------------------------
//
// gng_ctg.v
//
// This file is part of the Gaussian Noise Generator IP Core
//
// Description
//     Maximally equidistributed combined Tausworthe generator, refactored to
// single always block.
//
//------------------------------------------------------------------------------
//
// Copyright (C) 2014, Guangxi Liu <guangxi.liu@opencores.org>
//
// This source file may be used and distributed without restriction provided
// that this copyright statement is not removed from the file and that any
// derivative work contains the original copyright notice and the associated
// disclaimer.
//
// This source file is free software; you can redistribute it and/or modify it
// under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation; either version 2.1 of the License,
// or (at your option) any later version.
//
// This source is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
// or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
// License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this source; if not, download it from
// http://www.opencores.org/lgpl.shtml
//
//------------------------------------------------------------------------------


`timescale 1 ns / 1 ps


(* keep_hierarchy = "yes" *) module gng_ctg #(
    parameter INIT_Z1 = 64'd5030521883283424767,
    parameter INIT_Z2 = 64'd18445829279364155008,
    parameter INIT_Z3 = 64'd18436106298727503359
)
(
    // System signals
    input clk,                    // system clock
    input rstn,                   // system synchronous reset, active low

    // Data interface
    input ce,                     // clock enable
    output reg valid_out,         // output data valid
    output reg [63:0] data_out    // output data
);

// Local variables
reg [63:0] z1, z2, z3;

// Single always block for all logic
always @ (posedge clk) begin
    if (!rstn) begin
        z1 <= INIT_Z1;
        z2 <= INIT_Z2;
        z3 <= INIT_Z3;
        valid_out <= 1'b0;
        data_out <= 64'd0;
    end
    else if (ce) begin
        z1 <= {z1[39:1], z1[58:34] ^ z1[63:39]};
        z2 <= {z2[50:6], z2[44:26] ^ z2[63:45]};
        z3 <= {z3[56:9], z3[39:24] ^ z3[63:48]};
        data_out <= z1 ^ z2 ^ z3;
        valid_out <= 1'b1;
    end
    else begin
        valid_out <= 1'b0;
    end
end

endmodule