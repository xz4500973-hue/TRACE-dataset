/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:14:40 2026
/////////////////////////////////////////////////////////////


module simple_gpio ( clk_i, rst_i, cyc_i, stb_i, adr_i, we_i, dat_i, dat_o, 
        ack_o, gpio );
  input [7:0] dat_i;
  output [7:0] dat_o;
  inout [8:1] gpio;
  input clk_i, rst_i, cyc_i, stb_i, adr_i, we_i;
  output ack_o;
  wire   N13, N14, N15, N16, N17, N18, N19, N20, N21, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [8:1] ctrl;
  wire   [8:1] line;
  wire   [8:1] llgpio;
  wire   [8:1] lgpio;

  DFQD2BWP12T30P140 dat_o_reg_7_ ( .D(N20), .CP(clk_i), .Q(dat_o[7]) );
  DFQD2BWP12T30P140 dat_o_reg_6_ ( .D(N19), .CP(clk_i), .Q(dat_o[6]) );
  BUFTD4BWP12T30P140 gpio_tri_8_ ( .I(line[8]), .OE(ctrl[8]), .Z(gpio[8]) );
  BUFTD4BWP12T30P140 gpio_tri_7_ ( .I(line[7]), .OE(ctrl[7]), .Z(gpio[7]) );
  BUFTD4BWP12T30P140 gpio_tri_6_ ( .I(line[6]), .OE(ctrl[6]), .Z(gpio[6]) );
  BUFTD4BWP12T30P140 gpio_tri_5_ ( .I(line[5]), .OE(ctrl[5]), .Z(gpio[5]) );
  BUFTD4BWP12T30P140 gpio_tri_4_ ( .I(line[4]), .OE(ctrl[4]), .Z(gpio[4]) );
  BUFTD4BWP12T30P140 gpio_tri_3_ ( .I(line[3]), .OE(ctrl[3]), .Z(gpio[3]) );
  BUFTD4BWP12T30P140 gpio_tri_2_ ( .I(line[2]), .OE(ctrl[2]), .Z(gpio[2]) );
  BUFTD4BWP12T30P140 gpio_tri_1_ ( .I(line[1]), .OE(ctrl[1]), .Z(gpio[1]) );
  DFQD2BWP12T30P140 llgpio_reg_8_ ( .D(lgpio[8]), .CP(clk_i), .Q(llgpio[8]) );
  DFQD2BWP12T30P140 llgpio_reg_7_ ( .D(lgpio[7]), .CP(clk_i), .Q(llgpio[7]) );
  DFQD2BWP12T30P140 llgpio_reg_6_ ( .D(lgpio[6]), .CP(clk_i), .Q(llgpio[6]) );
  DFCNQD1BWP12T30P140 ack_o_reg ( .D(N21), .CP(n58), .CDN(rst_i), .Q(ack_o) );
  DFQD2BWP12T30P140 dat_o_reg_5_ ( .D(N18), .CP(n57), .Q(dat_o[5]) );
  DFQD2BWP12T30P140 dat_o_reg_4_ ( .D(N17), .CP(n57), .Q(dat_o[4]) );
  DFQD2BWP12T30P140 dat_o_reg_3_ ( .D(N16), .CP(n57), .Q(dat_o[3]) );
  DFQD2BWP12T30P140 dat_o_reg_2_ ( .D(N15), .CP(n57), .Q(dat_o[2]) );
  DFQD2BWP12T30P140 dat_o_reg_1_ ( .D(N14), .CP(n57), .Q(dat_o[1]) );
  DFQD2BWP12T30P140 dat_o_reg_0_ ( .D(N13), .CP(n57), .Q(dat_o[0]) );
  DFQD2BWP12T30P140 llgpio_reg_5_ ( .D(lgpio[5]), .CP(n57), .Q(llgpio[5]) );
  DFQD2BWP12T30P140 llgpio_reg_4_ ( .D(lgpio[4]), .CP(n57), .Q(llgpio[4]) );
  DFQD2BWP12T30P140 llgpio_reg_2_ ( .D(lgpio[2]), .CP(n57), .Q(llgpio[2]) );
  DFQD2BWP12T30P140 llgpio_reg_1_ ( .D(lgpio[1]), .CP(n57), .Q(llgpio[1]) );
  DFQD2BWP12T30P140 lgpio_reg_8_ ( .D(gpio[8]), .CP(clk_i), .Q(lgpio[8]) );
  DFQD2BWP12T30P140 lgpio_reg_7_ ( .D(gpio[7]), .CP(clk_i), .Q(lgpio[7]) );
  DFQD2BWP12T30P140 lgpio_reg_6_ ( .D(gpio[6]), .CP(clk_i), .Q(lgpio[6]) );
  DFQD2BWP12T30P140 lgpio_reg_5_ ( .D(gpio[5]), .CP(clk_i), .Q(lgpio[5]) );
  DFQD2BWP12T30P140 lgpio_reg_4_ ( .D(gpio[4]), .CP(clk_i), .Q(lgpio[4]) );
  DFQD2BWP12T30P140 lgpio_reg_3_ ( .D(gpio[3]), .CP(clk_i), .Q(lgpio[3]) );
  DFQD2BWP12T30P140 lgpio_reg_2_ ( .D(gpio[2]), .CP(clk_i), .Q(lgpio[2]) );
  DFCNQD1BWP12T30P140 ctrl_reg_8_ ( .D(n36), .CP(clk_i), .CDN(rst_i), .Q(
        ctrl[8]) );
  DFCNQD1BWP12T30P140 ctrl_reg_7_ ( .D(n35), .CP(clk_i), .CDN(rst_i), .Q(
        ctrl[7]) );
  DFCNQD1BWP12T30P140 ctrl_reg_6_ ( .D(n34), .CP(clk_i), .CDN(rst_i), .Q(
        ctrl[6]) );
  DFCNQD1BWP12T30P140 ctrl_reg_5_ ( .D(n33), .CP(clk_i), .CDN(rst_i), .Q(
        ctrl[5]) );
  DFCNQD1BWP12T30P140 line_reg_8_ ( .D(n28), .CP(n58), .CDN(rst_i), .Q(line[8]) );
  DFCNQD1BWP12T30P140 line_reg_7_ ( .D(n27), .CP(n58), .CDN(rst_i), .Q(line[7]) );
  DFCNQD1BWP12T30P140 line_reg_6_ ( .D(n26), .CP(n58), .CDN(rst_i), .Q(line[6]) );
  DFCNQD1BWP12T30P140 line_reg_5_ ( .D(n25), .CP(n58), .CDN(rst_i), .Q(line[5]) );
  DFCNQD1BWP12T30P140 line_reg_4_ ( .D(n24), .CP(n58), .CDN(rst_i), .Q(line[4]) );
  DFCNQD1BWP12T30P140 line_reg_3_ ( .D(n23), .CP(n58), .CDN(rst_i), .Q(line[3]) );
  DFCNQD1BWP12T30P140 line_reg_2_ ( .D(n22), .CP(n58), .CDN(rst_i), .Q(line[2]) );
  DFCNQD1BWP12T30P140 line_reg_1_ ( .D(n21), .CP(n58), .CDN(rst_i), .Q(line[1]) );
  DFCNQD1BWP12T30P140 ctrl_reg_4_ ( .D(n32), .CP(n58), .CDN(rst_i), .Q(ctrl[4]) );
  DFCNQD1BWP12T30P140 ctrl_reg_3_ ( .D(n31), .CP(n58), .CDN(rst_i), .Q(ctrl[3]) );
  DFCNQD1BWP12T30P140 ctrl_reg_2_ ( .D(n30), .CP(n58), .CDN(rst_i), .Q(ctrl[2]) );
  DFCNQD1BWP12T30P140 ctrl_reg_1_ ( .D(n29), .CP(n58), .CDN(rst_i), .Q(ctrl[1]) );
  DFQD1BWP12T30P140 llgpio_reg_3_ ( .D(lgpio[3]), .CP(n57), .Q(llgpio[3]) );
  DFQD1BWP12T30P140 lgpio_reg_1_ ( .D(gpio[1]), .CP(n57), .Q(lgpio[1]) );
  CKMUX2D0BWP12T30P140 U48 ( .I0(ctrl[8]), .I1(llgpio[8]), .S(adr_i), .Z(N20)
         );
  ND3D0BWP12T30P140 U49 ( .A1(cyc_i), .A2(stb_i), .A3(we_i), .ZN(n46) );
  NR2D0BWP12T30P140 U50 ( .A1(adr_i), .A2(n46), .ZN(n56) );
  INVD0BWP12T30P140 U51 ( .I(dat_i[0]), .ZN(n47) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n56), .A2(n47), .B1(ctrl[1]), .B2(n56), .ZN(
        n29) );
  CKMUX2D0BWP12T30P140 U53 ( .I0(ctrl[3]), .I1(llgpio[3]), .S(adr_i), .Z(N15)
         );
  INVD0BWP12T30P140 U54 ( .I(dat_i[1]), .ZN(n48) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n56), .A2(n48), .B1(ctrl[2]), .B2(n56), .ZN(
        n30) );
  CKMUX2D0BWP12T30P140 U56 ( .I0(ctrl[7]), .I1(llgpio[7]), .S(adr_i), .Z(N19)
         );
  INVD0BWP12T30P140 U57 ( .I(dat_i[2]), .ZN(n49) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n56), .A2(n49), .B1(ctrl[3]), .B2(n56), .ZN(
        n31) );
  ND2D0BWP12T30P140 U59 ( .A1(cyc_i), .A2(stb_i), .ZN(n45) );
  NR2D0BWP12T30P140 U60 ( .A1(ack_o), .A2(n45), .ZN(N21) );
  INVD0BWP12T30P140 U61 ( .I(dat_i[3]), .ZN(n50) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n56), .A2(n50), .B1(ctrl[4]), .B2(n56), .ZN(
        n32) );
  CKMUX2D0BWP12T30P140 U63 ( .I0(ctrl[5]), .I1(llgpio[5]), .S(adr_i), .Z(N17)
         );
  INR2D1BWP12T30P140 U64 ( .A1(adr_i), .B1(n46), .ZN(n53) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n53), .A2(n47), .B1(line[1]), .B2(n53), .ZN(
        n21) );
  CKMUX2D0BWP12T30P140 U66 ( .I0(ctrl[6]), .I1(llgpio[6]), .S(adr_i), .Z(N18)
         );
  MAOI22D0BWP12T30P140 U67 ( .A1(n53), .A2(n48), .B1(line[2]), .B2(n53), .ZN(
        n22) );
  INVD0BWP12T30P140 U68 ( .I(dat_i[5]), .ZN(n51) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n56), .A2(n51), .B1(ctrl[6]), .B2(n56), .ZN(
        n34) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n53), .A2(n49), .B1(line[3]), .B2(n53), .ZN(
        n23) );
  INVD0BWP12T30P140 U71 ( .I(dat_i[7]), .ZN(n52) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n56), .A2(n52), .B1(ctrl[8]), .B2(n56), .ZN(
        n36) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n53), .A2(n50), .B1(line[4]), .B2(n53), .ZN(
        n24) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(ctrl[4]), .I1(llgpio[4]), .S(adr_i), .Z(N16)
         );
  INVD0BWP12T30P140 U75 ( .I(dat_i[4]), .ZN(n54) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n53), .A2(n54), .B1(line[5]), .B2(n53), .ZN(
        n25) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n53), .A2(n51), .B1(line[6]), .B2(n53), .ZN(
        n26) );
  INVD0BWP12T30P140 U78 ( .I(dat_i[6]), .ZN(n55) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n53), .A2(n55), .B1(line[7]), .B2(n53), .ZN(
        n27) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n53), .A2(n52), .B1(line[8]), .B2(n53), .ZN(
        n28) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n56), .A2(n54), .B1(ctrl[5]), .B2(n56), .ZN(
        n33) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n56), .A2(n55), .B1(ctrl[7]), .B2(n56), .ZN(
        n35) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(ctrl[2]), .I1(llgpio[2]), .S(adr_i), .Z(N14)
         );
  CKMUX2D0BWP12T30P140 U84 ( .I0(ctrl[1]), .I1(llgpio[1]), .S(adr_i), .Z(N13)
         );
  CKBD0BWP12T30P140 U85 ( .I(clk_i), .Z(n57) );
  CKBD0BWP12T30P140 U86 ( .I(clk_i), .Z(n58) );
endmodule

