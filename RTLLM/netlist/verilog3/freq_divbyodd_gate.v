/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:22:05 2026
/////////////////////////////////////////////////////////////


module freq_divbyodd ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N8, N9, N10, n3;
  wire   [2:0] cnt;

  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  IND3D1BWP12T30P140 U8 ( .A1(cnt[2]), .B1(cnt[1]), .B2(cnt[0]), .ZN(n3) );
  INVD0BWP12T30P140 U9 ( .I(n3), .ZN(N10) );
  NR2D0BWP12T30P140 U10 ( .A1(cnt[1]), .A2(cnt[2]), .ZN(clk_div) );
  NR2D0BWP12T30P140 U11 ( .A1(cnt[0]), .A2(cnt[2]), .ZN(N8) );
  AO22D0BWP12T30P140 U12 ( .A1(cnt[0]), .A2(clk_div), .B1(cnt[1]), .B2(N8), 
        .Z(N9) );
endmodule

