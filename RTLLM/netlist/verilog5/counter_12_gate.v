/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:03:31 2026
/////////////////////////////////////////////////////////////


module counter_12 ( rst_n, clk, valid_count, out );
  output [3:0] out;
  input rst_n, clk, valid_count;
  wire   n7, n8, n9, n10, n11, n12, n13;

  DFCNQD1BWP12T30P140 out_r_reg_1_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(out[1])
         );
  DFCNQD1BWP12T30P140 out_r_reg_3_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(out[3])
         );
  DFCNQD1BWP12T30P140 out_r_reg_0_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(out[0]) );
  DFCNQD1BWP12T30P140 out_r_reg_2_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(out[2])
         );
  ND3D0BWP12T30P140 U13 ( .A1(out[1]), .A2(out[0]), .A3(valid_count), .ZN(n12)
         );
  NR2D0BWP12T30P140 U14 ( .A1(out[3]), .A2(n12), .ZN(n11) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(n11), .I1(n12), .S(out[2]), .Z(n8) );
  AO22D0BWP12T30P140 U16 ( .A1(out[2]), .A2(n11), .B1(out[3]), .B2(n12), .Z(n9) );
  AN2D0BWP12T30P140 U17 ( .A1(out[0]), .A2(valid_count), .Z(n13) );
  OA21D0BWP12T30P140 U18 ( .A1(out[1]), .A2(n13), .B(n12), .Z(n7) );
  IAO21D0BWP12T30P140 U19 ( .A1(out[0]), .A2(valid_count), .B(n13), .ZN(n10)
         );
endmodule

