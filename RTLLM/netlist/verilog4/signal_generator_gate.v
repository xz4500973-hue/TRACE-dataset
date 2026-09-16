/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 11:40:27 2026
/////////////////////////////////////////////////////////////


module signal_generator ( clk, rst_n, wave );
  output [4:0] wave;
  input clk, rst_n;
  wire   direction, N15, N16, N17, N18, N19, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  DFCNQD1BWP12T30P140 count_reg_4_ ( .D(N19), .CP(clk), .CDN(rst_n), .Q(
        wave[4]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(N15), .CP(clk), .CDN(rst_n), .Q(
        wave[0]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(N16), .CP(clk), .CDN(rst_n), .Q(
        wave[1]) );
  DFCNQD1BWP12T30P140 count_reg_2_ ( .D(N17), .CP(clk), .CDN(rst_n), .Q(
        wave[2]) );
  DFCNQD1BWP12T30P140 count_reg_3_ ( .D(N18), .CP(clk), .CDN(rst_n), .Q(
        wave[3]) );
  DFCNQD1BWP12T30P140 direction_reg ( .D(n5), .CP(clk), .CDN(rst_n), .Q(
        direction) );
  INVD0BWP12T30P140 U13 ( .I(wave[0]), .ZN(N15) );
  INVD0BWP12T30P140 U14 ( .I(wave[4]), .ZN(n11) );
  INVD0BWP12T30P140 U15 ( .I(direction), .ZN(n21) );
  NR4D0BWP12T30P140 U16 ( .A1(wave[2]), .A2(wave[1]), .A3(wave[3]), .A4(N15), 
        .ZN(n7) );
  ND4D0BWP12T30P140 U17 ( .A1(wave[2]), .A2(wave[1]), .A3(wave[3]), .A4(N15), 
        .ZN(n6) );
  AOI222D0BWP12T30P140 U18 ( .A1(n11), .A2(n21), .B1(n11), .B2(n7), .C1(n21), 
        .C2(n6), .ZN(n5) );
  INVD0BWP12T30P140 U19 ( .I(wave[1]), .ZN(n19) );
  NR2D0BWP12T30P140 U20 ( .A1(N15), .A2(n19), .ZN(n18) );
  ND2D0BWP12T30P140 U21 ( .A1(wave[2]), .A2(n18), .ZN(n8) );
  NR3D0BWP12T30P140 U22 ( .A1(wave[2]), .A2(wave[0]), .A3(wave[1]), .ZN(n10)
         );
  ND2D0BWP12T30P140 U23 ( .A1(direction), .A2(n10), .ZN(n16) );
  OAI21D0BWP12T30P140 U24 ( .A1(direction), .A2(n8), .B(n16), .ZN(n22) );
  INVD0BWP12T30P140 U25 ( .I(wave[3]), .ZN(n23) );
  AOI22D0BWP12T30P140 U26 ( .A1(direction), .A2(wave[3]), .B1(n23), .B2(n21), 
        .ZN(n13) );
  INVD0BWP12T30P140 U27 ( .I(n8), .ZN(n9) );
  AOI33D0BWP12T30P140 U28 ( .A1(direction), .A2(n10), .A3(n23), .B1(wave[3]), 
        .B2(n9), .B3(n21), .ZN(n12) );
  AOI32D0BWP12T30P140 U29 ( .A1(n22), .A2(wave[4]), .A3(n13), .B1(n12), .B2(
        n11), .ZN(N19) );
  INVD0BWP12T30P140 U30 ( .I(wave[2]), .ZN(n15) );
  AOI33D0BWP12T30P140 U31 ( .A1(direction), .A2(N15), .A3(n19), .B1(wave[0]), 
        .B2(wave[1]), .B3(n21), .ZN(n14) );
  AOI32D0BWP12T30P140 U32 ( .A1(n18), .A2(n15), .A3(n21), .B1(wave[2]), .B2(
        n14), .ZN(n17) );
  ND2D0BWP12T30P140 U33 ( .A1(n17), .A2(n16), .ZN(N17) );
  AOI21D0BWP12T30P140 U34 ( .A1(N15), .A2(n19), .B(n18), .ZN(n20) );
  MUX2ND0BWP12T30P140 U35 ( .I0(n21), .I1(direction), .S(n20), .ZN(N16) );
  MUX2ND0BWP12T30P140 U36 ( .I0(n23), .I1(wave[3]), .S(n22), .ZN(N18) );
endmodule

