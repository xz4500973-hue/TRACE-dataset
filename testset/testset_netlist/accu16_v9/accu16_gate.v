/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:45:09 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107;

  DFCNQD1BWP12T30P140 acc_r_reg_15_ ( .D(n33), .CP(clk), .CDN(rst_n), .Q(
        acc[15]) );
  DFCNQD1BWP12T30P140 acc_r_reg_2_ ( .D(n20), .CP(clk), .CDN(rst_n), .Q(acc[2]) );
  DFCNQD1BWP12T30P140 acc_r_reg_12_ ( .D(n30), .CP(clk), .CDN(rst_n), .Q(
        acc[12]) );
  DFCNQD1BWP12T30P140 acc_r_reg_8_ ( .D(n26), .CP(clk), .CDN(rst_n), .Q(acc[8]) );
  DFCNQD1BWP12T30P140 acc_r_reg_4_ ( .D(n22), .CP(clk), .CDN(rst_n), .Q(acc[4]) );
  DFCNQD1BWP12T30P140 acc_r_reg_1_ ( .D(n19), .CP(clk), .CDN(rst_n), .Q(acc[1]) );
  DFCNQD1BWP12T30P140 acc_r_reg_3_ ( .D(n21), .CP(clk), .CDN(rst_n), .Q(acc[3]) );
  DFCNQD1BWP12T30P140 acc_r_reg_0_ ( .D(n18), .CP(clk), .CDN(rst_n), .Q(acc[0]) );
  DFCNQD1BWP12T30P140 acc_r_reg_13_ ( .D(n31), .CP(clk), .CDN(rst_n), .Q(
        acc[13]) );
  DFCNQD1BWP12T30P140 acc_r_reg_10_ ( .D(n28), .CP(clk), .CDN(rst_n), .Q(
        acc[10]) );
  DFCNQD1BWP12T30P140 acc_r_reg_6_ ( .D(n24), .CP(clk), .CDN(rst_n), .Q(acc[6]) );
  DFCNQD1BWP12T30P140 acc_r_reg_14_ ( .D(n32), .CP(clk), .CDN(rst_n), .Q(
        acc[14]) );
  DFCNQD1BWP12T30P140 acc_r_reg_11_ ( .D(n29), .CP(clk), .CDN(rst_n), .Q(
        acc[11]) );
  DFCNQD1BWP12T30P140 acc_r_reg_9_ ( .D(n27), .CP(clk), .CDN(rst_n), .Q(acc[9]) );
  DFCNQD1BWP12T30P140 acc_r_reg_7_ ( .D(n25), .CP(clk), .CDN(rst_n), .Q(acc[7]) );
  DFCNQD1BWP12T30P140 acc_r_reg_5_ ( .D(n23), .CP(clk), .CDN(rst_n), .Q(acc[5]) );
  INVD0BWP12T30P140 U36 ( .I(en), .ZN(n101) );
  AN2D0BWP12T30P140 U37 ( .A1(din[0]), .A2(acc[0]), .Z(n103) );
  MAOI222D0BWP12T30P140 U38 ( .A(n103), .B(din[1]), .C(acc[1]), .ZN(n96) );
  INVD0BWP12T30P140 U39 ( .I(din[2]), .ZN(n97) );
  INVD0BWP12T30P140 U40 ( .I(acc[2]), .ZN(n100) );
  MAOI222D0BWP12T30P140 U41 ( .A(n96), .B(n97), .C(n100), .ZN(n93) );
  MAOI222D0BWP12T30P140 U42 ( .A(din[3]), .B(acc[3]), .C(n93), .ZN(n55) );
  ND2D0BWP12T30P140 U43 ( .A1(acc[4]), .A2(din[4]), .ZN(n34) );
  OAI21D0BWP12T30P140 U44 ( .A1(acc[4]), .A2(din[4]), .B(n34), .ZN(n54) );
  NR2D0BWP12T30P140 U45 ( .A1(n55), .A2(n54), .ZN(n53) );
  INVD0BWP12T30P140 U46 ( .I(n34), .ZN(n38) );
  AN2D0BWP12T30P140 U47 ( .A1(n53), .A2(n35), .Z(n70) );
  NR2D0BWP12T30P140 U48 ( .A1(n53), .A2(n35), .ZN(n37) );
  INVD0BWP12T30P140 U49 ( .I(acc[5]), .ZN(n36) );
  OAI32D0BWP12T30P140 U50 ( .A1(n101), .A2(n70), .A3(n37), .B1(en), .B2(n36), 
        .ZN(n23) );
  ND2D0BWP12T30P140 U51 ( .A1(acc[8]), .A2(din[8]), .ZN(n42) );
  INVD0BWP12T30P140 U52 ( .I(n42), .ZN(n43) );
  FA1D0BWP12T30P140 U53 ( .A(acc[5]), .B(din[5]), .CI(n38), .CO(n39), .S(n35)
         );
  FA1D0BWP12T30P140 U54 ( .A(acc[6]), .B(din[6]), .CI(n39), .CO(n40), .S(n69)
         );
  ND2D0BWP12T30P140 U55 ( .A1(n70), .A2(n69), .ZN(n88) );
  INR2D1BWP12T30P140 U56 ( .A1(n87), .B1(n88), .ZN(n91) );
  FA1D0BWP12T30P140 U57 ( .A(acc[7]), .B(din[7]), .CI(n40), .CO(n41), .S(n87)
         );
  NR2D0BWP12T30P140 U58 ( .A1(n91), .A2(n41), .ZN(n51) );
  OAI21D0BWP12T30P140 U59 ( .A1(acc[8]), .A2(din[8]), .B(n42), .ZN(n50) );
  NR2D0BWP12T30P140 U60 ( .A1(n51), .A2(n50), .ZN(n83) );
  FA1D0BWP12T30P140 U61 ( .A(acc[9]), .B(din[9]), .CI(n43), .CO(n44), .S(n82)
         );
  AN2D0BWP12T30P140 U62 ( .A1(n83), .A2(n82), .Z(n86) );
  FA1D0BWP12T30P140 U63 ( .A(acc[10]), .B(din[10]), .CI(n44), .CO(n45), .S(n67) );
  ND2D0BWP12T30P140 U64 ( .A1(n86), .A2(n67), .ZN(n78) );
  INR2D1BWP12T30P140 U65 ( .A1(n77), .B1(n78), .ZN(n81) );
  FA1D0BWP12T30P140 U66 ( .A(acc[11]), .B(din[11]), .CI(n45), .CO(n46), .S(n77) );
  NR2D0BWP12T30P140 U67 ( .A1(n81), .A2(n46), .ZN(n48) );
  ND2D0BWP12T30P140 U68 ( .A1(acc[12]), .A2(din[12]), .ZN(n57) );
  OAI21D0BWP12T30P140 U69 ( .A1(acc[12]), .A2(din[12]), .B(n57), .ZN(n47) );
  NR2D0BWP12T30P140 U70 ( .A1(n48), .A2(n47), .ZN(n65) );
  AOI211D0BWP12T30P140 U71 ( .A1(n48), .A2(n47), .B(n65), .C(n101), .ZN(n49)
         );
  AO21D0BWP12T30P140 U72 ( .A1(acc[12]), .A2(n101), .B(n49), .Z(n30) );
  AOI211D0BWP12T30P140 U73 ( .A1(n51), .A2(n50), .B(n83), .C(n101), .ZN(n52)
         );
  AO21D0BWP12T30P140 U74 ( .A1(acc[8]), .A2(n101), .B(n52), .Z(n26) );
  AOI211D0BWP12T30P140 U75 ( .A1(n55), .A2(n54), .B(n53), .C(n101), .ZN(n56)
         );
  AO21D0BWP12T30P140 U76 ( .A1(acc[4]), .A2(n101), .B(n56), .Z(n22) );
  INVD0BWP12T30P140 U77 ( .I(n57), .ZN(n58) );
  FA1D0BWP12T30P140 U78 ( .A(acc[13]), .B(din[13]), .CI(n58), .CO(n59), .S(n64) );
  ND2D0BWP12T30P140 U79 ( .A1(n65), .A2(n64), .ZN(n73) );
  INR2D1BWP12T30P140 U80 ( .A1(n72), .B1(n73), .ZN(n76) );
  FA1D0BWP12T30P140 U81 ( .A(acc[14]), .B(din[14]), .CI(n59), .CO(n61), .S(n72) );
  OAI21D0BWP12T30P140 U82 ( .A1(n76), .A2(n61), .B(din[15]), .ZN(n60) );
  OAI31D0BWP12T30P140 U83 ( .A1(n76), .A2(din[15]), .A3(n61), .B(n60), .ZN(n63) );
  OAI21D0BWP12T30P140 U84 ( .A1(n63), .A2(n101), .B(acc[15]), .ZN(n62) );
  OAI31D0BWP12T30P140 U85 ( .A1(n63), .A2(acc[15]), .A3(n101), .B(n62), .ZN(
        n33) );
  OAI21D0BWP12T30P140 U86 ( .A1(n65), .A2(n64), .B(n73), .ZN(n66) );
  MAOI22D0BWP12T30P140 U87 ( .A1(en), .A2(n66), .B1(acc[13]), .B2(en), .ZN(n31) );
  OAI21D0BWP12T30P140 U88 ( .A1(n86), .A2(n67), .B(n78), .ZN(n68) );
  MAOI22D0BWP12T30P140 U89 ( .A1(en), .A2(n68), .B1(acc[10]), .B2(en), .ZN(n28) );
  OAI21D0BWP12T30P140 U90 ( .A1(n70), .A2(n69), .B(n88), .ZN(n71) );
  MAOI22D0BWP12T30P140 U91 ( .A1(en), .A2(n71), .B1(acc[6]), .B2(en), .ZN(n24)
         );
  INR2D1BWP12T30P140 U92 ( .A1(n73), .B1(n72), .ZN(n75) );
  INVD0BWP12T30P140 U93 ( .I(acc[14]), .ZN(n74) );
  OAI32D0BWP12T30P140 U94 ( .A1(n101), .A2(n76), .A3(n75), .B1(en), .B2(n74), 
        .ZN(n32) );
  INR2D1BWP12T30P140 U95 ( .A1(n78), .B1(n77), .ZN(n80) );
  INVD0BWP12T30P140 U96 ( .I(acc[11]), .ZN(n79) );
  OAI32D0BWP12T30P140 U97 ( .A1(n101), .A2(n81), .A3(n80), .B1(en), .B2(n79), 
        .ZN(n29) );
  NR2D0BWP12T30P140 U98 ( .A1(n83), .A2(n82), .ZN(n85) );
  INVD0BWP12T30P140 U99 ( .I(acc[9]), .ZN(n84) );
  OAI32D0BWP12T30P140 U100 ( .A1(n101), .A2(n86), .A3(n85), .B1(en), .B2(n84), 
        .ZN(n27) );
  INR2D1BWP12T30P140 U101 ( .A1(n88), .B1(n87), .ZN(n90) );
  INVD0BWP12T30P140 U102 ( .I(acc[7]), .ZN(n89) );
  OAI32D0BWP12T30P140 U103 ( .A1(n101), .A2(n91), .A3(n90), .B1(en), .B2(n89), 
        .ZN(n25) );
  INVD0BWP12T30P140 U104 ( .I(acc[3]), .ZN(n95) );
  OAI21D0BWP12T30P140 U105 ( .A1(din[3]), .A2(n93), .B(en), .ZN(n92) );
  AOI21D0BWP12T30P140 U106 ( .A1(din[3]), .A2(n93), .B(n92), .ZN(n94) );
  MUX2ND0BWP12T30P140 U107 ( .I0(n95), .I1(acc[3]), .S(n94), .ZN(n21) );
  INVD0BWP12T30P140 U108 ( .I(n96), .ZN(n98) );
  AOI221D0BWP12T30P140 U109 ( .A1(din[2]), .A2(n98), .B1(n97), .B2(n96), .C(
        n101), .ZN(n99) );
  MUX2ND0BWP12T30P140 U110 ( .I0(n100), .I1(acc[2]), .S(n99), .ZN(n20) );
  INVD0BWP12T30P140 U111 ( .I(acc[1]), .ZN(n105) );
  AOI21D0BWP12T30P140 U112 ( .A1(din[0]), .A2(acc[0]), .B(din[1]), .ZN(n102)
         );
  AOI211D0BWP12T30P140 U113 ( .A1(n103), .A2(din[1]), .B(n102), .C(n101), .ZN(
        n104) );
  MUX2ND0BWP12T30P140 U114 ( .I0(n105), .I1(acc[1]), .S(n104), .ZN(n19) );
  INVD0BWP12T30P140 U115 ( .I(acc[0]), .ZN(n107) );
  ND2D0BWP12T30P140 U116 ( .A1(en), .A2(din[0]), .ZN(n106) );
  MUX2ND0BWP12T30P140 U117 ( .I0(acc[0]), .I1(n107), .S(n106), .ZN(n18) );
endmodule

