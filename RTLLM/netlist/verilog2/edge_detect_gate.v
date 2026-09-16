/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:55:25 2026
/////////////////////////////////////////////////////////////


module edge_detect ( clk, rst_n, a, rise, down );
  input clk, rst_n, a;
  output rise, down;
  wire   a_d, N1, N2;

  DFCNQD1BWP12T30P140 rise_reg ( .D(N1), .CP(clk), .CDN(rst_n), .Q(rise) );
  DFCNQD1BWP12T30P140 down_reg ( .D(N2), .CP(clk), .CDN(rst_n), .Q(down) );
  DFCNQD1BWP12T30P140 a_d_reg ( .D(a), .CP(clk), .CDN(rst_n), .Q(a_d) );
  INR2D1BWP12T30P140 U5 ( .A1(a), .B1(a_d), .ZN(N1) );
  INR2D1BWP12T30P140 U6 ( .A1(a_d), .B1(a), .ZN(N2) );
endmodule

