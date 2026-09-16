/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:57:56 2026
/////////////////////////////////////////////////////////////


module freq_divbyfrac ( rst_n, clk, clk_div );
  input rst_n, clk;
  output clk_div;
  wire   N8, N9, N10, N11, N14, n7, n8, n9, n10, n11, n12;
  wire   [3:0] cnt;

  DFCNQD1BWP12T30P140 clk_div_r_reg ( .D(N14), .CP(clk), .CDN(rst_n), .Q(
        clk_div) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U14 ( .I(cnt[2]), .ZN(n9) );
  INVD0BWP12T30P140 U15 ( .I(cnt[1]), .ZN(n12) );
  NR3D0BWP12T30P140 U16 ( .A1(cnt[3]), .A2(n9), .A3(n12), .ZN(n7) );
  NR2D0BWP12T30P140 U17 ( .A1(cnt[0]), .A2(n7), .ZN(N8) );
  INVD0BWP12T30P140 U18 ( .I(cnt[0]), .ZN(n11) );
  NR2D0BWP12T30P140 U19 ( .A1(N8), .A2(n12), .ZN(n10) );
  AOI21D0BWP12T30P140 U20 ( .A1(n12), .A2(n11), .B(n10), .ZN(N9) );
  ND2D0BWP12T30P140 U21 ( .A1(cnt[2]), .A2(n10), .ZN(n8) );
  AO22D0BWP12T30P140 U22 ( .A1(cnt[3]), .A2(n8), .B1(cnt[0]), .B2(n7), .Z(N11)
         );
  AOI221D0BWP12T30P140 U23 ( .A1(cnt[2]), .A2(cnt[1]), .B1(cnt[0]), .B2(cnt[1]), .C(cnt[3]), .ZN(N14) );
  OAI32D0BWP12T30P140 U24 ( .A1(cnt[2]), .A2(n12), .A3(n11), .B1(n10), .B2(n9), 
        .ZN(N10) );
endmodule

