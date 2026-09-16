/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:54:27 2026
/////////////////////////////////////////////////////////////


module lfsr_feedback_LENGTH8 ( qi, fb, fb_rew );
  input [8:1] qi;
  output fb, fb_rew;
  wire   n1;

  XNR2D0BWP12T30P140 U1 ( .A1(qi[5]), .A2(qi[6]), .ZN(n1) );
  XNR3D0BWP12T30P140 U2 ( .A1(qi[7]), .A2(qi[1]), .A3(n1), .ZN(fb_rew) );
  XNR3D0BWP12T30P140 U3 ( .A1(qi[4]), .A2(qi[8]), .A3(n1), .ZN(fb) );
endmodule


module vcnt ( clk, rst, clear, set, rew, cke, q, q_bin, z, zq, level1, level2
 );
  output [8:1] q;
  output [8:1] q_bin;
  input clk, rst, clear, set, rew, cke;
  output z, zq, level1, level2;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [8:1] q_next_bin_fw;

  lfsr_feedback_LENGTH8 u_lfsr_fb ( .qi(q) );
  DFCNQD1BWP12T30P140 qi_reg_3_ ( .D(q_next_bin_fw[3]), .CP(clk), .CDN(n8), 
        .Q(q[3]) );
  DFCNQD1BWP12T30P140 qi_reg_2_ ( .D(q_next_bin_fw[2]), .CP(clk), .CDN(n8), 
        .Q(q[2]) );
  DFCNQD1BWP12T30P140 qi_reg_6_ ( .D(q_next_bin_fw[6]), .CP(clk), .CDN(n8), 
        .Q(q[6]) );
  DFCNQD1BWP12T30P140 qi_reg_4_ ( .D(q_next_bin_fw[4]), .CP(clk), .CDN(n8), 
        .Q(q[4]) );
  DFCNQD1BWP12T30P140 qi_reg_7_ ( .D(q_next_bin_fw[7]), .CP(clk), .CDN(n8), 
        .Q(q[7]) );
  DFCNQD1BWP12T30P140 qi_reg_1_ ( .D(q_next_bin_fw[1]), .CP(clk), .CDN(n8), 
        .Q(q[1]) );
  DFCNQD1BWP12T30P140 qi_reg_5_ ( .D(q_next_bin_fw[5]), .CP(clk), .CDN(n8), 
        .Q(q[5]) );
  DFCNQD1BWP12T30P140 qi_reg_8_ ( .D(q_next_bin_fw[8]), .CP(clk), .CDN(n8), 
        .Q(q[8]) );
  INVD0BWP12T30P140 U11 ( .I(q[1]), .ZN(q_next_bin_fw[1]) );
  INVD0BWP12T30P140 U12 ( .I(q[2]), .ZN(n10) );
  NR2D0BWP12T30P140 U13 ( .A1(q_next_bin_fw[1]), .A2(n10), .ZN(n9) );
  ND3D0BWP12T30P140 U14 ( .A1(q[1]), .A2(q[2]), .A3(q[3]), .ZN(n15) );
  OA21D0BWP12T30P140 U15 ( .A1(n9), .A2(q[3]), .B(n15), .Z(q_next_bin_fw[3])
         );
  AOI21D0BWP12T30P140 U16 ( .A1(q_next_bin_fw[1]), .A2(n10), .B(n9), .ZN(
        q_next_bin_fw[2]) );
  INVD0BWP12T30P140 U17 ( .I(q[4]), .ZN(n14) );
  NR2D0BWP12T30P140 U18 ( .A1(n15), .A2(n14), .ZN(n13) );
  ND2D0BWP12T30P140 U19 ( .A1(n13), .A2(q[5]), .ZN(n12) );
  INVD0BWP12T30P140 U20 ( .I(q[6]), .ZN(n11) );
  NR2D0BWP12T30P140 U21 ( .A1(n12), .A2(n11), .ZN(n16) );
  AOI21D0BWP12T30P140 U22 ( .A1(n12), .A2(n11), .B(n16), .ZN(q_next_bin_fw[6])
         );
  OA21D0BWP12T30P140 U23 ( .A1(n13), .A2(q[5]), .B(n12), .Z(q_next_bin_fw[5])
         );
  AOI21D0BWP12T30P140 U24 ( .A1(n15), .A2(n14), .B(n13), .ZN(q_next_bin_fw[4])
         );
  ND2D0BWP12T30P140 U25 ( .A1(n16), .A2(q[7]), .ZN(n17) );
  OA21D0BWP12T30P140 U26 ( .A1(n16), .A2(q[7]), .B(n17), .Z(q_next_bin_fw[7])
         );
  INVD0BWP12T30P140 U27 ( .I(rst), .ZN(n8) );
  INVD0BWP12T30P140 U28 ( .I(q[8]), .ZN(n18) );
  MUX2ND0BWP12T30P140 U29 ( .I0(q[8]), .I1(n18), .S(n17), .ZN(q_next_bin_fw[8]) );
endmodule

