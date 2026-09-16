/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:21:47 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70;

  IND2D1BWP12T30P140 U41 ( .A1(b[1]), .B1(a[1]), .ZN(n49) );
  IND2D1BWP12T30P140 U42 ( .A1(a[1]), .B1(b[1]), .ZN(n50) );
  IND2D1BWP12T30P140 U43 ( .A1(a[2]), .B1(b[2]), .ZN(n45) );
  INR2D1BWP12T30P140 U44 ( .A1(a[7]), .B1(b[7]), .ZN(n56) );
  INR2D1BWP12T30P140 U45 ( .A1(b[7]), .B1(a[7]), .ZN(n54) );
  IND2D1BWP12T30P140 U46 ( .A1(b[6]), .B1(a[6]), .ZN(n53) );
  IND2D1BWP12T30P140 U47 ( .A1(a[6]), .B1(b[6]), .ZN(n40) );
  IIND4D0BWP12T30P140 U48 ( .A1(n56), .A2(n54), .B1(n53), .B2(n40), .ZN(n51)
         );
  IND2D1BWP12T30P140 U49 ( .A1(b[5]), .B1(a[5]), .ZN(n52) );
  IND2D1BWP12T30P140 U50 ( .A1(a[5]), .B1(b[5]), .ZN(n39) );
  IND3D1BWP12T30P140 U51 ( .A1(n51), .B1(n52), .B2(n39), .ZN(n59) );
  INR2D1BWP12T30P140 U52 ( .A1(a[4]), .B1(b[4]), .ZN(n63) );
  NR2D0BWP12T30P140 U53 ( .A1(n59), .A2(n63), .ZN(n43) );
  INR2D1BWP12T30P140 U54 ( .A1(a[3]), .B1(b[3]), .ZN(n62) );
  INVD0BWP12T30P140 U55 ( .I(b[3]), .ZN(n38) );
  IND2D1BWP12T30P140 U56 ( .A1(a[4]), .B1(b[4]), .ZN(n60) );
  OAI21D0BWP12T30P140 U57 ( .A1(a[3]), .A2(n38), .B(n60), .ZN(n42) );
  INR3D1BWP12T30P140 U58 ( .A1(n43), .B1(n62), .B2(n42), .ZN(n48) );
  IND2D1BWP12T30P140 U59 ( .A1(b[2]), .B1(a[2]), .ZN(n67) );
  ND2D0BWP12T30P140 U60 ( .A1(n48), .A2(n67), .ZN(n44) );
  INR2D1BWP12T30P140 U61 ( .A1(n45), .B1(n44), .ZN(n58) );
  ND3D0BWP12T30P140 U62 ( .A1(n49), .A2(n50), .A3(n58), .ZN(n68) );
  IND2D1BWP12T30P140 U63 ( .A1(a[0]), .B1(b[0]), .ZN(n70) );
  OAI22D0BWP12T30P140 U64 ( .A1(n56), .A2(n40), .B1(n39), .B2(n51), .ZN(n41)
         );
  AOI211D0BWP12T30P140 U65 ( .A1(n43), .A2(n42), .B(n54), .C(n41), .ZN(n47) );
  AO21D0BWP12T30P140 U66 ( .A1(n45), .A2(n50), .B(n44), .Z(n46) );
  OAI211D0BWP12T30P140 U67 ( .A1(n68), .A2(n70), .B(n47), .C(n46), .ZN(lt) );
  INVD0BWP12T30P140 U68 ( .I(n48), .ZN(n66) );
  INR2D1BWP12T30P140 U69 ( .A1(a[0]), .B1(b[0]), .ZN(n69) );
  IOA21D0BWP12T30P140 U70 ( .A1(n69), .A2(n50), .B(n49), .ZN(n57) );
  OAI22D0BWP12T30P140 U71 ( .A1(n54), .A2(n53), .B1(n52), .B2(n51), .ZN(n55)
         );
  AOI211D0BWP12T30P140 U72 ( .A1(n58), .A2(n57), .B(n56), .C(n55), .ZN(n65) );
  INVD0BWP12T30P140 U73 ( .I(n59), .ZN(n61) );
  OAI211D0BWP12T30P140 U74 ( .A1(n63), .A2(n62), .B(n61), .C(n60), .ZN(n64) );
  OAI211D0BWP12T30P140 U75 ( .A1(n67), .A2(n66), .B(n65), .C(n64), .ZN(gt) );
  INR3D1BWP12T30P140 U76 ( .A1(n70), .B1(n69), .B2(n68), .ZN(eq) );
endmodule

