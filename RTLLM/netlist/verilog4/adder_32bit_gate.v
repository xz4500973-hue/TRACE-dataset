/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:35:40 2026
/////////////////////////////////////////////////////////////


module adder_32bit ( A, B, S, C32 );
  input [32:1] A;
  input [32:1] B;
  output [32:1] S;
  output C32;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101;

  ND2D0BWP12T30P140 U33 ( .A1(B[25]), .A2(A[25]), .ZN(n37) );
  INVD0BWP12T30P140 U34 ( .I(n37), .ZN(n12) );
  FA1D0BWP12T30P140 U35 ( .A(A[29]), .B(B[29]), .CI(n7), .CO(n38), .S(n8) );
  INVD0BWP12T30P140 U36 ( .I(n8), .ZN(n44) );
  FA1D0BWP12T30P140 U37 ( .A(A[28]), .B(B[28]), .CI(n9), .CO(n7), .S(n46) );
  FA1D0BWP12T30P140 U38 ( .A(A[27]), .B(B[27]), .CI(n10), .CO(n9), .S(n11) );
  INVD0BWP12T30P140 U39 ( .I(n11), .ZN(n48) );
  FA1D0BWP12T30P140 U40 ( .A(A[26]), .B(B[26]), .CI(n12), .CO(n10), .S(n50) );
  ND2D0BWP12T30P140 U41 ( .A1(B[17]), .A2(A[17]), .ZN(n33) );
  INVD0BWP12T30P140 U42 ( .I(n33), .ZN(n20) );
  INVD0BWP12T30P140 U43 ( .I(n13), .ZN(n55) );
  FA1D0BWP12T30P140 U44 ( .A(A[22]), .B(B[22]), .CI(n14), .CO(n34), .S(n15) );
  INVD0BWP12T30P140 U45 ( .I(n15), .ZN(n59) );
  FA1D0BWP12T30P140 U46 ( .A(A[21]), .B(B[21]), .CI(n16), .CO(n14), .S(n61) );
  FA1D0BWP12T30P140 U47 ( .A(A[20]), .B(B[20]), .CI(n17), .CO(n16), .S(n18) );
  INVD0BWP12T30P140 U48 ( .I(n18), .ZN(n63) );
  FA1D0BWP12T30P140 U49 ( .A(A[19]), .B(B[19]), .CI(n19), .CO(n17), .S(n65) );
  FA1D0BWP12T30P140 U50 ( .A(A[18]), .B(B[18]), .CI(n20), .CO(n19), .S(n91) );
  AN2D0BWP12T30P140 U51 ( .A1(B[9]), .A2(A[9]), .Z(n27) );
  INVD0BWP12T30P140 U52 ( .I(n21), .ZN(n69) );
  FA1D0BWP12T30P140 U53 ( .A(A[14]), .B(B[14]), .CI(n22), .CO(n30), .S(n23) );
  INVD0BWP12T30P140 U54 ( .I(n23), .ZN(n76) );
  FA1D0BWP12T30P140 U55 ( .A(A[13]), .B(B[13]), .CI(n24), .CO(n22), .S(n78) );
  FA1D0BWP12T30P140 U56 ( .A(A[12]), .B(B[12]), .CI(n25), .CO(n24), .S(n26) );
  INVD0BWP12T30P140 U57 ( .I(n26), .ZN(n81) );
  AN2D0BWP12T30P140 U58 ( .A1(B[1]), .A2(A[1]), .Z(n95) );
  IAO21D0BWP12T30P140 U59 ( .A1(B[9]), .A2(A[9]), .B(n27), .ZN(n93) );
  FA1D0BWP12T30P140 U60 ( .A(A[10]), .B(B[10]), .CI(n27), .CO(n28), .S(n82) );
  FA1D0BWP12T30P140 U61 ( .A(A[11]), .B(B[11]), .CI(n28), .CO(n25), .S(n98) );
  AN3D0BWP12T30P140 U62 ( .A1(n93), .A2(n82), .A3(n98), .Z(n29) );
  ND2D0BWP12T30P140 U63 ( .A1(n94), .A2(n29), .ZN(n80) );
  NR2D0BWP12T30P140 U64 ( .A1(n81), .A2(n80), .ZN(n79) );
  ND2D0BWP12T30P140 U65 ( .A1(n78), .A2(n79), .ZN(n77) );
  NR2D0BWP12T30P140 U66 ( .A1(n76), .A2(n77), .ZN(n75) );
  FA1D0BWP12T30P140 U67 ( .A(A[15]), .B(B[15]), .CI(n30), .CO(n31), .S(n74) );
  ND2D0BWP12T30P140 U68 ( .A1(n75), .A2(n74), .ZN(n73) );
  NR2D0BWP12T30P140 U69 ( .A1(n69), .A2(n73), .ZN(n68) );
  FA1D0BWP12T30P140 U70 ( .A(A[16]), .B(B[16]), .CI(n31), .CO(n32), .S(n21) );
  NR2D0BWP12T30P140 U71 ( .A1(n68), .A2(n32), .ZN(n67) );
  OAI21D0BWP12T30P140 U72 ( .A1(B[17]), .A2(A[17]), .B(n33), .ZN(n66) );
  NR2D0BWP12T30P140 U73 ( .A1(n67), .A2(n66), .ZN(n90) );
  AN2D0BWP12T30P140 U74 ( .A1(n91), .A2(n90), .Z(n89) );
  ND2D0BWP12T30P140 U75 ( .A1(n65), .A2(n89), .ZN(n64) );
  NR2D0BWP12T30P140 U76 ( .A1(n63), .A2(n64), .ZN(n62) );
  ND2D0BWP12T30P140 U77 ( .A1(n61), .A2(n62), .ZN(n60) );
  NR2D0BWP12T30P140 U78 ( .A1(n59), .A2(n60), .ZN(n58) );
  FA1D0BWP12T30P140 U79 ( .A(A[23]), .B(B[23]), .CI(n34), .CO(n35), .S(n57) );
  ND2D0BWP12T30P140 U80 ( .A1(n58), .A2(n57), .ZN(n56) );
  NR2D0BWP12T30P140 U81 ( .A1(n55), .A2(n56), .ZN(n54) );
  FA1D0BWP12T30P140 U82 ( .A(A[24]), .B(B[24]), .CI(n35), .CO(n36), .S(n13) );
  NR2D0BWP12T30P140 U83 ( .A1(n54), .A2(n36), .ZN(n53) );
  OAI21D0BWP12T30P140 U84 ( .A1(B[25]), .A2(A[25]), .B(n37), .ZN(n52) );
  NR2D0BWP12T30P140 U85 ( .A1(n53), .A2(n52), .ZN(n51) );
  ND2D0BWP12T30P140 U86 ( .A1(n50), .A2(n51), .ZN(n49) );
  NR2D0BWP12T30P140 U87 ( .A1(n48), .A2(n49), .ZN(n47) );
  ND2D0BWP12T30P140 U88 ( .A1(n46), .A2(n47), .ZN(n45) );
  NR2D0BWP12T30P140 U89 ( .A1(n44), .A2(n45), .ZN(n43) );
  ND2D0BWP12T30P140 U90 ( .A1(n42), .A2(n43), .ZN(n41) );
  FA1D0BWP12T30P140 U91 ( .A(A[30]), .B(B[30]), .CI(n38), .CO(n70), .S(n42) );
  INVD0BWP12T30P140 U92 ( .I(n39), .ZN(n40) );
  NR2D0BWP12T30P140 U93 ( .A1(n40), .A2(n41), .ZN(n72) );
  AOI21D0BWP12T30P140 U94 ( .A1(n41), .A2(n40), .B(n72), .ZN(S[31]) );
  OA21D0BWP12T30P140 U95 ( .A1(n42), .A2(n43), .B(n41), .Z(S[30]) );
  AOI21D0BWP12T30P140 U96 ( .A1(n44), .A2(n45), .B(n43), .ZN(S[29]) );
  OA21D0BWP12T30P140 U97 ( .A1(n46), .A2(n47), .B(n45), .Z(S[28]) );
  AOI21D0BWP12T30P140 U98 ( .A1(n48), .A2(n49), .B(n47), .ZN(S[27]) );
  OA21D0BWP12T30P140 U99 ( .A1(n50), .A2(n51), .B(n49), .Z(S[26]) );
  AOI21D0BWP12T30P140 U100 ( .A1(n53), .A2(n52), .B(n51), .ZN(S[25]) );
  AOI21D0BWP12T30P140 U101 ( .A1(n55), .A2(n56), .B(n54), .ZN(S[24]) );
  OA21D0BWP12T30P140 U102 ( .A1(n58), .A2(n57), .B(n56), .Z(S[23]) );
  AOI21D0BWP12T30P140 U103 ( .A1(n59), .A2(n60), .B(n58), .ZN(S[22]) );
  OA21D0BWP12T30P140 U104 ( .A1(n61), .A2(n62), .B(n60), .Z(S[21]) );
  AOI21D0BWP12T30P140 U105 ( .A1(n63), .A2(n64), .B(n62), .ZN(S[20]) );
  OA21D0BWP12T30P140 U106 ( .A1(n65), .A2(n89), .B(n64), .Z(S[19]) );
  AOI21D0BWP12T30P140 U107 ( .A1(n67), .A2(n66), .B(n90), .ZN(S[17]) );
  AOI21D0BWP12T30P140 U108 ( .A1(n69), .A2(n73), .B(n68), .ZN(S[16]) );
  FA1D0BWP12T30P140 U109 ( .A(A[31]), .B(B[31]), .CI(n70), .CO(n99), .S(n39)
         );
  ND2D0BWP12T30P140 U110 ( .A1(n72), .A2(n71), .ZN(n100) );
  OA21D0BWP12T30P140 U111 ( .A1(n72), .A2(n71), .B(n100), .Z(S[32]) );
  OA21D0BWP12T30P140 U112 ( .A1(n75), .A2(n74), .B(n73), .Z(S[15]) );
  AOI21D0BWP12T30P140 U113 ( .A1(n76), .A2(n77), .B(n75), .ZN(S[14]) );
  OA21D0BWP12T30P140 U114 ( .A1(n78), .A2(n79), .B(n77), .Z(S[13]) );
  AOI21D0BWP12T30P140 U115 ( .A1(n81), .A2(n80), .B(n79), .ZN(S[12]) );
  AN2D0BWP12T30P140 U116 ( .A1(n94), .A2(n93), .Z(n92) );
  ND3D0BWP12T30P140 U117 ( .A1(n94), .A2(n93), .A3(n82), .ZN(n96) );
  OA21D0BWP12T30P140 U118 ( .A1(n82), .A2(n92), .B(n96), .Z(S[10]) );
  FA1D0BWP12T30P140 U119 ( .A(A[8]), .B(B[8]), .CI(n83), .CO(n94), .S(S[8]) );
  FA1D0BWP12T30P140 U120 ( .A(A[7]), .B(B[7]), .CI(n84), .CO(n83), .S(S[7]) );
  FA1D0BWP12T30P140 U121 ( .A(A[6]), .B(B[6]), .CI(n85), .CO(n84), .S(S[6]) );
  FA1D0BWP12T30P140 U122 ( .A(A[5]), .B(B[5]), .CI(n86), .CO(n85), .S(S[5]) );
  FA1D0BWP12T30P140 U123 ( .A(A[4]), .B(B[4]), .CI(n87), .CO(n86), .S(S[4]) );
  FA1D0BWP12T30P140 U124 ( .A(A[3]), .B(B[3]), .CI(n88), .CO(n87), .S(S[3]) );
  FA1D0BWP12T30P140 U125 ( .A(A[2]), .B(B[2]), .CI(n95), .CO(n88), .S(S[2]) );
  IAO21D0BWP12T30P140 U126 ( .A1(n91), .A2(n90), .B(n89), .ZN(S[18]) );
  IAO21D0BWP12T30P140 U127 ( .A1(n94), .A2(n93), .B(n92), .ZN(S[9]) );
  IAO21D0BWP12T30P140 U128 ( .A1(B[1]), .A2(A[1]), .B(n95), .ZN(S[1]) );
  INVD0BWP12T30P140 U129 ( .I(n98), .ZN(n97) );
  MUX2ND0BWP12T30P140 U130 ( .I0(n98), .I1(n97), .S(n96), .ZN(S[11]) );
  FA1D0BWP12T30P140 U131 ( .A(A[32]), .B(B[32]), .CI(n99), .CO(n101), .S(n71)
         );
  IND2D1BWP12T30P140 U132 ( .A1(n101), .B1(n100), .ZN(C32) );
endmodule

