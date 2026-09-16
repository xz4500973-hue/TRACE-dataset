/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:30:09 2026
/////////////////////////////////////////////////////////////


module comparator_4bit ( A, B, A_greater, A_equal, A_less );
  input [3:0] A;
  input [3:0] B;
  output A_greater, A_equal, A_less;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;

  INVD0BWP12T30P140 U12 ( .I(B[2]), .ZN(n12) );
  INVD0BWP12T30P140 U13 ( .I(B[1]), .ZN(n11) );
  OAI22D0BWP12T30P140 U14 ( .A1(n12), .A2(A[2]), .B1(n11), .B2(A[1]), .ZN(n10)
         );
  AOI221D0BWP12T30P140 U15 ( .A1(n12), .A2(A[2]), .B1(A[1]), .B2(n11), .C(n10), 
        .ZN(n17) );
  INVD0BWP12T30P140 U16 ( .I(A[0]), .ZN(n15) );
  INVD0BWP12T30P140 U17 ( .I(B[3]), .ZN(n14) );
  OAI22D0BWP12T30P140 U18 ( .A1(n15), .A2(B[0]), .B1(n14), .B2(A[3]), .ZN(n13)
         );
  AOI221D0BWP12T30P140 U19 ( .A1(n15), .A2(B[0]), .B1(A[3]), .B2(n14), .C(n13), 
        .ZN(n16) );
  CKND2D1BWP12T30P140 U20 ( .A1(n17), .A2(n16), .ZN(A_greater) );
  INVD0BWP12T30P140 U21 ( .I(A_greater), .ZN(A_equal) );
endmodule

