/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:45:39 2026
/////////////////////////////////////////////////////////////


module fsm ( IN, MATCH, CLK, RST );
  input IN, CLK, RST;
  output MATCH;
  wire   N15, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26;
  wire   [5:0] ST;

  DFSNQD1BWP12T30P140 ST_reg_0_ ( .D(n17), .CP(CLK), .SDN(n11), .Q(ST[0]) );
  DFCNQD1BWP12T30P140 MATCH_reg ( .D(N15), .CP(CLK), .CDN(n11), .Q(MATCH) );
  DFCNQD1BWP12T30P140 ST_reg_5_ ( .D(n12), .CP(CLK), .CDN(n11), .Q(ST[5]) );
  DFCNQD1BWP12T30P140 ST_reg_2_ ( .D(n15), .CP(CLK), .CDN(n11), .Q(ST[2]) );
  DFCNQD1BWP12T30P140 ST_reg_4_ ( .D(n13), .CP(CLK), .CDN(n11), .Q(ST[4]) );
  DFCNQD1BWP12T30P140 ST_reg_1_ ( .D(n16), .CP(CLK), .CDN(n11), .Q(ST[1]) );
  DFCNQD1BWP12T30P140 ST_reg_3_ ( .D(n14), .CP(CLK), .CDN(n11), .Q(ST[3]) );
  NR3D0BWP12T30P140 U21 ( .A1(ST[0]), .A2(ST[2]), .A3(ST[1]), .ZN(n23) );
  INR2D1BWP12T30P140 U22 ( .A1(n23), .B1(ST[3]), .ZN(n20) );
  AN3D0BWP12T30P140 U23 ( .A1(IN), .A2(ST[4]), .A3(n20), .Z(n12) );
  INVD0BWP12T30P140 U24 ( .I(ST[5]), .ZN(n24) );
  AN2D0BWP12T30P140 U25 ( .A1(n12), .A2(n24), .Z(N15) );
  INVD0BWP12T30P140 U26 ( .I(ST[0]), .ZN(n18) );
  ND2D0BWP12T30P140 U27 ( .A1(n23), .A2(ST[3]), .ZN(n19) );
  AOI21D0BWP12T30P140 U28 ( .A1(n18), .A2(n19), .B(IN), .ZN(n17) );
  INVD0BWP12T30P140 U29 ( .I(IN), .ZN(n25) );
  NR2D0BWP12T30P140 U30 ( .A1(n25), .A2(n19), .ZN(n13) );
  OAI21D0BWP12T30P140 U31 ( .A1(ST[4]), .A2(ST[5]), .B(n20), .ZN(n22) );
  INVD0BWP12T30P140 U32 ( .I(ST[1]), .ZN(n21) );
  AOI211D0BWP12T30P140 U33 ( .A1(n22), .A2(n21), .B(ST[0]), .C(IN), .ZN(n15)
         );
  INVD0BWP12T30P140 U34 ( .I(RST), .ZN(n11) );
  OAI31D0BWP12T30P140 U35 ( .A1(ST[4]), .A2(ST[3]), .A3(n24), .B(n23), .ZN(n26) );
  INR2D1BWP12T30P140 U36 ( .A1(n26), .B1(n25), .ZN(n16) );
  INR4D0BWP12T30P140 U37 ( .A1(ST[2]), .B1(IN), .B2(ST[0]), .B3(ST[1]), .ZN(
        n14) );
endmodule

