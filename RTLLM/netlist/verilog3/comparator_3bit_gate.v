/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:17:13 2026
/////////////////////////////////////////////////////////////


module comparator_3bit ( A, B, A_greater, A_equal, A_less );
  input [2:0] A;
  input [2:0] B;
  output A_greater, A_equal, A_less;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  INVD0BWP12T30P140 U12 ( .I(A[2]), .ZN(n16) );
  INR2D1BWP12T30P140 U13 ( .A1(A[0]), .B1(B[0]), .ZN(n14) );
  INVD0BWP12T30P140 U14 ( .I(B[1]), .ZN(n13) );
  INVD0BWP12T30P140 U15 ( .I(B[0]), .ZN(n9) );
  OAI22D0BWP12T30P140 U16 ( .A1(A[1]), .A2(n13), .B1(n9), .B2(A[0]), .ZN(n10)
         );
  AOI21D0BWP12T30P140 U17 ( .A1(A[1]), .A2(n13), .B(n10), .ZN(n11) );
  OAI21D0BWP12T30P140 U18 ( .A1(n16), .A2(B[2]), .B(n11), .ZN(n12) );
  AOI211D0BWP12T30P140 U19 ( .A1(n16), .A2(B[2]), .B(n14), .C(n12), .ZN(
        A_equal) );
  MAOI222D0BWP12T30P140 U20 ( .A(n14), .B(A[1]), .C(n13), .ZN(n15) );
  MAOI222D0BWP12T30P140 U21 ( .A(B[2]), .B(n16), .C(n15), .ZN(A_greater) );
  NR2D0BWP12T30P140 U22 ( .A1(A_equal), .A2(A_greater), .ZN(A_less) );
endmodule

