/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:51:06 2026
/////////////////////////////////////////////////////////////


module radix2_div ( clk, rst, dividend, divisor, sign, opn_valid, res_valid, 
        res_ready, result );
  input [7:0] dividend;
  input [7:0] divisor;
  output [15:0] result;
  input clk, rst, sign, opn_valid, res_ready;
  output res_valid;
  wire   sr_15_, sr_14_, sr_13_, sr_12_, sr_11_, sr_10_, sr_9_, sr_8_, sr_7_,
         sr_6_, sr_5_, sr_4_, sr_3_, sr_2_, sr_1_, dvd_7_, dsr_7_, busy, N78,
         N79, N80, N81, N82, N83, N84, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, DP_OP_17J1_122_6815_n29, DP_OP_17J1_122_6815_n20,
         DP_OP_17J1_122_6815_n19, DP_OP_17J1_122_6815_n18,
         DP_OP_17J1_122_6815_n17, DP_OP_17J1_122_6815_n16,
         DP_OP_17J1_122_6815_n15, DP_OP_17J1_122_6815_n14,
         DP_OP_17J1_122_6815_n8, DP_OP_17J1_122_6815_n7,
         DP_OP_17J1_122_6815_n6, DP_OP_17J1_122_6815_n5,
         DP_OP_17J1_122_6815_n4, DP_OP_17J1_122_6815_n3,
         DP_OP_17J1_122_6815_n2, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171;
  wire   [3:0] cnt;
  assign result[8] = result[15];
  assign result[9] = result[15];
  assign result[10] = result[15];
  assign result[11] = result[15];
  assign result[12] = result[15];
  assign result[13] = result[15];
  assign result[14] = result[15];

  DFQD2BWP12T30P140 sr_reg_6_ ( .D(n78), .CP(clk), .Q(sr_6_) );
  DFQD2BWP12T30P140 sr_reg_7_ ( .D(n77), .CP(clk), .Q(sr_7_) );
  DFQD2BWP12T30P140 res_valid_reg ( .D(n92), .CP(clk), .Q(res_valid) );
  DFQD2BWP12T30P140 sr_reg_15_ ( .D(n69), .CP(clk), .Q(sr_15_) );
  DFQD2BWP12T30P140 dsr_reg_7_ ( .D(n90), .CP(clk), .Q(dsr_7_) );
  DFQD2BWP12T30P140 sr_reg_3_ ( .D(n81), .CP(clk), .Q(sr_3_) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n88), .CP(clk), .Q(cnt[0]) );
  DFQD2BWP12T30P140 sr_reg_5_ ( .D(n79), .CP(clk), .Q(sr_5_) );
  DFQD2BWP12T30P140 sr_reg_4_ ( .D(n80), .CP(clk), .Q(sr_4_) );
  DFQD2BWP12T30P140 sr_reg_2_ ( .D(n82), .CP(clk), .Q(sr_2_) );
  DFQD2BWP12T30P140 sr_reg_0_ ( .D(n84), .CP(clk), .Q(result[0]) );
  DFQD2BWP12T30P140 busy_reg ( .D(n89), .CP(n171), .Q(busy) );
  DFQD2BWP12T30P140 sr_reg_1_ ( .D(n83), .CP(clk), .Q(sr_1_) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n85), .CP(n171), .Q(cnt[3]) );
  DFQD2BWP12T30P140 dvd_reg_7_ ( .D(n91), .CP(n171), .Q(dvd_7_) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n86), .CP(n171), .Q(cnt[2]) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n87), .CP(n171), .Q(cnt[1]) );
  DFQD2BWP12T30P140 sr_reg_8_ ( .D(n76), .CP(n171), .Q(sr_8_) );
  DFQD2BWP12T30P140 sr_reg_9_ ( .D(n75), .CP(n171), .Q(sr_9_) );
  DFQD2BWP12T30P140 sr_reg_10_ ( .D(n74), .CP(n171), .Q(sr_10_) );
  DFQD2BWP12T30P140 sr_reg_11_ ( .D(n73), .CP(n171), .Q(sr_11_) );
  DFQD2BWP12T30P140 sr_reg_12_ ( .D(n72), .CP(n171), .Q(sr_12_) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U9 ( .A(DP_OP_17J1_122_6815_n29), .B(
        sr_7_), .CI(DP_OP_17J1_122_6815_n20), .CO(DP_OP_17J1_122_6815_n8), .S(
        N78) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U8 ( .A(sr_8_), .B(
        DP_OP_17J1_122_6815_n19), .CI(DP_OP_17J1_122_6815_n8), .CO(
        DP_OP_17J1_122_6815_n7), .S(N79) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U7 ( .A(sr_9_), .B(
        DP_OP_17J1_122_6815_n18), .CI(DP_OP_17J1_122_6815_n7), .CO(
        DP_OP_17J1_122_6815_n6), .S(N80) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U6 ( .A(sr_10_), .B(
        DP_OP_17J1_122_6815_n17), .CI(DP_OP_17J1_122_6815_n6), .CO(
        DP_OP_17J1_122_6815_n5), .S(N81) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U5 ( .A(sr_11_), .B(
        DP_OP_17J1_122_6815_n16), .CI(DP_OP_17J1_122_6815_n5), .CO(
        DP_OP_17J1_122_6815_n4), .S(N82) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U4 ( .A(sr_12_), .B(
        DP_OP_17J1_122_6815_n15), .CI(DP_OP_17J1_122_6815_n4), .CO(
        DP_OP_17J1_122_6815_n3), .S(N83) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_6815_U3 ( .A(sr_13_), .B(
        DP_OP_17J1_122_6815_n14), .CI(DP_OP_17J1_122_6815_n3), .CO(
        DP_OP_17J1_122_6815_n2), .S(N84) );
  DFQD1BWP12T30P140 sr_reg_14_ ( .D(n70), .CP(n171), .Q(sr_14_) );
  DFQD1BWP12T30P140 sr_reg_13_ ( .D(n71), .CP(n171), .Q(sr_13_) );
  INVD0BWP12T30P140 U103 ( .I(cnt[3]), .ZN(n130) );
  INVD0BWP12T30P140 U104 ( .I(busy), .ZN(n132) );
  ND2D0BWP12T30P140 U105 ( .A1(opn_valid), .A2(n132), .ZN(n97) );
  INR2D1BWP12T30P140 U106 ( .A1(n97), .B1(rst), .ZN(n151) );
  INVD0BWP12T30P140 U107 ( .I(n151), .ZN(n129) );
  AOI21D0BWP12T30P140 U108 ( .A1(busy), .A2(n130), .B(n129), .ZN(n152) );
  NR3D0BWP12T30P140 U109 ( .A1(rst), .A2(cnt[3]), .A3(n132), .ZN(n153) );
  AO22D0BWP12T30P140 U110 ( .A1(n152), .A2(sr_13_), .B1(n153), .B2(N83), .Z(
        n71) );
  INVD0BWP12T30P140 U111 ( .I(sr_6_), .ZN(n170) );
  INVD0BWP12T30P140 U112 ( .I(n153), .ZN(n125) );
  NR3D0BWP12T30P140 U113 ( .A1(dividend[2]), .A2(dividend[1]), .A3(dividend[0]), .ZN(n103) );
  INVD0BWP12T30P140 U114 ( .I(n103), .ZN(n102) );
  NR2D0BWP12T30P140 U115 ( .A1(dividend[3]), .A2(n102), .ZN(n118) );
  INVD0BWP12T30P140 U116 ( .I(dividend[4]), .ZN(n117) );
  ND2D0BWP12T30P140 U117 ( .A1(n118), .A2(n117), .ZN(n109) );
  NR2D0BWP12T30P140 U118 ( .A1(dividend[5]), .A2(n109), .ZN(n146) );
  INVD0BWP12T30P140 U119 ( .I(dividend[6]), .ZN(n94) );
  INVD0BWP12T30P140 U120 ( .I(sign), .ZN(n134) );
  AOI21D0BWP12T30P140 U121 ( .A1(n146), .A2(n94), .B(n134), .ZN(n96) );
  NR2D0BWP12T30P140 U122 ( .A1(rst), .A2(n97), .ZN(n126) );
  ND2D0BWP12T30P140 U123 ( .A1(n126), .A2(dividend[7]), .ZN(n150) );
  INVD0BWP12T30P140 U124 ( .I(n152), .ZN(n95) );
  INVD0BWP12T30P140 U125 ( .I(sr_7_), .ZN(n144) );
  OAI222D0BWP12T30P140 U126 ( .A1(n170), .A2(n125), .B1(n96), .B2(n150), .C1(
        n95), .C2(n144), .ZN(n77) );
  AO22D0BWP12T30P140 U127 ( .A1(n152), .A2(sr_12_), .B1(n153), .B2(N82), .Z(
        n72) );
  NR4D0BWP12T30P140 U128 ( .A1(cnt[1]), .A2(cnt[2]), .A3(cnt[0]), .A4(n130), 
        .ZN(n133) );
  AOI21D0BWP12T30P140 U129 ( .A1(n133), .A2(n97), .B(res_valid), .ZN(n98) );
  AOI211D0BWP12T30P140 U130 ( .A1(res_ready), .A2(res_valid), .B(rst), .C(n98), 
        .ZN(n92) );
  AO22D0BWP12T30P140 U131 ( .A1(n152), .A2(sr_11_), .B1(n153), .B2(N81), .Z(
        n73) );
  INVD0BWP12T30P140 U132 ( .I(sr_15_), .ZN(DP_OP_17J1_122_6815_n29) );
  CKXOR2D0BWP12T30P140 U133 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[7]), 
        .Z(n99) );
  CKXOR2D0BWP12T30P140 U134 ( .A1(n99), .A2(sr_14_), .Z(n100) );
  CKXOR2D0BWP12T30P140 U135 ( .A1(n100), .A2(DP_OP_17J1_122_6815_n2), .Z(n101)
         );
  AO22D0BWP12T30P140 U136 ( .A1(n152), .A2(sr_15_), .B1(n153), .B2(n101), .Z(
        n69) );
  AO22D0BWP12T30P140 U137 ( .A1(n152), .A2(sr_10_), .B1(n153), .B2(N80), .Z(
        n74) );
  AO22D0BWP12T30P140 U138 ( .A1(n126), .A2(divisor[7]), .B1(n151), .B2(dsr_7_), 
        .Z(n90) );
  AO22D0BWP12T30P140 U139 ( .A1(n152), .A2(sr_9_), .B1(n153), .B2(N79), .Z(n75) );
  NR2D0BWP12T30P140 U140 ( .A1(n134), .A2(n150), .ZN(n157) );
  ND2D0BWP12T30P140 U141 ( .A1(n157), .A2(n102), .ZN(n121) );
  AOI22D0BWP12T30P140 U142 ( .A1(n153), .A2(sr_2_), .B1(n152), .B2(sr_3_), 
        .ZN(n105) );
  INVD0BWP12T30P140 U143 ( .I(n126), .ZN(n131) );
  AOI21D0BWP12T30P140 U144 ( .A1(sign), .A2(dividend[7]), .B(n131), .ZN(n154)
         );
  AOI32D0BWP12T30P140 U145 ( .A1(n157), .A2(dividend[3]), .A3(n103), .B1(n154), 
        .B2(dividend[3]), .ZN(n104) );
  OAI211D0BWP12T30P140 U146 ( .A1(dividend[3]), .A2(n121), .B(n105), .C(n104), 
        .ZN(n81) );
  AO22D0BWP12T30P140 U147 ( .A1(n152), .A2(sr_8_), .B1(n153), .B2(N78), .Z(n76) );
  INVD0BWP12T30P140 U148 ( .I(cnt[0]), .ZN(n106) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n125), .A2(n106), .B1(n106), .B2(n152), .ZN(
        n88) );
  AOI21D0BWP12T30P140 U150 ( .A1(n106), .A2(n153), .B(n152), .ZN(n113) );
  ND2D0BWP12T30P140 U151 ( .A1(n153), .A2(cnt[0]), .ZN(n108) );
  INVD0BWP12T30P140 U152 ( .I(cnt[1]), .ZN(n107) );
  AOI22D0BWP12T30P140 U153 ( .A1(cnt[1]), .A2(n113), .B1(n108), .B2(n107), 
        .ZN(n87) );
  ND2D0BWP12T30P140 U154 ( .A1(n157), .A2(n109), .ZN(n115) );
  AOI22D0BWP12T30P140 U155 ( .A1(n153), .A2(sr_4_), .B1(sr_5_), .B2(n152), 
        .ZN(n112) );
  INVD0BWP12T30P140 U156 ( .I(n109), .ZN(n110) );
  AOI32D0BWP12T30P140 U157 ( .A1(n157), .A2(dividend[5]), .A3(n110), .B1(n154), 
        .B2(dividend[5]), .ZN(n111) );
  OAI211D0BWP12T30P140 U158 ( .A1(dividend[5]), .A2(n115), .B(n112), .C(n111), 
        .ZN(n79) );
  OA21D0BWP12T30P140 U159 ( .A1(n125), .A2(cnt[1]), .B(n113), .Z(n114) );
  ND3D0BWP12T30P140 U160 ( .A1(n153), .A2(cnt[1]), .A3(cnt[0]), .ZN(n127) );
  INVD0BWP12T30P140 U161 ( .I(cnt[2]), .ZN(n128) );
  AOI22D0BWP12T30P140 U162 ( .A1(cnt[2]), .A2(n114), .B1(n127), .B2(n128), 
        .ZN(n86) );
  INVD0BWP12T30P140 U163 ( .I(sr_3_), .ZN(n139) );
  AOI22D0BWP12T30P140 U164 ( .A1(dividend[4]), .A2(n154), .B1(n152), .B2(sr_4_), .ZN(n120) );
  INVD0BWP12T30P140 U165 ( .I(n115), .ZN(n116) );
  OAI21D0BWP12T30P140 U166 ( .A1(n118), .A2(n117), .B(n116), .ZN(n119) );
  OAI211D0BWP12T30P140 U167 ( .A1(n139), .A2(n125), .B(n120), .C(n119), .ZN(
        n80) );
  INVD0BWP12T30P140 U168 ( .I(sr_1_), .ZN(n163) );
  AOI22D0BWP12T30P140 U169 ( .A1(dividend[2]), .A2(n154), .B1(n152), .B2(sr_2_), .ZN(n124) );
  INVD0BWP12T30P140 U170 ( .I(dividend[1]), .ZN(n158) );
  INVD0BWP12T30P140 U171 ( .I(dividend[0]), .ZN(n155) );
  ND2D0BWP12T30P140 U172 ( .A1(n158), .A2(n155), .ZN(n122) );
  AO21D0BWP12T30P140 U173 ( .A1(dividend[2]), .A2(n122), .B(n121), .Z(n123) );
  OAI211D0BWP12T30P140 U174 ( .A1(n163), .A2(n125), .B(n124), .C(n123), .ZN(
        n82) );
  AO22D0BWP12T30P140 U175 ( .A1(n152), .A2(sr_14_), .B1(n153), .B2(N84), .Z(
        n70) );
  CKXOR2D0BWP12T30P140 U176 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[0]), 
        .Z(DP_OP_17J1_122_6815_n20) );
  CKXOR2D0BWP12T30P140 U177 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[1]), 
        .Z(DP_OP_17J1_122_6815_n19) );
  CKXOR2D0BWP12T30P140 U178 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[2]), 
        .Z(DP_OP_17J1_122_6815_n18) );
  CKXOR2D0BWP12T30P140 U179 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[3]), 
        .Z(DP_OP_17J1_122_6815_n17) );
  CKXOR2D0BWP12T30P140 U180 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[4]), 
        .Z(DP_OP_17J1_122_6815_n16) );
  CKXOR2D0BWP12T30P140 U181 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[5]), 
        .Z(DP_OP_17J1_122_6815_n15) );
  CKXOR2D0BWP12T30P140 U182 ( .A1(DP_OP_17J1_122_6815_n29), .A2(divisor[6]), 
        .Z(DP_OP_17J1_122_6815_n14) );
  AO222D0BWP12T30P140 U183 ( .A1(result[0]), .A2(n152), .B1(n153), .B2(
        DP_OP_17J1_122_6815_n29), .C1(dividend[0]), .C2(n126), .Z(n84) );
  OAI22D0BWP12T30P140 U184 ( .A1(n130), .A2(n129), .B1(n128), .B2(n127), .ZN(
        n85) );
  OAI31D0BWP12T30P140 U185 ( .A1(rst), .A2(n133), .A3(n132), .B(n131), .ZN(n89) );
  CKBD0BWP12T30P140 U186 ( .I(clk), .Z(n171) );
  NR2D0BWP12T30P140 U187 ( .A1(sr_1_), .A2(result[0]), .ZN(n137) );
  AOI21D0BWP12T30P140 U188 ( .A1(dsr_7_), .A2(dvd_7_), .B(n134), .ZN(n135) );
  OAI21D0BWP12T30P140 U189 ( .A1(dsr_7_), .A2(dvd_7_), .B(n135), .ZN(n161) );
  OAI21D0BWP12T30P140 U190 ( .A1(n137), .A2(n161), .B(sr_2_), .ZN(n136) );
  OAI31D0BWP12T30P140 U191 ( .A1(n137), .A2(sr_2_), .A3(n161), .B(n136), .ZN(
        result[2]) );
  NR3D0BWP12T30P140 U192 ( .A1(sr_2_), .A2(sr_1_), .A3(result[0]), .ZN(n140)
         );
  OAI21D0BWP12T30P140 U193 ( .A1(n140), .A2(n161), .B(sr_3_), .ZN(n138) );
  OAI31D0BWP12T30P140 U194 ( .A1(n140), .A2(sr_3_), .A3(n161), .B(n138), .ZN(
        result[3]) );
  ND2D0BWP12T30P140 U195 ( .A1(n140), .A2(n139), .ZN(n164) );
  NR2D0BWP12T30P140 U196 ( .A1(sr_4_), .A2(n164), .ZN(n142) );
  OAI21D0BWP12T30P140 U197 ( .A1(n142), .A2(n161), .B(sr_5_), .ZN(n141) );
  OAI31D0BWP12T30P140 U198 ( .A1(n142), .A2(sr_5_), .A3(n161), .B(n141), .ZN(
        result[5]) );
  IND2D1BWP12T30P140 U199 ( .A1(sr_5_), .B1(n142), .ZN(n167) );
  NR2D0BWP12T30P140 U200 ( .A1(sr_6_), .A2(n167), .ZN(n145) );
  OAI21D0BWP12T30P140 U201 ( .A1(n145), .A2(n161), .B(sr_7_), .ZN(n143) );
  OAI31D0BWP12T30P140 U202 ( .A1(n145), .A2(sr_7_), .A3(n161), .B(n143), .ZN(
        result[7]) );
  AOI21D0BWP12T30P140 U203 ( .A1(n145), .A2(n144), .B(n161), .ZN(result[15])
         );
  AOI22D0BWP12T30P140 U204 ( .A1(n153), .A2(sr_5_), .B1(n152), .B2(sr_6_), 
        .ZN(n149) );
  XNR2D0BWP12T30P140 U205 ( .A1(dividend[6]), .A2(n146), .ZN(n147) );
  AOI22D0BWP12T30P140 U206 ( .A1(dividend[6]), .A2(n154), .B1(n157), .B2(n147), 
        .ZN(n148) );
  ND2D0BWP12T30P140 U207 ( .A1(n149), .A2(n148), .ZN(n78) );
  IOA21D0BWP12T30P140 U208 ( .A1(n151), .A2(dvd_7_), .B(n150), .ZN(n91) );
  AOI22D0BWP12T30P140 U209 ( .A1(n153), .A2(result[0]), .B1(n152), .B2(sr_1_), 
        .ZN(n160) );
  AO21D0BWP12T30P140 U210 ( .A1(n155), .A2(n157), .B(n154), .Z(n156) );
  AOI32D0BWP12T30P140 U211 ( .A1(dividend[0]), .A2(n158), .A3(n157), .B1(
        dividend[1]), .B2(n156), .ZN(n159) );
  ND2D0BWP12T30P140 U212 ( .A1(n160), .A2(n159), .ZN(n83) );
  INVD0BWP12T30P140 U213 ( .I(n161), .ZN(n168) );
  ND2D0BWP12T30P140 U214 ( .A1(result[0]), .A2(n168), .ZN(n162) );
  MUX2ND0BWP12T30P140 U215 ( .I0(sr_1_), .I1(n163), .S(n162), .ZN(result[1])
         );
  INVD0BWP12T30P140 U216 ( .I(sr_4_), .ZN(n166) );
  ND2D0BWP12T30P140 U217 ( .A1(n168), .A2(n164), .ZN(n165) );
  MUX2ND0BWP12T30P140 U218 ( .I0(sr_4_), .I1(n166), .S(n165), .ZN(result[4])
         );
  ND2D0BWP12T30P140 U219 ( .A1(n168), .A2(n167), .ZN(n169) );
  MUX2ND0BWP12T30P140 U220 ( .I0(sr_6_), .I1(n170), .S(n169), .ZN(result[6])
         );
endmodule

