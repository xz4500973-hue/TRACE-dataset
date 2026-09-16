/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:21:11 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;

  INR2D1BWP12T30P140 U36 ( .A1(a[0]), .B1(b[0]), .ZN(n45) );
  INVD0BWP12T30P140 U37 ( .I(b[0]), .ZN(n35) );
  INVD0BWP12T30P140 U38 ( .I(b[2]), .ZN(n40) );
  INVD0BWP12T30P140 U39 ( .I(a[1]), .ZN(n34) );
  OAI22D0BWP12T30P140 U40 ( .A1(n40), .A2(a[2]), .B1(n34), .B2(b[1]), .ZN(n33)
         );
  AOI221D0BWP12T30P140 U41 ( .A1(n40), .A2(a[2]), .B1(b[1]), .B2(n34), .C(n33), 
        .ZN(n46) );
  OAI21D0BWP12T30P140 U42 ( .A1(a[0]), .A2(n35), .B(n46), .ZN(n58) );
  INR2D1BWP12T30P140 U43 ( .A1(b[3]), .B1(a[3]), .ZN(n57) );
  IND2D1BWP12T30P140 U44 ( .A1(b[3]), .B1(a[3]), .ZN(n41) );
  IND2D1BWP12T30P140 U45 ( .A1(a[7]), .B1(b[7]), .ZN(n62) );
  INR2D1BWP12T30P140 U46 ( .A1(a[7]), .B1(b[7]), .ZN(n47) );
  INR2D1BWP12T30P140 U47 ( .A1(a[4]), .B1(b[4]), .ZN(n50) );
  INVD0BWP12T30P140 U48 ( .I(b[4]), .ZN(n38) );
  INVD0BWP12T30P140 U49 ( .I(a[5]), .ZN(n37) );
  INR2D1BWP12T30P140 U50 ( .A1(b[6]), .B1(a[6]), .ZN(n48) );
  INVD0BWP12T30P140 U51 ( .I(a[6]), .ZN(n36) );
  OAI22D0BWP12T30P140 U52 ( .A1(b[5]), .A2(n37), .B1(b[6]), .B2(n36), .ZN(n49)
         );
  AOI211D0BWP12T30P140 U53 ( .A1(b[5]), .A2(n37), .B(n48), .C(n49), .ZN(n51)
         );
  OAI21D0BWP12T30P140 U54 ( .A1(a[4]), .A2(n38), .B(n51), .ZN(n54) );
  INR4D0BWP12T30P140 U55 ( .A1(n62), .B1(n47), .B2(n50), .B3(n54), .ZN(n59) );
  IND3D1BWP12T30P140 U56 ( .A1(n57), .B1(n41), .B2(n59), .ZN(n39) );
  NR3D0BWP12T30P140 U57 ( .A1(n45), .A2(n58), .A3(n39), .ZN(eq) );
  NR2D0BWP12T30P140 U58 ( .A1(n40), .A2(a[2]), .ZN(n44) );
  IND2D1BWP12T30P140 U59 ( .A1(b[1]), .B1(a[1]), .ZN(n43) );
  ND2D0BWP12T30P140 U60 ( .A1(n40), .A2(a[2]), .ZN(n42) );
  OAI211D0BWP12T30P140 U61 ( .A1(n44), .A2(n43), .B(n42), .C(n41), .ZN(n56) );
  AOI32D0BWP12T30P140 U62 ( .A1(n46), .A2(n59), .A3(n45), .B1(n56), .B2(n59), 
        .ZN(n53) );
  INVD0BWP12T30P140 U63 ( .I(n47), .ZN(n55) );
  INR2D1BWP12T30P140 U64 ( .A1(n49), .B1(n48), .ZN(n64) );
  AOI32D0BWP12T30P140 U65 ( .A1(n51), .A2(n62), .A3(n50), .B1(n64), .B2(n62), 
        .ZN(n52) );
  OAI211D0BWP12T30P140 U66 ( .A1(n57), .A2(n53), .B(n55), .C(n52), .ZN(gt) );
  ND2D0BWP12T30P140 U67 ( .A1(n55), .A2(n54), .ZN(n63) );
  INVD0BWP12T30P140 U68 ( .I(n56), .ZN(n60) );
  AOI32D0BWP12T30P140 U69 ( .A1(n60), .A2(n59), .A3(n58), .B1(n57), .B2(n59), 
        .ZN(n61) );
  OAI211D0BWP12T30P140 U70 ( .A1(n64), .A2(n63), .B(n62), .C(n61), .ZN(lt) );
endmodule

