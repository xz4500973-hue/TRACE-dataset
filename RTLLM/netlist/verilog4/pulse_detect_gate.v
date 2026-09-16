/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:50:37 2026
/////////////////////////////////////////////////////////////


module pulse_detect ( clk, rst_n, data_in, data_out );
  input clk, rst_n, data_in;
  output data_out;
  wire   N1;
  wire   [2:0] sr;

  DFSNQD1BWP12T30P140 sr_reg_0_ ( .D(data_in), .CP(clk), .SDN(rst_n), .Q(sr[0]) );
  DFSNQD1BWP12T30P140 sr_reg_1_ ( .D(sr[0]), .CP(clk), .SDN(rst_n), .Q(sr[1])
         );
  DFSNQD1BWP12T30P140 sr_reg_2_ ( .D(sr[1]), .CP(clk), .SDN(rst_n), .Q(sr[2])
         );
  DFCNQD1BWP12T30P140 data_out_reg ( .D(N1), .CP(clk), .CDN(rst_n), .Q(
        data_out) );
  INR3D1BWP12T30P140 U4 ( .A1(sr[1]), .B1(data_in), .B2(sr[2]), .ZN(N1) );
endmodule

