/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:47:34 2026
/////////////////////////////////////////////////////////////


module LIFObuffer ( dataIn, RW, EN, Rst, Clk, EMPTY, FULL, dataOut );
  input [3:0] dataIn;
  output [3:0] dataOut;
  input RW, EN, Rst, Clk;
  output EMPTY, FULL;
  wire   n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [2:0] cnt;
  wire   [15:0] mem;

  DFQD2BWP12T30P140 EMPTY_reg ( .D(n52), .CP(Clk), .Q(EMPTY) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n57), .CP(Clk), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n56), .CP(Clk), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n55), .CP(Clk), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n54), .CP(Clk), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 FULL_reg ( .D(n53), .CP(Clk), .Q(FULL) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n74), .CP(Clk), .Q(cnt[1]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n58), .CP(Clk), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n71), .CP(Clk), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n67), .CP(Clk), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n63), .CP(Clk), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n59), .CP(Clk), .Q(mem[11]) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n76), .CP(Clk), .Q(cnt[0]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n70), .CP(n127), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n62), .CP(n127), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n73), .CP(n127), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n69), .CP(n127), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n65), .CP(n127), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n61), .CP(n127), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n72), .CP(n127), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n68), .CP(n127), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n64), .CP(n127), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n60), .CP(n127), .Q(mem[15]) );
  DFQD1BWP12T30P140 mem_reg_2__1_ ( .D(n66), .CP(n127), .Q(mem[5]) );
  DFQD1BWP12T30P140 cnt_reg_2_ ( .D(n75), .CP(n127), .Q(cnt[2]) );
  INVD0BWP12T30P140 U79 ( .I(cnt[0]), .ZN(n104) );
  INVD0BWP12T30P140 U80 ( .I(cnt[1]), .ZN(n114) );
  INVD0BWP12T30P140 U81 ( .I(cnt[2]), .ZN(n81) );
  OAI211D0BWP12T30P140 U82 ( .A1(RW), .A2(n104), .B(n114), .C(n81), .ZN(n78)
         );
  INVD0BWP12T30P140 U83 ( .I(EN), .ZN(n80) );
  AOI21D0BWP12T30P140 U84 ( .A1(EMPTY), .A2(n80), .B(Rst), .ZN(n77) );
  OAI21D0BWP12T30P140 U85 ( .A1(n78), .A2(n80), .B(n77), .ZN(n52) );
  NR2D0BWP12T30P140 U86 ( .A1(Rst), .A2(n80), .ZN(n99) );
  ND2D0BWP12T30P140 U87 ( .A1(n114), .A2(n104), .ZN(n110) );
  OAI21D0BWP12T30P140 U88 ( .A1(cnt[2]), .A2(n110), .B(RW), .ZN(n79) );
  IAO21D0BWP12T30P140 U89 ( .A1(n80), .A2(n79), .B(Rst), .ZN(n98) );
  INVD0BWP12T30P140 U90 ( .I(n98), .ZN(n83) );
  NR2D0BWP12T30P140 U91 ( .A1(Rst), .A2(EN), .ZN(n101) );
  NR3D0BWP12T30P140 U92 ( .A1(cnt[2]), .A2(RW), .A3(n101), .ZN(n120) );
  NR2D0BWP12T30P140 U93 ( .A1(n83), .A2(n120), .ZN(n105) );
  AOI21D0BWP12T30P140 U94 ( .A1(n99), .A2(n110), .B(n105), .ZN(n82) );
  NR2D0BWP12T30P140 U95 ( .A1(n114), .A2(n104), .ZN(n106) );
  NR2D0BWP12T30P140 U96 ( .A1(cnt[2]), .A2(RW), .ZN(n112) );
  ND3D0BWP12T30P140 U97 ( .A1(n106), .A2(n99), .A3(n112), .ZN(n103) );
  OAI21D0BWP12T30P140 U98 ( .A1(n82), .A2(n81), .B(n103), .ZN(n75) );
  ND2D0BWP12T30P140 U99 ( .A1(n99), .A2(dataIn[2]), .ZN(n122) );
  AO21D0BWP12T30P140 U100 ( .A1(n106), .A2(n120), .B(Rst), .Z(n118) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n122), .A2(n118), .B1(n118), .B2(mem[2]), 
        .ZN(n65) );
  ND2D0BWP12T30P140 U102 ( .A1(n99), .A2(dataIn[3]), .ZN(n126) );
  INVD0BWP12T30P140 U103 ( .I(n110), .ZN(n100) );
  AO21D0BWP12T30P140 U104 ( .A1(n100), .A2(n120), .B(Rst), .Z(n93) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n126), .A2(n93), .B1(n93), .B2(mem[15]), 
        .ZN(n60) );
  AOI22D0BWP12T30P140 U106 ( .A1(n106), .A2(mem[4]), .B1(n100), .B2(mem[0]), 
        .ZN(n85) );
  NR2D0BWP12T30P140 U107 ( .A1(cnt[0]), .A2(n114), .ZN(n117) );
  NR2D0BWP12T30P140 U108 ( .A1(cnt[1]), .A2(n104), .ZN(n119) );
  AOI22D0BWP12T30P140 U109 ( .A1(n117), .A2(mem[8]), .B1(n119), .B2(mem[12]), 
        .ZN(n84) );
  ND2D0BWP12T30P140 U110 ( .A1(n99), .A2(n83), .ZN(n94) );
  AOI21D0BWP12T30P140 U111 ( .A1(n85), .A2(n84), .B(n94), .ZN(n86) );
  AO21D0BWP12T30P140 U112 ( .A1(dataOut[0]), .A2(n98), .B(n86), .Z(n57) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n122), .A2(n93), .B1(n93), .B2(mem[14]), 
        .ZN(n64) );
  AOI22D0BWP12T30P140 U114 ( .A1(n106), .A2(mem[5]), .B1(n100), .B2(mem[1]), 
        .ZN(n88) );
  AOI22D0BWP12T30P140 U115 ( .A1(n117), .A2(mem[9]), .B1(n119), .B2(mem[13]), 
        .ZN(n87) );
  AOI21D0BWP12T30P140 U116 ( .A1(n88), .A2(n87), .B(n94), .ZN(n89) );
  AO21D0BWP12T30P140 U117 ( .A1(dataOut[1]), .A2(n98), .B(n89), .Z(n56) );
  ND2D0BWP12T30P140 U118 ( .A1(n99), .A2(dataIn[1]), .ZN(n121) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n121), .A2(n93), .B1(n93), .B2(mem[13]), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U120 ( .A1(n106), .A2(mem[6]), .B1(n100), .B2(mem[2]), 
        .ZN(n91) );
  AOI22D0BWP12T30P140 U121 ( .A1(n117), .A2(mem[10]), .B1(n119), .B2(mem[14]), 
        .ZN(n90) );
  AOI21D0BWP12T30P140 U122 ( .A1(n91), .A2(n90), .B(n94), .ZN(n92) );
  AO21D0BWP12T30P140 U123 ( .A1(dataOut[2]), .A2(n98), .B(n92), .Z(n55) );
  ND2D0BWP12T30P140 U124 ( .A1(n99), .A2(dataIn[0]), .ZN(n124) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n124), .A2(n93), .B1(n93), .B2(mem[12]), 
        .ZN(n72) );
  AOI22D0BWP12T30P140 U126 ( .A1(n106), .A2(mem[7]), .B1(n100), .B2(mem[3]), 
        .ZN(n96) );
  AOI22D0BWP12T30P140 U127 ( .A1(n117), .A2(mem[11]), .B1(n119), .B2(mem[15]), 
        .ZN(n95) );
  AOI21D0BWP12T30P140 U128 ( .A1(n96), .A2(n95), .B(n94), .ZN(n97) );
  AO21D0BWP12T30P140 U129 ( .A1(dataOut[3]), .A2(n98), .B(n97), .Z(n54) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n126), .A2(n118), .B1(n118), .B2(mem[3]), 
        .ZN(n61) );
  INVD0BWP12T30P140 U131 ( .I(n99), .ZN(n115) );
  ND2D0BWP12T30P140 U132 ( .A1(cnt[2]), .A2(n100), .ZN(n108) );
  ND2D0BWP12T30P140 U133 ( .A1(n101), .A2(FULL), .ZN(n102) );
  OAI211D0BWP12T30P140 U134 ( .A1(n115), .A2(n108), .B(n103), .C(n102), .ZN(
        n53) );
  INVD0BWP12T30P140 U135 ( .I(n105), .ZN(n113) );
  OAI32D0BWP12T30P140 U136 ( .A1(cnt[0]), .A2(n105), .A3(n115), .B1(n113), 
        .B2(n104), .ZN(n76) );
  INVD0BWP12T30P140 U137 ( .I(n106), .ZN(n111) );
  INVD0BWP12T30P140 U138 ( .I(RW), .ZN(n107) );
  AOI21D0BWP12T30P140 U139 ( .A1(n111), .A2(n108), .B(n107), .ZN(n109) );
  AOI31D0BWP12T30P140 U140 ( .A1(n112), .A2(n111), .A3(n110), .B(n109), .ZN(
        n116) );
  OAI22D0BWP12T30P140 U141 ( .A1(n116), .A2(n115), .B1(n114), .B2(n113), .ZN(
        n74) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n121), .A2(n118), .B1(n118), .B2(mem[1]), 
        .ZN(n69) );
  AO21D0BWP12T30P140 U143 ( .A1(n120), .A2(n117), .B(Rst), .Z(n123) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n126), .A2(n123), .B1(n123), .B2(mem[7]), 
        .ZN(n58) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n124), .A2(n118), .B1(n118), .B2(mem[0]), 
        .ZN(n73) );
  AO21D0BWP12T30P140 U146 ( .A1(n120), .A2(n119), .B(Rst), .Z(n125) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n124), .A2(n125), .B1(n125), .B2(mem[8]), 
        .ZN(n71) );
  MAOI22D0BWP12T30P140 U148 ( .A1(n122), .A2(n123), .B1(n123), .B2(mem[6]), 
        .ZN(n62) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n121), .A2(n125), .B1(n125), .B2(mem[9]), 
        .ZN(n67) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n121), .A2(n123), .B1(n123), .B2(mem[5]), 
        .ZN(n66) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n122), .A2(n125), .B1(n125), .B2(mem[10]), 
        .ZN(n63) );
  MAOI22D0BWP12T30P140 U152 ( .A1(n124), .A2(n123), .B1(n123), .B2(mem[4]), 
        .ZN(n70) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n126), .A2(n125), .B1(n125), .B2(mem[11]), 
        .ZN(n59) );
  CKBD0BWP12T30P140 U154 ( .I(Clk), .Z(n127) );
endmodule

