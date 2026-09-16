/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:02:36 2026
/////////////////////////////////////////////////////////////


module comparator_3bit ( A, B, A_greater, A_equal, A_less );
  input [2:0] A;
  input [2:0] B;
  output A_greater, A_equal, A_less;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  INVD0BWP12T30P140 U16 ( .I(B[2]), .ZN(n15) );
  INR2D1BWP12T30P140 U17 ( .A1(B[1]), .B1(A[1]), .ZN(n20) );
  INR2D1BWP12T30P140 U18 ( .A1(A[1]), .B1(B[1]), .ZN(n16) );
  AOI211D0BWP12T30P140 U19 ( .A1(A[2]), .A2(n15), .B(n20), .C(n16), .ZN(n13)
         );
  OAI21D0BWP12T30P140 U20 ( .A1(A[2]), .A2(n15), .B(n13), .ZN(n23) );
  INVD0BWP12T30P140 U21 ( .I(n23), .ZN(n14) );
  IND2D1BWP12T30P140 U22 ( .A1(B[0]), .B1(A[0]), .ZN(n18) );
  IND2D1BWP12T30P140 U23 ( .A1(A[0]), .B1(B[0]), .ZN(n22) );
  AN3D0BWP12T30P140 U24 ( .A1(n14), .A2(n18), .A3(n22), .Z(A_equal) );
  MAOI222D0BWP12T30P140 U25 ( .A(n16), .B(A[2]), .C(n15), .ZN(n17) );
  OAI21D0BWP12T30P140 U26 ( .A1(n23), .A2(n18), .B(n17), .ZN(A_greater) );
  INVD0BWP12T30P140 U27 ( .I(A[2]), .ZN(n19) );
  MAOI222D0BWP12T30P140 U28 ( .A(n20), .B(B[2]), .C(n19), .ZN(n21) );
  OAI21D0BWP12T30P140 U29 ( .A1(n23), .A2(n22), .B(n21), .ZN(A_less) );
endmodule

