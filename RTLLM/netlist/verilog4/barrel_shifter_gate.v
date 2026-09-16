/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:38:32 2026
/////////////////////////////////////////////////////////////


module barrel_shifter ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;

  INVD0BWP12T30P140 U33 ( .I(ctrl[0]), .ZN(n38) );
  NR2D0BWP12T30P140 U34 ( .A1(ctrl[2]), .A2(n38), .ZN(n43) );
  NR2D0BWP12T30P140 U35 ( .A1(ctrl[2]), .A2(ctrl[0]), .ZN(n42) );
  AOI22D0BWP12T30P140 U36 ( .A1(n43), .A2(in[3]), .B1(n42), .B2(in[2]), .ZN(
        n35) );
  INVD0BWP12T30P140 U37 ( .I(ctrl[1]), .ZN(n44) );
  INVD0BWP12T30P140 U38 ( .I(in[6]), .ZN(n37) );
  NR2D0BWP12T30P140 U39 ( .A1(ctrl[1]), .A2(ctrl[0]), .ZN(n48) );
  OAI22D0BWP12T30P140 U40 ( .A1(n44), .A2(in[7]), .B1(in[5]), .B2(ctrl[1]), 
        .ZN(n36) );
  MAOI22D0BWP12T30P140 U41 ( .A1(in[4]), .A2(n48), .B1(n38), .B2(n36), .ZN(n28) );
  OAI31D0BWP12T30P140 U42 ( .A1(ctrl[0]), .A2(n44), .A3(n37), .B(n28), .ZN(n49) );
  ND2D0BWP12T30P140 U43 ( .A1(n44), .A2(n42), .ZN(n31) );
  INVD0BWP12T30P140 U44 ( .I(n31), .ZN(n39) );
  AOI22D0BWP12T30P140 U45 ( .A1(ctrl[2]), .A2(n49), .B1(n39), .B2(in[0]), .ZN(
        n30) );
  ND3D0BWP12T30P140 U46 ( .A1(n44), .A2(in[1]), .A3(n43), .ZN(n29) );
  OAI211D0BWP12T30P140 U47 ( .A1(n35), .A2(n44), .B(n30), .C(n29), .ZN(out[0])
         );
  INVD0BWP12T30P140 U48 ( .I(in[7]), .ZN(n32) );
  NR2D0BWP12T30P140 U49 ( .A1(n31), .A2(n32), .ZN(out[7]) );
  AO22D0BWP12T30P140 U50 ( .A1(n43), .A2(in[5]), .B1(n42), .B2(in[4]), .Z(n33)
         );
  AOI221D0BWP12T30P140 U51 ( .A1(ctrl[0]), .A2(n32), .B1(n38), .B2(n37), .C(
        ctrl[1]), .ZN(n51) );
  AOI22D0BWP12T30P140 U52 ( .A1(ctrl[1]), .A2(n33), .B1(ctrl[2]), .B2(n51), 
        .ZN(n34) );
  OAI21D0BWP12T30P140 U53 ( .A1(ctrl[1]), .A2(n35), .B(n34), .ZN(out[2]) );
  AOI22D0BWP12T30P140 U54 ( .A1(n43), .A2(in[4]), .B1(in[3]), .B2(n42), .ZN(
        n45) );
  OAI32D0BWP12T30P140 U55 ( .A1(n38), .A2(ctrl[1]), .A3(n37), .B1(n36), .B2(
        ctrl[0]), .ZN(n50) );
  AOI22D0BWP12T30P140 U56 ( .A1(ctrl[2]), .A2(n50), .B1(in[1]), .B2(n39), .ZN(
        n41) );
  ND3D0BWP12T30P140 U57 ( .A1(n44), .A2(in[2]), .A3(n43), .ZN(n40) );
  OAI211D0BWP12T30P140 U58 ( .A1(n45), .A2(n44), .B(n41), .C(n40), .ZN(out[1])
         );
  AOI22D0BWP12T30P140 U59 ( .A1(n43), .A2(in[6]), .B1(n42), .B2(in[5]), .ZN(
        n46) );
  AOI22D0BWP12T30P140 U60 ( .A1(ctrl[1]), .A2(n46), .B1(n45), .B2(n44), .ZN(
        n47) );
  AO31D0BWP12T30P140 U61 ( .A1(ctrl[2]), .A2(in[7]), .A3(n48), .B(n47), .Z(
        out[3]) );
  INR2D1BWP12T30P140 U62 ( .A1(n49), .B1(ctrl[2]), .ZN(out[4]) );
  INR2D1BWP12T30P140 U63 ( .A1(n50), .B1(ctrl[2]), .ZN(out[5]) );
  INR2D1BWP12T30P140 U64 ( .A1(n51), .B1(ctrl[2]), .ZN(out[6]) );
endmodule

