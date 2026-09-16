/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:13:29 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   ring_3, ring_2, ring_1, ring_0;
  wire   [8:5] ring;

  DFSNQD1BWP12T30P140 ring_reg_0_ ( .D(ring[8]), .CP(clk), .SDN(rst_n), .Q(
        ring_0) );
  DFCNQD1BWP12T30P140 ring_reg_8_ ( .D(ring[7]), .CP(clk), .CDN(rst_n), .Q(
        ring[8]) );
  DFCNQD1BWP12T30P140 ring_reg_4_ ( .D(ring_3), .CP(clk), .CDN(rst_n), .Q(
        lights[1]) );
  DFCNQD1BWP12T30P140 ring_reg_3_ ( .D(ring_2), .CP(clk), .CDN(rst_n), .Q(
        ring_3) );
  DFCNQD1BWP12T30P140 ring_reg_2_ ( .D(ring_1), .CP(clk), .CDN(rst_n), .Q(
        ring_2) );
  DFCNQD1BWP12T30P140 ring_reg_7_ ( .D(ring[6]), .CP(clk), .CDN(rst_n), .Q(
        ring[7]) );
  DFCNQD1BWP12T30P140 ring_reg_1_ ( .D(ring_0), .CP(clk), .CDN(rst_n), .Q(
        ring_1) );
  DFCNQD1BWP12T30P140 ring_reg_6_ ( .D(ring[5]), .CP(clk), .CDN(rst_n), .Q(
        ring[6]) );
  DFCNQD1BWP12T30P140 ring_reg_5_ ( .D(lights[1]), .CP(clk), .CDN(rst_n), .Q(
        ring[5]) );
  OR4D0BWP12T30P140 U5 ( .A1(ring_0), .A2(ring_1), .A3(ring_2), .A4(ring_3), 
        .Z(lights[0]) );
  OR4D0BWP12T30P140 U6 ( .A1(ring[5]), .A2(ring[6]), .A3(ring[7]), .A4(ring[8]), .Z(lights[2]) );
endmodule

