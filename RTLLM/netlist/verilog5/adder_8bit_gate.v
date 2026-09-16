/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:58:47 2026
/////////////////////////////////////////////////////////////


module adder_8bit ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  NR2D0BWP12T30P140 U25 ( .A1(b[6]), .A2(a[6]), .ZN(n27) );
  AOI21D0BWP12T30P140 U26 ( .A1(b[6]), .A2(a[6]), .B(n27), .ZN(n26) );
  NR2D0BWP12T30P140 U27 ( .A1(a[4]), .A2(b[4]), .ZN(n20) );
  ND2D0BWP12T30P140 U28 ( .A1(a[5]), .A2(b[5]), .ZN(n21) );
  OAI21D0BWP12T30P140 U29 ( .A1(a[5]), .A2(b[5]), .B(n21), .ZN(n37) );
  NR2D0BWP12T30P140 U30 ( .A1(n20), .A2(n37), .ZN(n24) );
  INVD0BWP12T30P140 U31 ( .I(n37), .ZN(n36) );
  INVD0BWP12T30P140 U32 ( .I(n21), .ZN(n22) );
  AO31D0BWP12T30P140 U33 ( .A1(n36), .A2(b[4]), .A3(a[4]), .B(n22), .Z(n23) );
  AOI21D0BWP12T30P140 U34 ( .A1(n34), .A2(n24), .B(n23), .ZN(n29) );
  ND2D0BWP12T30P140 U35 ( .A1(n26), .A2(n29), .ZN(n25) );
  OAI21D0BWP12T30P140 U36 ( .A1(n26), .A2(n29), .B(n25), .ZN(sum[6]) );
  ND2D0BWP12T30P140 U37 ( .A1(b[6]), .A2(a[6]), .ZN(n28) );
  AOI21D0BWP12T30P140 U38 ( .A1(n29), .A2(n28), .B(n27), .ZN(n30) );
  FA1D0BWP12T30P140 U39 ( .A(a[7]), .B(b[7]), .CI(n30), .CO(cout), .S(sum[7])
         );
  FA1D0BWP12T30P140 U40 ( .A(a[3]), .B(b[3]), .CI(n31), .CO(n34), .S(sum[3])
         );
  FA1D0BWP12T30P140 U41 ( .A(a[2]), .B(b[2]), .CI(n32), .CO(n31), .S(sum[2])
         );
  FA1D0BWP12T30P140 U42 ( .A(a[1]), .B(b[1]), .CI(n33), .CO(n32), .S(sum[1])
         );
  FA1D0BWP12T30P140 U43 ( .A(cin), .B(a[0]), .CI(b[0]), .CO(n33), .S(sum[0])
         );
  FA1D0BWP12T30P140 U44 ( .A(a[4]), .B(b[4]), .CI(n34), .CO(n35), .S(sum[4])
         );
  MUX2ND0BWP12T30P140 U45 ( .I0(n37), .I1(n36), .S(n35), .ZN(sum[5]) );
endmodule

