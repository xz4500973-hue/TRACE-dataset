/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:39:53 2026
/////////////////////////////////////////////////////////////


module comparator_3bit ( A, B, A_greater, A_equal, A_less );
  input [2:0] A;
  input [2:0] B;
  output A_greater, A_equal, A_less;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17;

  INVD0BWP12T30P140 U14 ( .I(B[2]), .ZN(n9) );
  NR2D0BWP12T30P140 U15 ( .A1(n9), .A2(A[2]), .ZN(n15) );
  INVD0BWP12T30P140 U16 ( .I(B[0]), .ZN(n11) );
  AN2D0BWP12T30P140 U17 ( .A1(A[0]), .A2(n11), .Z(n14) );
  INVD0BWP12T30P140 U18 ( .I(B[1]), .ZN(n10) );
  AOI22D0BWP12T30P140 U19 ( .A1(A[2]), .A2(n9), .B1(A[1]), .B2(n10), .ZN(n16)
         );
  OR2D0BWP12T30P140 U20 ( .A1(A[1]), .A2(n10), .Z(n13) );
  OAI211D0BWP12T30P140 U21 ( .A1(A[0]), .A2(n11), .B(n16), .C(n13), .ZN(n12)
         );
  NR3D0BWP12T30P140 U22 ( .A1(n15), .A2(n14), .A3(n12), .ZN(A_equal) );
  CKND2D1BWP12T30P140 U23 ( .A1(n14), .A2(n13), .ZN(n17) );
  AOI21D0BWP12T30P140 U24 ( .A1(n17), .A2(n16), .B(n15), .ZN(A_greater) );
  NR2D0BWP12T30P140 U25 ( .A1(A_equal), .A2(A_greater), .ZN(A_less) );
endmodule

