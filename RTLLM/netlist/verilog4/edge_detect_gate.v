/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:41:44 2026
/////////////////////////////////////////////////////////////


module edge_detect ( clk, rst_n, a, rise, down );
  input clk, rst_n, a;
  output rise, down;
  wire   a0, a_pos, a_neg;

  DFCNQD1BWP12T30P140 down_reg ( .D(a_neg), .CP(clk), .CDN(rst_n), .Q(down) );
  DFCNQD1BWP12T30P140 rise_reg ( .D(a_pos), .CP(clk), .CDN(rst_n), .Q(rise) );
  DFCNQD1BWP12T30P140 a0_reg ( .D(a), .CP(clk), .CDN(rst_n), .Q(a0) );
  INR2D1BWP12T30P140 U5 ( .A1(a), .B1(a0), .ZN(a_pos) );
  INR2D1BWP12T30P140 U6 ( .A1(a0), .B1(a), .ZN(a_neg) );
endmodule

