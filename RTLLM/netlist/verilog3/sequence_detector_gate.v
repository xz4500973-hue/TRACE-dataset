/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:31:12 2026
/////////////////////////////////////////////////////////////


module sequence_detector ( clk, rst_n, data_in, sequence_detected );
  input clk, rst_n, data_in;
  output sequence_detected;
  wire   n3;
  wire   [3:0] sr;

  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(sr[2]), .CP(clk), .CDN(rst_n), .Q(sr[3])
         );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(sr[1]), .CP(clk), .CDN(rst_n), .Q(sr[2])
         );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(sr[0]), .CP(clk), .CDN(rst_n), .Q(sr[1])
         );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(data_in), .CP(clk), .CDN(rst_n), .Q(sr[0]) );
  INVD0BWP12T30P140 U5 ( .I(sr[1]), .ZN(n3) );
  AN4D0BWP12T30P140 U6 ( .A1(n3), .A2(sr[2]), .A3(sr[3]), .A4(sr[0]), .Z(
        sequence_detected) );
endmodule

