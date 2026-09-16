/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:18:38 2026
/////////////////////////////////////////////////////////////


module SSPx_Slv ( Rst, SSEL, SCK, MOSI, MISO, RA, WnR, En, EOC, DI, DO, BC );
  output [2:0] RA;
  output [2:0] WnR;
  output [11:0] DI;
  input [11:0] DO;
  output [3:0] BC;
  input Rst, SSEL, SCK, MOSI;
  output MISO, En, EOC;
  wire   SSP_Rst, nxt_EOC, nxt_WnR, n54, n55, n57, n59, n61, n63, n65, n67,
         n69, n71, n73, n75, n77, n78, n79, n99, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n174, n175, n176, n177;
  wire   [3:0] nxt_BC;
  wire   [15:12] RDI;
  wire   [11:0] rDO;

  DFSNQD1BWP12T30P140 SSP_Rst_reg ( .D(n79), .CP(n177), .SDN(n78), .Q(SSP_Rst)
         );
  DFNCND1BWP12T30P140 BC_reg_0_ ( .D(nxt_BC[0]), .CPN(SCK), .CDN(n99), .Q(
        BC[0]), .QN(n175) );
  DFNCND1BWP12T30P140 BC_reg_1_ ( .D(nxt_BC[1]), .CPN(SCK), .CDN(n99), .Q(
        BC[1]) );
  DFNCND1BWP12T30P140 BC_reg_2_ ( .D(nxt_BC[2]), .CPN(SCK), .CDN(n99), .Q(
        BC[2]), .QN(n176) );
  DFNCND1BWP12T30P140 BC_reg_3_ ( .D(nxt_BC[3]), .CPN(SCK), .CDN(n99), .Q(
        BC[3]), .QN(n174) );
  DFNCND1BWP12T30P140 EOC_reg ( .D(nxt_EOC), .CPN(SCK), .CDN(n99), .Q(EOC) );
  DFNCND1BWP12T30P140 RA_reg_2_ ( .D(n108), .CPN(n177), .CDN(n78), .Q(RA[2])
         );
  DFNCND1BWP12T30P140 RA_reg_1_ ( .D(n107), .CPN(SCK), .CDN(n78), .Q(RA[1]) );
  DFNCND1BWP12T30P140 RA_reg_0_ ( .D(n106), .CPN(n177), .CDN(n78), .Q(RA[0])
         );
  DFNCND1BWP12T30P140 WnR_reg_0_ ( .D(nxt_WnR), .CPN(n177), .CDN(n78), .Q(
        WnR[0]) );
  DFNCND1BWP12T30P140 WnR_reg_1_ ( .D(n79), .CPN(n177), .CDN(n124), .Q(WnR[2])
         );
  DFNCND1BWP12T30P140 rDO_reg_11_ ( .D(n77), .CPN(n177), .CDN(n54), .Q(rDO[11]) );
  DFNCND1BWP12T30P140 rDO_reg_10_ ( .D(n75), .CPN(n177), .CDN(n54), .Q(rDO[10]) );
  DFNCND1BWP12T30P140 rDO_reg_9_ ( .D(n73), .CPN(n177), .CDN(n54), .Q(rDO[9])
         );
  DFNCND1BWP12T30P140 rDO_reg_8_ ( .D(n71), .CPN(n177), .CDN(n54), .Q(rDO[8])
         );
  DFNCND1BWP12T30P140 rDO_reg_7_ ( .D(n69), .CPN(n177), .CDN(n54), .Q(rDO[7])
         );
  DFNCND1BWP12T30P140 rDO_reg_6_ ( .D(n67), .CPN(n177), .CDN(n54), .Q(rDO[6])
         );
  DFNCND1BWP12T30P140 rDO_reg_5_ ( .D(n65), .CPN(n177), .CDN(n54), .Q(rDO[5])
         );
  DFNCND1BWP12T30P140 rDO_reg_4_ ( .D(n63), .CPN(n177), .CDN(n54), .Q(rDO[4])
         );
  DFNCND1BWP12T30P140 rDO_reg_3_ ( .D(n61), .CPN(n177), .CDN(n54), .Q(rDO[3])
         );
  DFNCND1BWP12T30P140 rDO_reg_2_ ( .D(n59), .CPN(n177), .CDN(n54), .Q(rDO[2])
         );
  DFNCND1BWP12T30P140 rDO_reg_1_ ( .D(n57), .CPN(n177), .CDN(n54), .Q(rDO[1])
         );
  DFNCND1BWP12T30P140 rDO_reg_0_ ( .D(n55), .CPN(n177), .CDN(n54), .Q(rDO[0])
         );
  DFCNQD1BWP12T30P140 RDI_reg_11_ ( .D(n119), .CP(SCK), .CDN(n78), .Q(DI[11])
         );
  DFCNQD1BWP12T30P140 RDI_reg_10_ ( .D(n118), .CP(SCK), .CDN(n78), .Q(DI[10])
         );
  DFCNQD1BWP12T30P140 RDI_reg_7_ ( .D(n115), .CP(SCK), .CDN(n78), .Q(DI[7]) );
  DFCNQD1BWP12T30P140 RDI_reg_6_ ( .D(n114), .CP(SCK), .CDN(n78), .Q(DI[6]) );
  DFCNQD1BWP12T30P140 RDI_reg_3_ ( .D(n111), .CP(n177), .CDN(n78), .Q(DI[3])
         );
  DFCNQD1BWP12T30P140 RDI_reg_2_ ( .D(n110), .CP(n177), .CDN(n78), .Q(DI[2])
         );
  DFCNQD1BWP12T30P140 RDI_reg_9_ ( .D(n117), .CP(SCK), .CDN(n78), .Q(DI[9]) );
  DFCNQD1BWP12T30P140 RDI_reg_8_ ( .D(n116), .CP(SCK), .CDN(n78), .Q(DI[8]) );
  DFCNQD1BWP12T30P140 RDI_reg_5_ ( .D(n113), .CP(SCK), .CDN(n78), .Q(DI[5]) );
  DFCNQD1BWP12T30P140 RDI_reg_1_ ( .D(n109), .CP(SCK), .CDN(n78), .Q(DI[1]) );
  DFCNQD1BWP12T30P140 RDI_reg_4_ ( .D(n112), .CP(n177), .CDN(n78), .Q(DI[4])
         );
  DFCNQD1BWP12T30P140 RDI_reg_12_ ( .D(n120), .CP(SCK), .CDN(n78), .Q(RDI[12])
         );
  DFCNQD1BWP12T30P140 RDI_reg_13_ ( .D(n121), .CP(SCK), .CDN(n78), .Q(RDI[13])
         );
  DFCNQD1BWP12T30P140 RDI_reg_15_ ( .D(n123), .CP(SCK), .CDN(n78), .Q(RDI[15])
         );
  DFCNQD1BWP12T30P140 RDI_reg_14_ ( .D(n122), .CP(SCK), .CDN(n78), .Q(RDI[14])
         );
  INVD0BWP12T30P140 U97 ( .I(n170), .ZN(n124) );
  TIELBWP12T30P140 U98 ( .ZN(n79) );
  CKBD0BWP12T30P140 U99 ( .I(MOSI), .Z(DI[0]) );
  CKBD0BWP12T30P140 U100 ( .I(WnR[2]), .Z(WnR[1]) );
  ND2D0BWP12T30P140 U101 ( .A1(BC[2]), .A2(n174), .ZN(n137) );
  NR2D0BWP12T30P140 U102 ( .A1(BC[1]), .A2(n175), .ZN(n151) );
  ND2D0BWP12T30P140 U103 ( .A1(n151), .A2(MOSI), .ZN(n145) );
  INVD0BWP12T30P140 U104 ( .I(n151), .ZN(n143) );
  OAI21D0BWP12T30P140 U105 ( .A1(n137), .A2(n143), .B(DI[10]), .ZN(n125) );
  OAI21D0BWP12T30P140 U106 ( .A1(n137), .A2(n145), .B(n125), .ZN(n118) );
  CKND2D1BWP12T30P140 U107 ( .A1(n176), .A2(n174), .ZN(En) );
  NR2D0BWP12T30P140 U108 ( .A1(BC[0]), .A2(BC[1]), .ZN(n154) );
  ND2D0BWP12T30P140 U109 ( .A1(n154), .A2(MOSI), .ZN(n141) );
  INVD0BWP12T30P140 U110 ( .I(n154), .ZN(n139) );
  OAI21D0BWP12T30P140 U111 ( .A1(n139), .A2(En), .B(RDI[15]), .ZN(n126) );
  OAI21D0BWP12T30P140 U112 ( .A1(En), .A2(n141), .B(n126), .ZN(n123) );
  ND2D0BWP12T30P140 U113 ( .A1(BC[0]), .A2(BC[1]), .ZN(n149) );
  ND2D0BWP12T30P140 U114 ( .A1(BC[2]), .A2(BC[1]), .ZN(n171) );
  NR2D0BWP12T30P140 U115 ( .A1(n175), .A2(n171), .ZN(n128) );
  AOI211D0BWP12T30P140 U116 ( .A1(n176), .A2(n149), .B(n128), .C(SSP_Rst), 
        .ZN(nxt_BC[2]) );
  ND2D0BWP12T30P140 U117 ( .A1(n175), .A2(BC[1]), .ZN(n152) );
  NR2D0BWP12T30P140 U118 ( .A1(n152), .A2(En), .ZN(n146) );
  INVD0BWP12T30P140 U119 ( .I(MOSI), .ZN(n166) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n146), .A2(n166), .B1(RDI[13]), .B2(n146), 
        .ZN(n121) );
  OAI21D0BWP12T30P140 U121 ( .A1(n143), .A2(En), .B(RDI[14]), .ZN(n127) );
  OAI21D0BWP12T30P140 U122 ( .A1(En), .A2(n145), .B(n127), .ZN(n122) );
  NR2D0BWP12T30P140 U123 ( .A1(n149), .A2(En), .ZN(n168) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n168), .A2(n166), .B1(RDI[12]), .B2(n168), 
        .ZN(n120) );
  INVD0BWP12T30P140 U125 ( .I(n128), .ZN(n133) );
  AOI221D0BWP12T30P140 U126 ( .A1(BC[3]), .A2(n128), .B1(n174), .B2(n133), .C(
        SSP_Rst), .ZN(nxt_BC[3]) );
  ND2D0BWP12T30P140 U127 ( .A1(n176), .A2(BC[3]), .ZN(n155) );
  NR2D0BWP12T30P140 U128 ( .A1(n155), .A2(n149), .ZN(n129) );
  CKMUX2D0BWP12T30P140 U129 ( .I0(DI[4]), .I1(MOSI), .S(n129), .Z(n112) );
  INVD0BWP12T30P140 U130 ( .I(n168), .ZN(n167) );
  CKMUX2D0BWP12T30P140 U131 ( .I0(DO[2]), .I1(rDO[2]), .S(n167), .Z(n59) );
  NR3D0BWP12T30P140 U132 ( .A1(BC[0]), .A2(n174), .A3(n171), .ZN(n130) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(DI[1]), .I1(MOSI), .S(n130), .Z(n109) );
  AOI21D0BWP12T30P140 U134 ( .A1(n152), .A2(n143), .B(SSP_Rst), .ZN(nxt_BC[1])
         );
  NR2D0BWP12T30P140 U135 ( .A1(n155), .A2(n152), .ZN(n131) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(DI[5]), .I1(MOSI), .S(n131), .Z(n113) );
  OAI21D0BWP12T30P140 U137 ( .A1(n155), .A2(n139), .B(DI[7]), .ZN(n132) );
  OAI21D0BWP12T30P140 U138 ( .A1(n155), .A2(n141), .B(n132), .ZN(n115) );
  NR2D0BWP12T30P140 U139 ( .A1(BC[3]), .A2(n133), .ZN(n134) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(DI[8]), .I1(MOSI), .S(n134), .Z(n116) );
  NR3D0BWP12T30P140 U141 ( .A1(BC[3]), .A2(BC[0]), .A3(n171), .ZN(n135) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(DI[9]), .I1(MOSI), .S(n135), .Z(n117) );
  OAI21D0BWP12T30P140 U143 ( .A1(n137), .A2(n139), .B(DI[11]), .ZN(n136) );
  OAI21D0BWP12T30P140 U144 ( .A1(n137), .A2(n141), .B(n136), .ZN(n119) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(DO[5]), .I1(rDO[5]), .S(n167), .Z(n65) );
  ND2D0BWP12T30P140 U146 ( .A1(BC[2]), .A2(BC[3]), .ZN(n142) );
  OAI21D0BWP12T30P140 U147 ( .A1(n142), .A2(n143), .B(DI[2]), .ZN(n138) );
  OAI21D0BWP12T30P140 U148 ( .A1(n142), .A2(n145), .B(n138), .ZN(n110) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(DO[0]), .I1(rDO[0]), .S(n167), .Z(n55) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(DO[6]), .I1(rDO[6]), .S(n167), .Z(n67) );
  OAI21D0BWP12T30P140 U151 ( .A1(n142), .A2(n139), .B(DI[3]), .ZN(n140) );
  OAI21D0BWP12T30P140 U152 ( .A1(n142), .A2(n141), .B(n140), .ZN(n111) );
  NR2D0BWP12T30P140 U153 ( .A1(BC[0]), .A2(SSP_Rst), .ZN(nxt_BC[0]) );
  OAI21D0BWP12T30P140 U154 ( .A1(n155), .A2(n143), .B(DI[6]), .ZN(n144) );
  OAI21D0BWP12T30P140 U155 ( .A1(n155), .A2(n145), .B(n144), .ZN(n114) );
  INVD0BWP12T30P140 U156 ( .I(Rst), .ZN(n54) );
  ND2D0BWP12T30P140 U157 ( .A1(SSEL), .A2(n54), .ZN(n170) );
  NR2D0BWP12T30P140 U158 ( .A1(n146), .A2(n170), .ZN(n148) );
  NR2D0BWP12T30P140 U159 ( .A1(n148), .A2(n170), .ZN(n147) );
  AO22D0BWP12T30P140 U160 ( .A1(n148), .A2(RA[0]), .B1(n147), .B2(RDI[13]), 
        .Z(n106) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(DO[8]), .I1(rDO[8]), .S(n167), .Z(n71) );
  AO22D0BWP12T30P140 U162 ( .A1(n148), .A2(RA[2]), .B1(n147), .B2(RDI[15]), 
        .Z(n108) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(DO[7]), .I1(rDO[7]), .S(n167), .Z(n69) );
  CKMUX2D0BWP12T30P140 U164 ( .I0(DO[3]), .I1(rDO[3]), .S(n167), .Z(n61) );
  CKMUX2D0BWP12T30P140 U165 ( .I0(DO[4]), .I1(rDO[4]), .S(n167), .Z(n63) );
  CKMUX2D0BWP12T30P140 U166 ( .I0(DO[1]), .I1(rDO[1]), .S(n167), .Z(n57) );
  AO22D0BWP12T30P140 U167 ( .A1(n148), .A2(RA[1]), .B1(n147), .B2(RDI[14]), 
        .Z(n107) );
  CKMUX2D0BWP12T30P140 U168 ( .I0(DO[11]), .I1(rDO[11]), .S(n167), .Z(n77) );
  CKMUX2D0BWP12T30P140 U169 ( .I0(DO[9]), .I1(rDO[9]), .S(n167), .Z(n73) );
  CKMUX2D0BWP12T30P140 U170 ( .I0(DO[10]), .I1(rDO[10]), .S(n167), .Z(n75) );
  CKBD0BWP12T30P140 U171 ( .I(SCK), .Z(n177) );
  INVD0BWP12T30P140 U172 ( .I(SSP_Rst), .ZN(n99) );
  INVD0BWP12T30P140 U173 ( .I(n170), .ZN(n78) );
  INVD0BWP12T30P140 U174 ( .I(n149), .ZN(n150) );
  AOI22D0BWP12T30P140 U175 ( .A1(rDO[6]), .A2(n151), .B1(n150), .B2(rDO[4]), 
        .ZN(n157) );
  INVD0BWP12T30P140 U176 ( .I(n152), .ZN(n153) );
  AOI22D0BWP12T30P140 U177 ( .A1(rDO[7]), .A2(n154), .B1(rDO[5]), .B2(n153), 
        .ZN(n156) );
  AO21D0BWP12T30P140 U178 ( .A1(n157), .A2(n156), .B(n155), .Z(n165) );
  AOI22D0BWP12T30P140 U179 ( .A1(BC[3]), .A2(rDO[1]), .B1(rDO[9]), .B2(n174), 
        .ZN(n159) );
  AOI221D0BWP12T30P140 U180 ( .A1(rDO[3]), .A2(BC[3]), .B1(rDO[11]), .B2(n174), 
        .C(BC[1]), .ZN(n158) );
  AOI211D0BWP12T30P140 U181 ( .A1(BC[1]), .A2(n159), .B(BC[0]), .C(n158), .ZN(
        n163) );
  AOI22D0BWP12T30P140 U182 ( .A1(BC[3]), .A2(rDO[0]), .B1(rDO[8]), .B2(n174), 
        .ZN(n161) );
  AOI221D0BWP12T30P140 U183 ( .A1(rDO[2]), .A2(BC[3]), .B1(rDO[10]), .B2(n174), 
        .C(BC[1]), .ZN(n160) );
  AOI211D0BWP12T30P140 U184 ( .A1(BC[1]), .A2(n161), .B(n160), .C(n175), .ZN(
        n162) );
  OAI21D0BWP12T30P140 U185 ( .A1(n163), .A2(n162), .B(BC[2]), .ZN(n164) );
  OAI211D0BWP12T30P140 U186 ( .A1(En), .A2(n166), .B(n165), .C(n164), .ZN(MISO) );
  AOI22D0BWP12T30P140 U187 ( .A1(n168), .A2(RDI[12]), .B1(WnR[0]), .B2(n167), 
        .ZN(n169) );
  NR3D0BWP12T30P140 U188 ( .A1(EOC), .A2(n170), .A3(n169), .ZN(nxt_WnR) );
  INR3D1BWP12T30P140 U189 ( .A1(nxt_BC[0]), .B1(n174), .B2(n171), .ZN(nxt_EOC)
         );
endmodule

