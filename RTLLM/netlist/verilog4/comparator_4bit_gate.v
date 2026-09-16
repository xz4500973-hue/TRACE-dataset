/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:40:20 2026
/////////////////////////////////////////////////////////////


module comparator_4bit ( A, B, A_greater, A_equal, A_less );
  input [3:0] A;
  input [3:0] B;
  output A_greater, A_equal, A_less;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  INVD0BWP12T30P140 U18 ( .I(A[2]), .ZN(n15) );
  OR2D0BWP12T30P140 U19 ( .A1(B[2]), .A2(n15), .Z(n24) );
  INVD0BWP12T30P140 U20 ( .I(A[0]), .ZN(n17) );
  NR2D0BWP12T30P140 U21 ( .A1(n17), .A2(B[0]), .ZN(n21) );
  INVD0BWP12T30P140 U22 ( .I(B[3]), .ZN(n22) );
  AOI22D0BWP12T30P140 U23 ( .A1(B[2]), .A2(n15), .B1(A[3]), .B2(n22), .ZN(n16)
         );
  OAI21D0BWP12T30P140 U24 ( .A1(A[3]), .A2(n22), .B(n16), .ZN(n23) );
  INVD0BWP12T30P140 U25 ( .I(B[1]), .ZN(n20) );
  AOI22D0BWP12T30P140 U26 ( .A1(A[1]), .A2(n20), .B1(B[0]), .B2(n17), .ZN(n18)
         );
  OAI21D0BWP12T30P140 U27 ( .A1(n20), .A2(A[1]), .B(n18), .ZN(n19) );
  INR4D0BWP12T30P140 U28 ( .A1(n24), .B1(n21), .B2(n23), .B3(n19), .ZN(A_equal) );
  MAOI222D0BWP12T30P140 U29 ( .A(n21), .B(A[1]), .C(n20), .ZN(n26) );
  CKND2D1BWP12T30P140 U30 ( .A1(n22), .A2(A[3]), .ZN(n25) );
  AOI32D0BWP12T30P140 U31 ( .A1(n26), .A2(n25), .A3(n24), .B1(n23), .B2(n25), 
        .ZN(A_greater) );
  NR2D0BWP12T30P140 U32 ( .A1(A_equal), .A2(A_greater), .ZN(A_less) );
endmodule

