/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:35:37 2026
/////////////////////////////////////////////////////////////


module fsm ( IN, MATCH, CLK, RST );
  input IN, CLK, RST;
  output MATCH;
  wire   N32, N33, N34, N35, n8, n9, n10, n11, n12, n13;
  wire   [2:0] ST_cr;
  wire   [2:0] ST_nt;

  DFCNQD1BWP12T30P140 ST_cr_reg_0_ ( .D(ST_nt[0]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[0]) );
  DFCNQD1BWP12T30P140 ST_cr_reg_2_ ( .D(ST_nt[2]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[2]) );
  DFCNQD1BWP12T30P140 ST_cr_reg_1_ ( .D(ST_nt[1]), .CP(CLK), .CDN(n8), .Q(
        ST_cr[1]) );
  LHQD2BWP12T30P140 ST_nt_reg_0_ ( .E(N32), .D(N33), .Q(ST_nt[0]) );
  LHQD2BWP12T30P140 ST_nt_reg_2_ ( .E(N32), .D(N35), .Q(ST_nt[2]) );
  LHQD1BWP12T30P140 ST_nt_reg_1_ ( .E(N32), .D(N34), .Q(ST_nt[1]) );
  INVD0BWP12T30P140 U16 ( .I(IN), .ZN(n9) );
  NR2D0BWP12T30P140 U17 ( .A1(ST_cr[2]), .A2(ST_cr[0]), .ZN(n10) );
  ND2D0BWP12T30P140 U18 ( .A1(ST_cr[1]), .A2(n10), .ZN(n11) );
  OAI21D0BWP12T30P140 U19 ( .A1(ST_cr[1]), .A2(n9), .B(n11), .ZN(N33) );
  AOI221D0BWP12T30P140 U20 ( .A1(ST_cr[1]), .A2(n11), .B1(n10), .B2(n11), .C(
        IN), .ZN(N34) );
  ND3D0BWP12T30P140 U21 ( .A1(IN), .A2(ST_cr[1]), .A3(ST_cr[0]), .ZN(n12) );
  IIND4D0BWP12T30P140 U22 ( .A1(ST_cr[1]), .A2(ST_cr[0]), .B1(ST_cr[2]), .B2(
        IN), .ZN(n13) );
  OAI21D0BWP12T30P140 U23 ( .A1(ST_cr[2]), .A2(n12), .B(n13), .ZN(N35) );
  INVD0BWP12T30P140 U24 ( .I(RST), .ZN(n8) );
  NR2D0BWP12T30P140 U25 ( .A1(RST), .A2(n13), .ZN(MATCH) );
  ND2D0BWP12T30P140 U26 ( .A1(ST_cr[1]), .A2(ST_cr[2]), .ZN(N32) );
endmodule

