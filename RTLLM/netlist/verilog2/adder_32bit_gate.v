/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:49:18 2026
/////////////////////////////////////////////////////////////


module adder_32bit ( A, B, S, C32 );
  input [32:1] A;
  input [32:1] B;
  output [32:1] S;
  output C32;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  AN2D0BWP12T30P140 U2 ( .A1(B[1]), .A2(A[1]), .Z(n32) );
  FA1D0BWP12T30P140 U3 ( .A(A[32]), .B(B[32]), .CI(n2), .CO(C32), .S(S[32]) );
  FA1D0BWP12T30P140 U4 ( .A(A[31]), .B(B[31]), .CI(n3), .CO(n2), .S(S[31]) );
  FA1D0BWP12T30P140 U5 ( .A(A[30]), .B(B[30]), .CI(n4), .CO(n3), .S(S[30]) );
  FA1D0BWP12T30P140 U6 ( .A(A[29]), .B(B[29]), .CI(n5), .CO(n4), .S(S[29]) );
  FA1D0BWP12T30P140 U7 ( .A(A[28]), .B(B[28]), .CI(n6), .CO(n5), .S(S[28]) );
  FA1D0BWP12T30P140 U8 ( .A(A[27]), .B(B[27]), .CI(n7), .CO(n6), .S(S[27]) );
  FA1D0BWP12T30P140 U9 ( .A(A[26]), .B(B[26]), .CI(n8), .CO(n7), .S(S[26]) );
  FA1D0BWP12T30P140 U10 ( .A(A[25]), .B(B[25]), .CI(n9), .CO(n8), .S(S[25]) );
  FA1D0BWP12T30P140 U11 ( .A(A[24]), .B(B[24]), .CI(n10), .CO(n9), .S(S[24])
         );
  FA1D0BWP12T30P140 U12 ( .A(A[23]), .B(B[23]), .CI(n11), .CO(n10), .S(S[23])
         );
  FA1D0BWP12T30P140 U13 ( .A(A[22]), .B(B[22]), .CI(n12), .CO(n11), .S(S[22])
         );
  FA1D0BWP12T30P140 U14 ( .A(A[21]), .B(B[21]), .CI(n13), .CO(n12), .S(S[21])
         );
  FA1D0BWP12T30P140 U15 ( .A(A[20]), .B(B[20]), .CI(n14), .CO(n13), .S(S[20])
         );
  FA1D0BWP12T30P140 U16 ( .A(A[19]), .B(B[19]), .CI(n15), .CO(n14), .S(S[19])
         );
  FA1D0BWP12T30P140 U17 ( .A(A[18]), .B(B[18]), .CI(n16), .CO(n15), .S(S[18])
         );
  FA1D0BWP12T30P140 U18 ( .A(A[17]), .B(B[17]), .CI(n17), .CO(n16), .S(S[17])
         );
  FA1D0BWP12T30P140 U19 ( .A(A[16]), .B(B[16]), .CI(n18), .CO(n17), .S(S[16])
         );
  FA1D0BWP12T30P140 U20 ( .A(A[15]), .B(B[15]), .CI(n19), .CO(n18), .S(S[15])
         );
  FA1D0BWP12T30P140 U21 ( .A(A[14]), .B(B[14]), .CI(n20), .CO(n19), .S(S[14])
         );
  FA1D0BWP12T30P140 U22 ( .A(A[13]), .B(B[13]), .CI(n21), .CO(n20), .S(S[13])
         );
  FA1D0BWP12T30P140 U23 ( .A(A[12]), .B(B[12]), .CI(n22), .CO(n21), .S(S[12])
         );
  FA1D0BWP12T30P140 U24 ( .A(A[11]), .B(B[11]), .CI(n23), .CO(n22), .S(S[11])
         );
  FA1D0BWP12T30P140 U25 ( .A(A[10]), .B(B[10]), .CI(n24), .CO(n23), .S(S[10])
         );
  FA1D0BWP12T30P140 U26 ( .A(A[9]), .B(B[9]), .CI(n25), .CO(n24), .S(S[9]) );
  FA1D0BWP12T30P140 U27 ( .A(A[8]), .B(B[8]), .CI(n26), .CO(n25), .S(S[8]) );
  FA1D0BWP12T30P140 U28 ( .A(A[7]), .B(B[7]), .CI(n27), .CO(n26), .S(S[7]) );
  FA1D0BWP12T30P140 U29 ( .A(A[6]), .B(B[6]), .CI(n28), .CO(n27), .S(S[6]) );
  FA1D0BWP12T30P140 U30 ( .A(A[5]), .B(B[5]), .CI(n29), .CO(n28), .S(S[5]) );
  FA1D0BWP12T30P140 U31 ( .A(A[4]), .B(B[4]), .CI(n30), .CO(n29), .S(S[4]) );
  FA1D0BWP12T30P140 U32 ( .A(A[3]), .B(B[3]), .CI(n31), .CO(n30), .S(S[3]) );
  FA1D0BWP12T30P140 U33 ( .A(A[2]), .B(B[2]), .CI(n32), .CO(n31), .S(S[2]) );
  IAO21D0BWP12T30P140 U34 ( .A1(B[1]), .A2(A[1]), .B(n32), .ZN(S[1]) );
endmodule

