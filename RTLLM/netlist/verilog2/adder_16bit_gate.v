/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:48:51 2026
/////////////////////////////////////////////////////////////


module adder_16bit ( a, b, Cin, y, Co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] y;
  input Cin;
  output Co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FA1D0BWP12T30P140 U1 ( .A(b[15]), .B(a[15]), .CI(n1), .CO(Co), .S(y[15]) );
  FA1D0BWP12T30P140 U2 ( .A(b[14]), .B(a[14]), .CI(n2), .CO(n1), .S(y[14]) );
  FA1D0BWP12T30P140 U3 ( .A(b[13]), .B(a[13]), .CI(n3), .CO(n2), .S(y[13]) );
  FA1D0BWP12T30P140 U4 ( .A(b[12]), .B(a[12]), .CI(n4), .CO(n3), .S(y[12]) );
  FA1D0BWP12T30P140 U5 ( .A(b[11]), .B(a[11]), .CI(n5), .CO(n4), .S(y[11]) );
  FA1D0BWP12T30P140 U6 ( .A(b[10]), .B(a[10]), .CI(n6), .CO(n5), .S(y[10]) );
  FA1D0BWP12T30P140 U7 ( .A(b[9]), .B(a[9]), .CI(n7), .CO(n6), .S(y[9]) );
  FA1D0BWP12T30P140 U8 ( .A(b[8]), .B(a[8]), .CI(n8), .CO(n7), .S(y[8]) );
  FA1D0BWP12T30P140 U9 ( .A(b[7]), .B(a[7]), .CI(n9), .CO(n8), .S(y[7]) );
  FA1D0BWP12T30P140 U10 ( .A(b[6]), .B(a[6]), .CI(n10), .CO(n9), .S(y[6]) );
  FA1D0BWP12T30P140 U11 ( .A(b[5]), .B(a[5]), .CI(n11), .CO(n10), .S(y[5]) );
  FA1D0BWP12T30P140 U12 ( .A(b[4]), .B(a[4]), .CI(n12), .CO(n11), .S(y[4]) );
  FA1D0BWP12T30P140 U13 ( .A(b[3]), .B(a[3]), .CI(n13), .CO(n12), .S(y[3]) );
  FA1D0BWP12T30P140 U14 ( .A(b[2]), .B(a[2]), .CI(n14), .CO(n13), .S(y[2]) );
  FA1D0BWP12T30P140 U15 ( .A(b[1]), .B(a[1]), .CI(n15), .CO(n14), .S(y[1]) );
  FA1D0BWP12T30P140 U16 ( .A(Cin), .B(b[0]), .CI(a[0]), .CO(n15), .S(y[0]) );
endmodule

