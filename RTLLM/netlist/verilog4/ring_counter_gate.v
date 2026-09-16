/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:52:33 2026
/////////////////////////////////////////////////////////////


module ring_counter ( clk, reset, out );
  output [7:0] out;
  input clk, reset;
  wire   n1;

  DFSNQD1BWP12T30P140 ff_reg_0_ ( .D(out[7]), .CP(clk), .SDN(n1), .Q(out[0])
         );
  DFCNQD1BWP12T30P140 ff_reg_7_ ( .D(out[6]), .CP(clk), .CDN(n1), .Q(out[7])
         );
  DFCNQD1BWP12T30P140 ff_reg_1_ ( .D(out[0]), .CP(clk), .CDN(n1), .Q(out[1])
         );
  DFCNQD1BWP12T30P140 ff_reg_2_ ( .D(out[1]), .CP(clk), .CDN(n1), .Q(out[2])
         );
  DFCNQD1BWP12T30P140 ff_reg_3_ ( .D(out[2]), .CP(clk), .CDN(n1), .Q(out[3])
         );
  DFCNQD1BWP12T30P140 ff_reg_4_ ( .D(out[3]), .CP(clk), .CDN(n1), .Q(out[4])
         );
  DFCNQD1BWP12T30P140 ff_reg_5_ ( .D(out[4]), .CP(clk), .CDN(n1), .Q(out[5])
         );
  DFCNQD1BWP12T30P140 ff_reg_6_ ( .D(out[5]), .CP(clk), .CDN(n1), .Q(out[6])
         );
  INVD0BWP12T30P140 U3 ( .I(reset), .ZN(n1) );
endmodule

