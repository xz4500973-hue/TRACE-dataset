/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:29:08 2026
/////////////////////////////////////////////////////////////


module streamScaler ( clk, rst, dIn, dInValid, nextDin, start, dOut, dOutValid, 
        nextDout, inputDiscardCnt, inputXRes, inputYRes, outputXRes, 
        outputYRes, xScale, yScale, leftOffset, topFracOffset, nearestNeighbor
 );
  input [7:0] dIn;
  output [7:0] dOut;
  input [7:0] inputDiscardCnt;
  input [10:0] inputXRes;
  input [10:0] inputYRes;
  input [10:0] outputXRes;
  input [10:0] outputYRes;
  input [17:0] xScale;
  input [17:0] yScale;
  input [17:0] leftOffset;
  input [17:0] topFracOffset;
  input clk, rst, dInValid, start, nextDout, nearestNeighbor;
  output nextDin, dOutValid;
  wire   N65, N66, N67, N68, N69, N70, N71, N72, N73, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89;
  wire   [1:0] writeState;
  wire   [7:0] discardCountReg;

  DFQD2BWP12T30P140 dOutValid_reg ( .D(N73), .CP(clk), .Q(dOutValid) );
  DFQD2BWP12T30P140 enableNextDin_reg ( .D(n24), .CP(clk), .Q(nextDin) );
  DFQD2BWP12T30P140 dOut_reg_6_ ( .D(N71), .CP(clk), .Q(dOut[6]) );
  DFQD2BWP12T30P140 dOut_reg_4_ ( .D(N69), .CP(clk), .Q(dOut[4]) );
  DFQD2BWP12T30P140 dOut_reg_2_ ( .D(N67), .CP(clk), .Q(dOut[2]) );
  DFQD2BWP12T30P140 dOut_reg_7_ ( .D(N72), .CP(clk), .Q(dOut[7]) );
  DFQD2BWP12T30P140 dOut_reg_5_ ( .D(N70), .CP(clk), .Q(dOut[5]) );
  DFQD2BWP12T30P140 dOut_reg_3_ ( .D(N68), .CP(clk), .Q(dOut[3]) );
  DFQD2BWP12T30P140 discardCountReg_reg_3_ ( .D(n29), .CP(clk), .Q(
        discardCountReg[3]) );
  DFQD2BWP12T30P140 dOut_reg_1_ ( .D(N66), .CP(clk), .Q(dOut[1]) );
  DFQD2BWP12T30P140 writeState_reg_0_ ( .D(n34), .CP(clk), .Q(writeState[0])
         );
  DFQD2BWP12T30P140 dOut_reg_0_ ( .D(N65), .CP(clk), .Q(dOut[0]) );
  DFQD2BWP12T30P140 discardCountReg_reg_2_ ( .D(n30), .CP(clk), .Q(
        discardCountReg[2]) );
  DFQD2BWP12T30P140 discardCountReg_reg_5_ ( .D(n27), .CP(clk), .Q(
        discardCountReg[5]) );
  DFQD2BWP12T30P140 discardCountReg_reg_4_ ( .D(n28), .CP(clk), .Q(
        discardCountReg[4]) );
  DFQD2BWP12T30P140 discardCountReg_reg_6_ ( .D(n26), .CP(clk), .Q(
        discardCountReg[6]) );
  DFQD2BWP12T30P140 discardCountReg_reg_7_ ( .D(n25), .CP(clk), .Q(
        discardCountReg[7]) );
  DFQD2BWP12T30P140 discardCountReg_reg_1_ ( .D(n33), .CP(clk), .Q(
        discardCountReg[1]) );
  DFQD1BWP12T30P140 writeState_reg_1_ ( .D(n32), .CP(clk), .Q(writeState[1])
         );
  DFQD1BWP12T30P140 discardCountReg_reg_0_ ( .D(n31), .CP(clk), .Q(
        discardCountReg[0]) );
  INVD0BWP12T30P140 U47 ( .I(writeState[0]), .ZN(n87) );
  NR4D0BWP12T30P140 U48 ( .A1(rst), .A2(start), .A3(writeState[1]), .A4(n87), 
        .ZN(n35) );
  ND2D0BWP12T30P140 U49 ( .A1(n35), .A2(dInValid), .ZN(n84) );
  NR3D0BWP12T30P140 U50 ( .A1(start), .A2(rst), .A3(writeState[1]), .ZN(n63)
         );
  ND2D0BWP12T30P140 U51 ( .A1(n63), .A2(n87), .ZN(n89) );
  INVD0BWP12T30P140 U52 ( .I(n89), .ZN(n82) );
  NR3D0BWP12T30P140 U53 ( .A1(start), .A2(rst), .A3(n82), .ZN(n53) );
  ND2D0BWP12T30P140 U54 ( .A1(n53), .A2(n84), .ZN(n79) );
  INVD0BWP12T30P140 U55 ( .I(n79), .ZN(n76) );
  AOI22D0BWP12T30P140 U56 ( .A1(n82), .A2(inputDiscardCnt[0]), .B1(
        discardCountReg[0]), .B2(n76), .ZN(n36) );
  OAI21D0BWP12T30P140 U57 ( .A1(discardCountReg[0]), .A2(n84), .B(n36), .ZN(
        n31) );
  ND2D0BWP12T30P140 U58 ( .A1(dOut[1]), .A2(dOut[0]), .ZN(n47) );
  INVD0BWP12T30P140 U59 ( .I(dOut[2]), .ZN(n39) );
  NR2D0BWP12T30P140 U60 ( .A1(n47), .A2(n39), .ZN(n45) );
  ND2D0BWP12T30P140 U61 ( .A1(n45), .A2(dOut[3]), .ZN(n44) );
  INVD0BWP12T30P140 U62 ( .I(dOut[4]), .ZN(n38) );
  NR2D0BWP12T30P140 U63 ( .A1(n44), .A2(n38), .ZN(n43) );
  ND2D0BWP12T30P140 U64 ( .A1(n43), .A2(dOut[5]), .ZN(n42) );
  INVD0BWP12T30P140 U65 ( .I(dOut[6]), .ZN(n37) );
  NR2D0BWP12T30P140 U66 ( .A1(n42), .A2(n37), .ZN(n41) );
  AOI211D0BWP12T30P140 U67 ( .A1(n42), .A2(n37), .B(rst), .C(n41), .ZN(N71) );
  AOI211D0BWP12T30P140 U68 ( .A1(n44), .A2(n38), .B(rst), .C(n43), .ZN(N69) );
  AOI211D0BWP12T30P140 U69 ( .A1(n47), .A2(n39), .B(rst), .C(n45), .ZN(N67) );
  NR2D0BWP12T30P140 U70 ( .A1(dOut[7]), .A2(n41), .ZN(n40) );
  AOI211D0BWP12T30P140 U71 ( .A1(dOut[7]), .A2(n41), .B(rst), .C(n40), .ZN(N72) );
  INVD0BWP12T30P140 U72 ( .I(rst), .ZN(n48) );
  OA211D0BWP12T30P140 U73 ( .A1(n43), .A2(dOut[5]), .B(n48), .C(n42), .Z(N70)
         );
  OA211D0BWP12T30P140 U74 ( .A1(n45), .A2(dOut[3]), .B(n48), .C(n44), .Z(N68)
         );
  NR3D0BWP12T30P140 U75 ( .A1(discardCountReg[2]), .A2(discardCountReg[1]), 
        .A3(discardCountReg[0]), .ZN(n56) );
  INVD0BWP12T30P140 U76 ( .I(discardCountReg[3]), .ZN(n46) );
  ND2D0BWP12T30P140 U77 ( .A1(n56), .A2(n46), .ZN(n68) );
  OAI21D0BWP12T30P140 U78 ( .A1(n56), .A2(n46), .B(n68), .ZN(n55) );
  INVD0BWP12T30P140 U79 ( .I(n84), .ZN(n80) );
  AO222D0BWP12T30P140 U80 ( .A1(n55), .A2(n80), .B1(discardCountReg[3]), .B2(
        n76), .C1(n82), .C2(inputDiscardCnt[3]), .Z(n29) );
  OA211D0BWP12T30P140 U81 ( .A1(dOut[1]), .A2(dOut[0]), .B(n48), .C(n47), .Z(
        N66) );
  AN2D0BWP12T30P140 U82 ( .A1(nextDout), .A2(n48), .Z(N73) );
  NR4D0BWP12T30P140 U83 ( .A1(inputDiscardCnt[3]), .A2(inputDiscardCnt[2]), 
        .A3(inputDiscardCnt[0]), .A4(inputDiscardCnt[1]), .ZN(n50) );
  NR4D0BWP12T30P140 U84 ( .A1(inputDiscardCnt[7]), .A2(inputDiscardCnt[6]), 
        .A3(inputDiscardCnt[5]), .A4(inputDiscardCnt[4]), .ZN(n49) );
  AN2D0BWP12T30P140 U85 ( .A1(n50), .A2(n49), .Z(n64) );
  INVD0BWP12T30P140 U86 ( .I(discardCountReg[2]), .ZN(n60) );
  NR3D0BWP12T30P140 U87 ( .A1(discardCountReg[5]), .A2(discardCountReg[4]), 
        .A3(discardCountReg[1]), .ZN(n51) );
  ND3D0BWP12T30P140 U88 ( .A1(n60), .A2(n51), .A3(discardCountReg[0]), .ZN(n52) );
  OR3D0BWP12T30P140 U89 ( .A1(discardCountReg[6]), .A2(discardCountReg[7]), 
        .A3(n52), .Z(n54) );
  OAI31D0BWP12T30P140 U90 ( .A1(n55), .A2(n84), .A3(n54), .B(n53), .ZN(n66) );
  OAI22D0BWP12T30P140 U91 ( .A1(n64), .A2(n89), .B1(n87), .B2(n66), .ZN(n34)
         );
  NR2D0BWP12T30P140 U92 ( .A1(rst), .A2(dOut[0]), .ZN(N65) );
  OR2D0BWP12T30P140 U93 ( .A1(discardCountReg[1]), .A2(discardCountReg[0]), 
        .Z(n57) );
  AOI21D0BWP12T30P140 U94 ( .A1(discardCountReg[2]), .A2(n57), .B(n56), .ZN(
        n59) );
  INVD0BWP12T30P140 U95 ( .I(inputDiscardCnt[2]), .ZN(n58) );
  OAI222D0BWP12T30P140 U96 ( .A1(n79), .A2(n60), .B1(n84), .B2(n59), .C1(n89), 
        .C2(n58), .ZN(n30) );
  NR2D0BWP12T30P140 U97 ( .A1(discardCountReg[4]), .A2(n68), .ZN(n67) );
  INVD0BWP12T30P140 U98 ( .I(discardCountReg[5]), .ZN(n61) );
  ND2D0BWP12T30P140 U99 ( .A1(n67), .A2(n61), .ZN(n71) );
  OAI21D0BWP12T30P140 U100 ( .A1(n67), .A2(n61), .B(n71), .ZN(n62) );
  AO222D0BWP12T30P140 U101 ( .A1(n62), .A2(n80), .B1(discardCountReg[5]), .B2(
        n76), .C1(n82), .C2(inputDiscardCnt[5]), .Z(n27) );
  INVD0BWP12T30P140 U102 ( .I(writeState[1]), .ZN(n86) );
  OAI211D0BWP12T30P140 U103 ( .A1(writeState[0]), .A2(n64), .B(n63), .C(n66), 
        .ZN(n65) );
  OAI21D0BWP12T30P140 U104 ( .A1(n66), .A2(n86), .B(n65), .ZN(n32) );
  AOI21D0BWP12T30P140 U105 ( .A1(discardCountReg[4]), .A2(n68), .B(n67), .ZN(
        n70) );
  AOI22D0BWP12T30P140 U106 ( .A1(n82), .A2(inputDiscardCnt[4]), .B1(
        discardCountReg[4]), .B2(n76), .ZN(n69) );
  OAI21D0BWP12T30P140 U107 ( .A1(n70), .A2(n84), .B(n69), .ZN(n28) );
  NR2D0BWP12T30P140 U108 ( .A1(discardCountReg[6]), .A2(n71), .ZN(n74) );
  AOI21D0BWP12T30P140 U109 ( .A1(discardCountReg[6]), .A2(n71), .B(n74), .ZN(
        n73) );
  AOI22D0BWP12T30P140 U110 ( .A1(n82), .A2(inputDiscardCnt[6]), .B1(
        discardCountReg[6]), .B2(n76), .ZN(n72) );
  OAI21D0BWP12T30P140 U111 ( .A1(n73), .A2(n84), .B(n72), .ZN(n26) );
  INVD0BWP12T30P140 U112 ( .I(discardCountReg[7]), .ZN(n75) );
  MUX2ND0BWP12T30P140 U113 ( .I0(discardCountReg[7]), .I1(n75), .S(n74), .ZN(
        n78) );
  AOI22D0BWP12T30P140 U114 ( .A1(n82), .A2(inputDiscardCnt[7]), .B1(
        discardCountReg[7]), .B2(n76), .ZN(n77) );
  OAI21D0BWP12T30P140 U115 ( .A1(n78), .A2(n84), .B(n77), .ZN(n25) );
  IOA21D0BWP12T30P140 U116 ( .A1(discardCountReg[0]), .A2(n80), .B(n79), .ZN(
        n81) );
  AOI22D0BWP12T30P140 U117 ( .A1(n82), .A2(inputDiscardCnt[1]), .B1(
        discardCountReg[1]), .B2(n81), .ZN(n83) );
  OAI31D0BWP12T30P140 U118 ( .A1(discardCountReg[1]), .A2(discardCountReg[0]), 
        .A3(n84), .B(n83), .ZN(n33) );
  NR2D0BWP12T30P140 U119 ( .A1(start), .A2(rst), .ZN(n85) );
  OAI211D0BWP12T30P140 U120 ( .A1(n87), .A2(n86), .B(n85), .C(nextDin), .ZN(
        n88) );
  ND2D0BWP12T30P140 U121 ( .A1(n89), .A2(n88), .ZN(n24) );
endmodule

