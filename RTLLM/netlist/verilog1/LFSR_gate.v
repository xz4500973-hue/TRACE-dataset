/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:37:03 2026
/////////////////////////////////////////////////////////////


module LFSR ( out, clk, rst );
  output [3:0] out;
  input clk, rst;
  wire   n2, n3, n4;

  DFCNQD1BWP12T30P140 out_reg_3_ ( .D(out[2]), .CP(clk), .CDN(n2), .Q(out[3])
         );
  DFCNQD1BWP12T30P140 out_reg_0_ ( .D(n3), .CP(clk), .CDN(n2), .Q(out[0]) );
  DFCNQD1BWP12T30P140 out_reg_1_ ( .D(out[0]), .CP(clk), .CDN(n2), .Q(out[1])
         );
  DFCNQD1BWP12T30P140 out_reg_2_ ( .D(out[1]), .CP(clk), .CDN(n2), .Q(out[2])
         );
  INVD0BWP12T30P140 U6 ( .I(rst), .ZN(n2) );
  INVD0BWP12T30P140 U7 ( .I(out[2]), .ZN(n4) );
  MUX2ND0BWP12T30P140 U8 ( .I0(out[2]), .I1(n4), .S(out[3]), .ZN(n3) );
endmodule

