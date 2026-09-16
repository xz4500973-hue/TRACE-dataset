/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:14:46 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   gclk_en, gclk, N11, N12, N13, N14, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [3:0] cnt;

  LND1BWP12T30P140 gclk_en_reg ( .D(n10), .EN(clk), .QN(gclk_en) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N12), .CP(gclk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N13), .CP(gclk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N11), .CP(gclk), .CDN(rst_n), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N14), .CP(gclk), .CDN(rst_n), .Q(cnt[3])
         );
  TIELBWP12T30P140 U20 ( .ZN(n10) );
  INVD0BWP12T30P140 U21 ( .I(cnt[2]), .ZN(n17) );
  ND2D0BWP12T30P140 U22 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n14) );
  NR2D0BWP12T30P140 U23 ( .A1(n17), .A2(n14), .ZN(n13) );
  NR2D0BWP12T30P140 U24 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n16) );
  INVD0BWP12T30P140 U25 ( .I(n16), .ZN(n18) );
  NR2D0BWP12T30P140 U26 ( .A1(cnt[2]), .A2(n18), .ZN(n12) );
  INVD0BWP12T30P140 U27 ( .I(cnt[3]), .ZN(n15) );
  INVD0BWP12T30P140 U28 ( .I(n13), .ZN(n11) );
  OAI32D0BWP12T30P140 U29 ( .A1(n13), .A2(n12), .A3(n15), .B1(cnt[3]), .B2(n11), .ZN(N14) );
  AN2D0BWP12T30P140 U30 ( .A1(n14), .A2(n18), .Z(N12) );
  AOI21D0BWP12T30P140 U31 ( .A1(n12), .A2(cnt[3]), .B(cnt[0]), .ZN(N11) );
  AOI21D0BWP12T30P140 U32 ( .A1(n17), .A2(n14), .B(n13), .ZN(N13) );
  AN2D0BWP12T30P140 U33 ( .A1(gclk_en), .A2(clk), .Z(gclk) );
  NR2D0BWP12T30P140 U34 ( .A1(cnt[2]), .A2(cnt[3]), .ZN(lights[0]) );
  OAI21D0BWP12T30P140 U35 ( .A1(n16), .A2(n17), .B(n15), .ZN(lights[2]) );
  NR3D0BWP12T30P140 U36 ( .A1(cnt[3]), .A2(n18), .A3(n17), .ZN(lights[1]) );
endmodule

