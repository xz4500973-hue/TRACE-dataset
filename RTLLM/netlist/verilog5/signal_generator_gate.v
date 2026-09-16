/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:17:03 2026
/////////////////////////////////////////////////////////////


module signal_generator ( clk, rst_n, wave );
  output [4:0] wave;
  input clk, rst_n;
  wire   up, N16, N17, N18, N19, N20, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21;

  DFSNQD1BWP12T30P140 up_reg ( .D(n5), .CP(clk), .SDN(rst_n), .Q(up) );
  DFCNQD1BWP12T30P140 wave_reg_3_ ( .D(N19), .CP(clk), .CDN(rst_n), .Q(wave[3]) );
  DFCNQD1BWP12T30P140 wave_reg_4_ ( .D(N20), .CP(clk), .CDN(rst_n), .Q(wave[4]) );
  DFCNQD1BWP12T30P140 wave_reg_2_ ( .D(N18), .CP(clk), .CDN(rst_n), .Q(wave[2]) );
  DFCNQD1BWP12T30P140 wave_reg_1_ ( .D(N17), .CP(clk), .CDN(rst_n), .Q(wave[1]) );
  DFCNQD1BWP12T30P140 wave_reg_0_ ( .D(N16), .CP(clk), .CDN(rst_n), .Q(wave[0]) );
  INVD0BWP12T30P140 U13 ( .I(wave[2]), .ZN(n9) );
  ND3D0BWP12T30P140 U14 ( .A1(up), .A2(wave[0]), .A3(wave[1]), .ZN(n14) );
  NR2D0BWP12T30P140 U15 ( .A1(n9), .A2(n14), .ZN(n18) );
  NR4D0BWP12T30P140 U16 ( .A1(wave[2]), .A2(up), .A3(wave[0]), .A4(wave[1]), 
        .ZN(n19) );
  INVD0BWP12T30P140 U17 ( .I(wave[3]), .ZN(n21) );
  AOI22D0BWP12T30P140 U18 ( .A1(wave[3]), .A2(n18), .B1(n19), .B2(n21), .ZN(n7) );
  INVD0BWP12T30P140 U19 ( .I(n7), .ZN(n8) );
  INVD0BWP12T30P140 U20 ( .I(wave[4]), .ZN(n6) );
  AOI22D0BWP12T30P140 U21 ( .A1(wave[4]), .A2(n8), .B1(n7), .B2(n6), .ZN(N20)
         );
  INVD0BWP12T30P140 U22 ( .I(up), .ZN(n17) );
  INVD0BWP12T30P140 U23 ( .I(wave[1]), .ZN(n15) );
  NR4D0BWP12T30P140 U24 ( .A1(wave[0]), .A2(n9), .A3(n15), .A4(n21), .ZN(n11)
         );
  ND4D0BWP12T30P140 U25 ( .A1(wave[0]), .A2(n9), .A3(n15), .A4(n21), .ZN(n10)
         );
  AOI222D0BWP12T30P140 U26 ( .A1(wave[4]), .A2(n17), .B1(wave[4]), .B2(n11), 
        .C1(n17), .C2(n10), .ZN(n5) );
  INVD0BWP12T30P140 U27 ( .I(wave[0]), .ZN(N16) );
  AOI33D0BWP12T30P140 U28 ( .A1(up), .A2(wave[0]), .A3(wave[1]), .B1(N16), 
        .B2(n15), .B3(n17), .ZN(n12) );
  AOI21D0BWP12T30P140 U29 ( .A1(wave[2]), .A2(n12), .B(n19), .ZN(n13) );
  OAI21D0BWP12T30P140 U30 ( .A1(wave[2]), .A2(n14), .B(n13), .ZN(N18) );
  AOI22D0BWP12T30P140 U31 ( .A1(wave[0]), .A2(wave[1]), .B1(n15), .B2(N16), 
        .ZN(n16) );
  MUX2ND0BWP12T30P140 U32 ( .I0(up), .I1(n17), .S(n16), .ZN(N17) );
  NR2D0BWP12T30P140 U33 ( .A1(n19), .A2(n18), .ZN(n20) );
  MUX2ND0BWP12T30P140 U34 ( .I0(wave[3]), .I1(n21), .S(n20), .ZN(N19) );
endmodule

