/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:19:47 2026
/////////////////////////////////////////////////////////////


module statled ( clk, rst, status, led );
  input [3:0] status;
  input clk, rst;
  output led;
  wire   nxt_led, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186;
  wire   [32:0] nxt_pre;
  wire   [32:0] pre;
  wire   [7:0] bcnt;
  wire   [15:0] lsr;
  wire   [3:0] str;

  DFSNQD1BWP12T30P140 bcnt_reg_0_ ( .D(n69), .CP(clk), .SDN(n183), .Q(bcnt[0])
         );
  DFSNQD1BWP12T30P140 bcnt_reg_3_ ( .D(n64), .CP(clk), .SDN(n183), .Q(bcnt[3])
         );
  DFSNQD1BWP12T30P140 bcnt_reg_2_ ( .D(n63), .CP(clk), .SDN(n183), .Q(bcnt[2])
         );
  DFSNQD1BWP12T30P140 bcnt_reg_1_ ( .D(n62), .CP(clk), .SDN(n183), .Q(bcnt[1])
         );
  DFSNQD1BWP12T30P140 led_pipe_reg ( .D(nxt_led), .CP(clk), .SDN(n183), .Q(led) );
  DFCNQD1BWP12T30P140 lsr_reg_8_ ( .D(n53), .CP(clk), .CDN(n45), .Q(lsr[8]) );
  DFCNQD1BWP12T30P140 lsr_reg_10_ ( .D(n51), .CP(clk), .CDN(n45), .Q(lsr[10])
         );
  DFCNQD1BWP12T30P140 lsr_reg_12_ ( .D(n49), .CP(clk), .CDN(n45), .Q(lsr[12])
         );
  DFCNQD1BWP12T30P140 lsr_reg_14_ ( .D(n47), .CP(clk), .CDN(n45), .Q(lsr[14])
         );
  DFCNQD1BWP12T30P140 lsr_reg_15_ ( .D(n46), .CP(clk), .CDN(n45), .Q(lsr[15])
         );
  DFCNQD1BWP12T30P140 lsr_reg_9_ ( .D(n52), .CP(clk), .CDN(n183), .Q(lsr[9])
         );
  DFCNQD1BWP12T30P140 lsr_reg_11_ ( .D(n50), .CP(clk), .CDN(n183), .Q(lsr[11])
         );
  DFCNQD1BWP12T30P140 lsr_reg_13_ ( .D(n48), .CP(clk), .CDN(n183), .Q(lsr[13])
         );
  DFCNQD1BWP12T30P140 str_reg_3_ ( .D(status[3]), .CP(n186), .CDN(n181), .Q(
        str[3]) );
  DFCNQD1BWP12T30P140 pre_reg_4_ ( .D(nxt_pre[4]), .CP(n185), .CDN(n182), .Q(
        pre[4]) );
  DFCNQD1BWP12T30P140 pre_reg_6_ ( .D(nxt_pre[6]), .CP(n184), .CDN(n182), .Q(
        pre[6]) );
  DFCNQD1BWP12T30P140 bcnt_reg_6_ ( .D(n67), .CP(n185), .CDN(n182), .Q(bcnt[6]) );
  DFCNQD1BWP12T30P140 pre_reg_8_ ( .D(nxt_pre[8]), .CP(n186), .CDN(n182), .Q(
        pre[8]) );
  DFCNQD1BWP12T30P140 pre_reg_16_ ( .D(nxt_pre[16]), .CP(n184), .CDN(n182), 
        .Q(pre[16]) );
  DFCNQD1BWP12T30P140 lsr_reg_0_ ( .D(n61), .CP(n186), .CDN(n182), .Q(lsr[0])
         );
  DFCNQD1BWP12T30P140 lsr_reg_2_ ( .D(n59), .CP(n186), .CDN(n45), .Q(lsr[2])
         );
  DFCNQD1BWP12T30P140 lsr_reg_4_ ( .D(n57), .CP(n186), .CDN(n45), .Q(lsr[4])
         );
  DFCNQD1BWP12T30P140 lsr_reg_6_ ( .D(n55), .CP(n186), .CDN(n45), .Q(lsr[6])
         );
  DFCNQD1BWP12T30P140 pre_reg_12_ ( .D(nxt_pre[12]), .CP(n185), .CDN(n182), 
        .Q(pre[12]) );
  DFCNQD1BWP12T30P140 pre_reg_22_ ( .D(nxt_pre[22]), .CP(n184), .CDN(n181), 
        .Q(pre[22]) );
  DFCNQD1BWP12T30P140 pre_reg_10_ ( .D(nxt_pre[10]), .CP(n184), .CDN(n182), 
        .Q(pre[10]) );
  DFCNQD1BWP12T30P140 pre_reg_20_ ( .D(nxt_pre[20]), .CP(n184), .CDN(n181), 
        .Q(pre[20]) );
  DFCNQD1BWP12T30P140 pre_reg_26_ ( .D(nxt_pre[26]), .CP(n185), .CDN(n181), 
        .Q(pre[26]) );
  DFCNQD1BWP12T30P140 pre_reg_28_ ( .D(nxt_pre[28]), .CP(n185), .CDN(n181), 
        .Q(pre[28]) );
  DFCNQD1BWP12T30P140 pre_reg_30_ ( .D(nxt_pre[30]), .CP(n185), .CDN(n183), 
        .Q(pre[30]) );
  DFCNQD1BWP12T30P140 pre_reg_18_ ( .D(nxt_pre[18]), .CP(n184), .CDN(n181), 
        .Q(pre[18]) );
  DFCNQD1BWP12T30P140 pre_reg_14_ ( .D(nxt_pre[14]), .CP(n184), .CDN(n182), 
        .Q(pre[14]) );
  DFCNQD1BWP12T30P140 pre_reg_24_ ( .D(nxt_pre[24]), .CP(n184), .CDN(n181), 
        .Q(pre[24]) );
  DFCNQD1BWP12T30P140 lsr_reg_1_ ( .D(n60), .CP(n186), .CDN(n181), .Q(lsr[1])
         );
  DFCNQD1BWP12T30P140 lsr_reg_3_ ( .D(n58), .CP(n186), .CDN(n181), .Q(lsr[3])
         );
  DFCNQD1BWP12T30P140 lsr_reg_5_ ( .D(n56), .CP(n186), .CDN(n45), .Q(lsr[5])
         );
  DFCNQD1BWP12T30P140 lsr_reg_7_ ( .D(n54), .CP(n186), .CDN(n45), .Q(lsr[7])
         );
  DFCNQD1BWP12T30P140 str_reg_0_ ( .D(status[0]), .CP(clk), .CDN(n183), .Q(
        str[0]) );
  DFCNQD1BWP12T30P140 pre_reg_13_ ( .D(nxt_pre[13]), .CP(n184), .CDN(n182), 
        .Q(pre[13]) );
  DFCNQD1BWP12T30P140 pre_reg_19_ ( .D(nxt_pre[19]), .CP(n184), .CDN(n181), 
        .Q(pre[19]) );
  DFCNQD1BWP12T30P140 pre_reg_23_ ( .D(nxt_pre[23]), .CP(n184), .CDN(n181), 
        .Q(pre[23]) );
  DFCNQD1BWP12T30P140 pre_reg_17_ ( .D(nxt_pre[17]), .CP(n184), .CDN(n181), 
        .Q(pre[17]) );
  DFCNQD1BWP12T30P140 pre_reg_11_ ( .D(nxt_pre[11]), .CP(n186), .CDN(n182), 
        .Q(pre[11]) );
  DFCNQD1BWP12T30P140 pre_reg_15_ ( .D(nxt_pre[15]), .CP(n184), .CDN(n182), 
        .Q(pre[15]) );
  DFCNQD1BWP12T30P140 str_reg_1_ ( .D(status[1]), .CP(n186), .CDN(n181), .Q(
        str[1]) );
  DFCNQD1BWP12T30P140 pre_reg_21_ ( .D(nxt_pre[21]), .CP(n184), .CDN(n181), 
        .Q(pre[21]) );
  DFCNQD1BWP12T30P140 bcnt_reg_4_ ( .D(n65), .CP(n186), .CDN(n182), .Q(bcnt[4]) );
  DFCNQD1BWP12T30P140 bcnt_reg_7_ ( .D(n68), .CP(n185), .CDN(n45), .Q(bcnt[7])
         );
  DFCNQD1BWP12T30P140 pre_reg_5_ ( .D(nxt_pre[5]), .CP(n185), .CDN(n182), .Q(
        pre[5]) );
  DFCNQD1BWP12T30P140 pre_reg_27_ ( .D(nxt_pre[27]), .CP(n185), .CDN(n181), 
        .Q(pre[27]) );
  DFCNQD1BWP12T30P140 pre_reg_29_ ( .D(nxt_pre[29]), .CP(n185), .CDN(n45), .Q(
        pre[29]) );
  DFCNQD1BWP12T30P140 pre_reg_31_ ( .D(nxt_pre[31]), .CP(n185), .CDN(n45), .Q(
        pre[31]) );
  DFCNQD1BWP12T30P140 pre_reg_32_ ( .D(nxt_pre[32]), .CP(n185), .CDN(n183), 
        .Q(pre[32]) );
  DFCNQD1BWP12T30P140 pre_reg_7_ ( .D(nxt_pre[7]), .CP(n184), .CDN(n182), .Q(
        pre[7]) );
  DFCNQD1BWP12T30P140 pre_reg_9_ ( .D(nxt_pre[9]), .CP(n186), .CDN(n182), .Q(
        pre[9]) );
  DFCNQD1BWP12T30P140 pre_reg_25_ ( .D(nxt_pre[25]), .CP(n185), .CDN(n181), 
        .Q(pre[25]) );
  DFCNQD1BWP12T30P140 pre_reg_3_ ( .D(nxt_pre[3]), .CP(n185), .CDN(n183), .Q(
        pre[3]) );
  DFCNQD1BWP12T30P140 pre_reg_1_ ( .D(nxt_pre[1]), .CP(n184), .CDN(n183), .Q(
        pre[1]) );
  DFCNQD1BWP12T30P140 pre_reg_0_ ( .D(nxt_pre[0]), .CP(n185), .CDN(n183), .Q(
        pre[0]) );
  DFCNQD1BWP12T30P140 bcnt_reg_5_ ( .D(n66), .CP(n185), .CDN(n181), .Q(bcnt[5]) );
  DFCNQD1BWP12T30P140 pre_reg_2_ ( .D(nxt_pre[2]), .CP(n186), .CDN(n183), .Q(
        pre[2]) );
  DFCNQD1BWP12T30P140 str_reg_2_ ( .D(status[2]), .CP(n186), .CDN(n182), .Q(
        str[2]) );
  ND3D0BWP12T30P140 U106 ( .A1(bcnt[0]), .A2(bcnt[1]), .A3(bcnt[2]), .ZN(n126)
         );
  ND4D0BWP12T30P140 U107 ( .A1(pre[19]), .A2(pre[16]), .A3(pre[15]), .A4(
        pre[11]), .ZN(n70) );
  INR4D0BWP12T30P140 U108 ( .A1(pre[21]), .B1(pre[32]), .B2(pre[0]), .B3(n70), 
        .ZN(n79) );
  INVD0BWP12T30P140 U109 ( .I(pre[6]), .ZN(n163) );
  INVD0BWP12T30P140 U110 ( .I(pre[4]), .ZN(n124) );
  NR4D0BWP12T30P140 U111 ( .A1(pre[29]), .A2(pre[28]), .A3(n163), .A4(n124), 
        .ZN(n71) );
  ND3D0BWP12T30P140 U112 ( .A1(pre[13]), .A2(pre[8]), .A3(n71), .ZN(n77) );
  NR4D0BWP12T30P140 U113 ( .A1(pre[12]), .A2(pre[10]), .A3(pre[9]), .A4(pre[7]), .ZN(n75) );
  NR4D0BWP12T30P140 U114 ( .A1(pre[5]), .A2(pre[3]), .A3(pre[2]), .A4(pre[1]), 
        .ZN(n74) );
  NR4D0BWP12T30P140 U115 ( .A1(pre[27]), .A2(pre[26]), .A3(pre[25]), .A4(
        pre[24]), .ZN(n73) );
  NR4D0BWP12T30P140 U116 ( .A1(pre[22]), .A2(pre[20]), .A3(pre[18]), .A4(
        pre[14]), .ZN(n72) );
  ND4D0BWP12T30P140 U117 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .ZN(n76) );
  NR4D0BWP12T30P140 U118 ( .A1(pre[31]), .A2(pre[30]), .A3(n77), .A4(n76), 
        .ZN(n78) );
  ND4D0BWP12T30P140 U119 ( .A1(pre[23]), .A2(pre[17]), .A3(n79), .A4(n78), 
        .ZN(n158) );
  INVD0BWP12T30P140 U120 ( .I(n158), .ZN(n161) );
  NR2D0BWP12T30P140 U121 ( .A1(bcnt[7]), .A2(bcnt[0]), .ZN(n81) );
  NR4D0BWP12T30P140 U122 ( .A1(bcnt[5]), .A2(bcnt[1]), .A3(bcnt[2]), .A4(
        bcnt[3]), .ZN(n80) );
  INVD0BWP12T30P140 U123 ( .I(bcnt[6]), .ZN(n133) );
  ND4D0BWP12T30P140 U124 ( .A1(n81), .A2(bcnt[4]), .A3(n80), .A4(n133), .ZN(
        n103) );
  ND2D0BWP12T30P140 U125 ( .A1(n161), .A2(n103), .ZN(n88) );
  NR2D0BWP12T30P140 U126 ( .A1(rst), .A2(n88), .ZN(n127) );
  INVD0BWP12T30P140 U127 ( .I(n127), .ZN(n119) );
  OR2D0BWP12T30P140 U128 ( .A1(n126), .A2(n119), .Z(n130) );
  INVD0BWP12T30P140 U129 ( .I(n103), .ZN(n89) );
  NR3D0BWP12T30P140 U130 ( .A1(n161), .A2(n89), .A3(rst), .ZN(n125) );
  OR2D0BWP12T30P140 U131 ( .A1(n125), .A2(n126), .Z(n82) );
  AOI21D0BWP12T30P140 U132 ( .A1(bcnt[3]), .A2(n82), .B(rst), .ZN(n83) );
  OAI21D0BWP12T30P140 U133 ( .A1(bcnt[3]), .A2(n130), .B(n83), .ZN(n64) );
  INVD0BWP12T30P140 U134 ( .I(pre[10]), .ZN(n84) );
  INVD0BWP12T30P140 U135 ( .I(pre[8]), .ZN(n114) );
  ND4D0BWP12T30P140 U136 ( .A1(pre[3]), .A2(pre[2]), .A3(pre[0]), .A4(pre[1]), 
        .ZN(n123) );
  NR2D0BWP12T30P140 U137 ( .A1(n124), .A2(n123), .ZN(n122) );
  ND2D0BWP12T30P140 U138 ( .A1(pre[5]), .A2(n122), .ZN(n162) );
  NR2D0BWP12T30P140 U139 ( .A1(n163), .A2(n162), .ZN(n160) );
  ND2D0BWP12T30P140 U140 ( .A1(pre[7]), .A2(n160), .ZN(n113) );
  NR2D0BWP12T30P140 U141 ( .A1(n114), .A2(n113), .ZN(n112) );
  ND2D0BWP12T30P140 U142 ( .A1(pre[9]), .A2(n112), .ZN(n100) );
  NR2D0BWP12T30P140 U143 ( .A1(n84), .A2(n100), .ZN(n151) );
  AOI21D0BWP12T30P140 U144 ( .A1(n84), .A2(n100), .B(n151), .ZN(nxt_pre[10])
         );
  INVD0BWP12T30P140 U145 ( .I(pre[22]), .ZN(n85) );
  INVD0BWP12T30P140 U146 ( .I(pre[20]), .ZN(n87) );
  INVD0BWP12T30P140 U147 ( .I(pre[18]), .ZN(n140) );
  INVD0BWP12T30P140 U148 ( .I(pre[16]), .ZN(n98) );
  INVD0BWP12T30P140 U149 ( .I(pre[14]), .ZN(n108) );
  INVD0BWP12T30P140 U150 ( .I(pre[12]), .ZN(n102) );
  ND2D0BWP12T30P140 U151 ( .A1(pre[11]), .A2(n151), .ZN(n150) );
  NR2D0BWP12T30P140 U152 ( .A1(n102), .A2(n150), .ZN(n106) );
  ND2D0BWP12T30P140 U153 ( .A1(pre[13]), .A2(n106), .ZN(n107) );
  NR2D0BWP12T30P140 U154 ( .A1(n108), .A2(n107), .ZN(n111) );
  ND2D0BWP12T30P140 U155 ( .A1(pre[15]), .A2(n111), .ZN(n110) );
  NR2D0BWP12T30P140 U156 ( .A1(n98), .A2(n110), .ZN(n101) );
  ND2D0BWP12T30P140 U157 ( .A1(pre[17]), .A2(n101), .ZN(n139) );
  NR2D0BWP12T30P140 U158 ( .A1(n140), .A2(n139), .ZN(n138) );
  ND2D0BWP12T30P140 U159 ( .A1(pre[19]), .A2(n138), .ZN(n137) );
  NR2D0BWP12T30P140 U160 ( .A1(n87), .A2(n137), .ZN(n136) );
  ND2D0BWP12T30P140 U161 ( .A1(pre[21]), .A2(n136), .ZN(n135) );
  NR2D0BWP12T30P140 U162 ( .A1(n85), .A2(n135), .ZN(n159) );
  AOI21D0BWP12T30P140 U163 ( .A1(n85), .A2(n135), .B(n159), .ZN(nxt_pre[22])
         );
  INVD0BWP12T30P140 U164 ( .I(rst), .ZN(n45) );
  CKBD0BWP12T30P140 U165 ( .I(n45), .Z(n183) );
  INVD0BWP12T30P140 U166 ( .I(bcnt[0]), .ZN(n90) );
  NR2D0BWP12T30P140 U167 ( .A1(n125), .A2(n90), .ZN(n86) );
  AOI32D0BWP12T30P140 U168 ( .A1(n90), .A2(n183), .A3(n88), .B1(n86), .B2(n183), .ZN(n69) );
  AOI21D0BWP12T30P140 U169 ( .A1(n87), .A2(n137), .B(n136), .ZN(nxt_pre[20])
         );
  INVD0BWP12T30P140 U170 ( .I(n88), .ZN(n176) );
  NR2D0BWP12T30P140 U171 ( .A1(n161), .A2(n89), .ZN(n175) );
  AO22D0BWP12T30P140 U172 ( .A1(n176), .A2(lsr[1]), .B1(n175), .B2(lsr[2]), 
        .Z(n59) );
  INR3D1BWP12T30P140 U173 ( .A1(bcnt[1]), .B1(n125), .B2(n90), .ZN(n96) );
  INVD0BWP12T30P140 U174 ( .I(bcnt[2]), .ZN(n92) );
  ND4D0BWP12T30P140 U175 ( .A1(bcnt[1]), .A2(bcnt[0]), .A3(n127), .A4(n92), 
        .ZN(n91) );
  OAI211D0BWP12T30P140 U176 ( .A1(n96), .A2(n92), .B(n183), .C(n91), .ZN(n63)
         );
  AO22D0BWP12T30P140 U177 ( .A1(n176), .A2(lsr[3]), .B1(n175), .B2(lsr[4]), 
        .Z(n57) );
  INVD0BWP12T30P140 U178 ( .I(bcnt[3]), .ZN(n131) );
  INVD0BWP12T30P140 U179 ( .I(bcnt[4]), .ZN(n128) );
  NR3D0BWP12T30P140 U180 ( .A1(n131), .A2(n128), .A3(n126), .ZN(n117) );
  INVD0BWP12T30P140 U181 ( .I(n117), .ZN(n94) );
  AOI21D0BWP12T30P140 U182 ( .A1(n127), .A2(n94), .B(n125), .ZN(n118) );
  INVD0BWP12T30P140 U183 ( .I(bcnt[5]), .ZN(n93) );
  OAI32D0BWP12T30P140 U184 ( .A1(bcnt[5]), .A2(n119), .A3(n94), .B1(n118), 
        .B2(n93), .ZN(n66) );
  INVD0BWP12T30P140 U185 ( .I(pre[26]), .ZN(n95) );
  INVD0BWP12T30P140 U186 ( .I(pre[24]), .ZN(n156) );
  ND2D0BWP12T30P140 U187 ( .A1(pre[23]), .A2(n159), .ZN(n157) );
  NR2D0BWP12T30P140 U188 ( .A1(n156), .A2(n157), .ZN(n155) );
  ND2D0BWP12T30P140 U189 ( .A1(pre[25]), .A2(n155), .ZN(n99) );
  NR2D0BWP12T30P140 U190 ( .A1(n95), .A2(n99), .ZN(n109) );
  AOI21D0BWP12T30P140 U191 ( .A1(n95), .A2(n99), .B(n109), .ZN(nxt_pre[26]) );
  AN2D0BWP12T30P140 U192 ( .A1(pre[0]), .A2(pre[1]), .Z(n170) );
  OA221D0BWP12T30P140 U193 ( .A1(pre[2]), .A2(pre[3]), .B1(n170), .B2(pre[3]), 
        .C(n123), .Z(nxt_pre[3]) );
  AOI21D0BWP12T30P140 U194 ( .A1(bcnt[0]), .A2(n127), .B(bcnt[1]), .ZN(n97) );
  OAI21D0BWP12T30P140 U195 ( .A1(n97), .A2(n96), .B(n183), .ZN(n62) );
  AOI211D0BWP12T30P140 U196 ( .A1(n98), .A2(n110), .B(n161), .C(n101), .ZN(
        nxt_pre[16]) );
  OA21D0BWP12T30P140 U197 ( .A1(pre[25]), .A2(n155), .B(n99), .Z(nxt_pre[25])
         );
  MAOI22D0BWP12T30P140 U198 ( .A1(pre[2]), .A2(n170), .B1(n170), .B2(pre[2]), 
        .ZN(nxt_pre[2]) );
  AO22D0BWP12T30P140 U199 ( .A1(n176), .A2(lsr[5]), .B1(n175), .B2(lsr[6]), 
        .Z(n55) );
  OA21D0BWP12T30P140 U200 ( .A1(pre[9]), .A2(n112), .B(n100), .Z(nxt_pre[9])
         );
  OA211D0BWP12T30P140 U201 ( .A1(pre[17]), .A2(n101), .B(n158), .C(n139), .Z(
        nxt_pre[17]) );
  OA21D0BWP12T30P140 U202 ( .A1(pre[7]), .A2(n160), .B(n113), .Z(nxt_pre[7])
         );
  NR2D0BWP12T30P140 U203 ( .A1(pre[0]), .A2(n161), .ZN(nxt_pre[0]) );
  AOI21D0BWP12T30P140 U204 ( .A1(n102), .A2(n150), .B(n106), .ZN(nxt_pre[12])
         );
  AO22D0BWP12T30P140 U205 ( .A1(n176), .A2(lsr[7]), .B1(n175), .B2(lsr[8]), 
        .Z(n53) );
  AN2D0BWP12T30P140 U206 ( .A1(n175), .A2(lsr[0]), .Z(n61) );
  INVD0BWP12T30P140 U207 ( .I(pre[30]), .ZN(n154) );
  INVD0BWP12T30P140 U208 ( .I(pre[28]), .ZN(n149) );
  ND2D0BWP12T30P140 U209 ( .A1(pre[27]), .A2(n109), .ZN(n148) );
  NR2D0BWP12T30P140 U210 ( .A1(n149), .A2(n148), .ZN(n147) );
  ND2D0BWP12T30P140 U211 ( .A1(pre[29]), .A2(n147), .ZN(n153) );
  NR2D0BWP12T30P140 U212 ( .A1(n154), .A2(n153), .ZN(n152) );
  ND2D0BWP12T30P140 U213 ( .A1(pre[31]), .A2(n152), .ZN(n179) );
  OA21D0BWP12T30P140 U214 ( .A1(pre[31]), .A2(n152), .B(n179), .Z(nxt_pre[31])
         );
  INVD0BWP12T30P140 U215 ( .I(str[1]), .ZN(n164) );
  NR2D0BWP12T30P140 U216 ( .A1(str[3]), .A2(n103), .ZN(n165) );
  INVD0BWP12T30P140 U217 ( .I(n165), .ZN(n143) );
  NR2D0BWP12T30P140 U218 ( .A1(n143), .A2(str[0]), .ZN(n167) );
  ND2D0BWP12T30P140 U219 ( .A1(n164), .A2(n167), .ZN(n171) );
  AOI22D0BWP12T30P140 U220 ( .A1(n176), .A2(lsr[10]), .B1(n175), .B2(lsr[11]), 
        .ZN(n105) );
  INVD0BWP12T30P140 U221 ( .I(str[2]), .ZN(n116) );
  AOI22D0BWP12T30P140 U222 ( .A1(str[2]), .A2(n164), .B1(str[1]), .B2(n116), 
        .ZN(n166) );
  NR2D0BWP12T30P140 U223 ( .A1(n143), .A2(n166), .ZN(n144) );
  AOI22D0BWP12T30P140 U224 ( .A1(str[2]), .A2(n167), .B1(str[0]), .B2(n144), 
        .ZN(n104) );
  ND3D0BWP12T30P140 U225 ( .A1(n171), .A2(n105), .A3(n104), .ZN(n50) );
  OA211D0BWP12T30P140 U226 ( .A1(pre[13]), .A2(n106), .B(n158), .C(n107), .Z(
        nxt_pre[13]) );
  OA21D0BWP12T30P140 U227 ( .A1(pre[29]), .A2(n147), .B(n153), .Z(nxt_pre[29])
         );
  AO22D0BWP12T30P140 U228 ( .A1(n176), .A2(lsr[9]), .B1(n175), .B2(lsr[10]), 
        .Z(n51) );
  AOI21D0BWP12T30P140 U229 ( .A1(n108), .A2(n107), .B(n111), .ZN(nxt_pre[14])
         );
  OA21D0BWP12T30P140 U230 ( .A1(pre[27]), .A2(n109), .B(n148), .Z(nxt_pre[27])
         );
  OA211D0BWP12T30P140 U231 ( .A1(pre[15]), .A2(n111), .B(n158), .C(n110), .Z(
        nxt_pre[15]) );
  AOI211D0BWP12T30P140 U232 ( .A1(n114), .A2(n113), .B(n161), .C(n112), .ZN(
        nxt_pre[8]) );
  OA21D0BWP12T30P140 U233 ( .A1(pre[5]), .A2(n122), .B(n162), .Z(nxt_pre[5])
         );
  AO22D0BWP12T30P140 U234 ( .A1(n176), .A2(lsr[11]), .B1(n175), .B2(lsr[12]), 
        .Z(n49) );
  IOA21D0BWP12T30P140 U235 ( .A1(str[1]), .A2(str[0]), .B(n165), .ZN(n142) );
  AOI22D0BWP12T30P140 U236 ( .A1(n176), .A2(lsr[8]), .B1(n175), .B2(lsr[9]), 
        .ZN(n115) );
  OAI211D0BWP12T30P140 U237 ( .A1(n142), .A2(n116), .B(n115), .C(n171), .ZN(
        n52) );
  ND3D0BWP12T30P140 U238 ( .A1(bcnt[5]), .A2(n127), .A3(n117), .ZN(n134) );
  OAI21D0BWP12T30P140 U239 ( .A1(bcnt[5]), .A2(n119), .B(n118), .ZN(n132) );
  AOI21D0BWP12T30P140 U240 ( .A1(n127), .A2(n133), .B(n132), .ZN(n121) );
  INVD0BWP12T30P140 U241 ( .I(bcnt[7]), .ZN(n120) );
  OAI32D0BWP12T30P140 U242 ( .A1(bcnt[7]), .A2(n133), .A3(n134), .B1(n121), 
        .B2(n120), .ZN(n68) );
  AOI211D0BWP12T30P140 U243 ( .A1(n124), .A2(n123), .B(n161), .C(n122), .ZN(
        nxt_pre[4]) );
  AOI221D0BWP12T30P140 U244 ( .A1(n131), .A2(n127), .B1(n126), .B2(n127), .C(
        n125), .ZN(n129) );
  OAI32D0BWP12T30P140 U245 ( .A1(bcnt[4]), .A2(n131), .A3(n130), .B1(n129), 
        .B2(n128), .ZN(n65) );
  AO22D0BWP12T30P140 U246 ( .A1(n176), .A2(lsr[13]), .B1(n175), .B2(lsr[14]), 
        .Z(n47) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n134), .A2(n133), .B1(n133), .B2(n132), .ZN(
        n67) );
  OA211D0BWP12T30P140 U248 ( .A1(pre[21]), .A2(n136), .B(n158), .C(n135), .Z(
        nxt_pre[21]) );
  OA211D0BWP12T30P140 U249 ( .A1(pre[19]), .A2(n138), .B(n158), .C(n137), .Z(
        nxt_pre[19]) );
  AOI21D0BWP12T30P140 U250 ( .A1(n140), .A2(n139), .B(n138), .ZN(nxt_pre[18])
         );
  AOI22D0BWP12T30P140 U251 ( .A1(n176), .A2(lsr[14]), .B1(n175), .B2(lsr[15]), 
        .ZN(n141) );
  OAI211D0BWP12T30P140 U252 ( .A1(str[2]), .A2(n143), .B(n142), .C(n141), .ZN(
        n46) );
  AOI22D0BWP12T30P140 U253 ( .A1(n176), .A2(lsr[12]), .B1(n175), .B2(lsr[13]), 
        .ZN(n145) );
  INR3D1BWP12T30P140 U254 ( .A1(n145), .B1(n144), .B2(n167), .ZN(n146) );
  INVD0BWP12T30P140 U255 ( .I(n146), .ZN(n48) );
  AOI21D0BWP12T30P140 U256 ( .A1(n149), .A2(n148), .B(n147), .ZN(nxt_pre[28])
         );
  OA211D0BWP12T30P140 U257 ( .A1(pre[11]), .A2(n151), .B(n158), .C(n150), .Z(
        nxt_pre[11]) );
  AOI21D0BWP12T30P140 U258 ( .A1(n154), .A2(n153), .B(n152), .ZN(nxt_pre[30])
         );
  AOI21D0BWP12T30P140 U259 ( .A1(n156), .A2(n157), .B(n155), .ZN(nxt_pre[24])
         );
  OA211D0BWP12T30P140 U260 ( .A1(pre[23]), .A2(n159), .B(n158), .C(n157), .Z(
        nxt_pre[23]) );
  AOI211D0BWP12T30P140 U261 ( .A1(n163), .A2(n162), .B(n161), .C(n160), .ZN(
        nxt_pre[6]) );
  ND4D0BWP12T30P140 U262 ( .A1(str[2]), .A2(n165), .A3(str[0]), .A4(n164), 
        .ZN(n169) );
  ND2D0BWP12T30P140 U263 ( .A1(n167), .A2(n166), .ZN(n173) );
  AOI22D0BWP12T30P140 U264 ( .A1(n176), .A2(lsr[6]), .B1(n175), .B2(lsr[7]), 
        .ZN(n168) );
  ND3D0BWP12T30P140 U265 ( .A1(n169), .A2(n173), .A3(n168), .ZN(n54) );
  CKBD0BWP12T30P140 U266 ( .I(clk), .Z(n186) );
  CKBD0BWP12T30P140 U267 ( .I(clk), .Z(n184) );
  CKBD0BWP12T30P140 U268 ( .I(clk), .Z(n185) );
  CKBD0BWP12T30P140 U269 ( .I(n45), .Z(n182) );
  CKBD0BWP12T30P140 U270 ( .I(n45), .Z(n181) );
  IAO21D0BWP12T30P140 U271 ( .A1(pre[0]), .A2(pre[1]), .B(n170), .ZN(
        nxt_pre[1]) );
  AOI22D0BWP12T30P140 U272 ( .A1(n176), .A2(lsr[0]), .B1(n175), .B2(lsr[1]), 
        .ZN(n172) );
  OR2D0BWP12T30P140 U273 ( .A1(n171), .A2(str[2]), .Z(n177) );
  ND2D0BWP12T30P140 U274 ( .A1(n172), .A2(n177), .ZN(n60) );
  AOI22D0BWP12T30P140 U275 ( .A1(n176), .A2(lsr[4]), .B1(n175), .B2(lsr[5]), 
        .ZN(n174) );
  ND2D0BWP12T30P140 U276 ( .A1(n174), .A2(n173), .ZN(n56) );
  AOI22D0BWP12T30P140 U277 ( .A1(n176), .A2(lsr[2]), .B1(n175), .B2(lsr[3]), 
        .ZN(n178) );
  ND2D0BWP12T30P140 U278 ( .A1(n178), .A2(n177), .ZN(n58) );
  IND2D1BWP12T30P140 U279 ( .A1(lsr[15]), .B1(n183), .ZN(nxt_led) );
  INVD0BWP12T30P140 U280 ( .I(pre[32]), .ZN(n180) );
  MUX2ND0BWP12T30P140 U281 ( .I0(pre[32]), .I1(n180), .S(n179), .ZN(
        nxt_pre[32]) );
endmodule

