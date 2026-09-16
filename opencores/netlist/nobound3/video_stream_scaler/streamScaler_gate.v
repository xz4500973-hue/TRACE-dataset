/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:28:58 2026
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
  wire   N141, N142, N143, N144, N145, N146, N147, N148, N149, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253;
  wire   [1:0] writeState;
  wire   [7:0] discardCountReg;
  wire   [10:0] writeColCount;
  wire   [10:0] writeRowCount;

  DFQD2BWP12T30P140 writeRowCount_reg_8_ ( .D(n74), .CP(clk), .Q(
        writeRowCount[8]) );
  DFQD2BWP12T30P140 writeRowCount_reg_6_ ( .D(n72), .CP(clk), .Q(
        writeRowCount[6]) );
  DFQD2BWP12T30P140 discardCountReg_reg_3_ ( .D(n81), .CP(clk), .Q(
        discardCountReg[3]) );
  DFQD2BWP12T30P140 enableNextDin_reg ( .D(n77), .CP(clk), .Q(nextDin) );
  DFQD2BWP12T30P140 writeRowCount_reg_10_ ( .D(n76), .CP(clk), .Q(
        writeRowCount[10]) );
  DFQD2BWP12T30P140 writeRowCount_reg_9_ ( .D(n75), .CP(clk), .Q(
        writeRowCount[9]) );
  DFQD2BWP12T30P140 writeRowCount_reg_7_ ( .D(n73), .CP(clk), .Q(
        writeRowCount[7]) );
  DFQD2BWP12T30P140 writeRowCount_reg_5_ ( .D(n71), .CP(clk), .Q(
        writeRowCount[5]) );
  DFQD2BWP12T30P140 dOutValid_reg ( .D(N149), .CP(n252), .Q(dOutValid) );
  DFQD2BWP12T30P140 discardCountReg_reg_4_ ( .D(n82), .CP(clk), .Q(
        discardCountReg[4]) );
  DFQD2BWP12T30P140 discardCountReg_reg_5_ ( .D(n83), .CP(clk), .Q(
        discardCountReg[5]) );
  DFQD2BWP12T30P140 writeColCount_reg_0_ ( .D(n88), .CP(clk), .Q(
        writeColCount[0]) );
  DFQD2BWP12T30P140 discardCountReg_reg_2_ ( .D(n80), .CP(clk), .Q(
        discardCountReg[2]) );
  DFQD2BWP12T30P140 discardCountReg_reg_6_ ( .D(n84), .CP(clk), .Q(
        discardCountReg[6]) );
  DFQD2BWP12T30P140 writeRowCount_reg_2_ ( .D(n68), .CP(n253), .Q(
        writeRowCount[2]) );
  DFQD2BWP12T30P140 writeColCount_reg_7_ ( .D(n62), .CP(n253), .Q(
        writeColCount[7]) );
  DFQD2BWP12T30P140 writeColCount_reg_5_ ( .D(n60), .CP(n253), .Q(
        writeColCount[5]) );
  DFQD2BWP12T30P140 writeColCount_reg_3_ ( .D(n58), .CP(n252), .Q(
        writeColCount[3]) );
  DFQD2BWP12T30P140 dOut_reg_6_ ( .D(N147), .CP(n252), .Q(dOut[6]) );
  DFQD2BWP12T30P140 dOut_reg_4_ ( .D(N145), .CP(n252), .Q(dOut[4]) );
  DFQD2BWP12T30P140 dOut_reg_2_ ( .D(N143), .CP(n252), .Q(dOut[2]) );
  DFQD2BWP12T30P140 discardCountReg_reg_7_ ( .D(n85), .CP(clk), .Q(
        discardCountReg[7]) );
  DFQD2BWP12T30P140 dOut_reg_5_ ( .D(N146), .CP(n252), .Q(dOut[5]) );
  DFQD2BWP12T30P140 dOut_reg_3_ ( .D(N144), .CP(n252), .Q(dOut[3]) );
  DFQD2BWP12T30P140 dOut_reg_1_ ( .D(N142), .CP(n252), .Q(dOut[1]) );
  DFQD2BWP12T30P140 writeState_reg_1_ ( .D(n87), .CP(clk), .Q(writeState[1])
         );
  DFQD2BWP12T30P140 dOut_reg_7_ ( .D(N148), .CP(n252), .Q(dOut[7]) );
  DFQD2BWP12T30P140 writeColCount_reg_10_ ( .D(n65), .CP(n253), .Q(
        writeColCount[10]) );
  DFQD2BWP12T30P140 writeColCount_reg_9_ ( .D(n64), .CP(n253), .Q(
        writeColCount[9]) );
  DFQD2BWP12T30P140 discardCountReg_reg_0_ ( .D(n78), .CP(clk), .Q(
        discardCountReg[0]) );
  DFQD2BWP12T30P140 dOut_reg_0_ ( .D(N141), .CP(n252), .Q(dOut[0]) );
  DFQD2BWP12T30P140 writeColCount_reg_2_ ( .D(n57), .CP(n252), .Q(
        writeColCount[2]) );
  DFQD2BWP12T30P140 writeColCount_reg_8_ ( .D(n63), .CP(n253), .Q(
        writeColCount[8]) );
  DFQD2BWP12T30P140 writeColCount_reg_6_ ( .D(n61), .CP(n253), .Q(
        writeColCount[6]) );
  DFQD2BWP12T30P140 writeColCount_reg_4_ ( .D(n59), .CP(n253), .Q(
        writeColCount[4]) );
  DFQD2BWP12T30P140 writeRowCount_reg_3_ ( .D(n69), .CP(n253), .Q(
        writeRowCount[3]) );
  DFQD2BWP12T30P140 writeRowCount_reg_1_ ( .D(n67), .CP(n253), .Q(
        writeRowCount[1]) );
  DFQD2BWP12T30P140 writeColCount_reg_1_ ( .D(n56), .CP(n252), .Q(
        writeColCount[1]) );
  DFQD2BWP12T30P140 writeRowCount_reg_0_ ( .D(n66), .CP(n253), .Q(
        writeRowCount[0]) );
  DFQD1BWP12T30P140 writeRowCount_reg_4_ ( .D(n70), .CP(n253), .Q(
        writeRowCount[4]) );
  DFQD1BWP12T30P140 discardCountReg_reg_1_ ( .D(n79), .CP(clk), .Q(
        discardCountReg[1]) );
  DFQD1BWP12T30P140 writeState_reg_0_ ( .D(n86), .CP(clk), .Q(writeState[0])
         );
  NR4D0BWP12T30P140 U101 ( .A1(discardCountReg[2]), .A2(discardCountReg[1]), 
        .A3(discardCountReg[6]), .A4(discardCountReg[7]), .ZN(n91) );
  NR3D0BWP12T30P140 U102 ( .A1(discardCountReg[5]), .A2(discardCountReg[3]), 
        .A3(discardCountReg[4]), .ZN(n90) );
  ND4D0BWP12T30P140 U103 ( .A1(dInValid), .A2(discardCountReg[0]), .A3(n91), 
        .A4(n90), .ZN(n194) );
  INVD0BWP12T30P140 U104 ( .I(writeRowCount[10]), .ZN(n143) );
  ND2D0BWP12T30P140 U105 ( .A1(writeRowCount[0]), .A2(writeRowCount[1]), .ZN(
        n92) );
  INVD0BWP12T30P140 U106 ( .I(writeRowCount[2]), .ZN(n176) );
  NR2D0BWP12T30P140 U107 ( .A1(n92), .A2(n176), .ZN(n97) );
  ND2D0BWP12T30P140 U108 ( .A1(n97), .A2(writeRowCount[3]), .ZN(n96) );
  INVD0BWP12T30P140 U109 ( .I(writeRowCount[4]), .ZN(n174) );
  NR2D0BWP12T30P140 U110 ( .A1(n96), .A2(n174), .ZN(n102) );
  ND2D0BWP12T30P140 U111 ( .A1(n102), .A2(writeRowCount[5]), .ZN(n101) );
  INVD0BWP12T30P140 U112 ( .I(writeRowCount[6]), .ZN(n137) );
  NR2D0BWP12T30P140 U113 ( .A1(n101), .A2(n137), .ZN(n107) );
  ND2D0BWP12T30P140 U114 ( .A1(n107), .A2(writeRowCount[7]), .ZN(n106) );
  INVD0BWP12T30P140 U115 ( .I(writeRowCount[8]), .ZN(n152) );
  NR2D0BWP12T30P140 U116 ( .A1(n106), .A2(n152), .ZN(n111) );
  ND2D0BWP12T30P140 U117 ( .A1(n111), .A2(writeRowCount[9]), .ZN(n115) );
  MUX2ND0BWP12T30P140 U118 ( .I0(writeRowCount[10]), .I1(n143), .S(n115), .ZN(
        n141) );
  AOI21D0BWP12T30P140 U119 ( .A1(n106), .A2(n152), .B(n111), .ZN(n150) );
  AOI21D0BWP12T30P140 U120 ( .A1(n101), .A2(n137), .B(n107), .ZN(n135) );
  AOI21D0BWP12T30P140 U121 ( .A1(n96), .A2(n174), .B(n102), .ZN(n172) );
  AO21D0BWP12T30P140 U122 ( .A1(n92), .A2(n176), .B(n97), .Z(n175) );
  OAI21D0BWP12T30P140 U123 ( .A1(writeRowCount[0]), .A2(writeRowCount[1]), .B(
        n92), .ZN(n241) );
  OAI211D0BWP12T30P140 U124 ( .A1(inputYRes[1]), .A2(n241), .B(inputYRes[0]), 
        .C(writeRowCount[0]), .ZN(n93) );
  IOA21D0BWP12T30P140 U125 ( .A1(n241), .A2(inputYRes[1]), .B(n93), .ZN(n94)
         );
  MAOI222D0BWP12T30P140 U126 ( .A(inputYRes[2]), .B(n175), .C(n94), .ZN(n95)
         );
  INVD0BWP12T30P140 U127 ( .I(n95), .ZN(n98) );
  OAI21D0BWP12T30P140 U128 ( .A1(n97), .A2(writeRowCount[3]), .B(n96), .ZN(
        n244) );
  MAOI222D0BWP12T30P140 U129 ( .A(n98), .B(inputYRes[3]), .C(n244), .ZN(n100)
         );
  INVD0BWP12T30P140 U130 ( .I(inputYRes[4]), .ZN(n99) );
  MAOI222D0BWP12T30P140 U131 ( .A(n172), .B(n100), .C(n99), .ZN(n103) );
  OAI21D0BWP12T30P140 U132 ( .A1(n102), .A2(writeRowCount[5]), .B(n101), .ZN(
        n148) );
  MAOI222D0BWP12T30P140 U133 ( .A(n103), .B(inputYRes[5]), .C(n148), .ZN(n105)
         );
  INVD0BWP12T30P140 U134 ( .I(inputYRes[6]), .ZN(n104) );
  MAOI222D0BWP12T30P140 U135 ( .A(n135), .B(n105), .C(n104), .ZN(n108) );
  OAI21D0BWP12T30P140 U136 ( .A1(n107), .A2(writeRowCount[7]), .B(n106), .ZN(
        n146) );
  MAOI222D0BWP12T30P140 U137 ( .A(n108), .B(inputYRes[7]), .C(n146), .ZN(n110)
         );
  INVD0BWP12T30P140 U138 ( .I(inputYRes[8]), .ZN(n109) );
  MAOI222D0BWP12T30P140 U139 ( .A(n150), .B(n110), .C(n109), .ZN(n112) );
  OAI21D0BWP12T30P140 U140 ( .A1(n111), .A2(writeRowCount[9]), .B(n115), .ZN(
        n144) );
  MAOI222D0BWP12T30P140 U141 ( .A(n112), .B(inputYRes[9]), .C(n144), .ZN(n114)
         );
  INVD0BWP12T30P140 U142 ( .I(inputYRes[10]), .ZN(n113) );
  MAOI222D0BWP12T30P140 U143 ( .A(n141), .B(n114), .C(n113), .ZN(n130) );
  OR2D0BWP12T30P140 U144 ( .A1(n115), .A2(n143), .Z(n129) );
  INVD0BWP12T30P140 U145 ( .I(inputXRes[1]), .ZN(n117) );
  INVD0BWP12T30P140 U146 ( .I(writeColCount[3]), .ZN(n180) );
  OAI22D0BWP12T30P140 U147 ( .A1(inputXRes[3]), .A2(n180), .B1(
        writeColCount[1]), .B2(n117), .ZN(n116) );
  AOI221D0BWP12T30P140 U148 ( .A1(n117), .A2(writeColCount[1]), .B1(n180), 
        .B2(inputXRes[3]), .C(n116), .ZN(n128) );
  INVD0BWP12T30P140 U149 ( .I(writeColCount[6]), .ZN(n209) );
  INVD0BWP12T30P140 U150 ( .I(writeColCount[5]), .ZN(n178) );
  OAI22D0BWP12T30P140 U151 ( .A1(inputXRes[5]), .A2(n178), .B1(inputXRes[6]), 
        .B2(n209), .ZN(n118) );
  AOI221D0BWP12T30P140 U152 ( .A1(n209), .A2(inputXRes[6]), .B1(n178), .B2(
        inputXRes[5]), .C(n118), .ZN(n127) );
  INVD0BWP12T30P140 U153 ( .I(writeColCount[8]), .ZN(n219) );
  INVD0BWP12T30P140 U154 ( .I(writeColCount[4]), .ZN(n237) );
  OAI22D0BWP12T30P140 U155 ( .A1(inputXRes[4]), .A2(n237), .B1(inputXRes[8]), 
        .B2(n219), .ZN(n119) );
  AOI221D0BWP12T30P140 U156 ( .A1(n219), .A2(inputXRes[8]), .B1(n237), .B2(
        inputXRes[4]), .C(n119), .ZN(n126) );
  INVD0BWP12T30P140 U157 ( .I(writeColCount[7]), .ZN(n214) );
  INVD0BWP12T30P140 U158 ( .I(writeColCount[9]), .ZN(n233) );
  INVD0BWP12T30P140 U159 ( .I(writeColCount[10]), .ZN(n216) );
  OAI22D0BWP12T30P140 U160 ( .A1(inputXRes[10]), .A2(n216), .B1(inputXRes[9]), 
        .B2(n233), .ZN(n120) );
  AOI221D0BWP12T30P140 U161 ( .A1(n233), .A2(inputXRes[9]), .B1(n216), .B2(
        inputXRes[10]), .C(n120), .ZN(n123) );
  INVD0BWP12T30P140 U162 ( .I(writeColCount[2]), .ZN(n204) );
  INVD0BWP12T30P140 U163 ( .I(writeColCount[0]), .ZN(n199) );
  OAI22D0BWP12T30P140 U164 ( .A1(inputXRes[2]), .A2(n204), .B1(n199), .B2(
        inputXRes[0]), .ZN(n121) );
  AOI221D0BWP12T30P140 U165 ( .A1(n204), .A2(inputXRes[2]), .B1(n199), .B2(
        inputXRes[0]), .C(n121), .ZN(n122) );
  OAI211D0BWP12T30P140 U166 ( .A1(n214), .A2(inputXRes[7]), .B(n123), .C(n122), 
        .ZN(n124) );
  AOI21D0BWP12T30P140 U167 ( .A1(n214), .A2(inputXRes[7]), .B(n124), .ZN(n125)
         );
  ND4D0BWP12T30P140 U168 ( .A1(n128), .A2(n127), .A3(n126), .A4(n125), .ZN(
        n163) );
  ND3D0BWP12T30P140 U169 ( .A1(dInValid), .A2(nextDin), .A3(writeState[1]), 
        .ZN(n162) );
  AOI211D0BWP12T30P140 U170 ( .A1(n130), .A2(n129), .B(n163), .C(n162), .ZN(
        n131) );
  AOI221D0BWP12T30P140 U171 ( .A1(writeState[1]), .A2(writeState[0]), .B1(n194), .B2(writeState[0]), .C(n131), .ZN(n134) );
  NR2D0BWP12T30P140 U172 ( .A1(start), .A2(rst), .ZN(n247) );
  INVD0BWP12T30P140 U173 ( .I(n247), .ZN(n197) );
  NR4D0BWP12T30P140 U174 ( .A1(inputDiscardCnt[4]), .A2(inputDiscardCnt[5]), 
        .A3(inputDiscardCnt[6]), .A4(inputDiscardCnt[7]), .ZN(n133) );
  NR4D0BWP12T30P140 U175 ( .A1(inputDiscardCnt[0]), .A2(inputDiscardCnt[1]), 
        .A3(inputDiscardCnt[2]), .A4(inputDiscardCnt[3]), .ZN(n132) );
  AN2D0BWP12T30P140 U176 ( .A1(n133), .A2(n132), .Z(n195) );
  NR2D0BWP12T30P140 U177 ( .A1(writeState[1]), .A2(writeState[0]), .ZN(n161)
         );
  ND2D0BWP12T30P140 U178 ( .A1(n247), .A2(n161), .ZN(n251) );
  OAI22D0BWP12T30P140 U179 ( .A1(n134), .A2(n197), .B1(n195), .B2(n251), .ZN(
        n86) );
  OAI31D0BWP12T30P140 U180 ( .A1(writeState[0]), .A2(n162), .A3(n163), .B(n247), .ZN(n245) );
  INVD0BWP12T30P140 U181 ( .I(n135), .ZN(n136) );
  ND2D0BWP12T30P140 U182 ( .A1(n247), .A2(n245), .ZN(n243) );
  OAI22D0BWP12T30P140 U183 ( .A1(n137), .A2(n245), .B1(n136), .B2(n243), .ZN(
        n72) );
  INVD0BWP12T30P140 U184 ( .I(inputDiscardCnt[3]), .ZN(n140) );
  INVD0BWP12T30P140 U185 ( .I(writeState[1]), .ZN(n249) );
  ND4D0BWP12T30P140 U186 ( .A1(dInValid), .A2(n247), .A3(writeState[0]), .A4(
        n249), .ZN(n230) );
  INVD0BWP12T30P140 U187 ( .I(discardCountReg[3]), .ZN(n138) );
  NR3D0BWP12T30P140 U188 ( .A1(discardCountReg[2]), .A2(discardCountReg[0]), 
        .A3(discardCountReg[1]), .ZN(n164) );
  ND2D0BWP12T30P140 U189 ( .A1(n164), .A2(n138), .ZN(n153) );
  OA21D0BWP12T30P140 U190 ( .A1(n138), .A2(n164), .B(n153), .Z(n139) );
  INVD0BWP12T30P140 U191 ( .I(writeState[0]), .ZN(n248) );
  AOI221D0BWP12T30P140 U192 ( .A1(dInValid), .A2(n249), .B1(n248), .B2(n249), 
        .C(n197), .ZN(n223) );
  INVD0BWP12T30P140 U193 ( .I(n223), .ZN(n225) );
  OAI222D0BWP12T30P140 U194 ( .A1(n251), .A2(n140), .B1(n230), .B2(n139), .C1(
        n138), .C2(n225), .ZN(n81) );
  INVD0BWP12T30P140 U195 ( .I(n141), .ZN(n142) );
  OAI22D0BWP12T30P140 U196 ( .A1(n143), .A2(n245), .B1(n142), .B2(n243), .ZN(
        n76) );
  INVD0BWP12T30P140 U197 ( .I(writeRowCount[9]), .ZN(n145) );
  OAI22D0BWP12T30P140 U198 ( .A1(n145), .A2(n245), .B1(n144), .B2(n243), .ZN(
        n75) );
  INVD0BWP12T30P140 U199 ( .I(writeRowCount[7]), .ZN(n147) );
  OAI22D0BWP12T30P140 U200 ( .A1(n147), .A2(n245), .B1(n146), .B2(n243), .ZN(
        n73) );
  INVD0BWP12T30P140 U201 ( .I(writeRowCount[5]), .ZN(n149) );
  OAI22D0BWP12T30P140 U202 ( .A1(n149), .A2(n245), .B1(n148), .B2(n243), .ZN(
        n71) );
  INVD0BWP12T30P140 U203 ( .I(n150), .ZN(n151) );
  OAI22D0BWP12T30P140 U204 ( .A1(n152), .A2(n245), .B1(n151), .B2(n243), .ZN(
        n74) );
  NR2D0BWP12T30P140 U205 ( .A1(discardCountReg[4]), .A2(n153), .ZN(n156) );
  AOI21D0BWP12T30P140 U206 ( .A1(discardCountReg[4]), .A2(n153), .B(n156), 
        .ZN(n155) );
  INVD0BWP12T30P140 U207 ( .I(n251), .ZN(n227) );
  AOI22D0BWP12T30P140 U208 ( .A1(discardCountReg[4]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[4]), .ZN(n154) );
  OAI21D0BWP12T30P140 U209 ( .A1(n155), .A2(n230), .B(n154), .ZN(n82) );
  INVD0BWP12T30P140 U210 ( .I(n156), .ZN(n157) );
  NR2D0BWP12T30P140 U211 ( .A1(n157), .A2(discardCountReg[5]), .ZN(n168) );
  AOI21D0BWP12T30P140 U212 ( .A1(discardCountReg[5]), .A2(n157), .B(n168), 
        .ZN(n159) );
  AOI22D0BWP12T30P140 U213 ( .A1(discardCountReg[5]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[5]), .ZN(n158) );
  OAI21D0BWP12T30P140 U214 ( .A1(n159), .A2(n230), .B(n158), .ZN(n83) );
  NR2D0BWP12T30P140 U215 ( .A1(writeState[0]), .A2(n162), .ZN(n160) );
  NR3D0BWP12T30P140 U216 ( .A1(n161), .A2(n160), .A3(n197), .ZN(n215) );
  INR4D0BWP12T30P140 U217 ( .A1(n163), .B1(writeState[0]), .B2(n197), .B3(n162), .ZN(n236) );
  OA22D0BWP12T30P140 U218 ( .A1(n199), .A2(n215), .B1(n236), .B2(
        writeColCount[0]), .Z(n88) );
  INVD0BWP12T30P140 U219 ( .I(discardCountReg[0]), .ZN(n226) );
  IND2D1BWP12T30P140 U220 ( .A1(discardCountReg[1]), .B1(n226), .ZN(n165) );
  AOI21D0BWP12T30P140 U221 ( .A1(discardCountReg[2]), .A2(n165), .B(n164), 
        .ZN(n167) );
  AOI22D0BWP12T30P140 U222 ( .A1(discardCountReg[2]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[2]), .ZN(n166) );
  OAI21D0BWP12T30P140 U223 ( .A1(n167), .A2(n230), .B(n166), .ZN(n80) );
  INVD0BWP12T30P140 U224 ( .I(n168), .ZN(n169) );
  NR2D0BWP12T30P140 U225 ( .A1(discardCountReg[6]), .A2(n169), .ZN(n184) );
  AOI21D0BWP12T30P140 U226 ( .A1(discardCountReg[6]), .A2(n169), .B(n184), 
        .ZN(n171) );
  AOI22D0BWP12T30P140 U227 ( .A1(discardCountReg[6]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[6]), .ZN(n170) );
  OAI21D0BWP12T30P140 U228 ( .A1(n171), .A2(n230), .B(n170), .ZN(n84) );
  INVD0BWP12T30P140 U229 ( .I(n172), .ZN(n173) );
  OAI22D0BWP12T30P140 U230 ( .A1(n174), .A2(n245), .B1(n173), .B2(n243), .ZN(
        n70) );
  OAI22D0BWP12T30P140 U231 ( .A1(n176), .A2(n245), .B1(n175), .B2(n243), .ZN(
        n68) );
  ND3D0BWP12T30P140 U232 ( .A1(writeColCount[1]), .A2(writeColCount[2]), .A3(
        writeColCount[0]), .ZN(n179) );
  NR2D0BWP12T30P140 U233 ( .A1(n180), .A2(n179), .ZN(n235) );
  ND2D0BWP12T30P140 U234 ( .A1(writeColCount[4]), .A2(n235), .ZN(n177) );
  NR2D0BWP12T30P140 U235 ( .A1(n178), .A2(n177), .ZN(n208) );
  ND2D0BWP12T30P140 U236 ( .A1(writeColCount[6]), .A2(n208), .ZN(n213) );
  AOI21D0BWP12T30P140 U237 ( .A1(n236), .A2(n213), .B(n215), .ZN(n222) );
  ND2D0BWP12T30P140 U238 ( .A1(n236), .A2(n214), .ZN(n221) );
  OAI22D0BWP12T30P140 U239 ( .A1(n222), .A2(n214), .B1(n213), .B2(n221), .ZN(
        n62) );
  AOI21D0BWP12T30P140 U240 ( .A1(n236), .A2(n177), .B(n215), .ZN(n212) );
  ND2D0BWP12T30P140 U241 ( .A1(n236), .A2(n178), .ZN(n211) );
  OAI22D0BWP12T30P140 U242 ( .A1(n212), .A2(n178), .B1(n177), .B2(n211), .ZN(
        n60) );
  AOI21D0BWP12T30P140 U243 ( .A1(n236), .A2(n179), .B(n215), .ZN(n240) );
  ND2D0BWP12T30P140 U244 ( .A1(n236), .A2(n180), .ZN(n239) );
  OAI22D0BWP12T30P140 U245 ( .A1(n240), .A2(n180), .B1(n179), .B2(n239), .ZN(
        n58) );
  ND2D0BWP12T30P140 U246 ( .A1(dOut[1]), .A2(dOut[0]), .ZN(n192) );
  INVD0BWP12T30P140 U247 ( .I(dOut[2]), .ZN(n183) );
  NR2D0BWP12T30P140 U248 ( .A1(n192), .A2(n183), .ZN(n191) );
  ND2D0BWP12T30P140 U249 ( .A1(n191), .A2(dOut[3]), .ZN(n190) );
  INVD0BWP12T30P140 U250 ( .I(dOut[4]), .ZN(n182) );
  NR2D0BWP12T30P140 U251 ( .A1(n190), .A2(n182), .ZN(n189) );
  ND2D0BWP12T30P140 U252 ( .A1(n189), .A2(dOut[5]), .ZN(n188) );
  INVD0BWP12T30P140 U253 ( .I(dOut[6]), .ZN(n181) );
  NR2D0BWP12T30P140 U254 ( .A1(n188), .A2(n181), .ZN(n202) );
  AOI211D0BWP12T30P140 U255 ( .A1(n188), .A2(n181), .B(rst), .C(n202), .ZN(
        N147) );
  AOI211D0BWP12T30P140 U256 ( .A1(n190), .A2(n182), .B(rst), .C(n189), .ZN(
        N145) );
  AOI211D0BWP12T30P140 U257 ( .A1(n192), .A2(n183), .B(rst), .C(n191), .ZN(
        N143) );
  INVD0BWP12T30P140 U258 ( .I(discardCountReg[7]), .ZN(n185) );
  MUX2ND0BWP12T30P140 U259 ( .I0(discardCountReg[7]), .I1(n185), .S(n184), 
        .ZN(n187) );
  AOI22D0BWP12T30P140 U260 ( .A1(discardCountReg[7]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[7]), .ZN(n186) );
  OAI21D0BWP12T30P140 U261 ( .A1(n230), .A2(n187), .B(n186), .ZN(n85) );
  INVD0BWP12T30P140 U262 ( .I(rst), .ZN(n193) );
  OA211D0BWP12T30P140 U263 ( .A1(n189), .A2(dOut[5]), .B(n193), .C(n188), .Z(
        N146) );
  OA211D0BWP12T30P140 U264 ( .A1(n191), .A2(dOut[3]), .B(n193), .C(n190), .Z(
        N144) );
  OA211D0BWP12T30P140 U265 ( .A1(dOut[1]), .A2(dOut[0]), .B(n193), .C(n192), 
        .Z(N142) );
  INVD0BWP12T30P140 U266 ( .I(n194), .ZN(n196) );
  AOI221D0BWP12T30P140 U267 ( .A1(n196), .A2(writeState[0]), .B1(n195), .B2(
        n248), .C(writeState[1]), .ZN(n198) );
  NR2D0BWP12T30P140 U268 ( .A1(n198), .A2(n197), .ZN(n87) );
  AOI21D0BWP12T30P140 U269 ( .A1(n236), .A2(n199), .B(n215), .ZN(n207) );
  INVD0BWP12T30P140 U270 ( .I(writeColCount[1]), .ZN(n200) );
  ND2D0BWP12T30P140 U271 ( .A1(n236), .A2(n200), .ZN(n206) );
  OAI22D0BWP12T30P140 U272 ( .A1(n207), .A2(n200), .B1(n199), .B2(n206), .ZN(
        n56) );
  NR2D0BWP12T30P140 U273 ( .A1(dOut[7]), .A2(n202), .ZN(n201) );
  AOI211D0BWP12T30P140 U274 ( .A1(dOut[7]), .A2(n202), .B(rst), .C(n201), .ZN(
        N148) );
  INVD0BWP12T30P140 U275 ( .I(writeRowCount[0]), .ZN(n203) );
  AOI22D0BWP12T30P140 U276 ( .A1(writeRowCount[0]), .A2(n245), .B1(n243), .B2(
        n203), .ZN(n66) );
  ND3D0BWP12T30P140 U277 ( .A1(writeColCount[1]), .A2(writeColCount[0]), .A3(
        n236), .ZN(n205) );
  AOI32D0BWP12T30P140 U278 ( .A1(n207), .A2(writeColCount[2]), .A3(n206), .B1(
        n205), .B2(n204), .ZN(n57) );
  ND2D0BWP12T30P140 U279 ( .A1(n236), .A2(n208), .ZN(n210) );
  AOI32D0BWP12T30P140 U280 ( .A1(n212), .A2(writeColCount[6]), .A3(n211), .B1(
        n210), .B2(n209), .ZN(n61) );
  NR2D0BWP12T30P140 U281 ( .A1(n214), .A2(n213), .ZN(n218) );
  ND2D0BWP12T30P140 U282 ( .A1(writeColCount[8]), .A2(n218), .ZN(n231) );
  AOI21D0BWP12T30P140 U283 ( .A1(n236), .A2(n231), .B(n215), .ZN(n234) );
  ND2D0BWP12T30P140 U284 ( .A1(n236), .A2(n233), .ZN(n232) );
  IND3D1BWP12T30P140 U285 ( .A1(n231), .B1(writeColCount[9]), .B2(n236), .ZN(
        n217) );
  AOI32D0BWP12T30P140 U286 ( .A1(n234), .A2(writeColCount[10]), .A3(n232), 
        .B1(n217), .B2(n216), .ZN(n65) );
  ND2D0BWP12T30P140 U287 ( .A1(n236), .A2(n218), .ZN(n220) );
  AOI32D0BWP12T30P140 U288 ( .A1(n222), .A2(writeColCount[8]), .A3(n221), .B1(
        n220), .B2(n219), .ZN(n63) );
  AOI22D0BWP12T30P140 U289 ( .A1(discardCountReg[0]), .A2(n223), .B1(n227), 
        .B2(inputDiscardCnt[0]), .ZN(n224) );
  OAI21D0BWP12T30P140 U290 ( .A1(discardCountReg[0]), .A2(n230), .B(n224), 
        .ZN(n78) );
  OAI21D0BWP12T30P140 U291 ( .A1(n230), .A2(n226), .B(n225), .ZN(n228) );
  AOI22D0BWP12T30P140 U292 ( .A1(discardCountReg[1]), .A2(n228), .B1(n227), 
        .B2(inputDiscardCnt[1]), .ZN(n229) );
  OAI31D0BWP12T30P140 U293 ( .A1(discardCountReg[0]), .A2(discardCountReg[1]), 
        .A3(n230), .B(n229), .ZN(n79) );
  NR2D0BWP12T30P140 U294 ( .A1(rst), .A2(dOut[0]), .ZN(N141) );
  OAI22D0BWP12T30P140 U295 ( .A1(n234), .A2(n233), .B1(n232), .B2(n231), .ZN(
        n64) );
  ND2D0BWP12T30P140 U296 ( .A1(n236), .A2(n235), .ZN(n238) );
  AOI32D0BWP12T30P140 U297 ( .A1(n240), .A2(writeColCount[4]), .A3(n239), .B1(
        n238), .B2(n237), .ZN(n59) );
  INVD0BWP12T30P140 U298 ( .I(writeRowCount[1]), .ZN(n242) );
  OAI22D0BWP12T30P140 U299 ( .A1(n242), .A2(n245), .B1(n241), .B2(n243), .ZN(
        n67) );
  INVD0BWP12T30P140 U300 ( .I(writeRowCount[3]), .ZN(n246) );
  OAI22D0BWP12T30P140 U301 ( .A1(n246), .A2(n245), .B1(n244), .B2(n243), .ZN(
        n69) );
  CKBD0BWP12T30P140 U302 ( .I(clk), .Z(n252) );
  CKBD0BWP12T30P140 U303 ( .I(clk), .Z(n253) );
  OAI211D0BWP12T30P140 U304 ( .A1(n249), .A2(n248), .B(nextDin), .C(n247), 
        .ZN(n250) );
  ND2D0BWP12T30P140 U305 ( .A1(n251), .A2(n250), .ZN(n77) );
  INR2D1BWP12T30P140 U306 ( .A1(nextDout), .B1(rst), .ZN(N149) );
endmodule

