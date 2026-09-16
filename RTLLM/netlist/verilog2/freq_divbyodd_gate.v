/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:58:24 2026
/////////////////////////////////////////////////////////////


module freq_divbyodd ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   clk_div1, N10, N11, N12, clk_div2, N19, N20, N21, n3, n4, n5, n6;
  wire   [2:0] cnt1;
  wire   [2:0] cnt2;

  DFSNQD1BWP12T30P140 clk_div1_reg ( .D(n3), .CP(clk), .SDN(rst_n), .Q(
        clk_div1) );
  DFNCND1BWP12T30P140 cnt2_reg_0_ ( .D(N19), .CPN(clk), .CDN(rst_n), .Q(
        cnt2[0]) );
  DFNCND1BWP12T30P140 cnt2_reg_2_ ( .D(N21), .CPN(clk), .CDN(rst_n), .Q(
        cnt2[2]) );
  DFNCND1BWP12T30P140 cnt2_reg_1_ ( .D(N20), .CPN(clk), .CDN(rst_n), .Q(
        cnt2[1]) );
  DFNSND1BWP12T30P140 clk_div2_reg ( .D(n4), .CPN(clk), .SDN(rst_n), .Q(
        clk_div2) );
  DFCNQD1BWP12T30P140 cnt1_reg_2_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(cnt1[2]) );
  DFCNQD1BWP12T30P140 cnt1_reg_0_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt1[0]) );
  DFCNQD1BWP12T30P140 cnt1_reg_1_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt1[1]) );
  NR2D0BWP12T30P140 U14 ( .A1(cnt1[1]), .A2(cnt1[2]), .ZN(n3) );
  NR2D0BWP12T30P140 U15 ( .A1(cnt1[0]), .A2(cnt1[2]), .ZN(N10) );
  AO22D0BWP12T30P140 U16 ( .A1(cnt1[0]), .A2(n3), .B1(cnt1[1]), .B2(N10), .Z(
        N11) );
  IND3D1BWP12T30P140 U17 ( .A1(cnt2[2]), .B1(cnt2[1]), .B2(cnt2[0]), .ZN(n5)
         );
  INVD0BWP12T30P140 U18 ( .I(n5), .ZN(N21) );
  NR2D0BWP12T30P140 U19 ( .A1(cnt2[1]), .A2(cnt2[2]), .ZN(n4) );
  NR2D0BWP12T30P140 U20 ( .A1(cnt2[0]), .A2(cnt2[2]), .ZN(N19) );
  AO22D0BWP12T30P140 U21 ( .A1(cnt2[0]), .A2(n4), .B1(cnt2[1]), .B2(N19), .Z(
        N20) );
  IND3D1BWP12T30P140 U22 ( .A1(cnt1[2]), .B1(cnt1[1]), .B2(cnt1[0]), .ZN(n6)
         );
  INVD0BWP12T30P140 U23 ( .I(n6), .ZN(N12) );
  OR2D0BWP12T30P140 U24 ( .A1(clk_div1), .A2(clk_div2), .Z(clk_div) );
endmodule

