/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:41:57 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182;
  wire   [15:0] s;
  wire   [15:0] c;

  DFCNQD1BWP12T30P140 s_reg_0_ ( .D(n66), .CP(clk), .CDN(rst_n), .Q(s[0]) );
  DFCNQD1BWP12T30P140 c_reg_0_ ( .D(n67), .CP(clk), .CDN(rst_n), .Q(c[0]) );
  DFCNQD1BWP12T30P140 c_reg_15_ ( .D(n37), .CP(n182), .CDN(rst_n), .Q(c[15])
         );
  DFCNQD1BWP12T30P140 s_reg_15_ ( .D(n36), .CP(clk), .CDN(rst_n), .Q(s[15]) );
  DFCNQD1BWP12T30P140 s_reg_1_ ( .D(n64), .CP(clk), .CDN(rst_n), .Q(s[1]) );
  DFCNQD1BWP12T30P140 s_reg_2_ ( .D(n62), .CP(clk), .CDN(rst_n), .Q(s[2]) );
  DFCNQD1BWP12T30P140 s_reg_3_ ( .D(n60), .CP(clk), .CDN(rst_n), .Q(s[3]) );
  DFCNQD1BWP12T30P140 c_reg_1_ ( .D(n65), .CP(clk), .CDN(rst_n), .Q(c[1]) );
  DFCNQD1BWP12T30P140 c_reg_2_ ( .D(n63), .CP(clk), .CDN(rst_n), .Q(c[2]) );
  DFCNQD1BWP12T30P140 c_reg_3_ ( .D(n61), .CP(clk), .CDN(rst_n), .Q(c[3]) );
  DFCNQD1BWP12T30P140 c_reg_4_ ( .D(n59), .CP(clk), .CDN(rst_n), .Q(c[4]) );
  DFCNQD1BWP12T30P140 s_reg_4_ ( .D(n58), .CP(n182), .CDN(rst_n), .Q(s[4]) );
  DFCNQD1BWP12T30P140 s_reg_5_ ( .D(n56), .CP(n182), .CDN(rst_n), .Q(s[5]) );
  DFCNQD1BWP12T30P140 s_reg_6_ ( .D(n54), .CP(n182), .CDN(n181), .Q(s[6]) );
  DFCNQD1BWP12T30P140 s_reg_7_ ( .D(n52), .CP(n182), .CDN(n181), .Q(s[7]) );
  DFCNQD1BWP12T30P140 s_reg_8_ ( .D(n50), .CP(n182), .CDN(n181), .Q(s[8]) );
  DFCNQD1BWP12T30P140 s_reg_9_ ( .D(n48), .CP(n182), .CDN(n181), .Q(s[9]) );
  DFCNQD1BWP12T30P140 s_reg_10_ ( .D(n46), .CP(n182), .CDN(n181), .Q(s[10]) );
  DFCNQD1BWP12T30P140 s_reg_11_ ( .D(n44), .CP(clk), .CDN(n181), .Q(s[11]) );
  DFCNQD1BWP12T30P140 s_reg_12_ ( .D(n42), .CP(n182), .CDN(n181), .Q(s[12]) );
  DFCNQD1BWP12T30P140 s_reg_13_ ( .D(n40), .CP(clk), .CDN(rst_n), .Q(s[13]) );
  DFCNQD1BWP12T30P140 s_reg_14_ ( .D(n38), .CP(n182), .CDN(rst_n), .Q(s[14])
         );
  DFCNQD1BWP12T30P140 c_reg_5_ ( .D(n57), .CP(n182), .CDN(rst_n), .Q(c[5]) );
  DFCNQD1BWP12T30P140 c_reg_6_ ( .D(n55), .CP(n182), .CDN(rst_n), .Q(c[6]) );
  DFCNQD1BWP12T30P140 c_reg_7_ ( .D(n53), .CP(n182), .CDN(n181), .Q(c[7]) );
  DFCNQD1BWP12T30P140 c_reg_8_ ( .D(n51), .CP(n182), .CDN(n181), .Q(c[8]) );
  DFCNQD1BWP12T30P140 c_reg_9_ ( .D(n49), .CP(n182), .CDN(n181), .Q(c[9]) );
  DFCNQD1BWP12T30P140 c_reg_10_ ( .D(n47), .CP(n182), .CDN(n181), .Q(c[10]) );
  DFCNQD1BWP12T30P140 c_reg_11_ ( .D(n45), .CP(clk), .CDN(n181), .Q(c[11]) );
  DFCNQD1BWP12T30P140 c_reg_12_ ( .D(n43), .CP(n182), .CDN(n181), .Q(c[12]) );
  DFCNQD1BWP12T30P140 c_reg_13_ ( .D(n41), .CP(clk), .CDN(rst_n), .Q(c[13]) );
  DFCNQD1BWP12T30P140 c_reg_14_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(c[14]) );
  OAI21D0BWP12T30P140 U55 ( .A1(c[0]), .A2(din[0]), .B(en), .ZN(n69) );
  AOI21D0BWP12T30P140 U56 ( .A1(c[0]), .A2(din[0]), .B(n69), .ZN(n71) );
  INVD0BWP12T30P140 U57 ( .I(s[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U58 ( .A1(n71), .A2(n105), .ZN(n70) );
  OAI21D0BWP12T30P140 U59 ( .A1(n71), .A2(n105), .B(n70), .ZN(n66) );
  ND2D0BWP12T30P140 U60 ( .A1(c[13]), .A2(din[13]), .ZN(n143) );
  OAI21D0BWP12T30P140 U61 ( .A1(c[13]), .A2(din[13]), .B(s[13]), .ZN(n73) );
  INVD0BWP12T30P140 U62 ( .I(c[14]), .ZN(n72) );
  INVD0BWP12T30P140 U63 ( .I(en), .ZN(n176) );
  AOI32D0BWP12T30P140 U64 ( .A1(n143), .A2(en), .A3(n73), .B1(n72), .B2(n176), 
        .ZN(n39) );
  INVD0BWP12T30P140 U65 ( .I(c[0]), .ZN(n104) );
  NR2D0BWP12T30P140 U66 ( .A1(en), .A2(n104), .ZN(n67) );
  ND2D0BWP12T30P140 U67 ( .A1(c[12]), .A2(din[12]), .ZN(n151) );
  OAI21D0BWP12T30P140 U68 ( .A1(c[12]), .A2(din[12]), .B(s[12]), .ZN(n75) );
  INVD0BWP12T30P140 U69 ( .I(c[13]), .ZN(n74) );
  AOI32D0BWP12T30P140 U70 ( .A1(n151), .A2(en), .A3(n75), .B1(n74), .B2(n176), 
        .ZN(n41) );
  ND2D0BWP12T30P140 U71 ( .A1(c[6]), .A2(din[6]), .ZN(n128) );
  OAI21D0BWP12T30P140 U72 ( .A1(c[6]), .A2(din[6]), .B(s[6]), .ZN(n77) );
  INVD0BWP12T30P140 U73 ( .I(c[7]), .ZN(n76) );
  AOI32D0BWP12T30P140 U74 ( .A1(n128), .A2(en), .A3(n77), .B1(n76), .B2(n176), 
        .ZN(n53) );
  ND2D0BWP12T30P140 U75 ( .A1(c[14]), .A2(din[14]), .ZN(n87) );
  OAI21D0BWP12T30P140 U76 ( .A1(c[14]), .A2(din[14]), .B(s[14]), .ZN(n78) );
  INVD0BWP12T30P140 U77 ( .I(c[15]), .ZN(n178) );
  AOI32D0BWP12T30P140 U78 ( .A1(n87), .A2(en), .A3(n78), .B1(n178), .B2(n176), 
        .ZN(n37) );
  ND2D0BWP12T30P140 U79 ( .A1(c[11]), .A2(din[11]), .ZN(n119) );
  OAI21D0BWP12T30P140 U80 ( .A1(c[11]), .A2(din[11]), .B(s[11]), .ZN(n80) );
  INVD0BWP12T30P140 U81 ( .I(c[12]), .ZN(n79) );
  AOI32D0BWP12T30P140 U82 ( .A1(n119), .A2(en), .A3(n80), .B1(n79), .B2(n176), 
        .ZN(n43) );
  ND2D0BWP12T30P140 U83 ( .A1(c[3]), .A2(din[3]), .ZN(n117) );
  CKBD0BWP12T30P140 U84 ( .I(n176), .Z(n155) );
  NR2D0BWP12T30P140 U85 ( .A1(c[3]), .A2(din[3]), .ZN(n81) );
  INR3D1BWP12T30P140 U86 ( .A1(n117), .B1(n155), .B2(n81), .ZN(n83) );
  ND2D0BWP12T30P140 U87 ( .A1(n83), .A2(s[3]), .ZN(n82) );
  OA21D0BWP12T30P140 U88 ( .A1(n83), .A2(s[3]), .B(n82), .Z(n60) );
  ND2D0BWP12T30P140 U89 ( .A1(c[10]), .A2(din[10]), .ZN(n99) );
  OAI21D0BWP12T30P140 U90 ( .A1(c[10]), .A2(din[10]), .B(s[10]), .ZN(n85) );
  INVD0BWP12T30P140 U91 ( .I(c[11]), .ZN(n84) );
  AOI32D0BWP12T30P140 U92 ( .A1(n99), .A2(en), .A3(n85), .B1(n84), .B2(n176), 
        .ZN(n45) );
  NR2D0BWP12T30P140 U93 ( .A1(c[14]), .A2(din[14]), .ZN(n86) );
  INR3D1BWP12T30P140 U94 ( .A1(n87), .B1(n155), .B2(n86), .ZN(n89) );
  ND2D0BWP12T30P140 U95 ( .A1(n89), .A2(s[14]), .ZN(n88) );
  OA21D0BWP12T30P140 U96 ( .A1(n89), .A2(s[14]), .B(n88), .Z(n38) );
  ND2D0BWP12T30P140 U97 ( .A1(c[1]), .A2(din[1]), .ZN(n109) );
  NR2D0BWP12T30P140 U98 ( .A1(c[1]), .A2(din[1]), .ZN(n90) );
  INR3D1BWP12T30P140 U99 ( .A1(n109), .B1(n155), .B2(n90), .ZN(n92) );
  ND2D0BWP12T30P140 U100 ( .A1(n92), .A2(s[1]), .ZN(n91) );
  OA21D0BWP12T30P140 U101 ( .A1(n92), .A2(s[1]), .B(n91), .Z(n64) );
  ND2D0BWP12T30P140 U102 ( .A1(c[9]), .A2(din[9]), .ZN(n156) );
  OAI21D0BWP12T30P140 U103 ( .A1(c[9]), .A2(din[9]), .B(s[9]), .ZN(n94) );
  INVD0BWP12T30P140 U104 ( .I(c[10]), .ZN(n93) );
  AOI32D0BWP12T30P140 U105 ( .A1(n156), .A2(en), .A3(n94), .B1(n93), .B2(n176), 
        .ZN(n47) );
  ND2D0BWP12T30P140 U106 ( .A1(c[2]), .A2(din[2]), .ZN(n114) );
  NR2D0BWP12T30P140 U107 ( .A1(c[2]), .A2(din[2]), .ZN(n95) );
  INR3D1BWP12T30P140 U108 ( .A1(n114), .B1(n155), .B2(n95), .ZN(n97) );
  ND2D0BWP12T30P140 U109 ( .A1(n97), .A2(s[2]), .ZN(n96) );
  OA21D0BWP12T30P140 U110 ( .A1(n97), .A2(s[2]), .B(n96), .Z(n62) );
  NR2D0BWP12T30P140 U111 ( .A1(c[10]), .A2(din[10]), .ZN(n98) );
  INR3D1BWP12T30P140 U112 ( .A1(n99), .B1(n155), .B2(n98), .ZN(n101) );
  ND2D0BWP12T30P140 U113 ( .A1(n101), .A2(s[10]), .ZN(n100) );
  OA21D0BWP12T30P140 U114 ( .A1(n101), .A2(s[10]), .B(n100), .Z(n46) );
  ND2D0BWP12T30P140 U115 ( .A1(c[8]), .A2(din[8]), .ZN(n147) );
  OAI21D0BWP12T30P140 U116 ( .A1(c[8]), .A2(din[8]), .B(s[8]), .ZN(n103) );
  INVD0BWP12T30P140 U117 ( .I(c[9]), .ZN(n102) );
  AOI32D0BWP12T30P140 U118 ( .A1(n147), .A2(en), .A3(n103), .B1(n102), .B2(
        n155), .ZN(n49) );
  ND2D0BWP12T30P140 U119 ( .A1(n105), .A2(n104), .ZN(n171) );
  NR2D0BWP12T30P140 U120 ( .A1(n105), .A2(n104), .ZN(n170) );
  AOI21D0BWP12T30P140 U121 ( .A1(din[0]), .A2(n171), .B(n170), .ZN(n106) );
  MAOI22D0BWP12T30P140 U122 ( .A1(en), .A2(n106), .B1(c[1]), .B2(en), .ZN(n65)
         );
  OAI21D0BWP12T30P140 U123 ( .A1(c[1]), .A2(din[1]), .B(s[1]), .ZN(n108) );
  INVD0BWP12T30P140 U124 ( .I(c[2]), .ZN(n107) );
  AOI32D0BWP12T30P140 U125 ( .A1(n109), .A2(en), .A3(n108), .B1(n107), .B2(
        n176), .ZN(n63) );
  ND2D0BWP12T30P140 U126 ( .A1(c[7]), .A2(din[7]), .ZN(n139) );
  OAI21D0BWP12T30P140 U127 ( .A1(c[7]), .A2(din[7]), .B(s[7]), .ZN(n111) );
  INVD0BWP12T30P140 U128 ( .I(c[8]), .ZN(n110) );
  AOI32D0BWP12T30P140 U129 ( .A1(n139), .A2(en), .A3(n111), .B1(n110), .B2(
        n176), .ZN(n51) );
  OAI21D0BWP12T30P140 U130 ( .A1(c[2]), .A2(din[2]), .B(s[2]), .ZN(n113) );
  INVD0BWP12T30P140 U131 ( .I(c[3]), .ZN(n112) );
  AOI32D0BWP12T30P140 U132 ( .A1(n114), .A2(en), .A3(n113), .B1(n112), .B2(
        n176), .ZN(n61) );
  OAI21D0BWP12T30P140 U133 ( .A1(c[3]), .A2(din[3]), .B(s[3]), .ZN(n116) );
  INVD0BWP12T30P140 U134 ( .I(c[4]), .ZN(n115) );
  AOI32D0BWP12T30P140 U135 ( .A1(n117), .A2(en), .A3(n116), .B1(n115), .B2(
        n176), .ZN(n59) );
  NR2D0BWP12T30P140 U136 ( .A1(c[11]), .A2(din[11]), .ZN(n118) );
  INR3D1BWP12T30P140 U137 ( .A1(n119), .B1(n155), .B2(n118), .ZN(n121) );
  ND2D0BWP12T30P140 U138 ( .A1(n121), .A2(s[11]), .ZN(n120) );
  OA21D0BWP12T30P140 U139 ( .A1(n121), .A2(s[11]), .B(n120), .Z(n44) );
  ND2D0BWP12T30P140 U140 ( .A1(c[4]), .A2(din[4]), .ZN(n133) );
  NR2D0BWP12T30P140 U141 ( .A1(c[4]), .A2(din[4]), .ZN(n122) );
  INR3D1BWP12T30P140 U142 ( .A1(n133), .B1(n155), .B2(n122), .ZN(n124) );
  ND2D0BWP12T30P140 U143 ( .A1(n124), .A2(s[4]), .ZN(n123) );
  OA21D0BWP12T30P140 U144 ( .A1(n124), .A2(s[4]), .B(n123), .Z(n58) );
  ND2D0BWP12T30P140 U145 ( .A1(c[5]), .A2(din[5]), .ZN(n135) );
  OAI21D0BWP12T30P140 U146 ( .A1(c[5]), .A2(din[5]), .B(s[5]), .ZN(n126) );
  INVD0BWP12T30P140 U147 ( .I(c[6]), .ZN(n125) );
  AOI32D0BWP12T30P140 U148 ( .A1(n135), .A2(en), .A3(n126), .B1(n125), .B2(
        n176), .ZN(n55) );
  NR2D0BWP12T30P140 U149 ( .A1(c[6]), .A2(din[6]), .ZN(n127) );
  INR3D1BWP12T30P140 U150 ( .A1(n128), .B1(n155), .B2(n127), .ZN(n130) );
  ND2D0BWP12T30P140 U151 ( .A1(n130), .A2(s[6]), .ZN(n129) );
  OA21D0BWP12T30P140 U152 ( .A1(n130), .A2(s[6]), .B(n129), .Z(n54) );
  OAI21D0BWP12T30P140 U153 ( .A1(c[4]), .A2(din[4]), .B(s[4]), .ZN(n132) );
  INVD0BWP12T30P140 U154 ( .I(c[5]), .ZN(n131) );
  AOI32D0BWP12T30P140 U155 ( .A1(n133), .A2(en), .A3(n132), .B1(n131), .B2(
        n176), .ZN(n57) );
  NR2D0BWP12T30P140 U156 ( .A1(c[5]), .A2(din[5]), .ZN(n134) );
  INR3D1BWP12T30P140 U157 ( .A1(n135), .B1(n155), .B2(n134), .ZN(n137) );
  ND2D0BWP12T30P140 U158 ( .A1(n137), .A2(s[5]), .ZN(n136) );
  OA21D0BWP12T30P140 U159 ( .A1(n137), .A2(s[5]), .B(n136), .Z(n56) );
  NR2D0BWP12T30P140 U160 ( .A1(c[7]), .A2(din[7]), .ZN(n138) );
  INR3D1BWP12T30P140 U161 ( .A1(n139), .B1(n176), .B2(n138), .ZN(n141) );
  ND2D0BWP12T30P140 U162 ( .A1(n141), .A2(s[7]), .ZN(n140) );
  OA21D0BWP12T30P140 U163 ( .A1(n141), .A2(s[7]), .B(n140), .Z(n52) );
  NR2D0BWP12T30P140 U164 ( .A1(c[13]), .A2(din[13]), .ZN(n142) );
  INR3D1BWP12T30P140 U165 ( .A1(n143), .B1(n155), .B2(n142), .ZN(n145) );
  ND2D0BWP12T30P140 U166 ( .A1(n145), .A2(s[13]), .ZN(n144) );
  OA21D0BWP12T30P140 U167 ( .A1(n145), .A2(s[13]), .B(n144), .Z(n40) );
  NR2D0BWP12T30P140 U168 ( .A1(c[8]), .A2(din[8]), .ZN(n146) );
  INR3D1BWP12T30P140 U169 ( .A1(n147), .B1(n176), .B2(n146), .ZN(n149) );
  ND2D0BWP12T30P140 U170 ( .A1(n149), .A2(s[8]), .ZN(n148) );
  OA21D0BWP12T30P140 U171 ( .A1(n149), .A2(s[8]), .B(n148), .Z(n50) );
  NR2D0BWP12T30P140 U172 ( .A1(c[12]), .A2(din[12]), .ZN(n150) );
  INR3D1BWP12T30P140 U173 ( .A1(n151), .B1(n155), .B2(n150), .ZN(n153) );
  ND2D0BWP12T30P140 U174 ( .A1(n153), .A2(s[12]), .ZN(n152) );
  OA21D0BWP12T30P140 U175 ( .A1(n153), .A2(s[12]), .B(n152), .Z(n42) );
  NR2D0BWP12T30P140 U176 ( .A1(c[9]), .A2(din[9]), .ZN(n154) );
  INR3D1BWP12T30P140 U177 ( .A1(n156), .B1(n155), .B2(n154), .ZN(n158) );
  ND2D0BWP12T30P140 U178 ( .A1(n158), .A2(s[9]), .ZN(n157) );
  OA21D0BWP12T30P140 U179 ( .A1(n158), .A2(s[9]), .B(n157), .Z(n48) );
  CKBD0BWP12T30P140 U180 ( .I(clk), .Z(n182) );
  CKBD0BWP12T30P140 U181 ( .I(rst_n), .Z(n181) );
  FA1D0BWP12T30P140 U182 ( .A(s[12]), .B(c[12]), .CI(n159), .CO(n172), .S(
        acc[12]) );
  FA1D0BWP12T30P140 U183 ( .A(s[11]), .B(c[11]), .CI(n160), .CO(n159), .S(
        acc[11]) );
  FA1D0BWP12T30P140 U184 ( .A(s[10]), .B(c[10]), .CI(n161), .CO(n160), .S(
        acc[10]) );
  FA1D0BWP12T30P140 U185 ( .A(s[9]), .B(c[9]), .CI(n162), .CO(n161), .S(acc[9]) );
  FA1D0BWP12T30P140 U186 ( .A(s[8]), .B(c[8]), .CI(n163), .CO(n162), .S(acc[8]) );
  FA1D0BWP12T30P140 U187 ( .A(s[7]), .B(c[7]), .CI(n164), .CO(n163), .S(acc[7]) );
  FA1D0BWP12T30P140 U188 ( .A(s[6]), .B(c[6]), .CI(n165), .CO(n164), .S(acc[6]) );
  FA1D0BWP12T30P140 U189 ( .A(s[5]), .B(c[5]), .CI(n166), .CO(n165), .S(acc[5]) );
  FA1D0BWP12T30P140 U190 ( .A(s[4]), .B(c[4]), .CI(n167), .CO(n166), .S(acc[4]) );
  FA1D0BWP12T30P140 U191 ( .A(s[3]), .B(c[3]), .CI(n168), .CO(n167), .S(acc[3]) );
  FA1D0BWP12T30P140 U192 ( .A(s[2]), .B(c[2]), .CI(n169), .CO(n168), .S(acc[2]) );
  FA1D0BWP12T30P140 U193 ( .A(s[1]), .B(c[1]), .CI(n170), .CO(n169), .S(acc[1]) );
  INR2D1BWP12T30P140 U194 ( .A1(n171), .B1(n170), .ZN(acc[0]) );
  FA1D0BWP12T30P140 U195 ( .A(s[13]), .B(c[13]), .CI(n172), .CO(n173), .S(
        acc[13]) );
  INVD0BWP12T30P140 U196 ( .I(s[15]), .ZN(n180) );
  FA1D0BWP12T30P140 U197 ( .A(s[14]), .B(c[14]), .CI(n173), .CO(n174), .S(
        acc[14]) );
  MUX2ND0BWP12T30P140 U198 ( .I0(n180), .I1(s[15]), .S(n174), .ZN(n175) );
  MUX2ND0BWP12T30P140 U199 ( .I0(n178), .I1(c[15]), .S(n175), .ZN(acc[15]) );
  INVD0BWP12T30P140 U200 ( .I(din[15]), .ZN(n177) );
  AOI221D0BWP12T30P140 U201 ( .A1(c[15]), .A2(din[15]), .B1(n178), .B2(n177), 
        .C(n176), .ZN(n179) );
  MUX2ND0BWP12T30P140 U202 ( .I0(n180), .I1(s[15]), .S(n179), .ZN(n36) );
endmodule

