/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:21:08 2026
/////////////////////////////////////////////////////////////


module freq_divbyeven ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N7, N8, N9, n5, n6, n7, n8, n9, n10, n11;
  wire   [2:0] cnt;

  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 clk_div_reg ( .D(n5), .CP(clk), .CDN(rst_n), .Q(clk_div)
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N7), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U11 ( .I(cnt[2]), .ZN(n10) );
  ND2D0BWP12T30P140 U12 ( .A1(cnt[1]), .A2(n10), .ZN(n7) );
  INVD0BWP12T30P140 U13 ( .I(cnt[0]), .ZN(n9) );
  AN2D0BWP12T30P140 U14 ( .A1(n7), .A2(n9), .Z(N7) );
  OAI21D0BWP12T30P140 U15 ( .A1(cnt[0]), .A2(n7), .B(clk_div), .ZN(n6) );
  OAI31D0BWP12T30P140 U16 ( .A1(cnt[0]), .A2(clk_div), .A3(n7), .B(n6), .ZN(n5) );
  INVD0BWP12T30P140 U17 ( .I(cnt[1]), .ZN(n11) );
  NR2D0BWP12T30P140 U18 ( .A1(n9), .A2(n11), .ZN(n8) );
  OAI22D0BWP12T30P140 U19 ( .A1(n8), .A2(n10), .B1(n9), .B2(n7), .ZN(N9) );
  OAI32D0BWP12T30P140 U20 ( .A1(cnt[0]), .A2(n11), .A3(n10), .B1(cnt[1]), .B2(
        n9), .ZN(N8) );
endmodule

