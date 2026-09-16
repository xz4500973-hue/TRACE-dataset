/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:08:23 2026
/////////////////////////////////////////////////////////////


module mul8 ( a, b, p );
  input [7:0] a;
  input [7:0] b;
  output [15:0] p;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185;

  INVD0BWP12T30P140 U1 ( .I(a[0]), .ZN(n128) );
  INVD0BWP12T30P140 U2 ( .I(b[0]), .ZN(n126) );
  NR2D0BWP12T30P140 U3 ( .A1(n128), .A2(n126), .ZN(p[0]) );
  INVD0BWP12T30P140 U4 ( .I(a[6]), .ZN(n49) );
  INVD0BWP12T30P140 U5 ( .I(b[6]), .ZN(n50) );
  NR2D0BWP12T30P140 U6 ( .A1(n49), .A2(n50), .ZN(n6) );
  INVD0BWP12T30P140 U7 ( .I(b[7]), .ZN(n31) );
  INVD0BWP12T30P140 U8 ( .I(a[5]), .ZN(n66) );
  NR2D0BWP12T30P140 U9 ( .A1(n31), .A2(n66), .ZN(n5) );
  INVD0BWP12T30P140 U10 ( .I(a[7]), .ZN(n19) );
  INVD0BWP12T30P140 U11 ( .I(b[5]), .ZN(n81) );
  NR2D0BWP12T30P140 U12 ( .A1(n19), .A2(n81), .ZN(n4) );
  NR2D0BWP12T30P140 U13 ( .A1(n31), .A2(n49), .ZN(n2) );
  NR2D0BWP12T30P140 U14 ( .A1(n19), .A2(n50), .ZN(n1) );
  FA1D0BWP12T30P140 U15 ( .A(n3), .B(n2), .CI(n1), .CO(n143), .S(n150) );
  FA1D0BWP12T30P140 U16 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n12) );
  NR2D0BWP12T30P140 U17 ( .A1(n49), .A2(n81), .ZN(n9) );
  INVD0BWP12T30P140 U18 ( .I(a[4]), .ZN(n85) );
  NR2D0BWP12T30P140 U19 ( .A1(n31), .A2(n85), .ZN(n8) );
  INVD0BWP12T30P140 U20 ( .I(b[4]), .ZN(n98) );
  NR2D0BWP12T30P140 U21 ( .A1(n19), .A2(n98), .ZN(n7) );
  FA1D0BWP12T30P140 U22 ( .A(n9), .B(n8), .CI(n7), .CO(n11), .S(n15) );
  NR2D0BWP12T30P140 U23 ( .A1(n66), .A2(n50), .ZN(n14) );
  NR2D0BWP12T30P140 U24 ( .A1(n49), .A2(n98), .ZN(n18) );
  INVD0BWP12T30P140 U25 ( .I(a[3]), .ZN(n84) );
  NR2D0BWP12T30P140 U26 ( .A1(n31), .A2(n84), .ZN(n17) );
  INVD0BWP12T30P140 U27 ( .I(b[3]), .ZN(n101) );
  NR2D0BWP12T30P140 U28 ( .A1(n101), .A2(n19), .ZN(n16) );
  FA1D0BWP12T30P140 U29 ( .A(n12), .B(n11), .CI(n10), .CO(n149), .S(n153) );
  FA1D0BWP12T30P140 U30 ( .A(n15), .B(n14), .CI(n13), .CO(n10), .S(n22) );
  NR2D0BWP12T30P140 U31 ( .A1(n101), .A2(n49), .ZN(n34) );
  INVD0BWP12T30P140 U32 ( .I(a[2]), .ZN(n125) );
  NR2D0BWP12T30P140 U33 ( .A1(n31), .A2(n125), .ZN(n33) );
  INVD0BWP12T30P140 U34 ( .I(b[2]), .ZN(n102) );
  NR2D0BWP12T30P140 U35 ( .A1(n102), .A2(n19), .ZN(n32) );
  NR2D0BWP12T30P140 U36 ( .A1(n85), .A2(n50), .ZN(n36) );
  NR2D0BWP12T30P140 U37 ( .A1(n66), .A2(n81), .ZN(n35) );
  FA1D0BWP12T30P140 U38 ( .A(n18), .B(n17), .CI(n16), .CO(n13), .S(n25) );
  NR2D0BWP12T30P140 U39 ( .A1(n85), .A2(n81), .ZN(n28) );
  NR2D0BWP12T30P140 U40 ( .A1(n84), .A2(n50), .ZN(n27) );
  NR2D0BWP12T30P140 U41 ( .A1(n66), .A2(n98), .ZN(n26) );
  INR4D0BWP12T30P140 U42 ( .A1(b[1]), .B1(n19), .B2(n49), .B3(n126), .ZN(n46)
         );
  NR2D0BWP12T30P140 U43 ( .A1(n125), .A2(n50), .ZN(n45) );
  NR2D0BWP12T30P140 U44 ( .A1(n84), .A2(n81), .ZN(n44) );
  INR4D0BWP12T30P140 U45 ( .A1(b[1]), .B1(n102), .B2(n19), .B3(n49), .ZN(n55)
         );
  INVD0BWP12T30P140 U46 ( .I(a[1]), .ZN(n127) );
  NR2D0BWP12T30P140 U47 ( .A1(n127), .A2(n31), .ZN(n53) );
  NR2D0BWP12T30P140 U48 ( .A1(n85), .A2(n98), .ZN(n52) );
  NR2D0BWP12T30P140 U49 ( .A1(n101), .A2(n66), .ZN(n51) );
  FA1D0BWP12T30P140 U50 ( .A(n22), .B(n21), .CI(n20), .CO(n152), .S(n156) );
  FA1D0BWP12T30P140 U51 ( .A(n25), .B(n24), .CI(n23), .CO(n20), .S(n40) );
  FA1D0BWP12T30P140 U52 ( .A(n28), .B(n27), .CI(n26), .CO(n24), .S(n43) );
  CKND2D1BWP12T30P140 U53 ( .A1(b[2]), .A2(a[6]), .ZN(n30) );
  CKND2D1BWP12T30P140 U54 ( .A1(b[1]), .A2(a[7]), .ZN(n29) );
  AOI21D0BWP12T30P140 U55 ( .A1(n30), .A2(n29), .B(n55), .ZN(n72) );
  NR2D0BWP12T30P140 U56 ( .A1(n127), .A2(n50), .ZN(n69) );
  NR2D0BWP12T30P140 U57 ( .A1(n128), .A2(n31), .ZN(n68) );
  NR2D0BWP12T30P140 U58 ( .A1(n102), .A2(n66), .ZN(n67) );
  NR2D0BWP12T30P140 U59 ( .A1(n125), .A2(n81), .ZN(n65) );
  NR2D0BWP12T30P140 U60 ( .A1(n101), .A2(n85), .ZN(n64) );
  NR2D0BWP12T30P140 U61 ( .A1(n84), .A2(n98), .ZN(n63) );
  FA1D0BWP12T30P140 U62 ( .A(n34), .B(n33), .CI(n32), .CO(n37), .S(n41) );
  FA1D0BWP12T30P140 U63 ( .A(n37), .B(n36), .CI(n35), .CO(n21), .S(n38) );
  FA1D0BWP12T30P140 U64 ( .A(n40), .B(n39), .CI(n38), .CO(n155), .S(n159) );
  FA1D0BWP12T30P140 U65 ( .A(n43), .B(n42), .CI(n41), .CO(n39), .S(n59) );
  FA1D0BWP12T30P140 U66 ( .A(n46), .B(n45), .CI(n44), .CO(n56), .S(n62) );
  CKND2D1BWP12T30P140 U67 ( .A1(b[1]), .A2(a[6]), .ZN(n48) );
  CKND2D1BWP12T30P140 U68 ( .A1(a[7]), .A2(b[0]), .ZN(n47) );
  AOI21D0BWP12T30P140 U69 ( .A1(n48), .A2(n47), .B(n46), .ZN(n88) );
  INR4D0BWP12T30P140 U70 ( .A1(b[1]), .B1(n49), .B2(n126), .B3(n66), .ZN(n87)
         );
  NR2D0BWP12T30P140 U71 ( .A1(n127), .A2(n81), .ZN(n106) );
  NR2D0BWP12T30P140 U72 ( .A1(n128), .A2(n50), .ZN(n105) );
  NR2D0BWP12T30P140 U73 ( .A1(n102), .A2(n85), .ZN(n104) );
  FA1D0BWP12T30P140 U74 ( .A(n53), .B(n52), .CI(n51), .CO(n54), .S(n60) );
  FA1D0BWP12T30P140 U75 ( .A(n56), .B(n55), .CI(n54), .CO(n23), .S(n57) );
  FA1D0BWP12T30P140 U76 ( .A(n59), .B(n58), .CI(n57), .CO(n158), .S(n162) );
  FA1D0BWP12T30P140 U77 ( .A(n62), .B(n61), .CI(n60), .CO(n58), .S(n75) );
  FA1D0BWP12T30P140 U78 ( .A(n65), .B(n64), .CI(n63), .CO(n70), .S(n78) );
  INR4D0BWP12T30P140 U79 ( .A1(b[1]), .B1(n126), .B2(n66), .B3(n85), .ZN(n94)
         );
  NR2D0BWP12T30P140 U80 ( .A1(n125), .A2(n98), .ZN(n93) );
  NR2D0BWP12T30P140 U81 ( .A1(n101), .A2(n84), .ZN(n92) );
  FA1D0BWP12T30P140 U82 ( .A(n69), .B(n68), .CI(n67), .CO(n71), .S(n76) );
  FA1D0BWP12T30P140 U83 ( .A(n72), .B(n71), .CI(n70), .CO(n42), .S(n73) );
  FA1D0BWP12T30P140 U84 ( .A(n75), .B(n74), .CI(n73), .CO(n161), .S(n165) );
  FA1D0BWP12T30P140 U85 ( .A(n78), .B(n77), .CI(n76), .CO(n74), .S(n91) );
  CKND2D1BWP12T30P140 U86 ( .A1(b[1]), .A2(a[5]), .ZN(n80) );
  CKND2D1BWP12T30P140 U87 ( .A1(a[6]), .A2(b[0]), .ZN(n79) );
  AOI21D0BWP12T30P140 U88 ( .A1(n80), .A2(n79), .B(n87), .ZN(n141) );
  NR2D0BWP12T30P140 U89 ( .A1(n101), .A2(n125), .ZN(n97) );
  NR2D0BWP12T30P140 U90 ( .A1(n128), .A2(n81), .ZN(n96) );
  NR2D0BWP12T30P140 U91 ( .A1(n102), .A2(n84), .ZN(n95) );
  CKND2D1BWP12T30P140 U92 ( .A1(b[1]), .A2(a[4]), .ZN(n83) );
  CKND2D1BWP12T30P140 U93 ( .A1(b[0]), .A2(a[5]), .ZN(n82) );
  AOI21D0BWP12T30P140 U94 ( .A1(n83), .A2(n82), .B(n94), .ZN(n138) );
  NR2D0BWP12T30P140 U95 ( .A1(n127), .A2(n98), .ZN(n137) );
  INR4D0BWP12T30P140 U96 ( .A1(b[1]), .B1(n126), .B2(n85), .B3(n84), .ZN(n136)
         );
  FA1D0BWP12T30P140 U97 ( .A(n88), .B(n87), .CI(n86), .CO(n61), .S(n89) );
  FA1D0BWP12T30P140 U98 ( .A(n91), .B(n90), .CI(n89), .CO(n164), .S(n168) );
  FA1D0BWP12T30P140 U99 ( .A(n94), .B(n93), .CI(n92), .CO(n77), .S(n109) );
  FA1D0BWP12T30P140 U100 ( .A(n97), .B(n96), .CI(n95), .CO(n140), .S(n112) );
  NR2D0BWP12T30P140 U101 ( .A1(n127), .A2(n101), .ZN(n135) );
  NR2D0BWP12T30P140 U102 ( .A1(n128), .A2(n98), .ZN(n134) );
  NR2D0BWP12T30P140 U103 ( .A1(n102), .A2(n125), .ZN(n133) );
  CKND2D1BWP12T30P140 U104 ( .A1(b[1]), .A2(a[3]), .ZN(n100) );
  CKND2D1BWP12T30P140 U105 ( .A1(b[0]), .A2(a[4]), .ZN(n99) );
  AO21D0BWP12T30P140 U106 ( .A1(n100), .A2(n99), .B(n136), .Z(n114) );
  ND4D0BWP12T30P140 U107 ( .A1(b[1]), .A2(b[0]), .A3(a[3]), .A4(a[2]), .ZN(
        n129) );
  ND4D0BWP12T30P140 U108 ( .A1(a[0]), .A2(b[2]), .A3(a[1]), .A4(b[1]), .ZN(
        n120) );
  INVD0BWP12T30P140 U109 ( .I(n120), .ZN(n122) );
  NR4D0BWP12T30P140 U110 ( .A1(n128), .A2(n102), .A3(n127), .A4(n101), .ZN(
        n116) );
  NR2D0BWP12T30P140 U111 ( .A1(n122), .A2(n116), .ZN(n113) );
  INVD0BWP12T30P140 U112 ( .I(n103), .ZN(n110) );
  FA1D0BWP12T30P140 U113 ( .A(n106), .B(n105), .CI(n104), .CO(n86), .S(n107)
         );
  FA1D0BWP12T30P140 U114 ( .A(n109), .B(n108), .CI(n107), .CO(n167), .S(n171)
         );
  FA1D0BWP12T30P140 U115 ( .A(n112), .B(n111), .CI(n110), .CO(n108), .S(n174)
         );
  FA1D0BWP12T30P140 U116 ( .A(n114), .B(n129), .CI(n113), .CO(n103), .S(n115)
         );
  INVD0BWP12T30P140 U117 ( .I(n115), .ZN(n177) );
  CKND2D1BWP12T30P140 U118 ( .A1(a[0]), .A2(b[3]), .ZN(n118) );
  CKND2D1BWP12T30P140 U119 ( .A1(b[2]), .A2(a[1]), .ZN(n117) );
  AOI21D0BWP12T30P140 U120 ( .A1(n118), .A2(n117), .B(n116), .ZN(n121) );
  CKND2D1BWP12T30P140 U121 ( .A1(n121), .A2(n120), .ZN(n119) );
  OAI21D0BWP12T30P140 U122 ( .A1(n121), .A2(n120), .B(n119), .ZN(n180) );
  CKND2D1BWP12T30P140 U123 ( .A1(a[0]), .A2(b[2]), .ZN(n124) );
  CKND2D1BWP12T30P140 U124 ( .A1(a[1]), .A2(b[1]), .ZN(n123) );
  AOI21D0BWP12T30P140 U125 ( .A1(n124), .A2(n123), .B(n122), .ZN(n182) );
  NR2D0BWP12T30P140 U126 ( .A1(n126), .A2(n125), .ZN(n181) );
  INR4D0BWP12T30P140 U127 ( .A1(b[1]), .B1(n128), .B2(n127), .B3(n126), .ZN(
        n183) );
  CKND2D1BWP12T30P140 U128 ( .A1(b[1]), .A2(a[2]), .ZN(n132) );
  CKND2D1BWP12T30P140 U129 ( .A1(b[0]), .A2(a[3]), .ZN(n131) );
  INVD0BWP12T30P140 U130 ( .I(n129), .ZN(n130) );
  AOI21D0BWP12T30P140 U131 ( .A1(n132), .A2(n131), .B(n130), .ZN(n178) );
  FA1D0BWP12T30P140 U132 ( .A(n135), .B(n134), .CI(n133), .CO(n111), .S(n175)
         );
  FA1D0BWP12T30P140 U133 ( .A(n138), .B(n137), .CI(n136), .CO(n139), .S(n172)
         );
  FA1D0BWP12T30P140 U134 ( .A(n141), .B(n140), .CI(n139), .CO(n90), .S(n169)
         );
  NR2D0BWP12T30P140 U135 ( .A1(n143), .A2(n142), .ZN(n147) );
  AOI21D0BWP12T30P140 U136 ( .A1(n143), .A2(n142), .B(n147), .ZN(n145) );
  ND2D0BWP12T30P140 U137 ( .A1(a[7]), .A2(b[7]), .ZN(n146) );
  ND2D0BWP12T30P140 U138 ( .A1(n145), .A2(n146), .ZN(n144) );
  OAI21D0BWP12T30P140 U139 ( .A1(n145), .A2(n146), .B(n144), .ZN(p[14]) );
  NR2D0BWP12T30P140 U140 ( .A1(n147), .A2(n146), .ZN(p[15]) );
  FA1D0BWP12T30P140 U141 ( .A(n150), .B(n149), .CI(n148), .CO(n142), .S(p[13])
         );
  FA1D0BWP12T30P140 U142 ( .A(n153), .B(n152), .CI(n151), .CO(n148), .S(p[12])
         );
  FA1D0BWP12T30P140 U143 ( .A(n156), .B(n155), .CI(n154), .CO(n151), .S(p[11])
         );
  FA1D0BWP12T30P140 U144 ( .A(n159), .B(n158), .CI(n157), .CO(n154), .S(p[10])
         );
  FA1D0BWP12T30P140 U145 ( .A(n162), .B(n161), .CI(n160), .CO(n157), .S(p[9])
         );
  FA1D0BWP12T30P140 U146 ( .A(n165), .B(n164), .CI(n163), .CO(n160), .S(p[8])
         );
  FA1D0BWP12T30P140 U147 ( .A(n168), .B(n167), .CI(n166), .CO(n163), .S(p[7])
         );
  FA1D0BWP12T30P140 U148 ( .A(n171), .B(n170), .CI(n169), .CO(n166), .S(p[6])
         );
  FA1D0BWP12T30P140 U149 ( .A(n174), .B(n173), .CI(n172), .CO(n170), .S(p[5])
         );
  FA1D0BWP12T30P140 U150 ( .A(n177), .B(n176), .CI(n175), .CO(n173), .S(p[4])
         );
  FA1D0BWP12T30P140 U151 ( .A(n180), .B(n179), .CI(n178), .CO(n176), .S(p[3])
         );
  FA1D0BWP12T30P140 U152 ( .A(n182), .B(n181), .CI(n183), .CO(n179), .S(p[2])
         );
  ND2D0BWP12T30P140 U153 ( .A1(a[1]), .A2(b[0]), .ZN(n185) );
  ND2D0BWP12T30P140 U154 ( .A1(a[0]), .A2(b[1]), .ZN(n184) );
  AOI21D0BWP12T30P140 U155 ( .A1(n185), .A2(n184), .B(n183), .ZN(p[1]) );
endmodule

