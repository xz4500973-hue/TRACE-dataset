/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:06:27 2026
/////////////////////////////////////////////////////////////


module freq_divbyfrac ( rst_n, clk, clk_div );
  input rst_n, clk;
  output clk_div;
  wire   N15, N16, N17, N18, N19, n8, n9, n10, n11, n12, n13;
  wire   [3:0] t;

  DFCNQD1BWP12T30P140 clk_div_reg ( .D(N15), .CP(clk), .CDN(rst_n), .Q(clk_div) );
  DFCNQD1BWP12T30P140 t_reg_2_ ( .D(N18), .CP(clk), .CDN(rst_n), .Q(t[2]) );
  DFCNQD1BWP12T30P140 t_reg_1_ ( .D(N17), .CP(clk), .CDN(rst_n), .Q(t[1]) );
  DFCNQD1BWP12T30P140 t_reg_3_ ( .D(N19), .CP(clk), .CDN(rst_n), .Q(t[3]) );
  DFCNQD1BWP12T30P140 t_reg_0_ ( .D(N16), .CP(clk), .CDN(rst_n), .Q(t[0]) );
  NR3D0BWP12T30P140 U15 ( .A1(t[0]), .A2(t[3]), .A3(t[1]), .ZN(N15) );
  INVD0BWP12T30P140 U16 ( .I(t[2]), .ZN(n9) );
  NR4D0BWP12T30P140 U17 ( .A1(t[0]), .A2(t[3]), .A3(N15), .A4(n9), .ZN(n10) );
  NR2D0BWP12T30P140 U18 ( .A1(t[0]), .A2(n10), .ZN(N16) );
  ND2D0BWP12T30P140 U19 ( .A1(t[0]), .A2(t[1]), .ZN(n8) );
  NR2D0BWP12T30P140 U20 ( .A1(n9), .A2(n8), .ZN(n12) );
  AOI211D0BWP12T30P140 U21 ( .A1(n9), .A2(n8), .B(n12), .C(n10), .ZN(N18) );
  NR2D0BWP12T30P140 U22 ( .A1(t[0]), .A2(t[1]), .ZN(n11) );
  AOI211D0BWP12T30P140 U23 ( .A1(t[1]), .A2(t[0]), .B(n11), .C(n10), .ZN(N17)
         );
  INVD0BWP12T30P140 U24 ( .I(t[3]), .ZN(n13) );
  MUX2ND0BWP12T30P140 U25 ( .I0(n13), .I1(t[3]), .S(n12), .ZN(N19) );
endmodule

