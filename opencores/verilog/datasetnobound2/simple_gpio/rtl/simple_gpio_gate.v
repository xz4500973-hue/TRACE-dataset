/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:10:39 2026
/////////////////////////////////////////////////////////////


module simple_gpio ( clk_i, rst_i, cyc_i, stb_i, adr_i, we_i, dat_i, dat_o, 
        ack_o, gpio );
  input [7:0] dat_i;
  output [7:0] dat_o;
  inout [8:1] gpio;
  input clk_i, rst_i, cyc_i, stb_i, adr_i, we_i;
  output ack_o;
  wire   N17, N18, N19, N20, N21, N22, N23, N24, N25, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n54, n55, n56,
         n57, n58, n59, n60;
  wire   [8:1] ctrl;
  wire   [8:1] line;
  wire   [8:1] llgpio;
  wire   [8:1] lgpio;

  DFQD2BWP12T30P140 dat_o_reg_7_ ( .D(N24), .CP(clk_i), .Q(dat_o[7]) );
  DFQD2BWP12T30P140 dat_o_reg_6_ ( .D(N23), .CP(clk_i), .Q(dat_o[6]) );
  BUFTD4BWP12T30P140 igpio_tri_1_ ( .I(line[1]), .OE(ctrl[1]), .Z(gpio[1]) );
  BUFTD4BWP12T30P140 igpio_tri_2_ ( .I(line[2]), .OE(ctrl[2]), .Z(gpio[2]) );
  BUFTD4BWP12T30P140 igpio_tri_3_ ( .I(line[3]), .OE(ctrl[3]), .Z(gpio[3]) );
  BUFTD4BWP12T30P140 igpio_tri_4_ ( .I(line[4]), .OE(ctrl[4]), .Z(gpio[4]) );
  BUFTD4BWP12T30P140 igpio_tri_5_ ( .I(line[5]), .OE(ctrl[5]), .Z(gpio[5]) );
  BUFTD4BWP12T30P140 igpio_tri_6_ ( .I(line[6]), .OE(ctrl[6]), .Z(gpio[6]) );
  BUFTD4BWP12T30P140 igpio_tri_7_ ( .I(line[7]), .OE(ctrl[7]), .Z(gpio[7]) );
  BUFTD4BWP12T30P140 igpio_tri_8_ ( .I(line[8]), .OE(ctrl[8]), .Z(gpio[8]) );
  DFQD2BWP12T30P140 llgpio_reg_8_ ( .D(lgpio[8]), .CP(clk_i), .Q(llgpio[8]) );
  DFQD2BWP12T30P140 llgpio_reg_7_ ( .D(lgpio[7]), .CP(clk_i), .Q(llgpio[7]) );
  DFQD2BWP12T30P140 llgpio_reg_6_ ( .D(lgpio[6]), .CP(clk_i), .Q(llgpio[6]) );
  DFCNQD1BWP12T30P140 ack_o_reg ( .D(N25), .CP(n60), .CDN(rst_i), .Q(ack_o) );
  DFQD2BWP12T30P140 dat_o_reg_5_ ( .D(N22), .CP(n59), .Q(dat_o[5]) );
  DFQD2BWP12T30P140 dat_o_reg_4_ ( .D(N21), .CP(n59), .Q(dat_o[4]) );
  DFQD2BWP12T30P140 dat_o_reg_3_ ( .D(N20), .CP(n59), .Q(dat_o[3]) );
  DFQD2BWP12T30P140 dat_o_reg_2_ ( .D(N19), .CP(n59), .Q(dat_o[2]) );
  DFQD2BWP12T30P140 dat_o_reg_1_ ( .D(N18), .CP(n59), .Q(dat_o[1]) );
  DFQD2BWP12T30P140 dat_o_reg_0_ ( .D(N17), .CP(n59), .Q(dat_o[0]) );
  DFQD2BWP12T30P140 llgpio_reg_5_ ( .D(lgpio[5]), .CP(n59), .Q(llgpio[5]) );
  DFQD2BWP12T30P140 llgpio_reg_4_ ( .D(lgpio[4]), .CP(n59), .Q(llgpio[4]) );
  DFQD2BWP12T30P140 llgpio_reg_2_ ( .D(lgpio[2]), .CP(n59), .Q(llgpio[2]) );
  DFQD2BWP12T30P140 llgpio_reg_1_ ( .D(lgpio[1]), .CP(n59), .Q(llgpio[1]) );
  DFQD2BWP12T30P140 lgpio_reg_8_ ( .D(gpio[8]), .CP(clk_i), .Q(lgpio[8]) );
  DFQD2BWP12T30P140 lgpio_reg_7_ ( .D(gpio[7]), .CP(clk_i), .Q(lgpio[7]) );
  DFQD2BWP12T30P140 lgpio_reg_6_ ( .D(gpio[6]), .CP(clk_i), .Q(lgpio[6]) );
  DFQD2BWP12T30P140 lgpio_reg_5_ ( .D(gpio[5]), .CP(clk_i), .Q(lgpio[5]) );
  DFQD2BWP12T30P140 lgpio_reg_4_ ( .D(gpio[4]), .CP(clk_i), .Q(lgpio[4]) );
  DFQD2BWP12T30P140 lgpio_reg_3_ ( .D(gpio[3]), .CP(clk_i), .Q(lgpio[3]) );
  DFQD2BWP12T30P140 lgpio_reg_2_ ( .D(gpio[2]), .CP(clk_i), .Q(lgpio[2]) );
  DFCNQD1BWP12T30P140 line_reg_8_ ( .D(n45), .CP(clk_i), .CDN(rst_i), .Q(
        line[8]) );
  DFCNQD1BWP12T30P140 line_reg_7_ ( .D(n44), .CP(clk_i), .CDN(rst_i), .Q(
        line[7]) );
  DFCNQD1BWP12T30P140 line_reg_6_ ( .D(n43), .CP(clk_i), .CDN(rst_i), .Q(
        line[6]) );
  DFCNQD1BWP12T30P140 line_reg_5_ ( .D(n42), .CP(clk_i), .CDN(rst_i), .Q(
        line[5]) );
  DFCNQD1BWP12T30P140 line_reg_4_ ( .D(n41), .CP(n60), .CDN(rst_i), .Q(line[4]) );
  DFCNQD1BWP12T30P140 line_reg_3_ ( .D(n40), .CP(n60), .CDN(rst_i), .Q(line[3]) );
  DFCNQD1BWP12T30P140 line_reg_2_ ( .D(n39), .CP(n60), .CDN(rst_i), .Q(line[2]) );
  DFCNQD1BWP12T30P140 line_reg_1_ ( .D(n38), .CP(n60), .CDN(rst_i), .Q(line[1]) );
  DFCNQD1BWP12T30P140 ctrl_reg_8_ ( .D(n37), .CP(n60), .CDN(rst_i), .Q(ctrl[8]) );
  DFCNQD1BWP12T30P140 ctrl_reg_7_ ( .D(n36), .CP(n60), .CDN(rst_i), .Q(ctrl[7]) );
  DFCNQD1BWP12T30P140 ctrl_reg_6_ ( .D(n35), .CP(n60), .CDN(rst_i), .Q(ctrl[6]) );
  DFCNQD1BWP12T30P140 ctrl_reg_5_ ( .D(n34), .CP(n60), .CDN(rst_i), .Q(ctrl[5]) );
  DFCNQD1BWP12T30P140 ctrl_reg_4_ ( .D(n33), .CP(n60), .CDN(rst_i), .Q(ctrl[4]) );
  DFCNQD1BWP12T30P140 ctrl_reg_3_ ( .D(n32), .CP(n60), .CDN(rst_i), .Q(ctrl[3]) );
  DFCNQD1BWP12T30P140 ctrl_reg_2_ ( .D(n31), .CP(n60), .CDN(rst_i), .Q(ctrl[2]) );
  DFCNQD1BWP12T30P140 ctrl_reg_1_ ( .D(n30), .CP(n60), .CDN(rst_i), .Q(ctrl[1]) );
  DFQD1BWP12T30P140 llgpio_reg_3_ ( .D(lgpio[3]), .CP(n59), .Q(llgpio[3]) );
  DFQD1BWP12T30P140 lgpio_reg_1_ ( .D(gpio[1]), .CP(n59), .Q(lgpio[1]) );
  CKMUX2D0BWP12T30P140 U57 ( .I0(ctrl[8]), .I1(llgpio[8]), .S(adr_i), .Z(N24)
         );
  ND3D0BWP12T30P140 U58 ( .A1(cyc_i), .A2(stb_i), .A3(we_i), .ZN(n54) );
  NR2D0BWP12T30P140 U59 ( .A1(adr_i), .A2(n54), .ZN(n56) );
  INVD0BWP12T30P140 U60 ( .I(n56), .ZN(n57) );
  OA22D0BWP12T30P140 U61 ( .A1(n57), .A2(dat_i[0]), .B1(ctrl[1]), .B2(n56), 
        .Z(n30) );
  CKMUX2D0BWP12T30P140 U62 ( .I0(ctrl[3]), .I1(llgpio[3]), .S(adr_i), .Z(N19)
         );
  OA22D0BWP12T30P140 U63 ( .A1(n57), .A2(dat_i[1]), .B1(ctrl[2]), .B2(n56), 
        .Z(n31) );
  CKMUX2D0BWP12T30P140 U64 ( .I0(ctrl[7]), .I1(llgpio[7]), .S(adr_i), .Z(N23)
         );
  OA22D0BWP12T30P140 U65 ( .A1(n57), .A2(dat_i[2]), .B1(ctrl[3]), .B2(n56), 
        .Z(n32) );
  ND2D0BWP12T30P140 U66 ( .A1(cyc_i), .A2(stb_i), .ZN(n55) );
  NR2D0BWP12T30P140 U67 ( .A1(ack_o), .A2(n55), .ZN(N25) );
  OA22D0BWP12T30P140 U68 ( .A1(n57), .A2(dat_i[3]), .B1(ctrl[4]), .B2(n56), 
        .Z(n33) );
  CKMUX2D0BWP12T30P140 U69 ( .I0(ctrl[5]), .I1(llgpio[5]), .S(adr_i), .Z(N21)
         );
  OA22D0BWP12T30P140 U70 ( .A1(n57), .A2(dat_i[4]), .B1(ctrl[5]), .B2(n56), 
        .Z(n34) );
  CKMUX2D0BWP12T30P140 U71 ( .I0(ctrl[6]), .I1(llgpio[6]), .S(adr_i), .Z(N22)
         );
  OA22D0BWP12T30P140 U72 ( .A1(n57), .A2(dat_i[5]), .B1(ctrl[6]), .B2(n56), 
        .Z(n35) );
  ND4D0BWP12T30P140 U73 ( .A1(adr_i), .A2(cyc_i), .A3(stb_i), .A4(we_i), .ZN(
        n58) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(dat_i[5]), .I1(line[6]), .S(n58), .Z(n43) );
  OA22D0BWP12T30P140 U75 ( .A1(n57), .A2(dat_i[6]), .B1(ctrl[7]), .B2(n56), 
        .Z(n36) );
  CKMUX2D0BWP12T30P140 U76 ( .I0(dat_i[7]), .I1(line[8]), .S(n58), .Z(n45) );
  OA22D0BWP12T30P140 U77 ( .A1(n57), .A2(dat_i[7]), .B1(ctrl[8]), .B2(n56), 
        .Z(n37) );
  CKMUX2D0BWP12T30P140 U78 ( .I0(ctrl[4]), .I1(llgpio[4]), .S(adr_i), .Z(N20)
         );
  CKMUX2D0BWP12T30P140 U79 ( .I0(dat_i[0]), .I1(line[1]), .S(n58), .Z(n38) );
  CKMUX2D0BWP12T30P140 U80 ( .I0(dat_i[1]), .I1(line[2]), .S(n58), .Z(n39) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(dat_i[2]), .I1(line[3]), .S(n58), .Z(n40) );
  CKMUX2D0BWP12T30P140 U82 ( .I0(dat_i[3]), .I1(line[4]), .S(n58), .Z(n41) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(dat_i[4]), .I1(line[5]), .S(n58), .Z(n42) );
  CKMUX2D0BWP12T30P140 U84 ( .I0(dat_i[6]), .I1(line[7]), .S(n58), .Z(n44) );
  CKMUX2D0BWP12T30P140 U85 ( .I0(ctrl[2]), .I1(llgpio[2]), .S(adr_i), .Z(N18)
         );
  CKMUX2D0BWP12T30P140 U86 ( .I0(ctrl[1]), .I1(llgpio[1]), .S(adr_i), .Z(N17)
         );
  CKBD0BWP12T30P140 U87 ( .I(clk_i), .Z(n59) );
  CKBD0BWP12T30P140 U88 ( .I(clk_i), .Z(n60) );
endmodule

