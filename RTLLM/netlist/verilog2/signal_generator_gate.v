/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:08:53 2026
/////////////////////////////////////////////////////////////


module signal_generator ( clk, rst_n, wave );
  output [4:0] wave;
  input clk, rst_n;
  wire   dir, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;

  DFCNQD1BWP12T30P140 wave_reg_4_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(wave[4]) );
  DFCNQD1BWP12T30P140 wave_reg_2_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(wave[2]) );
  DFCNQD1BWP12T30P140 wave_reg_3_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(wave[3]) );
  DFCNQD1BWP12T30P140 wave_reg_0_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(wave[0]) );
  DFCNQD1BWP12T30P140 wave_reg_1_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(wave[1]) );
  DFCNQD1BWP12T30P140 dir_reg ( .D(n14), .CP(clk), .CDN(rst_n), .Q(dir) );
  INVD0BWP12T30P140 U19 ( .I(wave[2]), .ZN(n18) );
  INVD0BWP12T30P140 U20 ( .I(wave[0]), .ZN(n34) );
  INVD0BWP12T30P140 U21 ( .I(wave[1]), .ZN(n17) );
  ND3D0BWP12T30P140 U22 ( .A1(n18), .A2(n34), .A3(n17), .ZN(n22) );
  INVD0BWP12T30P140 U23 ( .I(wave[3]), .ZN(n29) );
  INVD0BWP12T30P140 U24 ( .I(wave[4]), .ZN(n26) );
  IND3D1BWP12T30P140 U25 ( .A1(n22), .B1(n29), .B2(n26), .ZN(n36) );
  ND2D0BWP12T30P140 U26 ( .A1(dir), .A2(n36), .ZN(n33) );
  INVD0BWP12T30P140 U27 ( .I(dir), .ZN(n35) );
  ND3D0BWP12T30P140 U28 ( .A1(n35), .A2(wave[0]), .A3(wave[1]), .ZN(n19) );
  NR2D0BWP12T30P140 U29 ( .A1(n18), .A2(n19), .ZN(n25) );
  ND2D0BWP12T30P140 U30 ( .A1(wave[3]), .A2(n25), .ZN(n27) );
  NR2D0BWP12T30P140 U31 ( .A1(n26), .A2(n27), .ZN(n31) );
  INVD0BWP12T30P140 U32 ( .I(n31), .ZN(n37) );
  AOI22D0BWP12T30P140 U33 ( .A1(wave[0]), .A2(n35), .B1(dir), .B2(n34), .ZN(
        n32) );
  AOI221D0BWP12T30P140 U34 ( .A1(dir), .A2(wave[1]), .B1(n35), .B2(n17), .C(
        n32), .ZN(n20) );
  AO22D0BWP12T30P140 U35 ( .A1(wave[2]), .A2(n20), .B1(n19), .B2(n18), .Z(n21)
         );
  OAI211D0BWP12T30P140 U36 ( .A1(n22), .A2(n33), .B(n37), .C(n21), .ZN(n12) );
  NR2D0BWP12T30P140 U37 ( .A1(n35), .A2(n22), .ZN(n28) );
  NR2D0BWP12T30P140 U38 ( .A1(n22), .A2(n33), .ZN(n23) );
  AOI221D0BWP12T30P140 U39 ( .A1(n25), .A2(n29), .B1(n23), .B2(n29), .C(n31), 
        .ZN(n24) );
  OAI31D0BWP12T30P140 U40 ( .A1(n25), .A2(n28), .A3(n29), .B(n24), .ZN(n11) );
  AOI22D0BWP12T30P140 U41 ( .A1(n29), .A2(n28), .B1(n27), .B2(n26), .ZN(n15)
         );
  AOI221D0BWP12T30P140 U42 ( .A1(dir), .A2(wave[0]), .B1(n33), .B2(n34), .C(
        wave[1]), .ZN(n30) );
  AO211D0BWP12T30P140 U43 ( .A1(wave[1]), .A2(n32), .B(n31), .C(n30), .Z(n13)
         );
  ND2D0BWP12T30P140 U44 ( .A1(n37), .A2(n33), .ZN(n14) );
  OAI21D0BWP12T30P140 U45 ( .A1(n36), .A2(n35), .B(n34), .ZN(n38) );
  ND2D0BWP12T30P140 U46 ( .A1(n38), .A2(n37), .ZN(n16) );
endmodule

