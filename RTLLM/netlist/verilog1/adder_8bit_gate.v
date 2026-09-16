/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:25:53 2026
/////////////////////////////////////////////////////////////


module adder_8bit ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;


  TIELBWP12T30P140 U10 ( .ZN(cout) );
  CKXOR2D0BWP12T30P140 U11 ( .A1(b[6]), .A2(a[6]), .Z(sum[6]) );
  CKXOR2D0BWP12T30P140 U12 ( .A1(b[5]), .A2(a[5]), .Z(sum[5]) );
  CKXOR2D0BWP12T30P140 U13 ( .A1(b[4]), .A2(a[4]), .Z(sum[4]) );
  CKXOR2D0BWP12T30P140 U14 ( .A1(b[3]), .A2(a[3]), .Z(sum[3]) );
  CKXOR2D0BWP12T30P140 U15 ( .A1(b[7]), .A2(a[7]), .Z(sum[7]) );
  CKXOR2D0BWP12T30P140 U16 ( .A1(b[2]), .A2(a[2]), .Z(sum[2]) );
  CKXOR2D0BWP12T30P140 U17 ( .A1(b[1]), .A2(a[1]), .Z(sum[1]) );
  XOR3D0BWP12T30P140 U18 ( .A1(a[0]), .A2(cin), .A3(b[0]), .Z(sum[0]) );
endmodule

