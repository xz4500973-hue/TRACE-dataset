/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:04:28 2026
/////////////////////////////////////////////////////////////


module edge_detect ( clk, rst_n, a, rise, down );
  input clk, rst_n, a;
  output rise, down;
  wire   prev, N1, N2;

  DFCNQD1BWP12T30P140 rise_reg ( .D(N1), .CP(clk), .CDN(rst_n), .Q(rise) );
  DFCNQD1BWP12T30P140 down_reg ( .D(N2), .CP(clk), .CDN(rst_n), .Q(down) );
  DFCNQD1BWP12T30P140 prev_reg ( .D(a), .CP(clk), .CDN(rst_n), .Q(prev) );
  INR2D1BWP12T30P140 U5 ( .A1(a), .B1(prev), .ZN(N1) );
  INR2D1BWP12T30P140 U6 ( .A1(prev), .B1(a), .ZN(N2) );
endmodule

