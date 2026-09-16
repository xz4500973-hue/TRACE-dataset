/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:13:30 2026
/////////////////////////////////////////////////////////////


module adder_8bit ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  FA1D0BWP12T30P140 U9 ( .A(b[7]), .B(a[7]), .CI(n8), .CO(cout), .S(sum[7]) );
  FA1D0BWP12T30P140 U10 ( .A(b[6]), .B(a[6]), .CI(n9), .CO(n8), .S(sum[6]) );
  FA1D0BWP12T30P140 U11 ( .A(b[5]), .B(a[5]), .CI(n10), .CO(n9), .S(sum[5]) );
  FA1D0BWP12T30P140 U12 ( .A(b[4]), .B(a[4]), .CI(n11), .CO(n10), .S(sum[4])
         );
  FA1D0BWP12T30P140 U13 ( .A(b[3]), .B(a[3]), .CI(n12), .CO(n11), .S(sum[3])
         );
  FA1D0BWP12T30P140 U14 ( .A(b[2]), .B(a[2]), .CI(n13), .CO(n12), .S(sum[2])
         );
  FA1D0BWP12T30P140 U15 ( .A(b[1]), .B(a[1]), .CI(n14), .CO(n13), .S(sum[1])
         );
  FA1D0BWP12T30P140 U16 ( .A(cin), .B(a[0]), .CI(b[0]), .CO(n14), .S(sum[0])
         );
endmodule

