/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:22:33 2026
/////////////////////////////////////////////////////////////


module freq_div ( CLK_in, CLK_50, CLK_10, CLK_1, RST );
  input CLK_in, RST;
  output CLK_50, CLK_10, CLK_1;
  wire   N11, N12, N13, N14, N23, N24, N25, N26, N27, N28, N29, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32;
  wire   [3:0] c10;
  wire   [6:0] c100;

  DFCNQD1BWP12T30P140 clk_50_r_reg ( .D(n14), .CP(CLK_in), .CDN(n11), .Q(
        CLK_50) );
  DFCNQD1BWP12T30P140 clk_10_r_reg ( .D(n13), .CP(CLK_in), .CDN(n11), .Q(
        CLK_10) );
  DFCNQD1BWP12T30P140 clk_1_r_reg ( .D(n12), .CP(CLK_in), .CDN(n11), .Q(CLK_1)
         );
  DFCNQD1BWP12T30P140 c100_reg_2_ ( .D(N25), .CP(CLK_in), .CDN(n11), .Q(
        c100[2]) );
  DFCNQD1BWP12T30P140 c100_reg_4_ ( .D(N27), .CP(CLK_in), .CDN(n11), .Q(
        c100[4]) );
  DFCNQD1BWP12T30P140 c100_reg_1_ ( .D(N24), .CP(CLK_in), .CDN(n11), .Q(
        c100[1]) );
  DFCNQD1BWP12T30P140 c100_reg_0_ ( .D(N23), .CP(CLK_in), .CDN(n11), .Q(
        c100[0]) );
  DFCNQD1BWP12T30P140 c10_reg_2_ ( .D(N13), .CP(CLK_in), .CDN(n11), .Q(c10[2])
         );
  DFCNQD1BWP12T30P140 c100_reg_3_ ( .D(N26), .CP(CLK_in), .CDN(n11), .Q(
        c100[3]) );
  DFCNQD1BWP12T30P140 c10_reg_1_ ( .D(N12), .CP(CLK_in), .CDN(n11), .Q(c10[1])
         );
  DFCNQD1BWP12T30P140 c100_reg_6_ ( .D(N29), .CP(CLK_in), .CDN(n11), .Q(
        c100[6]) );
  DFCNQD1BWP12T30P140 c10_reg_3_ ( .D(N14), .CP(CLK_in), .CDN(n11), .Q(c10[3])
         );
  DFCNQD1BWP12T30P140 c10_reg_0_ ( .D(N11), .CP(CLK_in), .CDN(n11), .Q(c10[0])
         );
  DFCNQD1BWP12T30P140 c100_reg_5_ ( .D(N28), .CP(CLK_in), .CDN(n11), .Q(
        c100[5]) );
  INVD0BWP12T30P140 U28 ( .I(CLK_50), .ZN(n14) );
  INVD0BWP12T30P140 U29 ( .I(c100[0]), .ZN(N23) );
  INVD0BWP12T30P140 U30 ( .I(c100[4]), .ZN(n19) );
  INVD0BWP12T30P140 U31 ( .I(c100[2]), .ZN(n24) );
  ND2D0BWP12T30P140 U32 ( .A1(c100[0]), .A2(c100[1]), .ZN(n25) );
  NR2D0BWP12T30P140 U33 ( .A1(n24), .A2(n25), .ZN(n23) );
  ND2D0BWP12T30P140 U34 ( .A1(c100[3]), .A2(n23), .ZN(n20) );
  NR2D0BWP12T30P140 U35 ( .A1(n19), .A2(n20), .ZN(n26) );
  NR4D0BWP12T30P140 U36 ( .A1(c100[1]), .A2(c100[6]), .A3(c100[2]), .A4(N23), 
        .ZN(n15) );
  IND4D1BWP12T30P140 U37 ( .A1(c100[3]), .B1(c100[4]), .B2(c100[5]), .B3(n15), 
        .ZN(n32) );
  OAI21D0BWP12T30P140 U38 ( .A1(c100[5]), .A2(n26), .B(n32), .ZN(n16) );
  AOI21D0BWP12T30P140 U39 ( .A1(c100[5]), .A2(n26), .B(n16), .ZN(N28) );
  INVD0BWP12T30P140 U40 ( .I(c10[2]), .ZN(n18) );
  NR4D0BWP12T30P140 U41 ( .A1(c10[0]), .A2(c10[1]), .A3(c10[3]), .A4(n18), 
        .ZN(n29) );
  NR2D0BWP12T30P140 U42 ( .A1(c10[0]), .A2(n29), .ZN(N11) );
  ND2D0BWP12T30P140 U43 ( .A1(c10[1]), .A2(c10[0]), .ZN(n21) );
  OAI21D0BWP12T30P140 U44 ( .A1(n18), .A2(n21), .B(c10[3]), .ZN(n17) );
  OAI31D0BWP12T30P140 U45 ( .A1(n18), .A2(c10[3]), .A3(n21), .B(n17), .ZN(N14)
         );
  INVD0BWP12T30P140 U46 ( .I(n32), .ZN(n31) );
  AOI211D0BWP12T30P140 U47 ( .A1(n19), .A2(n20), .B(n26), .C(n31), .ZN(N27) );
  OA21D0BWP12T30P140 U48 ( .A1(c100[3]), .A2(n23), .B(n20), .Z(N26) );
  OA21D0BWP12T30P140 U49 ( .A1(c10[1]), .A2(c10[0]), .B(n21), .Z(N12) );
  ND2D0BWP12T30P140 U50 ( .A1(c10[2]), .A2(n21), .ZN(n22) );
  OAI22D0BWP12T30P140 U51 ( .A1(n22), .A2(n29), .B1(c10[2]), .B2(n21), .ZN(N13) );
  AOI21D0BWP12T30P140 U52 ( .A1(n24), .A2(n25), .B(n23), .ZN(N25) );
  OA211D0BWP12T30P140 U53 ( .A1(c100[0]), .A2(c100[1]), .B(n25), .C(n32), .Z(
        N24) );
  INVD0BWP12T30P140 U54 ( .I(RST), .ZN(n11) );
  INVD0BWP12T30P140 U55 ( .I(c100[6]), .ZN(n28) );
  ND2D0BWP12T30P140 U56 ( .A1(c100[5]), .A2(n26), .ZN(n27) );
  MUX2ND0BWP12T30P140 U57 ( .I0(c100[6]), .I1(n28), .S(n27), .ZN(N29) );
  INVD0BWP12T30P140 U58 ( .I(n29), .ZN(n30) );
  MUX2ND0BWP12T30P140 U59 ( .I0(n30), .I1(n29), .S(CLK_10), .ZN(n13) );
  MUX2ND0BWP12T30P140 U60 ( .I0(n32), .I1(n31), .S(CLK_1), .ZN(n12) );
endmodule

