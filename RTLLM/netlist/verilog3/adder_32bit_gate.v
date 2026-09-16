/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:13:03 2026
/////////////////////////////////////////////////////////////


module adder_32bit ( A, B, S, C32 );
  input [32:1] A;
  input [32:1] B;
  output [32:1] S;
  output C32;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;

  AN2D0BWP12T30P140 U35 ( .A1(B[1]), .A2(A[1]), .Z(n62) );
  FA1D0BWP12T30P140 U36 ( .A(B[32]), .B(A[32]), .CI(n32), .CO(C32), .S(S[32])
         );
  FA1D0BWP12T30P140 U37 ( .A(B[31]), .B(A[31]), .CI(n33), .CO(n32), .S(S[31])
         );
  FA1D0BWP12T30P140 U38 ( .A(B[30]), .B(A[30]), .CI(n34), .CO(n33), .S(S[30])
         );
  FA1D0BWP12T30P140 U39 ( .A(B[29]), .B(A[29]), .CI(n35), .CO(n34), .S(S[29])
         );
  FA1D0BWP12T30P140 U40 ( .A(B[28]), .B(A[28]), .CI(n36), .CO(n35), .S(S[28])
         );
  FA1D0BWP12T30P140 U41 ( .A(B[27]), .B(A[27]), .CI(n37), .CO(n36), .S(S[27])
         );
  FA1D0BWP12T30P140 U42 ( .A(B[26]), .B(A[26]), .CI(n38), .CO(n37), .S(S[26])
         );
  FA1D0BWP12T30P140 U43 ( .A(B[25]), .B(A[25]), .CI(n39), .CO(n38), .S(S[25])
         );
  FA1D0BWP12T30P140 U44 ( .A(B[24]), .B(A[24]), .CI(n40), .CO(n39), .S(S[24])
         );
  FA1D0BWP12T30P140 U45 ( .A(B[23]), .B(A[23]), .CI(n41), .CO(n40), .S(S[23])
         );
  FA1D0BWP12T30P140 U46 ( .A(B[22]), .B(A[22]), .CI(n42), .CO(n41), .S(S[22])
         );
  FA1D0BWP12T30P140 U47 ( .A(B[21]), .B(A[21]), .CI(n43), .CO(n42), .S(S[21])
         );
  FA1D0BWP12T30P140 U48 ( .A(B[20]), .B(A[20]), .CI(n44), .CO(n43), .S(S[20])
         );
  FA1D0BWP12T30P140 U49 ( .A(B[19]), .B(A[19]), .CI(n45), .CO(n44), .S(S[19])
         );
  FA1D0BWP12T30P140 U50 ( .A(B[18]), .B(A[18]), .CI(n46), .CO(n45), .S(S[18])
         );
  FA1D0BWP12T30P140 U51 ( .A(B[17]), .B(A[17]), .CI(n47), .CO(n46), .S(S[17])
         );
  FA1D0BWP12T30P140 U52 ( .A(B[16]), .B(A[16]), .CI(n48), .CO(n47), .S(S[16])
         );
  FA1D0BWP12T30P140 U53 ( .A(B[15]), .B(A[15]), .CI(n49), .CO(n48), .S(S[15])
         );
  FA1D0BWP12T30P140 U54 ( .A(B[14]), .B(A[14]), .CI(n50), .CO(n49), .S(S[14])
         );
  FA1D0BWP12T30P140 U55 ( .A(B[13]), .B(A[13]), .CI(n51), .CO(n50), .S(S[13])
         );
  FA1D0BWP12T30P140 U56 ( .A(B[12]), .B(A[12]), .CI(n52), .CO(n51), .S(S[12])
         );
  FA1D0BWP12T30P140 U57 ( .A(B[11]), .B(A[11]), .CI(n53), .CO(n52), .S(S[11])
         );
  FA1D0BWP12T30P140 U58 ( .A(B[10]), .B(A[10]), .CI(n54), .CO(n53), .S(S[10])
         );
  FA1D0BWP12T30P140 U59 ( .A(B[9]), .B(A[9]), .CI(n55), .CO(n54), .S(S[9]) );
  FA1D0BWP12T30P140 U60 ( .A(B[8]), .B(A[8]), .CI(n56), .CO(n55), .S(S[8]) );
  FA1D0BWP12T30P140 U61 ( .A(B[7]), .B(A[7]), .CI(n57), .CO(n56), .S(S[7]) );
  FA1D0BWP12T30P140 U62 ( .A(B[6]), .B(A[6]), .CI(n58), .CO(n57), .S(S[6]) );
  FA1D0BWP12T30P140 U63 ( .A(B[5]), .B(A[5]), .CI(n59), .CO(n58), .S(S[5]) );
  FA1D0BWP12T30P140 U64 ( .A(B[4]), .B(A[4]), .CI(n60), .CO(n59), .S(S[4]) );
  FA1D0BWP12T30P140 U65 ( .A(B[3]), .B(A[3]), .CI(n61), .CO(n60), .S(S[3]) );
  FA1D0BWP12T30P140 U66 ( .A(B[2]), .B(A[2]), .CI(n62), .CO(n61), .S(S[2]) );
  IAO21D0BWP12T30P140 U67 ( .A1(B[1]), .A2(A[1]), .B(n62), .ZN(S[1]) );
endmodule

