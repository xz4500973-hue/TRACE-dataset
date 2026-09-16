/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:17:39 2026
/////////////////////////////////////////////////////////////


module comparator_4bit ( A, B, A_greater, A_equal, A_less );
  input [3:0] A;
  input [3:0] B;
  output A_greater, A_equal, A_less;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  AOI32D0BWP12T30P140 U14 ( .A1(n22), .A2(n21), .A3(n20), .B1(n19), .B2(n21), 
        .ZN(n23) );
  ND2D0BWP12T30P140 U15 ( .A1(n24), .A2(n23), .ZN(A_less) );
  ND2D0BWP12T30P140 U16 ( .A1(n16), .A2(B[0]), .ZN(n18) );
  IND2D1BWP12T30P140 U17 ( .A1(B[2]), .B1(A[2]), .ZN(n22) );
  INR2D1BWP12T30P140 U18 ( .A1(B[2]), .B1(A[2]), .ZN(n19) );
  IND2D1BWP12T30P140 U19 ( .A1(A[3]), .B1(B[3]), .ZN(n24) );
  IND2D1BWP12T30P140 U20 ( .A1(B[3]), .B1(A[3]), .ZN(n21) );
  INVD0BWP12T30P140 U21 ( .I(A[0]), .ZN(n16) );
  INVD0BWP12T30P140 U22 ( .I(B[1]), .ZN(n17) );
  OAI22D0BWP12T30P140 U23 ( .A1(n16), .A2(B[0]), .B1(n17), .B2(A[1]), .ZN(n13)
         );
  AOI221D0BWP12T30P140 U24 ( .A1(n16), .A2(B[0]), .B1(A[1]), .B2(n17), .C(n13), 
        .ZN(n14) );
  ND3D0BWP12T30P140 U25 ( .A1(n24), .A2(n21), .A3(n14), .ZN(n15) );
  INR3D1BWP12T30P140 U26 ( .A1(n22), .B1(n19), .B2(n15), .ZN(A_equal) );
  MAOI222D0BWP12T30P140 U27 ( .A(A[1]), .B(n18), .C(n17), .ZN(n20) );
  NR2D0BWP12T30P140 U28 ( .A1(A_equal), .A2(A_less), .ZN(A_greater) );
endmodule

