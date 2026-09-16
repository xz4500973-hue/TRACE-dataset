/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:48:24 2026
/////////////////////////////////////////////////////////////


module accu ( clk, rst_n, data_in, valid_in, valid_out, data_out );
  input [7:0] data_in;
  output [9:0] data_out;
  input clk, rst_n, valid_in;
  output valid_out;
  wire   state_3_, state_2_, state_1_, state_0_, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114;
  wire   [9:0] sum_reg;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(n56), .CP(clk), .SDN(rst_n), .Q(
        state_0_) );
  DFCNQD1BWP12T30P140 data_out_reg_9_ ( .D(n32), .CP(clk), .CDN(rst_n), .Q(
        data_out[9]) );
  DFCNQD1BWP12T30P140 data_out_reg_8_ ( .D(n33), .CP(clk), .CDN(rst_n), .Q(
        data_out[8]) );
  DFCNQD1BWP12T30P140 data_out_reg_7_ ( .D(n34), .CP(clk), .CDN(rst_n), .Q(
        data_out[7]) );
  DFCNQD1BWP12T30P140 data_out_reg_6_ ( .D(n35), .CP(clk), .CDN(rst_n), .Q(
        data_out[6]) );
  DFCNQD1BWP12T30P140 data_out_reg_5_ ( .D(n36), .CP(clk), .CDN(rst_n), .Q(
        data_out[5]) );
  DFCNQD1BWP12T30P140 data_out_reg_4_ ( .D(n37), .CP(clk), .CDN(rst_n), .Q(
        data_out[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_3_ ( .D(n38), .CP(clk), .CDN(rst_n), .Q(
        data_out[3]) );
  DFCNQD1BWP12T30P140 data_out_reg_2_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(
        data_out[2]) );
  DFCNQD1BWP12T30P140 data_out_reg_1_ ( .D(n40), .CP(clk), .CDN(n113), .Q(
        data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_0_ ( .D(n41), .CP(clk), .CDN(n113), .Q(
        data_out[0]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n52), .CP(clk), .CDN(n113), .Q(
        valid_out) );
  DFCNQD1BWP12T30P140 sum_reg_reg_9_ ( .D(n50), .CP(n114), .CDN(n113), .Q(
        sum_reg[9]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n53), .CP(clk), .CDN(rst_n), .Q(
        state_3_) );
  DFCNQD1BWP12T30P140 sum_reg_reg_0_ ( .D(n51), .CP(n114), .CDN(n113), .Q(
        sum_reg[0]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n55), .CP(n114), .CDN(rst_n), .Q(
        state_1_) );
  DFCNQD1BWP12T30P140 sum_reg_reg_8_ ( .D(n49), .CP(n114), .CDN(n113), .Q(
        sum_reg[8]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n54), .CP(n114), .CDN(rst_n), .Q(
        state_2_) );
  DFCNQD1BWP12T30P140 sum_reg_reg_1_ ( .D(n42), .CP(n114), .CDN(n113), .Q(
        sum_reg[1]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_7_ ( .D(n48), .CP(n114), .CDN(n113), .Q(
        sum_reg[7]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_6_ ( .D(n47), .CP(n114), .CDN(n113), .Q(
        sum_reg[6]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_5_ ( .D(n46), .CP(n114), .CDN(n113), .Q(
        sum_reg[5]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_4_ ( .D(n45), .CP(n114), .CDN(n113), .Q(
        sum_reg[4]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_3_ ( .D(n44), .CP(n114), .CDN(n113), .Q(
        sum_reg[3]) );
  DFCNQD1BWP12T30P140 sum_reg_reg_2_ ( .D(n43), .CP(n114), .CDN(n113), .Q(
        sum_reg[2]) );
  NR2D0BWP12T30P140 U60 ( .A1(valid_out), .A2(state_1_), .ZN(n58) );
  NR2D0BWP12T30P140 U61 ( .A1(state_2_), .A2(state_3_), .ZN(n59) );
  ND3D0BWP12T30P140 U62 ( .A1(state_0_), .A2(n58), .A3(n59), .ZN(n62) );
  INVD0BWP12T30P140 U63 ( .I(valid_in), .ZN(n111) );
  NR2D0BWP12T30P140 U64 ( .A1(n62), .A2(n111), .ZN(n55) );
  IND2D1BWP12T30P140 U65 ( .A1(state_0_), .B1(n58), .ZN(n61) );
  INR3D1BWP12T30P140 U66 ( .A1(state_3_), .B1(state_2_), .B2(n61), .ZN(n112)
         );
  ND2D0BWP12T30P140 U67 ( .A1(n59), .A2(state_1_), .ZN(n60) );
  NR3D0BWP12T30P140 U68 ( .A1(n60), .A2(state_0_), .A3(valid_out), .ZN(n109)
         );
  INR3D1BWP12T30P140 U69 ( .A1(state_2_), .B1(state_3_), .B2(n61), .ZN(n110)
         );
  NR3D0BWP12T30P140 U70 ( .A1(n112), .A2(n109), .A3(n110), .ZN(n63) );
  ND2D0BWP12T30P140 U71 ( .A1(n63), .A2(n62), .ZN(n98) );
  ND2D0BWP12T30P140 U72 ( .A1(n111), .A2(n98), .ZN(n96) );
  INVD0BWP12T30P140 U73 ( .I(sum_reg[2]), .ZN(n66) );
  NR2D0BWP12T30P140 U74 ( .A1(n63), .A2(n111), .ZN(n94) );
  INVD0BWP12T30P140 U75 ( .I(data_in[0]), .ZN(n91) );
  INVD0BWP12T30P140 U76 ( .I(sum_reg[0]), .ZN(n92) );
  NR2D0BWP12T30P140 U77 ( .A1(n91), .A2(n92), .ZN(n87) );
  MAOI222D0BWP12T30P140 U78 ( .A(data_in[1]), .B(n87), .C(sum_reg[1]), .ZN(n64) );
  INVD0BWP12T30P140 U79 ( .I(n64), .ZN(n67) );
  AOI22D0BWP12T30P140 U80 ( .A1(n55), .A2(data_in[2]), .B1(n94), .B2(n65), 
        .ZN(n106) );
  OAI21D0BWP12T30P140 U81 ( .A1(n96), .A2(n66), .B(n106), .ZN(n43) );
  INVD0BWP12T30P140 U82 ( .I(sum_reg[3]), .ZN(n69) );
  FA1D0BWP12T30P140 U83 ( .A(sum_reg[2]), .B(data_in[2]), .CI(n67), .CO(n70), 
        .S(n65) );
  AOI22D0BWP12T30P140 U84 ( .A1(n55), .A2(data_in[3]), .B1(n94), .B2(n68), 
        .ZN(n105) );
  OAI21D0BWP12T30P140 U85 ( .A1(n96), .A2(n69), .B(n105), .ZN(n44) );
  INVD0BWP12T30P140 U86 ( .I(sum_reg[4]), .ZN(n72) );
  FA1D0BWP12T30P140 U87 ( .A(sum_reg[3]), .B(data_in[3]), .CI(n70), .CO(n73), 
        .S(n68) );
  AOI22D0BWP12T30P140 U88 ( .A1(n55), .A2(data_in[4]), .B1(n94), .B2(n71), 
        .ZN(n104) );
  OAI21D0BWP12T30P140 U89 ( .A1(n96), .A2(n72), .B(n104), .ZN(n45) );
  INVD0BWP12T30P140 U90 ( .I(sum_reg[5]), .ZN(n75) );
  FA1D0BWP12T30P140 U91 ( .A(sum_reg[4]), .B(data_in[4]), .CI(n73), .CO(n76), 
        .S(n71) );
  AOI22D0BWP12T30P140 U92 ( .A1(n55), .A2(data_in[5]), .B1(n94), .B2(n74), 
        .ZN(n103) );
  OAI21D0BWP12T30P140 U93 ( .A1(n96), .A2(n75), .B(n103), .ZN(n46) );
  INVD0BWP12T30P140 U94 ( .I(sum_reg[6]), .ZN(n78) );
  FA1D0BWP12T30P140 U95 ( .A(sum_reg[5]), .B(data_in[5]), .CI(n76), .CO(n79), 
        .S(n74) );
  AOI22D0BWP12T30P140 U96 ( .A1(n55), .A2(data_in[6]), .B1(n94), .B2(n77), 
        .ZN(n102) );
  OAI21D0BWP12T30P140 U97 ( .A1(n96), .A2(n78), .B(n102), .ZN(n47) );
  INVD0BWP12T30P140 U98 ( .I(sum_reg[9]), .ZN(n81) );
  FA1D0BWP12T30P140 U99 ( .A(sum_reg[6]), .B(data_in[6]), .CI(n79), .CO(n82), 
        .S(n77) );
  ND2D0BWP12T30P140 U100 ( .A1(n95), .A2(sum_reg[8]), .ZN(n93) );
  OA21D0BWP12T30P140 U101 ( .A1(n81), .A2(n93), .B(n94), .Z(n80) );
  IOA21D0BWP12T30P140 U102 ( .A1(n81), .A2(n93), .B(n80), .ZN(n99) );
  OAI21D0BWP12T30P140 U103 ( .A1(n81), .A2(n96), .B(n99), .ZN(n50) );
  INVD0BWP12T30P140 U104 ( .I(sum_reg[7]), .ZN(n84) );
  FA1D0BWP12T30P140 U105 ( .A(sum_reg[7]), .B(data_in[7]), .CI(n82), .CO(n95), 
        .S(n83) );
  AOI22D0BWP12T30P140 U106 ( .A1(n55), .A2(data_in[7]), .B1(n94), .B2(n83), 
        .ZN(n101) );
  OAI21D0BWP12T30P140 U107 ( .A1(n96), .A2(n84), .B(n101), .ZN(n48) );
  INVD0BWP12T30P140 U108 ( .I(sum_reg[1]), .ZN(n89) );
  MAOI22D0BWP12T30P140 U109 ( .A1(data_in[1]), .A2(sum_reg[1]), .B1(sum_reg[1]), .B2(data_in[1]), .ZN(n86) );
  OAI21D0BWP12T30P140 U110 ( .A1(n87), .A2(n86), .B(n94), .ZN(n85) );
  AOI21D0BWP12T30P140 U111 ( .A1(n87), .A2(n86), .B(n85), .ZN(n88) );
  AOI21D0BWP12T30P140 U112 ( .A1(data_in[1]), .A2(n55), .B(n88), .ZN(n107) );
  OAI21D0BWP12T30P140 U113 ( .A1(n96), .A2(n89), .B(n107), .ZN(n42) );
  AO21D0BWP12T30P140 U114 ( .A1(n92), .A2(n94), .B(n55), .Z(n90) );
  AOI32D0BWP12T30P140 U115 ( .A1(n94), .A2(n91), .A3(sum_reg[0]), .B1(
        data_in[0]), .B2(n90), .ZN(n108) );
  OAI21D0BWP12T30P140 U116 ( .A1(n92), .A2(n96), .B(n108), .ZN(n51) );
  INVD0BWP12T30P140 U117 ( .I(sum_reg[8]), .ZN(n97) );
  OAI211D0BWP12T30P140 U118 ( .A1(n95), .A2(sum_reg[8]), .B(n94), .C(n93), 
        .ZN(n100) );
  OAI21D0BWP12T30P140 U119 ( .A1(n97), .A2(n96), .B(n100), .ZN(n49) );
  CKBD0BWP12T30P140 U120 ( .I(clk), .Z(n114) );
  CKBD0BWP12T30P140 U121 ( .I(rst_n), .Z(n113) );
  ND2D0BWP12T30P140 U122 ( .A1(valid_in), .A2(n98), .ZN(n56) );
  IOA21D0BWP12T30P140 U123 ( .A1(data_out[9]), .A2(n56), .B(n99), .ZN(n32) );
  IOA21D0BWP12T30P140 U124 ( .A1(data_out[8]), .A2(n56), .B(n100), .ZN(n33) );
  IOA21D0BWP12T30P140 U125 ( .A1(data_out[7]), .A2(n56), .B(n101), .ZN(n34) );
  IOA21D0BWP12T30P140 U126 ( .A1(data_out[6]), .A2(n56), .B(n102), .ZN(n35) );
  IOA21D0BWP12T30P140 U127 ( .A1(data_out[5]), .A2(n56), .B(n103), .ZN(n36) );
  IOA21D0BWP12T30P140 U128 ( .A1(data_out[4]), .A2(n56), .B(n104), .ZN(n37) );
  IOA21D0BWP12T30P140 U129 ( .A1(data_out[3]), .A2(n56), .B(n105), .ZN(n38) );
  IOA21D0BWP12T30P140 U130 ( .A1(data_out[2]), .A2(n56), .B(n106), .ZN(n39) );
  IOA21D0BWP12T30P140 U131 ( .A1(data_out[1]), .A2(n56), .B(n107), .ZN(n40) );
  IOA21D0BWP12T30P140 U132 ( .A1(data_out[0]), .A2(n56), .B(n108), .ZN(n41) );
  INR2D1BWP12T30P140 U133 ( .A1(n109), .B1(n111), .ZN(n54) );
  INR2D1BWP12T30P140 U134 ( .A1(n110), .B1(n111), .ZN(n53) );
  INR2D1BWP12T30P140 U135 ( .A1(n112), .B1(n111), .ZN(n52) );
endmodule

