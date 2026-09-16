/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:19:59 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  INVD0BWP12T30P140 U29 ( .I(shamt[1]), .ZN(n36) );
  INVD0BWP12T30P140 U30 ( .I(shamt[0]), .ZN(n33) );
  ND2D0BWP12T30P140 U31 ( .A1(n36), .A2(n33), .ZN(n34) );
  INVD0BWP12T30P140 U32 ( .I(data[0]), .ZN(n32) );
  NR2D0BWP12T30P140 U33 ( .A1(n34), .A2(n32), .ZN(n23) );
  INVD0BWP12T30P140 U34 ( .I(shamt[2]), .ZN(n42) );
  AN2D0BWP12T30P140 U35 ( .A1(n23), .A2(n42), .Z(out[0]) );
  AOI22D0BWP12T30P140 U36 ( .A1(shamt[1]), .A2(data[2]), .B1(data[4]), .B2(n36), .ZN(n25) );
  ND2D0BWP12T30P140 U37 ( .A1(shamt[0]), .A2(n42), .ZN(n41) );
  AOI22D0BWP12T30P140 U38 ( .A1(shamt[0]), .A2(data[0]), .B1(data[1]), .B2(n33), .ZN(n27) );
  NR2D0BWP12T30P140 U39 ( .A1(shamt[1]), .A2(n27), .ZN(n37) );
  AOI22D0BWP12T30P140 U40 ( .A1(shamt[1]), .A2(data[3]), .B1(data[5]), .B2(n36), .ZN(n40) );
  ND2D0BWP12T30P140 U41 ( .A1(n42), .A2(n33), .ZN(n39) );
  MAOI22D0BWP12T30P140 U42 ( .A1(shamt[2]), .A2(n37), .B1(n40), .B2(n39), .ZN(
        n20) );
  OAI21D0BWP12T30P140 U43 ( .A1(n25), .A2(n41), .B(n20), .ZN(out[5]) );
  INVD0BWP12T30P140 U44 ( .I(data[1]), .ZN(n21) );
  INVD0BWP12T30P140 U45 ( .I(data[3]), .ZN(n26) );
  AOI221D0BWP12T30P140 U46 ( .A1(shamt[1]), .A2(n21), .B1(n36), .B2(n26), .C(
        n41), .ZN(n22) );
  AOI21D0BWP12T30P140 U47 ( .A1(n23), .A2(shamt[2]), .B(n22), .ZN(n24) );
  OAI21D0BWP12T30P140 U48 ( .A1(n25), .A2(n39), .B(n24), .ZN(out[4]) );
  OAI22D0BWP12T30P140 U49 ( .A1(n27), .A2(n36), .B1(n34), .B2(n26), .ZN(n28)
         );
  AOI31D0BWP12T30P140 U50 ( .A1(data[2]), .A2(shamt[0]), .A3(n36), .B(n28), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U51 ( .A1(shamt[1]), .A2(data[4]), .B1(data[6]), .B2(n36), .ZN(n38) );
  AOI221D0BWP12T30P140 U52 ( .A1(shamt[1]), .A2(data[5]), .B1(n36), .B2(
        data[7]), .C(shamt[0]), .ZN(n29) );
  AO21D0BWP12T30P140 U53 ( .A1(shamt[0]), .A2(n38), .B(n29), .Z(n30) );
  AOI22D0BWP12T30P140 U54 ( .A1(shamt[2]), .A2(n31), .B1(n30), .B2(n42), .ZN(
        out[7]) );
  NR2D0BWP12T30P140 U55 ( .A1(shamt[2]), .A2(n31), .ZN(out[3]) );
  NR2D0BWP12T30P140 U56 ( .A1(shamt[0]), .A2(n32), .ZN(n35) );
  OAI222D0BWP12T30P140 U57 ( .A1(n36), .A2(n35), .B1(n34), .B2(data[2]), .C1(
        n33), .C2(data[1]), .ZN(n43) );
  NR2D0BWP12T30P140 U58 ( .A1(shamt[2]), .A2(n43), .ZN(out[2]) );
  AN2D0BWP12T30P140 U59 ( .A1(n37), .A2(n42), .Z(out[1]) );
  OAI222D0BWP12T30P140 U60 ( .A1(n43), .A2(n42), .B1(n41), .B2(n40), .C1(n39), 
        .C2(n38), .ZN(out[6]) );
endmodule

