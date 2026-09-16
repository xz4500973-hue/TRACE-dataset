/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:26:01 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  INVD0BWP12T30P140 U30 ( .I(a[5]), .ZN(n33) );
  INVD0BWP12T30P140 U31 ( .I(a[4]), .ZN(n35) );
  OAI22D0BWP12T30P140 U32 ( .A1(b[5]), .A2(n33), .B1(b[4]), .B2(n35), .ZN(n42)
         );
  INVD0BWP12T30P140 U33 ( .I(b[6]), .ZN(n27) );
  INVD0BWP12T30P140 U34 ( .I(b[7]), .ZN(n46) );
  OAI22D0BWP12T30P140 U35 ( .A1(a[6]), .A2(n27), .B1(a[7]), .B2(n46), .ZN(n49)
         );
  INVD0BWP12T30P140 U36 ( .I(b[0]), .ZN(n29) );
  INVD0BWP12T30P140 U37 ( .I(b[3]), .ZN(n31) );
  NR2D0BWP12T30P140 U38 ( .A1(n31), .A2(a[3]), .ZN(n38) );
  AN2D0BWP12T30P140 U39 ( .A1(a[6]), .A2(n27), .Z(n47) );
  AOI211D0BWP12T30P140 U40 ( .A1(a[7]), .A2(n46), .B(n38), .C(n47), .ZN(n28)
         );
  OAI21D0BWP12T30P140 U41 ( .A1(a[0]), .A2(n29), .B(n28), .ZN(n37) );
  INVD0BWP12T30P140 U42 ( .I(b[1]), .ZN(n30) );
  INVD0BWP12T30P140 U43 ( .I(b[2]), .ZN(n32) );
  OAI22D0BWP12T30P140 U44 ( .A1(a[1]), .A2(n30), .B1(a[2]), .B2(n32), .ZN(n39)
         );
  AOI22D0BWP12T30P140 U45 ( .A1(a[1]), .A2(n30), .B1(a[0]), .B2(n29), .ZN(n41)
         );
  AOI22D0BWP12T30P140 U46 ( .A1(a[2]), .A2(n32), .B1(a[3]), .B2(n31), .ZN(n40)
         );
  CKND2D1BWP12T30P140 U47 ( .A1(b[5]), .A2(n33), .ZN(n43) );
  INVD0BWP12T30P140 U48 ( .I(n43), .ZN(n34) );
  AOI21D0BWP12T30P140 U49 ( .A1(b[4]), .A2(n35), .B(n34), .ZN(n44) );
  IND4D1BWP12T30P140 U50 ( .A1(n39), .B1(n41), .B2(n40), .B3(n44), .ZN(n36) );
  NR4D0BWP12T30P140 U51 ( .A1(n42), .A2(n49), .A3(n37), .A4(n36), .ZN(eq) );
  AOI221D0BWP12T30P140 U52 ( .A1(n41), .A2(n40), .B1(n39), .B2(n40), .C(n38), 
        .ZN(n45) );
  AOI22D0BWP12T30P140 U53 ( .A1(n45), .A2(n44), .B1(n43), .B2(n42), .ZN(n50)
         );
  MAOI222D0BWP12T30P140 U54 ( .A(a[7]), .B(n47), .C(n46), .ZN(n48) );
  OAI21D0BWP12T30P140 U55 ( .A1(n50), .A2(n49), .B(n48), .ZN(gt) );
  NR2D0BWP12T30P140 U56 ( .A1(eq), .A2(gt), .ZN(lt) );
endmodule

