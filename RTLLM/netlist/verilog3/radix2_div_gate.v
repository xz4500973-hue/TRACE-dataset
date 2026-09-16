/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:28:47 2026
/////////////////////////////////////////////////////////////


module radix2_div ( clk, rst, dividend, divisor, sign, opn_valid, res_valid, 
        res_ready, result );
  input [7:0] dividend;
  input [7:0] divisor;
  output [15:0] result;
  input clk, rst, sign, opn_valid, res_ready;
  output res_valid;
  wire   sr_15_, sr_14_, sr_13_, sr_12_, sr_11_, sr_10_, sr_9_, sr_8_, sr_7_,
         sr_6_, sr_5_, sr_4_, sr_3_, sr_2_, sr_1_, dvd_7_, dsr_7_, busy, n98,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288;
  wire   [8:0] ndsr;
  wire   [3:0] cnt;
  assign result[8] = result[15];
  assign result[9] = result[15];
  assign result[10] = result[15];
  assign result[11] = result[15];
  assign result[12] = result[15];
  assign result[13] = result[15];
  assign result[14] = result[15];

  DFQD2BWP12T30P140 ndsr_reg_8_ ( .D(n122), .CP(clk), .Q(ndsr[8]) );
  DFQD2BWP12T30P140 ndsr_reg_0_ ( .D(n130), .CP(clk), .Q(ndsr[0]) );
  DFQD2BWP12T30P140 busy_reg ( .D(n131), .CP(clk), .Q(busy) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n116), .CP(n288), .Q(cnt[2]) );
  DFQD2BWP12T30P140 ndsr_reg_1_ ( .D(n129), .CP(clk), .Q(ndsr[1]) );
  DFQD2BWP12T30P140 ndsr_reg_2_ ( .D(n128), .CP(clk), .Q(ndsr[2]) );
  DFQD2BWP12T30P140 ndsr_reg_3_ ( .D(n127), .CP(clk), .Q(ndsr[3]) );
  DFQD2BWP12T30P140 ndsr_reg_4_ ( .D(n126), .CP(clk), .Q(ndsr[4]) );
  DFQD2BWP12T30P140 ndsr_reg_5_ ( .D(n125), .CP(clk), .Q(ndsr[5]) );
  DFQD2BWP12T30P140 ndsr_reg_6_ ( .D(n124), .CP(clk), .Q(ndsr[6]) );
  DFQD2BWP12T30P140 ndsr_reg_7_ ( .D(n123), .CP(clk), .Q(ndsr[7]) );
  DFQD2BWP12T30P140 res_valid_reg ( .D(n119), .CP(n288), .Q(res_valid) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n118), .CP(n288), .Q(cnt[0]) );
  DFQD2BWP12T30P140 dsr_reg_7_ ( .D(n120), .CP(n288), .Q(dsr_7_) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n115), .CP(n288), .Q(cnt[1]) );
  DFQD2BWP12T30P140 sr_reg_0_ ( .D(n114), .CP(clk), .Q(result[0]) );
  DFQD2BWP12T30P140 sr_reg_8_ ( .D(n113), .CP(n288), .Q(sr_8_) );
  DFQD2BWP12T30P140 sr_reg_3_ ( .D(n101), .CP(n288), .Q(sr_3_) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n117), .CP(n288), .Q(cnt[3]) );
  DFQD2BWP12T30P140 sr_reg_7_ ( .D(n105), .CP(clk), .Q(sr_7_) );
  DFQD2BWP12T30P140 sr_reg_5_ ( .D(n103), .CP(n288), .Q(sr_5_) );
  DFQD2BWP12T30P140 sr_reg_4_ ( .D(n102), .CP(n288), .Q(sr_4_) );
  DFQD2BWP12T30P140 sr_reg_6_ ( .D(n104), .CP(n288), .Q(sr_6_) );
  DFQD2BWP12T30P140 sr_reg_2_ ( .D(n100), .CP(n288), .Q(sr_2_) );
  DFQD2BWP12T30P140 sr_reg_15_ ( .D(n98), .CP(clk), .Q(sr_15_) );
  DFQD2BWP12T30P140 sr_reg_1_ ( .D(n106), .CP(n288), .Q(sr_1_) );
  DFQD2BWP12T30P140 sr_reg_14_ ( .D(n107), .CP(n288), .Q(sr_14_) );
  DFQD2BWP12T30P140 sr_reg_9_ ( .D(n112), .CP(clk), .Q(sr_9_) );
  DFQD2BWP12T30P140 sr_reg_11_ ( .D(n110), .CP(clk), .Q(sr_11_) );
  DFQD2BWP12T30P140 sr_reg_12_ ( .D(n109), .CP(n288), .Q(sr_12_) );
  DFQD1BWP12T30P140 dvd_reg_7_ ( .D(n121), .CP(n288), .Q(dvd_7_) );
  DFQD1BWP12T30P140 sr_reg_10_ ( .D(n111), .CP(n288), .Q(sr_10_) );
  DFQD1BWP12T30P140 sr_reg_13_ ( .D(n108), .CP(clk), .Q(sr_13_) );
  NR3D0BWP12T30P140 U151 ( .A1(divisor[2]), .A2(divisor[0]), .A3(divisor[1]), 
        .ZN(n171) );
  INVD0BWP12T30P140 U152 ( .I(divisor[3]), .ZN(n173) );
  ND2D0BWP12T30P140 U153 ( .A1(n171), .A2(n173), .ZN(n178) );
  NR2D0BWP12T30P140 U154 ( .A1(divisor[4]), .A2(n178), .ZN(n185) );
  INVD0BWP12T30P140 U155 ( .I(divisor[5]), .ZN(n188) );
  ND2D0BWP12T30P140 U156 ( .A1(n185), .A2(n188), .ZN(n141) );
  NR2D0BWP12T30P140 U157 ( .A1(divisor[6]), .A2(n141), .ZN(n209) );
  INVD0BWP12T30P140 U158 ( .I(busy), .ZN(n150) );
  IND3D1BWP12T30P140 U159 ( .A1(rst), .B1(opn_valid), .B2(n150), .ZN(n259) );
  INVD0BWP12T30P140 U160 ( .I(n259), .ZN(n277) );
  INVD0BWP12T30P140 U161 ( .I(divisor[7]), .ZN(n233) );
  INVD0BWP12T30P140 U162 ( .I(ndsr[8]), .ZN(n147) );
  AOI32D0BWP12T30P140 U163 ( .A1(n209), .A2(n277), .A3(n233), .B1(n147), .B2(
        n259), .ZN(n122) );
  OA22D0BWP12T30P140 U164 ( .A1(n259), .A2(divisor[0]), .B1(ndsr[0]), .B2(n277), .Z(n130) );
  INVD0BWP12T30P140 U165 ( .I(divisor[6]), .ZN(n143) );
  INVD0BWP12T30P140 U166 ( .I(sign), .ZN(n236) );
  NR2D0BWP12T30P140 U167 ( .A1(n236), .A2(n233), .ZN(n186) );
  INVD0BWP12T30P140 U168 ( .I(n186), .ZN(n211) );
  ND2D0BWP12T30P140 U169 ( .A1(n211), .A2(n141), .ZN(n142) );
  MUX2ND0BWP12T30P140 U170 ( .I0(n143), .I1(divisor[6]), .S(n142), .ZN(n144)
         );
  MAOI22D0BWP12T30P140 U171 ( .A1(n277), .A2(n144), .B1(ndsr[6]), .B2(n277), 
        .ZN(n124) );
  NR2D0BWP12T30P140 U172 ( .A1(rst), .A2(n150), .ZN(n166) );
  INVD0BWP12T30P140 U173 ( .I(cnt[1]), .ZN(n223) );
  INVD0BWP12T30P140 U174 ( .I(cnt[0]), .ZN(n225) );
  NR2D0BWP12T30P140 U175 ( .A1(rst), .A2(opn_valid), .ZN(n151) );
  OR2D0BWP12T30P140 U176 ( .A1(n166), .A2(n151), .Z(n235) );
  OAI21D0BWP12T30P140 U177 ( .A1(n150), .A2(cnt[3]), .B(n235), .ZN(n201) );
  INVD0BWP12T30P140 U178 ( .I(n201), .ZN(n276) );
  AOI21D0BWP12T30P140 U179 ( .A1(n225), .A2(n166), .B(n276), .ZN(n224) );
  INVD0BWP12T30P140 U180 ( .I(n224), .ZN(n145) );
  AOI21D0BWP12T30P140 U181 ( .A1(n166), .A2(n223), .B(n145), .ZN(n222) );
  INVD0BWP12T30P140 U182 ( .I(cnt[3]), .ZN(n221) );
  ND2D0BWP12T30P140 U183 ( .A1(n221), .A2(n166), .ZN(n258) );
  INVD0BWP12T30P140 U184 ( .I(n258), .ZN(n226) );
  ND3D0BWP12T30P140 U185 ( .A1(n226), .A2(cnt[1]), .A3(cnt[0]), .ZN(n219) );
  INVD0BWP12T30P140 U186 ( .I(cnt[2]), .ZN(n220) );
  AOI22D0BWP12T30P140 U187 ( .A1(cnt[2]), .A2(n222), .B1(n219), .B2(n220), 
        .ZN(n116) );
  ND2D0BWP12T30P140 U188 ( .A1(ndsr[0]), .A2(sr_8_), .ZN(n148) );
  INVD0BWP12T30P140 U189 ( .I(n148), .ZN(n149) );
  MUX2ND0BWP12T30P140 U190 ( .I0(ndsr[8]), .I1(n147), .S(n146), .ZN(n163) );
  NR2D0BWP12T30P140 U191 ( .A1(n258), .A2(n163), .ZN(n273) );
  INVD0BWP12T30P140 U192 ( .I(n273), .ZN(n278) );
  OAI21D0BWP12T30P140 U193 ( .A1(ndsr[0]), .A2(sr_8_), .B(n148), .ZN(n232) );
  ND2D0BWP12T30P140 U194 ( .A1(cnt[3]), .A2(n166), .ZN(n154) );
  NR2D0BWP12T30P140 U195 ( .A1(n163), .A2(n154), .ZN(n270) );
  FA1D0BWP12T30P140 U196 ( .A(sr_9_), .B(ndsr[1]), .CI(n149), .CO(n261), .S(
        n265) );
  INVD0BWP12T30P140 U197 ( .I(n163), .ZN(n164) );
  ND2D0BWP12T30P140 U198 ( .A1(n151), .A2(n150), .ZN(n218) );
  OAI21D0BWP12T30P140 U199 ( .A1(n164), .A2(n154), .B(n218), .ZN(n268) );
  AOI22D0BWP12T30P140 U200 ( .A1(n270), .A2(n265), .B1(sr_9_), .B2(n268), .ZN(
        n153) );
  NR2D0BWP12T30P140 U201 ( .A1(n164), .A2(n258), .ZN(n271) );
  ND2D0BWP12T30P140 U202 ( .A1(sr_8_), .A2(n271), .ZN(n152) );
  OAI211D0BWP12T30P140 U203 ( .A1(n278), .A2(n232), .B(n153), .C(n152), .ZN(
        n112) );
  INVD0BWP12T30P140 U204 ( .I(res_valid), .ZN(n155) );
  OAI32D0BWP12T30P140 U205 ( .A1(n155), .A2(rst), .A3(res_ready), .B1(
        res_valid), .B2(n154), .ZN(n119) );
  INVD0BWP12T30P140 U206 ( .I(divisor[1]), .ZN(n157) );
  ND2D0BWP12T30P140 U207 ( .A1(divisor[0]), .A2(n211), .ZN(n156) );
  MUX2ND0BWP12T30P140 U208 ( .I0(n157), .I1(divisor[1]), .S(n156), .ZN(n158)
         );
  MAOI22D0BWP12T30P140 U209 ( .A1(n277), .A2(n158), .B1(ndsr[1]), .B2(n277), 
        .ZN(n129) );
  INVD0BWP12T30P140 U210 ( .I(divisor[2]), .ZN(n160) );
  OAI21D0BWP12T30P140 U211 ( .A1(divisor[0]), .A2(divisor[1]), .B(n211), .ZN(
        n159) );
  MUX2ND0BWP12T30P140 U212 ( .I0(n160), .I1(divisor[2]), .S(n159), .ZN(n161)
         );
  MAOI22D0BWP12T30P140 U213 ( .A1(n277), .A2(n161), .B1(ndsr[2]), .B2(n277), 
        .ZN(n128) );
  FA1D0BWP12T30P140 U214 ( .A(sr_14_), .B(ndsr[6]), .CI(n162), .CO(n165), .S(
        n269) );
  AOI221D0BWP12T30P140 U215 ( .A1(n269), .A2(n164), .B1(sr_14_), .B2(n163), 
        .C(cnt[3]), .ZN(n170) );
  FA1D0BWP12T30P140 U216 ( .A(sr_15_), .B(ndsr[7]), .CI(n165), .CO(n146), .S(
        n167) );
  OAI21D0BWP12T30P140 U217 ( .A1(n167), .A2(n221), .B(n166), .ZN(n169) );
  ND2D0BWP12T30P140 U218 ( .A1(n268), .A2(sr_15_), .ZN(n168) );
  OAI31D0BWP12T30P140 U219 ( .A1(n170), .A2(n268), .A3(n169), .B(n168), .ZN(
        n98) );
  NR2D0BWP12T30P140 U220 ( .A1(n186), .A2(n171), .ZN(n172) );
  MUX2ND0BWP12T30P140 U221 ( .I0(divisor[3]), .I1(n173), .S(n172), .ZN(n174)
         );
  MAOI22D0BWP12T30P140 U222 ( .A1(n277), .A2(n174), .B1(ndsr[3]), .B2(n277), 
        .ZN(n127) );
  INVD0BWP12T30P140 U223 ( .I(dividend[1]), .ZN(n196) );
  ND2D0BWP12T30P140 U224 ( .A1(sign), .A2(dividend[7]), .ZN(n214) );
  IND2D1BWP12T30P140 U225 ( .A1(n214), .B1(dividend[0]), .ZN(n175) );
  MUX2ND0BWP12T30P140 U226 ( .I0(n196), .I1(dividend[1]), .S(n175), .ZN(n177)
         );
  AOI22D0BWP12T30P140 U227 ( .A1(n276), .A2(sr_2_), .B1(n226), .B2(sr_1_), 
        .ZN(n176) );
  OAI21D0BWP12T30P140 U228 ( .A1(n259), .A2(n177), .B(n176), .ZN(n100) );
  INVD0BWP12T30P140 U229 ( .I(divisor[4]), .ZN(n180) );
  ND2D0BWP12T30P140 U230 ( .A1(n211), .A2(n178), .ZN(n179) );
  MUX2ND0BWP12T30P140 U231 ( .I0(n180), .I1(divisor[4]), .S(n179), .ZN(n181)
         );
  MAOI22D0BWP12T30P140 U232 ( .A1(n277), .A2(n181), .B1(ndsr[4]), .B2(n277), 
        .ZN(n126) );
  NR2D0BWP12T30P140 U233 ( .A1(n259), .A2(n214), .ZN(n191) );
  NR3D0BWP12T30P140 U234 ( .A1(dividend[1]), .A2(dividend[0]), .A3(dividend[2]), .ZN(n192) );
  INVD0BWP12T30P140 U235 ( .I(n192), .ZN(n190) );
  NR2D0BWP12T30P140 U236 ( .A1(dividend[3]), .A2(n190), .ZN(n204) );
  INVD0BWP12T30P140 U237 ( .I(dividend[4]), .ZN(n207) );
  ND2D0BWP12T30P140 U238 ( .A1(n204), .A2(n207), .ZN(n213) );
  ND2D0BWP12T30P140 U239 ( .A1(n191), .A2(n213), .ZN(n202) );
  AOI22D0BWP12T30P140 U240 ( .A1(n276), .A2(sr_6_), .B1(n226), .B2(sr_5_), 
        .ZN(n184) );
  INVD0BWP12T30P140 U241 ( .I(n213), .ZN(n182) );
  OAI211D0BWP12T30P140 U242 ( .A1(n182), .A2(n214), .B(n277), .C(dividend[5]), 
        .ZN(n183) );
  OAI211D0BWP12T30P140 U243 ( .A1(dividend[5]), .A2(n202), .B(n184), .C(n183), 
        .ZN(n104) );
  NR2D0BWP12T30P140 U244 ( .A1(n186), .A2(n185), .ZN(n187) );
  MUX2ND0BWP12T30P140 U245 ( .I0(divisor[5]), .I1(n188), .S(n187), .ZN(n189)
         );
  MAOI22D0BWP12T30P140 U246 ( .A1(n277), .A2(n189), .B1(ndsr[5]), .B2(n277), 
        .ZN(n125) );
  ND2D0BWP12T30P140 U247 ( .A1(n191), .A2(n190), .ZN(n197) );
  AOI22D0BWP12T30P140 U248 ( .A1(n276), .A2(sr_4_), .B1(n226), .B2(sr_3_), 
        .ZN(n194) );
  OAI211D0BWP12T30P140 U249 ( .A1(n192), .A2(n214), .B(n277), .C(dividend[3]), 
        .ZN(n193) );
  OAI211D0BWP12T30P140 U250 ( .A1(dividend[3]), .A2(n197), .B(n194), .C(n193), 
        .ZN(n102) );
  INVD0BWP12T30P140 U251 ( .I(sr_3_), .ZN(n243) );
  ND2D0BWP12T30P140 U252 ( .A1(n277), .A2(n214), .ZN(n208) );
  INVD0BWP12T30P140 U253 ( .I(n208), .ZN(n195) );
  AOI22D0BWP12T30P140 U254 ( .A1(dividend[2]), .A2(n195), .B1(n226), .B2(sr_2_), .ZN(n200) );
  IND2D1BWP12T30P140 U255 ( .A1(dividend[0]), .B1(n196), .ZN(n198) );
  AO21D0BWP12T30P140 U256 ( .A1(dividend[2]), .A2(n198), .B(n197), .Z(n199) );
  OAI211D0BWP12T30P140 U257 ( .A1(n243), .A2(n201), .B(n200), .C(n199), .ZN(
        n101) );
  AOI22D0BWP12T30P140 U258 ( .A1(n276), .A2(sr_5_), .B1(n226), .B2(sr_4_), 
        .ZN(n206) );
  INVD0BWP12T30P140 U259 ( .I(n202), .ZN(n203) );
  OAI21D0BWP12T30P140 U260 ( .A1(n204), .A2(n207), .B(n203), .ZN(n205) );
  OAI211D0BWP12T30P140 U261 ( .A1(n208), .A2(n207), .B(n206), .C(n205), .ZN(
        n103) );
  MUX2ND0BWP12T30P140 U262 ( .I0(n233), .I1(divisor[7]), .S(n209), .ZN(n212)
         );
  INVD0BWP12T30P140 U263 ( .I(ndsr[7]), .ZN(n210) );
  AOI32D0BWP12T30P140 U264 ( .A1(n212), .A2(n277), .A3(n211), .B1(n210), .B2(
        n259), .ZN(n123) );
  INVD0BWP12T30P140 U265 ( .I(dividend[6]), .ZN(n227) );
  NR2D0BWP12T30P140 U266 ( .A1(dividend[5]), .A2(n213), .ZN(n228) );
  NR2D0BWP12T30P140 U267 ( .A1(n228), .A2(n214), .ZN(n215) );
  MUX2ND0BWP12T30P140 U268 ( .I0(dividend[6]), .I1(n227), .S(n215), .ZN(n217)
         );
  AOI22D0BWP12T30P140 U269 ( .A1(n276), .A2(sr_7_), .B1(n226), .B2(sr_6_), 
        .ZN(n216) );
  OAI21D0BWP12T30P140 U270 ( .A1(n259), .A2(n217), .B(n216), .ZN(n105) );
  INVD0BWP12T30P140 U271 ( .I(result[0]), .ZN(n239) );
  INVD0BWP12T30P140 U272 ( .I(n270), .ZN(n231) );
  OAI21D0BWP12T30P140 U273 ( .A1(n218), .A2(n239), .B(n231), .ZN(n114) );
  OAI22D0BWP12T30P140 U274 ( .A1(n222), .A2(n221), .B1(n220), .B2(n219), .ZN(
        n117) );
  OAI32D0BWP12T30P140 U275 ( .A1(cnt[1]), .A2(n258), .A3(n225), .B1(n224), 
        .B2(n223), .ZN(n115) );
  AOI22D0BWP12T30P140 U276 ( .A1(n276), .A2(n225), .B1(n224), .B2(n259), .ZN(
        n118) );
  AOI22D0BWP12T30P140 U277 ( .A1(sr_7_), .A2(n226), .B1(sr_8_), .B2(n268), 
        .ZN(n230) );
  INR2D1BWP12T30P140 U278 ( .A1(dividend[7]), .B1(n259), .ZN(n234) );
  AOI32D0BWP12T30P140 U279 ( .A1(n228), .A2(n234), .A3(n227), .B1(n236), .B2(
        n234), .ZN(n229) );
  OAI211D0BWP12T30P140 U280 ( .A1(n232), .A2(n231), .B(n230), .C(n229), .ZN(
        n113) );
  MOAI22D0BWP12T30P140 U281 ( .A1(n259), .A2(n233), .B1(n235), .B2(dsr_7_), 
        .ZN(n120) );
  AO21D0BWP12T30P140 U282 ( .A1(dvd_7_), .A2(n235), .B(n234), .Z(n121) );
  CKBD0BWP12T30P140 U283 ( .I(clk), .Z(n288) );
  AOI21D0BWP12T30P140 U284 ( .A1(dsr_7_), .A2(dvd_7_), .B(n236), .ZN(n237) );
  OAI21D0BWP12T30P140 U285 ( .A1(dsr_7_), .A2(dvd_7_), .B(n237), .ZN(n280) );
  OAI21D0BWP12T30P140 U286 ( .A1(n239), .A2(n280), .B(sr_1_), .ZN(n238) );
  OAI31D0BWP12T30P140 U287 ( .A1(n239), .A2(sr_1_), .A3(n280), .B(n238), .ZN(
        result[1]) );
  NR2D0BWP12T30P140 U288 ( .A1(sr_1_), .A2(result[0]), .ZN(n241) );
  OAI21D0BWP12T30P140 U289 ( .A1(n241), .A2(n280), .B(sr_2_), .ZN(n240) );
  OAI31D0BWP12T30P140 U290 ( .A1(n241), .A2(sr_2_), .A3(n280), .B(n240), .ZN(
        result[2]) );
  NR3D0BWP12T30P140 U291 ( .A1(sr_2_), .A2(sr_1_), .A3(result[0]), .ZN(n244)
         );
  OAI21D0BWP12T30P140 U292 ( .A1(n244), .A2(n280), .B(sr_3_), .ZN(n242) );
  OAI31D0BWP12T30P140 U293 ( .A1(n244), .A2(sr_3_), .A3(n280), .B(n242), .ZN(
        result[3]) );
  ND2D0BWP12T30P140 U294 ( .A1(n244), .A2(n243), .ZN(n281) );
  NR2D0BWP12T30P140 U295 ( .A1(sr_4_), .A2(n281), .ZN(n246) );
  OAI21D0BWP12T30P140 U296 ( .A1(n246), .A2(n280), .B(sr_5_), .ZN(n245) );
  OAI31D0BWP12T30P140 U297 ( .A1(n246), .A2(sr_5_), .A3(n280), .B(n245), .ZN(
        result[5]) );
  IND2D1BWP12T30P140 U298 ( .A1(sr_5_), .B1(n246), .ZN(n284) );
  NR2D0BWP12T30P140 U299 ( .A1(sr_6_), .A2(n284), .ZN(n249) );
  OAI21D0BWP12T30P140 U300 ( .A1(n249), .A2(n280), .B(sr_7_), .ZN(n247) );
  OAI31D0BWP12T30P140 U301 ( .A1(n249), .A2(sr_7_), .A3(n280), .B(n247), .ZN(
        result[7]) );
  INVD0BWP12T30P140 U302 ( .I(sr_7_), .ZN(n248) );
  AOI21D0BWP12T30P140 U303 ( .A1(n249), .A2(n248), .B(n280), .ZN(result[15])
         );
  FA1D0BWP12T30P140 U304 ( .A(sr_13_), .B(ndsr[5]), .CI(n250), .CO(n162), .S(
        n272) );
  AOI22D0BWP12T30P140 U305 ( .A1(n270), .A2(n272), .B1(sr_13_), .B2(n268), 
        .ZN(n253) );
  FA1D0BWP12T30P140 U306 ( .A(sr_12_), .B(ndsr[4]), .CI(n251), .CO(n250), .S(
        n254) );
  AOI22D0BWP12T30P140 U307 ( .A1(n273), .A2(n254), .B1(n271), .B2(sr_12_), 
        .ZN(n252) );
  ND2D0BWP12T30P140 U308 ( .A1(n253), .A2(n252), .ZN(n108) );
  AOI22D0BWP12T30P140 U309 ( .A1(n270), .A2(n254), .B1(sr_12_), .B2(n268), 
        .ZN(n257) );
  FA1D0BWP12T30P140 U310 ( .A(sr_11_), .B(ndsr[3]), .CI(n255), .CO(n251), .S(
        n260) );
  AOI22D0BWP12T30P140 U311 ( .A1(n273), .A2(n260), .B1(n271), .B2(sr_11_), 
        .ZN(n256) );
  ND2D0BWP12T30P140 U312 ( .A1(n257), .A2(n256), .ZN(n109) );
  ND2D0BWP12T30P140 U313 ( .A1(n259), .A2(n258), .ZN(n131) );
  AOI22D0BWP12T30P140 U314 ( .A1(n270), .A2(n260), .B1(sr_11_), .B2(n268), 
        .ZN(n263) );
  FA1D0BWP12T30P140 U315 ( .A(sr_10_), .B(ndsr[2]), .CI(n261), .CO(n255), .S(
        n264) );
  AOI22D0BWP12T30P140 U316 ( .A1(n273), .A2(n264), .B1(n271), .B2(sr_10_), 
        .ZN(n262) );
  ND2D0BWP12T30P140 U317 ( .A1(n263), .A2(n262), .ZN(n110) );
  AOI22D0BWP12T30P140 U318 ( .A1(n270), .A2(n264), .B1(sr_10_), .B2(n268), 
        .ZN(n267) );
  AOI22D0BWP12T30P140 U319 ( .A1(n273), .A2(n265), .B1(n271), .B2(sr_9_), .ZN(
        n266) );
  ND2D0BWP12T30P140 U320 ( .A1(n267), .A2(n266), .ZN(n111) );
  AOI22D0BWP12T30P140 U321 ( .A1(n270), .A2(n269), .B1(sr_14_), .B2(n268), 
        .ZN(n275) );
  AOI22D0BWP12T30P140 U322 ( .A1(n273), .A2(n272), .B1(n271), .B2(sr_13_), 
        .ZN(n274) );
  ND2D0BWP12T30P140 U323 ( .A1(n275), .A2(n274), .ZN(n107) );
  AOI22D0BWP12T30P140 U324 ( .A1(n277), .A2(dividend[0]), .B1(n276), .B2(sr_1_), .ZN(n279) );
  ND2D0BWP12T30P140 U325 ( .A1(n279), .A2(n278), .ZN(n106) );
  INVD0BWP12T30P140 U326 ( .I(sr_4_), .ZN(n283) );
  INVD0BWP12T30P140 U327 ( .I(n280), .ZN(n285) );
  ND2D0BWP12T30P140 U328 ( .A1(n285), .A2(n281), .ZN(n282) );
  MUX2ND0BWP12T30P140 U329 ( .I0(sr_4_), .I1(n283), .S(n282), .ZN(result[4])
         );
  INVD0BWP12T30P140 U330 ( .I(sr_6_), .ZN(n287) );
  ND2D0BWP12T30P140 U331 ( .A1(n285), .A2(n284), .ZN(n286) );
  MUX2ND0BWP12T30P140 U332 ( .I0(sr_6_), .I1(n287), .S(n286), .ZN(result[6])
         );
endmodule

