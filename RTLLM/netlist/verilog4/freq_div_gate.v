/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:45:11 2026
/////////////////////////////////////////////////////////////


module freq_div ( CLK_in, CLK_50, CLK_10, CLK_1, RST );
  input CLK_in, RST;
  output CLK_50, CLK_10, CLK_1;
  wire   N11, N12, N13, N14, N15, N16, N17, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;
  wire   [6:0] total_cnt;

  DFCNQD1BWP12T30P140 clk_50_r_reg ( .D(n12), .CP(CLK_in), .CDN(n9), .Q(CLK_50) );
  DFCNQD1BWP12T30P140 clk_10_r_reg ( .D(n11), .CP(CLK_in), .CDN(n9), .Q(CLK_10) );
  DFCNQD1BWP12T30P140 clk_1_r_reg ( .D(n10), .CP(CLK_in), .CDN(n9), .Q(CLK_1)
         );
  DFCNQD1BWP12T30P140 total_cnt_reg_3_ ( .D(N14), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[3]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_1_ ( .D(N12), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[1]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_5_ ( .D(N16), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[5]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_6_ ( .D(N17), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[6]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_2_ ( .D(N13), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[2]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_0_ ( .D(N11), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[0]) );
  DFCNQD1BWP12T30P140 total_cnt_reg_4_ ( .D(N15), .CP(CLK_in), .CDN(n9), .Q(
        total_cnt[4]) );
  INVD0BWP12T30P140 U22 ( .I(total_cnt[0]), .ZN(N11) );
  INVD0BWP12T30P140 U23 ( .I(total_cnt[2]), .ZN(n32) );
  INVD0BWP12T30P140 U24 ( .I(total_cnt[1]), .ZN(n15) );
  ND2D0BWP12T30P140 U25 ( .A1(N11), .A2(n15), .ZN(n20) );
  OAI21D0BWP12T30P140 U26 ( .A1(n32), .A2(n20), .B(CLK_10), .ZN(n13) );
  OAI31D0BWP12T30P140 U27 ( .A1(n32), .A2(CLK_10), .A3(n20), .B(n13), .ZN(n11)
         );
  NR2D0BWP12T30P140 U28 ( .A1(total_cnt[2]), .A2(total_cnt[3]), .ZN(n14) );
  ND2D0BWP12T30P140 U29 ( .A1(n14), .A2(total_cnt[5]), .ZN(n21) );
  INVD0BWP12T30P140 U30 ( .I(total_cnt[6]), .ZN(n22) );
  ND4D0BWP12T30P140 U31 ( .A1(total_cnt[0]), .A2(total_cnt[4]), .A3(n22), .A4(
        n15), .ZN(n17) );
  OAI21D0BWP12T30P140 U32 ( .A1(n21), .A2(n17), .B(CLK_1), .ZN(n16) );
  OAI31D0BWP12T30P140 U33 ( .A1(n21), .A2(CLK_1), .A3(n17), .B(n16), .ZN(n10)
         );
  INVD0BWP12T30P140 U34 ( .I(total_cnt[3]), .ZN(n19) );
  ND2D0BWP12T30P140 U35 ( .A1(total_cnt[0]), .A2(total_cnt[1]), .ZN(n31) );
  INVD0BWP12T30P140 U36 ( .I(n31), .ZN(n18) );
  ND2D0BWP12T30P140 U37 ( .A1(total_cnt[2]), .A2(n18), .ZN(n28) );
  NR2D0BWP12T30P140 U38 ( .A1(n19), .A2(n28), .ZN(n27) );
  AOI21D0BWP12T30P140 U39 ( .A1(n19), .A2(n28), .B(n27), .ZN(N14) );
  AN2D0BWP12T30P140 U40 ( .A1(n20), .A2(n31), .Z(N12) );
  INVD0BWP12T30P140 U41 ( .I(CLK_50), .ZN(n12) );
  INVD0BWP12T30P140 U42 ( .I(total_cnt[5]), .ZN(n25) );
  ND2D0BWP12T30P140 U43 ( .A1(total_cnt[4]), .A2(n27), .ZN(n26) );
  NR2D0BWP12T30P140 U44 ( .A1(n25), .A2(n26), .ZN(n24) );
  NR4D0BWP12T30P140 U45 ( .A1(total_cnt[4]), .A2(n22), .A3(n31), .A4(n21), 
        .ZN(n29) );
  NR2D0BWP12T30P140 U46 ( .A1(total_cnt[6]), .A2(n24), .ZN(n23) );
  AOI211D0BWP12T30P140 U47 ( .A1(total_cnt[6]), .A2(n24), .B(n29), .C(n23), 
        .ZN(N17) );
  AOI211D0BWP12T30P140 U48 ( .A1(n25), .A2(n26), .B(n24), .C(n29), .ZN(N16) );
  OA21D0BWP12T30P140 U49 ( .A1(total_cnt[4]), .A2(n27), .B(n26), .Z(N15) );
  INVD0BWP12T30P140 U50 ( .I(n28), .ZN(n30) );
  AOI211D0BWP12T30P140 U51 ( .A1(n32), .A2(n31), .B(n30), .C(n29), .ZN(N13) );
  INVD0BWP12T30P140 U52 ( .I(RST), .ZN(n9) );
endmodule

