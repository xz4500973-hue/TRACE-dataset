/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:43:47 2026
/////////////////////////////////////////////////////////////


module freq_divbyeven ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N8, N9, n2, n3;
  wire   [1:0] cnt;

  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 clk_div_reg ( .D(n2), .CP(clk), .CDN(rst_n), .Q(clk_div)
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  INVD0BWP12T30P140 U7 ( .I(cnt[1]), .ZN(n3) );
  AN2D0BWP12T30P140 U8 ( .A1(cnt[0]), .A2(n3), .Z(N9) );
  NR2D0BWP12T30P140 U9 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(N8) );
  MUX2ND0BWP12T30P140 U10 ( .I0(n3), .I1(cnt[1]), .S(clk_div), .ZN(n2) );
endmodule

