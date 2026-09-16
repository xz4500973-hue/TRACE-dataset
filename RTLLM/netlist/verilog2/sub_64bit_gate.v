/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:09:48 2026
/////////////////////////////////////////////////////////////


module sub_64bit ( A, B, result, overflow );
  input [63:0] A;
  input [63:0] B;
  output [63:0] result;
  output overflow;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196;

  INR2D1BWP12T30P140 U6 ( .A1(A[63]), .B1(B[63]), .ZN(n105) );
  INR2D1BWP12T30P140 U7 ( .A1(B[63]), .B1(A[63]), .ZN(n103) );
  INVD0BWP12T30P140 U8 ( .I(A[62]), .ZN(n7) );
  INVD0BWP12T30P140 U9 ( .I(A[61]), .ZN(n10) );
  INVD0BWP12T30P140 U10 ( .I(A[60]), .ZN(n13) );
  INVD0BWP12T30P140 U11 ( .I(A[59]), .ZN(n16) );
  INVD0BWP12T30P140 U12 ( .I(A[58]), .ZN(n19) );
  INVD0BWP12T30P140 U13 ( .I(A[57]), .ZN(n22) );
  INVD0BWP12T30P140 U14 ( .I(A[56]), .ZN(n25) );
  INVD0BWP12T30P140 U15 ( .I(A[55]), .ZN(n28) );
  INVD0BWP12T30P140 U16 ( .I(A[54]), .ZN(n31) );
  INVD0BWP12T30P140 U17 ( .I(A[53]), .ZN(n34) );
  INVD0BWP12T30P140 U18 ( .I(A[52]), .ZN(n37) );
  INVD0BWP12T30P140 U19 ( .I(A[51]), .ZN(n40) );
  INVD0BWP12T30P140 U20 ( .I(A[50]), .ZN(n43) );
  INVD0BWP12T30P140 U21 ( .I(A[49]), .ZN(n46) );
  INVD0BWP12T30P140 U22 ( .I(A[48]), .ZN(n49) );
  INVD0BWP12T30P140 U23 ( .I(A[47]), .ZN(n52) );
  INVD0BWP12T30P140 U24 ( .I(A[46]), .ZN(n55) );
  INVD0BWP12T30P140 U25 ( .I(A[45]), .ZN(n58) );
  INVD0BWP12T30P140 U26 ( .I(A[44]), .ZN(n61) );
  INVD0BWP12T30P140 U27 ( .I(A[43]), .ZN(n64) );
  INVD0BWP12T30P140 U28 ( .I(A[42]), .ZN(n67) );
  INVD0BWP12T30P140 U29 ( .I(A[41]), .ZN(n70) );
  INVD0BWP12T30P140 U30 ( .I(A[40]), .ZN(n73) );
  INVD0BWP12T30P140 U31 ( .I(A[39]), .ZN(n76) );
  INVD0BWP12T30P140 U32 ( .I(A[38]), .ZN(n79) );
  INVD0BWP12T30P140 U33 ( .I(A[37]), .ZN(n82) );
  INVD0BWP12T30P140 U34 ( .I(A[36]), .ZN(n85) );
  INVD0BWP12T30P140 U35 ( .I(A[35]), .ZN(n88) );
  INVD0BWP12T30P140 U36 ( .I(A[34]), .ZN(n91) );
  INVD0BWP12T30P140 U37 ( .I(A[33]), .ZN(n94) );
  INVD0BWP12T30P140 U38 ( .I(A[32]), .ZN(n97) );
  INVD0BWP12T30P140 U39 ( .I(A[31]), .ZN(n100) );
  INVD0BWP12T30P140 U40 ( .I(A[30]), .ZN(n107) );
  INVD0BWP12T30P140 U41 ( .I(A[29]), .ZN(n110) );
  INVD0BWP12T30P140 U42 ( .I(A[28]), .ZN(n113) );
  INVD0BWP12T30P140 U43 ( .I(A[27]), .ZN(n116) );
  INVD0BWP12T30P140 U44 ( .I(A[26]), .ZN(n119) );
  INVD0BWP12T30P140 U45 ( .I(A[25]), .ZN(n122) );
  INVD0BWP12T30P140 U46 ( .I(A[24]), .ZN(n125) );
  INVD0BWP12T30P140 U47 ( .I(A[23]), .ZN(n128) );
  INVD0BWP12T30P140 U48 ( .I(A[22]), .ZN(n131) );
  INVD0BWP12T30P140 U49 ( .I(A[21]), .ZN(n134) );
  INVD0BWP12T30P140 U50 ( .I(A[20]), .ZN(n137) );
  INVD0BWP12T30P140 U51 ( .I(A[19]), .ZN(n140) );
  INVD0BWP12T30P140 U52 ( .I(A[18]), .ZN(n143) );
  INVD0BWP12T30P140 U53 ( .I(A[17]), .ZN(n146) );
  INVD0BWP12T30P140 U54 ( .I(A[16]), .ZN(n149) );
  INVD0BWP12T30P140 U55 ( .I(A[15]), .ZN(n152) );
  INVD0BWP12T30P140 U56 ( .I(A[14]), .ZN(n155) );
  INVD0BWP12T30P140 U57 ( .I(A[13]), .ZN(n158) );
  INVD0BWP12T30P140 U58 ( .I(A[12]), .ZN(n161) );
  INVD0BWP12T30P140 U59 ( .I(A[11]), .ZN(n164) );
  INVD0BWP12T30P140 U60 ( .I(A[10]), .ZN(n167) );
  INVD0BWP12T30P140 U61 ( .I(A[9]), .ZN(n170) );
  INVD0BWP12T30P140 U62 ( .I(A[8]), .ZN(n173) );
  INVD0BWP12T30P140 U63 ( .I(A[7]), .ZN(n176) );
  INVD0BWP12T30P140 U64 ( .I(A[6]), .ZN(n179) );
  INVD0BWP12T30P140 U65 ( .I(A[5]), .ZN(n182) );
  INVD0BWP12T30P140 U66 ( .I(A[4]), .ZN(n185) );
  INVD0BWP12T30P140 U67 ( .I(A[3]), .ZN(n188) );
  INVD0BWP12T30P140 U68 ( .I(A[2]), .ZN(n191) );
  INVD0BWP12T30P140 U69 ( .I(A[1]), .ZN(n193) );
  INVD0BWP12T30P140 U70 ( .I(B[0]), .ZN(n196) );
  NR2D0BWP12T30P140 U71 ( .A1(n196), .A2(A[0]), .ZN(n195) );
  INVD0BWP12T30P140 U72 ( .I(n5), .ZN(n104) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(n105), .I1(n103), .S(n104), .Z(overflow) );
  FA1D0BWP12T30P140 U74 ( .A(B[62]), .B(n7), .CI(n6), .CO(n5), .S(n8) );
  INVD0BWP12T30P140 U75 ( .I(n8), .ZN(result[62]) );
  FA1D0BWP12T30P140 U76 ( .A(B[61]), .B(n10), .CI(n9), .CO(n6), .S(n11) );
  INVD0BWP12T30P140 U77 ( .I(n11), .ZN(result[61]) );
  FA1D0BWP12T30P140 U78 ( .A(B[60]), .B(n13), .CI(n12), .CO(n9), .S(n14) );
  INVD0BWP12T30P140 U79 ( .I(n14), .ZN(result[60]) );
  FA1D0BWP12T30P140 U80 ( .A(B[59]), .B(n16), .CI(n15), .CO(n12), .S(n17) );
  INVD0BWP12T30P140 U81 ( .I(n17), .ZN(result[59]) );
  FA1D0BWP12T30P140 U82 ( .A(B[58]), .B(n19), .CI(n18), .CO(n15), .S(n20) );
  INVD0BWP12T30P140 U83 ( .I(n20), .ZN(result[58]) );
  FA1D0BWP12T30P140 U84 ( .A(B[57]), .B(n22), .CI(n21), .CO(n18), .S(n23) );
  INVD0BWP12T30P140 U85 ( .I(n23), .ZN(result[57]) );
  FA1D0BWP12T30P140 U86 ( .A(B[56]), .B(n25), .CI(n24), .CO(n21), .S(n26) );
  INVD0BWP12T30P140 U87 ( .I(n26), .ZN(result[56]) );
  FA1D0BWP12T30P140 U88 ( .A(B[55]), .B(n28), .CI(n27), .CO(n24), .S(n29) );
  INVD0BWP12T30P140 U89 ( .I(n29), .ZN(result[55]) );
  FA1D0BWP12T30P140 U90 ( .A(B[54]), .B(n31), .CI(n30), .CO(n27), .S(n32) );
  INVD0BWP12T30P140 U91 ( .I(n32), .ZN(result[54]) );
  FA1D0BWP12T30P140 U92 ( .A(B[53]), .B(n34), .CI(n33), .CO(n30), .S(n35) );
  INVD0BWP12T30P140 U93 ( .I(n35), .ZN(result[53]) );
  FA1D0BWP12T30P140 U94 ( .A(B[52]), .B(n37), .CI(n36), .CO(n33), .S(n38) );
  INVD0BWP12T30P140 U95 ( .I(n38), .ZN(result[52]) );
  FA1D0BWP12T30P140 U96 ( .A(B[51]), .B(n40), .CI(n39), .CO(n36), .S(n41) );
  INVD0BWP12T30P140 U97 ( .I(n41), .ZN(result[51]) );
  FA1D0BWP12T30P140 U98 ( .A(B[50]), .B(n43), .CI(n42), .CO(n39), .S(n44) );
  INVD0BWP12T30P140 U99 ( .I(n44), .ZN(result[50]) );
  FA1D0BWP12T30P140 U100 ( .A(B[49]), .B(n46), .CI(n45), .CO(n42), .S(n47) );
  INVD0BWP12T30P140 U101 ( .I(n47), .ZN(result[49]) );
  FA1D0BWP12T30P140 U102 ( .A(B[48]), .B(n49), .CI(n48), .CO(n45), .S(n50) );
  INVD0BWP12T30P140 U103 ( .I(n50), .ZN(result[48]) );
  FA1D0BWP12T30P140 U104 ( .A(B[47]), .B(n52), .CI(n51), .CO(n48), .S(n53) );
  INVD0BWP12T30P140 U105 ( .I(n53), .ZN(result[47]) );
  FA1D0BWP12T30P140 U106 ( .A(B[46]), .B(n55), .CI(n54), .CO(n51), .S(n56) );
  INVD0BWP12T30P140 U107 ( .I(n56), .ZN(result[46]) );
  FA1D0BWP12T30P140 U108 ( .A(B[45]), .B(n58), .CI(n57), .CO(n54), .S(n59) );
  INVD0BWP12T30P140 U109 ( .I(n59), .ZN(result[45]) );
  FA1D0BWP12T30P140 U110 ( .A(B[44]), .B(n61), .CI(n60), .CO(n57), .S(n62) );
  INVD0BWP12T30P140 U111 ( .I(n62), .ZN(result[44]) );
  FA1D0BWP12T30P140 U112 ( .A(B[43]), .B(n64), .CI(n63), .CO(n60), .S(n65) );
  INVD0BWP12T30P140 U113 ( .I(n65), .ZN(result[43]) );
  FA1D0BWP12T30P140 U114 ( .A(B[42]), .B(n67), .CI(n66), .CO(n63), .S(n68) );
  INVD0BWP12T30P140 U115 ( .I(n68), .ZN(result[42]) );
  FA1D0BWP12T30P140 U116 ( .A(B[41]), .B(n70), .CI(n69), .CO(n66), .S(n71) );
  INVD0BWP12T30P140 U117 ( .I(n71), .ZN(result[41]) );
  FA1D0BWP12T30P140 U118 ( .A(B[40]), .B(n73), .CI(n72), .CO(n69), .S(n74) );
  INVD0BWP12T30P140 U119 ( .I(n74), .ZN(result[40]) );
  FA1D0BWP12T30P140 U120 ( .A(B[39]), .B(n76), .CI(n75), .CO(n72), .S(n77) );
  INVD0BWP12T30P140 U121 ( .I(n77), .ZN(result[39]) );
  FA1D0BWP12T30P140 U122 ( .A(B[38]), .B(n79), .CI(n78), .CO(n75), .S(n80) );
  INVD0BWP12T30P140 U123 ( .I(n80), .ZN(result[38]) );
  FA1D0BWP12T30P140 U124 ( .A(B[37]), .B(n82), .CI(n81), .CO(n78), .S(n83) );
  INVD0BWP12T30P140 U125 ( .I(n83), .ZN(result[37]) );
  FA1D0BWP12T30P140 U126 ( .A(B[36]), .B(n85), .CI(n84), .CO(n81), .S(n86) );
  INVD0BWP12T30P140 U127 ( .I(n86), .ZN(result[36]) );
  FA1D0BWP12T30P140 U128 ( .A(B[35]), .B(n88), .CI(n87), .CO(n84), .S(n89) );
  INVD0BWP12T30P140 U129 ( .I(n89), .ZN(result[35]) );
  FA1D0BWP12T30P140 U130 ( .A(B[34]), .B(n91), .CI(n90), .CO(n87), .S(n92) );
  INVD0BWP12T30P140 U131 ( .I(n92), .ZN(result[34]) );
  FA1D0BWP12T30P140 U132 ( .A(B[33]), .B(n94), .CI(n93), .CO(n90), .S(n95) );
  INVD0BWP12T30P140 U133 ( .I(n95), .ZN(result[33]) );
  FA1D0BWP12T30P140 U134 ( .A(B[32]), .B(n97), .CI(n96), .CO(n93), .S(n98) );
  INVD0BWP12T30P140 U135 ( .I(n98), .ZN(result[32]) );
  FA1D0BWP12T30P140 U136 ( .A(B[31]), .B(n100), .CI(n99), .CO(n96), .S(n101)
         );
  INVD0BWP12T30P140 U137 ( .I(n101), .ZN(result[31]) );
  OAI21D0BWP12T30P140 U138 ( .A1(n105), .A2(n103), .B(n104), .ZN(n102) );
  OAI31D0BWP12T30P140 U139 ( .A1(n105), .A2(n104), .A3(n103), .B(n102), .ZN(
        result[63]) );
  FA1D0BWP12T30P140 U140 ( .A(B[30]), .B(n107), .CI(n106), .CO(n99), .S(n108)
         );
  INVD0BWP12T30P140 U141 ( .I(n108), .ZN(result[30]) );
  FA1D0BWP12T30P140 U142 ( .A(B[29]), .B(n110), .CI(n109), .CO(n106), .S(n111)
         );
  INVD0BWP12T30P140 U143 ( .I(n111), .ZN(result[29]) );
  FA1D0BWP12T30P140 U144 ( .A(B[28]), .B(n113), .CI(n112), .CO(n109), .S(n114)
         );
  INVD0BWP12T30P140 U145 ( .I(n114), .ZN(result[28]) );
  FA1D0BWP12T30P140 U146 ( .A(B[27]), .B(n116), .CI(n115), .CO(n112), .S(n117)
         );
  INVD0BWP12T30P140 U147 ( .I(n117), .ZN(result[27]) );
  FA1D0BWP12T30P140 U148 ( .A(B[26]), .B(n119), .CI(n118), .CO(n115), .S(n120)
         );
  INVD0BWP12T30P140 U149 ( .I(n120), .ZN(result[26]) );
  FA1D0BWP12T30P140 U150 ( .A(B[25]), .B(n122), .CI(n121), .CO(n118), .S(n123)
         );
  INVD0BWP12T30P140 U151 ( .I(n123), .ZN(result[25]) );
  FA1D0BWP12T30P140 U152 ( .A(B[24]), .B(n125), .CI(n124), .CO(n121), .S(n126)
         );
  INVD0BWP12T30P140 U153 ( .I(n126), .ZN(result[24]) );
  FA1D0BWP12T30P140 U154 ( .A(B[23]), .B(n128), .CI(n127), .CO(n124), .S(n129)
         );
  INVD0BWP12T30P140 U155 ( .I(n129), .ZN(result[23]) );
  FA1D0BWP12T30P140 U156 ( .A(B[22]), .B(n131), .CI(n130), .CO(n127), .S(n132)
         );
  INVD0BWP12T30P140 U157 ( .I(n132), .ZN(result[22]) );
  FA1D0BWP12T30P140 U158 ( .A(B[21]), .B(n134), .CI(n133), .CO(n130), .S(n135)
         );
  INVD0BWP12T30P140 U159 ( .I(n135), .ZN(result[21]) );
  FA1D0BWP12T30P140 U160 ( .A(B[20]), .B(n137), .CI(n136), .CO(n133), .S(n138)
         );
  INVD0BWP12T30P140 U161 ( .I(n138), .ZN(result[20]) );
  FA1D0BWP12T30P140 U162 ( .A(B[19]), .B(n140), .CI(n139), .CO(n136), .S(n141)
         );
  INVD0BWP12T30P140 U163 ( .I(n141), .ZN(result[19]) );
  FA1D0BWP12T30P140 U164 ( .A(B[18]), .B(n143), .CI(n142), .CO(n139), .S(n144)
         );
  INVD0BWP12T30P140 U165 ( .I(n144), .ZN(result[18]) );
  FA1D0BWP12T30P140 U166 ( .A(B[17]), .B(n146), .CI(n145), .CO(n142), .S(n147)
         );
  INVD0BWP12T30P140 U167 ( .I(n147), .ZN(result[17]) );
  FA1D0BWP12T30P140 U168 ( .A(B[16]), .B(n149), .CI(n148), .CO(n145), .S(n150)
         );
  INVD0BWP12T30P140 U169 ( .I(n150), .ZN(result[16]) );
  FA1D0BWP12T30P140 U170 ( .A(B[15]), .B(n152), .CI(n151), .CO(n148), .S(n153)
         );
  INVD0BWP12T30P140 U171 ( .I(n153), .ZN(result[15]) );
  FA1D0BWP12T30P140 U172 ( .A(B[14]), .B(n155), .CI(n154), .CO(n151), .S(n156)
         );
  INVD0BWP12T30P140 U173 ( .I(n156), .ZN(result[14]) );
  FA1D0BWP12T30P140 U174 ( .A(B[13]), .B(n158), .CI(n157), .CO(n154), .S(n159)
         );
  INVD0BWP12T30P140 U175 ( .I(n159), .ZN(result[13]) );
  FA1D0BWP12T30P140 U176 ( .A(B[12]), .B(n161), .CI(n160), .CO(n157), .S(n162)
         );
  INVD0BWP12T30P140 U177 ( .I(n162), .ZN(result[12]) );
  FA1D0BWP12T30P140 U178 ( .A(B[11]), .B(n164), .CI(n163), .CO(n160), .S(n165)
         );
  INVD0BWP12T30P140 U179 ( .I(n165), .ZN(result[11]) );
  FA1D0BWP12T30P140 U180 ( .A(B[10]), .B(n167), .CI(n166), .CO(n163), .S(n168)
         );
  INVD0BWP12T30P140 U181 ( .I(n168), .ZN(result[10]) );
  FA1D0BWP12T30P140 U182 ( .A(B[9]), .B(n170), .CI(n169), .CO(n166), .S(n171)
         );
  INVD0BWP12T30P140 U183 ( .I(n171), .ZN(result[9]) );
  FA1D0BWP12T30P140 U184 ( .A(B[8]), .B(n173), .CI(n172), .CO(n169), .S(n174)
         );
  INVD0BWP12T30P140 U185 ( .I(n174), .ZN(result[8]) );
  FA1D0BWP12T30P140 U186 ( .A(B[7]), .B(n176), .CI(n175), .CO(n172), .S(n177)
         );
  INVD0BWP12T30P140 U187 ( .I(n177), .ZN(result[7]) );
  FA1D0BWP12T30P140 U188 ( .A(B[6]), .B(n179), .CI(n178), .CO(n175), .S(n180)
         );
  INVD0BWP12T30P140 U189 ( .I(n180), .ZN(result[6]) );
  FA1D0BWP12T30P140 U190 ( .A(B[5]), .B(n182), .CI(n181), .CO(n178), .S(n183)
         );
  INVD0BWP12T30P140 U191 ( .I(n183), .ZN(result[5]) );
  FA1D0BWP12T30P140 U192 ( .A(B[4]), .B(n185), .CI(n184), .CO(n181), .S(n186)
         );
  INVD0BWP12T30P140 U193 ( .I(n186), .ZN(result[4]) );
  FA1D0BWP12T30P140 U194 ( .A(B[3]), .B(n188), .CI(n187), .CO(n184), .S(n189)
         );
  INVD0BWP12T30P140 U195 ( .I(n189), .ZN(result[3]) );
  FA1D0BWP12T30P140 U196 ( .A(B[2]), .B(n191), .CI(n190), .CO(n187), .S(n192)
         );
  INVD0BWP12T30P140 U197 ( .I(n192), .ZN(result[2]) );
  FA1D0BWP12T30P140 U198 ( .A(B[1]), .B(n193), .CI(n195), .CO(n190), .S(n194)
         );
  INVD0BWP12T30P140 U199 ( .I(n194), .ZN(result[1]) );
  AO21D0BWP12T30P140 U200 ( .A1(A[0]), .A2(n196), .B(n195), .Z(result[0]) );
endmodule

