/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:18:11 2026
/////////////////////////////////////////////////////////////


module nec ( clk, rst, ir, led );
  output [7:0] led;
  input clk, rst, ir;
  wire   c_bit_reg, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284;
  wire   [1:0] e_bit;
  wire   [8:0] state_reg;
  wire   [31:0] led_reg;
  wire   [19:0] count_reg;
  wire   [7:0] led_tmp;
  wire   [19:0] count_next_reg;

  DFSNQD1BWP12T30P140 led_reg_reg_31_ ( .D(n104), .CP(clk), .SDN(rst), .Q(
        led_reg[31]) );
  DFSNQD1BWP12T30P140 state_reg_reg_0_ ( .D(n144), .CP(clk), .SDN(rst), .Q(
        state_reg[0]) );
  DFCNQD1BWP12T30P140 count_reg_reg_2_ ( .D(count_next_reg[2]), .CP(clk), 
        .CDN(n279), .Q(count_reg[2]) );
  DFCNQD1BWP12T30P140 count_reg_reg_6_ ( .D(count_next_reg[6]), .CP(clk), 
        .CDN(n279), .Q(count_reg[6]) );
  DFCNQD1BWP12T30P140 led_reg_0_ ( .D(led_tmp[0]), .CP(n283), .CDN(n281), .Q(
        led[0]) );
  DFCNQD1BWP12T30P140 led_reg_1_ ( .D(led_tmp[1]), .CP(n283), .CDN(n280), .Q(
        led[1]) );
  DFCNQD1BWP12T30P140 led_reg_2_ ( .D(led_tmp[2]), .CP(n283), .CDN(n280), .Q(
        led[2]) );
  DFCNQD1BWP12T30P140 led_reg_3_ ( .D(led_tmp[3]), .CP(n283), .CDN(n280), .Q(
        led[3]) );
  DFCNQD1BWP12T30P140 led_reg_4_ ( .D(led_tmp[4]), .CP(n283), .CDN(n280), .Q(
        led[4]) );
  DFCNQD1BWP12T30P140 led_reg_5_ ( .D(led_tmp[5]), .CP(n283), .CDN(n280), .Q(
        led[5]) );
  DFCNQD1BWP12T30P140 led_reg_6_ ( .D(led_tmp[6]), .CP(n283), .CDN(n280), .Q(
        led[6]) );
  DFCNQD1BWP12T30P140 led_reg_7_ ( .D(led_tmp[7]), .CP(n284), .CDN(n280), .Q(
        led[7]) );
  DFCNQD1BWP12T30P140 count_reg_reg_3_ ( .D(count_next_reg[3]), .CP(clk), 
        .CDN(n279), .Q(count_reg[3]) );
  DFCNQD1BWP12T30P140 count_reg_reg_1_ ( .D(count_next_reg[1]), .CP(clk), 
        .CDN(n279), .Q(count_reg[1]) );
  DFCNQD1BWP12T30P140 count_reg_reg_4_ ( .D(count_next_reg[4]), .CP(clk), 
        .CDN(n279), .Q(count_reg[4]) );
  DFCNQD1BWP12T30P140 count_reg_reg_8_ ( .D(count_next_reg[8]), .CP(clk), 
        .CDN(n279), .Q(count_reg[8]) );
  DFCNQD1BWP12T30P140 count_reg_reg_14_ ( .D(count_next_reg[14]), .CP(n284), 
        .CDN(n280), .Q(count_reg[14]) );
  DFCNQD1BWP12T30P140 count_reg_reg_10_ ( .D(count_next_reg[10]), .CP(n284), 
        .CDN(n279), .Q(count_reg[10]) );
  DFCNQD1BWP12T30P140 count_reg_reg_16_ ( .D(count_next_reg[16]), .CP(n284), 
        .CDN(n280), .Q(count_reg[16]) );
  DFCNQD1BWP12T30P140 count_reg_reg_7_ ( .D(count_next_reg[7]), .CP(clk), 
        .CDN(n279), .Q(count_reg[7]) );
  DFCNQD1BWP12T30P140 state_reg_reg_6_ ( .D(n137), .CP(n283), .CDN(n279), .Q(
        state_reg[6]) );
  DFCNQD1BWP12T30P140 count_reg_reg_0_ ( .D(count_next_reg[0]), .CP(clk), 
        .CDN(n279), .Q(count_reg[0]) );
  DFCNQD1BWP12T30P140 count_reg_reg_5_ ( .D(count_next_reg[5]), .CP(clk), 
        .CDN(n279), .Q(count_reg[5]) );
  DFCNQD1BWP12T30P140 count_reg_reg_9_ ( .D(count_next_reg[9]), .CP(n284), 
        .CDN(n279), .Q(count_reg[9]) );
  DFCNQD1BWP12T30P140 count_reg_reg_18_ ( .D(count_next_reg[18]), .CP(n284), 
        .CDN(n280), .Q(count_reg[18]) );
  DFCNQD1BWP12T30P140 led_reg_reg_21_ ( .D(n113), .CP(n282), .CDN(n279), .Q(
        led_reg[21]) );
  DFCNQD1BWP12T30P140 led_reg_reg_19_ ( .D(n115), .CP(n282), .CDN(n281), .Q(
        led_reg[19]) );
  DFCNQD1BWP12T30P140 led_reg_reg_17_ ( .D(n117), .CP(n282), .CDN(n280), .Q(
        led_reg[17]) );
  DFCNQD1BWP12T30P140 e_bit_reg_1_ ( .D(e_bit[0]), .CP(n283), .CDN(rst), .Q(
        e_bit[1]) );
  DFCNQD1BWP12T30P140 c_bit_reg_reg ( .D(n143), .CP(n284), .CDN(n281), .Q(
        c_bit_reg) );
  DFCNQD1BWP12T30P140 led_reg_reg_22_ ( .D(n112), .CP(n282), .CDN(rst), .Q(
        led_reg[22]) );
  DFCNQD1BWP12T30P140 led_reg_reg_20_ ( .D(n114), .CP(n282), .CDN(n280), .Q(
        led_reg[20]) );
  DFCNQD1BWP12T30P140 led_reg_reg_18_ ( .D(n116), .CP(n282), .CDN(n279), .Q(
        led_reg[18]) );
  DFCNQD1BWP12T30P140 state_reg_reg_3_ ( .D(n140), .CP(n282), .CDN(rst), .Q(
        state_reg[3]) );
  DFCNQD1BWP12T30P140 state_reg_reg_8_ ( .D(n136), .CP(n282), .CDN(n280), .Q(
        state_reg[8]) );
  DFCNQD1BWP12T30P140 state_reg_reg_2_ ( .D(n141), .CP(n284), .CDN(rst), .Q(
        state_reg[2]) );
  DFCNQD1BWP12T30P140 state_reg_reg_4_ ( .D(n139), .CP(n283), .CDN(n279), .Q(
        state_reg[4]) );
  DFCNQD1BWP12T30P140 state_reg_reg_5_ ( .D(n138), .CP(n283), .CDN(n281), .Q(
        state_reg[5]) );
  DFCNQD1BWP12T30P140 led_reg_reg_8_ ( .D(n126), .CP(n282), .CDN(n281), .Q(
        led_reg[8]) );
  DFCNQD1BWP12T30P140 count_reg_reg_15_ ( .D(count_next_reg[15]), .CP(n284), 
        .CDN(n280), .Q(count_reg[15]) );
  DFCNQD1BWP12T30P140 led_reg_reg_0_ ( .D(n134), .CP(n284), .CDN(rst), .Q(
        led_reg[0]) );
  DFCNQD1BWP12T30P140 led_reg_reg_30_ ( .D(n135), .CP(n282), .CDN(n280), .Q(
        led_reg[30]) );
  DFCNQD1BWP12T30P140 led_reg_reg_28_ ( .D(n106), .CP(n282), .CDN(rst), .Q(
        led_reg[28]) );
  DFCNQD1BWP12T30P140 led_reg_reg_26_ ( .D(n108), .CP(n282), .CDN(n279), .Q(
        led_reg[26]) );
  DFCNQD1BWP12T30P140 led_reg_reg_24_ ( .D(n110), .CP(n282), .CDN(n281), .Q(
        led_reg[24]) );
  DFCNQD1BWP12T30P140 led_reg_reg_14_ ( .D(n120), .CP(n282), .CDN(n280), .Q(
        led_reg[14]) );
  DFCNQD1BWP12T30P140 led_reg_reg_12_ ( .D(n122), .CP(n284), .CDN(rst), .Q(
        led_reg[12]) );
  DFCNQD1BWP12T30P140 led_reg_reg_10_ ( .D(n124), .CP(n284), .CDN(n281), .Q(
        led_reg[10]) );
  DFCNQD1BWP12T30P140 led_reg_reg_23_ ( .D(n111), .CP(n282), .CDN(rst), .Q(
        led_reg[23]) );
  DFCNQD1BWP12T30P140 led_reg_reg_5_ ( .D(n129), .CP(n283), .CDN(n281), .Q(
        led_reg[5]) );
  DFCNQD1BWP12T30P140 led_reg_reg_3_ ( .D(n131), .CP(n283), .CDN(n281), .Q(
        led_reg[3]) );
  DFCNQD1BWP12T30P140 led_reg_reg_1_ ( .D(n133), .CP(n283), .CDN(n281), .Q(
        led_reg[1]) );
  DFCNQD1BWP12T30P140 led_reg_reg_16_ ( .D(n118), .CP(n283), .CDN(rst), .Q(
        led_reg[16]) );
  DFCNQD1BWP12T30P140 led_reg_reg_6_ ( .D(n128), .CP(n283), .CDN(n281), .Q(
        led_reg[6]) );
  DFCNQD1BWP12T30P140 led_reg_reg_4_ ( .D(n130), .CP(n283), .CDN(n281), .Q(
        led_reg[4]) );
  DFCNQD1BWP12T30P140 led_reg_reg_2_ ( .D(n132), .CP(n283), .CDN(n281), .Q(
        led_reg[2]) );
  DFCNQD1BWP12T30P140 led_reg_reg_7_ ( .D(n127), .CP(n282), .CDN(n281), .Q(
        led_reg[7]) );
  DFCNQD1BWP12T30P140 count_reg_reg_19_ ( .D(count_next_reg[19]), .CP(n284), 
        .CDN(n280), .Q(count_reg[19]) );
  DFCNQD1BWP12T30P140 led_reg_reg_27_ ( .D(n107), .CP(n282), .CDN(n281), .Q(
        led_reg[27]) );
  DFCNQD1BWP12T30P140 led_reg_reg_25_ ( .D(n109), .CP(n282), .CDN(n280), .Q(
        led_reg[25]) );
  DFCNQD1BWP12T30P140 led_reg_reg_13_ ( .D(n121), .CP(clk), .CDN(rst), .Q(
        led_reg[13]) );
  DFCNQD1BWP12T30P140 led_reg_reg_11_ ( .D(n123), .CP(n284), .CDN(n281), .Q(
        led_reg[11]) );
  DFCNQD1BWP12T30P140 led_reg_reg_9_ ( .D(n125), .CP(n283), .CDN(n281), .Q(
        led_reg[9]) );
  DFCNQD1BWP12T30P140 led_reg_reg_15_ ( .D(n119), .CP(n282), .CDN(rst), .Q(
        led_reg[15]) );
  DFCNQD1BWP12T30P140 led_reg_reg_29_ ( .D(n105), .CP(n284), .CDN(rst), .Q(
        led_reg[29]) );
  DFCNQD1BWP12T30P140 count_reg_reg_11_ ( .D(count_next_reg[11]), .CP(n284), 
        .CDN(n279), .Q(count_reg[11]) );
  DFCNQD1BWP12T30P140 count_reg_reg_12_ ( .D(count_next_reg[12]), .CP(n284), 
        .CDN(n279), .Q(count_reg[12]) );
  DFCNQD1BWP12T30P140 count_reg_reg_17_ ( .D(count_next_reg[17]), .CP(n284), 
        .CDN(n281), .Q(count_reg[17]) );
  DFCNQD1BWP12T30P140 count_reg_reg_13_ ( .D(count_next_reg[13]), .CP(n284), 
        .CDN(n280), .Q(count_reg[13]) );
  DFCNQD1BWP12T30P140 state_reg_reg_1_ ( .D(n142), .CP(n283), .CDN(rst), .Q(
        state_reg[1]) );
  DFCNQD1BWP12T30P140 state_reg_reg_7_ ( .D(state_reg[7]), .CP(clk), .CDN(rst), 
        .Q(state_reg[7]) );
  DFCNQD1BWP12T30P140 e_bit_reg_0_ ( .D(ir), .CP(clk), .CDN(rst), .Q(e_bit[0])
         );
  INVD0BWP12T30P140 U175 ( .I(state_reg[5]), .ZN(n249) );
  INVD0BWP12T30P140 U176 ( .I(state_reg[3]), .ZN(n238) );
  NR3D0BWP12T30P140 U177 ( .A1(state_reg[7]), .A2(state_reg[2]), .A3(
        state_reg[6]), .ZN(n194) );
  ND3D0BWP12T30P140 U178 ( .A1(n249), .A2(n238), .A3(n194), .ZN(n179) );
  NR2D0BWP12T30P140 U179 ( .A1(state_reg[4]), .A2(n179), .ZN(n155) );
  INVD0BWP12T30P140 U180 ( .I(state_reg[8]), .ZN(n241) );
  ND2D0BWP12T30P140 U181 ( .A1(n155), .A2(n241), .ZN(n263) );
  INR3D1BWP12T30P140 U182 ( .A1(state_reg[1]), .B1(state_reg[0]), .B2(n263), 
        .ZN(n242) );
  NR4D0BWP12T30P140 U183 ( .A1(count_reg[7]), .A2(count_reg[8]), .A3(
        count_reg[5]), .A4(count_reg[6]), .ZN(n182) );
  OR4D0BWP12T30P140 U184 ( .A1(count_reg[0]), .A2(count_reg[1]), .A3(
        count_reg[2]), .A4(count_reg[3]), .Z(n149) );
  NR2D0BWP12T30P140 U185 ( .A1(count_reg[4]), .A2(n149), .ZN(n145) );
  INVD0BWP12T30P140 U186 ( .I(count_reg[9]), .ZN(n180) );
  INVD0BWP12T30P140 U187 ( .I(count_reg[10]), .ZN(n216) );
  AOI211D0BWP12T30P140 U188 ( .A1(n182), .A2(n145), .B(n180), .C(n216), .ZN(
        n146) );
  AOI221D0BWP12T30P140 U189 ( .A1(count_reg[11]), .A2(count_reg[12]), .B1(n146), .B2(count_reg[12]), .C(count_reg[13]), .ZN(n147) );
  INVD0BWP12T30P140 U190 ( .I(count_reg[15]), .ZN(n184) );
  INVD0BWP12T30P140 U191 ( .I(count_reg[14]), .ZN(n215) );
  INVD0BWP12T30P140 U192 ( .I(count_reg[16]), .ZN(n217) );
  OAI31D0BWP12T30P140 U193 ( .A1(n147), .A2(n184), .A3(n215), .B(n217), .ZN(
        n148) );
  AOI31D0BWP12T30P140 U194 ( .A1(count_reg[18]), .A2(count_reg[17]), .A3(n148), 
        .B(count_reg[19]), .ZN(n245) );
  INVD0BWP12T30P140 U195 ( .I(state_reg[6]), .ZN(n221) );
  NR3D0BWP12T30P140 U196 ( .A1(state_reg[1]), .A2(state_reg[0]), .A3(
        state_reg[8]), .ZN(n178) );
  INVD0BWP12T30P140 U197 ( .I(state_reg[4]), .ZN(n247) );
  ND2D0BWP12T30P140 U198 ( .A1(n178), .A2(n247), .ZN(n193) );
  NR4D0BWP12T30P140 U199 ( .A1(state_reg[7]), .A2(state_reg[3]), .A3(
        state_reg[5]), .A4(n193), .ZN(n176) );
  ND3D0BWP12T30P140 U200 ( .A1(n221), .A2(n176), .A3(state_reg[2]), .ZN(n192)
         );
  ND2D0BWP12T30P140 U201 ( .A1(count_reg[4]), .A2(n149), .ZN(n181) );
  INVD0BWP12T30P140 U202 ( .I(count_reg[5]), .ZN(n150) );
  INVD0BWP12T30P140 U203 ( .I(count_reg[6]), .ZN(n201) );
  AOI32D0BWP12T30P140 U204 ( .A1(n181), .A2(n180), .A3(n150), .B1(n201), .B2(
        n180), .ZN(n151) );
  OA31D0BWP12T30P140 U205 ( .A1(count_reg[7]), .A2(count_reg[8]), .A3(n151), 
        .B(count_reg[10]), .Z(n152) );
  OA211D0BWP12T30P140 U206 ( .A1(count_reg[11]), .A2(n152), .B(count_reg[12]), 
        .C(count_reg[13]), .Z(n153) );
  OAI31D0BWP12T30P140 U207 ( .A1(count_reg[14]), .A2(count_reg[15]), .A3(n153), 
        .B(count_reg[17]), .ZN(n154) );
  NR2D0BWP12T30P140 U208 ( .A1(count_reg[19]), .A2(count_reg[18]), .ZN(n186)
         );
  OAI21D0BWP12T30P140 U209 ( .A1(n217), .A2(n154), .B(n186), .ZN(n235) );
  NR2D0BWP12T30P140 U210 ( .A1(state_reg[1]), .A2(state_reg[0]), .ZN(n156) );
  ND3D0BWP12T30P140 U211 ( .A1(n156), .A2(state_reg[8]), .A3(n155), .ZN(n202)
         );
  OAI21D0BWP12T30P140 U212 ( .A1(n192), .A2(n235), .B(n202), .ZN(n157) );
  AOI21D0BWP12T30P140 U213 ( .A1(n242), .A2(n245), .B(n157), .ZN(n199) );
  INVD0BWP12T30P140 U214 ( .I(n202), .ZN(n198) );
  OAI22D0BWP12T30P140 U215 ( .A1(led_reg[10]), .A2(led_reg[2]), .B1(
        led_reg[11]), .B2(led_reg[3]), .ZN(n158) );
  AOI221D0BWP12T30P140 U216 ( .A1(led_reg[10]), .A2(led_reg[2]), .B1(
        led_reg[3]), .B2(led_reg[11]), .C(n158), .ZN(n165) );
  OAI22D0BWP12T30P140 U217 ( .A1(led_reg[8]), .A2(led_reg[0]), .B1(led_reg[9]), 
        .B2(led_reg[1]), .ZN(n159) );
  AOI221D0BWP12T30P140 U218 ( .A1(led_reg[8]), .A2(led_reg[0]), .B1(led_reg[1]), .B2(led_reg[9]), .C(n159), .ZN(n164) );
  OAI22D0BWP12T30P140 U219 ( .A1(led_reg[14]), .A2(led_reg[6]), .B1(
        led_reg[15]), .B2(led_reg[7]), .ZN(n160) );
  AOI221D0BWP12T30P140 U220 ( .A1(led_reg[14]), .A2(led_reg[6]), .B1(
        led_reg[7]), .B2(led_reg[15]), .C(n160), .ZN(n163) );
  OAI22D0BWP12T30P140 U221 ( .A1(led_reg[12]), .A2(led_reg[4]), .B1(
        led_reg[13]), .B2(led_reg[5]), .ZN(n161) );
  AOI221D0BWP12T30P140 U222 ( .A1(led_reg[12]), .A2(led_reg[4]), .B1(
        led_reg[5]), .B2(led_reg[13]), .C(n161), .ZN(n162) );
  ND4D0BWP12T30P140 U223 ( .A1(n165), .A2(n164), .A3(n163), .A4(n162), .ZN(
        n175) );
  OAI22D0BWP12T30P140 U224 ( .A1(led_reg[26]), .A2(led_reg[18]), .B1(
        led_reg[27]), .B2(led_reg[19]), .ZN(n166) );
  AOI221D0BWP12T30P140 U225 ( .A1(led_reg[26]), .A2(led_reg[18]), .B1(
        led_reg[19]), .B2(led_reg[27]), .C(n166), .ZN(n173) );
  OAI22D0BWP12T30P140 U226 ( .A1(led_reg[24]), .A2(led_reg[16]), .B1(
        led_reg[25]), .B2(led_reg[17]), .ZN(n167) );
  AOI221D0BWP12T30P140 U227 ( .A1(led_reg[24]), .A2(led_reg[16]), .B1(
        led_reg[17]), .B2(led_reg[25]), .C(n167), .ZN(n172) );
  OAI22D0BWP12T30P140 U228 ( .A1(led_reg[30]), .A2(led_reg[22]), .B1(
        led_reg[31]), .B2(led_reg[23]), .ZN(n168) );
  AOI221D0BWP12T30P140 U229 ( .A1(led_reg[30]), .A2(led_reg[22]), .B1(
        led_reg[23]), .B2(led_reg[31]), .C(n168), .ZN(n171) );
  OAI22D0BWP12T30P140 U230 ( .A1(led_reg[28]), .A2(led_reg[20]), .B1(
        led_reg[29]), .B2(led_reg[21]), .ZN(n169) );
  AOI221D0BWP12T30P140 U231 ( .A1(led_reg[28]), .A2(led_reg[20]), .B1(
        led_reg[21]), .B2(led_reg[29]), .C(n169), .ZN(n170) );
  ND4D0BWP12T30P140 U232 ( .A1(n173), .A2(n172), .A3(n171), .A4(n170), .ZN(
        n174) );
  OR2D0BWP12T30P140 U233 ( .A1(n175), .A2(n174), .Z(n203) );
  ND2D0BWP12T30P140 U234 ( .A1(n198), .A2(n203), .ZN(n206) );
  INR3D1BWP12T30P140 U235 ( .A1(n194), .B1(n193), .B2(state_reg[5]), .ZN(n196)
         );
  IND2D1BWP12T30P140 U236 ( .A1(e_bit[1]), .B1(e_bit[0]), .ZN(n190) );
  INVD0BWP12T30P140 U237 ( .I(e_bit[0]), .ZN(n188) );
  ND2D0BWP12T30P140 U238 ( .A1(e_bit[1]), .A2(n188), .ZN(n177) );
  INVD0BWP12T30P140 U239 ( .I(state_reg[2]), .ZN(n243) );
  ND2D0BWP12T30P140 U240 ( .A1(n176), .A2(n243), .ZN(n233) );
  OAI21D0BWP12T30P140 U241 ( .A1(state_reg[1]), .A2(n263), .B(n233), .ZN(n195)
         );
  AOI22D0BWP12T30P140 U242 ( .A1(n196), .A2(n190), .B1(n177), .B2(n195), .ZN(
        n191) );
  IND3D1BWP12T30P140 U243 ( .A1(n179), .B1(n178), .B2(state_reg[4]), .ZN(n248)
         );
  AOI31D0BWP12T30P140 U244 ( .A1(n182), .A2(n181), .A3(n180), .B(n216), .ZN(
        n183) );
  OAI31D0BWP12T30P140 U245 ( .A1(n183), .A2(count_reg[11]), .A3(count_reg[12]), 
        .B(count_reg[13]), .ZN(n185) );
  AOI32D0BWP12T30P140 U246 ( .A1(n215), .A2(n186), .A3(n185), .B1(n184), .B2(
        n186), .ZN(n187) );
  NR4D0BWP12T30P140 U247 ( .A1(count_reg[17]), .A2(count_reg[16]), .A3(n248), 
        .A4(n187), .ZN(n208) );
  AOI21D0BWP12T30P140 U248 ( .A1(e_bit[1]), .A2(n188), .B(n192), .ZN(n189) );
  AOI211D0BWP12T30P140 U249 ( .A1(n242), .A2(n190), .B(n208), .C(n189), .ZN(
        n272) );
  ND3D0BWP12T30P140 U250 ( .A1(n206), .A2(n191), .A3(n272), .ZN(n261) );
  INVD0BWP12T30P140 U251 ( .I(n192), .ZN(n236) );
  INR4D0BWP12T30P140 U252 ( .A1(n194), .B1(n193), .B2(state_reg[3]), .B3(n249), 
        .ZN(n232) );
  NR4D0BWP12T30P140 U253 ( .A1(n242), .A2(n236), .A3(n232), .A4(n195), .ZN(
        n197) );
  INVD0BWP12T30P140 U254 ( .I(n196), .ZN(n246) );
  ND2D0BWP12T30P140 U255 ( .A1(n197), .A2(n246), .ZN(n204) );
  INR3D1BWP12T30P140 U256 ( .A1(n248), .B1(n198), .B2(n204), .ZN(n205) );
  NR2D0BWP12T30P140 U257 ( .A1(n205), .A2(n261), .ZN(n259) );
  INVD0BWP12T30P140 U258 ( .I(state_reg[0]), .ZN(n262) );
  OAI22D0BWP12T30P140 U259 ( .A1(n199), .A2(n261), .B1(n259), .B2(n262), .ZN(
        n144) );
  INVD0BWP12T30P140 U260 ( .I(count_reg[2]), .ZN(n200) );
  ND2D0BWP12T30P140 U261 ( .A1(count_reg[0]), .A2(count_reg[1]), .ZN(n211) );
  NR2D0BWP12T30P140 U262 ( .A1(n200), .A2(n211), .ZN(n210) );
  AOI211D0BWP12T30P140 U263 ( .A1(n200), .A2(n211), .B(n210), .C(n272), .ZN(
        count_next_reg[2]) );
  INVD0BWP12T30P140 U264 ( .I(count_reg[4]), .ZN(n213) );
  ND2D0BWP12T30P140 U265 ( .A1(count_reg[3]), .A2(n210), .ZN(n212) );
  NR2D0BWP12T30P140 U266 ( .A1(n213), .A2(n212), .ZN(n223) );
  ND2D0BWP12T30P140 U267 ( .A1(count_reg[5]), .A2(n223), .ZN(n222) );
  NR2D0BWP12T30P140 U268 ( .A1(n201), .A2(n222), .ZN(n219) );
  AOI211D0BWP12T30P140 U269 ( .A1(n201), .A2(n222), .B(n219), .C(n272), .ZN(
        count_next_reg[6]) );
  NR2D0BWP12T30P140 U270 ( .A1(n203), .A2(n202), .ZN(n258) );
  INVD0BWP12T30P140 U271 ( .I(led_reg[16]), .ZN(n256) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n258), .A2(n256), .B1(led[0]), .B2(n258), 
        .ZN(led_tmp[0]) );
  INVD0BWP12T30P140 U273 ( .I(led_reg[17]), .ZN(n254) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n258), .A2(n254), .B1(led[1]), .B2(n258), 
        .ZN(led_tmp[1]) );
  INVD0BWP12T30P140 U275 ( .I(led_reg[18]), .ZN(n231) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n258), .A2(n231), .B1(led[2]), .B2(n258), 
        .ZN(led_tmp[2]) );
  INVD0BWP12T30P140 U277 ( .I(led_reg[19]), .ZN(n230) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n258), .A2(n230), .B1(led[3]), .B2(n258), 
        .ZN(led_tmp[3]) );
  INVD0BWP12T30P140 U279 ( .I(led_reg[20]), .ZN(n229) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n258), .A2(n229), .B1(led[4]), .B2(n258), 
        .ZN(led_tmp[4]) );
  INVD0BWP12T30P140 U281 ( .I(led_reg[21]), .ZN(n228) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n258), .A2(n228), .B1(led[5]), .B2(n258), 
        .ZN(led_tmp[5]) );
  NR3D0BWP12T30P140 U283 ( .A1(n208), .A2(n205), .A3(n204), .ZN(n207) );
  AN2D0BWP12T30P140 U284 ( .A1(n207), .A2(n206), .Z(n255) );
  INVD0BWP12T30P140 U285 ( .I(led_reg[31]), .ZN(n252) );
  OR2D0BWP12T30P140 U286 ( .A1(n248), .A2(n208), .Z(n253) );
  INVD0BWP12T30P140 U287 ( .I(n253), .ZN(n269) );
  AOI21D0BWP12T30P140 U288 ( .A1(ir), .A2(n269), .B(n258), .ZN(n209) );
  OAI21D0BWP12T30P140 U289 ( .A1(n255), .A2(n252), .B(n209), .ZN(n104) );
  INVD0BWP12T30P140 U290 ( .I(led_reg[23]), .ZN(n227) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n258), .A2(n227), .B1(led[7]), .B2(n258), 
        .ZN(led_tmp[7]) );
  INVD0BWP12T30P140 U292 ( .I(n272), .ZN(n274) );
  OA211D0BWP12T30P140 U293 ( .A1(count_reg[3]), .A2(n210), .B(n212), .C(n274), 
        .Z(count_next_reg[3]) );
  OA211D0BWP12T30P140 U294 ( .A1(count_reg[0]), .A2(count_reg[1]), .B(n211), 
        .C(n274), .Z(count_next_reg[1]) );
  AOI211D0BWP12T30P140 U295 ( .A1(n213), .A2(n212), .B(n223), .C(n272), .ZN(
        count_next_reg[4]) );
  INVD0BWP12T30P140 U296 ( .I(count_reg[8]), .ZN(n214) );
  ND2D0BWP12T30P140 U297 ( .A1(count_reg[7]), .A2(n219), .ZN(n218) );
  NR2D0BWP12T30P140 U298 ( .A1(n214), .A2(n218), .ZN(n225) );
  AOI211D0BWP12T30P140 U299 ( .A1(n214), .A2(n218), .B(n225), .C(n272), .ZN(
        count_next_reg[8]) );
  INVD0BWP12T30P140 U300 ( .I(count_reg[12]), .ZN(n264) );
  ND2D0BWP12T30P140 U301 ( .A1(count_reg[9]), .A2(n225), .ZN(n224) );
  NR2D0BWP12T30P140 U302 ( .A1(n216), .A2(n224), .ZN(n276) );
  ND2D0BWP12T30P140 U303 ( .A1(count_reg[11]), .A2(n276), .ZN(n275) );
  NR2D0BWP12T30P140 U304 ( .A1(n264), .A2(n275), .ZN(n266) );
  ND2D0BWP12T30P140 U305 ( .A1(count_reg[13]), .A2(n266), .ZN(n265) );
  NR2D0BWP12T30P140 U306 ( .A1(n215), .A2(n265), .ZN(n251) );
  AOI211D0BWP12T30P140 U307 ( .A1(n215), .A2(n265), .B(n251), .C(n272), .ZN(
        count_next_reg[14]) );
  AOI211D0BWP12T30P140 U308 ( .A1(n216), .A2(n224), .B(n276), .C(n272), .ZN(
        count_next_reg[10]) );
  ND2D0BWP12T30P140 U309 ( .A1(count_reg[15]), .A2(n251), .ZN(n250) );
  NR2D0BWP12T30P140 U310 ( .A1(n217), .A2(n250), .ZN(n268) );
  AOI211D0BWP12T30P140 U311 ( .A1(n217), .A2(n250), .B(n268), .C(n272), .ZN(
        count_next_reg[16]) );
  OA211D0BWP12T30P140 U312 ( .A1(count_reg[7]), .A2(n219), .B(n218), .C(n274), 
        .Z(count_next_reg[7]) );
  INVD0BWP12T30P140 U313 ( .I(c_bit_reg), .ZN(n239) );
  ND2D0BWP12T30P140 U314 ( .A1(n232), .A2(n239), .ZN(n220) );
  OAI22D0BWP12T30P140 U315 ( .A1(n259), .A2(n221), .B1(n252), .B2(n220), .ZN(
        n137) );
  NR2D0BWP12T30P140 U316 ( .A1(count_reg[0]), .A2(n272), .ZN(count_next_reg[0]) );
  OA211D0BWP12T30P140 U317 ( .A1(count_reg[5]), .A2(n223), .B(n222), .C(n274), 
        .Z(count_next_reg[5]) );
  OA211D0BWP12T30P140 U318 ( .A1(count_reg[9]), .A2(n225), .B(n224), .C(n274), 
        .Z(count_next_reg[9]) );
  INVD0BWP12T30P140 U319 ( .I(count_reg[18]), .ZN(n226) );
  ND2D0BWP12T30P140 U320 ( .A1(count_reg[17]), .A2(n268), .ZN(n267) );
  NR2D0BWP12T30P140 U321 ( .A1(n226), .A2(n267), .ZN(n273) );
  AOI211D0BWP12T30P140 U322 ( .A1(n226), .A2(n267), .B(n273), .C(n272), .ZN(
        count_next_reg[18]) );
  INVD0BWP12T30P140 U323 ( .I(led_reg[22]), .ZN(n257) );
  OAI22D0BWP12T30P140 U324 ( .A1(n228), .A2(n255), .B1(n257), .B2(n253), .ZN(
        n113) );
  OAI22D0BWP12T30P140 U325 ( .A1(n230), .A2(n255), .B1(n229), .B2(n253), .ZN(
        n115) );
  OAI22D0BWP12T30P140 U326 ( .A1(n254), .A2(n255), .B1(n231), .B2(n253), .ZN(
        n117) );
  INVD0BWP12T30P140 U327 ( .I(n253), .ZN(n278) );
  AO22D0BWP12T30P140 U328 ( .A1(led_reg[0]), .A2(n278), .B1(c_bit_reg), .B2(
        n253), .Z(n143) );
  OAI22D0BWP12T30P140 U329 ( .A1(n257), .A2(n255), .B1(n227), .B2(n253), .ZN(
        n112) );
  OAI22D0BWP12T30P140 U330 ( .A1(n229), .A2(n255), .B1(n228), .B2(n253), .ZN(
        n114) );
  OAI22D0BWP12T30P140 U331 ( .A1(n231), .A2(n255), .B1(n230), .B2(n253), .ZN(
        n116) );
  INVD0BWP12T30P140 U332 ( .I(n232), .ZN(n240) );
  OAI31D0BWP12T30P140 U333 ( .A1(led_reg[31]), .A2(c_bit_reg), .A3(n240), .B(
        n233), .ZN(n234) );
  AOI21D0BWP12T30P140 U334 ( .A1(n236), .A2(n235), .B(n234), .ZN(n237) );
  OAI22D0BWP12T30P140 U335 ( .A1(n259), .A2(n238), .B1(n237), .B2(n261), .ZN(
        n140) );
  OAI22D0BWP12T30P140 U336 ( .A1(n259), .A2(n241), .B1(n240), .B2(n239), .ZN(
        n136) );
  IND2D1BWP12T30P140 U337 ( .A1(n261), .B1(n242), .ZN(n244) );
  OAI22D0BWP12T30P140 U338 ( .A1(n245), .A2(n244), .B1(n259), .B2(n243), .ZN(
        n141) );
  OAI22D0BWP12T30P140 U339 ( .A1(n259), .A2(n247), .B1(n246), .B2(n261), .ZN(
        n139) );
  OAI22D0BWP12T30P140 U340 ( .A1(n259), .A2(n249), .B1(n248), .B2(n261), .ZN(
        n138) );
  INVD0BWP12T30P140 U341 ( .I(n255), .ZN(n277) );
  AO22D0BWP12T30P140 U342 ( .A1(led_reg[8]), .A2(n277), .B1(led_reg[9]), .B2(
        n269), .Z(n126) );
  OA211D0BWP12T30P140 U343 ( .A1(count_reg[15]), .A2(n251), .B(n250), .C(n274), 
        .Z(count_next_reg[15]) );
  AO22D0BWP12T30P140 U344 ( .A1(led_reg[0]), .A2(n277), .B1(led_reg[1]), .B2(
        n278), .Z(n134) );
  MOAI22D0BWP12T30P140 U345 ( .A1(n252), .A2(n253), .B1(n277), .B2(led_reg[30]), .ZN(n135) );
  INVD0BWP12T30P140 U346 ( .I(n255), .ZN(n270) );
  AO22D0BWP12T30P140 U347 ( .A1(led_reg[28]), .A2(n270), .B1(led_reg[29]), 
        .B2(n278), .Z(n106) );
  AO22D0BWP12T30P140 U348 ( .A1(led_reg[26]), .A2(n270), .B1(led_reg[27]), 
        .B2(n278), .Z(n108) );
  AO22D0BWP12T30P140 U349 ( .A1(led_reg[24]), .A2(n270), .B1(led_reg[25]), 
        .B2(n269), .Z(n110) );
  AO22D0BWP12T30P140 U350 ( .A1(led_reg[14]), .A2(n270), .B1(led_reg[15]), 
        .B2(n278), .Z(n120) );
  AO22D0BWP12T30P140 U351 ( .A1(led_reg[12]), .A2(n270), .B1(led_reg[13]), 
        .B2(n278), .Z(n122) );
  AO22D0BWP12T30P140 U352 ( .A1(led_reg[10]), .A2(n270), .B1(led_reg[11]), 
        .B2(n269), .Z(n124) );
  AO22D0BWP12T30P140 U353 ( .A1(led_reg[23]), .A2(n270), .B1(led_reg[24]), 
        .B2(n278), .Z(n111) );
  AO22D0BWP12T30P140 U354 ( .A1(led_reg[5]), .A2(n277), .B1(led_reg[6]), .B2(
        n269), .Z(n129) );
  AO22D0BWP12T30P140 U355 ( .A1(led_reg[3]), .A2(n277), .B1(led_reg[4]), .B2(
        n269), .Z(n131) );
  AO22D0BWP12T30P140 U356 ( .A1(led_reg[1]), .A2(n277), .B1(led_reg[2]), .B2(
        n269), .Z(n133) );
  OAI22D0BWP12T30P140 U357 ( .A1(n256), .A2(n255), .B1(n254), .B2(n253), .ZN(
        n118) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n258), .A2(n257), .B1(led[6]), .B2(n258), 
        .ZN(led_tmp[6]) );
  AO22D0BWP12T30P140 U359 ( .A1(led_reg[27]), .A2(n270), .B1(led_reg[28]), 
        .B2(n278), .Z(n107) );
  IND2D1BWP12T30P140 U360 ( .A1(n259), .B1(state_reg[1]), .ZN(n260) );
  OAI31D0BWP12T30P140 U361 ( .A1(n263), .A2(n262), .A3(n261), .B(n260), .ZN(
        n142) );
  AO22D0BWP12T30P140 U362 ( .A1(led_reg[6]), .A2(n277), .B1(led_reg[7]), .B2(
        n269), .Z(n128) );
  AOI211D0BWP12T30P140 U363 ( .A1(n264), .A2(n275), .B(n266), .C(n272), .ZN(
        count_next_reg[12]) );
  AO22D0BWP12T30P140 U364 ( .A1(led_reg[25]), .A2(n270), .B1(led_reg[26]), 
        .B2(n278), .Z(n109) );
  AO22D0BWP12T30P140 U365 ( .A1(led_reg[16]), .A2(n278), .B1(led_reg[15]), 
        .B2(n277), .Z(n119) );
  OA211D0BWP12T30P140 U366 ( .A1(count_reg[13]), .A2(n266), .B(n265), .C(n274), 
        .Z(count_next_reg[13]) );
  AO22D0BWP12T30P140 U367 ( .A1(led_reg[4]), .A2(n277), .B1(led_reg[5]), .B2(
        n269), .Z(n130) );
  OA211D0BWP12T30P140 U368 ( .A1(count_reg[17]), .A2(n268), .B(n267), .C(n274), 
        .Z(count_next_reg[17]) );
  AO22D0BWP12T30P140 U369 ( .A1(led_reg[9]), .A2(n270), .B1(led_reg[10]), .B2(
        n269), .Z(n125) );
  AO22D0BWP12T30P140 U370 ( .A1(led_reg[2]), .A2(n277), .B1(led_reg[3]), .B2(
        n269), .Z(n132) );
  AO22D0BWP12T30P140 U371 ( .A1(led_reg[11]), .A2(n270), .B1(led_reg[12]), 
        .B2(n269), .Z(n123) );
  AO22D0BWP12T30P140 U372 ( .A1(led_reg[30]), .A2(n278), .B1(n277), .B2(
        led_reg[29]), .Z(n105) );
  AO22D0BWP12T30P140 U373 ( .A1(led_reg[13]), .A2(n270), .B1(led_reg[14]), 
        .B2(n278), .Z(n121) );
  NR2D0BWP12T30P140 U374 ( .A1(count_reg[19]), .A2(n273), .ZN(n271) );
  AOI211D0BWP12T30P140 U375 ( .A1(count_reg[19]), .A2(n273), .B(n272), .C(n271), .ZN(count_next_reg[19]) );
  OA211D0BWP12T30P140 U376 ( .A1(count_reg[11]), .A2(n276), .B(n275), .C(n274), 
        .Z(count_next_reg[11]) );
  AO22D0BWP12T30P140 U377 ( .A1(led_reg[8]), .A2(n278), .B1(led_reg[7]), .B2(
        n277), .Z(n127) );
  CKBD0BWP12T30P140 U378 ( .I(clk), .Z(n283) );
  CKBD0BWP12T30P140 U379 ( .I(clk), .Z(n284) );
  CKBD0BWP12T30P140 U380 ( .I(clk), .Z(n282) );
  CKBD0BWP12T30P140 U381 ( .I(rst), .Z(n280) );
  CKBD0BWP12T30P140 U382 ( .I(rst), .Z(n281) );
  CKBD0BWP12T30P140 U383 ( .I(rst), .Z(n279) );
endmodule

