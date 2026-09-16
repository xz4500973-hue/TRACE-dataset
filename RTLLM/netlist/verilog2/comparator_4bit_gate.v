/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:53:57 2026
/////////////////////////////////////////////////////////////


module comparator_4bit ( A, B, A_greater, A_equal, A_less );
  input [3:0] A;
  input [3:0] B;
  output A_greater, A_equal, A_less;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  INVD0BWP12T30P140 U19 ( .I(A[2]), .ZN(n17) );
  INVD0BWP12T30P140 U20 ( .I(A[1]), .ZN(n14) );
  INVD0BWP12T30P140 U21 ( .I(A[3]), .ZN(n16) );
  OAI222D0BWP12T30P140 U22 ( .A1(n17), .A2(B[2]), .B1(n14), .B2(B[1]), .C1(n16), .C2(B[3]), .ZN(n23) );
  INVD0BWP12T30P140 U23 ( .I(B[0]), .ZN(n19) );
  AN2D0BWP12T30P140 U24 ( .A1(A[0]), .A2(n19), .Z(n25) );
  CKND2D1BWP12T30P140 U25 ( .A1(B[1]), .A2(n14), .ZN(n24) );
  INVD0BWP12T30P140 U26 ( .I(n24), .ZN(n15) );
  AOI211D0BWP12T30P140 U27 ( .A1(B[3]), .A2(n16), .B(n25), .C(n15), .ZN(n18)
         );
  CKND2D1BWP12T30P140 U28 ( .A1(n17), .A2(B[2]), .ZN(n22) );
  OAI211D0BWP12T30P140 U29 ( .A1(A[0]), .A2(n19), .B(n18), .C(n22), .ZN(n20)
         );
  NR2D0BWP12T30P140 U30 ( .A1(n23), .A2(n20), .ZN(A_equal) );
  INVD0BWP12T30P140 U31 ( .I(B[3]), .ZN(n21) );
  MAOI222D0BWP12T30P140 U32 ( .A(n22), .B(A[3]), .C(n21), .ZN(n27) );
  AOI21D0BWP12T30P140 U33 ( .A1(n25), .A2(n24), .B(n23), .ZN(n26) );
  NR2D0BWP12T30P140 U34 ( .A1(n27), .A2(n26), .ZN(A_greater) );
  NR2D0BWP12T30P140 U35 ( .A1(A_equal), .A2(A_greater), .ZN(A_less) );
endmodule

