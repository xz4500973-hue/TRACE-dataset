/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:19:06 2026
/////////////////////////////////////////////////////////////


module edge_detect ( clk, rst_n, a, rise, down );
  input clk, rst_n, a;
  output rise, down;
  wire   a_d;

  DFCNQD1BWP12T30P140 u_dff_q_reg ( .D(a), .CP(clk), .CDN(rst_n), .Q(a_d) );
  INR2D1BWP12T30P140 U3 ( .A1(a), .B1(a_d), .ZN(rise) );
  INR2D1BWP12T30P140 U4 ( .A1(a_d), .B1(a), .ZN(down) );
endmodule

