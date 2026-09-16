/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:48:39 2026
/////////////////////////////////////////////////////////////


module multi_pipe_4bit ( clk, rst_n, mul_a, mul_b, mul_out );
  input [3:0] mul_a;
  input [3:0] mul_b;
  output [7:0] mul_out;
  input clk, rst_n;
  wire   N22, N23, N24, N25, N26, N27, N28, N29, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [7:0] s1;
  wire   [7:0] s2;

  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(s2[7]), .CP(clk), .CDN(n42), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(s2[6]), .CP(clk), .CDN(n42), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(s2[5]), .CP(clk), .CDN(n42), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(s2[4]), .CP(clk), .CDN(n42), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(s2[3]), .CP(n43), .CDN(rst_n), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(s2[2]), .CP(n43), .CDN(rst_n), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(s2[1]), .CP(n43), .CDN(rst_n), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(s2[0]), .CP(n43), .CDN(rst_n), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 s1_reg_7_ ( .D(N29), .CP(clk), .CDN(n42), .Q(s1[7]) );
  DFCNQD1BWP12T30P140 s2_reg_7_ ( .D(s1[7]), .CP(clk), .CDN(n42), .Q(s2[7]) );
  DFCNQD1BWP12T30P140 s1_reg_6_ ( .D(N28), .CP(clk), .CDN(n42), .Q(s1[6]) );
  DFCNQD1BWP12T30P140 s2_reg_6_ ( .D(s1[6]), .CP(clk), .CDN(n42), .Q(s2[6]) );
  DFCNQD1BWP12T30P140 s1_reg_5_ ( .D(N27), .CP(clk), .CDN(n42), .Q(s1[5]) );
  DFCNQD1BWP12T30P140 s2_reg_5_ ( .D(s1[5]), .CP(clk), .CDN(n42), .Q(s2[5]) );
  DFCNQD1BWP12T30P140 s1_reg_4_ ( .D(N26), .CP(clk), .CDN(n42), .Q(s1[4]) );
  DFCNQD1BWP12T30P140 s2_reg_4_ ( .D(s1[4]), .CP(clk), .CDN(n42), .Q(s2[4]) );
  DFCNQD1BWP12T30P140 s1_reg_3_ ( .D(N25), .CP(n43), .CDN(rst_n), .Q(s1[3]) );
  DFCNQD1BWP12T30P140 s2_reg_3_ ( .D(s1[3]), .CP(n43), .CDN(rst_n), .Q(s2[3])
         );
  DFCNQD1BWP12T30P140 s1_reg_2_ ( .D(N24), .CP(n43), .CDN(rst_n), .Q(s1[2]) );
  DFCNQD1BWP12T30P140 s2_reg_2_ ( .D(s1[2]), .CP(n43), .CDN(rst_n), .Q(s2[2])
         );
  DFCNQD1BWP12T30P140 s1_reg_1_ ( .D(N23), .CP(n43), .CDN(rst_n), .Q(s1[1]) );
  DFCNQD1BWP12T30P140 s2_reg_1_ ( .D(s1[1]), .CP(n43), .CDN(rst_n), .Q(s2[1])
         );
  DFCNQD1BWP12T30P140 s1_reg_0_ ( .D(N22), .CP(n43), .CDN(n42), .Q(s1[0]) );
  DFCNQD1BWP12T30P140 s2_reg_0_ ( .D(s1[0]), .CP(n43), .CDN(rst_n), .Q(s2[0])
         );
  ND4D0BWP12T30P140 U20 ( .A1(mul_b[3]), .A2(mul_b[2]), .A3(mul_a[2]), .A4(
        mul_a[1]), .ZN(n19) );
  INVD0BWP12T30P140 U21 ( .I(n19), .ZN(n3) );
  ND4D0BWP12T30P140 U22 ( .A1(mul_b[3]), .A2(mul_a[3]), .A3(mul_b[2]), .A4(
        mul_a[2]), .ZN(n18) );
  AN2D0BWP12T30P140 U23 ( .A1(mul_a[3]), .A2(mul_b[2]), .Z(n1) );
  AOI32D0BWP12T30P140 U24 ( .A1(mul_a[2]), .A2(n18), .A3(mul_b[3]), .B1(n1), 
        .B2(n18), .ZN(n2) );
  MUX2ND0BWP12T30P140 U25 ( .I0(n3), .I1(n19), .S(n2), .ZN(n38) );
  ND2D0BWP12T30P140 U26 ( .A1(mul_b[2]), .A2(mul_a[2]), .ZN(n5) );
  ND2D0BWP12T30P140 U27 ( .A1(mul_b[3]), .A2(mul_a[1]), .ZN(n4) );
  AOI21D0BWP12T30P140 U28 ( .A1(n5), .A2(n4), .B(n3), .ZN(n7) );
  AN2D0BWP12T30P140 U29 ( .A1(mul_a[3]), .A2(mul_b[1]), .Z(n6) );
  AN4D0BWP12T30P140 U30 ( .A1(mul_b[3]), .A2(mul_a[2]), .A3(mul_a[0]), .A4(
        mul_b[1]), .Z(n14) );
  FA1D0BWP12T30P140 U31 ( .A(n7), .B(n6), .CI(n14), .CO(n37), .S(n41) );
  AN4D0BWP12T30P140 U32 ( .A1(mul_b[2]), .A2(mul_a[2]), .A3(mul_a[0]), .A4(
        mul_b[0]), .Z(n11) );
  AN2D0BWP12T30P140 U33 ( .A1(mul_b[2]), .A2(mul_a[1]), .Z(n9) );
  AN2D0BWP12T30P140 U34 ( .A1(mul_a[3]), .A2(mul_b[0]), .Z(n8) );
  FA1D0BWP12T30P140 U35 ( .A(n11), .B(n9), .CI(n8), .CO(n40), .S(n10) );
  INVD0BWP12T30P140 U36 ( .I(n10), .ZN(n34) );
  ND2D0BWP12T30P140 U37 ( .A1(mul_b[2]), .A2(mul_a[0]), .ZN(n13) );
  ND2D0BWP12T30P140 U38 ( .A1(mul_a[2]), .A2(mul_b[0]), .ZN(n12) );
  AOI21D0BWP12T30P140 U39 ( .A1(n13), .A2(n12), .B(n11), .ZN(n30) );
  AN4D0BWP12T30P140 U40 ( .A1(mul_a[1]), .A2(mul_a[0]), .A3(mul_b[1]), .A4(
        mul_b[0]), .Z(n31) );
  AOI31D0BWP12T30P140 U41 ( .A1(mul_b[1]), .A2(mul_a[1]), .A3(n30), .B(n31), 
        .ZN(n33) );
  ND2D0BWP12T30P140 U42 ( .A1(mul_a[2]), .A2(mul_b[1]), .ZN(n16) );
  ND2D0BWP12T30P140 U43 ( .A1(mul_b[3]), .A2(mul_a[0]), .ZN(n15) );
  AO21D0BWP12T30P140 U44 ( .A1(n16), .A2(n15), .B(n14), .Z(n32) );
  INVD0BWP12T30P140 U45 ( .I(n17), .ZN(n39) );
  ND2D0BWP12T30P140 U46 ( .A1(n19), .A2(n18), .ZN(n23) );
  NR2D0BWP12T30P140 U47 ( .A1(n24), .A2(n23), .ZN(n22) );
  ND2D0BWP12T30P140 U48 ( .A1(mul_b[3]), .A2(mul_a[3]), .ZN(n26) );
  NR2D0BWP12T30P140 U49 ( .A1(n22), .A2(n26), .ZN(N29) );
  ND2D0BWP12T30P140 U50 ( .A1(mul_a[0]), .A2(mul_b[1]), .ZN(n21) );
  ND2D0BWP12T30P140 U51 ( .A1(mul_a[1]), .A2(mul_b[0]), .ZN(n20) );
  AOI21D0BWP12T30P140 U52 ( .A1(n21), .A2(n20), .B(n31), .ZN(N23) );
  AOI21D0BWP12T30P140 U53 ( .A1(n24), .A2(n23), .B(n22), .ZN(n27) );
  ND2D0BWP12T30P140 U54 ( .A1(n27), .A2(n26), .ZN(n25) );
  OAI21D0BWP12T30P140 U55 ( .A1(n27), .A2(n26), .B(n25), .ZN(N28) );
  AN2D0BWP12T30P140 U56 ( .A1(mul_a[0]), .A2(mul_b[0]), .Z(N22) );
  ND2D0BWP12T30P140 U57 ( .A1(mul_a[1]), .A2(mul_b[1]), .ZN(n29) );
  OAI21D0BWP12T30P140 U58 ( .A1(n31), .A2(n29), .B(n30), .ZN(n28) );
  OAI31D0BWP12T30P140 U59 ( .A1(n31), .A2(n30), .A3(n29), .B(n28), .ZN(N24) );
  FA1D0BWP12T30P140 U60 ( .A(n34), .B(n33), .CI(n32), .CO(n17), .S(n35) );
  INVD0BWP12T30P140 U61 ( .I(n35), .ZN(N25) );
  FA1D0BWP12T30P140 U62 ( .A(n38), .B(n37), .CI(n36), .CO(n24), .S(N27) );
  FA1D0BWP12T30P140 U63 ( .A(n41), .B(n40), .CI(n39), .CO(n36), .S(N26) );
  CKBD0BWP12T30P140 U64 ( .I(clk), .Z(n43) );
  CKBD0BWP12T30P140 U65 ( .I(rst_n), .Z(n42) );
endmodule

