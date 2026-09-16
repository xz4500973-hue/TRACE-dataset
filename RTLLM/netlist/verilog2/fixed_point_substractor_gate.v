/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:56:18 2026
/////////////////////////////////////////////////////////////


module fixed_point_substractor ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [31:0] c;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93;

  INVD0BWP12T30P140 U2 ( .I(b[0]), .ZN(n2) );
  NR2D0BWP12T30P140 U3 ( .A1(n2), .A2(a[0]), .ZN(n88) );
  AO21D0BWP12T30P140 U4 ( .A1(a[0]), .A2(n2), .B(n88), .Z(c[0]) );
  INVD0BWP12T30P140 U5 ( .I(a[30]), .ZN(n92) );
  INVD0BWP12T30P140 U6 ( .I(a[29]), .ZN(n5) );
  INVD0BWP12T30P140 U7 ( .I(a[28]), .ZN(n8) );
  INVD0BWP12T30P140 U8 ( .I(a[27]), .ZN(n11) );
  INVD0BWP12T30P140 U9 ( .I(a[26]), .ZN(n14) );
  INVD0BWP12T30P140 U10 ( .I(a[25]), .ZN(n17) );
  INVD0BWP12T30P140 U11 ( .I(a[24]), .ZN(n20) );
  INVD0BWP12T30P140 U12 ( .I(a[23]), .ZN(n23) );
  INVD0BWP12T30P140 U13 ( .I(a[22]), .ZN(n26) );
  INVD0BWP12T30P140 U14 ( .I(a[21]), .ZN(n29) );
  INVD0BWP12T30P140 U15 ( .I(a[20]), .ZN(n32) );
  INVD0BWP12T30P140 U16 ( .I(a[19]), .ZN(n35) );
  INVD0BWP12T30P140 U17 ( .I(a[18]), .ZN(n38) );
  INVD0BWP12T30P140 U18 ( .I(a[17]), .ZN(n41) );
  INVD0BWP12T30P140 U19 ( .I(a[16]), .ZN(n44) );
  INVD0BWP12T30P140 U20 ( .I(a[15]), .ZN(n47) );
  INVD0BWP12T30P140 U21 ( .I(a[14]), .ZN(n50) );
  INVD0BWP12T30P140 U22 ( .I(a[13]), .ZN(n53) );
  INVD0BWP12T30P140 U23 ( .I(a[12]), .ZN(n56) );
  INVD0BWP12T30P140 U24 ( .I(a[11]), .ZN(n59) );
  INVD0BWP12T30P140 U25 ( .I(a[10]), .ZN(n62) );
  INVD0BWP12T30P140 U26 ( .I(a[9]), .ZN(n65) );
  INVD0BWP12T30P140 U27 ( .I(a[8]), .ZN(n68) );
  INVD0BWP12T30P140 U28 ( .I(a[7]), .ZN(n71) );
  INVD0BWP12T30P140 U29 ( .I(a[6]), .ZN(n74) );
  INVD0BWP12T30P140 U30 ( .I(a[5]), .ZN(n77) );
  INVD0BWP12T30P140 U31 ( .I(a[4]), .ZN(n80) );
  INVD0BWP12T30P140 U32 ( .I(a[3]), .ZN(n83) );
  INVD0BWP12T30P140 U33 ( .I(a[2]), .ZN(n86) );
  INVD0BWP12T30P140 U34 ( .I(a[1]), .ZN(n89) );
  INVD0BWP12T30P140 U35 ( .I(n3), .ZN(c[30]) );
  FA1D0BWP12T30P140 U36 ( .A(b[29]), .B(n5), .CI(n4), .CO(n91), .S(n6) );
  INVD0BWP12T30P140 U37 ( .I(n6), .ZN(c[29]) );
  FA1D0BWP12T30P140 U38 ( .A(b[28]), .B(n8), .CI(n7), .CO(n4), .S(n9) );
  INVD0BWP12T30P140 U39 ( .I(n9), .ZN(c[28]) );
  FA1D0BWP12T30P140 U40 ( .A(b[27]), .B(n11), .CI(n10), .CO(n7), .S(n12) );
  INVD0BWP12T30P140 U41 ( .I(n12), .ZN(c[27]) );
  FA1D0BWP12T30P140 U42 ( .A(b[26]), .B(n14), .CI(n13), .CO(n10), .S(n15) );
  INVD0BWP12T30P140 U43 ( .I(n15), .ZN(c[26]) );
  FA1D0BWP12T30P140 U44 ( .A(b[25]), .B(n17), .CI(n16), .CO(n13), .S(n18) );
  INVD0BWP12T30P140 U45 ( .I(n18), .ZN(c[25]) );
  FA1D0BWP12T30P140 U46 ( .A(b[24]), .B(n20), .CI(n19), .CO(n16), .S(n21) );
  INVD0BWP12T30P140 U47 ( .I(n21), .ZN(c[24]) );
  FA1D0BWP12T30P140 U48 ( .A(b[23]), .B(n23), .CI(n22), .CO(n19), .S(n24) );
  INVD0BWP12T30P140 U49 ( .I(n24), .ZN(c[23]) );
  FA1D0BWP12T30P140 U50 ( .A(b[22]), .B(n26), .CI(n25), .CO(n22), .S(n27) );
  INVD0BWP12T30P140 U51 ( .I(n27), .ZN(c[22]) );
  FA1D0BWP12T30P140 U52 ( .A(b[21]), .B(n29), .CI(n28), .CO(n25), .S(n30) );
  INVD0BWP12T30P140 U53 ( .I(n30), .ZN(c[21]) );
  FA1D0BWP12T30P140 U54 ( .A(b[20]), .B(n32), .CI(n31), .CO(n28), .S(n33) );
  INVD0BWP12T30P140 U55 ( .I(n33), .ZN(c[20]) );
  FA1D0BWP12T30P140 U56 ( .A(b[19]), .B(n35), .CI(n34), .CO(n31), .S(n36) );
  INVD0BWP12T30P140 U57 ( .I(n36), .ZN(c[19]) );
  FA1D0BWP12T30P140 U58 ( .A(b[18]), .B(n38), .CI(n37), .CO(n34), .S(n39) );
  INVD0BWP12T30P140 U59 ( .I(n39), .ZN(c[18]) );
  FA1D0BWP12T30P140 U60 ( .A(b[17]), .B(n41), .CI(n40), .CO(n37), .S(n42) );
  INVD0BWP12T30P140 U61 ( .I(n42), .ZN(c[17]) );
  FA1D0BWP12T30P140 U62 ( .A(b[16]), .B(n44), .CI(n43), .CO(n40), .S(n45) );
  INVD0BWP12T30P140 U63 ( .I(n45), .ZN(c[16]) );
  FA1D0BWP12T30P140 U64 ( .A(b[15]), .B(n47), .CI(n46), .CO(n43), .S(n48) );
  INVD0BWP12T30P140 U65 ( .I(n48), .ZN(c[15]) );
  FA1D0BWP12T30P140 U66 ( .A(b[14]), .B(n50), .CI(n49), .CO(n46), .S(n51) );
  INVD0BWP12T30P140 U67 ( .I(n51), .ZN(c[14]) );
  FA1D0BWP12T30P140 U68 ( .A(b[13]), .B(n53), .CI(n52), .CO(n49), .S(n54) );
  INVD0BWP12T30P140 U69 ( .I(n54), .ZN(c[13]) );
  FA1D0BWP12T30P140 U70 ( .A(b[12]), .B(n56), .CI(n55), .CO(n52), .S(n57) );
  INVD0BWP12T30P140 U71 ( .I(n57), .ZN(c[12]) );
  FA1D0BWP12T30P140 U72 ( .A(b[11]), .B(n59), .CI(n58), .CO(n55), .S(n60) );
  INVD0BWP12T30P140 U73 ( .I(n60), .ZN(c[11]) );
  FA1D0BWP12T30P140 U74 ( .A(b[10]), .B(n62), .CI(n61), .CO(n58), .S(n63) );
  INVD0BWP12T30P140 U75 ( .I(n63), .ZN(c[10]) );
  FA1D0BWP12T30P140 U76 ( .A(b[9]), .B(n65), .CI(n64), .CO(n61), .S(n66) );
  INVD0BWP12T30P140 U77 ( .I(n66), .ZN(c[9]) );
  FA1D0BWP12T30P140 U78 ( .A(b[8]), .B(n68), .CI(n67), .CO(n64), .S(n69) );
  INVD0BWP12T30P140 U79 ( .I(n69), .ZN(c[8]) );
  FA1D0BWP12T30P140 U80 ( .A(b[7]), .B(n71), .CI(n70), .CO(n67), .S(n72) );
  INVD0BWP12T30P140 U81 ( .I(n72), .ZN(c[7]) );
  FA1D0BWP12T30P140 U82 ( .A(b[6]), .B(n74), .CI(n73), .CO(n70), .S(n75) );
  INVD0BWP12T30P140 U83 ( .I(n75), .ZN(c[6]) );
  FA1D0BWP12T30P140 U84 ( .A(b[5]), .B(n77), .CI(n76), .CO(n73), .S(n78) );
  INVD0BWP12T30P140 U85 ( .I(n78), .ZN(c[5]) );
  FA1D0BWP12T30P140 U86 ( .A(b[4]), .B(n80), .CI(n79), .CO(n76), .S(n81) );
  INVD0BWP12T30P140 U87 ( .I(n81), .ZN(c[4]) );
  FA1D0BWP12T30P140 U88 ( .A(b[3]), .B(n83), .CI(n82), .CO(n79), .S(n84) );
  INVD0BWP12T30P140 U89 ( .I(n84), .ZN(c[3]) );
  FA1D0BWP12T30P140 U90 ( .A(b[2]), .B(n86), .CI(n85), .CO(n82), .S(n87) );
  INVD0BWP12T30P140 U91 ( .I(n87), .ZN(c[2]) );
  FA1D0BWP12T30P140 U92 ( .A(b[1]), .B(n89), .CI(n88), .CO(n85), .S(n90) );
  INVD0BWP12T30P140 U93 ( .I(n90), .ZN(c[1]) );
  FA1D0BWP12T30P140 U94 ( .A(b[30]), .B(n92), .CI(n91), .CO(n93), .S(n3) );
  XOR3D0BWP12T30P140 U95 ( .A1(n93), .A2(b[31]), .A3(a[31]), .Z(c[31]) );
endmodule

