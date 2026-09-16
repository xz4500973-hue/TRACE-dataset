/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:35:11 2026
/////////////////////////////////////////////////////////////


module adder_16bit ( a, b, Cin, y, Co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] y;
  input Cin;
  output Co;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;

  FA1D0BWP12T30P140 U17 ( .A(a[15]), .B(b[15]), .CI(n31), .CO(Co), .S(y[15])
         );
  FA1D0BWP12T30P140 U18 ( .A(b[14]), .B(a[14]), .CI(n32), .CO(n31), .S(y[14])
         );
  FA1D0BWP12T30P140 U19 ( .A(b[13]), .B(a[13]), .CI(n33), .CO(n32), .S(y[13])
         );
  FA1D0BWP12T30P140 U20 ( .A(b[12]), .B(a[12]), .CI(n34), .CO(n33), .S(y[12])
         );
  FA1D0BWP12T30P140 U21 ( .A(b[11]), .B(a[11]), .CI(n35), .CO(n34), .S(y[11])
         );
  FA1D0BWP12T30P140 U22 ( .A(b[10]), .B(a[10]), .CI(n36), .CO(n35), .S(y[10])
         );
  FA1D0BWP12T30P140 U23 ( .A(b[9]), .B(a[9]), .CI(n37), .CO(n36), .S(y[9]) );
  FA1D0BWP12T30P140 U24 ( .A(b[8]), .B(a[8]), .CI(n38), .CO(n37), .S(y[8]) );
  FA1D0BWP12T30P140 U25 ( .A(b[7]), .B(a[7]), .CI(n39), .CO(n38), .S(y[7]) );
  FA1D0BWP12T30P140 U26 ( .A(b[6]), .B(a[6]), .CI(n40), .CO(n39), .S(y[6]) );
  FA1D0BWP12T30P140 U27 ( .A(b[5]), .B(a[5]), .CI(n41), .CO(n40), .S(y[5]) );
  FA1D0BWP12T30P140 U28 ( .A(b[4]), .B(a[4]), .CI(n42), .CO(n41), .S(y[4]) );
  FA1D0BWP12T30P140 U29 ( .A(b[3]), .B(a[3]), .CI(n43), .CO(n42), .S(y[3]) );
  FA1D0BWP12T30P140 U30 ( .A(b[2]), .B(a[2]), .CI(n44), .CO(n43), .S(y[2]) );
  FA1D0BWP12T30P140 U31 ( .A(b[1]), .B(a[1]), .CI(n45), .CO(n44), .S(y[1]) );
  FA1D0BWP12T30P140 U32 ( .A(a[0]), .B(Cin), .CI(b[0]), .CO(n45), .S(y[0]) );
endmodule

