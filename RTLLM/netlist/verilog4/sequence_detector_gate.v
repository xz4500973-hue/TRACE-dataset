/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:53:29 2026
/////////////////////////////////////////////////////////////


module sequence_detector ( clk, rst_n, data_in, sequence_detected );
  input clk, rst_n, data_in;
  output sequence_detected;
  wire   N42, N43, N44, N45, N46, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22;
  wire   [3:0] curr;

  DFSNQD1BWP12T30P140 curr_reg_0_ ( .D(N42), .CP(clk), .SDN(rst_n), .Q(curr[0]) );
  DFCNQD1BWP12T30P140 curr_reg_4_ ( .D(N46), .CP(clk), .CDN(rst_n), .Q(
        sequence_detected) );
  DFCNQD1BWP12T30P140 curr_reg_2_ ( .D(N44), .CP(clk), .CDN(rst_n), .Q(curr[2]) );
  DFCNQD1BWP12T30P140 curr_reg_1_ ( .D(N43), .CP(clk), .CDN(rst_n), .Q(curr[1]) );
  DFCNQD1BWP12T30P140 curr_reg_3_ ( .D(N45), .CP(clk), .CDN(rst_n), .Q(curr[3]) );
  INVD0BWP12T30P140 U19 ( .I(curr[0]), .ZN(n16) );
  NR3D0BWP12T30P140 U20 ( .A1(sequence_detected), .A2(curr[1]), .A3(curr[3]), 
        .ZN(n12) );
  ND3D0BWP12T30P140 U21 ( .A1(n16), .A2(n12), .A3(curr[2]), .ZN(n17) );
  NR2D0BWP12T30P140 U22 ( .A1(data_in), .A2(n17), .ZN(N45) );
  OR2D0BWP12T30P140 U23 ( .A1(sequence_detected), .A2(curr[1]), .Z(n15) );
  INR4D0BWP12T30P140 U24 ( .A1(curr[3]), .B1(curr[2]), .B2(curr[0]), .B3(n15), 
        .ZN(n20) );
  AN2D0BWP12T30P140 U25 ( .A1(data_in), .A2(n20), .Z(N46) );
  NR2D0BWP12T30P140 U26 ( .A1(curr[0]), .A2(curr[2]), .ZN(n14) );
  AOI21D0BWP12T30P140 U27 ( .A1(curr[1]), .A2(sequence_detected), .B(curr[3]), 
        .ZN(n13) );
  OAI211D0BWP12T30P140 U28 ( .A1(curr[1]), .A2(sequence_detected), .B(n14), 
        .C(n13), .ZN(n18) );
  NR2D0BWP12T30P140 U29 ( .A1(data_in), .A2(n18), .ZN(N44) );
  NR4D0BWP12T30P140 U30 ( .A1(curr[2]), .A2(curr[3]), .A3(n16), .A4(n15), .ZN(
        n19) );
  NR2D0BWP12T30P140 U31 ( .A1(n20), .A2(n19), .ZN(n21) );
  IND3D1BWP12T30P140 U32 ( .A1(n19), .B1(n18), .B2(n17), .ZN(n22) );
  OAI22D0BWP12T30P140 U33 ( .A1(n21), .A2(data_in), .B1(n20), .B2(n22), .ZN(
        N42) );
  AN2D0BWP12T30P140 U34 ( .A1(data_in), .A2(n22), .Z(N43) );
endmodule

