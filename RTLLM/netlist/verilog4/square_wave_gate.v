/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:54:31 2026
/////////////////////////////////////////////////////////////


module square_wave ( clk, freq, wave_out );
  input [7:0] freq;
  input clk;
  output wave_out;
  wire   N20, N21, N22, N23, N24, N25, N26, n3, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [7:0] dcnt;

  DFQD2BWP12T30P140 wave_out_reg ( .D(n3), .CP(clk), .Q(wave_out) );
  DFQD2BWP12T30P140 dcnt_reg_6_ ( .D(N25), .CP(clk), .Q(dcnt[6]) );
  DFQD2BWP12T30P140 dcnt_reg_1_ ( .D(N20), .CP(clk), .Q(dcnt[1]) );
  DFQD2BWP12T30P140 dcnt_reg_0_ ( .D(n23), .CP(clk), .Q(dcnt[0]) );
  DFQD2BWP12T30P140 dcnt_reg_5_ ( .D(N24), .CP(clk), .Q(dcnt[5]) );
  DFQD2BWP12T30P140 dcnt_reg_4_ ( .D(N23), .CP(clk), .Q(dcnt[4]) );
  DFQD2BWP12T30P140 dcnt_reg_7_ ( .D(N26), .CP(clk), .Q(dcnt[7]) );
  DFQD2BWP12T30P140 dcnt_reg_3_ ( .D(N22), .CP(clk), .Q(dcnt[3]) );
  DFQD1BWP12T30P140 dcnt_reg_2_ ( .D(N21), .CP(clk), .Q(dcnt[2]) );
  NR4D0BWP12T30P140 U8 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(dcnt[3]), .A4(dcnt[2]), .ZN(n6) );
  NR4D0BWP12T30P140 U9 ( .A1(dcnt[6]), .A2(dcnt[5]), .A3(dcnt[4]), .A4(dcnt[7]), .ZN(n5) );
  AN2D0BWP12T30P140 U10 ( .A1(n6), .A2(n5), .Z(n21) );
  AOI21D0BWP12T30P140 U11 ( .A1(n21), .A2(freq[0]), .B(dcnt[0]), .ZN(n23) );
  AOI21D0BWP12T30P140 U12 ( .A1(n21), .A2(freq[2]), .B(dcnt[2]), .ZN(n7) );
  AOI21D0BWP12T30P140 U13 ( .A1(n21), .A2(freq[1]), .B(dcnt[1]), .ZN(n11) );
  AN2D0BWP12T30P140 U14 ( .A1(n23), .A2(n11), .Z(n9) );
  ND2D0BWP12T30P140 U15 ( .A1(n7), .A2(n9), .ZN(n17) );
  OAI21D0BWP12T30P140 U16 ( .A1(n7), .A2(n9), .B(n17), .ZN(N21) );
  AOI21D0BWP12T30P140 U17 ( .A1(n21), .A2(freq[6]), .B(dcnt[6]), .ZN(n8) );
  AO21D0BWP12T30P140 U18 ( .A1(n21), .A2(freq[5]), .B(dcnt[5]), .Z(n13) );
  AOI21D0BWP12T30P140 U19 ( .A1(n21), .A2(freq[4]), .B(dcnt[4]), .ZN(n15) );
  AO21D0BWP12T30P140 U20 ( .A1(n21), .A2(freq[3]), .B(dcnt[3]), .Z(n18) );
  NR2D0BWP12T30P140 U21 ( .A1(n18), .A2(n17), .ZN(n16) );
  ND2D0BWP12T30P140 U22 ( .A1(n15), .A2(n16), .ZN(n14) );
  NR2D0BWP12T30P140 U23 ( .A1(n13), .A2(n14), .ZN(n12) );
  ND2D0BWP12T30P140 U24 ( .A1(n8), .A2(n12), .ZN(n19) );
  OAI21D0BWP12T30P140 U25 ( .A1(n8), .A2(n12), .B(n19), .ZN(N25) );
  INVD0BWP12T30P140 U26 ( .I(n9), .ZN(n10) );
  OAI21D0BWP12T30P140 U27 ( .A1(n23), .A2(n11), .B(n10), .ZN(N20) );
  AO21D0BWP12T30P140 U28 ( .A1(n13), .A2(n14), .B(n12), .Z(N24) );
  OAI21D0BWP12T30P140 U29 ( .A1(n15), .A2(n16), .B(n14), .ZN(N23) );
  AO21D0BWP12T30P140 U30 ( .A1(n18), .A2(n17), .B(n16), .Z(N22) );
  AOI21D0BWP12T30P140 U31 ( .A1(n21), .A2(freq[7]), .B(dcnt[7]), .ZN(n20) );
  CKXOR2D0BWP12T30P140 U32 ( .A1(n20), .A2(n19), .Z(N26) );
  INVD0BWP12T30P140 U33 ( .I(n21), .ZN(n22) );
  MUX2ND0BWP12T30P140 U34 ( .I0(n22), .I1(n21), .S(wave_out), .ZN(n3) );
endmodule

