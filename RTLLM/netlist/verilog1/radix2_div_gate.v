/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:41:51 2026
/////////////////////////////////////////////////////////////


module radix2_div ( clk, rst, dividend, divisor, sign, opn_valid, res_valid, 
        res_ready, result );
  input [7:0] dividend;
  input [7:0] divisor;
  output [15:0] result;
  input clk, rst, sign, opn_valid, res_ready;
  output res_valid;
  wire   dividend_save_7_, divisor_save_7_, start_cnt, n114, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320;
  wire   [7:1] REMAINER;
  wire   [7:1] QUOTIENT;
  wire   [8:0] NEG_DIVISOR;
  wire   [3:0] cnt;

  DFQD2BWP12T30P140 NEG_DIVISOR_reg_8_ ( .D(n145), .CP(clk), .Q(NEG_DIVISOR[8]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_0_ ( .D(n146), .CP(clk), .Q(NEG_DIVISOR[0]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_7_ ( .D(n144), .CP(clk), .Q(NEG_DIVISOR[7]) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n131), .CP(n320), .Q(cnt[2]) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n132), .CP(n320), .Q(cnt[1]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_6_ ( .D(n143), .CP(clk), .Q(NEG_DIVISOR[6]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_5_ ( .D(n142), .CP(clk), .Q(NEG_DIVISOR[5]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_4_ ( .D(n141), .CP(clk), .Q(NEG_DIVISOR[4]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_3_ ( .D(n140), .CP(clk), .Q(NEG_DIVISOR[3]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_2_ ( .D(n139), .CP(clk), .Q(NEG_DIVISOR[2]) );
  DFQD2BWP12T30P140 NEG_DIVISOR_reg_1_ ( .D(n138), .CP(clk), .Q(NEG_DIVISOR[1]) );
  DFQD2BWP12T30P140 start_cnt_reg ( .D(n134), .CP(n320), .Q(start_cnt) );
  DFQD2BWP12T30P140 res_valid_reg ( .D(n147), .CP(clk), .Q(res_valid) );
  DFQD2BWP12T30P140 dividend_save_reg_7_ ( .D(n137), .CP(n320), .Q(
        dividend_save_7_) );
  DFQD2BWP12T30P140 SR_reg_0_ ( .D(n129), .CP(n320), .Q(result[0]) );
  DFQD2BWP12T30P140 SR_reg_7_ ( .D(n122), .CP(n320), .Q(QUOTIENT[7]) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n133), .CP(n320), .Q(cnt[0]) );
  DFQD2BWP12T30P140 SR_reg_8_ ( .D(n121), .CP(clk), .Q(result[8]) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n130), .CP(n320), .Q(cnt[3]) );
  DFQD2BWP12T30P140 SR_reg_4_ ( .D(n125), .CP(n320), .Q(QUOTIENT[4]) );
  DFQD2BWP12T30P140 SR_reg_3_ ( .D(n126), .CP(n320), .Q(QUOTIENT[3]) );
  DFQD2BWP12T30P140 SR_reg_5_ ( .D(n124), .CP(n320), .Q(QUOTIENT[5]) );
  DFQD2BWP12T30P140 SR_reg_2_ ( .D(n127), .CP(n320), .Q(QUOTIENT[2]) );
  DFQD2BWP12T30P140 SR_reg_6_ ( .D(n123), .CP(clk), .Q(QUOTIENT[6]) );
  DFQD2BWP12T30P140 SR_reg_15_ ( .D(n135), .CP(n320), .Q(REMAINER[7]) );
  DFQD2BWP12T30P140 SR_reg_1_ ( .D(n128), .CP(n320), .Q(QUOTIENT[1]) );
  DFQD2BWP12T30P140 SR_reg_14_ ( .D(n114), .CP(clk), .Q(REMAINER[6]) );
  DFQD2BWP12T30P140 SR_reg_12_ ( .D(n117), .CP(n320), .Q(REMAINER[4]) );
  DFQD2BWP12T30P140 SR_reg_11_ ( .D(n118), .CP(n320), .Q(REMAINER[3]) );
  DFQD2BWP12T30P140 SR_reg_10_ ( .D(n119), .CP(clk), .Q(REMAINER[2]) );
  DFQD1BWP12T30P140 divisor_save_reg_7_ ( .D(n136), .CP(n320), .Q(
        divisor_save_7_) );
  DFQD1BWP12T30P140 SR_reg_13_ ( .D(n116), .CP(clk), .Q(REMAINER[5]) );
  DFQD1BWP12T30P140 SR_reg_9_ ( .D(n120), .CP(clk), .Q(REMAINER[1]) );
  INVD0BWP12T30P140 U173 ( .I(n294), .ZN(n156) );
  OAI211D0BWP12T30P140 U174 ( .A1(n197), .A2(n233), .B(dividend[5]), .C(n317), 
        .ZN(n198) );
  OAI211D0BWP12T30P140 U175 ( .A1(n228), .A2(n233), .B(dividend[3]), .C(n317), 
        .ZN(n229) );
  NR3D0BWP12T30P140 U176 ( .A1(divisor[2]), .A2(divisor[1]), .A3(divisor[0]), 
        .ZN(n204) );
  INVD0BWP12T30P140 U177 ( .I(divisor[3]), .ZN(n207) );
  ND2D0BWP12T30P140 U178 ( .A1(n204), .A2(n207), .ZN(n200) );
  NR2D0BWP12T30P140 U179 ( .A1(divisor[4]), .A2(n200), .ZN(n193) );
  INVD0BWP12T30P140 U180 ( .I(divisor[5]), .ZN(n195) );
  ND2D0BWP12T30P140 U181 ( .A1(n193), .A2(n195), .ZN(n182) );
  NR2D0BWP12T30P140 U182 ( .A1(divisor[6]), .A2(n182), .ZN(n166) );
  INR4D0BWP12T30P140 U183 ( .A1(opn_valid), .B1(rst), .B2(start_cnt), .B3(
        res_valid), .ZN(n317) );
  INVD0BWP12T30P140 U184 ( .I(divisor[7]), .ZN(n167) );
  INVD0BWP12T30P140 U185 ( .I(NEG_DIVISOR[8]), .ZN(n157) );
  INVD0BWP12T30P140 U186 ( .I(n317), .ZN(n294) );
  AOI32D0BWP12T30P140 U187 ( .A1(n166), .A2(n317), .A3(n167), .B1(n157), .B2(
        n294), .ZN(n145) );
  INVD0BWP12T30P140 U188 ( .I(result[8]), .ZN(n263) );
  INVD0BWP12T30P140 U189 ( .I(start_cnt), .ZN(n160) );
  NR2D0BWP12T30P140 U190 ( .A1(rst), .A2(n160), .ZN(n159) );
  INVD0BWP12T30P140 U191 ( .I(n159), .ZN(n192) );
  NR2D0BWP12T30P140 U192 ( .A1(cnt[3]), .A2(n192), .ZN(n242) );
  INVD0BWP12T30P140 U193 ( .I(NEG_DIVISOR[0]), .ZN(n165) );
  NR2D0BWP12T30P140 U194 ( .A1(n165), .A2(n263), .ZN(n162) );
  MAOI222D0BWP12T30P140 U195 ( .A(n187), .B(REMAINER[7]), .C(NEG_DIVISOR[7]), 
        .ZN(n158) );
  NR2D0BWP12T30P140 U196 ( .A1(n158), .A2(n157), .ZN(n161) );
  INVD0BWP12T30P140 U197 ( .I(n161), .ZN(n190) );
  ND2D0BWP12T30P140 U198 ( .A1(n242), .A2(n190), .ZN(n270) );
  ND2D0BWP12T30P140 U199 ( .A1(cnt[3]), .A2(n159), .ZN(n179) );
  NR2D0BWP12T30P140 U200 ( .A1(n179), .A2(n190), .ZN(n288) );
  FA1D0BWP12T30P140 U201 ( .A(REMAINER[1]), .B(NEG_DIVISOR[1]), .CI(n162), 
        .CO(n269), .S(n271) );
  NR2D0BWP12T30P140 U202 ( .A1(rst), .A2(n317), .ZN(n251) );
  ND2D0BWP12T30P140 U203 ( .A1(n251), .A2(n160), .ZN(n240) );
  OAI21D0BWP12T30P140 U204 ( .A1(n161), .A2(n179), .B(n240), .ZN(n286) );
  AOI22D0BWP12T30P140 U205 ( .A1(n288), .A2(n271), .B1(REMAINER[1]), .B2(n286), 
        .ZN(n164) );
  AOI21D0BWP12T30P140 U206 ( .A1(n165), .A2(n263), .B(n162), .ZN(n241) );
  INVD0BWP12T30P140 U207 ( .I(n242), .ZN(n293) );
  NR2D0BWP12T30P140 U208 ( .A1(n293), .A2(n190), .ZN(n319) );
  ND2D0BWP12T30P140 U209 ( .A1(n241), .A2(n319), .ZN(n163) );
  OAI211D0BWP12T30P140 U210 ( .A1(n263), .A2(n270), .B(n164), .C(n163), .ZN(
        n120) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n165), .A2(n294), .B1(n294), .B2(divisor[0]), 
        .ZN(n146) );
  MUX2ND0BWP12T30P140 U212 ( .I0(n167), .I1(divisor[7]), .S(n166), .ZN(n169)
         );
  ND2D0BWP12T30P140 U213 ( .A1(sign), .A2(divisor[7]), .ZN(n215) );
  INVD0BWP12T30P140 U214 ( .I(NEG_DIVISOR[7]), .ZN(n168) );
  AOI32D0BWP12T30P140 U215 ( .A1(n169), .A2(n317), .A3(n215), .B1(n168), .B2(
        n294), .ZN(n144) );
  INVD0BWP12T30P140 U216 ( .I(cnt[1]), .ZN(n175) );
  OAI21D0BWP12T30P140 U217 ( .A1(cnt[0]), .A2(n293), .B(n240), .ZN(n174) );
  AOI21D0BWP12T30P140 U218 ( .A1(n242), .A2(n175), .B(n174), .ZN(n170) );
  ND3D0BWP12T30P140 U219 ( .A1(n242), .A2(cnt[1]), .A3(cnt[0]), .ZN(n237) );
  INVD0BWP12T30P140 U220 ( .I(cnt[2]), .ZN(n238) );
  AOI22D0BWP12T30P140 U221 ( .A1(cnt[2]), .A2(n170), .B1(n237), .B2(n238), 
        .ZN(n131) );
  INVD0BWP12T30P140 U222 ( .I(divisor[1]), .ZN(n172) );
  ND2D0BWP12T30P140 U223 ( .A1(divisor[0]), .A2(n215), .ZN(n171) );
  MUX2ND0BWP12T30P140 U224 ( .I0(n172), .I1(divisor[1]), .S(n171), .ZN(n173)
         );
  MAOI22D0BWP12T30P140 U225 ( .A1(n317), .A2(n173), .B1(NEG_DIVISOR[1]), .B2(
        n317), .ZN(n138) );
  ND2D0BWP12T30P140 U226 ( .A1(n242), .A2(cnt[0]), .ZN(n176) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n176), .A2(n175), .B1(n175), .B2(n174), .ZN(
        n132) );
  INVD0BWP12T30P140 U228 ( .I(dividend[1]), .ZN(n178) );
  ND2D0BWP12T30P140 U229 ( .A1(sign), .A2(dividend[7]), .ZN(n233) );
  IND2D1BWP12T30P140 U230 ( .A1(n233), .B1(dividend[0]), .ZN(n177) );
  MUX2ND0BWP12T30P140 U231 ( .I0(n178), .I1(dividend[1]), .S(n177), .ZN(n181)
         );
  ND2D0BWP12T30P140 U232 ( .A1(n179), .A2(n240), .ZN(n316) );
  AOI22D0BWP12T30P140 U233 ( .A1(QUOTIENT[1]), .A2(n242), .B1(QUOTIENT[2]), 
        .B2(n316), .ZN(n180) );
  OAI21D0BWP12T30P140 U234 ( .A1(n294), .A2(n181), .B(n180), .ZN(n127) );
  INVD0BWP12T30P140 U235 ( .I(divisor[6]), .ZN(n184) );
  ND2D0BWP12T30P140 U236 ( .A1(n215), .A2(n182), .ZN(n183) );
  MUX2ND0BWP12T30P140 U237 ( .I0(n184), .I1(divisor[6]), .S(n183), .ZN(n185)
         );
  MAOI22D0BWP12T30P140 U238 ( .A1(n317), .A2(n185), .B1(NEG_DIVISOR[6]), .B2(
        n317), .ZN(n143) );
  INVD0BWP12T30P140 U239 ( .I(n286), .ZN(n247) );
  INVD0BWP12T30P140 U240 ( .I(REMAINER[7]), .ZN(n315) );
  FA1D0BWP12T30P140 U241 ( .A(REMAINER[6]), .B(NEG_DIVISOR[6]), .CI(n186), 
        .CO(n187), .S(n287) );
  ND3D0BWP12T30P140 U242 ( .A1(NEG_DIVISOR[7]), .A2(n187), .A3(REMAINER[7]), 
        .ZN(n188) );
  INVD0BWP12T30P140 U243 ( .I(REMAINER[6]), .ZN(n312) );
  AOI22D0BWP12T30P140 U244 ( .A1(cnt[3]), .A2(n188), .B1(n190), .B2(n312), 
        .ZN(n189) );
  OAI31D0BWP12T30P140 U245 ( .A1(cnt[3]), .A2(n287), .A3(n190), .B(n189), .ZN(
        n191) );
  OAI22D0BWP12T30P140 U246 ( .A1(n247), .A2(n315), .B1(n192), .B2(n191), .ZN(
        n135) );
  INVD0BWP12T30P140 U247 ( .I(n215), .ZN(n205) );
  NR2D0BWP12T30P140 U248 ( .A1(n205), .A2(n193), .ZN(n194) );
  MUX2ND0BWP12T30P140 U249 ( .I0(divisor[5]), .I1(n195), .S(n194), .ZN(n196)
         );
  MAOI22D0BWP12T30P140 U250 ( .A1(n317), .A2(n196), .B1(NEG_DIVISOR[5]), .B2(
        n317), .ZN(n142) );
  NR2D0BWP12T30P140 U251 ( .A1(n294), .A2(n233), .ZN(n220) );
  NR3D0BWP12T30P140 U252 ( .A1(dividend[2]), .A2(dividend[0]), .A3(dividend[1]), .ZN(n228) );
  INVD0BWP12T30P140 U253 ( .I(n228), .ZN(n219) );
  NR2D0BWP12T30P140 U254 ( .A1(dividend[3]), .A2(n219), .ZN(n211) );
  INVD0BWP12T30P140 U255 ( .I(dividend[4]), .ZN(n214) );
  ND2D0BWP12T30P140 U256 ( .A1(n211), .A2(n214), .ZN(n232) );
  ND2D0BWP12T30P140 U257 ( .A1(n220), .A2(n232), .ZN(n209) );
  AOI22D0BWP12T30P140 U258 ( .A1(QUOTIENT[5]), .A2(n242), .B1(QUOTIENT[6]), 
        .B2(n316), .ZN(n199) );
  INVD0BWP12T30P140 U259 ( .I(n232), .ZN(n197) );
  OAI211D0BWP12T30P140 U260 ( .A1(dividend[5]), .A2(n209), .B(n199), .C(n198), 
        .ZN(n123) );
  INVD0BWP12T30P140 U261 ( .I(divisor[4]), .ZN(n202) );
  ND2D0BWP12T30P140 U262 ( .A1(n215), .A2(n200), .ZN(n201) );
  MUX2ND0BWP12T30P140 U263 ( .I0(n202), .I1(divisor[4]), .S(n201), .ZN(n203)
         );
  MAOI22D0BWP12T30P140 U264 ( .A1(n317), .A2(n203), .B1(NEG_DIVISOR[4]), .B2(
        n317), .ZN(n141) );
  NR2D0BWP12T30P140 U265 ( .A1(n205), .A2(n204), .ZN(n206) );
  MUX2ND0BWP12T30P140 U266 ( .I0(divisor[3]), .I1(n207), .S(n206), .ZN(n208)
         );
  MAOI22D0BWP12T30P140 U267 ( .A1(n317), .A2(n208), .B1(NEG_DIVISOR[3]), .B2(
        n317), .ZN(n140) );
  ND2D0BWP12T30P140 U268 ( .A1(n317), .A2(n233), .ZN(n225) );
  AOI22D0BWP12T30P140 U269 ( .A1(QUOTIENT[4]), .A2(n242), .B1(QUOTIENT[5]), 
        .B2(n316), .ZN(n213) );
  INVD0BWP12T30P140 U270 ( .I(n209), .ZN(n210) );
  OAI21D0BWP12T30P140 U271 ( .A1(n211), .A2(n214), .B(n210), .ZN(n212) );
  OAI211D0BWP12T30P140 U272 ( .A1(n225), .A2(n214), .B(n213), .C(n212), .ZN(
        n124) );
  INVD0BWP12T30P140 U273 ( .I(divisor[2]), .ZN(n217) );
  OAI21D0BWP12T30P140 U274 ( .A1(divisor[1]), .A2(divisor[0]), .B(n215), .ZN(
        n216) );
  MUX2ND0BWP12T30P140 U275 ( .I0(n217), .I1(divisor[2]), .S(n216), .ZN(n218)
         );
  MAOI22D0BWP12T30P140 U276 ( .A1(n156), .A2(n218), .B1(NEG_DIVISOR[2]), .B2(
        n317), .ZN(n139) );
  INVD0BWP12T30P140 U277 ( .I(dividend[2]), .ZN(n224) );
  AOI22D0BWP12T30P140 U278 ( .A1(QUOTIENT[2]), .A2(n242), .B1(QUOTIENT[3]), 
        .B2(n316), .ZN(n223) );
  OR2D0BWP12T30P140 U279 ( .A1(dividend[0]), .A2(dividend[1]), .Z(n221) );
  ND2D0BWP12T30P140 U280 ( .A1(n220), .A2(n219), .ZN(n231) );
  AO21D0BWP12T30P140 U281 ( .A1(dividend[2]), .A2(n221), .B(n231), .Z(n222) );
  OAI211D0BWP12T30P140 U282 ( .A1(n225), .A2(n224), .B(n223), .C(n222), .ZN(
        n126) );
  INVD0BWP12T30P140 U283 ( .I(cnt[0]), .ZN(n227) );
  ND2D0BWP12T30P140 U284 ( .A1(n242), .A2(n227), .ZN(n226) );
  OAI211D0BWP12T30P140 U285 ( .A1(n240), .A2(n227), .B(n294), .C(n226), .ZN(
        n133) );
  AOI22D0BWP12T30P140 U286 ( .A1(QUOTIENT[3]), .A2(n242), .B1(QUOTIENT[4]), 
        .B2(n316), .ZN(n230) );
  OAI211D0BWP12T30P140 U287 ( .A1(dividend[3]), .A2(n231), .B(n230), .C(n229), 
        .ZN(n125) );
  INVD0BWP12T30P140 U288 ( .I(dividend[6]), .ZN(n243) );
  NR2D0BWP12T30P140 U289 ( .A1(dividend[5]), .A2(n232), .ZN(n244) );
  NR2D0BWP12T30P140 U290 ( .A1(n244), .A2(n233), .ZN(n234) );
  MUX2ND0BWP12T30P140 U291 ( .I0(dividend[6]), .I1(n243), .S(n234), .ZN(n236)
         );
  AOI22D0BWP12T30P140 U292 ( .A1(QUOTIENT[7]), .A2(n316), .B1(n242), .B2(
        QUOTIENT[6]), .ZN(n235) );
  OAI21D0BWP12T30P140 U293 ( .A1(n294), .A2(n236), .B(n235), .ZN(n122) );
  INVD0BWP12T30P140 U294 ( .I(cnt[3]), .ZN(n249) );
  OAI22D0BWP12T30P140 U295 ( .A1(n249), .A2(n240), .B1(n238), .B2(n237), .ZN(
        n130) );
  INVD0BWP12T30P140 U296 ( .I(result[0]), .ZN(n255) );
  INVD0BWP12T30P140 U297 ( .I(n288), .ZN(n239) );
  OAI21D0BWP12T30P140 U298 ( .A1(n240), .A2(n255), .B(n239), .ZN(n129) );
  AOI22D0BWP12T30P140 U299 ( .A1(QUOTIENT[7]), .A2(n242), .B1(n288), .B2(n241), 
        .ZN(n246) );
  AN2D0BWP12T30P140 U300 ( .A1(dividend[7]), .A2(n317), .Z(n250) );
  INVD0BWP12T30P140 U301 ( .I(sign), .ZN(n252) );
  AOI32D0BWP12T30P140 U302 ( .A1(n244), .A2(n250), .A3(n243), .B1(n252), .B2(
        n250), .ZN(n245) );
  OAI211D0BWP12T30P140 U303 ( .A1(n247), .A2(n263), .B(n246), .C(n245), .ZN(
        n121) );
  INVD0BWP12T30P140 U304 ( .I(res_valid), .ZN(n248) );
  AOI221D0BWP12T30P140 U305 ( .A1(res_ready), .A2(n249), .B1(n248), .B2(n249), 
        .C(rst), .ZN(n147) );
  AO21D0BWP12T30P140 U306 ( .A1(n251), .A2(dividend_save_7_), .B(n250), .Z(
        n137) );
  AO22D0BWP12T30P140 U307 ( .A1(n317), .A2(divisor[7]), .B1(n251), .B2(
        divisor_save_7_), .Z(n136) );
  CKBD0BWP12T30P140 U308 ( .I(clk), .Z(n320) );
  INVD0BWP12T30P140 U309 ( .I(divisor_save_7_), .ZN(n253) );
  ND2D0BWP12T30P140 U310 ( .A1(sign), .A2(dividend_save_7_), .ZN(n311) );
  OAI32D0BWP12T30P140 U311 ( .A1(n253), .A2(dividend_save_7_), .A3(n252), .B1(
        divisor_save_7_), .B2(n311), .ZN(n301) );
  INVD0BWP12T30P140 U312 ( .I(n301), .ZN(n261) );
  OAI21D0BWP12T30P140 U313 ( .A1(n261), .A2(n255), .B(QUOTIENT[1]), .ZN(n254)
         );
  OAI31D0BWP12T30P140 U314 ( .A1(n261), .A2(QUOTIENT[1]), .A3(n255), .B(n254), 
        .ZN(result[1]) );
  NR2D0BWP12T30P140 U315 ( .A1(QUOTIENT[1]), .A2(result[0]), .ZN(n257) );
  OAI21D0BWP12T30P140 U316 ( .A1(n261), .A2(n257), .B(QUOTIENT[2]), .ZN(n256)
         );
  OAI31D0BWP12T30P140 U317 ( .A1(n261), .A2(QUOTIENT[2]), .A3(n257), .B(n256), 
        .ZN(result[2]) );
  NR3D0BWP12T30P140 U318 ( .A1(QUOTIENT[2]), .A2(QUOTIENT[1]), .A3(result[0]), 
        .ZN(n259) );
  OAI21D0BWP12T30P140 U319 ( .A1(n261), .A2(n259), .B(QUOTIENT[3]), .ZN(n258)
         );
  OAI31D0BWP12T30P140 U320 ( .A1(n261), .A2(QUOTIENT[3]), .A3(n259), .B(n258), 
        .ZN(result[3]) );
  IND2D1BWP12T30P140 U321 ( .A1(QUOTIENT[3]), .B1(n259), .ZN(n295) );
  NR2D0BWP12T30P140 U322 ( .A1(QUOTIENT[4]), .A2(n295), .ZN(n298) );
  OAI21D0BWP12T30P140 U323 ( .A1(n261), .A2(n298), .B(QUOTIENT[5]), .ZN(n260)
         );
  OAI31D0BWP12T30P140 U324 ( .A1(n261), .A2(QUOTIENT[5]), .A3(n298), .B(n260), 
        .ZN(result[5]) );
  OAI21D0BWP12T30P140 U325 ( .A1(n263), .A2(n311), .B(REMAINER[1]), .ZN(n262)
         );
  OAI31D0BWP12T30P140 U326 ( .A1(n263), .A2(REMAINER[1]), .A3(n311), .B(n262), 
        .ZN(result[9]) );
  NR3D0BWP12T30P140 U327 ( .A1(result[8]), .A2(REMAINER[1]), .A3(REMAINER[2]), 
        .ZN(n265) );
  OAI21D0BWP12T30P140 U328 ( .A1(n265), .A2(n311), .B(REMAINER[3]), .ZN(n264)
         );
  OAI31D0BWP12T30P140 U329 ( .A1(n265), .A2(REMAINER[3]), .A3(n311), .B(n264), 
        .ZN(result[11]) );
  NR4D0BWP12T30P140 U330 ( .A1(result[8]), .A2(REMAINER[1]), .A3(REMAINER[2]), 
        .A4(REMAINER[3]), .ZN(n267) );
  OAI21D0BWP12T30P140 U331 ( .A1(n267), .A2(n311), .B(REMAINER[4]), .ZN(n266)
         );
  OAI31D0BWP12T30P140 U332 ( .A1(n267), .A2(REMAINER[4]), .A3(n311), .B(n266), 
        .ZN(result[12]) );
  IND2D1BWP12T30P140 U333 ( .A1(REMAINER[4]), .B1(n267), .ZN(n307) );
  NR2D0BWP12T30P140 U334 ( .A1(REMAINER[5]), .A2(n307), .ZN(n313) );
  OAI21D0BWP12T30P140 U335 ( .A1(n313), .A2(n311), .B(REMAINER[6]), .ZN(n268)
         );
  OAI31D0BWP12T30P140 U336 ( .A1(n313), .A2(REMAINER[6]), .A3(n311), .B(n268), 
        .ZN(result[14]) );
  FA1D0BWP12T30P140 U337 ( .A(REMAINER[2]), .B(NEG_DIVISOR[2]), .CI(n269), 
        .CO(n274), .S(n275) );
  AOI22D0BWP12T30P140 U338 ( .A1(n288), .A2(n275), .B1(REMAINER[2]), .B2(n286), 
        .ZN(n273) );
  INVD0BWP12T30P140 U339 ( .I(n270), .ZN(n289) );
  AOI22D0BWP12T30P140 U340 ( .A1(n319), .A2(n271), .B1(n289), .B2(REMAINER[1]), 
        .ZN(n272) );
  ND2D0BWP12T30P140 U341 ( .A1(n273), .A2(n272), .ZN(n119) );
  FA1D0BWP12T30P140 U342 ( .A(REMAINER[3]), .B(NEG_DIVISOR[3]), .CI(n274), 
        .CO(n279), .S(n283) );
  AOI22D0BWP12T30P140 U343 ( .A1(n288), .A2(n283), .B1(REMAINER[3]), .B2(n286), 
        .ZN(n277) );
  AOI22D0BWP12T30P140 U344 ( .A1(n319), .A2(n275), .B1(n289), .B2(REMAINER[2]), 
        .ZN(n276) );
  ND2D0BWP12T30P140 U345 ( .A1(n277), .A2(n276), .ZN(n118) );
  FA1D0BWP12T30P140 U346 ( .A(REMAINER[5]), .B(NEG_DIVISOR[5]), .CI(n278), 
        .CO(n186), .S(n290) );
  AOI22D0BWP12T30P140 U347 ( .A1(n288), .A2(n290), .B1(REMAINER[5]), .B2(n286), 
        .ZN(n281) );
  FA1D0BWP12T30P140 U348 ( .A(REMAINER[4]), .B(NEG_DIVISOR[4]), .CI(n279), 
        .CO(n278), .S(n282) );
  AOI22D0BWP12T30P140 U349 ( .A1(n319), .A2(n282), .B1(n289), .B2(REMAINER[4]), 
        .ZN(n280) );
  ND2D0BWP12T30P140 U350 ( .A1(n281), .A2(n280), .ZN(n116) );
  AOI22D0BWP12T30P140 U351 ( .A1(n288), .A2(n282), .B1(REMAINER[4]), .B2(n286), 
        .ZN(n285) );
  AOI22D0BWP12T30P140 U352 ( .A1(n319), .A2(n283), .B1(n289), .B2(REMAINER[3]), 
        .ZN(n284) );
  ND2D0BWP12T30P140 U353 ( .A1(n285), .A2(n284), .ZN(n117) );
  AOI22D0BWP12T30P140 U354 ( .A1(n288), .A2(n287), .B1(REMAINER[6]), .B2(n286), 
        .ZN(n292) );
  AOI22D0BWP12T30P140 U355 ( .A1(n319), .A2(n290), .B1(n289), .B2(REMAINER[5]), 
        .ZN(n291) );
  ND2D0BWP12T30P140 U356 ( .A1(n292), .A2(n291), .ZN(n114) );
  ND2D0BWP12T30P140 U357 ( .A1(n294), .A2(n293), .ZN(n134) );
  INVD0BWP12T30P140 U358 ( .I(QUOTIENT[4]), .ZN(n297) );
  ND2D0BWP12T30P140 U359 ( .A1(n301), .A2(n295), .ZN(n296) );
  MUX2ND0BWP12T30P140 U360 ( .I0(QUOTIENT[4]), .I1(n297), .S(n296), .ZN(
        result[4]) );
  INVD0BWP12T30P140 U361 ( .I(QUOTIENT[6]), .ZN(n300) );
  IND2D1BWP12T30P140 U362 ( .A1(QUOTIENT[5]), .B1(n298), .ZN(n302) );
  ND2D0BWP12T30P140 U363 ( .A1(n301), .A2(n302), .ZN(n299) );
  MUX2ND0BWP12T30P140 U364 ( .I0(QUOTIENT[6]), .I1(n300), .S(n299), .ZN(
        result[6]) );
  INVD0BWP12T30P140 U365 ( .I(QUOTIENT[7]), .ZN(n304) );
  OAI21D0BWP12T30P140 U366 ( .A1(QUOTIENT[6]), .A2(n302), .B(n301), .ZN(n303)
         );
  MUX2ND0BWP12T30P140 U367 ( .I0(QUOTIENT[7]), .I1(n304), .S(n303), .ZN(
        result[7]) );
  INVD0BWP12T30P140 U368 ( .I(REMAINER[2]), .ZN(n306) );
  INVD0BWP12T30P140 U369 ( .I(n311), .ZN(n308) );
  OAI21D0BWP12T30P140 U370 ( .A1(result[8]), .A2(REMAINER[1]), .B(n308), .ZN(
        n305) );
  MUX2ND0BWP12T30P140 U371 ( .I0(REMAINER[2]), .I1(n306), .S(n305), .ZN(
        result[10]) );
  INVD0BWP12T30P140 U372 ( .I(REMAINER[5]), .ZN(n310) );
  ND2D0BWP12T30P140 U373 ( .A1(n308), .A2(n307), .ZN(n309) );
  MUX2ND0BWP12T30P140 U374 ( .I0(REMAINER[5]), .I1(n310), .S(n309), .ZN(
        result[13]) );
  AOI21D0BWP12T30P140 U375 ( .A1(n313), .A2(n312), .B(n311), .ZN(n314) );
  MUX2ND0BWP12T30P140 U376 ( .I0(n315), .I1(REMAINER[7]), .S(n314), .ZN(
        result[15]) );
  AOI22D0BWP12T30P140 U377 ( .A1(n156), .A2(dividend[0]), .B1(QUOTIENT[1]), 
        .B2(n316), .ZN(n318) );
  IND2D1BWP12T30P140 U378 ( .A1(n319), .B1(n318), .ZN(n128) );
endmodule

