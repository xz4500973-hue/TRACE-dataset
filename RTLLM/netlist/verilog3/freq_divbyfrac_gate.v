/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:21:37 2026
/////////////////////////////////////////////////////////////


module freq_divbyfrac ( rst_n, clk, clk_div );
  input rst_n, clk;
  output clk_div;
  wire   pos_r, N8, N9, N10, N11, N12, neg_r, N14, n9, n10, n11, n12, n13, n14,
         n15, n16, n17;
  wire   [3:0] cnt;

  DFNCND1BWP12T30P140 neg_r_reg ( .D(N14), .CPN(clk), .CDN(rst_n), .Q(neg_r)
         );
  DFCNQD1BWP12T30P140 pos_r_reg ( .D(N12), .CP(clk), .CDN(rst_n), .Q(pos_r) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  NR3D0BWP12T30P140 U18 ( .A1(cnt[3]), .A2(cnt[1]), .A3(cnt[0]), .ZN(N12) );
  INVD0BWP12T30P140 U19 ( .I(cnt[1]), .ZN(n13) );
  ND2D0BWP12T30P140 U20 ( .A1(cnt[0]), .A2(n13), .ZN(n10) );
  INVD0BWP12T30P140 U21 ( .I(N12), .ZN(n9) );
  INVD0BWP12T30P140 U22 ( .I(cnt[2]), .ZN(n12) );
  OAI32D0BWP12T30P140 U23 ( .A1(cnt[2]), .A2(cnt[3]), .A3(n10), .B1(n9), .B2(
        n12), .ZN(N14) );
  ND2D0BWP12T30P140 U24 ( .A1(cnt[1]), .A2(cnt[2]), .ZN(n11) );
  NR2D0BWP12T30P140 U25 ( .A1(cnt[3]), .A2(n11), .ZN(n16) );
  NR2D0BWP12T30P140 U26 ( .A1(n16), .A2(cnt[0]), .ZN(N8) );
  INVD0BWP12T30P140 U27 ( .I(cnt[0]), .ZN(n14) );
  NR2D0BWP12T30P140 U28 ( .A1(N8), .A2(n11), .ZN(n15) );
  AOI221D0BWP12T30P140 U29 ( .A1(n13), .A2(n12), .B1(n14), .B2(n12), .C(n15), 
        .ZN(N10) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n14), .A2(n13), .B1(n13), .B2(N8), .ZN(N9) );
  INVD0BWP12T30P140 U31 ( .I(n15), .ZN(n17) );
  AO22D0BWP12T30P140 U32 ( .A1(cnt[3]), .A2(n17), .B1(n16), .B2(cnt[0]), .Z(
        N11) );
  OR2D0BWP12T30P140 U33 ( .A1(pos_r), .A2(neg_r), .Z(clk_div) );
endmodule

