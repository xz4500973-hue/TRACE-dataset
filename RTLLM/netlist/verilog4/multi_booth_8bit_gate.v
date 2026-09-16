/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 11:39:50 2026
/////////////////////////////////////////////////////////////


module multi_booth_8bit ( p, rdy, clk, reset, a, b );
  output [15:0] p;
  input [7:0] a;
  input [7:0] b;
  input clk, reset;
  output rdy;
  wire   N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212,
         N213, N214, N215, N216, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         C1_Z_0, DP_OP_24J1_122_8087_n36, DP_OP_24J1_122_8087_n35,
         DP_OP_24J1_122_8087_n34, DP_OP_24J1_122_8087_n33,
         DP_OP_24J1_122_8087_n32, DP_OP_24J1_122_8087_n31,
         DP_OP_24J1_122_8087_n30, DP_OP_24J1_122_8087_n29,
         DP_OP_24J1_122_8087_n28, DP_OP_24J1_122_8087_n27,
         DP_OP_24J1_122_8087_n26, DP_OP_24J1_122_8087_n25,
         DP_OP_24J1_122_8087_n24, DP_OP_24J1_122_8087_n23,
         DP_OP_24J1_122_8087_n22, DP_OP_24J1_122_8087_n16,
         DP_OP_24J1_122_8087_n15, DP_OP_24J1_122_8087_n14,
         DP_OP_24J1_122_8087_n13, DP_OP_24J1_122_8087_n12,
         DP_OP_24J1_122_8087_n11, DP_OP_24J1_122_8087_n10,
         DP_OP_24J1_122_8087_n9, DP_OP_24J1_122_8087_n8,
         DP_OP_24J1_122_8087_n7, DP_OP_24J1_122_8087_n6,
         DP_OP_24J1_122_8087_n5, DP_OP_24J1_122_8087_n4,
         DP_OP_24J1_122_8087_n3, DP_OP_24J1_122_8087_n2, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189;
  wire   [3:0] cnt;
  wire   [15:0] prod;
  wire   [8:1] mul_2a;

  DFCNQD1BWP12T30P140 p_reg_15_ ( .D(n69), .CP(n188), .CDN(n189), .Q(p[15]) );
  DFCNQD1BWP12T30P140 p_reg_14_ ( .D(n68), .CP(clk), .CDN(n187), .Q(p[14]) );
  DFCNQD1BWP12T30P140 p_reg_13_ ( .D(n67), .CP(n188), .CDN(n189), .Q(p[13]) );
  DFCNQD1BWP12T30P140 p_reg_12_ ( .D(n66), .CP(clk), .CDN(n189), .Q(p[12]) );
  DFCNQD1BWP12T30P140 p_reg_11_ ( .D(n65), .CP(n188), .CDN(n189), .Q(p[11]) );
  DFCNQD1BWP12T30P140 p_reg_10_ ( .D(n64), .CP(clk), .CDN(n189), .Q(p[10]) );
  DFCNQD1BWP12T30P140 p_reg_9_ ( .D(n63), .CP(n188), .CDN(n189), .Q(p[9]) );
  DFCNQD1BWP12T30P140 p_reg_8_ ( .D(n62), .CP(clk), .CDN(n189), .Q(p[8]) );
  DFCNQD1BWP12T30P140 p_reg_7_ ( .D(n61), .CP(n188), .CDN(n189), .Q(p[7]) );
  DFCNQD1BWP12T30P140 p_reg_6_ ( .D(n60), .CP(clk), .CDN(n189), .Q(p[6]) );
  DFCNQD1BWP12T30P140 p_reg_5_ ( .D(n59), .CP(n188), .CDN(n189), .Q(p[5]) );
  DFCNQD1BWP12T30P140 p_reg_4_ ( .D(n58), .CP(n188), .CDN(n189), .Q(p[4]) );
  DFCNQD1BWP12T30P140 p_reg_3_ ( .D(n57), .CP(n188), .CDN(n187), .Q(p[3]) );
  DFCNQD1BWP12T30P140 p_reg_2_ ( .D(n56), .CP(n188), .CDN(n189), .Q(p[2]) );
  DFCNQD1BWP12T30P140 p_reg_1_ ( .D(n55), .CP(n188), .CDN(n189), .Q(p[1]) );
  DFCNQD1BWP12T30P140 p_reg_0_ ( .D(n54), .CP(n188), .CDN(n189), .Q(p[0]) );
  LHQD2BWP12T30P140 mul_2a_reg_3_ ( .E(reset), .D(a[2]), .Q(mul_2a[3]) );
  DFCNQD1BWP12T30P140 prod_reg_15_ ( .D(n73), .CP(clk), .CDN(n189), .Q(
        prod[15]) );
  LHQD2BWP12T30P140 mul_2a_reg_4_ ( .E(reset), .D(a[3]), .Q(mul_2a[4]) );
  LHQD2BWP12T30P140 mul_2a_reg_6_ ( .E(reset), .D(a[5]), .Q(mul_2a[6]) );
  LHQD2BWP12T30P140 mul_2a_reg_8_ ( .E(reset), .D(a[7]), .Q(mul_2a[8]) );
  LHQD2BWP12T30P140 mul_2a_reg_5_ ( .E(reset), .D(a[4]), .Q(mul_2a[5]) );
  LHQD2BWP12T30P140 mul_2a_reg_7_ ( .E(reset), .D(a[6]), .Q(mul_2a[7]) );
  LHQD2BWP12T30P140 mul_2a_reg_2_ ( .E(reset), .D(a[1]), .Q(mul_2a[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n89), .CP(n188), .CDN(n187), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 prod_reg_5_ ( .D(n83), .CP(clk), .CDN(n187), .Q(prod[5])
         );
  DFCNQD1BWP12T30P140 prod_reg_6_ ( .D(n82), .CP(clk), .CDN(n189), .Q(prod[6])
         );
  DFCNQD1BWP12T30P140 prod_reg_7_ ( .D(n81), .CP(clk), .CDN(n187), .Q(prod[7])
         );
  DFCNQD1BWP12T30P140 prod_reg_8_ ( .D(n80), .CP(clk), .CDN(n187), .Q(prod[8])
         );
  DFCNQD1BWP12T30P140 prod_reg_9_ ( .D(n79), .CP(clk), .CDN(n187), .Q(prod[9])
         );
  DFCNQD1BWP12T30P140 prod_reg_10_ ( .D(n78), .CP(clk), .CDN(n187), .Q(
        prod[10]) );
  DFCNQD1BWP12T30P140 prod_reg_11_ ( .D(n77), .CP(clk), .CDN(n187), .Q(
        prod[11]) );
  DFCNQD1BWP12T30P140 prod_reg_12_ ( .D(n76), .CP(clk), .CDN(n187), .Q(
        prod[12]) );
  DFCNQD1BWP12T30P140 prod_reg_13_ ( .D(n75), .CP(clk), .CDN(n187), .Q(
        prod[13]) );
  DFCNQD1BWP12T30P140 prod_reg_14_ ( .D(n74), .CP(clk), .CDN(n187), .Q(
        prod[14]) );
  DFCNQD1BWP12T30P140 prod_reg_0_ ( .D(n88), .CP(n188), .CDN(n187), .Q(prod[0]) );
  DFCNQD1BWP12T30P140 prod_reg_1_ ( .D(n87), .CP(n188), .CDN(n187), .Q(prod[1]) );
  DFCNQD1BWP12T30P140 prod_reg_2_ ( .D(n86), .CP(n188), .CDN(n187), .Q(prod[2]) );
  DFCNQD1BWP12T30P140 prod_reg_3_ ( .D(n85), .CP(n188), .CDN(n187), .Q(prod[3]) );
  DFCNQD1BWP12T30P140 prod_reg_4_ ( .D(n84), .CP(n188), .CDN(n189), .Q(prod[4]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n70), .CP(n188), .CDN(n187), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n71), .CP(n188), .CDN(n187), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n72), .CP(clk), .CDN(n189), .Q(cnt[0])
         );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U17 ( .A(C1_Z_0), .B(prod[0]), .CI(
        DP_OP_24J1_122_8087_n36), .CO(DP_OP_24J1_122_8087_n16), .S(N202) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U16 ( .A(prod[1]), .B(
        DP_OP_24J1_122_8087_n35), .CI(DP_OP_24J1_122_8087_n16), .CO(
        DP_OP_24J1_122_8087_n15), .S(N203) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U15 ( .A(prod[2]), .B(
        DP_OP_24J1_122_8087_n34), .CI(DP_OP_24J1_122_8087_n15), .CO(
        DP_OP_24J1_122_8087_n14), .S(N204) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U14 ( .A(prod[3]), .B(
        DP_OP_24J1_122_8087_n33), .CI(DP_OP_24J1_122_8087_n14), .CO(
        DP_OP_24J1_122_8087_n13), .S(N205) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U13 ( .A(prod[4]), .B(
        DP_OP_24J1_122_8087_n32), .CI(DP_OP_24J1_122_8087_n13), .CO(
        DP_OP_24J1_122_8087_n12), .S(N206) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U12 ( .A(prod[5]), .B(
        DP_OP_24J1_122_8087_n31), .CI(DP_OP_24J1_122_8087_n12), .CO(
        DP_OP_24J1_122_8087_n11), .S(N207) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U11 ( .A(prod[6]), .B(
        DP_OP_24J1_122_8087_n30), .CI(DP_OP_24J1_122_8087_n11), .CO(
        DP_OP_24J1_122_8087_n10), .S(N208) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U10 ( .A(prod[7]), .B(
        DP_OP_24J1_122_8087_n29), .CI(DP_OP_24J1_122_8087_n10), .CO(
        DP_OP_24J1_122_8087_n9), .S(N209) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U9 ( .A(prod[8]), .B(
        DP_OP_24J1_122_8087_n28), .CI(DP_OP_24J1_122_8087_n9), .CO(
        DP_OP_24J1_122_8087_n8), .S(N210) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U8 ( .A(prod[9]), .B(
        DP_OP_24J1_122_8087_n27), .CI(DP_OP_24J1_122_8087_n8), .CO(
        DP_OP_24J1_122_8087_n7), .S(N211) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U7 ( .A(prod[10]), .B(
        DP_OP_24J1_122_8087_n26), .CI(DP_OP_24J1_122_8087_n7), .CO(
        DP_OP_24J1_122_8087_n6), .S(N212) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U6 ( .A(prod[11]), .B(
        DP_OP_24J1_122_8087_n25), .CI(DP_OP_24J1_122_8087_n6), .CO(
        DP_OP_24J1_122_8087_n5), .S(N213) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U5 ( .A(prod[12]), .B(
        DP_OP_24J1_122_8087_n24), .CI(DP_OP_24J1_122_8087_n5), .CO(
        DP_OP_24J1_122_8087_n4), .S(N214) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U4 ( .A(prod[13]), .B(
        DP_OP_24J1_122_8087_n23), .CI(DP_OP_24J1_122_8087_n4), .CO(
        DP_OP_24J1_122_8087_n3), .S(N215) );
  FA1D0BWP12T30P140 DP_OP_24J1_122_8087_U3 ( .A(prod[14]), .B(
        DP_OP_24J1_122_8087_n22), .CI(DP_OP_24J1_122_8087_n3), .CO(
        DP_OP_24J1_122_8087_n2), .S(N216) );
  LHQD1BWP12T30P140 mul_2a_reg_1_ ( .E(reset), .D(a[0]), .Q(mul_2a[1]) );
  INVD0BWP12T30P140 U117 ( .I(cnt[3]), .ZN(n118) );
  NR2D1BWP12T30P140 U118 ( .A1(n107), .A2(n104), .ZN(C1_Z_0) );
  NR4D0BWP12T30P140 U119 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .A4(n118), 
        .ZN(rdy) );
  NR2D0BWP12T30P140 U120 ( .A1(cnt[2]), .A2(cnt[3]), .ZN(n167) );
  INVD0BWP12T30P140 U121 ( .I(n167), .ZN(n157) );
  INVD0BWP12T30P140 U122 ( .I(cnt[0]), .ZN(n162) );
  INVD0BWP12T30P140 U123 ( .I(cnt[1]), .ZN(n160) );
  ND2D0BWP12T30P140 U124 ( .A1(n162), .A2(n160), .ZN(n140) );
  INVD0BWP12T30P140 U125 ( .I(n140), .ZN(n142) );
  MUX2ND0BWP12T30P140 U126 ( .I0(b[1]), .I1(b[5]), .S(cnt[1]), .ZN(n96) );
  NR2D0BWP12T30P140 U127 ( .A1(cnt[0]), .A2(n160), .ZN(n161) );
  MOAI22D0BWP12T30P140 U128 ( .A1(n162), .A2(n96), .B1(n161), .B2(b[3]), .ZN(
        n94) );
  AOI31D0BWP12T30P140 U129 ( .A1(b[7]), .A2(n157), .A3(n142), .B(n94), .ZN(
        n109) );
  AOI221D0BWP12T30P140 U130 ( .A1(cnt[1]), .A2(b[7]), .B1(n160), .B2(b[3]), 
        .C(n162), .ZN(n95) );
  AOI211D0BWP12T30P140 U131 ( .A1(n96), .A2(n162), .B(cnt[2]), .C(n95), .ZN(
        n108) );
  NR2D0BWP12T30P140 U132 ( .A1(n162), .A2(n160), .ZN(n126) );
  AOI22D0BWP12T30P140 U133 ( .A1(n142), .A2(b[0]), .B1(n126), .B2(b[6]), .ZN(
        n99) );
  ND3D0BWP12T30P140 U134 ( .A1(n160), .A2(b[2]), .A3(cnt[0]), .ZN(n98) );
  ND2D0BWP12T30P140 U135 ( .A1(b[4]), .A2(n161), .ZN(n97) );
  AO31D0BWP12T30P140 U136 ( .A1(n99), .A2(n98), .A3(n97), .B(cnt[2]), .Z(n105)
         );
  INVD0BWP12T30P140 U137 ( .I(n105), .ZN(n110) );
  CKXOR2D0BWP12T30P140 U138 ( .A1(n110), .A2(n109), .Z(n107) );
  OAI21D0BWP12T30P140 U139 ( .A1(n109), .A2(n108), .B(n107), .ZN(n100) );
  ND2D0BWP12T30P140 U140 ( .A1(n118), .A2(n100), .ZN(n137) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(N213), .I1(prod[11]), .S(n137), .Z(n77) );
  ND2D0BWP12T30P140 U142 ( .A1(cnt[0]), .A2(n118), .ZN(n101) );
  OA21D0BWP12T30P140 U143 ( .A1(n118), .A2(cnt[0]), .B(n101), .Z(n72) );
  INVD0BWP12T30P140 U144 ( .I(rdy), .ZN(n186) );
  OA22D0BWP12T30P140 U145 ( .A1(n186), .A2(prod[15]), .B1(p[15]), .B2(rdy), 
        .Z(n69) );
  OA22D0BWP12T30P140 U146 ( .A1(n186), .A2(prod[11]), .B1(p[11]), .B2(rdy), 
        .Z(n65) );
  NR2D0BWP12T30P140 U147 ( .A1(n160), .A2(n101), .ZN(n129) );
  AOI21D0BWP12T30P140 U148 ( .A1(n160), .A2(n101), .B(n129), .ZN(n71) );
  OA22D0BWP12T30P140 U149 ( .A1(n186), .A2(prod[5]), .B1(p[5]), .B2(rdy), .Z(
        n59) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(N210), .I1(prod[8]), .S(n137), .Z(n80) );
  INVD0BWP12T30P140 U151 ( .I(n126), .ZN(n103) );
  INVD0BWP12T30P140 U152 ( .I(cnt[2]), .ZN(n130) );
  OAI21D0BWP12T30P140 U153 ( .A1(n103), .A2(n130), .B(n118), .ZN(n89) );
  OAI21D0BWP12T30P140 U154 ( .A1(cnt[3]), .A2(n103), .B(cnt[2]), .ZN(n102) );
  OAI21D0BWP12T30P140 U155 ( .A1(n89), .A2(n103), .B(n102), .ZN(n70) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(N209), .I1(prod[7]), .S(n137), .Z(n81) );
  OA22D0BWP12T30P140 U157 ( .A1(n186), .A2(prod[10]), .B1(p[10]), .B2(rdy), 
        .Z(n64) );
  CKMUX2D0BWP12T30P140 U158 ( .I0(N206), .I1(prod[4]), .S(n137), .Z(n84) );
  OA22D0BWP12T30P140 U159 ( .A1(n186), .A2(prod[14]), .B1(p[14]), .B2(rdy), 
        .Z(n68) );
  CKMUX2D0BWP12T30P140 U160 ( .I0(N207), .I1(prod[5]), .S(n137), .Z(n83) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(N205), .I1(prod[3]), .S(n137), .Z(n85) );
  OA22D0BWP12T30P140 U162 ( .A1(n186), .A2(prod[12]), .B1(p[12]), .B2(rdy), 
        .Z(n66) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(N204), .I1(prod[2]), .S(n137), .Z(n86) );
  INVD0BWP12T30P140 U164 ( .I(n108), .ZN(n104) );
  CKXOR2D0BWP12T30P140 U165 ( .A1(n109), .A2(n108), .Z(n106) );
  NR2D0BWP12T30P140 U166 ( .A1(n106), .A2(n105), .ZN(n177) );
  CKMUX2D0BWP12T30P140 U167 ( .I0(mul_2a[7]), .I1(mul_2a[5]), .S(cnt[0]), .Z(
        n123) );
  INVD0BWP12T30P140 U168 ( .I(mul_2a[3]), .ZN(n128) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n128), .A2(n162), .B1(n162), .B2(mul_2a[1]), 
        .ZN(n146) );
  MUX2ND0BWP12T30P140 U170 ( .I0(n123), .I1(n146), .S(cnt[1]), .ZN(n154) );
  INVD0BWP12T30P140 U171 ( .I(n154), .ZN(n112) );
  OAI22D0BWP12T30P140 U172 ( .A1(n110), .A2(n109), .B1(n108), .B2(n107), .ZN(
        n182) );
  INVD0BWP12T30P140 U173 ( .I(n182), .ZN(n179) );
  CKMUX2D0BWP12T30P140 U174 ( .I0(mul_2a[8]), .I1(mul_2a[6]), .S(cnt[0]), .Z(
        n124) );
  INVD0BWP12T30P140 U175 ( .I(mul_2a[2]), .ZN(n111) );
  MAOI22D0BWP12T30P140 U176 ( .A1(cnt[0]), .A2(n111), .B1(mul_2a[4]), .B2(
        cnt[0]), .ZN(n145) );
  MUX2ND0BWP12T30P140 U177 ( .I0(n124), .I1(n145), .S(cnt[1]), .ZN(n168) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n177), .A2(n112), .B1(n179), .B2(n168), .ZN(
        n158) );
  INR2D1BWP12T30P140 U179 ( .A1(cnt[2]), .B1(cnt[3]), .ZN(n165) );
  INVD0BWP12T30P140 U180 ( .I(n165), .ZN(n174) );
  NR2D0BWP12T30P140 U181 ( .A1(n158), .A2(n174), .ZN(n113) );
  CKXOR2D0BWP12T30P140 U182 ( .A1(C1_Z_0), .A2(n113), .Z(n114) );
  CKXOR2D0BWP12T30P140 U183 ( .A1(n114), .A2(prod[15]), .Z(n115) );
  CKXOR2D0BWP12T30P140 U184 ( .A1(n115), .A2(DP_OP_24J1_122_8087_n2), .Z(n116)
         );
  CKMUX2D0BWP12T30P140 U185 ( .I0(n116), .I1(prod[15]), .S(n137), .Z(n73) );
  OA22D0BWP12T30P140 U186 ( .A1(n186), .A2(prod[1]), .B1(p[1]), .B2(rdy), .Z(
        n55) );
  CKMUX2D0BWP12T30P140 U187 ( .I0(N203), .I1(prod[1]), .S(n137), .Z(n87) );
  OA22D0BWP12T30P140 U188 ( .A1(n186), .A2(prod[13]), .B1(p[13]), .B2(rdy), 
        .Z(n67) );
  CKMUX2D0BWP12T30P140 U189 ( .I0(N211), .I1(prod[9]), .S(n137), .Z(n79) );
  CKMUX2D0BWP12T30P140 U190 ( .I0(N202), .I1(prod[0]), .S(n137), .Z(n88) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(N214), .I1(prod[12]), .S(n137), .Z(n76) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(N216), .I1(prod[14]), .S(n137), .Z(n74) );
  AOI21D0BWP12T30P140 U193 ( .A1(n126), .A2(mul_2a[8]), .B(cnt[2]), .ZN(n120)
         );
  CKMUX2D0BWP12T30P140 U194 ( .I0(mul_2a[6]), .I1(mul_2a[4]), .S(cnt[0]), .Z(
        n172) );
  AOI22D0BWP12T30P140 U195 ( .A1(mul_2a[2]), .A2(n161), .B1(n172), .B2(n160), 
        .ZN(n155) );
  INVD0BWP12T30P140 U196 ( .I(n155), .ZN(n117) );
  AOI21D0BWP12T30P140 U197 ( .A1(n118), .A2(n117), .B(n167), .ZN(n119) );
  NR2D0BWP12T30P140 U198 ( .A1(n120), .A2(n119), .ZN(n134) );
  ND2D0BWP12T30P140 U199 ( .A1(n177), .A2(n134), .ZN(n121) );
  OAI31D0BWP12T30P140 U200 ( .A1(n179), .A2(n154), .A3(n174), .B(n121), .ZN(
        n122) );
  CKXOR2D0BWP12T30P140 U201 ( .A1(C1_Z_0), .A2(n122), .Z(
        DP_OP_24J1_122_8087_n22) );
  OA22D0BWP12T30P140 U202 ( .A1(n186), .A2(prod[6]), .B1(p[6]), .B2(rdy), .Z(
        n60) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(N215), .I1(prod[13]), .S(n137), .Z(n75) );
  ND2D0BWP12T30P140 U204 ( .A1(n146), .A2(n160), .ZN(n143) );
  NR2D0BWP12T30P140 U205 ( .A1(n157), .A2(n160), .ZN(n171) );
  MOAI22D0BWP12T30P140 U206 ( .A1(n143), .A2(n174), .B1(n171), .B2(n123), .ZN(
        n181) );
  ND2D0BWP12T30P140 U207 ( .A1(n145), .A2(n160), .ZN(n149) );
  MOAI22D0BWP12T30P140 U208 ( .A1(n149), .A2(n174), .B1(n171), .B2(n124), .ZN(
        n132) );
  AO22D0BWP12T30P140 U209 ( .A1(n177), .A2(n181), .B1(n182), .B2(n132), .Z(
        n125) );
  CKXOR2D0BWP12T30P140 U210 ( .A1(C1_Z_0), .A2(n125), .Z(
        DP_OP_24J1_122_8087_n25) );
  OAI22D0BWP12T30P140 U211 ( .A1(mul_2a[1]), .A2(n160), .B1(mul_2a[5]), .B2(
        n140), .ZN(n127) );
  AO211D0BWP12T30P140 U212 ( .A1(cnt[0]), .A2(n128), .B(n127), .C(n126), .Z(
        n151) );
  ND3D0BWP12T30P140 U213 ( .A1(n130), .A2(n129), .A3(mul_2a[7]), .ZN(n131) );
  OAI21D0BWP12T30P140 U214 ( .A1(n151), .A2(n174), .B(n131), .ZN(n135) );
  AO22D0BWP12T30P140 U215 ( .A1(n177), .A2(n132), .B1(n182), .B2(n135), .Z(
        n133) );
  CKXOR2D0BWP12T30P140 U216 ( .A1(C1_Z_0), .A2(n133), .Z(
        DP_OP_24J1_122_8087_n24) );
  AO22D0BWP12T30P140 U217 ( .A1(n177), .A2(n135), .B1(n134), .B2(n182), .Z(
        n136) );
  CKXOR2D0BWP12T30P140 U218 ( .A1(C1_Z_0), .A2(n136), .Z(
        DP_OP_24J1_122_8087_n23) );
  CKMUX2D0BWP12T30P140 U219 ( .I0(N208), .I1(prod[6]), .S(n137), .Z(n82) );
  OA22D0BWP12T30P140 U220 ( .A1(n186), .A2(prod[9]), .B1(p[9]), .B2(rdy), .Z(
        n63) );
  OA22D0BWP12T30P140 U221 ( .A1(n186), .A2(prod[3]), .B1(p[3]), .B2(rdy), .Z(
        n57) );
  OA22D0BWP12T30P140 U222 ( .A1(n186), .A2(prod[7]), .B1(p[7]), .B2(rdy), .Z(
        n61) );
  OA22D0BWP12T30P140 U223 ( .A1(n186), .A2(prod[4]), .B1(p[4]), .B2(rdy), .Z(
        n58) );
  CKMUX2D0BWP12T30P140 U224 ( .I0(N212), .I1(prod[10]), .S(n137), .Z(n78) );
  AN2D0BWP12T30P140 U225 ( .A1(mul_2a[1]), .A2(n142), .Z(n164) );
  ND2D0BWP12T30P140 U226 ( .A1(n167), .A2(n182), .ZN(n153) );
  INR2D1BWP12T30P140 U227 ( .A1(n164), .B1(n153), .ZN(n138) );
  CKXOR2D0BWP12T30P140 U228 ( .A1(C1_Z_0), .A2(n138), .Z(
        DP_OP_24J1_122_8087_n36) );
  AOI22D0BWP12T30P140 U229 ( .A1(n177), .A2(mul_2a[1]), .B1(mul_2a[2]), .B2(
        n182), .ZN(n139) );
  NR3D0BWP12T30P140 U230 ( .A1(n140), .A2(n139), .A3(n157), .ZN(n141) );
  CKXOR2D0BWP12T30P140 U231 ( .A1(C1_Z_0), .A2(n141), .Z(
        DP_OP_24J1_122_8087_n35) );
  ND2D0BWP12T30P140 U232 ( .A1(n167), .A2(n177), .ZN(n169) );
  ND2D0BWP12T30P140 U233 ( .A1(mul_2a[2]), .A2(n142), .ZN(n173) );
  OAI22D0BWP12T30P140 U234 ( .A1(n153), .A2(n143), .B1(n169), .B2(n173), .ZN(
        n144) );
  CKXOR2D0BWP12T30P140 U235 ( .A1(C1_Z_0), .A2(n144), .Z(
        DP_OP_24J1_122_8087_n34) );
  NR2D0BWP12T30P140 U236 ( .A1(cnt[1]), .A2(n157), .ZN(n176) );
  AOI22D0BWP12T30P140 U237 ( .A1(n177), .A2(n146), .B1(n145), .B2(n182), .ZN(
        n147) );
  INR2D1BWP12T30P140 U238 ( .A1(n176), .B1(n147), .ZN(n148) );
  CKXOR2D0BWP12T30P140 U239 ( .A1(C1_Z_0), .A2(n148), .Z(
        DP_OP_24J1_122_8087_n33) );
  OAI22D0BWP12T30P140 U240 ( .A1(n153), .A2(n151), .B1(n169), .B2(n149), .ZN(
        n150) );
  CKXOR2D0BWP12T30P140 U241 ( .A1(C1_Z_0), .A2(n150), .Z(
        DP_OP_24J1_122_8087_n32) );
  OAI22D0BWP12T30P140 U242 ( .A1(n155), .A2(n153), .B1(n169), .B2(n151), .ZN(
        n152) );
  CKXOR2D0BWP12T30P140 U243 ( .A1(C1_Z_0), .A2(n152), .Z(
        DP_OP_24J1_122_8087_n31) );
  OAI22D0BWP12T30P140 U244 ( .A1(n155), .A2(n169), .B1(n154), .B2(n153), .ZN(
        n156) );
  CKXOR2D0BWP12T30P140 U245 ( .A1(C1_Z_0), .A2(n156), .Z(
        DP_OP_24J1_122_8087_n30) );
  NR2D0BWP12T30P140 U246 ( .A1(n158), .A2(n157), .ZN(n159) );
  CKXOR2D0BWP12T30P140 U247 ( .A1(C1_Z_0), .A2(n159), .Z(
        DP_OP_24J1_122_8087_n29) );
  AOI22D0BWP12T30P140 U248 ( .A1(cnt[1]), .A2(mul_2a[3]), .B1(mul_2a[7]), .B2(
        n160), .ZN(n163) );
  MOAI22D0BWP12T30P140 U249 ( .A1(n163), .A2(n162), .B1(n161), .B2(mul_2a[5]), 
        .ZN(n166) );
  AOI22D0BWP12T30P140 U250 ( .A1(n167), .A2(n166), .B1(n165), .B2(n164), .ZN(
        n178) );
  OAI22D0BWP12T30P140 U251 ( .A1(n179), .A2(n178), .B1(n169), .B2(n168), .ZN(
        n170) );
  CKXOR2D0BWP12T30P140 U252 ( .A1(C1_Z_0), .A2(n170), .Z(
        DP_OP_24J1_122_8087_n28) );
  MOAI22D0BWP12T30P140 U253 ( .A1(n174), .A2(n173), .B1(n172), .B2(n171), .ZN(
        n175) );
  AOI31D0BWP12T30P140 U254 ( .A1(cnt[0]), .A2(n176), .A3(mul_2a[8]), .B(n175), 
        .ZN(n184) );
  INVD0BWP12T30P140 U255 ( .I(n177), .ZN(n183) );
  OAI22D0BWP12T30P140 U256 ( .A1(n179), .A2(n184), .B1(n178), .B2(n183), .ZN(
        n180) );
  CKXOR2D0BWP12T30P140 U257 ( .A1(C1_Z_0), .A2(n180), .Z(
        DP_OP_24J1_122_8087_n27) );
  MOAI22D0BWP12T30P140 U258 ( .A1(n184), .A2(n183), .B1(n182), .B2(n181), .ZN(
        n185) );
  CKXOR2D0BWP12T30P140 U259 ( .A1(C1_Z_0), .A2(n185), .Z(
        DP_OP_24J1_122_8087_n26) );
  OA22D0BWP12T30P140 U260 ( .A1(n186), .A2(prod[2]), .B1(p[2]), .B2(rdy), .Z(
        n56) );
  OA22D0BWP12T30P140 U261 ( .A1(n186), .A2(prod[8]), .B1(p[8]), .B2(rdy), .Z(
        n62) );
  OA22D0BWP12T30P140 U262 ( .A1(n186), .A2(prod[0]), .B1(p[0]), .B2(rdy), .Z(
        n54) );
  CKBD0BWP12T30P140 U263 ( .I(clk), .Z(n188) );
  INVD0BWP12T30P140 U264 ( .I(reset), .ZN(n189) );
  CKBD0BWP12T30P140 U265 ( .I(n189), .Z(n187) );
endmodule

