/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:07:51 2026
/////////////////////////////////////////////////////////////


module fsm ( IN, MATCH, CLK, RST );
  input IN, CLK, RST;
  output MATCH;
  wire   match_w, n8, n9, n10, n11, n12, n13;
  wire   [2:0] ns;
  wire   [2:0] cs;

  DFCNQD1BWP12T30P140 match_reg_q_reg ( .D(match_w), .CP(CLK), .CDN(n8), .Q(
        MATCH) );
  DFCNQD1BWP12T30P140 state_reg_q_reg_0_ ( .D(ns[0]), .CP(CLK), .CDN(n8), .Q(
        cs[0]) );
  DFCNQD1BWP12T30P140 state_reg_q_reg_2_ ( .D(ns[2]), .CP(CLK), .CDN(n8), .Q(
        cs[2]) );
  DFCNQD1BWP12T30P140 state_reg_q_reg_1_ ( .D(ns[1]), .CP(CLK), .CDN(n8), .Q(
        cs[1]) );
  NR2D0BWP12T30P140 U15 ( .A1(cs[1]), .A2(cs[0]), .ZN(n9) );
  INVD0BWP12T30P140 U16 ( .I(cs[2]), .ZN(n10) );
  AN3D0BWP12T30P140 U17 ( .A1(cs[1]), .A2(cs[0]), .A3(n10), .Z(n11) );
  AOI211D0BWP12T30P140 U18 ( .A1(n9), .A2(n10), .B(IN), .C(n11), .ZN(ns[1]) );
  AN3D0BWP12T30P140 U19 ( .A1(n9), .A2(cs[2]), .A3(IN), .Z(match_w) );
  AO21D0BWP12T30P140 U20 ( .A1(IN), .A2(n11), .B(match_w), .Z(ns[2]) );
  ND2D0BWP12T30P140 U21 ( .A1(cs[1]), .A2(n10), .ZN(n13) );
  INVD0BWP12T30P140 U22 ( .I(IN), .ZN(n12) );
  AOI21D0BWP12T30P140 U23 ( .A1(n13), .A2(n12), .B(n11), .ZN(ns[0]) );
  INVD0BWP12T30P140 U24 ( .I(RST), .ZN(n8) );
endmodule

