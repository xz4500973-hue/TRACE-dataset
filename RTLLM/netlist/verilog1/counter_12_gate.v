/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:30:37 2026
/////////////////////////////////////////////////////////////


module counter_12 ( rst_n, clk, valid_count, out );
  output [3:0] out;
  input rst_n, clk, valid_count;
  wire   n9, n10, n11, n12, n13, n14, n15;

  DFCNQD1BWP12T30P140 out_reg_1_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(out[1])
         );
  DFCNQD1BWP12T30P140 out_reg_3_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(out[3])
         );
  DFCNQD1BWP12T30P140 out_reg_0_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(out[0])
         );
  DFCNQD1BWP12T30P140 out_reg_2_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(out[2])
         );
  ND3D0BWP12T30P140 U15 ( .A1(valid_count), .A2(out[0]), .A3(out[1]), .ZN(n14)
         );
  NR2D0BWP12T30P140 U16 ( .A1(out[3]), .A2(n14), .ZN(n13) );
  CKMUX2D0BWP12T30P140 U17 ( .I0(n13), .I1(n14), .S(out[2]), .Z(n9) );
  AO22D0BWP12T30P140 U18 ( .A1(out[2]), .A2(n13), .B1(out[3]), .B2(n14), .Z(
        n10) );
  AN2D0BWP12T30P140 U19 ( .A1(valid_count), .A2(out[0]), .Z(n15) );
  OA21D0BWP12T30P140 U20 ( .A1(n15), .A2(out[1]), .B(n14), .Z(n11) );
  IAO21D0BWP12T30P140 U21 ( .A1(valid_count), .A2(out[0]), .B(n15), .ZN(n12)
         );
endmodule

