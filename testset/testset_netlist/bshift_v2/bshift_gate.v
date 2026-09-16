/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:15:46 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  INVD0BWP12T30P140 U29 ( .I(shamt[1]), .ZN(n24) );
  NR2D0BWP12T30P140 U30 ( .A1(shamt[2]), .A2(n24), .ZN(n30) );
  CKMUX2D0BWP12T30P140 U31 ( .I0(data[5]), .I1(data[1]), .S(shamt[2]), .Z(n25)
         );
  AOI22D0BWP12T30P140 U32 ( .A1(data[3]), .A2(n30), .B1(n25), .B2(n24), .ZN(
        n22) );
  INVD0BWP12T30P140 U33 ( .I(shamt[2]), .ZN(n26) );
  INVD0BWP12T30P140 U34 ( .I(data[0]), .ZN(n36) );
  MOAI22D0BWP12T30P140 U35 ( .A1(n26), .A2(n36), .B1(data[4]), .B2(n26), .ZN(
        n21) );
  NR2D0BWP12T30P140 U36 ( .A1(shamt[1]), .A2(n26), .ZN(n20) );
  NR2D0BWP12T30P140 U37 ( .A1(shamt[2]), .A2(shamt[1]), .ZN(n32) );
  AOI222D0BWP12T30P140 U38 ( .A1(n21), .A2(shamt[1]), .B1(data[2]), .B2(n20), 
        .C1(n32), .C2(data[6]), .ZN(n27) );
  INVD0BWP12T30P140 U39 ( .I(shamt[0]), .ZN(n35) );
  AOI22D0BWP12T30P140 U40 ( .A1(shamt[0]), .A2(n22), .B1(n27), .B2(n35), .ZN(
        out[6]) );
  AOI22D0BWP12T30P140 U41 ( .A1(data[2]), .A2(n30), .B1(n24), .B2(n21), .ZN(
        n23) );
  AOI22D0BWP12T30P140 U42 ( .A1(shamt[0]), .A2(n23), .B1(n22), .B2(n35), .ZN(
        out[5]) );
  AOI22D0BWP12T30P140 U43 ( .A1(data[1]), .A2(n30), .B1(n32), .B2(data[3]), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U44 ( .A1(shamt[0]), .A2(n31), .B1(n23), .B2(n35), .ZN(
        out[4]) );
  NR2D0BWP12T30P140 U45 ( .A1(n25), .A2(n24), .ZN(n29) );
  AOI221D0BWP12T30P140 U46 ( .A1(shamt[2]), .A2(data[3]), .B1(n26), .B2(
        data[7]), .C(shamt[1]), .ZN(n28) );
  OAI32D0BWP12T30P140 U47 ( .A1(shamt[0]), .A2(n29), .A3(n28), .B1(n27), .B2(
        n35), .ZN(out[7]) );
  AOI22D0BWP12T30P140 U48 ( .A1(n30), .A2(data[0]), .B1(n32), .B2(data[2]), 
        .ZN(n33) );
  AOI22D0BWP12T30P140 U49 ( .A1(shamt[0]), .A2(n33), .B1(n31), .B2(n35), .ZN(
        out[3]) );
  INVD0BWP12T30P140 U50 ( .I(n32), .ZN(n37) );
  INVD0BWP12T30P140 U51 ( .I(data[1]), .ZN(n34) );
  OAI32D0BWP12T30P140 U52 ( .A1(n35), .A2(n37), .A3(n34), .B1(shamt[0]), .B2(
        n33), .ZN(out[2]) );
  AOI221D0BWP12T30P140 U53 ( .A1(shamt[0]), .A2(n36), .B1(n35), .B2(n34), .C(
        n37), .ZN(out[1]) );
  NR3D0BWP12T30P140 U54 ( .A1(shamt[0]), .A2(n37), .A3(n36), .ZN(out[0]) );
endmodule

