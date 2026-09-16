//------------------------------------------------------------------------------
//
// gng_lzd.v
//
// This file is part of the Gaussian Noise Generator IP Core
//
// Description
//     Leading zero detector of 61-bit number. Refactored to always block.
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


(* keep_hierarchy = "yes" *) module gng_lzd (
    // Data interface
    input [60:0] data_in,        // input data
    output wire [5:0] data_out    // output number of leading zeros
);

wire [63:0] d;
assign d = {data_in, 3'b111};

wire [5:0] lzd [0:63];
assign lzd[63] = d[63] ? 6'd0 : 6'd64;
genvar j;
generate
    for (j = 62; j >= 0; j = j - 1) begin : LZD_GEN
        assign lzd[j] = d[j] ? (63 - j) : lzd[j+1];
    end
endgenerate
assign data_out = lzd[0];

endmodule