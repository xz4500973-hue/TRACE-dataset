/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:29:42 2026
/////////////////////////////////////////////////////////////


module comparator_3bit ( A, B, A_greater, A_equal, A_less );
  input [2:0] A;
  input [2:0] B;
  output A_greater, A_equal, A_less;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18;

  INVD0BWP12T30P140 U12 ( .I(A[1]), .ZN(n10) );
  IND2D1BWP12T30P140 U13 ( .A1(B[2]), .B1(A[2]), .ZN(n11) );
  OAI21D0BWP12T30P140 U14 ( .A1(B[1]), .A2(n10), .B(n11), .ZN(n12) );
  IND2D1BWP12T30P140 U15 ( .A1(A[0]), .B1(B[0]), .ZN(n13) );
  INR2D1BWP12T30P140 U16 ( .A1(B[2]), .B1(A[2]), .ZN(n18) );
  AOI21D0BWP12T30P140 U17 ( .A1(B[1]), .A2(n10), .B(n18), .ZN(n14) );
  INVD0BWP12T30P140 U18 ( .I(n14), .ZN(n15) );
  MOAI22D0BWP12T30P140 U19 ( .A1(n12), .A2(n13), .B1(n15), .B2(n11), .ZN(
        A_less) );
  INVD0BWP12T30P140 U20 ( .I(n12), .ZN(n17) );
  IND2D1BWP12T30P140 U21 ( .A1(B[0]), .B1(A[0]), .ZN(n16) );
  AN4D0BWP12T30P140 U22 ( .A1(n14), .A2(n17), .A3(n13), .A4(n16), .Z(A_equal)
         );
  OAI22D0BWP12T30P140 U23 ( .A1(n18), .A2(n17), .B1(n16), .B2(n15), .ZN(
        A_greater) );
endmodule

