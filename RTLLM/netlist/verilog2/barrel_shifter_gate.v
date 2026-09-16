/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:52:10 2026
/////////////////////////////////////////////////////////////


module barrel_shifter ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38;

  INVD0BWP12T30P140 U28 ( .I(ctrl[0]), .ZN(n26) );
  AOI22D0BWP12T30P140 U29 ( .A1(ctrl[0]), .A2(in[7]), .B1(in[6]), .B2(n26), 
        .ZN(n22) );
  AOI22D0BWP12T30P140 U30 ( .A1(ctrl[0]), .A2(in[5]), .B1(in[4]), .B2(n26), 
        .ZN(n35) );
  INVD0BWP12T30P140 U31 ( .I(ctrl[1]), .ZN(n28) );
  AOI22D0BWP12T30P140 U32 ( .A1(ctrl[1]), .A2(n22), .B1(n35), .B2(n28), .ZN(
        n32) );
  AOI22D0BWP12T30P140 U33 ( .A1(ctrl[0]), .A2(in[3]), .B1(in[2]), .B2(n26), 
        .ZN(n33) );
  AOI22D0BWP12T30P140 U34 ( .A1(ctrl[0]), .A2(in[1]), .B1(in[0]), .B2(n26), 
        .ZN(n20) );
  AOI221D0BWP12T30P140 U35 ( .A1(n33), .A2(ctrl[1]), .B1(n20), .B2(n28), .C(
        ctrl[2]), .ZN(n21) );
  AO21D0BWP12T30P140 U36 ( .A1(n32), .A2(ctrl[2]), .B(n21), .Z(out[0]) );
  IND2D1BWP12T30P140 U37 ( .A1(n22), .B1(n28), .ZN(n38) );
  NR2D0BWP12T30P140 U38 ( .A1(ctrl[2]), .A2(n38), .ZN(out[6]) );
  ND2D0BWP12T30P140 U39 ( .A1(in[7]), .A2(n26), .ZN(n25) );
  INVD0BWP12T30P140 U40 ( .I(ctrl[2]), .ZN(n37) );
  ND2D0BWP12T30P140 U41 ( .A1(n37), .A2(n28), .ZN(n34) );
  NR2D0BWP12T30P140 U42 ( .A1(n25), .A2(n34), .ZN(out[7]) );
  AOI22D0BWP12T30P140 U43 ( .A1(ctrl[0]), .A2(in[6]), .B1(in[5]), .B2(n26), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U44 ( .A1(ctrl[0]), .A2(in[4]), .B1(in[3]), .B2(n26), 
        .ZN(n29) );
  AO221D0BWP12T30P140 U45 ( .A1(ctrl[1]), .A2(n24), .B1(n28), .B2(n29), .C(
        ctrl[2]), .Z(n23) );
  OAI31D0BWP12T30P140 U46 ( .A1(n37), .A2(n25), .A3(ctrl[1]), .B(n23), .ZN(
        out[3]) );
  AOI22D0BWP12T30P140 U47 ( .A1(ctrl[1]), .A2(n25), .B1(n24), .B2(n28), .ZN(
        n31) );
  AOI22D0BWP12T30P140 U48 ( .A1(ctrl[0]), .A2(in[2]), .B1(in[1]), .B2(n26), 
        .ZN(n27) );
  AOI221D0BWP12T30P140 U49 ( .A1(ctrl[1]), .A2(n29), .B1(n28), .B2(n27), .C(
        ctrl[2]), .ZN(n30) );
  AO21D0BWP12T30P140 U50 ( .A1(ctrl[2]), .A2(n31), .B(n30), .Z(out[1]) );
  INR2D1BWP12T30P140 U51 ( .A1(n31), .B1(ctrl[2]), .ZN(out[5]) );
  INR2D1BWP12T30P140 U52 ( .A1(n32), .B1(ctrl[2]), .ZN(out[4]) );
  ND2D0BWP12T30P140 U53 ( .A1(ctrl[1]), .A2(n37), .ZN(n36) );
  OAI222D0BWP12T30P140 U54 ( .A1(n38), .A2(n37), .B1(n36), .B2(n35), .C1(n34), 
        .C2(n33), .ZN(out[2]) );
endmodule

