/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:01:12 2026
/////////////////////////////////////////////////////////////


module barrel_shifter ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40;

  INVD0BWP12T30P140 U27 ( .I(ctrl[2]), .ZN(n34) );
  INVD0BWP12T30P140 U28 ( .I(ctrl[0]), .ZN(n27) );
  ND2D0BWP12T30P140 U29 ( .A1(n34), .A2(n27), .ZN(n29) );
  INVD0BWP12T30P140 U30 ( .I(ctrl[1]), .ZN(n28) );
  AOI22D0BWP12T30P140 U31 ( .A1(ctrl[1]), .A2(in[2]), .B1(in[0]), .B2(n28), 
        .ZN(n19) );
  NR2D0BWP12T30P140 U32 ( .A1(ctrl[1]), .A2(in[5]), .ZN(n22) );
  NR2D0BWP12T30P140 U33 ( .A1(in[7]), .A2(n28), .ZN(n20) );
  AOI22D0BWP12T30P140 U34 ( .A1(ctrl[1]), .A2(in[6]), .B1(in[4]), .B2(n28), 
        .ZN(n24) );
  OAI32D0BWP12T30P140 U35 ( .A1(n27), .A2(n22), .A3(n20), .B1(ctrl[0]), .B2(
        n24), .ZN(n23) );
  NR2D0BWP12T30P140 U36 ( .A1(ctrl[2]), .A2(n27), .ZN(n31) );
  CKMUX2D0BWP12T30P140 U37 ( .I0(in[1]), .I1(in[3]), .S(ctrl[1]), .Z(n35) );
  AOI22D0BWP12T30P140 U38 ( .A1(ctrl[2]), .A2(n23), .B1(n31), .B2(n35), .ZN(
        n18) );
  OAI21D0BWP12T30P140 U39 ( .A1(n29), .A2(n19), .B(n18), .ZN(out[0]) );
  ND2D0BWP12T30P140 U40 ( .A1(in[6]), .A2(n28), .ZN(n21) );
  INVD0BWP12T30P140 U41 ( .I(n31), .ZN(n39) );
  ND2D0BWP12T30P140 U42 ( .A1(in[7]), .A2(n28), .ZN(n26) );
  OAI22D0BWP12T30P140 U43 ( .A1(n29), .A2(n21), .B1(n39), .B2(n26), .ZN(out[6]) );
  AOI221D0BWP12T30P140 U44 ( .A1(n22), .A2(n27), .B1(n21), .B2(ctrl[0]), .C(
        n20), .ZN(n37) );
  AN2D0BWP12T30P140 U45 ( .A1(n37), .A2(n34), .Z(out[5]) );
  AN2D0BWP12T30P140 U46 ( .A1(n23), .A2(n34), .Z(out[4]) );
  NR2D0BWP12T30P140 U47 ( .A1(n29), .A2(n26), .ZN(out[7]) );
  INVD0BWP12T30P140 U48 ( .I(n29), .ZN(n36) );
  CKMUX2D0BWP12T30P140 U49 ( .I0(in[3]), .I1(in[5]), .S(ctrl[1]), .Z(n30) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n36), .A2(n30), .B1(n24), .B2(n39), .ZN(n25)
         );
  OAI31D0BWP12T30P140 U51 ( .A1(ctrl[0]), .A2(n34), .A3(n26), .B(n25), .ZN(
        out[3]) );
  AOI22D0BWP12T30P140 U52 ( .A1(ctrl[0]), .A2(in[7]), .B1(in[6]), .B2(n27), 
        .ZN(n33) );
  AOI22D0BWP12T30P140 U53 ( .A1(ctrl[1]), .A2(in[4]), .B1(in[2]), .B2(n28), 
        .ZN(n40) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n31), .A2(n30), .B1(n40), .B2(n29), .ZN(n32)
         );
  OAI31D0BWP12T30P140 U55 ( .A1(ctrl[1]), .A2(n34), .A3(n33), .B(n32), .ZN(
        out[2]) );
  AOI22D0BWP12T30P140 U56 ( .A1(ctrl[2]), .A2(n37), .B1(n36), .B2(n35), .ZN(
        n38) );
  OAI21D0BWP12T30P140 U57 ( .A1(n40), .A2(n39), .B(n38), .ZN(out[1]) );
endmodule

