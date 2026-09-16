/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:20:35 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62;

  INVD0BWP12T30P140 U34 ( .I(b[6]), .ZN(n31) );
  IND2D1BWP12T30P140 U35 ( .A1(a[7]), .B1(b[7]), .ZN(n43) );
  OAI21D0BWP12T30P140 U36 ( .A1(a[6]), .A2(n31), .B(n43), .ZN(n56) );
  INVD0BWP12T30P140 U37 ( .I(n56), .ZN(n42) );
  INR2D1BWP12T30P140 U38 ( .A1(a[7]), .B1(b[7]), .ZN(n41) );
  AOI21D0BWP12T30P140 U39 ( .A1(a[6]), .A2(n31), .B(n41), .ZN(n57) );
  INVD0BWP12T30P140 U40 ( .I(a[4]), .ZN(n37) );
  IND2D1BWP12T30P140 U41 ( .A1(a[5]), .B1(b[5]), .ZN(n49) );
  INVD0BWP12T30P140 U42 ( .I(n49), .ZN(n32) );
  AOI21D0BWP12T30P140 U43 ( .A1(b[4]), .A2(n37), .B(n32), .ZN(n60) );
  INR2D1BWP12T30P140 U44 ( .A1(a[5]), .B1(b[5]), .ZN(n39) );
  INVD0BWP12T30P140 U45 ( .I(a[2]), .ZN(n33) );
  INR2D1BWP12T30P140 U46 ( .A1(a[3]), .B1(b[3]), .ZN(n34) );
  IAO21D0BWP12T30P140 U47 ( .A1(n33), .A2(b[2]), .B(n34), .ZN(n58) );
  IND2D1BWP12T30P140 U48 ( .A1(b[1]), .B1(a[1]), .ZN(n44) );
  INVD0BWP12T30P140 U49 ( .I(a[0]), .ZN(n45) );
  IND2D1BWP12T30P140 U50 ( .A1(a[1]), .B1(b[1]), .ZN(n46) );
  IOA21D0BWP12T30P140 U51 ( .A1(b[0]), .A2(n45), .B(n46), .ZN(n53) );
  INR2D1BWP12T30P140 U52 ( .A1(b[3]), .B1(a[3]), .ZN(n48) );
  AOI21D0BWP12T30P140 U53 ( .A1(b[2]), .A2(n33), .B(n48), .ZN(n59) );
  NR2D0BWP12T30P140 U54 ( .A1(n59), .A2(n34), .ZN(n35) );
  AOI31D0BWP12T30P140 U55 ( .A1(n58), .A2(n44), .A3(n53), .B(n35), .ZN(n38) );
  INVD0BWP12T30P140 U56 ( .I(n39), .ZN(n36) );
  OAI21D0BWP12T30P140 U57 ( .A1(b[4]), .A2(n37), .B(n36), .ZN(n54) );
  OAI22D0BWP12T30P140 U58 ( .A1(n60), .A2(n39), .B1(n38), .B2(n54), .ZN(n40)
         );
  MOAI22D0BWP12T30P140 U59 ( .A1(n42), .A2(n41), .B1(n57), .B2(n40), .ZN(lt)
         );
  INVD0BWP12T30P140 U60 ( .I(n43), .ZN(n52) );
  OAI21D0BWP12T30P140 U61 ( .A1(b[0]), .A2(n45), .B(n44), .ZN(n55) );
  ND3D0BWP12T30P140 U62 ( .A1(n55), .A2(n46), .A3(n59), .ZN(n47) );
  OAI21D0BWP12T30P140 U63 ( .A1(n48), .A2(n58), .B(n47), .ZN(n50) );
  AOI22D0BWP12T30P140 U64 ( .A1(n60), .A2(n50), .B1(n49), .B2(n54), .ZN(n51)
         );
  OAI22D0BWP12T30P140 U65 ( .A1(n52), .A2(n57), .B1(n51), .B2(n56), .ZN(gt) );
  OR4D0BWP12T30P140 U66 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .Z(n62) );
  ND4D0BWP12T30P140 U67 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(n61) );
  NR2D0BWP12T30P140 U68 ( .A1(n62), .A2(n61), .ZN(eq) );
endmodule

