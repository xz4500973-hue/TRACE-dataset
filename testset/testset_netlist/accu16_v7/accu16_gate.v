/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:43:53 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188;

  DFCNQD1BWP12T30P140 acc_r_reg_2_ ( .D(n96), .CP(clk), .CDN(rst_n), .Q(acc[2]) );
  DFCNQD1BWP12T30P140 acc_r_reg_4_ ( .D(n94), .CP(clk), .CDN(rst_n), .Q(acc[4]) );
  DFCNQD1BWP12T30P140 acc_r_reg_6_ ( .D(n92), .CP(clk), .CDN(rst_n), .Q(acc[6]) );
  DFCNQD1BWP12T30P140 acc_r_reg_15_ ( .D(n83), .CP(clk), .CDN(rst_n), .Q(
        acc[15]) );
  DFCNQD1BWP12T30P140 acc_r_reg_11_ ( .D(n87), .CP(clk), .CDN(rst_n), .Q(
        acc[11]) );
  DFCNQD1BWP12T30P140 acc_r_reg_13_ ( .D(n85), .CP(clk), .CDN(rst_n), .Q(
        acc[13]) );
  DFCNQD1BWP12T30P140 acc_r_reg_14_ ( .D(n84), .CP(clk), .CDN(rst_n), .Q(
        acc[14]) );
  DFCNQD1BWP12T30P140 acc_r_reg_8_ ( .D(n90), .CP(clk), .CDN(rst_n), .Q(acc[8]) );
  DFCNQD1BWP12T30P140 acc_r_reg_1_ ( .D(n97), .CP(clk), .CDN(rst_n), .Q(acc[1]) );
  DFCNQD1BWP12T30P140 acc_r_reg_7_ ( .D(n91), .CP(clk), .CDN(rst_n), .Q(acc[7]) );
  DFCNQD1BWP12T30P140 acc_r_reg_9_ ( .D(n89), .CP(clk), .CDN(rst_n), .Q(acc[9]) );
  DFCNQD1BWP12T30P140 acc_r_reg_3_ ( .D(n95), .CP(clk), .CDN(rst_n), .Q(acc[3]) );
  DFCNQD1BWP12T30P140 acc_r_reg_5_ ( .D(n93), .CP(clk), .CDN(rst_n), .Q(acc[5]) );
  DFCNQD1BWP12T30P140 acc_r_reg_0_ ( .D(n98), .CP(clk), .CDN(rst_n), .Q(acc[0]) );
  DFCNQD1BWP12T30P140 acc_r_reg_10_ ( .D(n88), .CP(clk), .CDN(rst_n), .Q(
        acc[10]) );
  DFCNQD1BWP12T30P140 acc_r_reg_12_ ( .D(n86), .CP(clk), .CDN(rst_n), .Q(
        acc[12]) );
  MOAI22D0BWP12T30P140 U94 ( .A1(din[12]), .A2(acc[12]), .B1(acc[12]), .B2(
        din[12]), .ZN(n103) );
  INVD0BWP12T30P140 U95 ( .I(n103), .ZN(n113) );
  AN2D0BWP12T30P140 U96 ( .A1(din[9]), .A2(acc[9]), .Z(n123) );
  MAOI222D0BWP12T30P140 U97 ( .A(n123), .B(acc[10]), .C(din[10]), .ZN(n108) );
  ND2D0BWP12T30P140 U98 ( .A1(acc[11]), .A2(din[11]), .ZN(n109) );
  ND2D0BWP12T30P140 U99 ( .A1(din[8]), .A2(acc[8]), .ZN(n106) );
  INVD0BWP12T30P140 U100 ( .I(n106), .ZN(n133) );
  NR2D0BWP12T30P140 U101 ( .A1(din[8]), .A2(acc[8]), .ZN(n134) );
  ND2D0BWP12T30P140 U102 ( .A1(din[7]), .A2(acc[7]), .ZN(n107) );
  AN2D0BWP12T30P140 U103 ( .A1(din[0]), .A2(acc[0]), .Z(n153) );
  MAOI222D0BWP12T30P140 U104 ( .A(n153), .B(din[1]), .C(acc[1]), .ZN(n158) );
  INVD0BWP12T30P140 U105 ( .I(acc[2]), .ZN(n160) );
  INVD0BWP12T30P140 U106 ( .I(din[2]), .ZN(n157) );
  MAOI222D0BWP12T30P140 U107 ( .A(n158), .B(n160), .C(n157), .ZN(n161) );
  MAOI222D0BWP12T30P140 U108 ( .A(acc[3]), .B(din[3]), .C(n161), .ZN(n168) );
  INVD0BWP12T30P140 U109 ( .I(acc[4]), .ZN(n170) );
  INVD0BWP12T30P140 U110 ( .I(din[4]), .ZN(n167) );
  MAOI222D0BWP12T30P140 U111 ( .A(n168), .B(n170), .C(n167), .ZN(n171) );
  MAOI222D0BWP12T30P140 U112 ( .A(acc[5]), .B(din[5]), .C(n171), .ZN(n177) );
  INVD0BWP12T30P140 U113 ( .I(din[6]), .ZN(n178) );
  INVD0BWP12T30P140 U114 ( .I(acc[6]), .ZN(n181) );
  MAOI222D0BWP12T30P140 U115 ( .A(n177), .B(n178), .C(n181), .ZN(n139) );
  INVD0BWP12T30P140 U116 ( .I(n139), .ZN(n99) );
  NR2D0BWP12T30P140 U117 ( .A1(din[7]), .A2(acc[7]), .ZN(n105) );
  AO21D0BWP12T30P140 U118 ( .A1(n107), .A2(n99), .B(n105), .Z(n132) );
  NR3D0BWP12T30P140 U119 ( .A1(n134), .A2(n133), .A3(n132), .ZN(n137) );
  NR2D0BWP12T30P140 U120 ( .A1(acc[9]), .A2(din[9]), .ZN(n121) );
  AOI21D0BWP12T30P140 U121 ( .A1(din[9]), .A2(acc[9]), .B(n121), .ZN(n143) );
  ND2D0BWP12T30P140 U122 ( .A1(acc[10]), .A2(din[10]), .ZN(n119) );
  OAI21D0BWP12T30P140 U123 ( .A1(acc[10]), .A2(din[10]), .B(n119), .ZN(n148)
         );
  INVD0BWP12T30P140 U124 ( .I(n148), .ZN(n100) );
  OAI211D0BWP12T30P140 U125 ( .A1(n133), .A2(n137), .B(n143), .C(n100), .ZN(
        n101) );
  NR2D0BWP12T30P140 U126 ( .A1(acc[11]), .A2(din[11]), .ZN(n110) );
  AOI31D0BWP12T30P140 U127 ( .A1(n108), .A2(n109), .A3(n101), .B(n110), .ZN(
        n102) );
  MUX2ND0BWP12T30P140 U128 ( .I0(n113), .I1(n103), .S(n102), .ZN(n104) );
  MAOI22D0BWP12T30P140 U129 ( .A1(en), .A2(n104), .B1(acc[12]), .B2(en), .ZN(
        n86) );
  AOI21D0BWP12T30P140 U130 ( .A1(acc[7]), .A2(din[7]), .B(n105), .ZN(n140) );
  ND2D0BWP12T30P140 U131 ( .A1(n140), .A2(n139), .ZN(n138) );
  AOI31D0BWP12T30P140 U132 ( .A1(n107), .A2(n138), .A3(n106), .B(n134), .ZN(
        n144) );
  ND2D0BWP12T30P140 U133 ( .A1(n144), .A2(n143), .ZN(n142) );
  OA21D0BWP12T30P140 U134 ( .A1(n142), .A2(n148), .B(n108), .Z(n115) );
  INVD0BWP12T30P140 U135 ( .I(n109), .ZN(n114) );
  NR2D0BWP12T30P140 U136 ( .A1(n114), .A2(n110), .ZN(n112) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n115), .A2(n112), .B1(n112), .B2(n115), .ZN(
        n111) );
  MAOI22D0BWP12T30P140 U138 ( .A1(en), .A2(n111), .B1(acc[11]), .B2(en), .ZN(
        n87) );
  ND2D0BWP12T30P140 U139 ( .A1(acc[13]), .A2(din[13]), .ZN(n124) );
  OAI21D0BWP12T30P140 U140 ( .A1(acc[13]), .A2(din[13]), .B(n124), .ZN(n126)
         );
  INVD0BWP12T30P140 U141 ( .I(n126), .ZN(n117) );
  ND2D0BWP12T30P140 U142 ( .A1(n113), .A2(n112), .ZN(n120) );
  MAOI222D0BWP12T30P140 U143 ( .A(acc[12]), .B(din[12]), .C(n114), .ZN(n125)
         );
  OAI21D0BWP12T30P140 U144 ( .A1(n115), .A2(n120), .B(n125), .ZN(n116) );
  MUX2ND0BWP12T30P140 U145 ( .I0(n117), .I1(n126), .S(n116), .ZN(n118) );
  MAOI22D0BWP12T30P140 U146 ( .A1(en), .A2(n118), .B1(acc[13]), .B2(en), .ZN(
        n85) );
  ND2D0BWP12T30P140 U147 ( .A1(acc[14]), .A2(din[14]), .ZN(n182) );
  OAI21D0BWP12T30P140 U148 ( .A1(acc[14]), .A2(din[14]), .B(n182), .ZN(n183)
         );
  INVD0BWP12T30P140 U149 ( .I(n183), .ZN(n130) );
  INVD0BWP12T30P140 U150 ( .I(n119), .ZN(n129) );
  NR2D0BWP12T30P140 U151 ( .A1(n126), .A2(n120), .ZN(n128) );
  INVD0BWP12T30P140 U152 ( .I(n121), .ZN(n122) );
  OAI21D0BWP12T30P140 U153 ( .A1(n144), .A2(n123), .B(n122), .ZN(n147) );
  NR2D0BWP12T30P140 U154 ( .A1(n148), .A2(n147), .ZN(n146) );
  OAI21D0BWP12T30P140 U155 ( .A1(n126), .A2(n125), .B(n124), .ZN(n127) );
  AOI221D0BWP12T30P140 U156 ( .A1(n129), .A2(n128), .B1(n146), .B2(n128), .C(
        n127), .ZN(n184) );
  MUX2ND0BWP12T30P140 U157 ( .I0(n183), .I1(n130), .S(n184), .ZN(n131) );
  MAOI22D0BWP12T30P140 U158 ( .A1(en), .A2(n131), .B1(acc[14]), .B2(en), .ZN(
        n84) );
  INVD0BWP12T30P140 U159 ( .I(en), .ZN(n176) );
  OA21D0BWP12T30P140 U160 ( .A1(n134), .A2(n133), .B(n132), .Z(n136) );
  INVD0BWP12T30P140 U161 ( .I(acc[8]), .ZN(n135) );
  OAI32D0BWP12T30P140 U162 ( .A1(n176), .A2(n137), .A3(n136), .B1(en), .B2(
        n135), .ZN(n90) );
  OAI21D0BWP12T30P140 U163 ( .A1(n140), .A2(n139), .B(n138), .ZN(n141) );
  MAOI22D0BWP12T30P140 U164 ( .A1(en), .A2(n141), .B1(acc[7]), .B2(en), .ZN(
        n91) );
  OAI21D0BWP12T30P140 U165 ( .A1(n144), .A2(n143), .B(n142), .ZN(n145) );
  MAOI22D0BWP12T30P140 U166 ( .A1(en), .A2(n145), .B1(acc[9]), .B2(en), .ZN(
        n89) );
  AOI211D0BWP12T30P140 U167 ( .A1(n148), .A2(n147), .B(n146), .C(n176), .ZN(
        n149) );
  AO21D0BWP12T30P140 U168 ( .A1(acc[10]), .A2(n176), .B(n149), .Z(n88) );
  INVD0BWP12T30P140 U169 ( .I(acc[0]), .ZN(n151) );
  ND2D0BWP12T30P140 U170 ( .A1(en), .A2(din[0]), .ZN(n150) );
  MUX2ND0BWP12T30P140 U171 ( .I0(acc[0]), .I1(n151), .S(n150), .ZN(n98) );
  INVD0BWP12T30P140 U172 ( .I(acc[1]), .ZN(n155) );
  AOI21D0BWP12T30P140 U173 ( .A1(din[0]), .A2(acc[0]), .B(din[1]), .ZN(n152)
         );
  AOI211D0BWP12T30P140 U174 ( .A1(n153), .A2(din[1]), .B(n152), .C(n176), .ZN(
        n154) );
  MUX2ND0BWP12T30P140 U175 ( .I0(n155), .I1(acc[1]), .S(n154), .ZN(n97) );
  INVD0BWP12T30P140 U176 ( .I(n158), .ZN(n156) );
  AOI221D0BWP12T30P140 U177 ( .A1(n158), .A2(n157), .B1(n156), .B2(din[2]), 
        .C(n176), .ZN(n159) );
  MUX2ND0BWP12T30P140 U178 ( .I0(n160), .I1(acc[2]), .S(n159), .ZN(n96) );
  INVD0BWP12T30P140 U179 ( .I(acc[3]), .ZN(n165) );
  INVD0BWP12T30P140 U180 ( .I(n161), .ZN(n163) );
  INVD0BWP12T30P140 U181 ( .I(din[3]), .ZN(n162) );
  AOI221D0BWP12T30P140 U182 ( .A1(n163), .A2(n162), .B1(n161), .B2(din[3]), 
        .C(n176), .ZN(n164) );
  MUX2ND0BWP12T30P140 U183 ( .I0(n165), .I1(acc[3]), .S(n164), .ZN(n95) );
  INVD0BWP12T30P140 U184 ( .I(n168), .ZN(n166) );
  AOI221D0BWP12T30P140 U185 ( .A1(n168), .A2(n167), .B1(n166), .B2(din[4]), 
        .C(n176), .ZN(n169) );
  MUX2ND0BWP12T30P140 U186 ( .I0(n170), .I1(acc[4]), .S(n169), .ZN(n94) );
  INVD0BWP12T30P140 U187 ( .I(acc[5]), .ZN(n175) );
  INVD0BWP12T30P140 U188 ( .I(n171), .ZN(n173) );
  INVD0BWP12T30P140 U189 ( .I(din[5]), .ZN(n172) );
  AOI221D0BWP12T30P140 U190 ( .A1(n173), .A2(n172), .B1(n171), .B2(din[5]), 
        .C(n176), .ZN(n174) );
  MUX2ND0BWP12T30P140 U191 ( .I0(n175), .I1(acc[5]), .S(n174), .ZN(n93) );
  INVD0BWP12T30P140 U192 ( .I(n177), .ZN(n179) );
  AOI221D0BWP12T30P140 U193 ( .A1(din[6]), .A2(n179), .B1(n178), .B2(n177), 
        .C(n176), .ZN(n180) );
  MUX2ND0BWP12T30P140 U194 ( .I0(n181), .I1(acc[6]), .S(n180), .ZN(n92) );
  INVD0BWP12T30P140 U195 ( .I(acc[15]), .ZN(n188) );
  OAI21D0BWP12T30P140 U196 ( .A1(n184), .A2(n183), .B(n182), .ZN(n186) );
  OAI21D0BWP12T30P140 U197 ( .A1(din[15]), .A2(n186), .B(en), .ZN(n185) );
  AOI21D0BWP12T30P140 U198 ( .A1(din[15]), .A2(n186), .B(n185), .ZN(n187) );
  MUX2ND0BWP12T30P140 U199 ( .I0(n188), .I1(acc[15]), .S(n187), .ZN(n83) );
endmodule

