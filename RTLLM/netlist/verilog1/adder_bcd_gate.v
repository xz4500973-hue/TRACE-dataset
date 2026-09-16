/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:26:19 2026
/////////////////////////////////////////////////////////////


module adder_bcd ( A, B, Cin, Sum, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Sum;
  input Cin;
  output Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  FA1D0BWP12T30P140 U4 ( .A(B[2]), .B(A[2]), .CI(n2), .CO(n4), .S(n8) );
  FA1D0BWP12T30P140 U5 ( .A(B[1]), .B(A[1]), .CI(n3), .CO(n2), .S(n6) );
  FA1D0BWP12T30P140 U6 ( .A(B[3]), .B(A[3]), .CI(n4), .CO(n7), .S(n9) );
  OAI21D0BWP12T30P140 U7 ( .A1(n8), .A2(n6), .B(n9), .ZN(n5) );
  IND2D1BWP12T30P140 U8 ( .A1(n7), .B1(n5), .ZN(Cout) );
  INVD0BWP12T30P140 U9 ( .I(n6), .ZN(n14) );
  ND2D0BWP12T30P140 U10 ( .A1(n14), .A2(Cout), .ZN(n13) );
  NR2D0BWP12T30P140 U11 ( .A1(n8), .A2(n6), .ZN(n10) );
  AO22D0BWP12T30P140 U12 ( .A1(n8), .A2(n13), .B1(n10), .B2(n7), .Z(Sum[2]) );
  INVD0BWP12T30P140 U13 ( .I(n9), .ZN(n12) );
  INVD0BWP12T30P140 U14 ( .I(n10), .ZN(n11) );
  AO32D0BWP12T30P140 U15 ( .A1(n12), .A2(Cout), .A3(n11), .B1(n10), .B2(n9), 
        .Z(Sum[3]) );
  FA1D0BWP12T30P140 U16 ( .A(Cin), .B(B[0]), .CI(A[0]), .CO(n3), .S(Sum[0]) );
  OAI21D0BWP12T30P140 U17 ( .A1(Cout), .A2(n14), .B(n13), .ZN(Sum[1]) );
endmodule

