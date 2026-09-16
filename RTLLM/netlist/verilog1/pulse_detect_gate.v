/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:41:23 2026
/////////////////////////////////////////////////////////////


module pulse_detect ( clk, rst_n, data_in, data_out );
  input clk, rst_n, data_in;
  output data_out;
  wire   pulse_level2_1_, n2, n3;
  wire   [1:0] pulse_level1;

  DFCNQD1BWP12T30P140 pulse_level1_reg_1_ ( .D(pulse_level2_1_), .CP(clk), 
        .CDN(rst_n), .Q(pulse_level1[1]) );
  DFCNQD1BWP12T30P140 pulse_level1_reg_0_ ( .D(n2), .CP(clk), .CDN(rst_n), .Q(
        pulse_level1[0]) );
  INR3D1BWP12T30P140 U7 ( .A1(pulse_level1[1]), .B1(data_in), .B2(
        pulse_level1[0]), .ZN(n3) );
  AO21D0BWP12T30P140 U8 ( .A1(pulse_level1[0]), .A2(data_in), .B(n3), .Z(
        pulse_level2_1_) );
  INVD0BWP12T30P140 U9 ( .I(data_in), .ZN(n2) );
  AN2D0BWP12T30P140 U10 ( .A1(n3), .A2(rst_n), .Z(data_out) );
endmodule

