/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:24:48 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  INVD0BWP12T30P140 U32 ( .I(a[1]), .ZN(n28) );
  NR2D0BWP12T30P140 U33 ( .A1(n28), .A2(b[1]), .ZN(n27) );
  INVD0BWP12T30P140 U34 ( .I(a[2]), .ZN(n29) );
  INVD0BWP12T30P140 U35 ( .I(b[3]), .ZN(n32) );
  MOAI22D0BWP12T30P140 U36 ( .A1(b[2]), .A2(n29), .B1(n32), .B2(a[3]), .ZN(n30) );
  NR2D0BWP12T30P140 U37 ( .A1(n27), .A2(n30), .ZN(n43) );
  INVD0BWP12T30P140 U38 ( .I(a[0]), .ZN(n33) );
  AOI22D0BWP12T30P140 U39 ( .A1(b[2]), .A2(n29), .B1(b[1]), .B2(n28), .ZN(n31)
         );
  OAI22D0BWP12T30P140 U40 ( .A1(a[3]), .A2(n32), .B1(n31), .B2(n30), .ZN(n44)
         );
  AOI221D0BWP12T30P140 U41 ( .A1(b[0]), .A2(n43), .B1(n33), .B2(n43), .C(n44), 
        .ZN(n48) );
  INVD0BWP12T30P140 U42 ( .I(a[4]), .ZN(n36) );
  INVD0BWP12T30P140 U43 ( .I(a[7]), .ZN(n41) );
  AN2D0BWP12T30P140 U44 ( .A1(b[7]), .A2(n41), .Z(n35) );
  INVD0BWP12T30P140 U45 ( .I(a[5]), .ZN(n37) );
  INVD0BWP12T30P140 U46 ( .I(b[6]), .ZN(n40) );
  MAOI22D0BWP12T30P140 U47 ( .A1(b[5]), .A2(n37), .B1(n40), .B2(a[6]), .ZN(n39) );
  INVD0BWP12T30P140 U48 ( .I(n39), .ZN(n34) );
  AOI211D0BWP12T30P140 U49 ( .A1(b[4]), .A2(n36), .B(n35), .C(n34), .ZN(n45)
         );
  OAI22D0BWP12T30P140 U50 ( .A1(b[5]), .A2(n37), .B1(b[4]), .B2(n36), .ZN(n38)
         );
  AOI22D0BWP12T30P140 U51 ( .A1(a[6]), .A2(n40), .B1(n39), .B2(n38), .ZN(n42)
         );
  MAOI222D0BWP12T30P140 U52 ( .A(b[7]), .B(n42), .C(n41), .ZN(n49) );
  AO21D0BWP12T30P140 U53 ( .A1(n48), .A2(n45), .B(n49), .Z(gt) );
  ND2D0BWP12T30P140 U54 ( .A1(b[0]), .A2(n43), .ZN(n47) );
  INVD0BWP12T30P140 U55 ( .I(n44), .ZN(n46) );
  OAI211D0BWP12T30P140 U56 ( .A1(a[0]), .A2(n47), .B(n46), .C(n45), .ZN(n50)
         );
  NR3D0BWP12T30P140 U57 ( .A1(n48), .A2(n49), .A3(n50), .ZN(eq) );
  INR2D1BWP12T30P140 U58 ( .A1(n50), .B1(n49), .ZN(lt) );
endmodule

