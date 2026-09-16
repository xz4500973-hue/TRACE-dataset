/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:13:16 2026
/////////////////////////////////////////////////////////////


module pulse_detect ( clk, rst_n, data_in, data_out );
  input clk, rst_n, data_in;
  output data_out;
  wire   n1;
  wire   [2:0] shift;

  DFSNQD1BWP12T30P140 shift_reg_0_ ( .D(data_in), .CP(clk), .SDN(rst_n), .Q(
        shift[0]) );
  DFSNQD1BWP12T30P140 shift_reg_2_ ( .D(shift[1]), .CP(clk), .SDN(rst_n), .Q(
        shift[2]) );
  DFCNQD1BWP12T30P140 data_out_reg ( .D(n1), .CP(clk), .CDN(rst_n), .Q(
        data_out) );
  DFCNQD1BWP12T30P140 shift_reg_1_ ( .D(shift[0]), .CP(clk), .CDN(rst_n), .Q(
        shift[1]) );
  INR3D1BWP12T30P140 U4 ( .A1(shift[1]), .B1(shift[2]), .B2(shift[0]), .ZN(n1)
         );
endmodule

