/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:24:12 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  INVD0BWP12T30P140 U34 ( .I(a[4]), .ZN(n39) );
  INVD0BWP12T30P140 U35 ( .I(a[5]), .ZN(n37) );
  OAI22D0BWP12T30P140 U36 ( .A1(b[4]), .A2(n39), .B1(b[5]), .B2(n37), .ZN(n46)
         );
  INVD0BWP12T30P140 U37 ( .I(b[6]), .ZN(n31) );
  INVD0BWP12T30P140 U38 ( .I(b[7]), .ZN(n30) );
  NR2D0BWP12T30P140 U39 ( .A1(n30), .A2(a[7]), .ZN(n53) );
  INVD0BWP12T30P140 U40 ( .I(n53), .ZN(n29) );
  OAI21D0BWP12T30P140 U41 ( .A1(a[6]), .A2(n31), .B(n29), .ZN(n50) );
  INVD0BWP12T30P140 U42 ( .I(b[0]), .ZN(n33) );
  AOI22D0BWP12T30P140 U43 ( .A1(a[6]), .A2(n31), .B1(a[7]), .B2(n30), .ZN(n52)
         );
  INVD0BWP12T30P140 U44 ( .I(b[3]), .ZN(n35) );
  NR2D0BWP12T30P140 U45 ( .A1(n35), .A2(a[3]), .ZN(n42) );
  INVD0BWP12T30P140 U46 ( .I(n42), .ZN(n32) );
  OAI211D0BWP12T30P140 U47 ( .A1(a[0]), .A2(n33), .B(n52), .C(n32), .ZN(n41)
         );
  INVD0BWP12T30P140 U48 ( .I(b[1]), .ZN(n34) );
  INVD0BWP12T30P140 U49 ( .I(b[2]), .ZN(n36) );
  OAI22D0BWP12T30P140 U50 ( .A1(a[1]), .A2(n34), .B1(a[2]), .B2(n36), .ZN(n43)
         );
  AOI22D0BWP12T30P140 U51 ( .A1(a[1]), .A2(n34), .B1(a[0]), .B2(n33), .ZN(n45)
         );
  AOI22D0BWP12T30P140 U52 ( .A1(a[2]), .A2(n36), .B1(a[3]), .B2(n35), .ZN(n44)
         );
  CKND2D1BWP12T30P140 U53 ( .A1(b[5]), .A2(n37), .ZN(n47) );
  INVD0BWP12T30P140 U54 ( .I(n47), .ZN(n38) );
  AOI21D0BWP12T30P140 U55 ( .A1(b[4]), .A2(n39), .B(n38), .ZN(n48) );
  IND4D1BWP12T30P140 U56 ( .A1(n43), .B1(n45), .B2(n44), .B3(n48), .ZN(n40) );
  NR4D0BWP12T30P140 U57 ( .A1(n46), .A2(n50), .A3(n41), .A4(n40), .ZN(eq) );
  AOI221D0BWP12T30P140 U58 ( .A1(n45), .A2(n44), .B1(n43), .B2(n44), .C(n42), 
        .ZN(n49) );
  AOI22D0BWP12T30P140 U59 ( .A1(n49), .A2(n48), .B1(n47), .B2(n46), .ZN(n51)
         );
  OAI22D0BWP12T30P140 U60 ( .A1(n53), .A2(n52), .B1(n51), .B2(n50), .ZN(gt) );
  NR2D0BWP12T30P140 U61 ( .A1(eq), .A2(gt), .ZN(lt) );
endmodule

