/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:04:56 2026
/////////////////////////////////////////////////////////////


module fixed_point_adder ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [31:0] c;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80;

  CKBD0BWP12T30P140 U39 ( .I(n64), .Z(n79) );
  INVD0BWP12T30P140 U40 ( .I(b[31]), .ZN(n12) );
  INVD0BWP12T30P140 U41 ( .I(a[31]), .ZN(n13) );
  ND2D0BWP12T30P140 U42 ( .A1(b[0]), .A2(a[0]), .ZN(n75) );
  INVD0BWP12T30P140 U43 ( .I(a[1]), .ZN(n7) );
  INVD0BWP12T30P140 U44 ( .I(b[1]), .ZN(n76) );
  MAOI222D0BWP12T30P140 U45 ( .A(n75), .B(n7), .C(n76), .ZN(n72) );
  INVD0BWP12T30P140 U46 ( .I(n8), .ZN(c[31]) );
  FA1D1BWP12T30P140 U47 ( .A(n12), .B(n13), .CI(n9), .CO(n8), .S(n11) );
  INVD0BWP12T30P140 U48 ( .I(n11), .ZN(n10) );
  AOI33D0BWP12T30P140 U49 ( .A1(n13), .A2(n12), .A3(n11), .B1(a[31]), .B2(
        b[31]), .B3(n10), .ZN(n64) );
  IND2D1BWP12T30P140 U50 ( .A1(n64), .B1(n13), .ZN(n78) );
  CKBD0BWP12T30P140 U51 ( .I(n78), .Z(n73) );
  OAI211D0BWP12T30P140 U52 ( .A1(b[0]), .A2(a[0]), .B(n79), .C(n75), .ZN(n14)
         );
  ND2D0BWP12T30P140 U53 ( .A1(n73), .A2(n14), .ZN(c[0]) );
  FA1D1BWP12T30P140 U54 ( .A(a[30]), .B(b[30]), .CI(n15), .CO(n9), .S(n16) );
  IOA21D0BWP12T30P140 U55 ( .A1(n16), .A2(n64), .B(n73), .ZN(c[30]) );
  FA1D1BWP12T30P140 U56 ( .A(a[29]), .B(b[29]), .CI(n17), .CO(n15), .S(n18) );
  IOA21D0BWP12T30P140 U57 ( .A1(n18), .A2(n79), .B(n73), .ZN(c[29]) );
  FA1D1BWP12T30P140 U58 ( .A(a[28]), .B(b[28]), .CI(n19), .CO(n17), .S(n20) );
  IOA21D0BWP12T30P140 U59 ( .A1(n20), .A2(n64), .B(n73), .ZN(c[28]) );
  FA1D1BWP12T30P140 U60 ( .A(a[27]), .B(b[27]), .CI(n21), .CO(n19), .S(n22) );
  IOA21D0BWP12T30P140 U61 ( .A1(n22), .A2(n79), .B(n78), .ZN(c[27]) );
  FA1D1BWP12T30P140 U62 ( .A(a[26]), .B(b[26]), .CI(n23), .CO(n21), .S(n24) );
  IOA21D0BWP12T30P140 U63 ( .A1(n24), .A2(n64), .B(n78), .ZN(c[26]) );
  FA1D1BWP12T30P140 U64 ( .A(a[25]), .B(b[25]), .CI(n25), .CO(n23), .S(n26) );
  IOA21D0BWP12T30P140 U65 ( .A1(n26), .A2(n79), .B(n73), .ZN(c[25]) );
  FA1D1BWP12T30P140 U66 ( .A(a[24]), .B(b[24]), .CI(n27), .CO(n25), .S(n28) );
  IOA21D0BWP12T30P140 U67 ( .A1(n28), .A2(n64), .B(n78), .ZN(c[24]) );
  FA1D1BWP12T30P140 U68 ( .A(a[23]), .B(b[23]), .CI(n29), .CO(n27), .S(n30) );
  IOA21D0BWP12T30P140 U69 ( .A1(n30), .A2(n79), .B(n73), .ZN(c[23]) );
  FA1D1BWP12T30P140 U70 ( .A(a[22]), .B(b[22]), .CI(n31), .CO(n29), .S(n32) );
  IOA21D0BWP12T30P140 U71 ( .A1(n32), .A2(n64), .B(n78), .ZN(c[22]) );
  FA1D1BWP12T30P140 U72 ( .A(a[21]), .B(b[21]), .CI(n33), .CO(n31), .S(n34) );
  IOA21D0BWP12T30P140 U73 ( .A1(n34), .A2(n79), .B(n73), .ZN(c[21]) );
  FA1D1BWP12T30P140 U74 ( .A(a[20]), .B(b[20]), .CI(n35), .CO(n33), .S(n36) );
  IOA21D0BWP12T30P140 U75 ( .A1(n36), .A2(n64), .B(n78), .ZN(c[20]) );
  FA1D1BWP12T30P140 U76 ( .A(a[19]), .B(b[19]), .CI(n37), .CO(n35), .S(n38) );
  IOA21D0BWP12T30P140 U77 ( .A1(n38), .A2(n64), .B(n73), .ZN(c[19]) );
  FA1D1BWP12T30P140 U78 ( .A(a[18]), .B(b[18]), .CI(n39), .CO(n37), .S(n40) );
  IOA21D0BWP12T30P140 U79 ( .A1(n40), .A2(n64), .B(n78), .ZN(c[18]) );
  FA1D1BWP12T30P140 U80 ( .A(a[17]), .B(b[17]), .CI(n41), .CO(n39), .S(n42) );
  IOA21D0BWP12T30P140 U81 ( .A1(n42), .A2(n79), .B(n73), .ZN(c[17]) );
  FA1D1BWP12T30P140 U82 ( .A(a[16]), .B(b[16]), .CI(n43), .CO(n41), .S(n44) );
  IOA21D0BWP12T30P140 U83 ( .A1(n44), .A2(n64), .B(n78), .ZN(c[16]) );
  FA1D1BWP12T30P140 U84 ( .A(a[15]), .B(b[15]), .CI(n45), .CO(n43), .S(n46) );
  IOA21D0BWP12T30P140 U85 ( .A1(n46), .A2(n79), .B(n73), .ZN(c[15]) );
  FA1D1BWP12T30P140 U86 ( .A(a[14]), .B(b[14]), .CI(n47), .CO(n45), .S(n48) );
  IOA21D0BWP12T30P140 U87 ( .A1(n48), .A2(n79), .B(n78), .ZN(c[14]) );
  FA1D1BWP12T30P140 U88 ( .A(a[13]), .B(b[13]), .CI(n49), .CO(n47), .S(n50) );
  IOA21D0BWP12T30P140 U89 ( .A1(n50), .A2(n64), .B(n78), .ZN(c[13]) );
  FA1D1BWP12T30P140 U90 ( .A(a[12]), .B(b[12]), .CI(n51), .CO(n49), .S(n52) );
  IOA21D0BWP12T30P140 U91 ( .A1(n52), .A2(n79), .B(n73), .ZN(c[12]) );
  FA1D1BWP12T30P140 U92 ( .A(a[11]), .B(b[11]), .CI(n53), .CO(n51), .S(n54) );
  IOA21D0BWP12T30P140 U93 ( .A1(n54), .A2(n64), .B(n78), .ZN(c[11]) );
  FA1D1BWP12T30P140 U94 ( .A(a[10]), .B(b[10]), .CI(n55), .CO(n53), .S(n56) );
  IOA21D0BWP12T30P140 U95 ( .A1(n56), .A2(n79), .B(n73), .ZN(c[10]) );
  FA1D1BWP12T30P140 U96 ( .A(a[9]), .B(b[9]), .CI(n57), .CO(n55), .S(n58) );
  IOA21D0BWP12T30P140 U97 ( .A1(n58), .A2(n64), .B(n78), .ZN(c[9]) );
  FA1D1BWP12T30P140 U98 ( .A(a[8]), .B(b[8]), .CI(n59), .CO(n57), .S(n60) );
  IOA21D0BWP12T30P140 U99 ( .A1(n60), .A2(n79), .B(n73), .ZN(c[8]) );
  FA1D1BWP12T30P140 U100 ( .A(a[7]), .B(b[7]), .CI(n61), .CO(n59), .S(n62) );
  IOA21D0BWP12T30P140 U101 ( .A1(n62), .A2(n64), .B(n78), .ZN(c[7]) );
  FA1D1BWP12T30P140 U102 ( .A(a[6]), .B(b[6]), .CI(n63), .CO(n61), .S(n65) );
  IOA21D0BWP12T30P140 U103 ( .A1(n65), .A2(n64), .B(n73), .ZN(c[6]) );
  FA1D1BWP12T30P140 U104 ( .A(a[5]), .B(b[5]), .CI(n66), .CO(n63), .S(n67) );
  IOA21D0BWP12T30P140 U105 ( .A1(n67), .A2(n79), .B(n78), .ZN(c[5]) );
  FA1D1BWP12T30P140 U106 ( .A(a[4]), .B(b[4]), .CI(n68), .CO(n66), .S(n69) );
  IOA21D0BWP12T30P140 U107 ( .A1(n69), .A2(n79), .B(n73), .ZN(c[4]) );
  FA1D1BWP12T30P140 U108 ( .A(a[3]), .B(b[3]), .CI(n70), .CO(n68), .S(n71) );
  IOA21D0BWP12T30P140 U109 ( .A1(n71), .A2(n79), .B(n78), .ZN(c[3]) );
  FA1D1BWP12T30P140 U110 ( .A(a[2]), .B(b[2]), .CI(n72), .CO(n70), .S(n74) );
  IOA21D0BWP12T30P140 U111 ( .A1(n74), .A2(n79), .B(n73), .ZN(c[2]) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n76), .A2(n75), .B1(n75), .B2(n76), .ZN(n77)
         );
  MAOI22D0BWP12T30P140 U113 ( .A1(a[1]), .A2(n77), .B1(a[1]), .B2(n77), .ZN(
        n80) );
  IOA21D0BWP12T30P140 U114 ( .A1(n80), .A2(n79), .B(n78), .ZN(c[1]) );
endmodule

