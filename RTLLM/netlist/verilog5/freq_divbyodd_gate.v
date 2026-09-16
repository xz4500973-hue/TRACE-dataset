/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:06:54 2026
/////////////////////////////////////////////////////////////


module freq_divbyodd ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   sr_1, sr_0;
  wire   [4:3] sr;

  DFSNQD1BWP12T30P140 sr_reg_0_ ( .D(sr[4]), .CP(clk), .SDN(rst_n), .Q(sr_0)
         );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(sr[3]), .CP(clk), .CDN(rst_n), .Q(sr[4])
         );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(sr_0), .CP(clk), .CDN(rst_n), .Q(sr_1) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(sr_1), .CP(clk), .CDN(rst_n), .Q(clk_div)
         );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(clk_div), .CP(clk), .CDN(rst_n), .Q(sr[3]) );
endmodule

