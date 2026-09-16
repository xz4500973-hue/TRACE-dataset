/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:28:20 2026
/////////////////////////////////////////////////////////////


module barrel_shifter ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  CKMUX2D0BWP12T30P140 U29 ( .I0(in[2]), .I1(in[6]), .S(ctrl[2]), .Z(n30) );
  INVD0BWP12T30P140 U30 ( .I(ctrl[1]), .ZN(n29) );
  NR2D0BWP12T30P140 U31 ( .A1(n30), .A2(n29), .ZN(n23) );
  INVD0BWP12T30P140 U32 ( .I(ctrl[2]), .ZN(n20) );
  AOI221D0BWP12T30P140 U33 ( .A1(ctrl[2]), .A2(in[4]), .B1(n20), .B2(in[0]), 
        .C(ctrl[1]), .ZN(n22) );
  INVD0BWP12T30P140 U34 ( .I(in[7]), .ZN(n36) );
  MOAI22D0BWP12T30P140 U35 ( .A1(n20), .A2(n36), .B1(in[3]), .B2(n20), .ZN(n27) );
  NR2D0BWP12T30P140 U36 ( .A1(ctrl[1]), .A2(n20), .ZN(n21) );
  NR2D0BWP12T30P140 U37 ( .A1(ctrl[2]), .A2(ctrl[1]), .ZN(n25) );
  AOI222D0BWP12T30P140 U38 ( .A1(n27), .A2(ctrl[1]), .B1(in[5]), .B2(n21), 
        .C1(n25), .C2(in[1]), .ZN(n34) );
  INVD0BWP12T30P140 U39 ( .I(ctrl[0]), .ZN(n33) );
  OAI32D0BWP12T30P140 U40 ( .A1(ctrl[0]), .A2(n23), .A3(n22), .B1(n34), .B2(
        n33), .ZN(out[0]) );
  INVD0BWP12T30P140 U41 ( .I(in[6]), .ZN(n24) );
  INVD0BWP12T30P140 U42 ( .I(n25), .ZN(n37) );
  AOI221D0BWP12T30P140 U43 ( .A1(ctrl[0]), .A2(n36), .B1(n33), .B2(n24), .C(
        n37), .ZN(out[6]) );
  NR2D0BWP12T30P140 U44 ( .A1(ctrl[2]), .A2(n29), .ZN(n31) );
  AOI22D0BWP12T30P140 U45 ( .A1(n31), .A2(in[7]), .B1(n25), .B2(in[5]), .ZN(
        n26) );
  OAI32D0BWP12T30P140 U46 ( .A1(n33), .A2(n37), .A3(n24), .B1(ctrl[0]), .B2(
        n26), .ZN(out[5]) );
  AOI22D0BWP12T30P140 U47 ( .A1(in[6]), .A2(n31), .B1(n25), .B2(in[4]), .ZN(
        n28) );
  AOI22D0BWP12T30P140 U48 ( .A1(ctrl[0]), .A2(n26), .B1(n28), .B2(n33), .ZN(
        out[4]) );
  AOI22D0BWP12T30P140 U49 ( .A1(in[5]), .A2(n31), .B1(n29), .B2(n27), .ZN(n32)
         );
  AOI22D0BWP12T30P140 U50 ( .A1(ctrl[0]), .A2(n28), .B1(n32), .B2(n33), .ZN(
        out[3]) );
  AOI22D0BWP12T30P140 U51 ( .A1(in[4]), .A2(n31), .B1(n30), .B2(n29), .ZN(n35)
         );
  AOI22D0BWP12T30P140 U52 ( .A1(ctrl[0]), .A2(n32), .B1(n35), .B2(n33), .ZN(
        out[2]) );
  AOI22D0BWP12T30P140 U53 ( .A1(ctrl[0]), .A2(n35), .B1(n34), .B2(n33), .ZN(
        out[1]) );
  NR3D0BWP12T30P140 U54 ( .A1(ctrl[0]), .A2(n37), .A3(n36), .ZN(out[7]) );
endmodule

