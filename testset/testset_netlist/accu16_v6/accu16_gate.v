/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:43:14 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   gclk_en, gclk, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13,
         N14, N15, N16, N17, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17;

  LND1BWP12T30P140 gclk_en_reg ( .D(n1), .EN(clk), .QN(gclk_en) );
  DFCNQD1BWP12T30P140 acc_r_reg_15_ ( .D(N17), .CP(gclk), .CDN(rst_n), .Q(
        acc[15]) );
  DFCNQD1BWP12T30P140 acc_r_reg_0_ ( .D(N2), .CP(gclk), .CDN(rst_n), .Q(acc[0]) );
  DFCNQD1BWP12T30P140 acc_r_reg_14_ ( .D(N16), .CP(gclk), .CDN(rst_n), .Q(
        acc[14]) );
  DFCNQD1BWP12T30P140 acc_r_reg_13_ ( .D(N15), .CP(gclk), .CDN(rst_n), .Q(
        acc[13]) );
  DFCNQD1BWP12T30P140 acc_r_reg_12_ ( .D(N14), .CP(gclk), .CDN(rst_n), .Q(
        acc[12]) );
  DFCNQD1BWP12T30P140 acc_r_reg_11_ ( .D(N13), .CP(gclk), .CDN(rst_n), .Q(
        acc[11]) );
  DFCNQD1BWP12T30P140 acc_r_reg_10_ ( .D(N12), .CP(gclk), .CDN(rst_n), .Q(
        acc[10]) );
  DFCNQD1BWP12T30P140 acc_r_reg_9_ ( .D(N11), .CP(gclk), .CDN(rst_n), .Q(
        acc[9]) );
  DFCNQD1BWP12T30P140 acc_r_reg_8_ ( .D(N10), .CP(gclk), .CDN(rst_n), .Q(
        acc[8]) );
  DFCNQD1BWP12T30P140 acc_r_reg_7_ ( .D(N9), .CP(gclk), .CDN(rst_n), .Q(acc[7]) );
  DFCNQD1BWP12T30P140 acc_r_reg_6_ ( .D(N8), .CP(gclk), .CDN(rst_n), .Q(acc[6]) );
  DFCNQD1BWP12T30P140 acc_r_reg_5_ ( .D(N7), .CP(gclk), .CDN(rst_n), .Q(acc[5]) );
  DFCNQD1BWP12T30P140 acc_r_reg_4_ ( .D(N6), .CP(gclk), .CDN(rst_n), .Q(acc[4]) );
  DFCNQD1BWP12T30P140 acc_r_reg_3_ ( .D(N5), .CP(gclk), .CDN(rst_n), .Q(acc[3]) );
  DFCNQD1BWP12T30P140 acc_r_reg_2_ ( .D(N4), .CP(gclk), .CDN(rst_n), .Q(acc[2]) );
  DFCNQD1BWP12T30P140 acc_r_reg_1_ ( .D(N3), .CP(gclk), .CDN(rst_n), .Q(acc[1]) );
  AN2D0BWP12T30P140 U6 ( .A1(din[0]), .A2(acc[0]), .Z(n17) );
  XOR3D0BWP12T30P140 U7 ( .A1(acc[15]), .A2(din[15]), .A3(n3), .Z(N17) );
  FA1D0BWP12T30P140 U8 ( .A(acc[14]), .B(din[14]), .CI(n4), .CO(n3), .S(N16)
         );
  FA1D0BWP12T30P140 U9 ( .A(acc[13]), .B(din[13]), .CI(n5), .CO(n4), .S(N15)
         );
  FA1D0BWP12T30P140 U10 ( .A(acc[12]), .B(din[12]), .CI(n6), .CO(n5), .S(N14)
         );
  FA1D0BWP12T30P140 U11 ( .A(acc[11]), .B(din[11]), .CI(n7), .CO(n6), .S(N13)
         );
  INVD0BWP12T30P140 U12 ( .I(en), .ZN(n1) );
  FA1D0BWP12T30P140 U13 ( .A(acc[10]), .B(din[10]), .CI(n8), .CO(n7), .S(N12)
         );
  FA1D0BWP12T30P140 U14 ( .A(acc[9]), .B(din[9]), .CI(n9), .CO(n8), .S(N11) );
  FA1D0BWP12T30P140 U15 ( .A(acc[8]), .B(din[8]), .CI(n10), .CO(n9), .S(N10)
         );
  FA1D0BWP12T30P140 U16 ( .A(acc[7]), .B(din[7]), .CI(n11), .CO(n10), .S(N9)
         );
  FA1D0BWP12T30P140 U17 ( .A(acc[6]), .B(din[6]), .CI(n12), .CO(n11), .S(N8)
         );
  FA1D0BWP12T30P140 U18 ( .A(acc[5]), .B(din[5]), .CI(n13), .CO(n12), .S(N7)
         );
  FA1D0BWP12T30P140 U19 ( .A(acc[4]), .B(din[4]), .CI(n14), .CO(n13), .S(N6)
         );
  FA1D0BWP12T30P140 U20 ( .A(acc[3]), .B(din[3]), .CI(n15), .CO(n14), .S(N5)
         );
  FA1D0BWP12T30P140 U21 ( .A(acc[2]), .B(din[2]), .CI(n16), .CO(n15), .S(N4)
         );
  FA1D0BWP12T30P140 U22 ( .A(acc[1]), .B(din[1]), .CI(n17), .CO(n16), .S(N3)
         );
  AN2D0BWP12T30P140 U23 ( .A1(gclk_en), .A2(clk), .Z(gclk) );
  IAO21D0BWP12T30P140 U24 ( .A1(din[0]), .A2(acc[0]), .B(n17), .ZN(N2) );
endmodule

