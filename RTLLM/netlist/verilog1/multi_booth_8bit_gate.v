/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:38:56 2026
/////////////////////////////////////////////////////////////


module multi_booth_8bit ( p, rdy, clk, reset, a, b );
  output [15:0] p;
  input [7:0] a;
  input [7:0] b;
  input clk, reset;
  output rdy;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202;
  wire   [15:0] multiplicand;
  wire   [4:0] ctr;
  wire   [15:0] multiplier;

  DFCSNQD1BWP12T30P140 multiplicand_reg_0_ ( .D(n93), .CP(clk), .CDN(n74), 
        .SDN(n75), .Q(multiplicand[0]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_1_ ( .D(n54), .CP(clk), .CDN(n72), 
        .SDN(n73), .Q(multiplicand[1]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_2_ ( .D(n53), .CP(clk), .CDN(n70), 
        .SDN(n71), .Q(multiplicand[2]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_3_ ( .D(n52), .CP(clk), .CDN(n68), 
        .SDN(n69), .Q(multiplicand[3]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_4_ ( .D(n51), .CP(clk), .CDN(n66), 
        .SDN(n67), .Q(multiplicand[4]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_5_ ( .D(n50), .CP(clk), .CDN(n64), 
        .SDN(n65), .Q(multiplicand[5]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_6_ ( .D(n49), .CP(clk), .CDN(n62), 
        .SDN(n63), .Q(multiplicand[6]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_7_ ( .D(n48), .CP(clk), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[7]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_8_ ( .D(n47), .CP(n202), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[8]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_9_ ( .D(n46), .CP(clk), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[9]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_10_ ( .D(n45), .CP(n202), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[10]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_11_ ( .D(n44), .CP(clk), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[11]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_12_ ( .D(n43), .CP(n202), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[12]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_13_ ( .D(n42), .CP(clk), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[13]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_14_ ( .D(n41), .CP(n202), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[14]) );
  DFCSNQD1BWP12T30P140 multiplicand_reg_15_ ( .D(n40), .CP(clk), .CDN(n60), 
        .SDN(n61), .Q(multiplicand[15]) );
  LHQD2BWP12T30P140 multiplier_reg_5_ ( .E(reset), .D(a[5]), .Q(multiplier[5])
         );
  LHQD2BWP12T30P140 multiplier_reg_4_ ( .E(reset), .D(a[4]), .Q(multiplier[4])
         );
  LHQD2BWP12T30P140 multiplier_reg_13_ ( .E(n201), .D(a[7]), .Q(multiplier[13]) );
  LHQD2BWP12T30P140 multiplier_reg_3_ ( .E(reset), .D(a[3]), .Q(multiplier[3])
         );
  LHQD2BWP12T30P140 multiplier_reg_2_ ( .E(reset), .D(a[2]), .Q(multiplier[2])
         );
  LHQD2BWP12T30P140 multiplier_reg_1_ ( .E(reset), .D(a[1]), .Q(multiplier[1])
         );
  LHQD2BWP12T30P140 multiplier_reg_12_ ( .E(n201), .D(a[7]), .Q(multiplier[12]) );
  LHQD2BWP12T30P140 multiplier_reg_15_ ( .E(reset), .D(a[7]), .Q(
        multiplier[15]) );
  LHQD2BWP12T30P140 multiplier_reg_14_ ( .E(n201), .D(a[7]), .Q(multiplier[14]) );
  LHQD2BWP12T30P140 multiplier_reg_11_ ( .E(n201), .D(a[7]), .Q(multiplier[11]) );
  LHQD2BWP12T30P140 multiplier_reg_10_ ( .E(n201), .D(a[7]), .Q(multiplier[10]) );
  LHQD2BWP12T30P140 multiplier_reg_9_ ( .E(n201), .D(a[7]), .Q(multiplier[9])
         );
  LHQD2BWP12T30P140 multiplier_reg_8_ ( .E(n201), .D(a[7]), .Q(multiplier[8])
         );
  LHQD2BWP12T30P140 multiplier_reg_7_ ( .E(n201), .D(a[7]), .Q(multiplier[7])
         );
  DFCNQD1BWP12T30P140 rdy_reg ( .D(n76), .CP(clk), .CDN(n200), .Q(rdy) );
  DFCNQD1BWP12T30P140 p_reg_15_ ( .D(n77), .CP(n202), .CDN(n200), .Q(p[15]) );
  DFCNQD1BWP12T30P140 p_reg_14_ ( .D(n78), .CP(n202), .CDN(n200), .Q(p[14]) );
  DFCNQD1BWP12T30P140 p_reg_13_ ( .D(n79), .CP(n202), .CDN(n200), .Q(p[13]) );
  DFCNQD1BWP12T30P140 p_reg_11_ ( .D(n81), .CP(n202), .CDN(n199), .Q(p[11]) );
  DFCNQD1BWP12T30P140 p_reg_9_ ( .D(n83), .CP(n202), .CDN(n199), .Q(p[9]) );
  DFCNQD1BWP12T30P140 p_reg_5_ ( .D(n87), .CP(n202), .CDN(n199), .Q(p[5]) );
  DFCNQD1BWP12T30P140 p_reg_7_ ( .D(n85), .CP(n202), .CDN(n199), .Q(p[7]) );
  DFCNQD1BWP12T30P140 p_reg_3_ ( .D(n89), .CP(clk), .CDN(n199), .Q(p[3]) );
  DFCNQD1BWP12T30P140 ctr_reg_1_ ( .D(n56), .CP(n202), .CDN(n200), .Q(ctr[1])
         );
  DFCNQD1BWP12T30P140 p_reg_12_ ( .D(n80), .CP(n202), .CDN(n200), .Q(p[12]) );
  DFCNQD1BWP12T30P140 p_reg_10_ ( .D(n82), .CP(n202), .CDN(n199), .Q(p[10]) );
  DFCNQD1BWP12T30P140 p_reg_8_ ( .D(n84), .CP(n202), .CDN(n199), .Q(p[8]) );
  DFCNQD1BWP12T30P140 p_reg_6_ ( .D(n86), .CP(n202), .CDN(n199), .Q(p[6]) );
  DFCNQD1BWP12T30P140 p_reg_4_ ( .D(n88), .CP(clk), .CDN(n199), .Q(p[4]) );
  DFCNQD1BWP12T30P140 p_reg_2_ ( .D(n90), .CP(n202), .CDN(n199), .Q(p[2]) );
  DFCNQD1BWP12T30P140 p_reg_1_ ( .D(n91), .CP(clk), .CDN(n199), .Q(p[1]) );
  DFCNQD1BWP12T30P140 ctr_reg_2_ ( .D(n57), .CP(n202), .CDN(n200), .Q(ctr[2])
         );
  DFCNQD1BWP12T30P140 ctr_reg_3_ ( .D(n58), .CP(clk), .CDN(n200), .Q(ctr[3])
         );
  DFCNQD1BWP12T30P140 p_reg_0_ ( .D(n92), .CP(clk), .CDN(n199), .Q(p[0]) );
  DFCNQD1BWP12T30P140 ctr_reg_0_ ( .D(n55), .CP(n202), .CDN(n200), .Q(ctr[0])
         );
  DFCNQD1BWP12T30P140 ctr_reg_4_ ( .D(n59), .CP(n202), .CDN(n199), .Q(ctr[4])
         );
  LHQD1BWP12T30P140 multiplier_reg_0_ ( .E(n201), .D(a[0]), .Q(multiplier[0])
         );
  LHQD1BWP12T30P140 multiplier_reg_6_ ( .E(n201), .D(a[6]), .Q(multiplier[6])
         );
  INVD0BWP12T30P140 U97 ( .I(ctr[4]), .ZN(n95) );
  INVD0BWP12T30P140 U98 ( .I(ctr[4]), .ZN(n194) );
  INVD0BWP12T30P140 U99 ( .I(multiplicand[0]), .ZN(n118) );
  NR2D0BWP12T30P140 U100 ( .A1(n194), .A2(n118), .ZN(n93) );
  INVD0BWP12T30P140 U101 ( .I(multiplicand[4]), .ZN(n134) );
  INVD0BWP12T30P140 U102 ( .I(multiplicand[3]), .ZN(n132) );
  AOI22D0BWP12T30P140 U103 ( .A1(ctr[4]), .A2(n134), .B1(n132), .B2(n194), 
        .ZN(n51) );
  INVD0BWP12T30P140 U104 ( .I(multiplicand[2]), .ZN(n124) );
  AOI22D0BWP12T30P140 U105 ( .A1(ctr[4]), .A2(n132), .B1(n124), .B2(n194), 
        .ZN(n52) );
  INVD0BWP12T30P140 U106 ( .I(multiplicand[6]), .ZN(n144) );
  INVD0BWP12T30P140 U107 ( .I(multiplicand[5]), .ZN(n142) );
  AOI22D0BWP12T30P140 U108 ( .A1(ctr[4]), .A2(n144), .B1(n142), .B2(n194), 
        .ZN(n49) );
  INVD0BWP12T30P140 U109 ( .I(multiplicand[10]), .ZN(n164) );
  INVD0BWP12T30P140 U110 ( .I(multiplicand[9]), .ZN(n162) );
  AOI22D0BWP12T30P140 U111 ( .A1(ctr[4]), .A2(n164), .B1(n162), .B2(n194), 
        .ZN(n45) );
  INVD0BWP12T30P140 U112 ( .I(multiplicand[1]), .ZN(n115) );
  AOI22D0BWP12T30P140 U113 ( .A1(ctr[4]), .A2(n115), .B1(n118), .B2(n194), 
        .ZN(n54) );
  ND2D0BWP12T30P140 U114 ( .A1(ctr[0]), .A2(n194), .ZN(n116) );
  OA21D0BWP12T30P140 U115 ( .A1(ctr[0]), .A2(n95), .B(n116), .Z(n55) );
  INVD0BWP12T30P140 U116 ( .I(multiplicand[8]), .ZN(n154) );
  INVD0BWP12T30P140 U117 ( .I(multiplicand[7]), .ZN(n152) );
  AOI22D0BWP12T30P140 U118 ( .A1(ctr[4]), .A2(n154), .B1(n152), .B2(n194), 
        .ZN(n47) );
  INVD0BWP12T30P140 U119 ( .I(ctr[3]), .ZN(n196) );
  INVD0BWP12T30P140 U120 ( .I(ctr[1]), .ZN(n117) );
  INVD0BWP12T30P140 U121 ( .I(ctr[2]), .ZN(n198) );
  NR2D0BWP12T30P140 U122 ( .A1(n117), .A2(n198), .ZN(n193) );
  ND2D0BWP12T30P140 U123 ( .A1(ctr[0]), .A2(n193), .ZN(n96) );
  OAI21D0BWP12T30P140 U124 ( .A1(n196), .A2(n96), .B(n194), .ZN(n59) );
  INVD0BWP12T30P140 U125 ( .I(multiplicand[12]), .ZN(n174) );
  INVD0BWP12T30P140 U126 ( .I(multiplicand[11]), .ZN(n172) );
  AOI22D0BWP12T30P140 U127 ( .A1(ctr[4]), .A2(n174), .B1(n172), .B2(n194), 
        .ZN(n43) );
  AOI22D0BWP12T30P140 U128 ( .A1(ctr[4]), .A2(n152), .B1(n144), .B2(n194), 
        .ZN(n48) );
  AOI22D0BWP12T30P140 U129 ( .A1(ctr[4]), .A2(n142), .B1(n134), .B2(n194), 
        .ZN(n50) );
  INVD0BWP12T30P140 U130 ( .I(multiplicand[13]), .ZN(n182) );
  AOI22D0BWP12T30P140 U131 ( .A1(ctr[4]), .A2(n182), .B1(n174), .B2(n194), 
        .ZN(n42) );
  NR2D0BWP12T30P140 U132 ( .A1(ctr[1]), .A2(n198), .ZN(n109) );
  AOI21D0BWP12T30P140 U133 ( .A1(n109), .A2(multiplier[12]), .B(n196), .ZN(
        n102) );
  NR2D0BWP12T30P140 U134 ( .A1(ctr[2]), .A2(n117), .ZN(n106) );
  NR2D0BWP12T30P140 U135 ( .A1(ctr[1]), .A2(ctr[2]), .ZN(n105) );
  AOI22D0BWP12T30P140 U136 ( .A1(n106), .A2(multiplier[10]), .B1(n105), .B2(
        multiplier[8]), .ZN(n101) );
  ND2D0BWP12T30P140 U137 ( .A1(n193), .A2(multiplier[14]), .ZN(n100) );
  AOI22D0BWP12T30P140 U138 ( .A1(n106), .A2(multiplier[2]), .B1(n105), .B2(
        multiplier[0]), .ZN(n97) );
  IOA21D0BWP12T30P140 U139 ( .A1(n193), .A2(multiplier[6]), .B(n97), .ZN(n98)
         );
  AOI211D0BWP12T30P140 U140 ( .A1(n109), .A2(multiplier[4]), .B(ctr[3]), .C(
        n98), .ZN(n99) );
  AOI31D0BWP12T30P140 U141 ( .A1(n102), .A2(n101), .A3(n100), .B(n99), .ZN(
        n113) );
  AOI22D0BWP12T30P140 U142 ( .A1(n106), .A2(multiplier[11]), .B1(n105), .B2(
        multiplier[9]), .ZN(n103) );
  IOA21D0BWP12T30P140 U143 ( .A1(n193), .A2(multiplier[15]), .B(n103), .ZN(
        n104) );
  AOI211D0BWP12T30P140 U144 ( .A1(multiplier[13]), .A2(n109), .B(n196), .C(
        n104), .ZN(n111) );
  AOI22D0BWP12T30P140 U145 ( .A1(n106), .A2(multiplier[3]), .B1(n105), .B2(
        multiplier[1]), .ZN(n107) );
  IOA21D0BWP12T30P140 U146 ( .A1(n193), .A2(multiplier[7]), .B(n107), .ZN(n108) );
  AOI211D0BWP12T30P140 U147 ( .A1(n109), .A2(multiplier[5]), .B(ctr[3]), .C(
        n108), .ZN(n110) );
  OAI21D0BWP12T30P140 U148 ( .A1(n111), .A2(n110), .B(ctr[0]), .ZN(n112) );
  OAI211D0BWP12T30P140 U149 ( .A1(ctr[0]), .A2(n113), .B(n194), .C(n112), .ZN(
        n189) );
  OAI21D0BWP12T30P140 U150 ( .A1(n189), .A2(n118), .B(p[0]), .ZN(n114) );
  OAI31D0BWP12T30P140 U151 ( .A1(n189), .A2(p[0]), .A3(n118), .B(n114), .ZN(
        n92) );
  INVD0BWP12T30P140 U152 ( .I(multiplicand[14]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n186), .A2(n194), .B1(n194), .B2(
        multiplicand[15]), .ZN(n40) );
  AOI22D0BWP12T30P140 U154 ( .A1(ctr[4]), .A2(n186), .B1(n182), .B2(n194), 
        .ZN(n41) );
  AOI22D0BWP12T30P140 U155 ( .A1(ctr[4]), .A2(n162), .B1(n154), .B2(n194), 
        .ZN(n46) );
  AOI22D0BWP12T30P140 U156 ( .A1(ctr[4]), .A2(n124), .B1(n115), .B2(n194), 
        .ZN(n53) );
  AOI22D0BWP12T30P140 U157 ( .A1(ctr[4]), .A2(n172), .B1(n164), .B2(n194), 
        .ZN(n44) );
  NR2D0BWP12T30P140 U158 ( .A1(n117), .A2(n116), .ZN(n197) );
  AOI21D0BWP12T30P140 U159 ( .A1(n117), .A2(n116), .B(n197), .ZN(n56) );
  OR2D0BWP12T30P140 U160 ( .A1(rdy), .A2(ctr[4]), .Z(n76) );
  CKBD0BWP12T30P140 U161 ( .I(clk), .Z(n202) );
  CKBD0BWP12T30P140 U162 ( .I(reset), .Z(n201) );
  INVD0BWP12T30P140 U163 ( .I(n201), .ZN(n200) );
  OR2D0BWP12T30P140 U164 ( .A1(b[6]), .A2(n200), .Z(n62) );
  OR2D0BWP12T30P140 U165 ( .A1(b[5]), .A2(n200), .Z(n64) );
  OR2D0BWP12T30P140 U166 ( .A1(b[4]), .A2(n200), .Z(n66) );
  OR2D0BWP12T30P140 U167 ( .A1(b[3]), .A2(n200), .Z(n68) );
  OR2D0BWP12T30P140 U168 ( .A1(b[7]), .A2(n200), .Z(n60) );
  OR2D0BWP12T30P140 U169 ( .A1(b[2]), .A2(n200), .Z(n70) );
  OR2D0BWP12T30P140 U170 ( .A1(b[1]), .A2(n200), .Z(n72) );
  OR2D0BWP12T30P140 U171 ( .A1(b[0]), .A2(n200), .Z(n74) );
  INVD0BWP12T30P140 U172 ( .I(n201), .ZN(n199) );
  ND2D0BWP12T30P140 U173 ( .A1(reset), .A2(b[7]), .ZN(n61) );
  ND2D0BWP12T30P140 U174 ( .A1(reset), .A2(b[0]), .ZN(n75) );
  ND2D0BWP12T30P140 U175 ( .A1(reset), .A2(b[5]), .ZN(n65) );
  ND2D0BWP12T30P140 U176 ( .A1(reset), .A2(b[1]), .ZN(n73) );
  ND2D0BWP12T30P140 U177 ( .A1(reset), .A2(b[6]), .ZN(n63) );
  ND2D0BWP12T30P140 U178 ( .A1(reset), .A2(b[2]), .ZN(n71) );
  ND2D0BWP12T30P140 U179 ( .A1(reset), .A2(b[3]), .ZN(n69) );
  ND2D0BWP12T30P140 U180 ( .A1(reset), .A2(b[4]), .ZN(n67) );
  INVD0BWP12T30P140 U181 ( .I(p[1]), .ZN(n121) );
  INR2D1BWP12T30P140 U182 ( .A1(p[0]), .B1(n118), .ZN(n122) );
  AOI21D0BWP12T30P140 U183 ( .A1(multiplicand[0]), .A2(p[0]), .B(
        multiplicand[1]), .ZN(n119) );
  AOI211D0BWP12T30P140 U184 ( .A1(multiplicand[1]), .A2(n122), .B(n119), .C(
        n189), .ZN(n120) );
  MUX2ND0BWP12T30P140 U185 ( .I0(n121), .I1(p[1]), .S(n120), .ZN(n91) );
  INVD0BWP12T30P140 U186 ( .I(p[2]), .ZN(n126) );
  MAOI222D0BWP12T30P140 U187 ( .A(multiplicand[1]), .B(n122), .C(p[1]), .ZN(
        n123) );
  INVD0BWP12T30P140 U188 ( .I(n123), .ZN(n127) );
  AOI221D0BWP12T30P140 U189 ( .A1(multiplicand[2]), .A2(n127), .B1(n124), .B2(
        n123), .C(n189), .ZN(n125) );
  MUX2ND0BWP12T30P140 U190 ( .I0(n126), .I1(p[2]), .S(n125), .ZN(n90) );
  INVD0BWP12T30P140 U191 ( .I(p[3]), .ZN(n131) );
  MAOI222D0BWP12T30P140 U192 ( .A(n127), .B(multiplicand[2]), .C(p[2]), .ZN(
        n130) );
  INVD0BWP12T30P140 U193 ( .I(n130), .ZN(n128) );
  AOI221D0BWP12T30P140 U194 ( .A1(multiplicand[3]), .A2(n128), .B1(n132), .B2(
        n130), .C(n189), .ZN(n129) );
  MUX2ND0BWP12T30P140 U195 ( .I0(n131), .I1(p[3]), .S(n129), .ZN(n89) );
  INVD0BWP12T30P140 U196 ( .I(p[4]), .ZN(n136) );
  MAOI222D0BWP12T30P140 U197 ( .A(n132), .B(n131), .C(n130), .ZN(n137) );
  INVD0BWP12T30P140 U198 ( .I(n137), .ZN(n133) );
  AOI221D0BWP12T30P140 U199 ( .A1(multiplicand[4]), .A2(n137), .B1(n134), .B2(
        n133), .C(n189), .ZN(n135) );
  MUX2ND0BWP12T30P140 U200 ( .I0(n136), .I1(p[4]), .S(n135), .ZN(n88) );
  INVD0BWP12T30P140 U201 ( .I(p[5]), .ZN(n141) );
  MAOI222D0BWP12T30P140 U202 ( .A(n137), .B(multiplicand[4]), .C(p[4]), .ZN(
        n140) );
  INVD0BWP12T30P140 U203 ( .I(n140), .ZN(n138) );
  AOI221D0BWP12T30P140 U204 ( .A1(multiplicand[5]), .A2(n138), .B1(n142), .B2(
        n140), .C(n189), .ZN(n139) );
  MUX2ND0BWP12T30P140 U205 ( .I0(n141), .I1(p[5]), .S(n139), .ZN(n87) );
  INVD0BWP12T30P140 U206 ( .I(p[6]), .ZN(n146) );
  MAOI222D0BWP12T30P140 U207 ( .A(n142), .B(n141), .C(n140), .ZN(n147) );
  INVD0BWP12T30P140 U208 ( .I(n147), .ZN(n143) );
  AOI221D0BWP12T30P140 U209 ( .A1(multiplicand[6]), .A2(n147), .B1(n144), .B2(
        n143), .C(n189), .ZN(n145) );
  MUX2ND0BWP12T30P140 U210 ( .I0(n146), .I1(p[6]), .S(n145), .ZN(n86) );
  INVD0BWP12T30P140 U211 ( .I(p[7]), .ZN(n151) );
  MAOI222D0BWP12T30P140 U212 ( .A(n147), .B(multiplicand[6]), .C(p[6]), .ZN(
        n150) );
  INVD0BWP12T30P140 U213 ( .I(n150), .ZN(n148) );
  AOI221D0BWP12T30P140 U214 ( .A1(multiplicand[7]), .A2(n148), .B1(n152), .B2(
        n150), .C(n189), .ZN(n149) );
  MUX2ND0BWP12T30P140 U215 ( .I0(n151), .I1(p[7]), .S(n149), .ZN(n85) );
  INVD0BWP12T30P140 U216 ( .I(p[8]), .ZN(n156) );
  MAOI222D0BWP12T30P140 U217 ( .A(n152), .B(n151), .C(n150), .ZN(n157) );
  INVD0BWP12T30P140 U218 ( .I(n157), .ZN(n153) );
  AOI221D0BWP12T30P140 U219 ( .A1(multiplicand[8]), .A2(n157), .B1(n154), .B2(
        n153), .C(n189), .ZN(n155) );
  MUX2ND0BWP12T30P140 U220 ( .I0(n156), .I1(p[8]), .S(n155), .ZN(n84) );
  INVD0BWP12T30P140 U221 ( .I(p[9]), .ZN(n161) );
  MAOI222D0BWP12T30P140 U222 ( .A(n157), .B(multiplicand[8]), .C(p[8]), .ZN(
        n160) );
  INVD0BWP12T30P140 U223 ( .I(n160), .ZN(n158) );
  AOI221D0BWP12T30P140 U224 ( .A1(multiplicand[9]), .A2(n158), .B1(n162), .B2(
        n160), .C(n189), .ZN(n159) );
  MUX2ND0BWP12T30P140 U225 ( .I0(n161), .I1(p[9]), .S(n159), .ZN(n83) );
  INVD0BWP12T30P140 U226 ( .I(p[10]), .ZN(n166) );
  MAOI222D0BWP12T30P140 U227 ( .A(n162), .B(n161), .C(n160), .ZN(n167) );
  INVD0BWP12T30P140 U228 ( .I(n167), .ZN(n163) );
  AOI221D0BWP12T30P140 U229 ( .A1(multiplicand[10]), .A2(n167), .B1(n164), 
        .B2(n163), .C(n189), .ZN(n165) );
  MUX2ND0BWP12T30P140 U230 ( .I0(n166), .I1(p[10]), .S(n165), .ZN(n82) );
  INVD0BWP12T30P140 U231 ( .I(p[11]), .ZN(n171) );
  MAOI222D0BWP12T30P140 U232 ( .A(n167), .B(multiplicand[10]), .C(p[10]), .ZN(
        n170) );
  INVD0BWP12T30P140 U233 ( .I(n170), .ZN(n168) );
  AOI221D0BWP12T30P140 U234 ( .A1(multiplicand[11]), .A2(n168), .B1(n172), 
        .B2(n170), .C(n189), .ZN(n169) );
  MUX2ND0BWP12T30P140 U235 ( .I0(n171), .I1(p[11]), .S(n169), .ZN(n81) );
  INVD0BWP12T30P140 U236 ( .I(p[12]), .ZN(n176) );
  MAOI222D0BWP12T30P140 U237 ( .A(n172), .B(n171), .C(n170), .ZN(n177) );
  INVD0BWP12T30P140 U238 ( .I(n177), .ZN(n173) );
  AOI221D0BWP12T30P140 U239 ( .A1(multiplicand[12]), .A2(n177), .B1(n174), 
        .B2(n173), .C(n189), .ZN(n175) );
  MUX2ND0BWP12T30P140 U240 ( .I0(n176), .I1(p[12]), .S(n175), .ZN(n80) );
  INVD0BWP12T30P140 U241 ( .I(p[13]), .ZN(n181) );
  MAOI222D0BWP12T30P140 U242 ( .A(n177), .B(multiplicand[12]), .C(p[12]), .ZN(
        n180) );
  INVD0BWP12T30P140 U243 ( .I(n180), .ZN(n178) );
  AOI221D0BWP12T30P140 U244 ( .A1(multiplicand[13]), .A2(n178), .B1(n182), 
        .B2(n180), .C(n189), .ZN(n179) );
  MUX2ND0BWP12T30P140 U245 ( .I0(n181), .I1(p[13]), .S(n179), .ZN(n79) );
  INVD0BWP12T30P140 U246 ( .I(p[14]), .ZN(n185) );
  MAOI222D0BWP12T30P140 U247 ( .A(n182), .B(n181), .C(n180), .ZN(n183) );
  INVD0BWP12T30P140 U248 ( .I(n183), .ZN(n187) );
  AOI221D0BWP12T30P140 U249 ( .A1(multiplicand[14]), .A2(n183), .B1(n186), 
        .B2(n187), .C(n189), .ZN(n184) );
  MUX2ND0BWP12T30P140 U250 ( .I0(n185), .I1(p[14]), .S(n184), .ZN(n78) );
  INVD0BWP12T30P140 U251 ( .I(p[15]), .ZN(n192) );
  MAOI222D0BWP12T30P140 U252 ( .A(n187), .B(n186), .C(n185), .ZN(n190) );
  NR2D0BWP12T30P140 U253 ( .A1(multiplicand[15]), .A2(n190), .ZN(n188) );
  AOI211D0BWP12T30P140 U254 ( .A1(multiplicand[15]), .A2(n190), .B(n189), .C(
        n188), .ZN(n191) );
  MUX2ND0BWP12T30P140 U255 ( .I0(n192), .I1(p[15]), .S(n191), .ZN(n77) );
  ND3D0BWP12T30P140 U256 ( .A1(n95), .A2(n193), .A3(ctr[0]), .ZN(n195) );
  MUX2ND0BWP12T30P140 U257 ( .I0(ctr[3]), .I1(n196), .S(n195), .ZN(n58) );
  MUX2ND0BWP12T30P140 U258 ( .I0(n198), .I1(ctr[2]), .S(n197), .ZN(n57) );
endmodule

