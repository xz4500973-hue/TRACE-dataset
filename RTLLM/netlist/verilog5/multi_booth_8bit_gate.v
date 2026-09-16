/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:10:47 2026
/////////////////////////////////////////////////////////////


module multi_booth_8bit ( p, rdy, clk, reset, a, b );
  output [15:0] p;
  input [7:0] a;
  input [7:0] b;
  input clk, reset;
  output rdy;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [3:0] cnt;
  assign p[0] = p[15];
  assign p[1] = p[15];
  assign p[2] = p[15];
  assign p[3] = p[15];
  assign p[4] = p[15];
  assign p[5] = p[15];
  assign p[6] = p[15];
  assign p[7] = p[15];
  assign p[8] = p[15];
  assign p[9] = p[15];
  assign p[10] = p[15];
  assign p[11] = p[15];
  assign p[12] = p[15];
  assign p[13] = p[15];
  assign p[14] = p[15];

  DFCNQD1BWP12T30P140 rdy_reg ( .D(n9), .CP(clk), .CDN(n5), .Q(rdy) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n6), .CP(clk), .CDN(n5), .Q(cnt[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n8), .CP(clk), .CDN(n5), .Q(cnt[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n7), .CP(clk), .CDN(n5), .Q(cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n10), .CP(clk), .CDN(n5), .Q(cnt[3]) );
  TIELBWP12T30P140 U14 ( .ZN(p[15]) );
  AOI31D0BWP12T30P140 U15 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .B(cnt[3]), 
        .ZN(n11) );
  INVD0BWP12T30P140 U16 ( .I(n11), .ZN(n10) );
  ND2D0BWP12T30P140 U17 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(n13) );
  OAI21D0BWP12T30P140 U18 ( .A1(cnt[3]), .A2(n11), .B(cnt[2]), .ZN(n12) );
  OAI21D0BWP12T30P140 U19 ( .A1(n10), .A2(n13), .B(n12), .ZN(n6) );
  OR2D0BWP12T30P140 U20 ( .A1(rdy), .A2(cnt[3]), .Z(n9) );
  INVD0BWP12T30P140 U21 ( .I(cnt[3]), .ZN(n14) );
  ND2D0BWP12T30P140 U22 ( .A1(cnt[0]), .A2(n14), .ZN(n15) );
  OA21D0BWP12T30P140 U23 ( .A1(cnt[0]), .A2(n14), .B(n15), .Z(n8) );
  INVD0BWP12T30P140 U24 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U25 ( .I(cnt[1]), .ZN(n16) );
  MUX2ND0BWP12T30P140 U26 ( .I0(cnt[1]), .I1(n16), .S(n15), .ZN(n7) );
endmodule

