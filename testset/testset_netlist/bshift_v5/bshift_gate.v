/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:17:35 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38;

  INVD0BWP12T30P140 U29 ( .I(shamt[0]), .ZN(n26) );
  ND2D0BWP12T30P140 U30 ( .A1(data[0]), .A2(n26), .ZN(n25) );
  INVD0BWP12T30P140 U31 ( .I(shamt[2]), .ZN(n37) );
  INVD0BWP12T30P140 U32 ( .I(shamt[1]), .ZN(n29) );
  ND2D0BWP12T30P140 U33 ( .A1(n37), .A2(n29), .ZN(n34) );
  NR2D0BWP12T30P140 U34 ( .A1(n25), .A2(n34), .ZN(out[0]) );
  AOI22D0BWP12T30P140 U35 ( .A1(shamt[0]), .A2(data[1]), .B1(data[2]), .B2(n26), .ZN(n23) );
  AOI22D0BWP12T30P140 U36 ( .A1(shamt[1]), .A2(n25), .B1(n23), .B2(n29), .ZN(
        n31) );
  AOI22D0BWP12T30P140 U37 ( .A1(shamt[0]), .A2(data[3]), .B1(data[4]), .B2(n26), .ZN(n22) );
  AOI22D0BWP12T30P140 U38 ( .A1(shamt[0]), .A2(data[5]), .B1(data[6]), .B2(n26), .ZN(n20) );
  AOI221D0BWP12T30P140 U39 ( .A1(shamt[1]), .A2(n22), .B1(n29), .B2(n20), .C(
        shamt[2]), .ZN(n21) );
  AO21D0BWP12T30P140 U40 ( .A1(shamt[2]), .A2(n31), .B(n21), .Z(out[6]) );
  AO221D0BWP12T30P140 U41 ( .A1(shamt[1]), .A2(n23), .B1(n29), .B2(n22), .C(
        shamt[2]), .Z(n24) );
  OAI31D0BWP12T30P140 U42 ( .A1(n37), .A2(n25), .A3(shamt[1]), .B(n24), .ZN(
        out[4]) );
  AOI22D0BWP12T30P140 U43 ( .A1(shamt[0]), .A2(data[0]), .B1(data[1]), .B2(n26), .ZN(n30) );
  AOI22D0BWP12T30P140 U44 ( .A1(shamt[0]), .A2(data[2]), .B1(data[3]), .B2(n26), .ZN(n35) );
  AOI22D0BWP12T30P140 U45 ( .A1(shamt[1]), .A2(n30), .B1(n35), .B2(n29), .ZN(
        n32) );
  AOI22D0BWP12T30P140 U46 ( .A1(shamt[0]), .A2(data[4]), .B1(data[5]), .B2(n26), .ZN(n33) );
  AOI22D0BWP12T30P140 U47 ( .A1(shamt[0]), .A2(data[6]), .B1(data[7]), .B2(n26), .ZN(n27) );
  AOI221D0BWP12T30P140 U48 ( .A1(n33), .A2(shamt[1]), .B1(n27), .B2(n29), .C(
        shamt[2]), .ZN(n28) );
  AO21D0BWP12T30P140 U49 ( .A1(n32), .A2(shamt[2]), .B(n28), .Z(out[7]) );
  IND2D1BWP12T30P140 U50 ( .A1(n30), .B1(n29), .ZN(n38) );
  NR2D0BWP12T30P140 U51 ( .A1(shamt[2]), .A2(n38), .ZN(out[1]) );
  INR2D1BWP12T30P140 U52 ( .A1(n31), .B1(shamt[2]), .ZN(out[2]) );
  INR2D1BWP12T30P140 U53 ( .A1(n32), .B1(shamt[2]), .ZN(out[3]) );
  ND2D0BWP12T30P140 U54 ( .A1(shamt[1]), .A2(n37), .ZN(n36) );
  OAI222D0BWP12T30P140 U55 ( .A1(n38), .A2(n37), .B1(n36), .B2(n35), .C1(n34), 
        .C2(n33), .ZN(out[5]) );
endmodule

