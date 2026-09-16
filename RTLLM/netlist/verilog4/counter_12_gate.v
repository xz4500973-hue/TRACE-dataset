/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:40:48 2026
/////////////////////////////////////////////////////////////


module counter_12 ( rst_n, clk, valid_count, out );
  output [3:0] out;
  input rst_n, clk, valid_count;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(out[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(out[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(out[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(out[2])
         );
  INVD0BWP12T30P140 U16 ( .I(out[0]), .ZN(n14) );
  INR2D1BWP12T30P140 U17 ( .A1(out[1]), .B1(n14), .ZN(n16) );
  AOI32D0BWP12T30P140 U18 ( .A1(n16), .A2(valid_count), .A3(out[2]), .B1(
        out[3]), .B2(valid_count), .ZN(n18) );
  OA221D0BWP12T30P140 U19 ( .A1(n16), .A2(out[2]), .B1(valid_count), .B2(
        out[2]), .C(n18), .Z(n10) );
  OA21D0BWP12T30P140 U20 ( .A1(n16), .A2(out[2]), .B(out[3]), .Z(n19) );
  INVD0BWP12T30P140 U21 ( .I(valid_count), .ZN(n17) );
  OAI32D0BWP12T30P140 U22 ( .A1(out[0]), .A2(n19), .A3(n17), .B1(valid_count), 
        .B2(n14), .ZN(n13) );
  AOI21D0BWP12T30P140 U23 ( .A1(valid_count), .A2(out[0]), .B(out[1]), .ZN(n15) );
  AOI221D0BWP12T30P140 U24 ( .A1(n16), .A2(valid_count), .B1(n19), .B2(
        valid_count), .C(n15), .ZN(n11) );
  MOAI22D0BWP12T30P140 U25 ( .A1(n19), .A2(n18), .B1(n17), .B2(out[3]), .ZN(
        n12) );
endmodule

