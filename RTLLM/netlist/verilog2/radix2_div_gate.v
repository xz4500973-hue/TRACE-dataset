/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:05:34 2026
/////////////////////////////////////////////////////////////


module radix2_div ( clk, rst, dividend, divisor, sign, opn_valid, res_valid, 
        res_ready, result );
  input [7:0] dividend;
  input [7:0] divisor;
  output [15:0] result;
  input clk, rst, sign, opn_valid, res_ready;
  output res_valid;
  wire   div_s_7_, dsr_s_7_, n130, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342;
  wire   [15:1] sr;
  wire   [8:0] neg_dsr;
  wire   [1:0] state;
  wire   [3:0] cnt;

  DFQD2BWP12T30P140 neg_dsr_reg_0_ ( .D(n163), .CP(clk), .Q(neg_dsr[0]) );
  DFQD2BWP12T30P140 neg_dsr_reg_8_ ( .D(n155), .CP(clk), .Q(neg_dsr[8]) );
  DFQD2BWP12T30P140 div_s_reg_7_ ( .D(n154), .CP(clk), .Q(div_s_7_) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n152), .CP(n342), .Q(cnt[0]) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n150), .CP(n342), .Q(cnt[2]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n140), .CP(n342), .Q(state[0]) );
  DFQD2BWP12T30P140 neg_dsr_reg_1_ ( .D(n162), .CP(clk), .Q(neg_dsr[1]) );
  DFQD2BWP12T30P140 neg_dsr_reg_2_ ( .D(n161), .CP(clk), .Q(neg_dsr[2]) );
  DFQD2BWP12T30P140 neg_dsr_reg_3_ ( .D(n160), .CP(clk), .Q(neg_dsr[3]) );
  DFQD2BWP12T30P140 neg_dsr_reg_4_ ( .D(n159), .CP(clk), .Q(neg_dsr[4]) );
  DFQD2BWP12T30P140 neg_dsr_reg_5_ ( .D(n158), .CP(clk), .Q(neg_dsr[5]) );
  DFQD2BWP12T30P140 neg_dsr_reg_6_ ( .D(n157), .CP(clk), .Q(neg_dsr[6]) );
  DFQD2BWP12T30P140 neg_dsr_reg_7_ ( .D(n156), .CP(clk), .Q(neg_dsr[7]) );
  DFQD2BWP12T30P140 res_valid_reg ( .D(n164), .CP(n342), .Q(res_valid) );
  DFQD2BWP12T30P140 dsr_s_reg_7_ ( .D(n153), .CP(n342), .Q(dsr_s_7_) );
  DFQD2BWP12T30P140 sr_reg_0_ ( .D(n148), .CP(n342), .Q(result[0]) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n151), .CP(n342), .Q(cnt[1]) );
  DFQD2BWP12T30P140 sr_reg_7_ ( .D(n136), .CP(clk), .Q(sr[7]) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n149), .CP(n342), .Q(cnt[3]) );
  DFQD2BWP12T30P140 sr_reg_8_ ( .D(n147), .CP(n342), .Q(result[8]) );
  DFQD2BWP12T30P140 sr_reg_6_ ( .D(n135), .CP(clk), .Q(sr[6]) );
  DFQD2BWP12T30P140 sr_reg_4_ ( .D(n133), .CP(n342), .Q(sr[4]) );
  DFQD2BWP12T30P140 sr_reg_3_ ( .D(n132), .CP(n342), .Q(sr[3]) );
  DFQD2BWP12T30P140 sr_reg_5_ ( .D(n134), .CP(n342), .Q(sr[5]) );
  DFQD2BWP12T30P140 sr_reg_2_ ( .D(n130), .CP(n342), .Q(sr[2]) );
  DFQD2BWP12T30P140 sr_reg_1_ ( .D(n137), .CP(n342), .Q(sr[1]) );
  DFQD2BWP12T30P140 sr_reg_15_ ( .D(n138), .CP(clk), .Q(sr[15]) );
  DFQD2BWP12T30P140 sr_reg_14_ ( .D(n141), .CP(clk), .Q(sr[14]) );
  DFQD2BWP12T30P140 sr_reg_13_ ( .D(n142), .CP(n342), .Q(sr[13]) );
  DFQD2BWP12T30P140 sr_reg_11_ ( .D(n144), .CP(clk), .Q(sr[11]) );
  DFQD2BWP12T30P140 sr_reg_10_ ( .D(n145), .CP(clk), .Q(sr[10]) );
  DFQD1BWP12T30P140 state_reg_1_ ( .D(n139), .CP(n342), .Q(state[1]) );
  DFQD1BWP12T30P140 sr_reg_12_ ( .D(n143), .CP(n342), .Q(sr[12]) );
  DFQD1BWP12T30P140 sr_reg_9_ ( .D(n146), .CP(n342), .Q(sr[9]) );
  INVD0BWP12T30P140 U190 ( .I(neg_dsr[0]), .ZN(n177) );
  INVD0BWP12T30P140 U191 ( .I(state[0]), .ZN(n337) );
  INVD0BWP12T30P140 U192 ( .I(rst), .ZN(n199) );
  ND2D0BWP12T30P140 U193 ( .A1(n337), .A2(n199), .ZN(n336) );
  INVD0BWP12T30P140 U194 ( .I(state[1]), .ZN(n270) );
  IND3D1BWP12T30P140 U195 ( .A1(res_valid), .B1(opn_valid), .B2(n270), .ZN(
        n174) );
  NR2D0BWP12T30P140 U196 ( .A1(n336), .A2(n174), .ZN(n339) );
  INVD0BWP12T30P140 U197 ( .I(n339), .ZN(n264) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n177), .A2(n264), .B1(n264), .B2(divisor[0]), 
        .ZN(n163) );
  INVD0BWP12T30P140 U199 ( .I(result[8]), .ZN(n284) );
  ND2D0BWP12T30P140 U200 ( .A1(state[0]), .A2(n270), .ZN(n269) );
  NR2D0BWP12T30P140 U201 ( .A1(rst), .A2(n269), .ZN(n272) );
  INVD0BWP12T30P140 U202 ( .I(n272), .ZN(n187) );
  NR2D0BWP12T30P140 U203 ( .A1(cnt[3]), .A2(n187), .ZN(n246) );
  INVD0BWP12T30P140 U204 ( .I(neg_dsr[8]), .ZN(n181) );
  NR2D0BWP12T30P140 U205 ( .A1(n177), .A2(n284), .ZN(n176) );
  MUX2ND0BWP12T30P140 U206 ( .I0(neg_dsr[8]), .I1(n181), .S(n173), .ZN(n193)
         );
  ND2D0BWP12T30P140 U207 ( .A1(n246), .A2(n193), .ZN(n291) );
  INVD0BWP12T30P140 U208 ( .I(cnt[3]), .ZN(n268) );
  NR3D0BWP12T30P140 U209 ( .A1(n187), .A2(n268), .A3(n193), .ZN(n309) );
  FA1D0BWP12T30P140 U210 ( .A(sr[9]), .B(neg_dsr[1]), .CI(n176), .CO(n290), 
        .S(n292) );
  ND3D0BWP12T30P140 U211 ( .A1(n199), .A2(n174), .A3(n269), .ZN(n255) );
  INVD0BWP12T30P140 U212 ( .I(n193), .ZN(n196) );
  INVD0BWP12T30P140 U213 ( .I(n174), .ZN(n175) );
  AOI21D0BWP12T30P140 U214 ( .A1(n175), .A2(n337), .B(rst), .ZN(n267) );
  OA21D0BWP12T30P140 U215 ( .A1(cnt[3]), .A2(n269), .B(n267), .Z(n338) );
  IOA21D0BWP12T30P140 U216 ( .A1(n255), .A2(n196), .B(n338), .ZN(n253) );
  INVD0BWP12T30P140 U217 ( .I(n253), .ZN(n307) );
  AOI22D0BWP12T30P140 U218 ( .A1(n309), .A2(n292), .B1(n307), .B2(sr[9]), .ZN(
        n180) );
  AOI21D0BWP12T30P140 U219 ( .A1(n177), .A2(n284), .B(n176), .ZN(n245) );
  INVD0BWP12T30P140 U220 ( .I(n246), .ZN(n178) );
  NR2D0BWP12T30P140 U221 ( .A1(n178), .A2(n193), .ZN(n341) );
  ND2D0BWP12T30P140 U222 ( .A1(n245), .A2(n341), .ZN(n179) );
  OAI211D0BWP12T30P140 U223 ( .A1(n284), .A2(n291), .B(n180), .C(n179), .ZN(
        n146) );
  NR3D0BWP12T30P140 U224 ( .A1(divisor[2]), .A2(divisor[1]), .A3(divisor[0]), 
        .ZN(n223) );
  INVD0BWP12T30P140 U225 ( .I(divisor[3]), .ZN(n225) );
  ND2D0BWP12T30P140 U226 ( .A1(n223), .A2(n225), .ZN(n182) );
  NR2D0BWP12T30P140 U227 ( .A1(divisor[4]), .A2(n182), .ZN(n240) );
  INVD0BWP12T30P140 U228 ( .I(divisor[5]), .ZN(n243) );
  ND2D0BWP12T30P140 U229 ( .A1(n240), .A2(n243), .ZN(n188) );
  NR2D0BWP12T30P140 U230 ( .A1(divisor[6]), .A2(n188), .ZN(n259) );
  INVD0BWP12T30P140 U231 ( .I(divisor[7]), .ZN(n263) );
  AOI32D0BWP12T30P140 U232 ( .A1(n259), .A2(n339), .A3(n263), .B1(n181), .B2(
        n264), .ZN(n155) );
  AO22D0BWP12T30P140 U233 ( .A1(n339), .A2(dividend[7]), .B1(n267), .B2(
        div_s_7_), .Z(n154) );
  INVD0BWP12T30P140 U234 ( .I(cnt[0]), .ZN(n186) );
  AOI21D0BWP12T30P140 U235 ( .A1(n186), .A2(n272), .B(n338), .ZN(n266) );
  AOI22D0BWP12T30P140 U236 ( .A1(n338), .A2(n186), .B1(n266), .B2(n336), .ZN(
        n152) );
  INVD0BWP12T30P140 U237 ( .I(divisor[4]), .ZN(n184) );
  INVD0BWP12T30P140 U238 ( .I(sign), .ZN(n273) );
  NR2D0BWP12T30P140 U239 ( .A1(n273), .A2(n263), .ZN(n241) );
  INVD0BWP12T30P140 U240 ( .I(n241), .ZN(n261) );
  ND2D0BWP12T30P140 U241 ( .A1(n261), .A2(n182), .ZN(n183) );
  MUX2ND0BWP12T30P140 U242 ( .I0(n184), .I1(divisor[4]), .S(n183), .ZN(n185)
         );
  MAOI22D0BWP12T30P140 U243 ( .A1(n339), .A2(n185), .B1(neg_dsr[4]), .B2(n339), 
        .ZN(n159) );
  OA21D0BWP12T30P140 U244 ( .A1(n187), .A2(cnt[1]), .B(n266), .Z(n258) );
  NR3D0BWP12T30P140 U245 ( .A1(n338), .A2(n187), .A3(n186), .ZN(n265) );
  ND2D0BWP12T30P140 U246 ( .A1(cnt[1]), .A2(n265), .ZN(n256) );
  INVD0BWP12T30P140 U247 ( .I(cnt[2]), .ZN(n257) );
  AOI22D0BWP12T30P140 U248 ( .A1(cnt[2]), .A2(n258), .B1(n256), .B2(n257), 
        .ZN(n150) );
  INVD0BWP12T30P140 U249 ( .I(divisor[6]), .ZN(n190) );
  ND2D0BWP12T30P140 U250 ( .A1(n261), .A2(n188), .ZN(n189) );
  MUX2ND0BWP12T30P140 U251 ( .I0(n190), .I1(divisor[6]), .S(n189), .ZN(n191)
         );
  MAOI22D0BWP12T30P140 U252 ( .A1(n339), .A2(n191), .B1(neg_dsr[6]), .B2(n339), 
        .ZN(n157) );
  FA1D0BWP12T30P140 U253 ( .A(sr[14]), .B(neg_dsr[6]), .CI(n192), .CO(n194), 
        .S(n308) );
  AOI221D0BWP12T30P140 U254 ( .A1(n308), .A2(n196), .B1(sr[14]), .B2(n193), 
        .C(cnt[3]), .ZN(n198) );
  FA1D0BWP12T30P140 U255 ( .A(sr[15]), .B(neg_dsr[7]), .CI(n194), .CO(n173), 
        .S(n195) );
  AOI32D0BWP12T30P140 U256 ( .A1(n196), .A2(n272), .A3(n195), .B1(n268), .B2(
        n272), .ZN(n197) );
  INVD0BWP12T30P140 U257 ( .I(sr[15]), .ZN(n334) );
  OAI22D0BWP12T30P140 U258 ( .A1(n198), .A2(n197), .B1(n253), .B2(n334), .ZN(
        n138) );
  AOI32D0BWP12T30P140 U259 ( .A1(state[1]), .A2(n199), .A3(n337), .B1(
        res_valid), .B2(n199), .ZN(n200) );
  AOI31D0BWP12T30P140 U260 ( .A1(state[1]), .A2(res_ready), .A3(n337), .B(n200), .ZN(n164) );
  INVD0BWP12T30P140 U261 ( .I(dividend[1]), .ZN(n202) );
  ND2D0BWP12T30P140 U262 ( .A1(sign), .A2(dividend[7]), .ZN(n235) );
  IND2D1BWP12T30P140 U263 ( .A1(n235), .B1(dividend[0]), .ZN(n201) );
  MUX2ND0BWP12T30P140 U264 ( .I0(n202), .I1(dividend[1]), .S(n201), .ZN(n204)
         );
  AOI22D0BWP12T30P140 U265 ( .A1(sr[1]), .A2(n246), .B1(sr[2]), .B2(n338), 
        .ZN(n203) );
  OAI21D0BWP12T30P140 U266 ( .A1(n264), .A2(n204), .B(n203), .ZN(n130) );
  INVD0BWP12T30P140 U267 ( .I(divisor[1]), .ZN(n206) );
  ND2D0BWP12T30P140 U268 ( .A1(divisor[0]), .A2(n261), .ZN(n205) );
  MUX2ND0BWP12T30P140 U269 ( .I0(n206), .I1(divisor[1]), .S(n205), .ZN(n207)
         );
  MAOI22D0BWP12T30P140 U270 ( .A1(n339), .A2(n207), .B1(neg_dsr[1]), .B2(n339), 
        .ZN(n162) );
  ND2D0BWP12T30P140 U271 ( .A1(n339), .A2(n235), .ZN(n222) );
  INVD0BWP12T30P140 U272 ( .I(dividend[4]), .ZN(n212) );
  AOI22D0BWP12T30P140 U273 ( .A1(sr[4]), .A2(n246), .B1(sr[5]), .B2(n338), 
        .ZN(n211) );
  NR3D0BWP12T30P140 U274 ( .A1(dividend[1]), .A2(dividend[0]), .A3(dividend[2]), .ZN(n227) );
  INVD0BWP12T30P140 U275 ( .I(n227), .ZN(n216) );
  NR2D0BWP12T30P140 U276 ( .A1(dividend[3]), .A2(n216), .ZN(n209) );
  NR2D0BWP12T30P140 U277 ( .A1(n264), .A2(n235), .ZN(n217) );
  ND2D0BWP12T30P140 U278 ( .A1(n209), .A2(n212), .ZN(n234) );
  ND2D0BWP12T30P140 U279 ( .A1(n217), .A2(n234), .ZN(n239) );
  INVD0BWP12T30P140 U280 ( .I(n239), .ZN(n208) );
  OAI21D0BWP12T30P140 U281 ( .A1(n209), .A2(n212), .B(n208), .ZN(n210) );
  OAI211D0BWP12T30P140 U282 ( .A1(n222), .A2(n212), .B(n211), .C(n210), .ZN(
        n134) );
  INVD0BWP12T30P140 U283 ( .I(divisor[2]), .ZN(n214) );
  OAI21D0BWP12T30P140 U284 ( .A1(divisor[1]), .A2(divisor[0]), .B(n261), .ZN(
        n213) );
  MUX2ND0BWP12T30P140 U285 ( .I0(n214), .I1(divisor[2]), .S(n213), .ZN(n215)
         );
  MAOI22D0BWP12T30P140 U286 ( .A1(n339), .A2(n215), .B1(neg_dsr[2]), .B2(n339), 
        .ZN(n161) );
  INVD0BWP12T30P140 U287 ( .I(dividend[2]), .ZN(n221) );
  AOI22D0BWP12T30P140 U288 ( .A1(sr[2]), .A2(n246), .B1(sr[3]), .B2(n338), 
        .ZN(n220) );
  OR2D0BWP12T30P140 U289 ( .A1(dividend[0]), .A2(dividend[1]), .Z(n218) );
  ND2D0BWP12T30P140 U290 ( .A1(n217), .A2(n216), .ZN(n230) );
  AO21D0BWP12T30P140 U291 ( .A1(dividend[2]), .A2(n218), .B(n230), .Z(n219) );
  OAI211D0BWP12T30P140 U292 ( .A1(n222), .A2(n221), .B(n220), .C(n219), .ZN(
        n132) );
  NR2D0BWP12T30P140 U293 ( .A1(n241), .A2(n223), .ZN(n224) );
  MUX2ND0BWP12T30P140 U294 ( .I0(divisor[3]), .I1(n225), .S(n224), .ZN(n226)
         );
  MAOI22D0BWP12T30P140 U295 ( .A1(n339), .A2(n226), .B1(neg_dsr[3]), .B2(n339), 
        .ZN(n160) );
  AOI22D0BWP12T30P140 U296 ( .A1(sr[3]), .A2(n246), .B1(sr[4]), .B2(n338), 
        .ZN(n229) );
  OAI211D0BWP12T30P140 U297 ( .A1(n227), .A2(n235), .B(n339), .C(dividend[3]), 
        .ZN(n228) );
  OAI211D0BWP12T30P140 U298 ( .A1(dividend[3]), .A2(n230), .B(n229), .C(n228), 
        .ZN(n133) );
  INVD0BWP12T30P140 U299 ( .I(dividend[6]), .ZN(n247) );
  NR2D0BWP12T30P140 U300 ( .A1(dividend[5]), .A2(n234), .ZN(n248) );
  NR2D0BWP12T30P140 U301 ( .A1(n248), .A2(n235), .ZN(n231) );
  MUX2ND0BWP12T30P140 U302 ( .I0(dividend[6]), .I1(n247), .S(n231), .ZN(n233)
         );
  AOI22D0BWP12T30P140 U303 ( .A1(sr[6]), .A2(n246), .B1(sr[7]), .B2(n338), 
        .ZN(n232) );
  OAI21D0BWP12T30P140 U304 ( .A1(n264), .A2(n233), .B(n232), .ZN(n136) );
  AOI22D0BWP12T30P140 U305 ( .A1(sr[5]), .A2(n246), .B1(sr[6]), .B2(n338), 
        .ZN(n238) );
  INVD0BWP12T30P140 U306 ( .I(n234), .ZN(n236) );
  OAI211D0BWP12T30P140 U307 ( .A1(n236), .A2(n235), .B(n339), .C(dividend[5]), 
        .ZN(n237) );
  OAI211D0BWP12T30P140 U308 ( .A1(dividend[5]), .A2(n239), .B(n238), .C(n237), 
        .ZN(n135) );
  NR2D0BWP12T30P140 U309 ( .A1(n241), .A2(n240), .ZN(n242) );
  MUX2ND0BWP12T30P140 U310 ( .I0(divisor[5]), .I1(n243), .S(n242), .ZN(n244)
         );
  MAOI22D0BWP12T30P140 U311 ( .A1(n339), .A2(n244), .B1(neg_dsr[5]), .B2(n339), 
        .ZN(n158) );
  AOI22D0BWP12T30P140 U312 ( .A1(sr[7]), .A2(n246), .B1(n309), .B2(n245), .ZN(
        n252) );
  INVD0BWP12T30P140 U313 ( .I(n336), .ZN(n250) );
  AO21D0BWP12T30P140 U314 ( .A1(n248), .A2(n247), .B(n273), .Z(n249) );
  ND4D0BWP12T30P140 U315 ( .A1(n250), .A2(dividend[7]), .A3(n255), .A4(n249), 
        .ZN(n251) );
  OAI211D0BWP12T30P140 U316 ( .A1(n284), .A2(n253), .B(n252), .C(n251), .ZN(
        n147) );
  INVD0BWP12T30P140 U317 ( .I(result[0]), .ZN(n276) );
  INVD0BWP12T30P140 U318 ( .I(n309), .ZN(n254) );
  OAI21D0BWP12T30P140 U319 ( .A1(n255), .A2(n276), .B(n254), .ZN(n148) );
  OAI22D0BWP12T30P140 U320 ( .A1(n258), .A2(n268), .B1(n257), .B2(n256), .ZN(
        n149) );
  MUX2ND0BWP12T30P140 U321 ( .I0(n263), .I1(divisor[7]), .S(n259), .ZN(n262)
         );
  INVD0BWP12T30P140 U322 ( .I(neg_dsr[7]), .ZN(n260) );
  AOI32D0BWP12T30P140 U323 ( .A1(n262), .A2(n339), .A3(n261), .B1(n260), .B2(
        n264), .ZN(n156) );
  MOAI22D0BWP12T30P140 U324 ( .A1(n264), .A2(n263), .B1(n267), .B2(dsr_s_7_), 
        .ZN(n153) );
  MAOI22D0BWP12T30P140 U325 ( .A1(cnt[1]), .A2(n266), .B1(n265), .B2(cnt[1]), 
        .ZN(n151) );
  OAI21D0BWP12T30P140 U326 ( .A1(n269), .A2(n268), .B(n267), .ZN(n335) );
  AOI211D0BWP12T30P140 U327 ( .A1(res_ready), .A2(n337), .B(rst), .C(n270), 
        .ZN(n271) );
  AO21D0BWP12T30P140 U328 ( .A1(n272), .A2(n335), .B(n271), .Z(n139) );
  CKBD0BWP12T30P140 U329 ( .I(clk), .Z(n342) );
  INVD0BWP12T30P140 U330 ( .I(dsr_s_7_), .ZN(n274) );
  ND2D0BWP12T30P140 U331 ( .A1(sign), .A2(div_s_7_), .ZN(n330) );
  OAI32D0BWP12T30P140 U332 ( .A1(n274), .A2(div_s_7_), .A3(n273), .B1(dsr_s_7_), .B2(n330), .ZN(n320) );
  INVD0BWP12T30P140 U333 ( .I(n320), .ZN(n282) );
  OAI21D0BWP12T30P140 U334 ( .A1(n282), .A2(n276), .B(sr[1]), .ZN(n275) );
  OAI31D0BWP12T30P140 U335 ( .A1(n282), .A2(sr[1]), .A3(n276), .B(n275), .ZN(
        result[1]) );
  NR2D0BWP12T30P140 U336 ( .A1(sr[1]), .A2(result[0]), .ZN(n278) );
  OAI21D0BWP12T30P140 U337 ( .A1(n282), .A2(n278), .B(sr[2]), .ZN(n277) );
  OAI31D0BWP12T30P140 U338 ( .A1(n282), .A2(sr[2]), .A3(n278), .B(n277), .ZN(
        result[2]) );
  NR3D0BWP12T30P140 U339 ( .A1(sr[2]), .A2(sr[1]), .A3(result[0]), .ZN(n280)
         );
  OAI21D0BWP12T30P140 U340 ( .A1(n282), .A2(n280), .B(sr[3]), .ZN(n279) );
  OAI31D0BWP12T30P140 U341 ( .A1(n282), .A2(sr[3]), .A3(n280), .B(n279), .ZN(
        result[3]) );
  IND2D1BWP12T30P140 U342 ( .A1(sr[3]), .B1(n280), .ZN(n314) );
  NR2D0BWP12T30P140 U343 ( .A1(sr[4]), .A2(n314), .ZN(n317) );
  OAI21D0BWP12T30P140 U344 ( .A1(n282), .A2(n317), .B(sr[5]), .ZN(n281) );
  OAI31D0BWP12T30P140 U345 ( .A1(n282), .A2(sr[5]), .A3(n317), .B(n281), .ZN(
        result[5]) );
  OAI21D0BWP12T30P140 U346 ( .A1(n284), .A2(n330), .B(sr[9]), .ZN(n283) );
  OAI31D0BWP12T30P140 U347 ( .A1(n284), .A2(sr[9]), .A3(n330), .B(n283), .ZN(
        result[9]) );
  NR3D0BWP12T30P140 U348 ( .A1(result[8]), .A2(sr[10]), .A3(sr[9]), .ZN(n286)
         );
  OAI21D0BWP12T30P140 U349 ( .A1(n286), .A2(n330), .B(sr[11]), .ZN(n285) );
  OAI31D0BWP12T30P140 U350 ( .A1(n286), .A2(sr[11]), .A3(n330), .B(n285), .ZN(
        result[11]) );
  NR4D0BWP12T30P140 U351 ( .A1(result[8]), .A2(sr[11]), .A3(sr[10]), .A4(sr[9]), .ZN(n288) );
  OAI21D0BWP12T30P140 U352 ( .A1(n288), .A2(n330), .B(sr[12]), .ZN(n287) );
  OAI31D0BWP12T30P140 U353 ( .A1(n288), .A2(sr[12]), .A3(n330), .B(n287), .ZN(
        result[12]) );
  IND2D1BWP12T30P140 U354 ( .A1(sr[12]), .B1(n288), .ZN(n326) );
  NR2D0BWP12T30P140 U355 ( .A1(sr[13]), .A2(n326), .ZN(n332) );
  OAI21D0BWP12T30P140 U356 ( .A1(n332), .A2(n330), .B(sr[14]), .ZN(n289) );
  OAI31D0BWP12T30P140 U357 ( .A1(n332), .A2(sr[14]), .A3(n330), .B(n289), .ZN(
        result[14]) );
  FA1D0BWP12T30P140 U358 ( .A(sr[10]), .B(neg_dsr[2]), .CI(n290), .CO(n295), 
        .S(n296) );
  AOI22D0BWP12T30P140 U359 ( .A1(n309), .A2(n296), .B1(n307), .B2(sr[10]), 
        .ZN(n294) );
  INVD0BWP12T30P140 U360 ( .I(n291), .ZN(n311) );
  AOI22D0BWP12T30P140 U361 ( .A1(sr[9]), .A2(n311), .B1(n341), .B2(n292), .ZN(
        n293) );
  ND2D0BWP12T30P140 U362 ( .A1(n294), .A2(n293), .ZN(n145) );
  FA1D0BWP12T30P140 U363 ( .A(sr[11]), .B(neg_dsr[3]), .CI(n295), .CO(n300), 
        .S(n304) );
  AOI22D0BWP12T30P140 U364 ( .A1(n309), .A2(n304), .B1(n307), .B2(sr[11]), 
        .ZN(n298) );
  AOI22D0BWP12T30P140 U365 ( .A1(sr[10]), .A2(n311), .B1(n341), .B2(n296), 
        .ZN(n297) );
  ND2D0BWP12T30P140 U366 ( .A1(n298), .A2(n297), .ZN(n144) );
  FA1D0BWP12T30P140 U367 ( .A(sr[13]), .B(neg_dsr[5]), .CI(n299), .CO(n192), 
        .S(n310) );
  AOI22D0BWP12T30P140 U368 ( .A1(n309), .A2(n310), .B1(n307), .B2(sr[13]), 
        .ZN(n302) );
  FA1D0BWP12T30P140 U369 ( .A(sr[12]), .B(neg_dsr[4]), .CI(n300), .CO(n299), 
        .S(n303) );
  AOI22D0BWP12T30P140 U370 ( .A1(sr[12]), .A2(n311), .B1(n341), .B2(n303), 
        .ZN(n301) );
  ND2D0BWP12T30P140 U371 ( .A1(n302), .A2(n301), .ZN(n142) );
  AOI22D0BWP12T30P140 U372 ( .A1(n309), .A2(n303), .B1(n307), .B2(sr[12]), 
        .ZN(n306) );
  AOI22D0BWP12T30P140 U373 ( .A1(sr[11]), .A2(n311), .B1(n341), .B2(n304), 
        .ZN(n305) );
  ND2D0BWP12T30P140 U374 ( .A1(n306), .A2(n305), .ZN(n143) );
  AOI22D0BWP12T30P140 U375 ( .A1(n309), .A2(n308), .B1(n307), .B2(sr[14]), 
        .ZN(n313) );
  AOI22D0BWP12T30P140 U376 ( .A1(sr[13]), .A2(n311), .B1(n341), .B2(n310), 
        .ZN(n312) );
  ND2D0BWP12T30P140 U377 ( .A1(n313), .A2(n312), .ZN(n141) );
  INVD0BWP12T30P140 U378 ( .I(sr[4]), .ZN(n316) );
  ND2D0BWP12T30P140 U379 ( .A1(n320), .A2(n314), .ZN(n315) );
  MUX2ND0BWP12T30P140 U380 ( .I0(sr[4]), .I1(n316), .S(n315), .ZN(result[4])
         );
  INVD0BWP12T30P140 U381 ( .I(sr[6]), .ZN(n319) );
  IND2D1BWP12T30P140 U382 ( .A1(sr[5]), .B1(n317), .ZN(n321) );
  ND2D0BWP12T30P140 U383 ( .A1(n320), .A2(n321), .ZN(n318) );
  MUX2ND0BWP12T30P140 U384 ( .I0(sr[6]), .I1(n319), .S(n318), .ZN(result[6])
         );
  INVD0BWP12T30P140 U385 ( .I(sr[7]), .ZN(n323) );
  OAI21D0BWP12T30P140 U386 ( .A1(sr[6]), .A2(n321), .B(n320), .ZN(n322) );
  MUX2ND0BWP12T30P140 U387 ( .I0(sr[7]), .I1(n323), .S(n322), .ZN(result[7])
         );
  INVD0BWP12T30P140 U388 ( .I(sr[10]), .ZN(n325) );
  INVD0BWP12T30P140 U389 ( .I(n330), .ZN(n327) );
  OAI21D0BWP12T30P140 U390 ( .A1(result[8]), .A2(sr[9]), .B(n327), .ZN(n324)
         );
  MUX2ND0BWP12T30P140 U391 ( .I0(sr[10]), .I1(n325), .S(n324), .ZN(result[10])
         );
  INVD0BWP12T30P140 U392 ( .I(sr[13]), .ZN(n329) );
  ND2D0BWP12T30P140 U393 ( .A1(n327), .A2(n326), .ZN(n328) );
  MUX2ND0BWP12T30P140 U394 ( .I0(sr[13]), .I1(n329), .S(n328), .ZN(result[13])
         );
  INVD0BWP12T30P140 U395 ( .I(sr[14]), .ZN(n331) );
  AOI21D0BWP12T30P140 U396 ( .A1(n332), .A2(n331), .B(n330), .ZN(n333) );
  MUX2ND0BWP12T30P140 U397 ( .I0(n334), .I1(sr[15]), .S(n333), .ZN(result[15])
         );
  MUX2ND0BWP12T30P140 U398 ( .I0(n337), .I1(n336), .S(n335), .ZN(n140) );
  AOI22D0BWP12T30P140 U399 ( .A1(dividend[0]), .A2(n339), .B1(sr[1]), .B2(n338), .ZN(n340) );
  IND2D1BWP12T30P140 U400 ( .A1(n341), .B1(n340), .ZN(n137) );
endmodule

