/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:12:36 2026
/////////////////////////////////////////////////////////////


module adder_16bit ( a, b, Cin, y, Co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] y;
  input Cin;
  output Co;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30;

  FA1D0BWP12T30P140 U17 ( .A(b[15]), .B(a[15]), .CI(n16), .CO(Co), .S(y[15])
         );
  FA1D0BWP12T30P140 U18 ( .A(b[14]), .B(a[14]), .CI(n17), .CO(n16), .S(y[14])
         );
  FA1D0BWP12T30P140 U19 ( .A(b[13]), .B(a[13]), .CI(n18), .CO(n17), .S(y[13])
         );
  FA1D0BWP12T30P140 U20 ( .A(b[12]), .B(a[12]), .CI(n19), .CO(n18), .S(y[12])
         );
  FA1D0BWP12T30P140 U21 ( .A(b[11]), .B(a[11]), .CI(n20), .CO(n19), .S(y[11])
         );
  FA1D0BWP12T30P140 U22 ( .A(b[10]), .B(a[10]), .CI(n21), .CO(n20), .S(y[10])
         );
  FA1D0BWP12T30P140 U23 ( .A(b[9]), .B(a[9]), .CI(n22), .CO(n21), .S(y[9]) );
  FA1D0BWP12T30P140 U24 ( .A(b[8]), .B(a[8]), .CI(n23), .CO(n22), .S(y[8]) );
  FA1D0BWP12T30P140 U25 ( .A(b[7]), .B(a[7]), .CI(n24), .CO(n23), .S(y[7]) );
  FA1D0BWP12T30P140 U26 ( .A(b[6]), .B(a[6]), .CI(n25), .CO(n24), .S(y[6]) );
  FA1D0BWP12T30P140 U27 ( .A(b[5]), .B(a[5]), .CI(n26), .CO(n25), .S(y[5]) );
  FA1D0BWP12T30P140 U28 ( .A(b[4]), .B(a[4]), .CI(n27), .CO(n26), .S(y[4]) );
  FA1D0BWP12T30P140 U29 ( .A(b[3]), .B(a[3]), .CI(n28), .CO(n27), .S(y[3]) );
  FA1D0BWP12T30P140 U30 ( .A(b[2]), .B(a[2]), .CI(n29), .CO(n28), .S(y[2]) );
  FA1D0BWP12T30P140 U31 ( .A(b[1]), .B(a[1]), .CI(n30), .CO(n29), .S(y[1]) );
  FA1D0BWP12T30P140 U32 ( .A(Cin), .B(a[0]), .CI(b[0]), .CO(n30), .S(y[0]) );
endmodule

