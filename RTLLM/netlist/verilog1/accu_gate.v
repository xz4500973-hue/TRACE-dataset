/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:24:32 2026
/////////////////////////////////////////////////////////////


module accu ( clk, rst_n, data_in, valid_in, valid_out, data_out );
  input [7:0] data_in;
  output [9:0] data_out;
  input clk, rst_n, valid_in;
  output valid_out;
  wire   end_cnt, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54;
  wire   [1:0] count;

  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(n19), .CP(clk), .CDN(rst_n), .Q(
        count[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_8_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(
        data_out[8]) );
  DFCNQD1BWP12T30P140 valid_out_reg ( .D(end_cnt), .CP(clk), .CDN(rst_n), .Q(
        valid_out) );
  DFCNQD1BWP12T30P140 data_out_reg_9_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(
        data_out[9]) );
  DFCNQD1BWP12T30P140 data_out_reg_0_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(
        data_out[0]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(n18), .CP(clk), .CDN(rst_n), .Q(
        count[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_1_ ( .D(n17), .CP(clk), .CDN(rst_n), .Q(
        data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_2_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(
        data_out[2]) );
  DFCNQD1BWP12T30P140 data_out_reg_3_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(
        data_out[3]) );
  DFCNQD1BWP12T30P140 data_out_reg_4_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(
        data_out[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_5_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(
        data_out[5]) );
  DFCNQD1BWP12T30P140 data_out_reg_6_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(
        data_out[6]) );
  DFCNQD1BWP12T30P140 data_out_reg_7_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(
        data_out[7]) );
  IND2D1BWP12T30P140 U24 ( .A1(valid_in), .B1(valid_out), .ZN(n39) );
  INVD0BWP12T30P140 U25 ( .I(n39), .ZN(n54) );
  INVD0BWP12T30P140 U26 ( .I(count[1]), .ZN(n41) );
  INVD0BWP12T30P140 U27 ( .I(count[0]), .ZN(n38) );
  ND3D0BWP12T30P140 U28 ( .A1(n39), .A2(n41), .A3(n38), .ZN(n30) );
  ND2D0BWP12T30P140 U29 ( .A1(n39), .A2(n30), .ZN(n23) );
  INVD0BWP12T30P140 U30 ( .I(n23), .ZN(n53) );
  ND2D0BWP12T30P140 U31 ( .A1(data_out[0]), .A2(data_in[0]), .ZN(n33) );
  INVD0BWP12T30P140 U32 ( .I(data_out[1]), .ZN(n36) );
  INVD0BWP12T30P140 U33 ( .I(data_in[1]), .ZN(n34) );
  MAOI222D0BWP12T30P140 U34 ( .A(n33), .B(n36), .C(n34), .ZN(n42) );
  INVD0BWP12T30P140 U35 ( .I(n30), .ZN(n51) );
  AO222D0BWP12T30P140 U36 ( .A1(n54), .A2(data_out[7]), .B1(n53), .B2(n21), 
        .C1(n51), .C2(data_in[7]), .Z(n10) );
  FA1D0BWP12T30P140 U37 ( .A(data_out[7]), .B(data_in[7]), .CI(n22), .CO(n24), 
        .S(n21) );
  ND2D0BWP12T30P140 U38 ( .A1(n53), .A2(n24), .ZN(n28) );
  INVD0BWP12T30P140 U39 ( .I(data_out[8]), .ZN(n29) );
  OAI21D0BWP12T30P140 U40 ( .A1(n24), .A2(n23), .B(n39), .ZN(n25) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n28), .A2(n29), .B1(n29), .B2(n25), .ZN(n9)
         );
  AOI21D0BWP12T30P140 U42 ( .A1(n53), .A2(n29), .B(n25), .ZN(n27) );
  INVD0BWP12T30P140 U43 ( .I(data_out[9]), .ZN(n26) );
  OAI32D0BWP12T30P140 U44 ( .A1(data_out[9]), .A2(n29), .A3(n28), .B1(n27), 
        .B2(n26), .ZN(n8) );
  OAI21D0BWP12T30P140 U45 ( .A1(n51), .A2(data_in[0]), .B(n39), .ZN(n32) );
  OAI21D0BWP12T30P140 U46 ( .A1(n54), .A2(data_out[0]), .B(n30), .ZN(n31) );
  AO22D0BWP12T30P140 U47 ( .A1(data_out[0]), .A2(n32), .B1(data_in[0]), .B2(
        n31), .Z(n16) );
  AOI22D0BWP12T30P140 U48 ( .A1(n54), .A2(n38), .B1(count[0]), .B2(n39), .ZN(
        n18) );
  MUX2ND0BWP12T30P140 U49 ( .I0(data_in[1]), .I1(n34), .S(n33), .ZN(n35) );
  MUX2ND0BWP12T30P140 U50 ( .I0(n36), .I1(data_out[1]), .S(n35), .ZN(n37) );
  AO222D0BWP12T30P140 U51 ( .A1(n54), .A2(data_out[1]), .B1(n53), .B2(n37), 
        .C1(data_in[1]), .C2(n51), .Z(n17) );
  NR3D0BWP12T30P140 U52 ( .A1(n41), .A2(n38), .A3(n54), .ZN(end_cnt) );
  ND2D0BWP12T30P140 U53 ( .A1(count[0]), .A2(n39), .ZN(n40) );
  AOI21D0BWP12T30P140 U54 ( .A1(n41), .A2(n40), .B(end_cnt), .ZN(n19) );
  FA1D0BWP12T30P140 U55 ( .A(data_out[2]), .B(data_in[2]), .CI(n42), .CO(n44), 
        .S(n43) );
  AO222D0BWP12T30P140 U56 ( .A1(n54), .A2(data_out[2]), .B1(n53), .B2(n43), 
        .C1(n51), .C2(data_in[2]), .Z(n15) );
  FA1D0BWP12T30P140 U57 ( .A(data_out[3]), .B(data_in[3]), .CI(n44), .CO(n46), 
        .S(n45) );
  AO222D0BWP12T30P140 U58 ( .A1(n54), .A2(data_out[3]), .B1(n53), .B2(n45), 
        .C1(n51), .C2(data_in[3]), .Z(n14) );
  FA1D0BWP12T30P140 U59 ( .A(data_out[4]), .B(data_in[4]), .CI(n46), .CO(n48), 
        .S(n47) );
  AO222D0BWP12T30P140 U60 ( .A1(n54), .A2(data_out[4]), .B1(n53), .B2(n47), 
        .C1(n51), .C2(data_in[4]), .Z(n13) );
  FA1D0BWP12T30P140 U61 ( .A(data_out[5]), .B(data_in[5]), .CI(n48), .CO(n50), 
        .S(n49) );
  AO222D0BWP12T30P140 U62 ( .A1(n54), .A2(data_out[5]), .B1(n53), .B2(n49), 
        .C1(n51), .C2(data_in[5]), .Z(n12) );
  FA1D0BWP12T30P140 U63 ( .A(data_out[6]), .B(data_in[6]), .CI(n50), .CO(n22), 
        .S(n52) );
  AO222D0BWP12T30P140 U64 ( .A1(n54), .A2(data_out[6]), .B1(n53), .B2(n52), 
        .C1(n51), .C2(data_in[6]), .Z(n11) );
endmodule

