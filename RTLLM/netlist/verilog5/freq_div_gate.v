/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:07:23 2026
/////////////////////////////////////////////////////////////


module freq_div ( CLK_in, CLK_50, CLK_10, CLK_1, RST );
  input CLK_in, RST;
  output CLK_50, CLK_10, CLK_1;
  wire   N29, N30, N31, N32, N33, N34, N35, N43, N44, N45, N46, N47, N48, N49,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;
  wire   [6:0] cnt10;
  wire   [6:0] cnt100;

  DFCNQD1BWP12T30P140 cnt10_reg_4_ ( .D(N33), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[4]) );
  DFCNQD1BWP12T30P140 clk2_reg ( .D(n11), .CP(CLK_in), .CDN(n8), .Q(CLK_50) );
  DFCNQD1BWP12T30P140 clk10_reg ( .D(n10), .CP(CLK_in), .CDN(n8), .Q(CLK_10)
         );
  DFCNQD1BWP12T30P140 clk100_reg ( .D(n9), .CP(CLK_in), .CDN(n8), .Q(CLK_1) );
  DFCNQD1BWP12T30P140 cnt10_reg_6_ ( .D(N35), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[6]) );
  DFCNQD1BWP12T30P140 cnt100_reg_2_ ( .D(N45), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[2]) );
  DFCNQD1BWP12T30P140 cnt100_reg_4_ ( .D(N47), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[4]) );
  DFCNQD1BWP12T30P140 cnt100_reg_1_ ( .D(N44), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[1]) );
  DFCNQD1BWP12T30P140 cnt100_reg_0_ ( .D(N43), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[0]) );
  DFCNQD1BWP12T30P140 cnt10_reg_5_ ( .D(N34), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[5]) );
  DFCNQD1BWP12T30P140 cnt100_reg_3_ ( .D(N46), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[3]) );
  DFCNQD1BWP12T30P140 cnt10_reg_3_ ( .D(N32), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[3]) );
  DFCNQD1BWP12T30P140 cnt100_reg_6_ ( .D(N49), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[6]) );
  DFCNQD1BWP12T30P140 cnt100_reg_5_ ( .D(N48), .CP(CLK_in), .CDN(n8), .Q(
        cnt100[5]) );
  DFCNQD1BWP12T30P140 cnt10_reg_2_ ( .D(N31), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[2]) );
  DFCNQD1BWP12T30P140 cnt10_reg_1_ ( .D(N30), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[1]) );
  DFCNQD1BWP12T30P140 cnt10_reg_0_ ( .D(N29), .CP(CLK_in), .CDN(n8), .Q(
        cnt10[0]) );
  INVD0BWP12T30P140 U28 ( .I(cnt10[4]), .ZN(n12) );
  ND4D0BWP12T30P140 U29 ( .A1(cnt10[3]), .A2(cnt10[2]), .A3(cnt10[0]), .A4(
        cnt10[1]), .ZN(n20) );
  NR2D0BWP12T30P140 U30 ( .A1(n12), .A2(n20), .ZN(n23) );
  AOI21D0BWP12T30P140 U31 ( .A1(n12), .A2(n20), .B(n23), .ZN(N33) );
  INVD0BWP12T30P140 U32 ( .I(cnt10[6]), .ZN(n31) );
  IND4D1BWP12T30P140 U33 ( .A1(cnt10[0]), .B1(cnt10[2]), .B2(n31), .B3(n12), 
        .ZN(n13) );
  NR4D0BWP12T30P140 U34 ( .A1(cnt10[5]), .A2(cnt10[3]), .A3(cnt10[1]), .A4(n13), .ZN(n32) );
  NR2D0BWP12T30P140 U35 ( .A1(cnt10[0]), .A2(n32), .ZN(N29) );
  INVD0BWP12T30P140 U36 ( .I(cnt100[2]), .ZN(n14) );
  ND2D0BWP12T30P140 U37 ( .A1(cnt100[0]), .A2(cnt100[1]), .ZN(n24) );
  NR2D0BWP12T30P140 U38 ( .A1(n14), .A2(n24), .ZN(n22) );
  AOI21D0BWP12T30P140 U39 ( .A1(n14), .A2(n24), .B(n22), .ZN(N45) );
  MAOI22D0BWP12T30P140 U40 ( .A1(cnt10[0]), .A2(cnt10[1]), .B1(cnt10[1]), .B2(
        cnt10[0]), .ZN(N30) );
  ND2D0BWP12T30P140 U41 ( .A1(cnt10[0]), .A2(cnt10[1]), .ZN(n18) );
  INVD0BWP12T30P140 U42 ( .I(n18), .ZN(n15) );
  INVD0BWP12T30P140 U43 ( .I(cnt10[2]), .ZN(n19) );
  OAI32D0BWP12T30P140 U44 ( .A1(n15), .A2(n32), .A3(n19), .B1(cnt10[2]), .B2(
        n18), .ZN(N31) );
  INVD0BWP12T30P140 U45 ( .I(CLK_50), .ZN(n11) );
  INVD0BWP12T30P140 U46 ( .I(cnt100[0]), .ZN(N43) );
  INVD0BWP12T30P140 U47 ( .I(cnt100[4]), .ZN(n26) );
  ND2D0BWP12T30P140 U48 ( .A1(cnt100[3]), .A2(n22), .ZN(n25) );
  NR2D0BWP12T30P140 U49 ( .A1(n26), .A2(n25), .ZN(n27) );
  NR4D0BWP12T30P140 U50 ( .A1(cnt100[1]), .A2(cnt100[6]), .A3(cnt100[2]), .A4(
        N43), .ZN(n16) );
  IND4D1BWP12T30P140 U51 ( .A1(cnt100[3]), .B1(cnt100[4]), .B2(cnt100[5]), 
        .B3(n16), .ZN(n35) );
  OAI21D0BWP12T30P140 U52 ( .A1(cnt100[5]), .A2(n27), .B(n35), .ZN(n17) );
  AOI21D0BWP12T30P140 U53 ( .A1(cnt100[5]), .A2(n27), .B(n17), .ZN(N48) );
  NR2D0BWP12T30P140 U54 ( .A1(n19), .A2(n18), .ZN(n21) );
  OA21D0BWP12T30P140 U55 ( .A1(cnt10[3]), .A2(n21), .B(n20), .Z(N32) );
  OA21D0BWP12T30P140 U56 ( .A1(cnt100[3]), .A2(n22), .B(n25), .Z(N46) );
  ND2D0BWP12T30P140 U57 ( .A1(cnt10[5]), .A2(n23), .ZN(n30) );
  OA21D0BWP12T30P140 U58 ( .A1(cnt10[5]), .A2(n23), .B(n30), .Z(N34) );
  OA211D0BWP12T30P140 U59 ( .A1(cnt100[0]), .A2(cnt100[1]), .B(n24), .C(n35), 
        .Z(N44) );
  INVD0BWP12T30P140 U60 ( .I(n35), .ZN(n34) );
  AOI211D0BWP12T30P140 U61 ( .A1(n26), .A2(n25), .B(n27), .C(n34), .ZN(N47) );
  INVD0BWP12T30P140 U62 ( .I(RST), .ZN(n8) );
  INVD0BWP12T30P140 U63 ( .I(cnt100[6]), .ZN(n29) );
  ND2D0BWP12T30P140 U64 ( .A1(cnt100[5]), .A2(n27), .ZN(n28) );
  MUX2ND0BWP12T30P140 U65 ( .I0(cnt100[6]), .I1(n29), .S(n28), .ZN(N49) );
  MUX2ND0BWP12T30P140 U66 ( .I0(cnt10[6]), .I1(n31), .S(n30), .ZN(N35) );
  INVD0BWP12T30P140 U67 ( .I(n32), .ZN(n33) );
  MUX2ND0BWP12T30P140 U68 ( .I0(n33), .I1(n32), .S(CLK_10), .ZN(n10) );
  MUX2ND0BWP12T30P140 U69 ( .I0(n35), .I1(n34), .S(CLK_1), .ZN(n9) );
endmodule

