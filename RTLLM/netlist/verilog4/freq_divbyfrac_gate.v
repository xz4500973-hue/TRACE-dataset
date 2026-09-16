/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:44:16 2026
/////////////////////////////////////////////////////////////


module freq_divbyfrac ( rst_n, clk, clk_div );
  input rst_n, clk;
  output clk_div;
  wire   N8, N9, N10, N11, N12, n7, n8, n9, n10, n11, n12, n13;
  wire   [3:0] cnt;

  DFCNQD1BWP12T30P140 toggle_reg ( .D(N12), .CP(clk), .CDN(rst_n), .Q(clk_div)
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  NR2D0BWP12T30P140 U14 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n7) );
  INVD0BWP12T30P140 U15 ( .I(cnt[3]), .ZN(n13) );
  ND3D0BWP12T30P140 U16 ( .A1(n13), .A2(cnt[1]), .A3(cnt[2]), .ZN(n11) );
  ND2D0BWP12T30P140 U17 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n9) );
  ND2D0BWP12T30P140 U18 ( .A1(n11), .A2(n9), .ZN(n10) );
  NR2D0BWP12T30P140 U19 ( .A1(n7), .A2(n10), .ZN(N9) );
  AN2D0BWP12T30P140 U20 ( .A1(n7), .A2(n13), .Z(N12) );
  INVD0BWP12T30P140 U21 ( .I(cnt[2]), .ZN(n8) );
  AOI22D0BWP12T30P140 U22 ( .A1(cnt[2]), .A2(n10), .B1(n9), .B2(n8), .ZN(N10)
         );
  INR2D1BWP12T30P140 U23 ( .A1(n11), .B1(cnt[0]), .ZN(N8) );
  ND3D0BWP12T30P140 U24 ( .A1(cnt[2]), .A2(cnt[1]), .A3(cnt[0]), .ZN(n12) );
  MUX2ND0BWP12T30P140 U25 ( .I0(cnt[3]), .I1(n13), .S(n12), .ZN(N11) );
endmodule

