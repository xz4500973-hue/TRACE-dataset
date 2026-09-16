/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:57:52 2026
/////////////////////////////////////////////////////////////


module adder_16bit ( a, b, Cin, y, Co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] y;
  input Cin;
  output Co;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66;

  ND2D0BWP12T30P140 U26 ( .A1(b[12]), .A2(a[12]), .ZN(n27) );
  INVD0BWP12T30P140 U27 ( .I(n27), .ZN(n28) );
  INVD0BWP12T30P140 U28 ( .I(n8), .ZN(n29) );
  ND2D0BWP12T30P140 U29 ( .A1(b[8]), .A2(a[8]), .ZN(n23) );
  INVD0BWP12T30P140 U30 ( .I(n23), .ZN(n24) );
  INVD0BWP12T30P140 U31 ( .I(n9), .ZN(n36) );
  FA1D0BWP12T30P140 U32 ( .A(a[10]), .B(b[10]), .CI(n10), .CO(n25), .S(n38) );
  ND2D0BWP12T30P140 U33 ( .A1(b[4]), .A2(a[4]), .ZN(n19) );
  INVD0BWP12T30P140 U34 ( .I(n19), .ZN(n20) );
  INVD0BWP12T30P140 U35 ( .I(n11), .ZN(n42) );
  FA1D0BWP12T30P140 U36 ( .A(a[6]), .B(b[6]), .CI(n12), .CO(n21), .S(n47) );
  AN2D0BWP12T30P140 U37 ( .A1(b[0]), .A2(a[0]), .Z(n16) );
  INVD0BWP12T30P140 U38 ( .I(n13), .ZN(n51) );
  FA1D0BWP12T30P140 U39 ( .A(a[2]), .B(b[2]), .CI(n14), .CO(n17), .S(n53) );
  FA1D0BWP12T30P140 U40 ( .A(a[1]), .B(b[1]), .CI(n16), .CO(n14), .S(n15) );
  INVD0BWP12T30P140 U41 ( .I(n15), .ZN(n55) );
  IAO21D0BWP12T30P140 U42 ( .A1(b[0]), .A2(a[0]), .B(n16), .ZN(n57) );
  ND2D0BWP12T30P140 U43 ( .A1(n57), .A2(Cin), .ZN(n56) );
  NR2D0BWP12T30P140 U44 ( .A1(n55), .A2(n56), .ZN(n54) );
  ND2D0BWP12T30P140 U45 ( .A1(n53), .A2(n54), .ZN(n52) );
  NR2D0BWP12T30P140 U46 ( .A1(n51), .A2(n52), .ZN(n50) );
  FA1D0BWP12T30P140 U47 ( .A(a[3]), .B(b[3]), .CI(n17), .CO(n18), .S(n13) );
  NR2D0BWP12T30P140 U48 ( .A1(n50), .A2(n18), .ZN(n49) );
  OAI21D0BWP12T30P140 U49 ( .A1(b[4]), .A2(a[4]), .B(n19), .ZN(n48) );
  NR2D0BWP12T30P140 U50 ( .A1(n49), .A2(n48), .ZN(n63) );
  FA1D0BWP12T30P140 U51 ( .A(a[5]), .B(b[5]), .CI(n20), .CO(n12), .S(n62) );
  AN2D0BWP12T30P140 U52 ( .A1(n63), .A2(n62), .Z(n61) );
  ND2D0BWP12T30P140 U53 ( .A1(n47), .A2(n61), .ZN(n46) );
  NR2D0BWP12T30P140 U54 ( .A1(n42), .A2(n46), .ZN(n41) );
  FA1D0BWP12T30P140 U55 ( .A(a[7]), .B(b[7]), .CI(n21), .CO(n22), .S(n11) );
  NR2D0BWP12T30P140 U56 ( .A1(n41), .A2(n22), .ZN(n40) );
  OAI21D0BWP12T30P140 U57 ( .A1(b[8]), .A2(a[8]), .B(n23), .ZN(n39) );
  NR2D0BWP12T30P140 U58 ( .A1(n40), .A2(n39), .ZN(n60) );
  FA1D0BWP12T30P140 U59 ( .A(a[9]), .B(b[9]), .CI(n24), .CO(n10), .S(n59) );
  AN2D0BWP12T30P140 U60 ( .A1(n60), .A2(n59), .Z(n58) );
  ND2D0BWP12T30P140 U61 ( .A1(n38), .A2(n58), .ZN(n37) );
  NR2D0BWP12T30P140 U62 ( .A1(n36), .A2(n37), .ZN(n35) );
  FA1D0BWP12T30P140 U63 ( .A(a[11]), .B(b[11]), .CI(n25), .CO(n26), .S(n9) );
  NR2D0BWP12T30P140 U64 ( .A1(n35), .A2(n26), .ZN(n34) );
  OAI21D0BWP12T30P140 U65 ( .A1(b[12]), .A2(a[12]), .B(n27), .ZN(n33) );
  NR2D0BWP12T30P140 U66 ( .A1(n34), .A2(n33), .ZN(n32) );
  FA1D0BWP12T30P140 U67 ( .A(a[13]), .B(b[13]), .CI(n28), .CO(n43), .S(n31) );
  ND2D0BWP12T30P140 U68 ( .A1(n32), .A2(n31), .ZN(n30) );
  NR2D0BWP12T30P140 U69 ( .A1(n29), .A2(n30), .ZN(n45) );
  AOI21D0BWP12T30P140 U70 ( .A1(n29), .A2(n30), .B(n45), .ZN(y[14]) );
  OA21D0BWP12T30P140 U71 ( .A1(n32), .A2(n31), .B(n30), .Z(y[13]) );
  AOI21D0BWP12T30P140 U72 ( .A1(n34), .A2(n33), .B(n32), .ZN(y[12]) );
  AOI21D0BWP12T30P140 U73 ( .A1(n36), .A2(n37), .B(n35), .ZN(y[11]) );
  OA21D0BWP12T30P140 U74 ( .A1(n38), .A2(n58), .B(n37), .Z(y[10]) );
  AOI21D0BWP12T30P140 U75 ( .A1(n40), .A2(n39), .B(n60), .ZN(y[8]) );
  AOI21D0BWP12T30P140 U76 ( .A1(n42), .A2(n46), .B(n41), .ZN(y[7]) );
  FA1D0BWP12T30P140 U77 ( .A(a[14]), .B(b[14]), .CI(n43), .CO(n64), .S(n8) );
  ND2D0BWP12T30P140 U78 ( .A1(n45), .A2(n44), .ZN(n65) );
  OA21D0BWP12T30P140 U79 ( .A1(n45), .A2(n44), .B(n65), .Z(y[15]) );
  OA21D0BWP12T30P140 U80 ( .A1(n47), .A2(n61), .B(n46), .Z(y[6]) );
  AOI21D0BWP12T30P140 U81 ( .A1(n49), .A2(n48), .B(n63), .ZN(y[4]) );
  AOI21D0BWP12T30P140 U82 ( .A1(n51), .A2(n52), .B(n50), .ZN(y[3]) );
  OA21D0BWP12T30P140 U83 ( .A1(n53), .A2(n54), .B(n52), .Z(y[2]) );
  AOI21D0BWP12T30P140 U84 ( .A1(n55), .A2(n56), .B(n54), .ZN(y[1]) );
  OA21D0BWP12T30P140 U85 ( .A1(n57), .A2(Cin), .B(n56), .Z(y[0]) );
  IAO21D0BWP12T30P140 U86 ( .A1(n60), .A2(n59), .B(n58), .ZN(y[9]) );
  IAO21D0BWP12T30P140 U87 ( .A1(n63), .A2(n62), .B(n61), .ZN(y[5]) );
  FA1D0BWP12T30P140 U88 ( .A(a[15]), .B(b[15]), .CI(n64), .CO(n66), .S(n44) );
  IND2D1BWP12T30P140 U89 ( .A1(n66), .B1(n65), .ZN(Co) );
endmodule

