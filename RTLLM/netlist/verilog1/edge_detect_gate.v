/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:31:35 2026
/////////////////////////////////////////////////////////////


module edge_detect ( clk, rst_n, a, rise, down );
  input clk, rst_n, a;
  output rise, down;
  wire   a0, N7, N8;

  DFCNQD1BWP12T30P140 down_reg ( .D(N8), .CP(clk), .CDN(rst_n), .Q(down) );
  DFCNQD1BWP12T30P140 rise_reg ( .D(N7), .CP(clk), .CDN(rst_n), .Q(rise) );
  DFCNQD1BWP12T30P140 a0_reg ( .D(a), .CP(clk), .CDN(rst_n), .Q(a0) );
  INR2D1BWP12T30P140 U5 ( .A1(a0), .B1(a), .ZN(N8) );
  INR2D1BWP12T30P140 U6 ( .A1(a), .B1(a0), .ZN(N7) );
endmodule

