/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:45:06 2026
/////////////////////////////////////////////////////////////


module signal_generator ( clk, rst_n, wave );
  output [4:0] wave;
  input clk, rst_n;
  wire   state_0_, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;

  DFCNQD1BWP12T30P140 wave_reg_1_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(wave[1]) );
  DFCNQD1BWP12T30P140 wave_reg_4_ ( .D(n17), .CP(clk), .CDN(rst_n), .Q(wave[4]) );
  DFCNQD1BWP12T30P140 wave_reg_2_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(wave[2]) );
  DFCNQD1BWP12T30P140 wave_reg_0_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(wave[0]) );
  DFCNQD1BWP12T30P140 wave_reg_3_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(wave[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n18), .CP(clk), .CDN(rst_n), .Q(
        state_0_) );
  NR3D0BWP12T30P140 U21 ( .A1(wave[2]), .A2(wave[0]), .A3(wave[1]), .ZN(n29)
         );
  INR3D1BWP12T30P140 U22 ( .A1(n29), .B1(wave[4]), .B2(wave[3]), .ZN(n28) );
  INVD0BWP12T30P140 U23 ( .I(state_0_), .ZN(n22) );
  NR2D0BWP12T30P140 U24 ( .A1(n28), .A2(n22), .ZN(n35) );
  ND2D0BWP12T30P140 U25 ( .A1(n29), .A2(n35), .ZN(n31) );
  INVD0BWP12T30P140 U26 ( .I(wave[0]), .ZN(n24) );
  INVD0BWP12T30P140 U27 ( .I(wave[1]), .ZN(n27) );
  NR3D0BWP12T30P140 U28 ( .A1(n24), .A2(n27), .A3(state_0_), .ZN(n20) );
  ND2D0BWP12T30P140 U29 ( .A1(wave[2]), .A2(n20), .ZN(n33) );
  INR2D1BWP12T30P140 U30 ( .A1(wave[3]), .B1(n33), .ZN(n38) );
  ND2D0BWP12T30P140 U31 ( .A1(wave[4]), .A2(n38), .ZN(n34) );
  AOI32D0BWP12T30P140 U32 ( .A1(state_0_), .A2(n24), .A3(n27), .B1(wave[2]), 
        .B2(n20), .ZN(n19) );
  OAI21D0BWP12T30P140 U33 ( .A1(wave[2]), .A2(n20), .B(n19), .ZN(n21) );
  ND3D0BWP12T30P140 U34 ( .A1(n31), .A2(n34), .A3(n21), .ZN(n15) );
  AOI22D0BWP12T30P140 U35 ( .A1(wave[0]), .A2(state_0_), .B1(n22), .B2(n24), 
        .ZN(n26) );
  NR2D0BWP12T30P140 U36 ( .A1(state_0_), .A2(n24), .ZN(n23) );
  AOI32D0BWP12T30P140 U37 ( .A1(n35), .A2(n27), .A3(n24), .B1(n23), .B2(n27), 
        .ZN(n25) );
  OAI211D0BWP12T30P140 U38 ( .A1(n27), .A2(n26), .B(n34), .C(n25), .ZN(n14) );
  AOI22D0BWP12T30P140 U39 ( .A1(n28), .A2(state_0_), .B1(n34), .B2(wave[0]), 
        .ZN(n13) );
  ND2D0BWP12T30P140 U40 ( .A1(state_0_), .A2(n29), .ZN(n36) );
  INVD0BWP12T30P140 U41 ( .I(n34), .ZN(n30) );
  AOI31D0BWP12T30P140 U42 ( .A1(wave[3]), .A2(n33), .A3(n36), .B(n30), .ZN(n32) );
  AOI32D0BWP12T30P140 U43 ( .A1(n33), .A2(n32), .A3(n31), .B1(wave[3]), .B2(
        n32), .ZN(n16) );
  IND2D1BWP12T30P140 U44 ( .A1(n35), .B1(n34), .ZN(n18) );
  OAI21D0BWP12T30P140 U45 ( .A1(n36), .A2(wave[3]), .B(wave[4]), .ZN(n37) );
  IND2D1BWP12T30P140 U46 ( .A1(n38), .B1(n37), .ZN(n17) );
endmodule

