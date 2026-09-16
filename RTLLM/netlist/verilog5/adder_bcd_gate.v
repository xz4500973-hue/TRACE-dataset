/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:59:15 2026
/////////////////////////////////////////////////////////////


module adder_bcd ( A, B, Cin, Sum, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Sum;
  input Cin;
  output Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FA1D0BWP12T30P140 U5 ( .A(B[1]), .B(A[1]), .CI(n2), .CO(n3), .S(n6) );
  FA1D0BWP12T30P140 U6 ( .A(B[2]), .B(A[2]), .CI(n3), .CO(n4), .S(n12) );
  OA21D0BWP12T30P140 U7 ( .A1(n6), .A2(n12), .B(n8), .Z(n11) );
  FA1D0BWP12T30P140 U8 ( .A(B[3]), .B(A[3]), .CI(n4), .CO(n9), .S(n8) );
  NR2D0BWP12T30P140 U9 ( .A1(n9), .A2(n11), .ZN(n5) );
  AOI21D0BWP12T30P140 U10 ( .A1(n11), .A2(n9), .B(n5), .ZN(Cout) );
  NR2D0BWP12T30P140 U11 ( .A1(n6), .A2(n5), .ZN(n15) );
  AO21D0BWP12T30P140 U12 ( .A1(n5), .A2(n6), .B(n15), .Z(Sum[1]) );
  NR2D0BWP12T30P140 U13 ( .A1(n6), .A2(n12), .ZN(n7) );
  ND2D0BWP12T30P140 U14 ( .A1(n7), .A2(n9), .ZN(n13) );
  AOI21D0BWP12T30P140 U15 ( .A1(n9), .A2(n13), .B(n8), .ZN(n10) );
  NR2D0BWP12T30P140 U16 ( .A1(n11), .A2(n10), .ZN(Sum[3]) );
  FA1D0BWP12T30P140 U17 ( .A(Cin), .B(B[0]), .CI(A[0]), .CO(n2), .S(Sum[0]) );
  INVD0BWP12T30P140 U18 ( .I(n12), .ZN(n14) );
  OAI21D0BWP12T30P140 U19 ( .A1(n15), .A2(n14), .B(n13), .ZN(Sum[2]) );
endmodule

