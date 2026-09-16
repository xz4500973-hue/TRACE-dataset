/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:49:44 2026
/////////////////////////////////////////////////////////////


module adder_8bit ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  FA1D0BWP12T30P140 U1 ( .A(b[7]), .B(a[7]), .CI(n1), .CO(cout), .S(sum[7]) );
  FA1D0BWP12T30P140 U2 ( .A(b[6]), .B(a[6]), .CI(n2), .CO(n1), .S(sum[6]) );
  FA1D0BWP12T30P140 U3 ( .A(b[5]), .B(a[5]), .CI(n3), .CO(n2), .S(sum[5]) );
  FA1D0BWP12T30P140 U4 ( .A(b[4]), .B(a[4]), .CI(n4), .CO(n3), .S(sum[4]) );
  FA1D0BWP12T30P140 U5 ( .A(b[3]), .B(a[3]), .CI(n5), .CO(n4), .S(sum[3]) );
  FA1D0BWP12T30P140 U6 ( .A(b[2]), .B(a[2]), .CI(n6), .CO(n5), .S(sum[2]) );
  FA1D0BWP12T30P140 U7 ( .A(b[1]), .B(a[1]), .CI(n7), .CO(n6), .S(sum[1]) );
  FA1D0BWP12T30P140 U8 ( .A(cin), .B(b[0]), .CI(a[0]), .CO(n7), .S(sum[0]) );
endmodule

