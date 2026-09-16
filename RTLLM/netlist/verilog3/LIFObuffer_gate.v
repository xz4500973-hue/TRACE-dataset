/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:24:55 2026
/////////////////////////////////////////////////////////////


module LIFObuffer ( dataIn, RW, EN, Rst, Clk, EMPTY, FULL, dataOut );
  input [3:0] dataIn;
  output [3:0] dataOut;
  input RW, EN, Rst, Clk;
  output EMPTY, FULL;
  wire   n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119;
  wire   [2:0] sp;
  wire   [15:0] mem;

  DFQD2BWP12T30P140 EMPTY_reg ( .D(n49), .CP(Clk), .Q(EMPTY) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n53), .CP(Clk), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n52), .CP(Clk), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n51), .CP(Clk), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n50), .CP(Clk), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 FULL_reg ( .D(n48), .CP(Clk), .Q(FULL) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n64), .CP(Clk), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n63), .CP(Clk), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n62), .CP(Clk), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n54), .CP(Clk), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n65), .CP(Clk), .Q(mem[12]) );
  DFQD2BWP12T30P140 sp_reg_1_ ( .D(n70), .CP(Clk), .Q(sp[1]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n60), .CP(n119), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n59), .CP(n119), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n68), .CP(n119), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n67), .CP(n119), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n66), .CP(n119), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n56), .CP(n119), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n55), .CP(n119), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n69), .CP(n119), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n61), .CP(n119), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n57), .CP(n119), .Q(mem[4]) );
  DFQD2BWP12T30P140 sp_reg_0_ ( .D(n72), .CP(Clk), .Q(sp[0]) );
  DFQD1BWP12T30P140 mem_reg_1__3_ ( .D(n58), .CP(n119), .Q(mem[11]) );
  DFQD1BWP12T30P140 sp_reg_2_ ( .D(n71), .CP(n119), .Q(sp[2]) );
  INVD0BWP12T30P140 U75 ( .I(EN), .ZN(n95) );
  NR2D0BWP12T30P140 U76 ( .A1(n95), .A2(Rst), .ZN(n88) );
  INVD0BWP12T30P140 U77 ( .I(n88), .ZN(n89) );
  NR2D0BWP12T30P140 U78 ( .A1(sp[0]), .A2(sp[1]), .ZN(n99) );
  ND2D0BWP12T30P140 U79 ( .A1(sp[2]), .A2(n99), .ZN(n96) );
  ND2D0BWP12T30P140 U80 ( .A1(RW), .A2(n96), .ZN(n76) );
  NR2D0BWP12T30P140 U81 ( .A1(n89), .A2(n76), .ZN(n115) );
  INVD0BWP12T30P140 U82 ( .I(sp[0]), .ZN(n73) );
  INVD0BWP12T30P140 U83 ( .I(sp[1]), .ZN(n100) );
  NR2D0BWP12T30P140 U84 ( .A1(n73), .A2(n100), .ZN(n102) );
  AOI22D0BWP12T30P140 U85 ( .A1(n99), .A2(mem[12]), .B1(n102), .B2(mem[0]), 
        .ZN(n75) );
  NR2D0BWP12T30P140 U86 ( .A1(sp[1]), .A2(n73), .ZN(n114) );
  NR2D0BWP12T30P140 U87 ( .A1(sp[0]), .A2(n100), .ZN(n92) );
  AOI22D0BWP12T30P140 U88 ( .A1(n114), .A2(mem[8]), .B1(n92), .B2(mem[4]), 
        .ZN(n74) );
  ND2D0BWP12T30P140 U89 ( .A1(n75), .A2(n74), .ZN(n77) );
  IAO21D0BWP12T30P140 U90 ( .A1(n95), .A2(n76), .B(Rst), .ZN(n86) );
  AO22D0BWP12T30P140 U91 ( .A1(n115), .A2(n77), .B1(dataOut[0]), .B2(n86), .Z(
        n53) );
  AOI22D0BWP12T30P140 U92 ( .A1(n99), .A2(mem[13]), .B1(n102), .B2(mem[1]), 
        .ZN(n79) );
  AOI22D0BWP12T30P140 U93 ( .A1(n114), .A2(mem[9]), .B1(n92), .B2(mem[5]), 
        .ZN(n78) );
  ND2D0BWP12T30P140 U94 ( .A1(n79), .A2(n78), .ZN(n80) );
  AO22D0BWP12T30P140 U95 ( .A1(n115), .A2(n80), .B1(dataOut[1]), .B2(n86), .Z(
        n52) );
  AOI22D0BWP12T30P140 U96 ( .A1(n99), .A2(mem[14]), .B1(n102), .B2(mem[2]), 
        .ZN(n82) );
  AOI22D0BWP12T30P140 U97 ( .A1(n114), .A2(mem[10]), .B1(n92), .B2(mem[6]), 
        .ZN(n81) );
  ND2D0BWP12T30P140 U98 ( .A1(n82), .A2(n81), .ZN(n83) );
  AO22D0BWP12T30P140 U99 ( .A1(n115), .A2(n83), .B1(dataOut[2]), .B2(n86), .Z(
        n51) );
  AOI22D0BWP12T30P140 U100 ( .A1(n99), .A2(mem[15]), .B1(n102), .B2(mem[3]), 
        .ZN(n85) );
  AOI22D0BWP12T30P140 U101 ( .A1(n114), .A2(mem[11]), .B1(n92), .B2(mem[7]), 
        .ZN(n84) );
  ND2D0BWP12T30P140 U102 ( .A1(n85), .A2(n84), .ZN(n87) );
  AO22D0BWP12T30P140 U103 ( .A1(n115), .A2(n87), .B1(dataOut[3]), .B2(n86), 
        .Z(n50) );
  INVD0BWP12T30P140 U104 ( .I(sp[2]), .ZN(n104) );
  AN2D0BWP12T30P140 U105 ( .A1(n99), .A2(n104), .Z(n90) );
  NR2D0BWP12T30P140 U106 ( .A1(Rst), .A2(EN), .ZN(n98) );
  AO22D0BWP12T30P140 U107 ( .A1(n88), .A2(n90), .B1(n98), .B2(FULL), .Z(n48)
         );
  NR3D0BWP12T30P140 U108 ( .A1(RW), .A2(n90), .A3(n89), .ZN(n101) );
  INVD0BWP12T30P140 U109 ( .I(n101), .ZN(n111) );
  NR2D0BWP12T30P140 U110 ( .A1(sp[2]), .A2(n111), .ZN(n93) );
  AN2D0BWP12T30P140 U111 ( .A1(n114), .A2(n93), .Z(n91) );
  INVD0BWP12T30P140 U112 ( .I(dataIn[1]), .ZN(n109) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n91), .A2(n109), .B1(mem[13]), .B2(n91), 
        .ZN(n64) );
  INVD0BWP12T30P140 U114 ( .I(dataIn[2]), .ZN(n97) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n91), .A2(n97), .B1(mem[14]), .B2(n91), .ZN(
        n63) );
  INVD0BWP12T30P140 U116 ( .I(dataIn[3]), .ZN(n106) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n91), .A2(n106), .B1(mem[15]), .B2(n91), 
        .ZN(n62) );
  AN2D0BWP12T30P140 U118 ( .A1(n102), .A2(n93), .Z(n110) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n110), .A2(n106), .B1(mem[7]), .B2(n110), 
        .ZN(n54) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(mem[12]), .I1(dataIn[0]), .S(n91), .Z(n65)
         );
  AN2D0BWP12T30P140 U121 ( .A1(n93), .A2(n92), .Z(n108) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n108), .A2(n109), .B1(mem[9]), .B2(n108), 
        .ZN(n60) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n108), .A2(n97), .B1(mem[10]), .B2(n108), 
        .ZN(n59) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n108), .A2(n106), .B1(mem[11]), .B2(n108), 
        .ZN(n58) );
  ND2D0BWP12T30P140 U125 ( .A1(n99), .A2(n101), .ZN(n117) );
  INVD0BWP12T30P140 U126 ( .I(n117), .ZN(n107) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n107), .A2(n109), .B1(mem[1]), .B2(n107), 
        .ZN(n68) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n107), .A2(n97), .B1(mem[2]), .B2(n107), 
        .ZN(n67) );
  AOI21D0BWP12T30P140 U129 ( .A1(EMPTY), .A2(n95), .B(Rst), .ZN(n94) );
  OAI21D0BWP12T30P140 U130 ( .A1(n96), .A2(n95), .B(n94), .ZN(n49) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n110), .A2(n97), .B1(mem[6]), .B2(n110), 
        .ZN(n55) );
  AOI21D0BWP12T30P140 U132 ( .A1(RW), .A2(n99), .B(n98), .ZN(n113) );
  NR2D0BWP12T30P140 U133 ( .A1(sp[0]), .A2(n115), .ZN(n112) );
  AOI32D0BWP12T30P140 U134 ( .A1(sp[0]), .A2(n113), .A3(n111), .B1(n112), .B2(
        n113), .ZN(n116) );
  AOI221D0BWP12T30P140 U135 ( .A1(n101), .A2(sp[1]), .B1(n115), .B2(n100), .C(
        n116), .ZN(n105) );
  AOI31D0BWP12T30P140 U136 ( .A1(n115), .A2(n102), .A3(n104), .B(Rst), .ZN(
        n103) );
  OAI21D0BWP12T30P140 U137 ( .A1(n105), .A2(n104), .B(n103), .ZN(n71) );
  OA22D0BWP12T30P140 U138 ( .A1(n117), .A2(dataIn[0]), .B1(mem[0]), .B2(n107), 
        .Z(n69) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n107), .A2(n106), .B1(mem[3]), .B2(n107), 
        .ZN(n66) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(mem[8]), .I1(dataIn[0]), .S(n108), .Z(n61)
         );
  CKMUX2D0BWP12T30P140 U141 ( .I0(mem[4]), .I1(dataIn[0]), .S(n110), .Z(n57)
         );
  MAOI22D0BWP12T30P140 U142 ( .A1(n110), .A2(n109), .B1(mem[5]), .B2(n110), 
        .ZN(n56) );
  AOI22D0BWP12T30P140 U143 ( .A1(sp[0]), .A2(n113), .B1(n112), .B2(n111), .ZN(
        n72) );
  CKBD0BWP12T30P140 U144 ( .I(Clk), .Z(n119) );
  AOI22D0BWP12T30P140 U145 ( .A1(sp[1]), .A2(n116), .B1(n115), .B2(n114), .ZN(
        n118) );
  ND2D0BWP12T30P140 U146 ( .A1(n118), .A2(n117), .ZN(n70) );
endmodule

