/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:59:20 2026
/////////////////////////////////////////////////////////////


module fsm ( IN, MATCH, CLK, RST );
  input IN, CLK, RST;
  output MATCH;
  wire   N36, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [2:0] ST;

  DFCNQD1BWP12T30P140 MATCH_reg ( .D(N36), .CP(CLK), .CDN(n9), .Q(MATCH) );
  DFCNQD1BWP12T30P140 ST_reg_2_ ( .D(n11), .CP(CLK), .CDN(n9), .Q(ST[2]) );
  DFCNQD1BWP12T30P140 ST_reg_0_ ( .D(n12), .CP(CLK), .CDN(n9), .Q(ST[0]) );
  DFCNQD1BWP12T30P140 ST_reg_1_ ( .D(n10), .CP(CLK), .CDN(n9), .Q(ST[1]) );
  OAI21D0BWP12T30P140 U16 ( .A1(ST[0]), .A2(ST[2]), .B(ST[1]), .ZN(n14) );
  OAI31D0BWP12T30P140 U17 ( .A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .B(n14), .ZN(
        n13) );
  ND2D0BWP12T30P140 U18 ( .A1(ST[1]), .A2(ST[2]), .ZN(n17) );
  OAI21D0BWP12T30P140 U19 ( .A1(IN), .A2(n13), .B(n17), .ZN(n10) );
  INVD0BWP12T30P140 U20 ( .I(ST[0]), .ZN(n16) );
  OAI21D0BWP12T30P140 U21 ( .A1(ST[1]), .A2(IN), .B(n14), .ZN(n15) );
  OAI21D0BWP12T30P140 U22 ( .A1(n17), .A2(n16), .B(n15), .ZN(n12) );
  NR2D0BWP12T30P140 U23 ( .A1(ST[0]), .A2(ST[2]), .ZN(n19) );
  OAI21D0BWP12T30P140 U24 ( .A1(ST[1]), .A2(n16), .B(IN), .ZN(n18) );
  OAI21D0BWP12T30P140 U25 ( .A1(n19), .A2(n18), .B(n17), .ZN(n11) );
  INVD0BWP12T30P140 U26 ( .I(RST), .ZN(n9) );
  IINR4D0BWP12T30P140 U27 ( .A1(IN), .A2(ST[2]), .B1(ST[1]), .B2(ST[0]), .ZN(
        N36) );
endmodule

