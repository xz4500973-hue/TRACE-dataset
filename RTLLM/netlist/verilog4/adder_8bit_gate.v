/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:36:07 2026
/////////////////////////////////////////////////////////////


module adder_8bit ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n15, n16, n17, n18, n19, n20, n21;

  FA1D0BWP12T30P140 U9 ( .A(a[7]), .B(b[7]), .CI(n15), .CO(cout), .S(sum[7])
         );
  FA1D0BWP12T30P140 U10 ( .A(b[6]), .B(a[6]), .CI(n16), .CO(n15), .S(sum[6])
         );
  FA1D0BWP12T30P140 U11 ( .A(b[5]), .B(a[5]), .CI(n17), .CO(n16), .S(sum[5])
         );
  FA1D0BWP12T30P140 U12 ( .A(b[4]), .B(a[4]), .CI(n18), .CO(n17), .S(sum[4])
         );
  FA1D0BWP12T30P140 U13 ( .A(b[3]), .B(a[3]), .CI(n19), .CO(n18), .S(sum[3])
         );
  FA1D0BWP12T30P140 U14 ( .A(b[2]), .B(a[2]), .CI(n20), .CO(n19), .S(sum[2])
         );
  FA1D0BWP12T30P140 U15 ( .A(b[1]), .B(a[1]), .CI(n21), .CO(n20), .S(sum[1])
         );
  FA1D0BWP12T30P140 U16 ( .A(a[0]), .B(cin), .CI(b[0]), .CO(n21), .S(sum[0])
         );
endmodule

