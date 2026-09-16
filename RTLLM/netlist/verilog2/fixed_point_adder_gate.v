/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:55:51 2026
/////////////////////////////////////////////////////////////


module fixed_point_adder ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [31:0] c;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  AN2D0BWP12T30P140 U2 ( .A1(b[0]), .A2(a[0]), .Z(n29) );
  FA1D0BWP12T30P140 U3 ( .A(a[28]), .B(b[28]), .CI(n2), .CO(n30), .S(c[28]) );
  FA1D0BWP12T30P140 U4 ( .A(a[27]), .B(b[27]), .CI(n3), .CO(n2), .S(c[27]) );
  FA1D0BWP12T30P140 U5 ( .A(a[26]), .B(b[26]), .CI(n4), .CO(n3), .S(c[26]) );
  FA1D0BWP12T30P140 U6 ( .A(a[25]), .B(b[25]), .CI(n5), .CO(n4), .S(c[25]) );
  FA1D0BWP12T30P140 U7 ( .A(a[24]), .B(b[24]), .CI(n6), .CO(n5), .S(c[24]) );
  FA1D0BWP12T30P140 U8 ( .A(a[23]), .B(b[23]), .CI(n7), .CO(n6), .S(c[23]) );
  FA1D0BWP12T30P140 U9 ( .A(a[22]), .B(b[22]), .CI(n8), .CO(n7), .S(c[22]) );
  FA1D0BWP12T30P140 U10 ( .A(a[21]), .B(b[21]), .CI(n9), .CO(n8), .S(c[21]) );
  FA1D0BWP12T30P140 U11 ( .A(a[20]), .B(b[20]), .CI(n10), .CO(n9), .S(c[20])
         );
  FA1D0BWP12T30P140 U12 ( .A(a[19]), .B(b[19]), .CI(n11), .CO(n10), .S(c[19])
         );
  FA1D0BWP12T30P140 U13 ( .A(a[18]), .B(b[18]), .CI(n12), .CO(n11), .S(c[18])
         );
  FA1D0BWP12T30P140 U14 ( .A(a[17]), .B(b[17]), .CI(n13), .CO(n12), .S(c[17])
         );
  FA1D0BWP12T30P140 U15 ( .A(a[16]), .B(b[16]), .CI(n14), .CO(n13), .S(c[16])
         );
  FA1D0BWP12T30P140 U16 ( .A(a[15]), .B(b[15]), .CI(n15), .CO(n14), .S(c[15])
         );
  FA1D0BWP12T30P140 U17 ( .A(a[14]), .B(b[14]), .CI(n16), .CO(n15), .S(c[14])
         );
  FA1D0BWP12T30P140 U18 ( .A(a[13]), .B(b[13]), .CI(n17), .CO(n16), .S(c[13])
         );
  FA1D0BWP12T30P140 U19 ( .A(a[12]), .B(b[12]), .CI(n18), .CO(n17), .S(c[12])
         );
  FA1D0BWP12T30P140 U20 ( .A(a[11]), .B(b[11]), .CI(n19), .CO(n18), .S(c[11])
         );
  FA1D0BWP12T30P140 U21 ( .A(a[10]), .B(b[10]), .CI(n20), .CO(n19), .S(c[10])
         );
  FA1D0BWP12T30P140 U22 ( .A(a[9]), .B(b[9]), .CI(n21), .CO(n20), .S(c[9]) );
  FA1D0BWP12T30P140 U23 ( .A(a[8]), .B(b[8]), .CI(n22), .CO(n21), .S(c[8]) );
  FA1D0BWP12T30P140 U24 ( .A(a[7]), .B(b[7]), .CI(n23), .CO(n22), .S(c[7]) );
  FA1D0BWP12T30P140 U25 ( .A(a[6]), .B(b[6]), .CI(n24), .CO(n23), .S(c[6]) );
  FA1D0BWP12T30P140 U26 ( .A(a[5]), .B(b[5]), .CI(n25), .CO(n24), .S(c[5]) );
  FA1D0BWP12T30P140 U27 ( .A(a[4]), .B(b[4]), .CI(n26), .CO(n25), .S(c[4]) );
  FA1D0BWP12T30P140 U28 ( .A(a[3]), .B(b[3]), .CI(n27), .CO(n26), .S(c[3]) );
  FA1D0BWP12T30P140 U29 ( .A(a[2]), .B(b[2]), .CI(n28), .CO(n27), .S(c[2]) );
  FA1D0BWP12T30P140 U30 ( .A(a[1]), .B(b[1]), .CI(n29), .CO(n28), .S(c[1]) );
  IAO21D0BWP12T30P140 U31 ( .A1(b[0]), .A2(a[0]), .B(n29), .ZN(c[0]) );
  FA1D0BWP12T30P140 U32 ( .A(a[29]), .B(b[29]), .CI(n30), .CO(n31), .S(c[29])
         );
  FA1D0BWP12T30P140 U33 ( .A(a[30]), .B(b[30]), .CI(n31), .CO(n32), .S(c[30])
         );
  XOR3D0BWP12T30P140 U34 ( .A1(n32), .A2(b[31]), .A3(a[31]), .Z(c[31]) );
endmodule

