/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:25:24 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61;

  INR2D1BWP12T30P140 U37 ( .A1(a[7]), .B1(b[7]), .ZN(n43) );
  INVD0BWP12T30P140 U38 ( .I(a[6]), .ZN(n41) );
  INR2D1BWP12T30P140 U39 ( .A1(b[7]), .B1(a[7]), .ZN(n60) );
  AOI21D0BWP12T30P140 U40 ( .A1(b[6]), .A2(n41), .B(n60), .ZN(n59) );
  INVD0BWP12T30P140 U41 ( .I(b[4]), .ZN(n37) );
  INR2D1BWP12T30P140 U42 ( .A1(a[5]), .B1(b[5]), .ZN(n36) );
  AOI21D0BWP12T30P140 U43 ( .A1(a[4]), .A2(n37), .B(n36), .ZN(n57) );
  INR2D1BWP12T30P140 U44 ( .A1(a[3]), .B1(b[3]), .ZN(n35) );
  INVD0BWP12T30P140 U45 ( .I(a[2]), .ZN(n33) );
  INR2D1BWP12T30P140 U46 ( .A1(b[3]), .B1(a[3]), .ZN(n49) );
  AOI21D0BWP12T30P140 U47 ( .A1(b[2]), .A2(n33), .B(n49), .ZN(n53) );
  IND2D1BWP12T30P140 U48 ( .A1(b[1]), .B1(a[1]), .ZN(n46) );
  INVD0BWP12T30P140 U49 ( .I(a[0]), .ZN(n47) );
  INR2D1BWP12T30P140 U50 ( .A1(b[1]), .B1(a[1]), .ZN(n48) );
  AOI31D0BWP12T30P140 U51 ( .A1(b[0]), .A2(n46), .A3(n47), .B(n48), .ZN(n34)
         );
  INVD0BWP12T30P140 U52 ( .I(n35), .ZN(n32) );
  OAI21D0BWP12T30P140 U53 ( .A1(b[2]), .A2(n33), .B(n32), .ZN(n51) );
  OAI22D0BWP12T30P140 U54 ( .A1(n35), .A2(n53), .B1(n34), .B2(n51), .ZN(n39)
         );
  INVD0BWP12T30P140 U55 ( .I(n36), .ZN(n38) );
  IND2D1BWP12T30P140 U56 ( .A1(a[5]), .B1(b[5]), .ZN(n45) );
  OAI21D0BWP12T30P140 U57 ( .A1(a[4]), .A2(n37), .B(n45), .ZN(n54) );
  AOI22D0BWP12T30P140 U58 ( .A1(n57), .A2(n39), .B1(n38), .B2(n54), .ZN(n42)
         );
  INVD0BWP12T30P140 U59 ( .I(n43), .ZN(n40) );
  OAI21D0BWP12T30P140 U60 ( .A1(b[6]), .A2(n41), .B(n40), .ZN(n44) );
  OAI22D0BWP12T30P140 U61 ( .A1(n43), .A2(n59), .B1(n42), .B2(n44), .ZN(lt) );
  INVD0BWP12T30P140 U62 ( .I(n44), .ZN(n61) );
  INVD0BWP12T30P140 U63 ( .I(n45), .ZN(n56) );
  OAI31D0BWP12T30P140 U64 ( .A1(b[0]), .A2(n48), .A3(n47), .B(n46), .ZN(n52)
         );
  INVD0BWP12T30P140 U65 ( .I(n49), .ZN(n50) );
  AOI22D0BWP12T30P140 U66 ( .A1(n53), .A2(n52), .B1(n51), .B2(n50), .ZN(n55)
         );
  OAI22D0BWP12T30P140 U67 ( .A1(n57), .A2(n56), .B1(n55), .B2(n54), .ZN(n58)
         );
  MOAI22D0BWP12T30P140 U68 ( .A1(n61), .A2(n60), .B1(n59), .B2(n58), .ZN(gt)
         );
  NR2D0BWP12T30P140 U69 ( .A1(lt), .A2(gt), .ZN(eq) );
endmodule

