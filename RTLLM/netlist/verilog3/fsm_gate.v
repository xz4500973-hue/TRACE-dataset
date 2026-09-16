/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:23:01 2026
/////////////////////////////////////////////////////////////


module fsm ( IN, MATCH, CLK, RST );
  input IN, CLK, RST;
  output MATCH;
  wire   N35, N36, N37, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [2:0] ST_cr;
  wire   [2:0] ST_nt;

  DFCNQD1BWP12T30P140 MATCH_reg ( .D(N37), .CP(CLK), .CDN(n8), .Q(MATCH) );
  DFCNQD1BWP12T30P140 ST_cr_reg_0_ ( .D(ST_nt[0]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[0]) );
  DFCNQD1BWP12T30P140 ST_cr_reg_2_ ( .D(ST_nt[2]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[2]) );
  DFCNQD1BWP12T30P140 ST_cr_reg_1_ ( .D(ST_nt[1]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[1]) );
  LHQD2BWP12T30P140 ST_nt_reg_1_ ( .E(n9), .D(N35), .Q(ST_nt[1]) );
  LHQD2BWP12T30P140 ST_nt_reg_0_ ( .E(n9), .D(n10), .Q(ST_nt[0]) );
  LHQD1BWP12T30P140 ST_nt_reg_2_ ( .E(n9), .D(N36), .Q(ST_nt[2]) );
  ND2D0BWP12T30P140 U16 ( .A1(ST_cr[2]), .A2(ST_cr[1]), .ZN(n9) );
  NR2D0BWP12T30P140 U17 ( .A1(ST_cr[1]), .A2(ST_cr[0]), .ZN(n11) );
  INVD0BWP12T30P140 U18 ( .I(ST_cr[2]), .ZN(n13) );
  ND2D0BWP12T30P140 U19 ( .A1(ST_cr[1]), .A2(ST_cr[0]), .ZN(n12) );
  ND2D0BWP12T30P140 U20 ( .A1(n9), .A2(n12), .ZN(n15) );
  AOI211D0BWP12T30P140 U21 ( .A1(n11), .A2(n13), .B(IN), .C(n15), .ZN(N35) );
  INVD0BWP12T30P140 U22 ( .I(n11), .ZN(n14) );
  INVD0BWP12T30P140 U23 ( .I(IN), .ZN(n16) );
  AOI221D0BWP12T30P140 U24 ( .A1(ST_cr[2]), .A2(n14), .B1(n13), .B2(n12), .C(
        n16), .ZN(N36) );
  INVD0BWP12T30P140 U25 ( .I(RST), .ZN(n8) );
  IAO21D0BWP12T30P140 U26 ( .A1(IN), .A2(ST_cr[1]), .B(n15), .ZN(n10) );
  INR4D0BWP12T30P140 U27 ( .A1(ST_nt[2]), .B1(ST_nt[0]), .B2(ST_nt[1]), .B3(
        n16), .ZN(N37) );
endmodule

