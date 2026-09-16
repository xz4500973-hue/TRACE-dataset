/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:50:13 2026
/////////////////////////////////////////////////////////////


module adder_bcd ( A, B, Cin, Sum, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  FA1D0BWP12T30P140 U4 ( .A(B[1]), .B(A[1]), .CI(n1), .CO(n2), .S(n5) );
  FA1D0BWP12T30P140 U5 ( .A(B[2]), .B(A[2]), .CI(n2), .CO(n3), .S(n11) );
  OA21D0BWP12T30P140 U6 ( .A1(n5), .A2(n11), .B(n7), .Z(n10) );
  FA1D0BWP12T30P140 U7 ( .A(B[3]), .B(A[3]), .CI(n3), .CO(n8), .S(n7) );
  NR2D0BWP12T30P140 U8 ( .A1(n8), .A2(n10), .ZN(n4) );
  AOI21D0BWP12T30P140 U9 ( .A1(n10), .A2(n8), .B(n4), .ZN(Cout) );
  NR2D0BWP12T30P140 U10 ( .A1(n5), .A2(n4), .ZN(n14) );
  AO21D0BWP12T30P140 U11 ( .A1(n4), .A2(n5), .B(n14), .Z(Sum[1]) );
  NR2D0BWP12T30P140 U12 ( .A1(n5), .A2(n11), .ZN(n6) );
  ND2D0BWP12T30P140 U13 ( .A1(n6), .A2(n8), .ZN(n12) );
  AOI21D0BWP12T30P140 U14 ( .A1(n8), .A2(n12), .B(n7), .ZN(n9) );
  NR2D0BWP12T30P140 U15 ( .A1(n10), .A2(n9), .ZN(Sum[3]) );
  FA1D0BWP12T30P140 U16 ( .A(Cin), .B(B[0]), .CI(A[0]), .CO(n1), .S(Sum[0]) );
  INVD0BWP12T30P140 U17 ( .I(n11), .ZN(n13) );
  OAI21D0BWP12T30P140 U18 ( .A1(n14), .A2(n13), .B(n12), .ZN(Sum[2]) );
endmodule

