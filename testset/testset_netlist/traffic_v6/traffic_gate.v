/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:15:25 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [3:0] cnt;
  wire   [3:0] next;

  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(next[1]), .CP(clk), .CDN(rst_n), .Q(
        cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(next[2]), .CP(clk), .CDN(rst_n), .Q(
        cnt[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(next[0]), .CP(clk), .CDN(rst_n), .Q(
        cnt[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(next[3]), .CP(clk), .CDN(rst_n), .Q(
        cnt[3]) );
  ND2D0BWP12T30P140 U18 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n9) );
  NR2D0BWP12T30P140 U19 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n14) );
  INVD0BWP12T30P140 U20 ( .I(n14), .ZN(n16) );
  AN2D0BWP12T30P140 U21 ( .A1(n9), .A2(n16), .Z(next[1]) );
  INVD0BWP12T30P140 U22 ( .I(cnt[2]), .ZN(n15) );
  NR2D0BWP12T30P140 U23 ( .A1(n15), .A2(n9), .ZN(n11) );
  AOI21D0BWP12T30P140 U24 ( .A1(n15), .A2(n9), .B(n11), .ZN(next[2]) );
  NR2D0BWP12T30P140 U25 ( .A1(cnt[2]), .A2(n16), .ZN(n12) );
  INVD0BWP12T30P140 U26 ( .I(cnt[3]), .ZN(n13) );
  INVD0BWP12T30P140 U27 ( .I(n11), .ZN(n10) );
  OAI32D0BWP12T30P140 U28 ( .A1(n11), .A2(n12), .A3(n13), .B1(cnt[3]), .B2(n10), .ZN(next[3]) );
  AOI21D0BWP12T30P140 U29 ( .A1(n12), .A2(cnt[3]), .B(cnt[0]), .ZN(next[0]) );
  NR2D0BWP12T30P140 U30 ( .A1(cnt[2]), .A2(cnt[3]), .ZN(lights[0]) );
  OAI21D0BWP12T30P140 U31 ( .A1(n14), .A2(n15), .B(n13), .ZN(lights[2]) );
  NR3D0BWP12T30P140 U32 ( .A1(cnt[3]), .A2(n16), .A3(n15), .ZN(lights[1]) );
endmodule

