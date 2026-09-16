/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:37:31 2026
/////////////////////////////////////////////////////////////


module LIFObuffer ( dataIn, RW, EN, Rst, Clk, EMPTY, FULL, dataOut );
  input [3:0] dataIn;
  output [3:0] dataOut;
  input RW, EN, Rst, Clk;
  output EMPTY, FULL;
  wire   n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153;
  wire   [2:0] SP;
  wire   [15:0] stack_mem;

  DFQD2BWP12T30P140 FULL_reg ( .D(n69), .CP(Clk), .Q(FULL) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n75), .CP(Clk), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n74), .CP(Clk), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n73), .CP(Clk), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n72), .CP(Clk), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 EMPTY_reg ( .D(n70), .CP(Clk), .Q(EMPTY) );
  DFQD2BWP12T30P140 stack_mem_reg_0__3_ ( .D(n76), .CP(Clk), .Q(stack_mem[15])
         );
  DFQD2BWP12T30P140 stack_mem_reg_1__0_ ( .D(n89), .CP(Clk), .Q(stack_mem[8])
         );
  DFQD2BWP12T30P140 stack_mem_reg_1__1_ ( .D(n85), .CP(Clk), .Q(stack_mem[9])
         );
  DFQD2BWP12T30P140 stack_mem_reg_1__2_ ( .D(n81), .CP(Clk), .Q(stack_mem[10])
         );
  DFQD2BWP12T30P140 stack_mem_reg_1__3_ ( .D(n77), .CP(Clk), .Q(stack_mem[11])
         );
  DFQD2BWP12T30P140 SP_reg_2_ ( .D(n92), .CP(Clk), .Q(SP[2]) );
  DFQD2BWP12T30P140 stack_mem_reg_0__0_ ( .D(n88), .CP(n153), .Q(stack_mem[12]) );
  DFQD2BWP12T30P140 stack_mem_reg_0__1_ ( .D(n84), .CP(n153), .Q(stack_mem[13]) );
  DFQD2BWP12T30P140 stack_mem_reg_3__1_ ( .D(n87), .CP(n153), .Q(stack_mem[1])
         );
  DFQD2BWP12T30P140 stack_mem_reg_3__2_ ( .D(n83), .CP(n153), .Q(stack_mem[2])
         );
  DFQD2BWP12T30P140 stack_mem_reg_3__3_ ( .D(n79), .CP(n153), .Q(stack_mem[3])
         );
  DFQD2BWP12T30P140 stack_mem_reg_3__0_ ( .D(n91), .CP(n153), .Q(stack_mem[0])
         );
  DFQD2BWP12T30P140 stack_mem_reg_2__0_ ( .D(n90), .CP(n153), .Q(stack_mem[4])
         );
  DFQD2BWP12T30P140 stack_mem_reg_2__1_ ( .D(n86), .CP(n153), .Q(stack_mem[5])
         );
  DFQD2BWP12T30P140 stack_mem_reg_2__2_ ( .D(n82), .CP(n153), .Q(stack_mem[6])
         );
  DFQD2BWP12T30P140 stack_mem_reg_2__3_ ( .D(n78), .CP(n153), .Q(stack_mem[7])
         );
  DFQD2BWP12T30P140 SP_reg_0_ ( .D(n93), .CP(Clk), .Q(SP[0]) );
  DFQD1BWP12T30P140 stack_mem_reg_0__2_ ( .D(n80), .CP(n153), .Q(stack_mem[14]) );
  DFQD1BWP12T30P140 SP_reg_1_ ( .D(n71), .CP(n153), .Q(SP[1]) );
  INVD0BWP12T30P140 U96 ( .I(SP[0]), .ZN(n142) );
  NR2D0BWP12T30P140 U97 ( .A1(SP[1]), .A2(n142), .ZN(n105) );
  INVD0BWP12T30P140 U98 ( .I(SP[1]), .ZN(n132) );
  ND2D0BWP12T30P140 U99 ( .A1(n132), .A2(n142), .ZN(n119) );
  INVD0BWP12T30P140 U100 ( .I(stack_mem[12]), .ZN(n114) );
  ND2D0BWP12T30P140 U101 ( .A1(SP[1]), .A2(SP[0]), .ZN(n112) );
  INVD0BWP12T30P140 U102 ( .I(n112), .ZN(n127) );
  NR2D0BWP12T30P140 U103 ( .A1(SP[0]), .A2(n132), .ZN(n129) );
  AOI22D0BWP12T30P140 U104 ( .A1(n127), .A2(stack_mem[0]), .B1(n129), .B2(
        stack_mem[4]), .ZN(n94) );
  OAI21D0BWP12T30P140 U105 ( .A1(n119), .A2(n114), .B(n94), .ZN(n95) );
  AOI21D0BWP12T30P140 U106 ( .A1(stack_mem[8]), .A2(n105), .B(n95), .ZN(n96)
         );
  INVD0BWP12T30P140 U107 ( .I(Rst), .ZN(n110) );
  ND2D0BWP12T30P140 U108 ( .A1(EN), .A2(n110), .ZN(n145) );
  INVD0BWP12T30P140 U109 ( .I(EN), .ZN(n146) );
  MOAI22D0BWP12T30P140 U110 ( .A1(n96), .A2(n145), .B1(dataOut[0]), .B2(n146), 
        .ZN(n75) );
  INVD0BWP12T30P140 U111 ( .I(stack_mem[13]), .ZN(n115) );
  AOI22D0BWP12T30P140 U112 ( .A1(n127), .A2(stack_mem[1]), .B1(n129), .B2(
        stack_mem[5]), .ZN(n97) );
  OAI21D0BWP12T30P140 U113 ( .A1(n119), .A2(n115), .B(n97), .ZN(n98) );
  AOI21D0BWP12T30P140 U114 ( .A1(stack_mem[9]), .A2(n105), .B(n98), .ZN(n99)
         );
  MOAI22D0BWP12T30P140 U115 ( .A1(n99), .A2(n145), .B1(dataOut[1]), .B2(n146), 
        .ZN(n74) );
  INVD0BWP12T30P140 U116 ( .I(stack_mem[14]), .ZN(n117) );
  AOI22D0BWP12T30P140 U117 ( .A1(n127), .A2(stack_mem[2]), .B1(n129), .B2(
        stack_mem[6]), .ZN(n100) );
  OAI21D0BWP12T30P140 U118 ( .A1(n119), .A2(n117), .B(n100), .ZN(n101) );
  AOI21D0BWP12T30P140 U119 ( .A1(stack_mem[10]), .A2(n105), .B(n101), .ZN(n102) );
  MOAI22D0BWP12T30P140 U120 ( .A1(n102), .A2(n145), .B1(dataOut[2]), .B2(n146), 
        .ZN(n73) );
  INVD0BWP12T30P140 U121 ( .I(stack_mem[15]), .ZN(n107) );
  AOI22D0BWP12T30P140 U122 ( .A1(n127), .A2(stack_mem[3]), .B1(n129), .B2(
        stack_mem[7]), .ZN(n103) );
  OAI21D0BWP12T30P140 U123 ( .A1(n119), .A2(n107), .B(n103), .ZN(n104) );
  AOI21D0BWP12T30P140 U124 ( .A1(stack_mem[11]), .A2(n105), .B(n104), .ZN(n106) );
  MOAI22D0BWP12T30P140 U125 ( .A1(n106), .A2(n145), .B1(dataOut[3]), .B2(n146), 
        .ZN(n72) );
  INVD0BWP12T30P140 U126 ( .I(RW), .ZN(n128) );
  INVD0BWP12T30P140 U127 ( .I(SP[2]), .ZN(n120) );
  ND2D0BWP12T30P140 U128 ( .A1(n120), .A2(RW), .ZN(n111) );
  INVD0BWP12T30P140 U129 ( .I(n111), .ZN(n130) );
  NR2D0BWP12T30P140 U130 ( .A1(n146), .A2(SP[2]), .ZN(n108) );
  OA221D0BWP12T30P140 U131 ( .A1(n128), .A2(n142), .B1(n130), .B2(SP[0]), .C(
        n108), .Z(n125) );
  NR2D0BWP12T30P140 U132 ( .A1(n110), .A2(n146), .ZN(n124) );
  AOI21D0BWP12T30P140 U133 ( .A1(n125), .A2(n132), .B(n124), .ZN(n118) );
  OAI21D0BWP12T30P140 U134 ( .A1(SP[2]), .A2(n119), .B(n128), .ZN(n109) );
  NR2D0BWP12T30P140 U135 ( .A1(n109), .A2(n145), .ZN(n113) );
  ND2D0BWP12T30P140 U136 ( .A1(n113), .A2(dataIn[3]), .ZN(n139) );
  INVD0BWP12T30P140 U137 ( .I(n118), .ZN(n116) );
  AOI22D0BWP12T30P140 U138 ( .A1(n118), .A2(n107), .B1(n139), .B2(n116), .ZN(
        n76) );
  ND2D0BWP12T30P140 U139 ( .A1(n113), .A2(dataIn[1]), .ZN(n135) );
  OAI22D0BWP12T30P140 U140 ( .A1(n142), .A2(n111), .B1(n109), .B2(SP[0]), .ZN(
        n131) );
  AO31D0BWP12T30P140 U141 ( .A1(n112), .A2(n131), .A3(n108), .B(n124), .Z(n150) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n135), .A2(n150), .B1(n150), .B2(
        stack_mem[9]), .ZN(n85) );
  ND2D0BWP12T30P140 U143 ( .A1(n113), .A2(dataIn[2]), .ZN(n137) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n137), .A2(n150), .B1(n150), .B2(
        stack_mem[10]), .ZN(n81) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n139), .A2(n150), .B1(n150), .B2(
        stack_mem[11]), .ZN(n77) );
  AOI31D0BWP12T30P140 U146 ( .A1(n110), .A2(n111), .A3(n109), .B(n146), .ZN(
        n143) );
  OAI21D0BWP12T30P140 U147 ( .A1(n112), .A2(n111), .B(n110), .ZN(n121) );
  NR2D0BWP12T30P140 U148 ( .A1(n120), .A2(n145), .ZN(n147) );
  AOI22D0BWP12T30P140 U149 ( .A1(EN), .A2(n121), .B1(n147), .B2(n119), .ZN(
        n149) );
  OAI21D0BWP12T30P140 U150 ( .A1(n143), .A2(n120), .B(n149), .ZN(n92) );
  ND2D0BWP12T30P140 U151 ( .A1(n113), .A2(dataIn[0]), .ZN(n151) );
  AOI22D0BWP12T30P140 U152 ( .A1(n118), .A2(n114), .B1(n151), .B2(n116), .ZN(
        n88) );
  AOI22D0BWP12T30P140 U153 ( .A1(n118), .A2(n115), .B1(n135), .B2(n116), .ZN(
        n84) );
  AOI22D0BWP12T30P140 U154 ( .A1(n118), .A2(n117), .B1(n137), .B2(n116), .ZN(
        n80) );
  NR3D0BWP12T30P140 U155 ( .A1(RW), .A2(n120), .A3(n119), .ZN(n122) );
  OAI21D0BWP12T30P140 U156 ( .A1(n122), .A2(n121), .B(EN), .ZN(n141) );
  INVD0BWP12T30P140 U157 ( .I(n141), .ZN(n136) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n136), .A2(n135), .B1(stack_mem[1]), .B2(
        n136), .ZN(n87) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n136), .A2(n137), .B1(stack_mem[2]), .B2(
        n136), .ZN(n83) );
  NR4D0BWP12T30P140 U160 ( .A1(SP[1]), .A2(SP[2]), .A3(RW), .A4(n145), .ZN(
        n123) );
  AO21D0BWP12T30P140 U161 ( .A1(FULL), .A2(n145), .B(n123), .Z(n69) );
  AOI21D0BWP12T30P140 U162 ( .A1(SP[1]), .A2(n125), .B(n124), .ZN(n134) );
  ND2D0BWP12T30P140 U163 ( .A1(n134), .A2(stack_mem[4]), .ZN(n126) );
  OAI21D0BWP12T30P140 U164 ( .A1(n134), .A2(n151), .B(n126), .ZN(n90) );
  AOI222D0BWP12T30P140 U165 ( .A1(n131), .A2(n132), .B1(n130), .B2(n129), .C1(
        n128), .C2(n127), .ZN(n133) );
  OAI22D0BWP12T30P140 U166 ( .A1(n133), .A2(n145), .B1(n143), .B2(n132), .ZN(
        n71) );
  INVD0BWP12T30P140 U167 ( .I(n134), .ZN(n138) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n135), .A2(n138), .B1(n138), .B2(
        stack_mem[5]), .ZN(n86) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n136), .A2(n139), .B1(stack_mem[3]), .B2(
        n136), .ZN(n79) );
  MAOI22D0BWP12T30P140 U170 ( .A1(n137), .A2(n138), .B1(n138), .B2(
        stack_mem[6]), .ZN(n82) );
  MAOI22D0BWP12T30P140 U171 ( .A1(n139), .A2(n138), .B1(n138), .B2(
        stack_mem[7]), .ZN(n78) );
  ND2D0BWP12T30P140 U172 ( .A1(n141), .A2(stack_mem[0]), .ZN(n140) );
  OAI21D0BWP12T30P140 U173 ( .A1(n141), .A2(n151), .B(n140), .ZN(n91) );
  INVD0BWP12T30P140 U174 ( .I(n143), .ZN(n144) );
  OAI32D0BWP12T30P140 U175 ( .A1(SP[0]), .A2(n145), .A3(n144), .B1(n143), .B2(
        n142), .ZN(n93) );
  CKBD0BWP12T30P140 U176 ( .I(Clk), .Z(n153) );
  AOI22D0BWP12T30P140 U177 ( .A1(n147), .A2(RW), .B1(EMPTY), .B2(n146), .ZN(
        n148) );
  ND2D0BWP12T30P140 U178 ( .A1(n149), .A2(n148), .ZN(n70) );
  INVD0BWP12T30P140 U179 ( .I(stack_mem[8]), .ZN(n152) );
  MUX2ND0BWP12T30P140 U180 ( .I0(n152), .I1(n151), .S(n150), .ZN(n89) );
endmodule

