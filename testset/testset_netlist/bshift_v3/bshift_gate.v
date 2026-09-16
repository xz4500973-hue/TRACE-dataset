/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:16:22 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;

  INVD0BWP12T30P140 U33 ( .I(shamt[1]), .ZN(n40) );
  NR2D0BWP12T30P140 U34 ( .A1(shamt[0]), .A2(shamt[2]), .ZN(n38) );
  ND2D0BWP12T30P140 U35 ( .A1(n40), .A2(n38), .ZN(n24) );
  INVD0BWP12T30P140 U36 ( .I(data[0]), .ZN(n27) );
  NR2D0BWP12T30P140 U37 ( .A1(n24), .A2(n27), .ZN(out[0]) );
  INVD0BWP12T30P140 U38 ( .I(shamt[0]), .ZN(n31) );
  NR2D0BWP12T30P140 U39 ( .A1(shamt[2]), .A2(n31), .ZN(n39) );
  AOI22D0BWP12T30P140 U40 ( .A1(n39), .A2(data[3]), .B1(data[4]), .B2(n38), 
        .ZN(n41) );
  INVD0BWP12T30P140 U41 ( .I(data[1]), .ZN(n33) );
  OAI22D0BWP12T30P140 U42 ( .A1(n40), .A2(data[0]), .B1(data[2]), .B2(shamt[1]), .ZN(n30) );
  OAI32D0BWP12T30P140 U43 ( .A1(n31), .A2(shamt[1]), .A3(n33), .B1(n30), .B2(
        shamt[0]), .ZN(n46) );
  INVD0BWP12T30P140 U44 ( .I(n24), .ZN(n34) );
  AOI22D0BWP12T30P140 U45 ( .A1(shamt[2]), .A2(n46), .B1(data[6]), .B2(n34), 
        .ZN(n26) );
  ND3D0BWP12T30P140 U46 ( .A1(n40), .A2(data[5]), .A3(n39), .ZN(n25) );
  OAI211D0BWP12T30P140 U47 ( .A1(n41), .A2(n40), .B(n26), .C(n25), .ZN(out[6])
         );
  AOI22D0BWP12T30P140 U48 ( .A1(n39), .A2(data[4]), .B1(n38), .B2(data[5]), 
        .ZN(n37) );
  AO22D0BWP12T30P140 U49 ( .A1(n39), .A2(data[2]), .B1(n38), .B2(data[3]), .Z(
        n28) );
  AOI221D0BWP12T30P140 U50 ( .A1(shamt[0]), .A2(n27), .B1(n31), .B2(n33), .C(
        shamt[1]), .ZN(n47) );
  AOI22D0BWP12T30P140 U51 ( .A1(shamt[1]), .A2(n28), .B1(shamt[2]), .B2(n47), 
        .ZN(n29) );
  OAI21D0BWP12T30P140 U52 ( .A1(shamt[1]), .A2(n37), .B(n29), .ZN(out[5]) );
  NR2D0BWP12T30P140 U53 ( .A1(shamt[1]), .A2(shamt[0]), .ZN(n44) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n44), .A2(data[3]), .B1(n31), .B2(n30), .ZN(
        n32) );
  OAI31D0BWP12T30P140 U55 ( .A1(shamt[0]), .A2(n40), .A3(n33), .B(n32), .ZN(
        n45) );
  AOI22D0BWP12T30P140 U56 ( .A1(shamt[2]), .A2(n45), .B1(n34), .B2(data[7]), 
        .ZN(n36) );
  ND3D0BWP12T30P140 U57 ( .A1(n40), .A2(data[6]), .A3(n39), .ZN(n35) );
  OAI211D0BWP12T30P140 U58 ( .A1(n37), .A2(n40), .B(n36), .C(n35), .ZN(out[7])
         );
  AOI22D0BWP12T30P140 U59 ( .A1(n39), .A2(data[1]), .B1(n38), .B2(data[2]), 
        .ZN(n42) );
  AOI22D0BWP12T30P140 U60 ( .A1(shamt[1]), .A2(n42), .B1(n41), .B2(n40), .ZN(
        n43) );
  AO31D0BWP12T30P140 U61 ( .A1(shamt[2]), .A2(data[0]), .A3(n44), .B(n43), .Z(
        out[4]) );
  INR2D1BWP12T30P140 U62 ( .A1(n45), .B1(shamt[2]), .ZN(out[3]) );
  INR2D1BWP12T30P140 U63 ( .A1(n46), .B1(shamt[2]), .ZN(out[2]) );
  INR2D1BWP12T30P140 U64 ( .A1(n47), .B1(shamt[2]), .ZN(out[1]) );
endmodule

