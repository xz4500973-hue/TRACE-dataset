/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:04:18 2026
/////////////////////////////////////////////////////////////


module nec ( clk, rst, ir, led );
  output [7:0] led;
  input clk, rst, ir;
  wire   c_bit_reg, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288;
  wire   [1:0] e_bit;
  wire   [8:0] state_reg;
  wire   [31:0] led_reg;
  wire   [19:0] count_reg;
  wire   [19:0] count_next;
  wire   [7:0] led_tmp;

  DFSNQD1BWP12T30P140 led_reg_reg_31_ ( .D(n107), .CP(clk), .SDN(rst), .Q(
        led_reg[31]) );
  DFSNQD1BWP12T30P140 state_reg_reg_0_ ( .D(n145), .CP(clk), .SDN(rst), .Q(
        state_reg[0]) );
  DFCNQD1BWP12T30P140 count_reg_reg_2_ ( .D(count_next[2]), .CP(clk), .CDN(
        n283), .Q(count_reg[2]) );
  DFCNQD1BWP12T30P140 count_reg_reg_6_ ( .D(count_next[6]), .CP(clk), .CDN(
        n283), .Q(count_reg[6]) );
  DFCNQD1BWP12T30P140 led_reg_7_ ( .D(led_tmp[7]), .CP(n287), .CDN(n285), .Q(
        led[7]) );
  DFCNQD1BWP12T30P140 led_reg_6_ ( .D(led_tmp[6]), .CP(n288), .CDN(n285), .Q(
        led[6]) );
  DFCNQD1BWP12T30P140 led_reg_5_ ( .D(led_tmp[5]), .CP(n286), .CDN(n285), .Q(
        led[5]) );
  DFCNQD1BWP12T30P140 led_reg_4_ ( .D(led_tmp[4]), .CP(n286), .CDN(n285), .Q(
        led[4]) );
  DFCNQD1BWP12T30P140 led_reg_3_ ( .D(led_tmp[3]), .CP(n287), .CDN(n285), .Q(
        led[3]) );
  DFCNQD1BWP12T30P140 led_reg_2_ ( .D(led_tmp[2]), .CP(n288), .CDN(n285), .Q(
        led[2]) );
  DFCNQD1BWP12T30P140 led_reg_1_ ( .D(led_tmp[1]), .CP(n287), .CDN(n284), .Q(
        led[1]) );
  DFCNQD1BWP12T30P140 led_reg_0_ ( .D(led_tmp[0]), .CP(n288), .CDN(n283), .Q(
        led[0]) );
  DFCNQD1BWP12T30P140 count_reg_reg_3_ ( .D(count_next[3]), .CP(clk), .CDN(
        n283), .Q(count_reg[3]) );
  DFCNQD1BWP12T30P140 count_reg_reg_1_ ( .D(count_next[1]), .CP(clk), .CDN(
        n283), .Q(count_reg[1]) );
  DFCNQD1BWP12T30P140 count_reg_reg_4_ ( .D(count_next[4]), .CP(clk), .CDN(
        n283), .Q(count_reg[4]) );
  DFCNQD1BWP12T30P140 count_reg_reg_8_ ( .D(count_next[8]), .CP(clk), .CDN(
        n283), .Q(count_reg[8]) );
  DFCNQD1BWP12T30P140 count_reg_reg_10_ ( .D(count_next[10]), .CP(n288), .CDN(
        n283), .Q(count_reg[10]) );
  DFCNQD1BWP12T30P140 count_reg_reg_16_ ( .D(count_next[16]), .CP(n288), .CDN(
        n284), .Q(count_reg[16]) );
  DFCNQD1BWP12T30P140 count_reg_reg_0_ ( .D(count_next[0]), .CP(clk), .CDN(
        n283), .Q(count_reg[0]) );
  DFCNQD1BWP12T30P140 count_reg_reg_5_ ( .D(count_next[5]), .CP(clk), .CDN(
        n283), .Q(count_reg[5]) );
  DFCNQD1BWP12T30P140 count_reg_reg_7_ ( .D(count_next[7]), .CP(clk), .CDN(
        n283), .Q(count_reg[7]) );
  DFCNQD1BWP12T30P140 e_bit_reg_1_ ( .D(e_bit[0]), .CP(n286), .CDN(rst), .Q(
        e_bit[1]) );
  DFCNQD1BWP12T30P140 state_reg_reg_5_ ( .D(n140), .CP(n286), .CDN(n284), .Q(
        state_reg[5]) );
  DFCNQD1BWP12T30P140 count_reg_reg_14_ ( .D(count_next[14]), .CP(n288), .CDN(
        n284), .Q(count_reg[14]) );
  DFCNQD1BWP12T30P140 state_reg_reg_6_ ( .D(n139), .CP(n286), .CDN(n283), .Q(
        state_reg[6]) );
  DFCNQD1BWP12T30P140 state_reg_reg_1_ ( .D(n144), .CP(n286), .CDN(n285), .Q(
        state_reg[1]) );
  DFCNQD1BWP12T30P140 c_bit_reg_reg ( .D(n147), .CP(n286), .CDN(rst), .Q(
        c_bit_reg) );
  DFCNQD1BWP12T30P140 state_reg_reg_4_ ( .D(n141), .CP(n286), .CDN(n285), .Q(
        state_reg[4]) );
  DFCNQD1BWP12T30P140 state_reg_reg_3_ ( .D(n142), .CP(n286), .CDN(rst), .Q(
        state_reg[3]) );
  DFCNQD1BWP12T30P140 state_reg_reg_2_ ( .D(n143), .CP(n286), .CDN(n284), .Q(
        state_reg[2]) );
  DFCNQD1BWP12T30P140 state_reg_reg_8_ ( .D(n146), .CP(n286), .CDN(n283), .Q(
        state_reg[8]) );
  DFCNQD1BWP12T30P140 count_reg_reg_18_ ( .D(count_next[18]), .CP(n288), .CDN(
        n284), .Q(count_reg[18]) );
  DFCNQD1BWP12T30P140 led_reg_reg_24_ ( .D(n114), .CP(n286), .CDN(n285), .Q(
        led_reg[24]) );
  DFCNQD1BWP12T30P140 led_reg_reg_8_ ( .D(n130), .CP(n287), .CDN(n285), .Q(
        led_reg[8]) );
  DFCNQD1BWP12T30P140 count_reg_reg_15_ ( .D(count_next[15]), .CP(n288), .CDN(
        n284), .Q(count_reg[15]) );
  DFCNQD1BWP12T30P140 led_reg_reg_0_ ( .D(n138), .CP(n286), .CDN(rst), .Q(
        led_reg[0]) );
  DFCNQD1BWP12T30P140 led_reg_reg_30_ ( .D(n108), .CP(n286), .CDN(n285), .Q(
        led_reg[30]) );
  DFCNQD1BWP12T30P140 led_reg_reg_28_ ( .D(n110), .CP(n287), .CDN(rst), .Q(
        led_reg[28]) );
  DFCNQD1BWP12T30P140 led_reg_reg_26_ ( .D(n112), .CP(n288), .CDN(rst), .Q(
        led_reg[26]) );
  DFCNQD1BWP12T30P140 led_reg_reg_14_ ( .D(n124), .CP(n286), .CDN(rst), .Q(
        led_reg[14]) );
  DFCNQD1BWP12T30P140 led_reg_reg_12_ ( .D(n126), .CP(n287), .CDN(n284), .Q(
        led_reg[12]) );
  DFCNQD1BWP12T30P140 led_reg_reg_10_ ( .D(n128), .CP(n287), .CDN(n283), .Q(
        led_reg[10]) );
  DFCNQD1BWP12T30P140 led_reg_reg_5_ ( .D(n133), .CP(n287), .CDN(n284), .Q(
        led_reg[5]) );
  DFCNQD1BWP12T30P140 led_reg_reg_3_ ( .D(n135), .CP(n287), .CDN(n284), .Q(
        led_reg[3]) );
  DFCNQD1BWP12T30P140 led_reg_reg_1_ ( .D(n137), .CP(n288), .CDN(n284), .Q(
        led_reg[1]) );
  DFCNQD1BWP12T30P140 led_reg_reg_6_ ( .D(n132), .CP(n287), .CDN(n284), .Q(
        led_reg[6]) );
  DFCNQD1BWP12T30P140 led_reg_reg_4_ ( .D(n134), .CP(n287), .CDN(n284), .Q(
        led_reg[4]) );
  DFCNQD1BWP12T30P140 led_reg_reg_2_ ( .D(n136), .CP(n287), .CDN(n284), .Q(
        led_reg[2]) );
  DFCNQD1BWP12T30P140 led_reg_reg_7_ ( .D(n131), .CP(n287), .CDN(n284), .Q(
        led_reg[7]) );
  DFCNQD1BWP12T30P140 count_reg_reg_9_ ( .D(count_next[9]), .CP(n288), .CDN(
        n283), .Q(count_reg[9]) );
  DFCNQD1BWP12T30P140 led_reg_reg_29_ ( .D(n109), .CP(n286), .CDN(rst), .Q(
        led_reg[29]) );
  DFCNQD1BWP12T30P140 led_reg_reg_27_ ( .D(n111), .CP(n286), .CDN(rst), .Q(
        led_reg[27]) );
  DFCNQD1BWP12T30P140 led_reg_reg_25_ ( .D(n113), .CP(clk), .CDN(rst), .Q(
        led_reg[25]) );
  DFCNQD1BWP12T30P140 led_reg_reg_13_ ( .D(n125), .CP(n287), .CDN(n285), .Q(
        led_reg[13]) );
  DFCNQD1BWP12T30P140 led_reg_reg_11_ ( .D(n127), .CP(n287), .CDN(rst), .Q(
        led_reg[11]) );
  DFCNQD1BWP12T30P140 led_reg_reg_9_ ( .D(n129), .CP(n287), .CDN(n284), .Q(
        led_reg[9]) );
  DFCNQD1BWP12T30P140 led_reg_reg_15_ ( .D(n123), .CP(clk), .CDN(n283), .Q(
        led_reg[15]) );
  DFCNQD1BWP12T30P140 count_reg_reg_19_ ( .D(count_next[19]), .CP(n288), .CDN(
        n284), .Q(count_reg[19]) );
  DFCNQD1BWP12T30P140 count_reg_reg_11_ ( .D(count_next[11]), .CP(n288), .CDN(
        n283), .Q(count_reg[11]) );
  DFCNQD1BWP12T30P140 led_reg_reg_16_ ( .D(n122), .CP(n287), .CDN(n285), .Q(
        led_reg[16]) );
  DFCNQD1BWP12T30P140 led_reg_reg_21_ ( .D(n117), .CP(n287), .CDN(n285), .Q(
        led_reg[21]) );
  DFCNQD1BWP12T30P140 led_reg_reg_19_ ( .D(n119), .CP(n287), .CDN(n285), .Q(
        led_reg[19]) );
  DFCNQD1BWP12T30P140 led_reg_reg_17_ ( .D(n121), .CP(n288), .CDN(rst), .Q(
        led_reg[17]) );
  DFCNQD1BWP12T30P140 count_reg_reg_13_ ( .D(count_next[13]), .CP(n288), .CDN(
        n284), .Q(count_reg[13]) );
  DFCNQD1BWP12T30P140 led_reg_reg_22_ ( .D(n116), .CP(n288), .CDN(n285), .Q(
        led_reg[22]) );
  DFCNQD1BWP12T30P140 led_reg_reg_20_ ( .D(n118), .CP(n286), .CDN(n285), .Q(
        led_reg[20]) );
  DFCNQD1BWP12T30P140 led_reg_reg_18_ ( .D(n120), .CP(n288), .CDN(n285), .Q(
        led_reg[18]) );
  DFCNQD1BWP12T30P140 led_reg_reg_23_ ( .D(n115), .CP(n286), .CDN(n285), .Q(
        led_reg[23]) );
  DFCNQD1BWP12T30P140 count_reg_reg_12_ ( .D(count_next[12]), .CP(n288), .CDN(
        n283), .Q(count_reg[12]) );
  DFCNQD1BWP12T30P140 count_reg_reg_17_ ( .D(count_next[17]), .CP(n288), .CDN(
        rst), .Q(count_reg[17]) );
  DFCNQD1BWP12T30P140 state_reg_reg_7_ ( .D(state_reg[7]), .CP(clk), .CDN(rst), 
        .Q(state_reg[7]) );
  DFCNQD1BWP12T30P140 e_bit_reg_0_ ( .D(ir), .CP(n286), .CDN(rst), .Q(e_bit[0]) );
  NR2D0BWP12T30P140 U178 ( .A1(state_reg[2]), .A2(state_reg[3]), .ZN(n180) );
  NR2D0BWP12T30P140 U179 ( .A1(state_reg[6]), .A2(state_reg[5]), .ZN(n148) );
  NR2D0BWP12T30P140 U180 ( .A1(state_reg[4]), .A2(state_reg[8]), .ZN(n195) );
  ND2D0BWP12T30P140 U181 ( .A1(n148), .A2(n195), .ZN(n181) );
  NR2D0BWP12T30P140 U182 ( .A1(state_reg[0]), .A2(n181), .ZN(n155) );
  ND3D0BWP12T30P140 U183 ( .A1(n180), .A2(state_reg[1]), .A3(n155), .ZN(n197)
         );
  INVD0BWP12T30P140 U184 ( .I(n197), .ZN(n246) );
  NR2D0BWP12T30P140 U185 ( .A1(count_reg[7]), .A2(count_reg[8]), .ZN(n151) );
  OR4D0BWP12T30P140 U186 ( .A1(count_reg[0]), .A2(count_reg[1]), .A3(
        count_reg[2]), .A4(count_reg[3]), .Z(n156) );
  NR4D0BWP12T30P140 U187 ( .A1(count_reg[5]), .A2(count_reg[4]), .A3(
        count_reg[6]), .A4(n156), .ZN(n150) );
  INVD0BWP12T30P140 U188 ( .I(count_reg[9]), .ZN(n149) );
  INVD0BWP12T30P140 U189 ( .I(count_reg[10]), .ZN(n214) );
  AOI211D0BWP12T30P140 U190 ( .A1(n151), .A2(n150), .B(n149), .C(n214), .ZN(
        n152) );
  AOI221D0BWP12T30P140 U191 ( .A1(count_reg[11]), .A2(count_reg[12]), .B1(n152), .B2(count_reg[12]), .C(count_reg[13]), .ZN(n153) );
  INVD0BWP12T30P140 U192 ( .I(count_reg[15]), .ZN(n194) );
  INVD0BWP12T30P140 U193 ( .I(count_reg[14]), .ZN(n225) );
  INVD0BWP12T30P140 U194 ( .I(count_reg[16]), .ZN(n215) );
  OAI31D0BWP12T30P140 U195 ( .A1(n153), .A2(n194), .A3(n225), .B(n215), .ZN(
        n154) );
  AOI31D0BWP12T30P140 U196 ( .A1(count_reg[18]), .A2(count_reg[17]), .A3(n154), 
        .B(count_reg[19]), .ZN(n249) );
  INVD0BWP12T30P140 U197 ( .I(state_reg[3]), .ZN(n242) );
  INVD0BWP12T30P140 U198 ( .I(state_reg[1]), .ZN(n230) );
  AN2D0BWP12T30P140 U199 ( .A1(n155), .A2(n230), .Z(n182) );
  ND3D0BWP12T30P140 U200 ( .A1(n242), .A2(n182), .A3(state_reg[2]), .ZN(n236)
         );
  AOI21D0BWP12T30P140 U201 ( .A1(count_reg[4]), .A2(n156), .B(count_reg[5]), 
        .ZN(n188) );
  NR3D0BWP12T30P140 U202 ( .A1(count_reg[9]), .A2(count_reg[7]), .A3(
        count_reg[8]), .ZN(n189) );
  INVD0BWP12T30P140 U203 ( .I(count_reg[6]), .ZN(n206) );
  AOI221D0BWP12T30P140 U204 ( .A1(n188), .A2(n189), .B1(n206), .B2(n189), .C(
        n214), .ZN(n157) );
  OA211D0BWP12T30P140 U205 ( .A1(count_reg[11]), .A2(n157), .B(count_reg[12]), 
        .C(count_reg[13]), .Z(n158) );
  OAI31D0BWP12T30P140 U206 ( .A1(count_reg[14]), .A2(count_reg[15]), .A3(n158), 
        .B(count_reg[17]), .ZN(n159) );
  INVD0BWP12T30P140 U207 ( .I(count_reg[19]), .ZN(n271) );
  INVD0BWP12T30P140 U208 ( .I(count_reg[18]), .ZN(n254) );
  OAI211D0BWP12T30P140 U209 ( .A1(n215), .A2(n159), .B(n271), .C(n254), .ZN(
        n240) );
  INVD0BWP12T30P140 U210 ( .I(state_reg[6]), .ZN(n228) );
  INVD0BWP12T30P140 U211 ( .I(state_reg[5]), .ZN(n223) );
  NR2D0BWP12T30P140 U212 ( .A1(state_reg[1]), .A2(state_reg[0]), .ZN(n160) );
  AN2D0BWP12T30P140 U213 ( .A1(n180), .A2(n160), .Z(n196) );
  ND3D0BWP12T30P140 U214 ( .A1(n228), .A2(n223), .A3(n196), .ZN(n187) );
  INVD0BWP12T30P140 U215 ( .I(state_reg[8]), .ZN(n252) );
  OR3D0BWP12T30P140 U216 ( .A1(n187), .A2(state_reg[4]), .A3(n252), .Z(n257)
         );
  OAI22D0BWP12T30P140 U217 ( .A1(led_reg[10]), .A2(led_reg[2]), .B1(
        led_reg[11]), .B2(led_reg[3]), .ZN(n161) );
  AOI221D0BWP12T30P140 U218 ( .A1(led_reg[10]), .A2(led_reg[2]), .B1(
        led_reg[3]), .B2(led_reg[11]), .C(n161), .ZN(n168) );
  OAI22D0BWP12T30P140 U219 ( .A1(led_reg[8]), .A2(led_reg[0]), .B1(led_reg[9]), 
        .B2(led_reg[1]), .ZN(n162) );
  AOI221D0BWP12T30P140 U220 ( .A1(led_reg[8]), .A2(led_reg[0]), .B1(led_reg[1]), .B2(led_reg[9]), .C(n162), .ZN(n167) );
  OAI22D0BWP12T30P140 U221 ( .A1(led_reg[14]), .A2(led_reg[6]), .B1(
        led_reg[15]), .B2(led_reg[7]), .ZN(n163) );
  AOI221D0BWP12T30P140 U222 ( .A1(led_reg[14]), .A2(led_reg[6]), .B1(
        led_reg[7]), .B2(led_reg[15]), .C(n163), .ZN(n166) );
  OAI22D0BWP12T30P140 U223 ( .A1(led_reg[12]), .A2(led_reg[4]), .B1(
        led_reg[13]), .B2(led_reg[5]), .ZN(n164) );
  AOI221D0BWP12T30P140 U224 ( .A1(led_reg[12]), .A2(led_reg[4]), .B1(
        led_reg[5]), .B2(led_reg[13]), .C(n164), .ZN(n165) );
  ND4D0BWP12T30P140 U225 ( .A1(n168), .A2(n167), .A3(n166), .A4(n165), .ZN(
        n178) );
  OAI22D0BWP12T30P140 U226 ( .A1(led_reg[26]), .A2(led_reg[18]), .B1(
        led_reg[27]), .B2(led_reg[19]), .ZN(n169) );
  AOI221D0BWP12T30P140 U227 ( .A1(led_reg[26]), .A2(led_reg[18]), .B1(
        led_reg[19]), .B2(led_reg[27]), .C(n169), .ZN(n176) );
  OAI22D0BWP12T30P140 U228 ( .A1(led_reg[24]), .A2(led_reg[16]), .B1(
        led_reg[25]), .B2(led_reg[17]), .ZN(n170) );
  AOI221D0BWP12T30P140 U229 ( .A1(led_reg[24]), .A2(led_reg[16]), .B1(
        led_reg[17]), .B2(led_reg[25]), .C(n170), .ZN(n175) );
  OAI22D0BWP12T30P140 U230 ( .A1(led_reg[30]), .A2(led_reg[22]), .B1(
        led_reg[31]), .B2(led_reg[23]), .ZN(n171) );
  AOI221D0BWP12T30P140 U231 ( .A1(led_reg[30]), .A2(led_reg[22]), .B1(
        led_reg[23]), .B2(led_reg[31]), .C(n171), .ZN(n174) );
  OAI22D0BWP12T30P140 U232 ( .A1(led_reg[28]), .A2(led_reg[20]), .B1(
        led_reg[29]), .B2(led_reg[21]), .ZN(n172) );
  AOI221D0BWP12T30P140 U233 ( .A1(led_reg[28]), .A2(led_reg[20]), .B1(
        led_reg[21]), .B2(led_reg[29]), .C(n172), .ZN(n173) );
  ND4D0BWP12T30P140 U234 ( .A1(n176), .A2(n175), .A3(n174), .A4(n173), .ZN(
        n177) );
  NR2D0BWP12T30P140 U235 ( .A1(n178), .A2(n177), .ZN(n258) );
  IND2D1BWP12T30P140 U236 ( .A1(n257), .B1(n258), .ZN(n266) );
  OAI21D0BWP12T30P140 U237 ( .A1(n236), .A2(n240), .B(n266), .ZN(n179) );
  AOI21D0BWP12T30P140 U238 ( .A1(n246), .A2(n249), .B(n179), .ZN(n202) );
  INR2D1BWP12T30P140 U239 ( .A1(e_bit[0]), .B1(e_bit[1]), .ZN(n183) );
  INR2D1BWP12T30P140 U240 ( .A1(e_bit[1]), .B1(e_bit[0]), .ZN(n185) );
  OAI22D0BWP12T30P140 U241 ( .A1(n183), .A2(n197), .B1(n185), .B2(n236), .ZN(
        n203) );
  ND4D0BWP12T30P140 U242 ( .A1(state_reg[6]), .A2(n196), .A3(n195), .A4(n223), 
        .ZN(n237) );
  IND4D1BWP12T30P140 U243 ( .A1(n181), .B1(n180), .B2(state_reg[0]), .B3(n230), 
        .ZN(n229) );
  ND2D0BWP12T30P140 U244 ( .A1(n237), .A2(n229), .ZN(n199) );
  INVD0BWP12T30P140 U245 ( .I(n199), .ZN(n184) );
  INVD0BWP12T30P140 U246 ( .I(state_reg[2]), .ZN(n247) );
  ND3D0BWP12T30P140 U247 ( .A1(n247), .A2(n182), .A3(state_reg[3]), .ZN(n234)
         );
  OAI22D0BWP12T30P140 U248 ( .A1(n185), .A2(n184), .B1(n183), .B2(n234), .ZN(
        n186) );
  NR3D0BWP12T30P140 U249 ( .A1(state_reg[7]), .A2(n203), .A3(n186), .ZN(n245)
         );
  INVD0BWP12T30P140 U250 ( .I(n245), .ZN(n243) );
  INVD0BWP12T30P140 U251 ( .I(state_reg[4]), .ZN(n235) );
  NR3D0BWP12T30P140 U252 ( .A1(state_reg[8]), .A2(n187), .A3(n235), .ZN(n222)
         );
  INVD0BWP12T30P140 U253 ( .I(n222), .ZN(n200) );
  ND3D0BWP12T30P140 U254 ( .A1(n206), .A2(n189), .A3(n188), .ZN(n190) );
  AO211D0BWP12T30P140 U255 ( .A1(count_reg[10]), .A2(n190), .B(count_reg[12]), 
        .C(count_reg[11]), .Z(n191) );
  AOI21D0BWP12T30P140 U256 ( .A1(count_reg[13]), .A2(n191), .B(count_reg[14]), 
        .ZN(n193) );
  NR4D0BWP12T30P140 U257 ( .A1(count_reg[19]), .A2(count_reg[16]), .A3(
        count_reg[18]), .A4(count_reg[17]), .ZN(n192) );
  OAI21D0BWP12T30P140 U258 ( .A1(n194), .A2(n193), .B(n192), .ZN(n221) );
  NR2D0BWP12T30P140 U259 ( .A1(n200), .A2(n221), .ZN(n204) );
  ND4D0BWP12T30P140 U260 ( .A1(state_reg[5]), .A2(n196), .A3(n195), .A4(n228), 
        .ZN(n238) );
  ND4D0BWP12T30P140 U261 ( .A1(n197), .A2(n236), .A3(n234), .A4(n238), .ZN(
        n198) );
  NR2D0BWP12T30P140 U262 ( .A1(n199), .A2(n198), .ZN(n232) );
  ND3D0BWP12T30P140 U263 ( .A1(n257), .A2(n200), .A3(n232), .ZN(n220) );
  IND2D1BWP12T30P140 U264 ( .A1(n204), .B1(n220), .ZN(n255) );
  OAI21D0BWP12T30P140 U265 ( .A1(n255), .A2(n243), .B(state_reg[0]), .ZN(n201)
         );
  OAI21D0BWP12T30P140 U266 ( .A1(n202), .A2(n243), .B(n201), .ZN(n145) );
  INVD0BWP12T30P140 U267 ( .I(count_reg[2]), .ZN(n205) );
  ND2D0BWP12T30P140 U268 ( .A1(count_reg[0]), .A2(count_reg[1]), .ZN(n210) );
  NR2D0BWP12T30P140 U269 ( .A1(n205), .A2(n210), .ZN(n209) );
  INVD0BWP12T30P140 U270 ( .I(state_reg[7]), .ZN(n231) );
  OAI21D0BWP12T30P140 U271 ( .A1(n204), .A2(n203), .B(n231), .ZN(n273) );
  AOI211D0BWP12T30P140 U272 ( .A1(n205), .A2(n210), .B(n209), .C(n273), .ZN(
        count_next[2]) );
  INVD0BWP12T30P140 U273 ( .I(count_reg[4]), .ZN(n212) );
  ND2D0BWP12T30P140 U274 ( .A1(count_reg[3]), .A2(n209), .ZN(n211) );
  NR2D0BWP12T30P140 U275 ( .A1(n212), .A2(n211), .ZN(n217) );
  ND2D0BWP12T30P140 U276 ( .A1(count_reg[5]), .A2(n217), .ZN(n216) );
  NR2D0BWP12T30P140 U277 ( .A1(n206), .A2(n216), .ZN(n219) );
  AOI211D0BWP12T30P140 U278 ( .A1(n206), .A2(n216), .B(n219), .C(n273), .ZN(
        count_next[6]) );
  NR2D0BWP12T30P140 U279 ( .A1(state_reg[7]), .A2(n266), .ZN(n207) );
  INVD0BWP12T30P140 U280 ( .I(n207), .ZN(n208) );
  OA22D0BWP12T30P140 U281 ( .A1(n208), .A2(led_reg[23]), .B1(led[7]), .B2(n207), .Z(led_tmp[7]) );
  OA22D0BWP12T30P140 U282 ( .A1(n208), .A2(led_reg[22]), .B1(led[6]), .B2(n207), .Z(led_tmp[6]) );
  OA22D0BWP12T30P140 U283 ( .A1(n208), .A2(led_reg[21]), .B1(led[5]), .B2(n207), .Z(led_tmp[5]) );
  OA22D0BWP12T30P140 U284 ( .A1(n208), .A2(led_reg[20]), .B1(led[4]), .B2(n207), .Z(led_tmp[4]) );
  OA22D0BWP12T30P140 U285 ( .A1(n208), .A2(led_reg[19]), .B1(led[3]), .B2(n207), .Z(led_tmp[3]) );
  OA22D0BWP12T30P140 U286 ( .A1(n208), .A2(led_reg[18]), .B1(led[2]), .B2(n207), .Z(led_tmp[2]) );
  OA22D0BWP12T30P140 U287 ( .A1(n208), .A2(led_reg[17]), .B1(led[1]), .B2(n207), .Z(led_tmp[1]) );
  OA22D0BWP12T30P140 U288 ( .A1(n208), .A2(led_reg[16]), .B1(led[0]), .B2(n207), .Z(led_tmp[0]) );
  INVD0BWP12T30P140 U289 ( .I(n273), .ZN(n279) );
  OA211D0BWP12T30P140 U290 ( .A1(count_reg[3]), .A2(n209), .B(n279), .C(n211), 
        .Z(count_next[3]) );
  OA211D0BWP12T30P140 U291 ( .A1(count_reg[0]), .A2(count_reg[1]), .B(n279), 
        .C(n210), .Z(count_next[1]) );
  AOI211D0BWP12T30P140 U292 ( .A1(n212), .A2(n211), .B(n217), .C(n273), .ZN(
        count_next[4]) );
  INVD0BWP12T30P140 U293 ( .I(count_reg[8]), .ZN(n213) );
  ND2D0BWP12T30P140 U294 ( .A1(count_reg[7]), .A2(n219), .ZN(n218) );
  NR2D0BWP12T30P140 U295 ( .A1(n213), .A2(n218), .ZN(n262) );
  AOI211D0BWP12T30P140 U296 ( .A1(n213), .A2(n218), .B(n262), .C(n273), .ZN(
        count_next[8]) );
  ND2D0BWP12T30P140 U297 ( .A1(count_reg[9]), .A2(n262), .ZN(n261) );
  NR2D0BWP12T30P140 U298 ( .A1(n214), .A2(n261), .ZN(n280) );
  AOI211D0BWP12T30P140 U299 ( .A1(n214), .A2(n261), .B(n280), .C(n273), .ZN(
        count_next[10]) );
  INVD0BWP12T30P140 U300 ( .I(count_reg[12]), .ZN(n275) );
  ND2D0BWP12T30P140 U301 ( .A1(count_reg[11]), .A2(n280), .ZN(n278) );
  NR2D0BWP12T30P140 U302 ( .A1(n275), .A2(n278), .ZN(n274) );
  ND2D0BWP12T30P140 U303 ( .A1(count_reg[13]), .A2(n274), .ZN(n269) );
  NR2D0BWP12T30P140 U304 ( .A1(n225), .A2(n269), .ZN(n260) );
  ND2D0BWP12T30P140 U305 ( .A1(count_reg[15]), .A2(n260), .ZN(n259) );
  NR2D0BWP12T30P140 U306 ( .A1(n215), .A2(n259), .ZN(n268) );
  AOI211D0BWP12T30P140 U307 ( .A1(n215), .A2(n259), .B(n268), .C(n273), .ZN(
        count_next[16]) );
  NR2D0BWP12T30P140 U308 ( .A1(count_reg[0]), .A2(n273), .ZN(count_next[0]) );
  OA211D0BWP12T30P140 U309 ( .A1(count_reg[5]), .A2(n217), .B(n279), .C(n216), 
        .Z(count_next[5]) );
  OA211D0BWP12T30P140 U310 ( .A1(count_reg[7]), .A2(n219), .B(n279), .C(n218), 
        .Z(count_next[7]) );
  OAI21D0BWP12T30P140 U311 ( .A1(n258), .A2(n257), .B(n245), .ZN(n226) );
  INR2D1BWP12T30P140 U312 ( .A1(n220), .B1(n226), .ZN(n224) );
  ND2D0BWP12T30P140 U313 ( .A1(n222), .A2(n221), .ZN(n233) );
  OAI22D0BWP12T30P140 U314 ( .A1(n224), .A2(n223), .B1(n243), .B2(n233), .ZN(
        n140) );
  AOI211D0BWP12T30P140 U315 ( .A1(n225), .A2(n269), .B(n260), .C(n273), .ZN(
        count_next[14]) );
  NR2D0BWP12T30P140 U316 ( .A1(n255), .A2(n226), .ZN(n253) );
  IND2D1BWP12T30P140 U317 ( .A1(n238), .B1(n245), .ZN(n250) );
  INVD0BWP12T30P140 U318 ( .I(c_bit_reg), .ZN(n251) );
  ND2D0BWP12T30P140 U319 ( .A1(led_reg[31]), .A2(n251), .ZN(n227) );
  OAI22D0BWP12T30P140 U320 ( .A1(n253), .A2(n228), .B1(n250), .B2(n227), .ZN(
        n139) );
  OAI22D0BWP12T30P140 U321 ( .A1(n253), .A2(n230), .B1(n229), .B2(n243), .ZN(
        n144) );
  ND2D0BWP12T30P140 U322 ( .A1(n232), .A2(n231), .ZN(n265) );
  NR2D0BWP12T30P140 U323 ( .A1(n265), .A2(n233), .ZN(n277) );
  INVD0BWP12T30P140 U324 ( .I(n277), .ZN(n263) );
  AO22D0BWP12T30P140 U325 ( .A1(led_reg[0]), .A2(n277), .B1(c_bit_reg), .B2(
        n263), .Z(n147) );
  OAI22D0BWP12T30P140 U326 ( .A1(n253), .A2(n235), .B1(n234), .B2(n243), .ZN(
        n141) );
  INVD0BWP12T30P140 U327 ( .I(n236), .ZN(n241) );
  OAI31D0BWP12T30P140 U328 ( .A1(led_reg[31]), .A2(c_bit_reg), .A3(n238), .B(
        n237), .ZN(n239) );
  AOI21D0BWP12T30P140 U329 ( .A1(n241), .A2(n240), .B(n239), .ZN(n244) );
  OAI22D0BWP12T30P140 U330 ( .A1(n244), .A2(n243), .B1(n253), .B2(n242), .ZN(
        n142) );
  ND2D0BWP12T30P140 U331 ( .A1(n246), .A2(n245), .ZN(n248) );
  OAI22D0BWP12T30P140 U332 ( .A1(n249), .A2(n248), .B1(n253), .B2(n247), .ZN(
        n143) );
  OAI22D0BWP12T30P140 U333 ( .A1(n253), .A2(n252), .B1(n251), .B2(n250), .ZN(
        n146) );
  ND2D0BWP12T30P140 U334 ( .A1(count_reg[17]), .A2(n268), .ZN(n267) );
  NR2D0BWP12T30P140 U335 ( .A1(n254), .A2(n267), .ZN(n272) );
  AOI211D0BWP12T30P140 U336 ( .A1(n254), .A2(n267), .B(n272), .C(n273), .ZN(
        count_next[18]) );
  NR2D0BWP12T30P140 U337 ( .A1(n255), .A2(n265), .ZN(n256) );
  OAI21D0BWP12T30P140 U338 ( .A1(n258), .A2(n257), .B(n256), .ZN(n282) );
  CKBD0BWP12T30P140 U339 ( .I(n282), .Z(n276) );
  CKBD0BWP12T30P140 U340 ( .I(n277), .Z(n281) );
  AO22D0BWP12T30P140 U341 ( .A1(led_reg[24]), .A2(n276), .B1(led_reg[25]), 
        .B2(n281), .Z(n114) );
  AO22D0BWP12T30P140 U342 ( .A1(led_reg[8]), .A2(n282), .B1(led_reg[9]), .B2(
        n281), .Z(n130) );
  OA211D0BWP12T30P140 U343 ( .A1(count_reg[15]), .A2(n260), .B(n279), .C(n259), 
        .Z(count_next[15]) );
  AO22D0BWP12T30P140 U344 ( .A1(led_reg[0]), .A2(n276), .B1(led_reg[1]), .B2(
        n277), .Z(n138) );
  AO22D0BWP12T30P140 U345 ( .A1(led_reg[30]), .A2(n282), .B1(led_reg[31]), 
        .B2(n277), .Z(n108) );
  AO22D0BWP12T30P140 U346 ( .A1(led_reg[28]), .A2(n276), .B1(led_reg[29]), 
        .B2(n277), .Z(n110) );
  AO22D0BWP12T30P140 U347 ( .A1(led_reg[26]), .A2(n276), .B1(led_reg[27]), 
        .B2(n281), .Z(n112) );
  AO22D0BWP12T30P140 U348 ( .A1(led_reg[14]), .A2(n282), .B1(led_reg[15]), 
        .B2(n281), .Z(n124) );
  AO22D0BWP12T30P140 U349 ( .A1(led_reg[12]), .A2(n276), .B1(led_reg[13]), 
        .B2(n281), .Z(n126) );
  AO22D0BWP12T30P140 U350 ( .A1(led_reg[10]), .A2(n282), .B1(led_reg[11]), 
        .B2(n281), .Z(n128) );
  AO22D0BWP12T30P140 U351 ( .A1(led_reg[5]), .A2(n276), .B1(led_reg[6]), .B2(
        n281), .Z(n133) );
  AO22D0BWP12T30P140 U352 ( .A1(led_reg[3]), .A2(n276), .B1(led_reg[4]), .B2(
        n281), .Z(n135) );
  AO22D0BWP12T30P140 U353 ( .A1(led_reg[1]), .A2(n282), .B1(led_reg[2]), .B2(
        n281), .Z(n137) );
  AO22D0BWP12T30P140 U354 ( .A1(led_reg[6]), .A2(n276), .B1(led_reg[7]), .B2(
        n277), .Z(n132) );
  AO22D0BWP12T30P140 U355 ( .A1(led_reg[4]), .A2(n276), .B1(led_reg[5]), .B2(
        n281), .Z(n134) );
  AO22D0BWP12T30P140 U356 ( .A1(led_reg[2]), .A2(n276), .B1(led_reg[3]), .B2(
        n281), .Z(n136) );
  AO22D0BWP12T30P140 U357 ( .A1(led_reg[8]), .A2(n277), .B1(led_reg[7]), .B2(
        n276), .Z(n131) );
  OA211D0BWP12T30P140 U358 ( .A1(count_reg[9]), .A2(n262), .B(n279), .C(n261), 
        .Z(count_next[9]) );
  AO22D0BWP12T30P140 U359 ( .A1(led_reg[29]), .A2(n282), .B1(led_reg[30]), 
        .B2(n281), .Z(n109) );
  AO22D0BWP12T30P140 U360 ( .A1(led_reg[27]), .A2(n282), .B1(led_reg[28]), 
        .B2(n281), .Z(n111) );
  AO22D0BWP12T30P140 U361 ( .A1(led_reg[25]), .A2(n282), .B1(led_reg[26]), 
        .B2(n277), .Z(n113) );
  AOI22D0BWP12T30P140 U362 ( .A1(led_reg[31]), .A2(n263), .B1(n281), .B2(ir), 
        .ZN(n264) );
  OAI21D0BWP12T30P140 U363 ( .A1(n266), .A2(n265), .B(n264), .ZN(n107) );
  AO22D0BWP12T30P140 U364 ( .A1(led_reg[17]), .A2(n282), .B1(led_reg[18]), 
        .B2(n281), .Z(n121) );
  OA211D0BWP12T30P140 U365 ( .A1(count_reg[17]), .A2(n268), .B(n279), .C(n267), 
        .Z(count_next[17]) );
  AO22D0BWP12T30P140 U366 ( .A1(led_reg[13]), .A2(n276), .B1(led_reg[14]), 
        .B2(n277), .Z(n125) );
  AO22D0BWP12T30P140 U367 ( .A1(led_reg[18]), .A2(n282), .B1(led_reg[19]), 
        .B2(n277), .Z(n120) );
  OA211D0BWP12T30P140 U368 ( .A1(count_reg[13]), .A2(n274), .B(n279), .C(n269), 
        .Z(count_next[13]) );
  INVD0BWP12T30P140 U369 ( .I(n272), .ZN(n270) );
  AOI221D0BWP12T30P140 U370 ( .A1(count_reg[19]), .A2(n272), .B1(n271), .B2(
        n270), .C(n273), .ZN(count_next[19]) );
  AOI211D0BWP12T30P140 U371 ( .A1(n275), .A2(n278), .B(n274), .C(n273), .ZN(
        count_next[12]) );
  AO22D0BWP12T30P140 U372 ( .A1(led_reg[11]), .A2(n276), .B1(led_reg[12]), 
        .B2(n277), .Z(n127) );
  AO22D0BWP12T30P140 U373 ( .A1(led_reg[24]), .A2(n281), .B1(led_reg[23]), 
        .B2(n276), .Z(n115) );
  AO22D0BWP12T30P140 U374 ( .A1(led_reg[20]), .A2(n282), .B1(led_reg[21]), 
        .B2(n277), .Z(n118) );
  AO22D0BWP12T30P140 U375 ( .A1(led_reg[9]), .A2(n282), .B1(led_reg[10]), .B2(
        n277), .Z(n129) );
  AO22D0BWP12T30P140 U376 ( .A1(led_reg[16]), .A2(n277), .B1(led_reg[15]), 
        .B2(n276), .Z(n123) );
  AO22D0BWP12T30P140 U377 ( .A1(led_reg[19]), .A2(n282), .B1(led_reg[20]), 
        .B2(n281), .Z(n119) );
  AO22D0BWP12T30P140 U378 ( .A1(led_reg[16]), .A2(n276), .B1(led_reg[17]), 
        .B2(n277), .Z(n122) );
  AO22D0BWP12T30P140 U379 ( .A1(led_reg[22]), .A2(n282), .B1(led_reg[23]), 
        .B2(n277), .Z(n116) );
  OA211D0BWP12T30P140 U380 ( .A1(count_reg[11]), .A2(n280), .B(n279), .C(n278), 
        .Z(count_next[11]) );
  AO22D0BWP12T30P140 U381 ( .A1(led_reg[21]), .A2(n282), .B1(led_reg[22]), 
        .B2(n281), .Z(n117) );
  CKBD0BWP12T30P140 U382 ( .I(clk), .Z(n286) );
  CKBD0BWP12T30P140 U383 ( .I(clk), .Z(n288) );
  CKBD0BWP12T30P140 U384 ( .I(clk), .Z(n287) );
  CKBD0BWP12T30P140 U385 ( .I(rst), .Z(n285) );
  CKBD0BWP12T30P140 U386 ( .I(rst), .Z(n283) );
  CKBD0BWP12T30P140 U387 ( .I(rst), .Z(n284) );
endmodule

