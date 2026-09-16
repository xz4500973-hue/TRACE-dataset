/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:22:24 2026
/////////////////////////////////////////////////////////////


module cmp8 ( a, b, eq, gt, lt );
  input [7:0] a;
  input [7:0] b;
  output eq, gt, lt;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  INVD0BWP12T30P140 U16 ( .I(a[0]), .ZN(n5) );
  INVD0BWP12T30P140 U17 ( .I(a[1]), .ZN(n3) );
  AOI22D0BWP12T30P140 U18 ( .A1(b[0]), .A2(n5), .B1(b[1]), .B2(n3), .ZN(n11)
         );
  NR2D0BWP12T30P140 U19 ( .A1(b[1]), .A2(n3), .ZN(n12) );
  INVD0BWP12T30P140 U20 ( .I(n12), .ZN(n4) );
  OAI211D0BWP12T30P140 U21 ( .A1(b[0]), .A2(n5), .B(n11), .C(n4), .ZN(n9) );
  INR2D1BWP12T30P140 U22 ( .A1(b[3]), .B1(a[3]), .ZN(n13) );
  IND2D1BWP12T30P140 U23 ( .A1(a[2]), .B1(b[2]), .ZN(n10) );
  IND2D1BWP12T30P140 U24 ( .A1(b[2]), .B1(a[2]), .ZN(n16) );
  IND2D1BWP12T30P140 U25 ( .A1(b[3]), .B1(a[3]), .ZN(n14) );
  IND4D1BWP12T30P140 U26 ( .A1(n13), .B1(n10), .B2(n16), .B3(n14), .ZN(n8) );
  INR2D1BWP12T30P140 U27 ( .A1(a[4]), .B1(b[4]), .ZN(n17) );
  IND2D1BWP12T30P140 U28 ( .A1(a[4]), .B1(b[4]), .ZN(n20) );
  IND2D1BWP12T30P140 U29 ( .A1(a[5]), .B1(b[5]), .ZN(n19) );
  IND2D1BWP12T30P140 U30 ( .A1(b[5]), .B1(a[5]), .ZN(n24) );
  IND4D1BWP12T30P140 U31 ( .A1(n17), .B1(n20), .B2(n19), .B3(n24), .ZN(n7) );
  INR2D1BWP12T30P140 U32 ( .A1(b[6]), .B1(a[6]), .ZN(n21) );
  INR2D1BWP12T30P140 U33 ( .A1(a[7]), .B1(b[7]), .ZN(n25) );
  IND2D1BWP12T30P140 U34 ( .A1(b[6]), .B1(a[6]), .ZN(n22) );
  IND2D1BWP12T30P140 U35 ( .A1(a[7]), .B1(b[7]), .ZN(n27) );
  IIND4D1BWP12T30P140 U36 ( .A1(n21), .A2(n25), .B1(n22), .B2(n27), .ZN(n6) );
  NR4D0BWP12T30P140 U37 ( .A1(n9), .A2(n8), .A3(n7), .A4(n6), .ZN(eq) );
  OAI21D0BWP12T30P140 U38 ( .A1(n12), .A2(n11), .B(n10), .ZN(n15) );
  AOI31D0BWP12T30P140 U39 ( .A1(n16), .A2(n15), .A3(n14), .B(n13), .ZN(n18) );
  AOI32D0BWP12T30P140 U40 ( .A1(n20), .A2(n19), .A3(n18), .B1(n17), .B2(n19), 
        .ZN(n23) );
  AOI31D0BWP12T30P140 U41 ( .A1(n24), .A2(n23), .A3(n22), .B(n21), .ZN(n26) );
  AOI21D0BWP12T30P140 U42 ( .A1(n27), .A2(n26), .B(n25), .ZN(lt) );
  NR2D0BWP12T30P140 U43 ( .A1(eq), .A2(lt), .ZN(gt) );
endmodule

