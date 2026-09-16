/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:05:57 2026
/////////////////////////////////////////////////////////////


module freq_divbyeven ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;

  wire   [1:0] shift_reg;

  DFSNQD1BWP12T30P140 shift_reg_reg_0_ ( .D(clk_div), .CP(clk), .SDN(rst_n), 
        .Q(shift_reg[0]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(shift_reg[1]), .CP(clk), .CDN(
        rst_n), .Q(clk_div) );
  DFCNQD1BWP12T30P140 shift_reg_reg_1_ ( .D(shift_reg[0]), .CP(clk), .CDN(
        rst_n), .Q(shift_reg[1]) );
endmodule

