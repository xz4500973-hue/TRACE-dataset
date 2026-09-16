/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:01:13 2026
/////////////////////////////////////////////////////////////


module LIFObuffer ( dataIn, RW, EN, Rst, Clk, EMPTY, FULL, dataOut );
  input [3:0] dataIn;
  output [3:0] dataOut;
  input RW, EN, Rst, Clk;
  output EMPTY, FULL;
  wire   stack_mem_0__3_, stack_mem_0__2_, stack_mem_0__1_, stack_mem_0__0_,
         stack_mem_1__3_, stack_mem_1__2_, stack_mem_1__1_, stack_mem_1__0_,
         stack_mem_2__3_, stack_mem_2__2_, stack_mem_2__1_, stack_mem_2__0_,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95;
  wire   [1:0] SP;

  DFQD2BWP12T30P140 EMPTY_reg ( .D(n40), .CP(Clk), .Q(EMPTY) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n44), .CP(Clk), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n43), .CP(Clk), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n42), .CP(Clk), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n41), .CP(Clk), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 FULL_reg ( .D(n59), .CP(Clk), .Q(FULL) );
  DFQD2BWP12T30P140 stack_mem_reg_1__0_ ( .D(n54), .CP(Clk), .Q(
        stack_mem_1__0_) );
  DFQD2BWP12T30P140 stack_mem_reg_2__0_ ( .D(n56), .CP(Clk), .Q(
        stack_mem_2__0_) );
  DFQD2BWP12T30P140 stack_mem_reg_2__1_ ( .D(n53), .CP(Clk), .Q(
        stack_mem_2__1_) );
  DFQD2BWP12T30P140 stack_mem_reg_2__2_ ( .D(n50), .CP(Clk), .Q(
        stack_mem_2__2_) );
  DFQD2BWP12T30P140 stack_mem_reg_2__3_ ( .D(n47), .CP(Clk), .Q(
        stack_mem_2__3_) );
  DFQD2BWP12T30P140 stack_mem_reg_0__0_ ( .D(n55), .CP(Clk), .Q(
        stack_mem_0__0_) );
  DFQD2BWP12T30P140 stack_mem_reg_0__1_ ( .D(n52), .CP(Clk), .Q(
        stack_mem_0__1_) );
  DFQD2BWP12T30P140 stack_mem_reg_0__2_ ( .D(n49), .CP(Clk), .Q(
        stack_mem_0__2_) );
  DFQD2BWP12T30P140 stack_mem_reg_1__1_ ( .D(n51), .CP(Clk), .Q(
        stack_mem_1__1_) );
  DFQD2BWP12T30P140 stack_mem_reg_1__2_ ( .D(n48), .CP(Clk), .Q(
        stack_mem_1__2_) );
  DFQD2BWP12T30P140 stack_mem_reg_1__3_ ( .D(n45), .CP(Clk), .Q(
        stack_mem_1__3_) );
  DFQD2BWP12T30P140 SP_reg_1_ ( .D(n58), .CP(Clk), .Q(SP[1]) );
  DFQD1BWP12T30P140 stack_mem_reg_0__3_ ( .D(n46), .CP(Clk), .Q(
        stack_mem_0__3_) );
  DFQD1BWP12T30P140 SP_reg_0_ ( .D(n57), .CP(Clk), .Q(SP[0]) );
  INVD0BWP12T30P140 U62 ( .I(EMPTY), .ZN(n66) );
  AN2D0BWP12T30P140 U63 ( .A1(RW), .A2(n66), .Z(n77) );
  AOI21D0BWP12T30P140 U64 ( .A1(EN), .A2(n77), .B(Rst), .ZN(n90) );
  NR2D0BWP12T30P140 U65 ( .A1(RW), .A2(FULL), .ZN(n76) );
  ND2D0BWP12T30P140 U66 ( .A1(EN), .A2(n76), .ZN(n62) );
  ND2D0BWP12T30P140 U67 ( .A1(n90), .A2(n62), .ZN(n78) );
  INVD0BWP12T30P140 U68 ( .I(SP[0]), .ZN(n69) );
  IND2D1BWP12T30P140 U69 ( .A1(Rst), .B1(EN), .ZN(n81) );
  INVD0BWP12T30P140 U70 ( .I(n81), .ZN(n61) );
  OAI211D0BWP12T30P140 U71 ( .A1(n76), .A2(n77), .B(n61), .C(n69), .ZN(n60) );
  OAI21D0BWP12T30P140 U72 ( .A1(n78), .A2(n69), .B(n60), .ZN(n57) );
  ND2D0BWP12T30P140 U73 ( .A1(n61), .A2(SP[0]), .ZN(n83) );
  INVD0BWP12T30P140 U74 ( .I(n83), .ZN(n64) );
  INVD0BWP12T30P140 U75 ( .I(SP[1]), .ZN(n80) );
  INR2D1BWP12T30P140 U76 ( .A1(n76), .B1(n80), .ZN(n63) );
  AO22D0BWP12T30P140 U77 ( .A1(FULL), .A2(n90), .B1(n64), .B2(n63), .Z(n59) );
  NR2D0BWP12T30P140 U78 ( .A1(SP[1]), .A2(n62), .ZN(n70) );
  AOI21D0BWP12T30P140 U79 ( .A1(SP[0]), .A2(n70), .B(Rst), .ZN(n74) );
  NR2D0BWP12T30P140 U80 ( .A1(n74), .A2(n81), .ZN(n73) );
  AO22D0BWP12T30P140 U81 ( .A1(dataIn[0]), .A2(n73), .B1(n74), .B2(
        stack_mem_1__0_), .Z(n54) );
  AOI31D0BWP12T30P140 U82 ( .A1(EN), .A2(n63), .A3(n69), .B(Rst), .ZN(n67) );
  NR2D0BWP12T30P140 U83 ( .A1(n67), .A2(n81), .ZN(n68) );
  AO22D0BWP12T30P140 U84 ( .A1(dataIn[0]), .A2(n68), .B1(stack_mem_2__0_), 
        .B2(n67), .Z(n56) );
  AO22D0BWP12T30P140 U85 ( .A1(dataIn[1]), .A2(n68), .B1(stack_mem_2__1_), 
        .B2(n67), .Z(n53) );
  AO22D0BWP12T30P140 U86 ( .A1(dataIn[2]), .A2(n68), .B1(stack_mem_2__2_), 
        .B2(n67), .Z(n50) );
  AOI31D0BWP12T30P140 U87 ( .A1(n77), .A2(n64), .A3(n80), .B(Rst), .ZN(n65) );
  OAI21D0BWP12T30P140 U88 ( .A1(n66), .A2(n78), .B(n65), .ZN(n40) );
  AO22D0BWP12T30P140 U89 ( .A1(dataIn[3]), .A2(n68), .B1(stack_mem_2__3_), 
        .B2(n67), .Z(n47) );
  AOI21D0BWP12T30P140 U90 ( .A1(n70), .A2(n69), .B(Rst), .ZN(n72) );
  NR2D0BWP12T30P140 U91 ( .A1(n72), .A2(n81), .ZN(n71) );
  AO22D0BWP12T30P140 U92 ( .A1(n72), .A2(stack_mem_0__0_), .B1(n71), .B2(
        dataIn[0]), .Z(n55) );
  AO22D0BWP12T30P140 U93 ( .A1(n72), .A2(stack_mem_0__1_), .B1(n71), .B2(
        dataIn[1]), .Z(n52) );
  AO22D0BWP12T30P140 U94 ( .A1(n72), .A2(stack_mem_0__2_), .B1(n71), .B2(
        dataIn[2]), .Z(n49) );
  AO22D0BWP12T30P140 U95 ( .A1(n72), .A2(stack_mem_0__3_), .B1(n71), .B2(
        dataIn[3]), .Z(n46) );
  AO22D0BWP12T30P140 U96 ( .A1(n74), .A2(stack_mem_1__1_), .B1(n73), .B2(
        dataIn[1]), .Z(n51) );
  AO22D0BWP12T30P140 U97 ( .A1(n74), .A2(stack_mem_1__2_), .B1(n73), .B2(
        dataIn[2]), .Z(n48) );
  AO22D0BWP12T30P140 U98 ( .A1(n74), .A2(stack_mem_1__3_), .B1(n73), .B2(
        dataIn[3]), .Z(n45) );
  CKXOR2D0BWP12T30P140 U99 ( .A1(SP[0]), .A2(SP[1]), .Z(n75) );
  MUX2ND0BWP12T30P140 U100 ( .I0(n77), .I1(n76), .S(n75), .ZN(n79) );
  OAI22D0BWP12T30P140 U101 ( .A1(n81), .A2(n79), .B1(n80), .B2(n78), .ZN(n58)
         );
  OR2D0BWP12T30P140 U102 ( .A1(n90), .A2(n80), .Z(n82) );
  NR3D0BWP12T30P140 U103 ( .A1(SP[0]), .A2(n81), .A3(n82), .ZN(n91) );
  AOI22D0BWP12T30P140 U104 ( .A1(stack_mem_1__0_), .A2(n91), .B1(n90), .B2(
        dataOut[0]), .ZN(n85) );
  NR3D0BWP12T30P140 U105 ( .A1(SP[1]), .A2(n90), .A3(n83), .ZN(n93) );
  NR2D0BWP12T30P140 U106 ( .A1(n83), .A2(n82), .ZN(n92) );
  AOI22D0BWP12T30P140 U107 ( .A1(stack_mem_0__0_), .A2(n93), .B1(n92), .B2(
        stack_mem_2__0_), .ZN(n84) );
  ND2D0BWP12T30P140 U108 ( .A1(n85), .A2(n84), .ZN(n44) );
  AOI22D0BWP12T30P140 U109 ( .A1(stack_mem_1__1_), .A2(n91), .B1(n90), .B2(
        dataOut[1]), .ZN(n87) );
  AOI22D0BWP12T30P140 U110 ( .A1(stack_mem_0__1_), .A2(n93), .B1(n92), .B2(
        stack_mem_2__1_), .ZN(n86) );
  ND2D0BWP12T30P140 U111 ( .A1(n87), .A2(n86), .ZN(n43) );
  AOI22D0BWP12T30P140 U112 ( .A1(stack_mem_1__2_), .A2(n91), .B1(n90), .B2(
        dataOut[2]), .ZN(n89) );
  AOI22D0BWP12T30P140 U113 ( .A1(stack_mem_0__2_), .A2(n93), .B1(n92), .B2(
        stack_mem_2__2_), .ZN(n88) );
  ND2D0BWP12T30P140 U114 ( .A1(n89), .A2(n88), .ZN(n42) );
  AOI22D0BWP12T30P140 U115 ( .A1(stack_mem_1__3_), .A2(n91), .B1(n90), .B2(
        dataOut[3]), .ZN(n95) );
  AOI22D0BWP12T30P140 U116 ( .A1(stack_mem_0__3_), .A2(n93), .B1(n92), .B2(
        stack_mem_2__3_), .ZN(n94) );
  ND2D0BWP12T30P140 U117 ( .A1(n95), .A2(n94), .ZN(n41) );
endmodule

