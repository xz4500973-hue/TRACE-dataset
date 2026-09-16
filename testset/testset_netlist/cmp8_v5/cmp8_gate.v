/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:23:36 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71;

  INVD0BWP12T30P140 U42 ( .I(a[7]), .ZN(n58) );
  IND2D1BWP12T30P140 U43 ( .A1(b[6]), .B1(a[6]), .ZN(n59) );
  INR2D1BWP12T30P140 U44 ( .A1(b[6]), .B1(a[6]), .ZN(n40) );
  INVD0BWP12T30P140 U45 ( .I(n40), .ZN(n38) );
  OAI211D0BWP12T30P140 U46 ( .A1(n58), .A2(b[7]), .B(n59), .C(n38), .ZN(n39)
         );
  AOI21D0BWP12T30P140 U47 ( .A1(n58), .A2(b[7]), .B(n39), .ZN(n66) );
  INVD0BWP12T30P140 U48 ( .I(n66), .ZN(n49) );
  IND2D1BWP12T30P140 U49 ( .A1(a[5]), .B1(b[5]), .ZN(n65) );
  MAOI222D0BWP12T30P140 U50 ( .A(n40), .B(b[7]), .C(n58), .ZN(n48) );
  INR2D1BWP12T30P140 U51 ( .A1(a[5]), .B1(b[5]), .ZN(n64) );
  INR2D1BWP12T30P140 U52 ( .A1(a[4]), .B1(b[4]), .ZN(n67) );
  INR4D0BWP12T30P140 U53 ( .A1(n65), .B1(n49), .B2(n64), .B3(n67), .ZN(n63) );
  INVD0BWP12T30P140 U54 ( .I(a[3]), .ZN(n56) );
  NR2D0BWP12T30P140 U55 ( .A1(n56), .A2(b[3]), .ZN(n42) );
  ND2D0BWP12T30P140 U56 ( .A1(n56), .A2(b[3]), .ZN(n41) );
  IND2D1BWP12T30P140 U57 ( .A1(a[4]), .B1(b[4]), .ZN(n62) );
  ND2D0BWP12T30P140 U58 ( .A1(n41), .A2(n62), .ZN(n45) );
  INR3D1BWP12T30P140 U59 ( .A1(n63), .B1(n42), .B2(n45), .ZN(n54) );
  IND2D1BWP12T30P140 U60 ( .A1(b[2]), .B1(a[2]), .ZN(n57) );
  INR2D1BWP12T30P140 U61 ( .A1(a[1]), .B1(b[1]), .ZN(n50) );
  INVD0BWP12T30P140 U62 ( .I(b[0]), .ZN(n51) );
  NR2D0BWP12T30P140 U63 ( .A1(a[0]), .A2(n51), .ZN(n55) );
  INVD0BWP12T30P140 U64 ( .I(n55), .ZN(n43) );
  IND2D1BWP12T30P140 U65 ( .A1(a[1]), .B1(b[1]), .ZN(n53) );
  OAI21D0BWP12T30P140 U66 ( .A1(n50), .A2(n43), .B(n53), .ZN(n44) );
  IND2D1BWP12T30P140 U67 ( .A1(a[2]), .B1(b[2]), .ZN(n52) );
  IOA21D0BWP12T30P140 U68 ( .A1(n57), .A2(n44), .B(n52), .ZN(n46) );
  AOI22D0BWP12T30P140 U69 ( .A1(n54), .A2(n46), .B1(n63), .B2(n45), .ZN(n47)
         );
  OAI211D0BWP12T30P140 U70 ( .A1(n49), .A2(n65), .B(n48), .C(n47), .ZN(lt) );
  AOI21D0BWP12T30P140 U71 ( .A1(a[0]), .A2(n51), .B(n50), .ZN(n71) );
  ND4D0BWP12T30P140 U72 ( .A1(n54), .A2(n57), .A3(n53), .A4(n52), .ZN(n70) );
  INR3D1BWP12T30P140 U73 ( .A1(n71), .B1(n55), .B2(n70), .ZN(eq) );
  MAOI222D0BWP12T30P140 U74 ( .A(b[3]), .B(n57), .C(n56), .ZN(n61) );
  MAOI222D0BWP12T30P140 U75 ( .A(b[7]), .B(n59), .C(n58), .ZN(n60) );
  AOI31D0BWP12T30P140 U76 ( .A1(n63), .A2(n62), .A3(n61), .B(n60), .ZN(n69) );
  AOI32D0BWP12T30P140 U77 ( .A1(n67), .A2(n66), .A3(n65), .B1(n64), .B2(n66), 
        .ZN(n68) );
  OAI211D0BWP12T30P140 U78 ( .A1(n71), .A2(n70), .B(n69), .C(n68), .ZN(gt) );
endmodule

