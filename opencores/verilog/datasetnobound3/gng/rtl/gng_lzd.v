//------------------------------------------------------------------------------
//
// gng_lzd.v
//
// This file is part of the Gaussian Noise Generator IP Core
//
// Description
//     Leading zero detector of 61-bit number. Refactored to if-else tree.
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
    output reg [5:0] data_out    // output number of leading zeros
);

wire [63:0] d;
assign d = {data_in, 3'b111};

always @(*) begin
    if (d[63])           data_out = 6'd0;
    else if (d[62])      data_out = 6'd1;
    else if (d[61])      data_out = 6'd2;
    else if (d[60])      data_out = 6'd3;
    else if (d[59])      data_out = 6'd4;
    else if (d[58])      data_out = 6'd5;
    else if (d[57])      data_out = 6'd6;
    else if (d[56])      data_out = 6'd7;
    else if (d[55])      data_out = 6'd8;
    else if (d[54])      data_out = 6'd9;
    else if (d[53])      data_out = 6'd10;
    else if (d[52])      data_out = 6'd11;
    else if (d[51])      data_out = 6'd12;
    else if (d[50])      data_out = 6'd13;
    else if (d[49])      data_out = 6'd14;
    else if (d[48])      data_out = 6'd15;
    else if (d[47])      data_out = 6'd16;
    else if (d[46])      data_out = 6'd17;
    else if (d[45])      data_out = 6'd18;
    else if (d[44])      data_out = 6'd19;
    else if (d[43])      data_out = 6'd20;
    else if (d[42])      data_out = 6'd21;
    else if (d[41])      data_out = 6'd22;
    else if (d[40])      data_out = 6'd23;
    else if (d[39])      data_out = 6'd24;
    else if (d[38])      data_out = 6'd25;
    else if (d[37])      data_out = 6'd26;
    else if (d[36])      data_out = 6'd27;
    else if (d[35])      data_out = 6'd28;
    else if (d[34])      data_out = 6'd29;
    else if (d[33])      data_out = 6'd30;
    else if (d[32])      data_out = 6'd31;
    else if (d[31])      data_out = 6'd32;
    else if (d[30])      data_out = 6'd33;
    else if (d[29])      data_out = 6'd34;
    else if (d[28])      data_out = 6'd35;
    else if (d[27])      data_out = 6'd36;
    else if (d[26])      data_out = 6'd37;
    else if (d[25])      data_out = 6'd38;
    else if (d[24])      data_out = 6'd39;
    else if (d[23])      data_out = 6'd40;
    else if (d[22])      data_out = 6'd41;
    else if (d[21])      data_out = 6'd42;
    else if (d[20])      data_out = 6'd43;
    else if (d[19])      data_out = 6'd44;
    else if (d[18])      data_out = 6'd45;
    else if (d[17])      data_out = 6'd46;
    else if (d[16])      data_out = 6'd47;
    else if (d[15])      data_out = 6'd48;
    else if (d[14])      data_out = 6'd49;
    else if (d[13])      data_out = 6'd50;
    else if (d[12])      data_out = 6'd51;
    else if (d[11])      data_out = 6'd52;
    else if (d[10])      data_out = 6'd53;
    else if (d[9])       data_out = 6'd54;
    else if (d[8])       data_out = 6'd55;
    else if (d[7])       data_out = 6'd56;
    else if (d[6])       data_out = 6'd57;
    else if (d[5])       data_out = 6'd58;
    else if (d[4])       data_out = 6'd59;
    else if (d[3])       data_out = 6'd60;
    else if (d[2])       data_out = 6'd61;
    else if (d[1])       data_out = 6'd62;
    else if (d[0])       data_out = 6'd63;
    else                 data_out = 6'd0;
end

endmodule