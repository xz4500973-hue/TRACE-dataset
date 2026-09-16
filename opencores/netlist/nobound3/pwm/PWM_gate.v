/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:58:05 2026
/////////////////////////////////////////////////////////////


module minus_one_1 ( i_operand, o_result, o_borrow );
  input [15:0] i_operand;
  output [15:0] o_result;
  output o_borrow;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  INVD0BWP12T30P140 U1 ( .I(i_operand[13]), .ZN(n16) );
  INVD0BWP12T30P140 U2 ( .I(i_operand[11]), .ZN(n14) );
  INVD0BWP12T30P140 U3 ( .I(i_operand[9]), .ZN(n12) );
  INVD0BWP12T30P140 U4 ( .I(i_operand[7]), .ZN(n8) );
  INVD0BWP12T30P140 U5 ( .I(i_operand[5]), .ZN(n6) );
  INVD0BWP12T30P140 U6 ( .I(i_operand[3]), .ZN(n3) );
  NR3D0BWP12T30P140 U7 ( .A1(i_operand[0]), .A2(i_operand[1]), .A3(
        i_operand[2]), .ZN(n4) );
  ND2D0BWP12T30P140 U8 ( .A1(n3), .A2(n4), .ZN(n2) );
  NR2D0BWP12T30P140 U9 ( .A1(i_operand[4]), .A2(n2), .ZN(n7) );
  ND2D0BWP12T30P140 U10 ( .A1(n6), .A2(n7), .ZN(n5) );
  NR2D0BWP12T30P140 U11 ( .A1(i_operand[6]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U12 ( .A1(n8), .A2(n9), .ZN(n10) );
  NR2D0BWP12T30P140 U13 ( .A1(i_operand[8]), .A2(n10), .ZN(n13) );
  ND2D0BWP12T30P140 U14 ( .A1(n12), .A2(n13), .ZN(n11) );
  NR2D0BWP12T30P140 U15 ( .A1(i_operand[10]), .A2(n11), .ZN(n15) );
  ND2D0BWP12T30P140 U16 ( .A1(n14), .A2(n15), .ZN(n18) );
  NR2D0BWP12T30P140 U17 ( .A1(i_operand[12]), .A2(n18), .ZN(n17) );
  ND2D0BWP12T30P140 U18 ( .A1(n16), .A2(n17), .ZN(n19) );
  NR2D0BWP12T30P140 U19 ( .A1(i_operand[14]), .A2(n19), .ZN(o_result[15]) );
  CKBD0BWP12T30P140 U20 ( .I(o_result[15]), .Z(o_borrow) );
  AO21D0BWP12T30P140 U21 ( .A1(i_operand[6]), .A2(n5), .B(n9), .Z(o_result[6])
         );
  AO21D0BWP12T30P140 U22 ( .A1(i_operand[4]), .A2(n2), .B(n7), .Z(o_result[4])
         );
  OR2D0BWP12T30P140 U23 ( .A1(i_operand[1]), .A2(i_operand[0]), .Z(n20) );
  AO21D0BWP12T30P140 U24 ( .A1(i_operand[2]), .A2(n20), .B(n4), .Z(o_result[2]) );
  INVD0BWP12T30P140 U25 ( .I(i_operand[0]), .ZN(o_result[0]) );
  OAI21D0BWP12T30P140 U26 ( .A1(n4), .A2(n3), .B(n2), .ZN(o_result[3]) );
  OAI21D0BWP12T30P140 U27 ( .A1(n7), .A2(n6), .B(n5), .ZN(o_result[5]) );
  OAI21D0BWP12T30P140 U28 ( .A1(n9), .A2(n8), .B(n10), .ZN(o_result[7]) );
  AO21D0BWP12T30P140 U29 ( .A1(i_operand[8]), .A2(n10), .B(n13), .Z(
        o_result[8]) );
  AO21D0BWP12T30P140 U30 ( .A1(i_operand[10]), .A2(n11), .B(n15), .Z(
        o_result[10]) );
  OAI21D0BWP12T30P140 U31 ( .A1(n13), .A2(n12), .B(n11), .ZN(o_result[9]) );
  OAI21D0BWP12T30P140 U32 ( .A1(n15), .A2(n14), .B(n18), .ZN(o_result[11]) );
  OAI21D0BWP12T30P140 U33 ( .A1(n17), .A2(n16), .B(n19), .ZN(o_result[13]) );
  AO21D0BWP12T30P140 U34 ( .A1(i_operand[12]), .A2(n18), .B(n17), .Z(
        o_result[12]) );
  AO21D0BWP12T30P140 U35 ( .A1(i_operand[14]), .A2(n19), .B(o_result[15]), .Z(
        o_result[14]) );
  IOA21D0BWP12T30P140 U36 ( .A1(i_operand[1]), .A2(i_operand[0]), .B(n20), 
        .ZN(o_result[1]) );
endmodule


module down_clocking_even ( i_clk, i_rst, i_divisor, o_clk );
  input [15:0] i_divisor;
  input i_clk, i_rst;
  output o_clk;
  wire   go, clk, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107;
  wire   [15:0] divisor;
  wire   [15:0] ct;

  minus_one_1 minus_one_0 ( .i_operand({n69, i_divisor[14:0]}), .o_result(
        divisor) );
  DFCNQD1BWP12T30P140 ct_reg_15_ ( .D(n67), .CP(i_clk), .CDN(n107), .Q(ct[15])
         );
  DFCNQD1BWP12T30P140 ct_reg_9_ ( .D(n61), .CP(i_clk), .CDN(n107), .Q(ct[9])
         );
  DFCNQD1BWP12T30P140 ct_reg_7_ ( .D(n59), .CP(i_clk), .CDN(n107), .Q(ct[7])
         );
  DFCNQD1BWP12T30P140 ct_reg_5_ ( .D(n57), .CP(i_clk), .CDN(n107), .Q(ct[5])
         );
  DFCNQD1BWP12T30P140 ct_reg_3_ ( .D(n55), .CP(i_clk), .CDN(n107), .Q(ct[3])
         );
  DFCNQD1BWP12T30P140 ct_reg_13_ ( .D(n65), .CP(i_clk), .CDN(n107), .Q(ct[13])
         );
  DFCNQD1BWP12T30P140 ct_reg_12_ ( .D(n64), .CP(i_clk), .CDN(n107), .Q(ct[12])
         );
  DFCNQD1BWP12T30P140 ct_reg_10_ ( .D(n62), .CP(i_clk), .CDN(n107), .Q(ct[10])
         );
  DFCNQD1BWP12T30P140 ct_reg_11_ ( .D(n63), .CP(i_clk), .CDN(n107), .Q(ct[11])
         );
  DFCNQD1BWP12T30P140 clk_reg ( .D(n68), .CP(i_clk), .CDN(n107), .Q(clk) );
  DFCNQD1BWP12T30P140 ct_reg_1_ ( .D(n53), .CP(i_clk), .CDN(n107), .Q(ct[1])
         );
  DFCNQD1BWP12T30P140 ct_reg_8_ ( .D(n60), .CP(i_clk), .CDN(n107), .Q(ct[8])
         );
  DFCNQD1BWP12T30P140 ct_reg_14_ ( .D(n66), .CP(i_clk), .CDN(n107), .Q(ct[14])
         );
  DFCNQD1BWP12T30P140 ct_reg_6_ ( .D(n58), .CP(i_clk), .CDN(n107), .Q(ct[6])
         );
  DFCNQD1BWP12T30P140 ct_reg_4_ ( .D(n56), .CP(i_clk), .CDN(n107), .Q(ct[4])
         );
  DFCNQD1BWP12T30P140 ct_reg_2_ ( .D(n54), .CP(i_clk), .CDN(n107), .Q(ct[2])
         );
  DFCNQD1BWP12T30P140 ct_reg_0_ ( .D(n52), .CP(i_clk), .CDN(n107), .Q(ct[0])
         );
  CKMUX2D0BWP12T30P140 U73 ( .I0(i_clk), .I1(clk), .S(go), .Z(o_clk) );
  INVD0BWP12T30P140 U3 ( .I(n102), .ZN(n2) );
  TIELBWP12T30P140 U4 ( .ZN(n69) );
  NR4D0BWP12T30P140 U5 ( .A1(i_divisor[12]), .A2(i_divisor[1]), .A3(
        i_divisor[7]), .A4(i_divisor[5]), .ZN(n6) );
  NR4D0BWP12T30P140 U6 ( .A1(i_divisor[4]), .A2(i_divisor[0]), .A3(
        i_divisor[10]), .A4(i_divisor[11]), .ZN(n5) );
  OR4D0BWP12T30P140 U7 ( .A1(i_divisor[8]), .A2(i_divisor[9]), .A3(
        i_divisor[6]), .A4(i_divisor[13]), .Z(n3) );
  NR4D0BWP12T30P140 U8 ( .A1(i_divisor[2]), .A2(i_divisor[3]), .A3(
        i_divisor[14]), .A4(n3), .ZN(n4) );
  INVD0BWP12T30P140 U9 ( .I(i_rst), .ZN(n104) );
  AOI31D0BWP12T30P140 U10 ( .A1(n6), .A2(n5), .A3(n4), .B(n104), .ZN(go) );
  INVD0BWP12T30P140 U11 ( .I(ct[15]), .ZN(n35) );
  INVD0BWP12T30P140 U12 ( .I(divisor[14]), .ZN(n28) );
  NR2D0BWP12T30P140 U13 ( .A1(divisor[15]), .A2(n35), .ZN(n27) );
  NR3D0BWP12T30P140 U14 ( .A1(n28), .A2(ct[14]), .A3(n27), .ZN(n34) );
  INVD0BWP12T30P140 U15 ( .I(ct[12]), .ZN(n48) );
  INVD0BWP12T30P140 U16 ( .I(ct[13]), .ZN(n45) );
  AOI22D0BWP12T30P140 U17 ( .A1(divisor[12]), .A2(n48), .B1(divisor[13]), .B2(
        n45), .ZN(n32) );
  INVD0BWP12T30P140 U18 ( .I(ct[11]), .ZN(n75) );
  NR2D0BWP12T30P140 U19 ( .A1(divisor[11]), .A2(n75), .ZN(n20) );
  INVD0BWP12T30P140 U20 ( .I(ct[9]), .ZN(n37) );
  NR2D0BWP12T30P140 U21 ( .A1(divisor[9]), .A2(n37), .ZN(n19) );
  INVD0BWP12T30P140 U22 ( .I(ct[10]), .ZN(n51) );
  INVD0BWP12T30P140 U23 ( .I(ct[8]), .ZN(n79) );
  OAI22D0BWP12T30P140 U24 ( .A1(divisor[10]), .A2(n51), .B1(divisor[8]), .B2(
        n79), .ZN(n18) );
  INVD0BWP12T30P140 U25 ( .I(ct[7]), .ZN(n39) );
  INVD0BWP12T30P140 U26 ( .I(ct[5]), .ZN(n41) );
  INVD0BWP12T30P140 U27 ( .I(ct[3]), .ZN(n43) );
  INVD0BWP12T30P140 U28 ( .I(ct[1]), .ZN(n98) );
  INR2D1BWP12T30P140 U29 ( .A1(divisor[0]), .B1(ct[0]), .ZN(n7) );
  MAOI222D0BWP12T30P140 U30 ( .A(divisor[1]), .B(n98), .C(n7), .ZN(n9) );
  INVD0BWP12T30P140 U31 ( .I(divisor[2]), .ZN(n8) );
  MAOI222D0BWP12T30P140 U32 ( .A(ct[2]), .B(n9), .C(n8), .ZN(n10) );
  MAOI222D0BWP12T30P140 U33 ( .A(divisor[3]), .B(n43), .C(n10), .ZN(n12) );
  INVD0BWP12T30P140 U34 ( .I(divisor[4]), .ZN(n11) );
  MAOI222D0BWP12T30P140 U35 ( .A(ct[4]), .B(n12), .C(n11), .ZN(n13) );
  MAOI222D0BWP12T30P140 U36 ( .A(divisor[5]), .B(n41), .C(n13), .ZN(n15) );
  INVD0BWP12T30P140 U37 ( .I(divisor[6]), .ZN(n14) );
  MAOI222D0BWP12T30P140 U38 ( .A(ct[6]), .B(n15), .C(n14), .ZN(n16) );
  MAOI222D0BWP12T30P140 U39 ( .A(divisor[7]), .B(n39), .C(n16), .ZN(n17) );
  NR4D0BWP12T30P140 U40 ( .A1(n20), .A2(n19), .A3(n18), .A4(n17), .ZN(n26) );
  OAI21D0BWP12T30P140 U41 ( .A1(divisor[9]), .A2(n37), .B(divisor[8]), .ZN(n21) );
  MOAI22D0BWP12T30P140 U42 ( .A1(ct[8]), .A2(n21), .B1(divisor[9]), .B2(n37), 
        .ZN(n22) );
  MAOI222D0BWP12T30P140 U43 ( .A(divisor[10]), .B(n51), .C(n22), .ZN(n24) );
  INVD0BWP12T30P140 U44 ( .I(divisor[11]), .ZN(n23) );
  MAOI222D0BWP12T30P140 U45 ( .A(ct[11]), .B(n24), .C(n23), .ZN(n25) );
  OAI22D0BWP12T30P140 U46 ( .A1(divisor[12]), .A2(n48), .B1(n26), .B2(n25), 
        .ZN(n31) );
  AOI21D0BWP12T30P140 U47 ( .A1(ct[14]), .A2(n28), .B(n27), .ZN(n29) );
  OAI21D0BWP12T30P140 U48 ( .A1(divisor[13]), .A2(n45), .B(n29), .ZN(n30) );
  AOI21D0BWP12T30P140 U49 ( .A1(n32), .A2(n31), .B(n30), .ZN(n33) );
  AOI211D0BWP12T30P140 U50 ( .A1(divisor[15]), .A2(n35), .B(n34), .C(n33), 
        .ZN(n77) );
  ND2D0BWP12T30P140 U51 ( .A1(n77), .A2(go), .ZN(n106) );
  INVD0BWP12T30P140 U52 ( .I(n106), .ZN(n105) );
  INVD0BWP12T30P140 U53 ( .I(ct[14]), .ZN(n83) );
  ND3D0BWP12T30P140 U54 ( .A1(ct[1]), .A2(ct[0]), .A3(ct[2]), .ZN(n42) );
  NR2D0BWP12T30P140 U55 ( .A1(n43), .A2(n42), .ZN(n92) );
  ND2D0BWP12T30P140 U56 ( .A1(ct[4]), .A2(n92), .ZN(n40) );
  NR2D0BWP12T30P140 U57 ( .A1(n41), .A2(n40), .ZN(n87) );
  ND2D0BWP12T30P140 U58 ( .A1(ct[6]), .A2(n87), .ZN(n38) );
  NR2D0BWP12T30P140 U59 ( .A1(n39), .A2(n38), .ZN(n78) );
  ND2D0BWP12T30P140 U60 ( .A1(ct[8]), .A2(n78), .ZN(n36) );
  NR2D0BWP12T30P140 U61 ( .A1(n37), .A2(n36), .ZN(n50) );
  ND2D0BWP12T30P140 U62 ( .A1(ct[10]), .A2(n50), .ZN(n74) );
  NR2D0BWP12T30P140 U63 ( .A1(n75), .A2(n74), .ZN(n47) );
  ND2D0BWP12T30P140 U64 ( .A1(ct[12]), .A2(n47), .ZN(n44) );
  INVD0BWP12T30P140 U65 ( .I(go), .ZN(n46) );
  NR2D0BWP12T30P140 U66 ( .A1(n77), .A2(n46), .ZN(n103) );
  IND3D1BWP12T30P140 U67 ( .A1(n44), .B1(ct[13]), .B2(n103), .ZN(n84) );
  OAI22D0BWP12T30P140 U68 ( .A1(n105), .A2(n35), .B1(n83), .B2(n84), .ZN(n67)
         );
  AOI21D0BWP12T30P140 U69 ( .A1(n103), .A2(n36), .B(n46), .ZN(n72) );
  ND2D0BWP12T30P140 U70 ( .A1(n103), .A2(n37), .ZN(n71) );
  OAI22D0BWP12T30P140 U71 ( .A1(n72), .A2(n37), .B1(n36), .B2(n71), .ZN(n61)
         );
  AOI21D0BWP12T30P140 U72 ( .A1(n103), .A2(n38), .B(n46), .ZN(n82) );
  ND2D0BWP12T30P140 U74 ( .A1(n103), .A2(n39), .ZN(n81) );
  OAI22D0BWP12T30P140 U75 ( .A1(n82), .A2(n39), .B1(n38), .B2(n81), .ZN(n59)
         );
  AOI21D0BWP12T30P140 U76 ( .A1(n103), .A2(n40), .B(n46), .ZN(n91) );
  ND2D0BWP12T30P140 U77 ( .A1(n103), .A2(n41), .ZN(n90) );
  OAI22D0BWP12T30P140 U78 ( .A1(n91), .A2(n41), .B1(n40), .B2(n90), .ZN(n57)
         );
  AOI21D0BWP12T30P140 U79 ( .A1(n103), .A2(n42), .B(n46), .ZN(n96) );
  ND2D0BWP12T30P140 U80 ( .A1(n103), .A2(n43), .ZN(n95) );
  OAI22D0BWP12T30P140 U81 ( .A1(n96), .A2(n43), .B1(n42), .B2(n95), .ZN(n55)
         );
  AOI21D0BWP12T30P140 U82 ( .A1(n103), .A2(n44), .B(n46), .ZN(n86) );
  ND2D0BWP12T30P140 U83 ( .A1(n103), .A2(n45), .ZN(n85) );
  OAI22D0BWP12T30P140 U84 ( .A1(n86), .A2(n45), .B1(n85), .B2(n44), .ZN(n65)
         );
  AOI21D0BWP12T30P140 U85 ( .A1(n2), .A2(n74), .B(n46), .ZN(n76) );
  ND2D0BWP12T30P140 U86 ( .A1(n103), .A2(n75), .ZN(n73) );
  ND2D0BWP12T30P140 U87 ( .A1(n103), .A2(n47), .ZN(n49) );
  AOI32D0BWP12T30P140 U88 ( .A1(n76), .A2(ct[12]), .A3(n73), .B1(n49), .B2(n48), .ZN(n64) );
  ND2D0BWP12T30P140 U89 ( .A1(n103), .A2(n50), .ZN(n70) );
  AOI32D0BWP12T30P140 U90 ( .A1(n72), .A2(ct[10]), .A3(n71), .B1(n70), .B2(n51), .ZN(n62) );
  OAI22D0BWP12T30P140 U91 ( .A1(n76), .A2(n75), .B1(n74), .B2(n73), .ZN(n63)
         );
  OAI21D0BWP12T30P140 U92 ( .A1(ct[0]), .A2(n77), .B(go), .ZN(n97) );
  AO32D0BWP12T30P140 U93 ( .A1(n98), .A2(ct[0]), .A3(n103), .B1(n97), .B2(
        ct[1]), .Z(n53) );
  ND2D0BWP12T30P140 U94 ( .A1(n103), .A2(n78), .ZN(n80) );
  AOI32D0BWP12T30P140 U95 ( .A1(n82), .A2(ct[8]), .A3(n81), .B1(n80), .B2(n79), 
        .ZN(n60) );
  AOI32D0BWP12T30P140 U96 ( .A1(n86), .A2(ct[14]), .A3(n85), .B1(n84), .B2(n83), .ZN(n66) );
  ND2D0BWP12T30P140 U97 ( .A1(n103), .A2(n87), .ZN(n89) );
  INVD0BWP12T30P140 U98 ( .I(ct[6]), .ZN(n88) );
  AOI32D0BWP12T30P140 U99 ( .A1(n91), .A2(ct[6]), .A3(n90), .B1(n89), .B2(n88), 
        .ZN(n58) );
  ND2D0BWP12T30P140 U100 ( .A1(n103), .A2(n92), .ZN(n94) );
  INVD0BWP12T30P140 U101 ( .I(ct[4]), .ZN(n93) );
  AOI32D0BWP12T30P140 U102 ( .A1(n96), .A2(ct[4]), .A3(n95), .B1(n94), .B2(n93), .ZN(n56) );
  INVD0BWP12T30P140 U103 ( .I(n103), .ZN(n102) );
  ND2D0BWP12T30P140 U104 ( .A1(ct[1]), .A2(ct[0]), .ZN(n101) );
  AOI21D0BWP12T30P140 U105 ( .A1(n2), .A2(n98), .B(n97), .ZN(n100) );
  INVD0BWP12T30P140 U106 ( .I(ct[2]), .ZN(n99) );
  OAI32D0BWP12T30P140 U107 ( .A1(ct[2]), .A2(n102), .A3(n101), .B1(n100), .B2(
        n99), .ZN(n54) );
  MAOI22D0BWP12T30P140 U108 ( .A1(ct[0]), .A2(go), .B1(n103), .B2(ct[0]), .ZN(
        n52) );
  INVD0BWP12T30P140 U109 ( .I(n104), .ZN(n107) );
  MUX2ND0BWP12T30P140 U110 ( .I0(n106), .I1(n105), .S(clk), .ZN(n68) );
endmodule


module minus_one_0 ( i_operand, o_result, o_borrow );
  input [15:0] i_operand;
  output [15:0] o_result;
  output o_borrow;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  INVD0BWP12T30P140 U1 ( .I(i_operand[13]), .ZN(n17) );
  INVD0BWP12T30P140 U2 ( .I(i_operand[11]), .ZN(n14) );
  INVD0BWP12T30P140 U3 ( .I(i_operand[9]), .ZN(n11) );
  INVD0BWP12T30P140 U4 ( .I(i_operand[7]), .ZN(n8) );
  INVD0BWP12T30P140 U5 ( .I(i_operand[5]), .ZN(n6) );
  INVD0BWP12T30P140 U6 ( .I(i_operand[3]), .ZN(n3) );
  NR3D0BWP12T30P140 U7 ( .A1(i_operand[0]), .A2(i_operand[1]), .A3(
        i_operand[2]), .ZN(n4) );
  ND2D0BWP12T30P140 U8 ( .A1(n3), .A2(n4), .ZN(n2) );
  NR2D0BWP12T30P140 U9 ( .A1(i_operand[4]), .A2(n2), .ZN(n7) );
  ND2D0BWP12T30P140 U10 ( .A1(n6), .A2(n7), .ZN(n5) );
  NR2D0BWP12T30P140 U11 ( .A1(i_operand[6]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U12 ( .A1(n8), .A2(n9), .ZN(n13) );
  NR2D0BWP12T30P140 U13 ( .A1(i_operand[8]), .A2(n13), .ZN(n12) );
  ND2D0BWP12T30P140 U14 ( .A1(n11), .A2(n12), .ZN(n10) );
  NR2D0BWP12T30P140 U15 ( .A1(i_operand[10]), .A2(n10), .ZN(n15) );
  ND2D0BWP12T30P140 U16 ( .A1(n14), .A2(n15), .ZN(n16) );
  NR2D0BWP12T30P140 U17 ( .A1(i_operand[12]), .A2(n16), .ZN(n18) );
  ND2D0BWP12T30P140 U18 ( .A1(n17), .A2(n18), .ZN(n19) );
  NR2D0BWP12T30P140 U19 ( .A1(i_operand[14]), .A2(n19), .ZN(o_result[15]) );
  CKBD0BWP12T30P140 U20 ( .I(o_result[15]), .Z(o_borrow) );
  AO21D0BWP12T30P140 U21 ( .A1(i_operand[10]), .A2(n10), .B(n15), .Z(
        o_result[10]) );
  AO21D0BWP12T30P140 U22 ( .A1(i_operand[6]), .A2(n5), .B(n9), .Z(o_result[6])
         );
  AO21D0BWP12T30P140 U23 ( .A1(i_operand[4]), .A2(n2), .B(n7), .Z(o_result[4])
         );
  OR2D0BWP12T30P140 U24 ( .A1(i_operand[1]), .A2(i_operand[0]), .Z(n20) );
  AO21D0BWP12T30P140 U25 ( .A1(i_operand[2]), .A2(n20), .B(n4), .Z(o_result[2]) );
  INVD0BWP12T30P140 U26 ( .I(i_operand[0]), .ZN(o_result[0]) );
  OAI21D0BWP12T30P140 U27 ( .A1(n4), .A2(n3), .B(n2), .ZN(o_result[3]) );
  OAI21D0BWP12T30P140 U28 ( .A1(n7), .A2(n6), .B(n5), .ZN(o_result[5]) );
  OAI21D0BWP12T30P140 U29 ( .A1(n9), .A2(n8), .B(n13), .ZN(o_result[7]) );
  OAI21D0BWP12T30P140 U30 ( .A1(n12), .A2(n11), .B(n10), .ZN(o_result[9]) );
  AO21D0BWP12T30P140 U31 ( .A1(i_operand[8]), .A2(n13), .B(n12), .Z(
        o_result[8]) );
  OAI21D0BWP12T30P140 U32 ( .A1(n15), .A2(n14), .B(n16), .ZN(o_result[11]) );
  AO21D0BWP12T30P140 U33 ( .A1(i_operand[12]), .A2(n16), .B(n18), .Z(
        o_result[12]) );
  OAI21D0BWP12T30P140 U34 ( .A1(n18), .A2(n17), .B(n19), .ZN(o_result[13]) );
  AO21D0BWP12T30P140 U35 ( .A1(i_operand[14]), .A2(n19), .B(o_result[15]), .Z(
        o_result[14]) );
  IOA21D0BWP12T30P140 U36 ( .A1(i_operand[1]), .A2(i_operand[0]), .B(n20), 
        .ZN(o_result[1]) );
endmodule


module down_clocking_odd ( i_clk, i_rst, i_divisor, o_clk );
  input [15:0] i_divisor;
  input i_clk, i_rst;
  output o_clk;
  wire   a, b, c, go, clk, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211;
  wire   [15:0] divisor;
  wire   [15:0] ct_0;
  wire   [15:0] ct_1;

  minus_one_0 minus_one_0 ( .i_operand({n123, i_divisor[14:0]}), .o_result(
        divisor) );
  DFNCND1BWP12T30P140 b_reg ( .D(n121), .CPN(n211), .CDN(n210), .Q(b), .QN(
        n207) );
  DFNCND1BWP12T30P140 ct_1_reg_15_ ( .D(n119), .CPN(n211), .CDN(n210), .Q(
        ct_1[15]), .QN(n208) );
  DFNCND1BWP12T30P140 ct_1_reg_0_ ( .D(n118), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[0]), .QN(n197) );
  DFNCND1BWP12T30P140 ct_1_reg_1_ ( .D(n117), .CPN(n211), .CDN(n210), .Q(
        ct_1[1]), .QN(n194) );
  DFNCND1BWP12T30P140 ct_1_reg_2_ ( .D(n116), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[2]), .QN(n200) );
  DFNCND1BWP12T30P140 ct_1_reg_3_ ( .D(n115), .CPN(n211), .CDN(n210), .Q(
        ct_1[3]), .QN(n201) );
  DFNCND1BWP12T30P140 ct_1_reg_4_ ( .D(n114), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[4]), .QN(n204) );
  DFNCND1BWP12T30P140 ct_1_reg_5_ ( .D(n113), .CPN(n211), .CDN(n210), .Q(
        ct_1[5]), .QN(n202) );
  DFNCND1BWP12T30P140 ct_1_reg_6_ ( .D(n112), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[6]), .QN(n205) );
  DFNCND1BWP12T30P140 ct_1_reg_7_ ( .D(n111), .CPN(n211), .CDN(n210), .Q(
        ct_1[7]), .QN(n203) );
  DFNCND1BWP12T30P140 ct_1_reg_8_ ( .D(n110), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[8]), .QN(n199) );
  DFNCND1BWP12T30P140 ct_1_reg_9_ ( .D(n109), .CPN(n211), .CDN(n210), .Q(
        ct_1[9]), .QN(n195) );
  DFNCND1BWP12T30P140 ct_1_reg_10_ ( .D(n108), .CPN(i_clk), .CDN(n210), .Q(
        ct_1[10]), .QN(n206) );
  DFNCND1BWP12T30P140 ct_1_reg_11_ ( .D(n107), .CPN(n211), .CDN(n210), .Q(
        ct_1[11]) );
  DFNCND1BWP12T30P140 ct_1_reg_12_ ( .D(n106), .CPN(n211), .CDN(n210), .Q(
        ct_1[12]), .QN(n198) );
  DFNCND1BWP12T30P140 ct_1_reg_13_ ( .D(n105), .CPN(n211), .CDN(n209), .Q(
        ct_1[13]), .QN(n193) );
  DFNCND1BWP12T30P140 ct_1_reg_14_ ( .D(n104), .CPN(i_clk), .CDN(i_rst), .Q(
        ct_1[14]), .QN(n196) );
  DFCNQD1BWP12T30P140 clk_reg ( .D(n122), .CP(c), .CDN(n209), .Q(clk) );
  DFCNQD1BWP12T30P140 ct_0_reg_13_ ( .D(n89), .CP(n211), .CDN(n209), .Q(
        ct_0[13]) );
  DFCNQD1BWP12T30P140 ct_0_reg_12_ ( .D(n90), .CP(i_clk), .CDN(n209), .Q(
        ct_0[12]) );
  DFCNQD1BWP12T30P140 ct_0_reg_1_ ( .D(n101), .CP(i_clk), .CDN(n210), .Q(
        ct_0[1]) );
  DFCNQD1BWP12T30P140 ct_0_reg_14_ ( .D(n88), .CP(i_clk), .CDN(n209), .Q(
        ct_0[14]) );
  DFCNQD1BWP12T30P140 ct_0_reg_8_ ( .D(n94), .CP(i_clk), .CDN(n209), .Q(
        ct_0[8]) );
  DFCNQD1BWP12T30P140 ct_0_reg_7_ ( .D(n95), .CP(n211), .CDN(n209), .Q(ct_0[7]) );
  DFCNQD1BWP12T30P140 a_reg ( .D(n120), .CP(n211), .CDN(n210), .Q(a) );
  DFCNQD1BWP12T30P140 ct_0_reg_15_ ( .D(n103), .CP(i_clk), .CDN(n210), .Q(
        ct_0[15]) );
  DFCNQD1BWP12T30P140 ct_0_reg_10_ ( .D(n92), .CP(i_clk), .CDN(n209), .Q(
        ct_0[10]) );
  DFCNQD1BWP12T30P140 ct_0_reg_3_ ( .D(n99), .CP(i_clk), .CDN(n209), .Q(
        ct_0[3]) );
  DFCNQD1BWP12T30P140 ct_0_reg_5_ ( .D(n97), .CP(i_clk), .CDN(n209), .Q(
        ct_0[5]) );
  DFCNQD1BWP12T30P140 ct_0_reg_9_ ( .D(n93), .CP(i_clk), .CDN(n209), .Q(
        ct_0[9]) );
  DFCNQD1BWP12T30P140 ct_0_reg_2_ ( .D(n100), .CP(n211), .CDN(n210), .Q(
        ct_0[2]) );
  DFCNQD1BWP12T30P140 ct_0_reg_4_ ( .D(n98), .CP(n211), .CDN(n209), .Q(ct_0[4]) );
  DFCNQD1BWP12T30P140 ct_0_reg_6_ ( .D(n96), .CP(n211), .CDN(n209), .Q(ct_0[6]) );
  DFCNQD1BWP12T30P140 ct_0_reg_0_ ( .D(n102), .CP(n211), .CDN(n210), .Q(
        ct_0[0]) );
  DFCNQD1BWP12T30P140 ct_0_reg_11_ ( .D(n91), .CP(n211), .CDN(n209), .Q(
        ct_0[11]) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(n211), .I1(clk), .S(go), .Z(o_clk) );
  TIELBWP12T30P140 U3 ( .ZN(n123) );
  NR4D0BWP12T30P140 U4 ( .A1(i_divisor[12]), .A2(i_divisor[1]), .A3(
        i_divisor[7]), .A4(i_divisor[5]), .ZN(n5) );
  NR4D0BWP12T30P140 U5 ( .A1(i_divisor[4]), .A2(i_divisor[0]), .A3(
        i_divisor[10]), .A4(i_divisor[11]), .ZN(n4) );
  OR4D0BWP12T30P140 U6 ( .A1(i_divisor[8]), .A2(i_divisor[9]), .A3(
        i_divisor[6]), .A4(i_divisor[13]), .Z(n2) );
  NR4D0BWP12T30P140 U7 ( .A1(i_divisor[2]), .A2(i_divisor[3]), .A3(
        i_divisor[14]), .A4(n2), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(i_rst), .ZN(n192) );
  AOI31D0BWP12T30P140 U9 ( .A1(n5), .A2(n4), .A3(n3), .B(n192), .ZN(go) );
  INVD0BWP12T30P140 U10 ( .I(go), .ZN(n154) );
  INVD0BWP12T30P140 U11 ( .I(divisor[15]), .ZN(n70) );
  ND2D0BWP12T30P140 U12 ( .A1(ct_1[15]), .A2(n70), .ZN(n26) );
  AOI22D0BWP12T30P140 U13 ( .A1(divisor[13]), .A2(n193), .B1(divisor[12]), 
        .B2(n198), .ZN(n24) );
  INVD0BWP12T30P140 U14 ( .I(divisor[11]), .ZN(n60) );
  INVD0BWP12T30P140 U15 ( .I(divisor[8]), .ZN(n52) );
  NR2D0BWP12T30P140 U16 ( .A1(divisor[9]), .A2(n195), .ZN(n15) );
  INVD0BWP12T30P140 U17 ( .I(divisor[1]), .ZN(n40) );
  AOI21D0BWP12T30P140 U18 ( .A1(ct_1[1]), .A2(n40), .B(ct_1[0]), .ZN(n6) );
  AOI22D0BWP12T30P140 U19 ( .A1(n6), .A2(divisor[0]), .B1(divisor[1]), .B2(
        n194), .ZN(n7) );
  INVD0BWP12T30P140 U20 ( .I(divisor[2]), .ZN(n42) );
  MAOI222D0BWP12T30P140 U21 ( .A(ct_1[2]), .B(n7), .C(n42), .ZN(n8) );
  MAOI222D0BWP12T30P140 U22 ( .A(divisor[3]), .B(n8), .C(n201), .ZN(n9) );
  INVD0BWP12T30P140 U23 ( .I(divisor[4]), .ZN(n45) );
  MAOI222D0BWP12T30P140 U24 ( .A(ct_1[4]), .B(n9), .C(n45), .ZN(n10) );
  MAOI222D0BWP12T30P140 U25 ( .A(divisor[5]), .B(n10), .C(n202), .ZN(n11) );
  INVD0BWP12T30P140 U26 ( .I(divisor[6]), .ZN(n48) );
  MAOI222D0BWP12T30P140 U27 ( .A(ct_1[6]), .B(n11), .C(n48), .ZN(n12) );
  MAOI222D0BWP12T30P140 U28 ( .A(divisor[7]), .B(n12), .C(n203), .ZN(n13) );
  AOI211D0BWP12T30P140 U29 ( .A1(ct_1[8]), .A2(n52), .B(n15), .C(n13), .ZN(n18) );
  INVD0BWP12T30P140 U30 ( .I(divisor[10]), .ZN(n55) );
  AOI22D0BWP12T30P140 U31 ( .A1(divisor[9]), .A2(n195), .B1(divisor[8]), .B2(
        n199), .ZN(n14) );
  OAI22D0BWP12T30P140 U32 ( .A1(ct_1[10]), .A2(n55), .B1(n15), .B2(n14), .ZN(
        n17) );
  AOI22D0BWP12T30P140 U33 ( .A1(ct_1[10]), .A2(n55), .B1(ct_1[11]), .B2(n60), 
        .ZN(n16) );
  OAI21D0BWP12T30P140 U34 ( .A1(n18), .A2(n17), .B(n16), .ZN(n19) );
  OAI21D0BWP12T30P140 U35 ( .A1(ct_1[11]), .A2(n60), .B(n19), .ZN(n20) );
  OAI21D0BWP12T30P140 U36 ( .A1(divisor[12]), .A2(n198), .B(n20), .ZN(n23) );
  INVD0BWP12T30P140 U37 ( .I(divisor[14]), .ZN(n62) );
  AOI22D0BWP12T30P140 U38 ( .A1(ct_1[14]), .A2(n62), .B1(ct_1[15]), .B2(n70), 
        .ZN(n21) );
  OAI21D0BWP12T30P140 U39 ( .A1(divisor[13]), .A2(n193), .B(n21), .ZN(n22) );
  AOI21D0BWP12T30P140 U40 ( .A1(n24), .A2(n23), .B(n22), .ZN(n25) );
  AOI31D0BWP12T30P140 U41 ( .A1(divisor[14]), .A2(n26), .A3(n196), .B(n25), 
        .ZN(n27) );
  OAI21D0BWP12T30P140 U42 ( .A1(ct_1[15]), .A2(n70), .B(n27), .ZN(n28) );
  ND2D0BWP12T30P140 U43 ( .A1(go), .A2(b), .ZN(n30) );
  NR2D0BWP12T30P140 U44 ( .A1(n28), .A2(n30), .ZN(n29) );
  AOI221D0BWP12T30P140 U45 ( .A1(a), .A2(n207), .B1(n154), .B2(n207), .C(n29), 
        .ZN(n121) );
  INVD0BWP12T30P140 U46 ( .I(n30), .ZN(n177) );
  ND2D0BWP12T30P140 U47 ( .A1(n177), .A2(n28), .ZN(n178) );
  NR3D0BWP12T30P140 U48 ( .A1(n200), .A2(n194), .A3(n197), .ZN(n35) );
  ND2D0BWP12T30P140 U49 ( .A1(ct_1[3]), .A2(n35), .ZN(n39) );
  NR2D0BWP12T30P140 U50 ( .A1(n204), .A2(n39), .ZN(n72) );
  ND2D0BWP12T30P140 U51 ( .A1(ct_1[5]), .A2(n72), .ZN(n84) );
  NR2D0BWP12T30P140 U52 ( .A1(n205), .A2(n84), .ZN(n124) );
  ND2D0BWP12T30P140 U53 ( .A1(ct_1[7]), .A2(n124), .ZN(n133) );
  NR2D0BWP12T30P140 U54 ( .A1(n199), .A2(n133), .ZN(n140) );
  ND2D0BWP12T30P140 U55 ( .A1(ct_1[9]), .A2(n140), .ZN(n149) );
  NR2D0BWP12T30P140 U56 ( .A1(n206), .A2(n149), .ZN(n156) );
  ND2D0BWP12T30P140 U57 ( .A1(ct_1[11]), .A2(n156), .ZN(n176) );
  NR3D0BWP12T30P140 U58 ( .A1(n198), .A2(n178), .A3(n176), .ZN(n180) );
  ND2D0BWP12T30P140 U59 ( .A1(ct_1[13]), .A2(n180), .ZN(n187) );
  OAI22D0BWP12T30P140 U60 ( .A1(n29), .A2(n208), .B1(n196), .B2(n187), .ZN(
        n119) );
  NR2D0BWP12T30P140 U61 ( .A1(ct_1[0]), .A2(n178), .ZN(n31) );
  AO21D0BWP12T30P140 U62 ( .A1(ct_1[0]), .A2(n30), .B(n31), .Z(n118) );
  NR2D0BWP12T30P140 U63 ( .A1(n31), .A2(n30), .ZN(n34) );
  INVD0BWP12T30P140 U64 ( .I(n178), .ZN(n186) );
  ND2D0BWP12T30P140 U65 ( .A1(n186), .A2(n194), .ZN(n33) );
  OAI22D0BWP12T30P140 U66 ( .A1(n34), .A2(n194), .B1(n197), .B2(n33), .ZN(n117) );
  ND3D0BWP12T30P140 U67 ( .A1(ct_1[1]), .A2(ct_1[0]), .A3(n186), .ZN(n32) );
  AOI32D0BWP12T30P140 U68 ( .A1(n34), .A2(ct_1[2]), .A3(n33), .B1(n32), .B2(
        n200), .ZN(n116) );
  OAI21D0BWP12T30P140 U69 ( .A1(n35), .A2(n178), .B(n177), .ZN(n37) );
  NR2D0BWP12T30P140 U70 ( .A1(ct_1[3]), .A2(n178), .ZN(n36) );
  AO22D0BWP12T30P140 U71 ( .A1(ct_1[3]), .A2(n37), .B1(n36), .B2(n35), .Z(n115) );
  AOI21D0BWP12T30P140 U72 ( .A1(n186), .A2(n201), .B(n37), .ZN(n38) );
  OAI32D0BWP12T30P140 U73 ( .A1(ct_1[4]), .A2(n178), .A3(n39), .B1(n38), .B2(
        n204), .ZN(n114) );
  INVD0BWP12T30P140 U74 ( .I(ct_0[10]), .ZN(n144) );
  INVD0BWP12T30P140 U75 ( .I(ct_0[8]), .ZN(n164) );
  INVD0BWP12T30P140 U76 ( .I(ct_0[6]), .ZN(n75) );
  INVD0BWP12T30P140 U77 ( .I(ct_0[4]), .ZN(n79) );
  INVD0BWP12T30P140 U78 ( .I(ct_0[2]), .ZN(n86) );
  INVD0BWP12T30P140 U79 ( .I(ct_0[1]), .ZN(n183) );
  INVD0BWP12T30P140 U80 ( .I(ct_0[0]), .ZN(n182) );
  NR3D0BWP12T30P140 U81 ( .A1(n86), .A2(n183), .A3(n182), .ZN(n137) );
  ND2D0BWP12T30P140 U82 ( .A1(ct_0[3]), .A2(n137), .ZN(n81) );
  NR2D0BWP12T30P140 U83 ( .A1(n79), .A2(n81), .ZN(n128) );
  ND2D0BWP12T30P140 U84 ( .A1(ct_0[5]), .A2(n128), .ZN(n77) );
  NR2D0BWP12T30P140 U85 ( .A1(n75), .A2(n77), .ZN(n158) );
  ND2D0BWP12T30P140 U86 ( .A1(ct_0[7]), .A2(n158), .ZN(n166) );
  NR2D0BWP12T30P140 U87 ( .A1(n164), .A2(n166), .ZN(n126) );
  ND2D0BWP12T30P140 U88 ( .A1(ct_0[9]), .A2(n126), .ZN(n146) );
  NR2D0BWP12T30P140 U89 ( .A1(n144), .A2(n146), .ZN(n134) );
  ND2D0BWP12T30P140 U90 ( .A1(go), .A2(a), .ZN(n150) );
  INVD0BWP12T30P140 U91 ( .I(n150), .ZN(n169) );
  ND2D0BWP12T30P140 U92 ( .A1(ct_0[15]), .A2(n70), .ZN(n68) );
  INVD0BWP12T30P140 U93 ( .I(ct_0[14]), .ZN(n173) );
  INVD0BWP12T30P140 U94 ( .I(ct_0[13]), .ZN(n189) );
  INVD0BWP12T30P140 U95 ( .I(ct_0[12]), .ZN(n168) );
  AOI22D0BWP12T30P140 U96 ( .A1(divisor[13]), .A2(n189), .B1(divisor[12]), 
        .B2(n168), .ZN(n66) );
  INVD0BWP12T30P140 U97 ( .I(ct_0[9]), .ZN(n143) );
  NR2D0BWP12T30P140 U98 ( .A1(divisor[9]), .A2(n143), .ZN(n54) );
  AOI21D0BWP12T30P140 U99 ( .A1(ct_0[1]), .A2(n40), .B(ct_0[0]), .ZN(n41) );
  AOI22D0BWP12T30P140 U100 ( .A1(divisor[0]), .A2(n41), .B1(divisor[1]), .B2(
        n183), .ZN(n43) );
  MAOI222D0BWP12T30P140 U101 ( .A(ct_0[2]), .B(n43), .C(n42), .ZN(n44) );
  INVD0BWP12T30P140 U102 ( .I(ct_0[3]), .ZN(n78) );
  MAOI222D0BWP12T30P140 U103 ( .A(divisor[3]), .B(n44), .C(n78), .ZN(n46) );
  MAOI222D0BWP12T30P140 U104 ( .A(ct_0[4]), .B(n46), .C(n45), .ZN(n47) );
  INVD0BWP12T30P140 U105 ( .I(ct_0[5]), .ZN(n74) );
  MAOI222D0BWP12T30P140 U106 ( .A(divisor[5]), .B(n47), .C(n74), .ZN(n49) );
  MAOI222D0BWP12T30P140 U107 ( .A(ct_0[6]), .B(n49), .C(n48), .ZN(n50) );
  INVD0BWP12T30P140 U108 ( .I(ct_0[7]), .ZN(n163) );
  MAOI222D0BWP12T30P140 U109 ( .A(divisor[7]), .B(n50), .C(n163), .ZN(n51) );
  AOI211D0BWP12T30P140 U110 ( .A1(ct_0[8]), .A2(n52), .B(n54), .C(n51), .ZN(
        n58) );
  AOI22D0BWP12T30P140 U111 ( .A1(divisor[9]), .A2(n143), .B1(divisor[8]), .B2(
        n164), .ZN(n53) );
  OAI22D0BWP12T30P140 U112 ( .A1(ct_0[10]), .A2(n55), .B1(n54), .B2(n53), .ZN(
        n57) );
  AOI22D0BWP12T30P140 U113 ( .A1(ct_0[10]), .A2(n55), .B1(ct_0[11]), .B2(n60), 
        .ZN(n56) );
  OAI21D0BWP12T30P140 U114 ( .A1(n58), .A2(n57), .B(n56), .ZN(n59) );
  OAI21D0BWP12T30P140 U115 ( .A1(ct_0[11]), .A2(n60), .B(n59), .ZN(n61) );
  OAI21D0BWP12T30P140 U116 ( .A1(divisor[12]), .A2(n168), .B(n61), .ZN(n65) );
  AOI22D0BWP12T30P140 U117 ( .A1(ct_0[14]), .A2(n62), .B1(ct_0[15]), .B2(n70), 
        .ZN(n63) );
  OAI21D0BWP12T30P140 U118 ( .A1(divisor[13]), .A2(n189), .B(n63), .ZN(n64) );
  AOI21D0BWP12T30P140 U119 ( .A1(n66), .A2(n65), .B(n64), .ZN(n67) );
  AOI31D0BWP12T30P140 U120 ( .A1(divisor[14]), .A2(n68), .A3(n173), .B(n67), 
        .ZN(n69) );
  OAI21D0BWP12T30P140 U121 ( .A1(ct_0[15]), .A2(n70), .B(n69), .ZN(n151) );
  ND2D0BWP12T30P140 U122 ( .A1(n169), .A2(n151), .ZN(n170) );
  OAI21D0BWP12T30P140 U123 ( .A1(n134), .A2(n170), .B(n169), .ZN(n135) );
  NR2D0BWP12T30P140 U124 ( .A1(ct_0[11]), .A2(n170), .ZN(n71) );
  AO22D0BWP12T30P140 U125 ( .A1(ct_0[11]), .A2(n135), .B1(n71), .B2(n134), .Z(
        n91) );
  NR2D0BWP12T30P140 U126 ( .A1(ct_0[0]), .A2(n170), .ZN(n85) );
  AO21D0BWP12T30P140 U127 ( .A1(ct_0[0]), .A2(n150), .B(n85), .Z(n102) );
  OAI21D0BWP12T30P140 U129 ( .A1(n72), .A2(n178), .B(n177), .ZN(n82) );
  NR2D0BWP12T30P140 U130 ( .A1(ct_1[5]), .A2(n178), .ZN(n73) );
  AO22D0BWP12T30P140 U131 ( .A1(ct_1[5]), .A2(n82), .B1(n73), .B2(n72), .Z(
        n113) );
  INVD0BWP12T30P140 U132 ( .I(n170), .ZN(n172) );
  OAI21D0BWP12T30P140 U133 ( .A1(n128), .A2(n170), .B(n169), .ZN(n130) );
  AOI21D0BWP12T30P140 U134 ( .A1(n172), .A2(n74), .B(n130), .ZN(n76) );
  OAI32D0BWP12T30P140 U135 ( .A1(ct_0[6]), .A2(n170), .A3(n77), .B1(n76), .B2(
        n75), .ZN(n96) );
  OAI21D0BWP12T30P140 U136 ( .A1(n137), .A2(n170), .B(n169), .ZN(n139) );
  AOI21D0BWP12T30P140 U137 ( .A1(n172), .A2(n78), .B(n139), .ZN(n80) );
  OAI32D0BWP12T30P140 U138 ( .A1(ct_0[4]), .A2(n170), .A3(n81), .B1(n80), .B2(
        n79), .ZN(n98) );
  AOI21D0BWP12T30P140 U139 ( .A1(n186), .A2(n202), .B(n82), .ZN(n83) );
  OAI32D0BWP12T30P140 U140 ( .A1(ct_1[6]), .A2(n178), .A3(n84), .B1(n83), .B2(
        n205), .ZN(n112) );
  NR2D0BWP12T30P140 U141 ( .A1(n85), .A2(n150), .ZN(n184) );
  ND2D0BWP12T30P140 U142 ( .A1(n172), .A2(n183), .ZN(n181) );
  ND3D0BWP12T30P140 U143 ( .A1(ct_0[1]), .A2(ct_0[0]), .A3(n172), .ZN(n87) );
  AOI32D0BWP12T30P140 U144 ( .A1(n184), .A2(ct_0[2]), .A3(n181), .B1(n87), 
        .B2(n86), .ZN(n100) );
  OAI21D0BWP12T30P140 U145 ( .A1(n124), .A2(n178), .B(n177), .ZN(n131) );
  NR2D0BWP12T30P140 U146 ( .A1(ct_1[7]), .A2(n178), .ZN(n125) );
  AO22D0BWP12T30P140 U147 ( .A1(ct_1[7]), .A2(n131), .B1(n125), .B2(n124), .Z(
        n111) );
  OAI21D0BWP12T30P140 U148 ( .A1(n126), .A2(n170), .B(n169), .ZN(n142) );
  NR2D0BWP12T30P140 U149 ( .A1(ct_0[9]), .A2(n170), .ZN(n127) );
  AO22D0BWP12T30P140 U150 ( .A1(ct_0[9]), .A2(n142), .B1(n127), .B2(n126), .Z(
        n93) );
  NR2D0BWP12T30P140 U151 ( .A1(ct_0[5]), .A2(n170), .ZN(n129) );
  AO22D0BWP12T30P140 U152 ( .A1(ct_0[5]), .A2(n130), .B1(n129), .B2(n128), .Z(
        n97) );
  AOI21D0BWP12T30P140 U153 ( .A1(n186), .A2(n203), .B(n131), .ZN(n132) );
  OAI32D0BWP12T30P140 U154 ( .A1(ct_1[8]), .A2(n178), .A3(n133), .B1(n132), 
        .B2(n199), .ZN(n110) );
  ND2D0BWP12T30P140 U155 ( .A1(ct_0[11]), .A2(n134), .ZN(n167) );
  IAO21D0BWP12T30P140 U156 ( .A1(n170), .A2(ct_0[11]), .B(n135), .ZN(n136) );
  OAI32D0BWP12T30P140 U157 ( .A1(ct_0[12]), .A2(n170), .A3(n167), .B1(n136), 
        .B2(n168), .ZN(n90) );
  NR2D0BWP12T30P140 U158 ( .A1(ct_0[3]), .A2(n170), .ZN(n138) );
  AO22D0BWP12T30P140 U159 ( .A1(ct_0[3]), .A2(n139), .B1(n138), .B2(n137), .Z(
        n99) );
  OAI21D0BWP12T30P140 U160 ( .A1(n140), .A2(n178), .B(n177), .ZN(n147) );
  NR2D0BWP12T30P140 U161 ( .A1(ct_1[9]), .A2(n178), .ZN(n141) );
  AO22D0BWP12T30P140 U162 ( .A1(ct_1[9]), .A2(n147), .B1(n141), .B2(n140), .Z(
        n109) );
  AOI21D0BWP12T30P140 U163 ( .A1(n172), .A2(n143), .B(n142), .ZN(n145) );
  OAI32D0BWP12T30P140 U164 ( .A1(ct_0[10]), .A2(n170), .A3(n146), .B1(n145), 
        .B2(n144), .ZN(n92) );
  AOI21D0BWP12T30P140 U165 ( .A1(n186), .A2(n195), .B(n147), .ZN(n148) );
  OAI32D0BWP12T30P140 U166 ( .A1(ct_1[10]), .A2(n178), .A3(n149), .B1(n148), 
        .B2(n206), .ZN(n108) );
  NR2D0BWP12T30P140 U167 ( .A1(n151), .A2(n150), .ZN(n153) );
  INVD0BWP12T30P140 U168 ( .I(ct_0[15]), .ZN(n152) );
  NR3D0BWP12T30P140 U169 ( .A1(n168), .A2(n170), .A3(n167), .ZN(n190) );
  ND2D0BWP12T30P140 U170 ( .A1(ct_0[13]), .A2(n190), .ZN(n174) );
  OAI22D0BWP12T30P140 U171 ( .A1(n153), .A2(n152), .B1(n173), .B2(n174), .ZN(
        n103) );
  INVD0BWP12T30P140 U172 ( .I(a), .ZN(n155) );
  AOI221D0BWP12T30P140 U173 ( .A1(b), .A2(n155), .B1(n154), .B2(n155), .C(n153), .ZN(n120) );
  OAI21D0BWP12T30P140 U174 ( .A1(n156), .A2(n178), .B(n177), .ZN(n160) );
  NR2D0BWP12T30P140 U175 ( .A1(ct_1[11]), .A2(n178), .ZN(n157) );
  AO22D0BWP12T30P140 U176 ( .A1(ct_1[11]), .A2(n160), .B1(n157), .B2(n156), 
        .Z(n107) );
  OAI21D0BWP12T30P140 U177 ( .A1(n158), .A2(n170), .B(n169), .ZN(n162) );
  NR2D0BWP12T30P140 U178 ( .A1(ct_0[7]), .A2(n170), .ZN(n159) );
  AO22D0BWP12T30P140 U179 ( .A1(ct_0[7]), .A2(n162), .B1(n159), .B2(n158), .Z(
        n95) );
  IAO21D0BWP12T30P140 U180 ( .A1(n178), .A2(ct_1[11]), .B(n160), .ZN(n161) );
  OAI32D0BWP12T30P140 U181 ( .A1(ct_1[12]), .A2(n178), .A3(n176), .B1(n161), 
        .B2(n198), .ZN(n106) );
  AOI21D0BWP12T30P140 U182 ( .A1(n172), .A2(n163), .B(n162), .ZN(n165) );
  OAI32D0BWP12T30P140 U183 ( .A1(ct_0[8]), .A2(n170), .A3(n166), .B1(n165), 
        .B2(n164), .ZN(n94) );
  NR2D0BWP12T30P140 U184 ( .A1(n168), .A2(n167), .ZN(n171) );
  OAI21D0BWP12T30P140 U185 ( .A1(n171), .A2(n170), .B(n169), .ZN(n191) );
  AOI21D0BWP12T30P140 U186 ( .A1(n172), .A2(n189), .B(n191), .ZN(n175) );
  AOI22D0BWP12T30P140 U187 ( .A1(ct_0[14]), .A2(n175), .B1(n174), .B2(n173), 
        .ZN(n88) );
  NR2D0BWP12T30P140 U188 ( .A1(n198), .A2(n176), .ZN(n179) );
  OAI21D0BWP12T30P140 U189 ( .A1(n179), .A2(n178), .B(n177), .ZN(n185) );
  CKMUX2D0BWP12T30P140 U190 ( .I0(n185), .I1(n180), .S(n193), .Z(n105) );
  OAI22D0BWP12T30P140 U191 ( .A1(n184), .A2(n183), .B1(n182), .B2(n181), .ZN(
        n101) );
  AOI21D0BWP12T30P140 U192 ( .A1(n186), .A2(n193), .B(n185), .ZN(n188) );
  AOI22D0BWP12T30P140 U193 ( .A1(ct_1[14]), .A2(n188), .B1(n187), .B2(n196), 
        .ZN(n104) );
  CKMUX2D0BWP12T30P140 U194 ( .I0(n191), .I1(n190), .S(n189), .Z(n89) );
  INVD0BWP12T30P140 U195 ( .I(clk), .ZN(n122) );
  NR2D0BWP12T30P140 U196 ( .A1(b), .A2(a), .ZN(c) );
  CKBD0BWP12T30P140 U197 ( .I(i_clk), .Z(n211) );
  INVD0BWP12T30P140 U198 ( .I(n192), .ZN(n209) );
  INVD0BWP12T30P140 U199 ( .I(n192), .ZN(n210) );
endmodule


module PWM ( i_wb_clk, i_wb_rst, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_adr, 
        i_wb_data, o_wb_data, o_wb_ack, i_extclk, i_DC, i_valid_DC, o_pwm );
  input [15:0] i_wb_adr;
  input [15:0] i_wb_data;
  output [15:0] o_wb_data;
  input [15:0] i_DC;
  input i_wb_clk, i_wb_rst, i_wb_cyc, i_wb_stb, i_wb_we, i_extclk, i_valid_DC;
  output o_wb_ack, o_pwm;
  wire   n_Logic0_, clrint, clk_source, eclk, oclk, clk, pts,
         switch_ack_clrint, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n584, n585, n586, n587, n588, n589, n590, n591, n592;
  wire   [7:0] ctrl;
  wire   [15:0] DC;
  wire   [15:0] period;
  wire   [15:0] divisor;
  wire   [1:0] state;
  wire   [15:0] extDC;
  wire   [15:0] ct;

  down_clocking_even down_clocking_even_0 ( .i_clk(clk_source), .i_rst(n584), 
        .i_divisor({n_Logic0_, divisor[15:1]}), .o_clk(eclk) );
  down_clocking_odd down_clocking_odd_0 ( .i_clk(n589), .i_rst(n584), 
        .i_divisor({n_Logic0_, divisor[15:1]}), .o_clk(oclk) );
  DFCNQD1BWP12T30P140 DC_reg_0_ ( .D(n289), .CP(i_wb_clk), .CDN(n585), .Q(
        DC[0]) );
  DFCNQD1BWP12T30P140 ctrl_reg_5_ ( .D(n251), .CP(i_wb_clk), .CDN(n586), .Q(
        ctrl[5]) );
  DFCNQD1BWP12T30P140 ctrl_reg_4_ ( .D(n292), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[4]) );
  DFCNQD1BWP12T30P140 ctrl_reg_7_ ( .D(n290), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[7]) );
  DFCNQD1BWP12T30P140 ctrl_reg_1_ ( .D(n327), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[1]) );
  DFCNQD1BWP12T30P140 DC_reg_6_ ( .D(n283), .CP(n592), .CDN(n585), .Q(DC[6])
         );
  DFCNQD1BWP12T30P140 DC_reg_4_ ( .D(n285), .CP(n592), .CDN(n585), .Q(DC[4])
         );
  DFCNQD1BWP12T30P140 DC_reg_2_ ( .D(n287), .CP(n592), .CDN(n585), .Q(DC[2])
         );
  DFCNQD1BWP12T30P140 period_reg_13_ ( .D(n313), .CP(n591), .CDN(n250), .Q(
        period[13]) );
  DFCNQD1BWP12T30P140 ctrl_reg_2_ ( .D(n294), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n271), .CP(i_wb_clk), .CDN(n586), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 DC_reg_15_ ( .D(n274), .CP(n591), .CDN(n250), .Q(DC[15])
         );
  DFCNQD1BWP12T30P140 DC_reg_10_ ( .D(n279), .CP(n592), .CDN(n585), .Q(DC[10])
         );
  DFCNQD1BWP12T30P140 DC_reg_9_ ( .D(n280), .CP(n592), .CDN(n585), .Q(DC[9])
         );
  DFCNQD1BWP12T30P140 DC_reg_8_ ( .D(n281), .CP(n592), .CDN(n585), .Q(DC[8])
         );
  DFCNQD1BWP12T30P140 DC_reg_7_ ( .D(n282), .CP(n592), .CDN(n585), .Q(DC[7])
         );
  DFCNQD1BWP12T30P140 DC_reg_5_ ( .D(n284), .CP(n592), .CDN(n585), .Q(DC[5])
         );
  DFCNQD1BWP12T30P140 DC_reg_3_ ( .D(n286), .CP(n592), .CDN(n585), .Q(DC[3])
         );
  DFCNQD1BWP12T30P140 DC_reg_1_ ( .D(n288), .CP(n592), .CDN(n585), .Q(DC[1])
         );
  DFCNQD1BWP12T30P140 DC_reg_11_ ( .D(n278), .CP(n592), .CDN(n585), .Q(DC[11])
         );
  DFCNQD1BWP12T30P140 period_reg_3_ ( .D(n323), .CP(n592), .CDN(n250), .Q(
        period[3]) );
  DFCNQD1BWP12T30P140 ctrl_reg_3_ ( .D(n293), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n270), .CP(i_wb_clk), .CDN(n585), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 clrint_reg ( .D(n269), .CP(i_wb_clk), .CDN(n586), .Q(
        clrint) );
  DFCNQD1BWP12T30P140 DC_reg_14_ ( .D(n275), .CP(n590), .CDN(n250), .Q(DC[14])
         );
  DFCNQD1BWP12T30P140 period_reg_11_ ( .D(n315), .CP(n591), .CDN(n250), .Q(
        period[11]) );
  DFCNQD1BWP12T30P140 DC_reg_12_ ( .D(n277), .CP(n592), .CDN(n585), .Q(DC[12])
         );
  DFCNQD1BWP12T30P140 period_reg_15_ ( .D(n311), .CP(n591), .CDN(n250), .Q(
        period[15]) );
  DFCNQD1BWP12T30P140 period_reg_14_ ( .D(n312), .CP(n591), .CDN(n586), .Q(
        period[14]) );
  DFCNQD1BWP12T30P140 period_reg_12_ ( .D(n314), .CP(n591), .CDN(n586), .Q(
        period[12]) );
  DFCNQD1BWP12T30P140 period_reg_9_ ( .D(n317), .CP(n591), .CDN(n250), .Q(
        period[9]) );
  DFCNQD1BWP12T30P140 period_reg_8_ ( .D(n318), .CP(n591), .CDN(n586), .Q(
        period[8]) );
  DFCNQD1BWP12T30P140 DC_reg_13_ ( .D(n276), .CP(n591), .CDN(n250), .Q(DC[13])
         );
  DFCNQD1BWP12T30P140 period_reg_6_ ( .D(n320), .CP(n592), .CDN(n586), .Q(
        period[6]) );
  DFCNQD1BWP12T30P140 period_reg_4_ ( .D(n322), .CP(n590), .CDN(n586), .Q(
        period[4]) );
  DFCNQD1BWP12T30P140 period_reg_2_ ( .D(n324), .CP(n591), .CDN(n586), .Q(
        period[2]) );
  DFCNQD1BWP12T30P140 period_reg_10_ ( .D(n316), .CP(n591), .CDN(n586), .Q(
        period[10]) );
  DFCNQD1BWP12T30P140 period_reg_1_ ( .D(n325), .CP(n592), .CDN(n250), .Q(
        period[1]) );
  DFCNQD1BWP12T30P140 ct_reg_11_ ( .D(n263), .CP(n588), .CDN(n233), .Q(ct[11])
         );
  DFCNQD1BWP12T30P140 period_reg_7_ ( .D(n319), .CP(n590), .CDN(n250), .Q(
        period[7]) );
  DFCNQD1BWP12T30P140 period_reg_5_ ( .D(n321), .CP(n591), .CDN(n250), .Q(
        period[5]) );
  DFCNQD1BWP12T30P140 period_reg_0_ ( .D(n326), .CP(n592), .CDN(n586), .Q(
        period[0]) );
  DFCNQD1BWP12T30P140 ctrl_reg_0_ ( .D(n273), .CP(n590), .CDN(n584), .Q(
        ctrl[0]) );
  DFCNQD1BWP12T30P140 divisor_reg_0_ ( .D(n310), .CP(n591), .CDN(n586), .Q(
        divisor[0]) );
  DFCNQD1BWP12T30P140 extDC_reg_15_ ( .D(n249), .CP(n588), .CDN(n587), .Q(
        extDC[15]) );
  DFCNQD1BWP12T30P140 extDC_reg_1_ ( .D(n235), .CP(n588), .CDN(n587), .Q(
        extDC[1]) );
  DFCNQD1BWP12T30P140 ct_reg_13_ ( .D(n265), .CP(n588), .CDN(n587), .Q(ct[13])
         );
  DFCNQD1BWP12T30P140 ct_reg_14_ ( .D(n266), .CP(n588), .CDN(n587), .Q(ct[14])
         );
  DFCNQD1BWP12T30P140 pts_reg ( .D(n272), .CP(n588), .CDN(n587), .Q(pts) );
  DFCNQD1BWP12T30P140 ct_reg_7_ ( .D(n259), .CP(n588), .CDN(n233), .Q(ct[7])
         );
  DFCNQD1BWP12T30P140 ct_reg_5_ ( .D(n257), .CP(n588), .CDN(n233), .Q(ct[5])
         );
  DFCNQD1BWP12T30P140 ct_reg_3_ ( .D(n255), .CP(n588), .CDN(n587), .Q(ct[3])
         );
  DFCNQD1BWP12T30P140 extDC_reg_13_ ( .D(n247), .CP(n588), .CDN(n587), .Q(
        extDC[13]) );
  DFCNQD1BWP12T30P140 divisor_reg_14_ ( .D(n296), .CP(n590), .CDN(n584), .Q(
        divisor[14]) );
  DFCNQD1BWP12T30P140 divisor_reg_10_ ( .D(n300), .CP(n590), .CDN(n584), .Q(
        divisor[10]) );
  DFCNQD1BWP12T30P140 extDC_reg_0_ ( .D(n234), .CP(clk), .CDN(n587), .Q(
        extDC[0]) );
  DFCNQD1BWP12T30P140 extDC_reg_10_ ( .D(n244), .CP(clk), .CDN(n587), .Q(
        extDC[10]) );
  DFCNQD1BWP12T30P140 extDC_reg_9_ ( .D(n243), .CP(clk), .CDN(n587), .Q(
        extDC[9]) );
  DFCNQD1BWP12T30P140 extDC_reg_8_ ( .D(n242), .CP(clk), .CDN(n587), .Q(
        extDC[8]) );
  DFCNQD1BWP12T30P140 extDC_reg_7_ ( .D(n241), .CP(clk), .CDN(n587), .Q(
        extDC[7]) );
  DFCNQD1BWP12T30P140 extDC_reg_5_ ( .D(n239), .CP(clk), .CDN(n587), .Q(
        extDC[5]) );
  DFCNQD1BWP12T30P140 extDC_reg_3_ ( .D(n237), .CP(clk), .CDN(n587), .Q(
        extDC[3]) );
  DFCNQD1BWP12T30P140 extDC_reg_6_ ( .D(n240), .CP(clk), .CDN(n587), .Q(
        extDC[6]) );
  DFCNQD1BWP12T30P140 extDC_reg_4_ ( .D(n238), .CP(clk), .CDN(n587), .Q(
        extDC[4]) );
  DFCNQD1BWP12T30P140 extDC_reg_2_ ( .D(n236), .CP(clk), .CDN(n587), .Q(
        extDC[2]) );
  DFCNQD1BWP12T30P140 switch_ack_clrint_reg ( .D(n252), .CP(clk), .CDN(n233), 
        .Q(switch_ack_clrint) );
  DFCNQD1BWP12T30P140 divisor_reg_4_ ( .D(n306), .CP(n590), .CDN(n584), .Q(
        divisor[4]) );
  DFCNQD1BWP12T30P140 divisor_reg_6_ ( .D(n304), .CP(n590), .CDN(n584), .Q(
        divisor[6]) );
  DFCNQD1BWP12T30P140 extDC_reg_11_ ( .D(n245), .CP(clk), .CDN(n233), .Q(
        extDC[11]) );
  DFCNQD1BWP12T30P140 divisor_reg_12_ ( .D(n298), .CP(n590), .CDN(n584), .Q(
        divisor[12]) );
  DFCNQD1BWP12T30P140 divisor_reg_8_ ( .D(n302), .CP(n590), .CDN(n584), .Q(
        divisor[8]) );
  DFCNQD1BWP12T30P140 ct_reg_9_ ( .D(n261), .CP(n588), .CDN(n233), .Q(ct[9])
         );
  DFCNQD1BWP12T30P140 extDC_reg_14_ ( .D(n248), .CP(clk), .CDN(n233), .Q(
        extDC[14]) );
  DFCNQD1BWP12T30P140 extDC_reg_12_ ( .D(n246), .CP(clk), .CDN(n233), .Q(
        extDC[12]) );
  DFCNQD1BWP12T30P140 ct_reg_12_ ( .D(n264), .CP(n588), .CDN(n587), .Q(ct[12])
         );
  DFCNQD1BWP12T30P140 ct_reg_15_ ( .D(n267), .CP(n588), .CDN(n587), .Q(ct[15])
         );
  DFCNQD1BWP12T30P140 ct_reg_0_ ( .D(n268), .CP(n588), .CDN(n587), .Q(ct[0])
         );
  DFCNQD1BWP12T30P140 divisor_reg_7_ ( .D(n303), .CP(n590), .CDN(n584), .Q(
        divisor[7]) );
  DFCNQD1BWP12T30P140 divisor_reg_9_ ( .D(n301), .CP(n590), .CDN(n584), .Q(
        divisor[9]) );
  DFCNQD1BWP12T30P140 divisor_reg_5_ ( .D(n305), .CP(n590), .CDN(n584), .Q(
        divisor[5]) );
  DFCNQD1BWP12T30P140 divisor_reg_13_ ( .D(n297), .CP(n590), .CDN(n584), .Q(
        divisor[13]) );
  DFCNQD1BWP12T30P140 divisor_reg_15_ ( .D(n295), .CP(n590), .CDN(n584), .Q(
        divisor[15]) );
  DFCNQD1BWP12T30P140 divisor_reg_11_ ( .D(n299), .CP(n590), .CDN(n584), .Q(
        divisor[11]) );
  DFCNQD1BWP12T30P140 ct_reg_8_ ( .D(n260), .CP(n588), .CDN(n233), .Q(ct[8])
         );
  DFCNQD1BWP12T30P140 divisor_reg_3_ ( .D(n307), .CP(n591), .CDN(n584), .Q(
        divisor[3]) );
  DFCNQD1BWP12T30P140 ct_reg_1_ ( .D(n253), .CP(n588), .CDN(n233), .Q(ct[1])
         );
  DFCNQD1BWP12T30P140 ct_reg_2_ ( .D(n254), .CP(clk), .CDN(n233), .Q(ct[2]) );
  DFCNQD1BWP12T30P140 ct_reg_6_ ( .D(n258), .CP(clk), .CDN(n233), .Q(ct[6]) );
  DFCNQD1BWP12T30P140 ct_reg_4_ ( .D(n256), .CP(clk), .CDN(n233), .Q(ct[4]) );
  DFCNQD1BWP12T30P140 ct_reg_10_ ( .D(n262), .CP(n588), .CDN(n233), .Q(ct[10])
         );
  DFCNQD1BWP12T30P140 divisor_reg_2_ ( .D(n308), .CP(n591), .CDN(n584), .Q(
        divisor[2]) );
  DFCNQD1BWP12T30P140 ctrl_reg_6_ ( .D(n291), .CP(i_wb_clk), .CDN(n585), .Q(
        ctrl[6]) );
  DFCNQD1BWP12T30P140 divisor_reg_1_ ( .D(n309), .CP(n591), .CDN(n584), .Q(
        divisor[1]) );
  CKMUX2D0BWP12T30P140 U348 ( .I0(i_wb_clk), .I1(i_extclk), .S(ctrl[0]), .Z(
        clk_source) );
  CKMUX2D0BWP12T30P140 U349 ( .I0(eclk), .I1(oclk), .S(divisor[0]), .Z(clk) );
  INVD0BWP12T30P140 U350 ( .I(ctrl[6]), .ZN(n328) );
  NR2D0BWP12T30P140 U351 ( .A1(n549), .A2(n539), .ZN(n433) );
  TIELBWP12T30P140 U352 ( .ZN(n_Logic0_) );
  CKBD0BWP12T30P140 U353 ( .I(i_wb_stb), .Z(o_wb_ack) );
  INVD0BWP12T30P140 U354 ( .I(period[10]), .ZN(n511) );
  INVD0BWP12T30P140 U355 ( .I(period[1]), .ZN(n510) );
  INVD0BWP12T30P140 U356 ( .I(period[0]), .ZN(n503) );
  ND2D0BWP12T30P140 U357 ( .A1(n510), .A2(n503), .ZN(n340) );
  NR2D0BWP12T30P140 U358 ( .A1(period[2]), .A2(n340), .ZN(n339) );
  INVD0BWP12T30P140 U359 ( .I(period[3]), .ZN(n543) );
  ND2D0BWP12T30P140 U360 ( .A1(n339), .A2(n543), .ZN(n346) );
  NR2D0BWP12T30P140 U361 ( .A1(period[4]), .A2(n346), .ZN(n345) );
  INVD0BWP12T30P140 U362 ( .I(period[5]), .ZN(n504) );
  ND2D0BWP12T30P140 U363 ( .A1(n345), .A2(n504), .ZN(n352) );
  NR2D0BWP12T30P140 U364 ( .A1(period[6]), .A2(n352), .ZN(n351) );
  INVD0BWP12T30P140 U365 ( .I(period[7]), .ZN(n505) );
  ND2D0BWP12T30P140 U366 ( .A1(n351), .A2(n505), .ZN(n331) );
  NR2D0BWP12T30P140 U367 ( .A1(period[8]), .A2(n331), .ZN(n330) );
  INVD0BWP12T30P140 U368 ( .I(n330), .ZN(n362) );
  NR2D0BWP12T30P140 U369 ( .A1(n362), .A2(period[9]), .ZN(n361) );
  ND2D0BWP12T30P140 U370 ( .A1(n511), .A2(n361), .ZN(n360) );
  NR2D0BWP12T30P140 U371 ( .A1(n360), .A2(period[11]), .ZN(n359) );
  INVD0BWP12T30P140 U372 ( .I(n359), .ZN(n329) );
  NR2D0BWP12T30P140 U373 ( .A1(period[12]), .A2(n329), .ZN(n379) );
  INVD0BWP12T30P140 U374 ( .I(period[13]), .ZN(n521) );
  ND2D0BWP12T30P140 U375 ( .A1(n379), .A2(n521), .ZN(n378) );
  NR2D0BWP12T30P140 U376 ( .A1(period[14]), .A2(n378), .ZN(n377) );
  INVD0BWP12T30P140 U377 ( .I(n377), .ZN(n380) );
  NR2D0BWP12T30P140 U378 ( .A1(n380), .A2(period[15]), .ZN(n335) );
  INVD0BWP12T30P140 U379 ( .I(n335), .ZN(n387) );
  AOI22D0BWP12T30P140 U380 ( .A1(n329), .A2(period[12]), .B1(n387), .B2(n379), 
        .ZN(n384) );
  AOI22D0BWP12T30P140 U381 ( .A1(n331), .A2(period[8]), .B1(n387), .B2(n330), 
        .ZN(n365) );
  NR2D0BWP12T30P140 U382 ( .A1(n361), .A2(period[10]), .ZN(n332) );
  AOI211D0BWP12T30P140 U383 ( .A1(n361), .A2(period[10]), .B(n335), .C(n332), 
        .ZN(n363) );
  INVD0BWP12T30P140 U384 ( .I(ct[10]), .ZN(n420) );
  NR2D0BWP12T30P140 U385 ( .A1(n363), .A2(n420), .ZN(n358) );
  NR2D0BWP12T30P140 U386 ( .A1(n351), .A2(period[7]), .ZN(n333) );
  AOI211D0BWP12T30P140 U387 ( .A1(n351), .A2(period[7]), .B(n335), .C(n333), 
        .ZN(n356) );
  NR2D0BWP12T30P140 U388 ( .A1(n345), .A2(period[5]), .ZN(n334) );
  AOI211D0BWP12T30P140 U389 ( .A1(n345), .A2(period[5]), .B(n335), .C(n334), 
        .ZN(n350) );
  INVD0BWP12T30P140 U390 ( .I(n339), .ZN(n336) );
  AOI221D0BWP12T30P140 U391 ( .A1(n339), .A2(period[3]), .B1(n336), .B2(n543), 
        .C(n335), .ZN(n344) );
  AOI211D0BWP12T30P140 U392 ( .A1(ct[1]), .A2(period[1]), .B(ct[0]), .C(
        period[0]), .ZN(n338) );
  AOI221D0BWP12T30P140 U393 ( .A1(period[1]), .A2(n503), .B1(n510), .B2(
        period[0]), .C(ct[1]), .ZN(n337) );
  OAI21D0BWP12T30P140 U394 ( .A1(n338), .A2(n337), .B(n387), .ZN(n342) );
  AOI22D0BWP12T30P140 U395 ( .A1(n340), .A2(period[2]), .B1(n387), .B2(n339), 
        .ZN(n341) );
  MAOI222D0BWP12T30P140 U396 ( .A(ct[2]), .B(n342), .C(n341), .ZN(n343) );
  INVD0BWP12T30P140 U397 ( .I(ct[3]), .ZN(n426) );
  MAOI222D0BWP12T30P140 U398 ( .A(n344), .B(n343), .C(n426), .ZN(n348) );
  AOI22D0BWP12T30P140 U399 ( .A1(n346), .A2(period[4]), .B1(n387), .B2(n345), 
        .ZN(n347) );
  MAOI222D0BWP12T30P140 U400 ( .A(ct[4]), .B(n348), .C(n347), .ZN(n349) );
  INVD0BWP12T30P140 U401 ( .I(ct[5]), .ZN(n431) );
  MAOI222D0BWP12T30P140 U402 ( .A(n350), .B(n349), .C(n431), .ZN(n354) );
  AOI22D0BWP12T30P140 U403 ( .A1(n352), .A2(period[6]), .B1(n387), .B2(n351), 
        .ZN(n353) );
  MAOI222D0BWP12T30P140 U404 ( .A(ct[6]), .B(n354), .C(n353), .ZN(n355) );
  INVD0BWP12T30P140 U405 ( .I(ct[7]), .ZN(n436) );
  MAOI222D0BWP12T30P140 U406 ( .A(n356), .B(n355), .C(n436), .ZN(n357) );
  AOI211D0BWP12T30P140 U407 ( .A1(ct[8]), .A2(n365), .B(n358), .C(n357), .ZN(
        n373) );
  AOI21D0BWP12T30P140 U408 ( .A1(period[11]), .A2(n360), .B(n359), .ZN(n374)
         );
  ND2D0BWP12T30P140 U409 ( .A1(ct[11]), .A2(n374), .ZN(n372) );
  AOI22D0BWP12T30P140 U410 ( .A1(n362), .A2(period[9]), .B1(n387), .B2(n361), 
        .ZN(n364) );
  ND2D0BWP12T30P140 U411 ( .A1(ct[9]), .A2(n364), .ZN(n371) );
  INVD0BWP12T30P140 U412 ( .I(n363), .ZN(n369) );
  INVD0BWP12T30P140 U413 ( .I(n364), .ZN(n367) );
  INVD0BWP12T30P140 U414 ( .I(ct[9]), .ZN(n401) );
  NR2D0BWP12T30P140 U415 ( .A1(n365), .A2(ct[8]), .ZN(n366) );
  MAOI222D0BWP12T30P140 U416 ( .A(n367), .B(n401), .C(n366), .ZN(n368) );
  MAOI222D0BWP12T30P140 U417 ( .A(ct[10]), .B(n369), .C(n368), .ZN(n370) );
  AOI32D0BWP12T30P140 U418 ( .A1(n373), .A2(n372), .A3(n371), .B1(n370), .B2(
        n372), .ZN(n376) );
  INVD0BWP12T30P140 U419 ( .I(ct[11]), .ZN(n508) );
  IND3D1BWP12T30P140 U420 ( .A1(n374), .B1(n387), .B2(n508), .ZN(n375) );
  AOI22D0BWP12T30P140 U421 ( .A1(ct[12]), .A2(n384), .B1(n376), .B2(n375), 
        .ZN(n394) );
  AOI21D0BWP12T30P140 U422 ( .A1(period[14]), .A2(n378), .B(n377), .ZN(n388)
         );
  INVD0BWP12T30P140 U423 ( .I(ct[13]), .ZN(n499) );
  OAI21D0BWP12T30P140 U424 ( .A1(n379), .A2(n521), .B(n378), .ZN(n383) );
  ND2D0BWP12T30P140 U425 ( .A1(period[15]), .A2(n380), .ZN(n390) );
  ND2D0BWP12T30P140 U426 ( .A1(ct[15]), .A2(n390), .ZN(n381) );
  OAI21D0BWP12T30P140 U427 ( .A1(n499), .A2(n383), .B(n381), .ZN(n382) );
  AOI21D0BWP12T30P140 U428 ( .A1(ct[14]), .A2(n388), .B(n382), .ZN(n393) );
  INVD0BWP12T30P140 U429 ( .I(n383), .ZN(n386) );
  ND2D0BWP12T30P140 U430 ( .A1(n499), .A2(n387), .ZN(n385) );
  OAI22D0BWP12T30P140 U431 ( .A1(n386), .A2(n385), .B1(ct[12]), .B2(n384), 
        .ZN(n392) );
  INVD0BWP12T30P140 U432 ( .I(ct[14]), .ZN(n495) );
  IND3D1BWP12T30P140 U433 ( .A1(n388), .B1(n387), .B2(n495), .ZN(n389) );
  MAOI222D0BWP12T30P140 U434 ( .A(ct[15]), .B(n390), .C(n389), .ZN(n391) );
  AOI221D0BWP12T30P140 U435 ( .A1(n394), .A2(n393), .B1(n392), .B2(n393), .C(
        n391), .ZN(n485) );
  INVD0BWP12T30P140 U436 ( .I(ctrl[2]), .ZN(n523) );
  NR2D0BWP12T30P140 U437 ( .A1(n485), .A2(n523), .ZN(n494) );
  CKBD0BWP12T30P140 U438 ( .I(n494), .Z(n493) );
  ND3D0BWP12T30P140 U439 ( .A1(ct[2]), .A2(ct[1]), .A3(ct[0]), .ZN(n425) );
  NR2D0BWP12T30P140 U440 ( .A1(n426), .A2(n425), .ZN(n417) );
  ND2D0BWP12T30P140 U441 ( .A1(ct[4]), .A2(n417), .ZN(n430) );
  NR2D0BWP12T30P140 U442 ( .A1(n431), .A2(n430), .ZN(n415) );
  ND2D0BWP12T30P140 U443 ( .A1(ct[6]), .A2(n415), .ZN(n435) );
  NR2D0BWP12T30P140 U444 ( .A1(n436), .A2(n435), .ZN(n407) );
  ND2D0BWP12T30P140 U445 ( .A1(ct[8]), .A2(n407), .ZN(n400) );
  INVD0BWP12T30P140 U446 ( .I(ctrl[1]), .ZN(n537) );
  ND2D0BWP12T30P140 U447 ( .A1(n537), .A2(clrint), .ZN(n405) );
  INVD0BWP12T30P140 U448 ( .I(n405), .ZN(n491) );
  INVD0BWP12T30P140 U449 ( .I(ctrl[3]), .ZN(n546) );
  AOI31D0BWP12T30P140 U450 ( .A1(n485), .A2(n537), .A3(n546), .B(n523), .ZN(
        n395) );
  NR2D0BWP12T30P140 U451 ( .A1(n491), .A2(n395), .ZN(n492) );
  AOI21D0BWP12T30P140 U452 ( .A1(n493), .A2(n400), .B(n492), .ZN(n423) );
  ND2D0BWP12T30P140 U453 ( .A1(n493), .A2(n401), .ZN(n422) );
  OAI22D0BWP12T30P140 U454 ( .A1(n423), .A2(n401), .B1(n400), .B2(n422), .ZN(
        n261) );
  NR4D0BWP12T30P140 U455 ( .A1(i_wb_adr[4]), .A2(i_wb_adr[12]), .A3(
        i_wb_adr[0]), .A4(i_wb_adr[5]), .ZN(n398) );
  NR4D0BWP12T30P140 U456 ( .A1(i_wb_adr[8]), .A2(i_wb_adr[6]), .A3(i_wb_adr[7]), .A4(i_wb_adr[11]), .ZN(n397) );
  NR4D0BWP12T30P140 U457 ( .A1(i_wb_adr[9]), .A2(i_wb_adr[10]), .A3(
        i_wb_adr[3]), .A4(i_wb_adr[15]), .ZN(n396) );
  ND3D0BWP12T30P140 U458 ( .A1(n398), .A2(n397), .A3(n396), .ZN(n399) );
  NR3D0BWP12T30P140 U459 ( .A1(i_wb_adr[13]), .A2(i_wb_adr[14]), .A3(n399), 
        .ZN(n502) );
  INR2D1BWP12T30P140 U460 ( .A1(n502), .B1(i_wb_adr[2]), .ZN(n428) );
  ND2D0BWP12T30P140 U461 ( .A1(i_wb_adr[1]), .A2(n428), .ZN(n549) );
  ND3D0BWP12T30P140 U462 ( .A1(i_wb_stb), .A2(i_wb_we), .A3(i_wb_cyc), .ZN(
        n539) );
  CKBD0BWP12T30P140 U463 ( .I(n433), .Z(n501) );
  INVD0BWP12T30P140 U464 ( .I(i_wb_data[8]), .ZN(n528) );
  MAOI22D0BWP12T30P140 U465 ( .A1(n501), .A2(n528), .B1(divisor[8]), .B2(n433), 
        .ZN(n302) );
  CKMUX2D0BWP12T30P140 U466 ( .I0(extDC[14]), .I1(i_DC[14]), .S(i_valid_DC), 
        .Z(n248) );
  INVD0BWP12T30P140 U467 ( .I(i_wb_data[12]), .ZN(n514) );
  MAOI22D0BWP12T30P140 U468 ( .A1(n433), .A2(n514), .B1(divisor[12]), .B2(n501), .ZN(n298) );
  CKMUX2D0BWP12T30P140 U469 ( .I0(extDC[12]), .I1(i_DC[12]), .S(i_valid_DC), 
        .Z(n246) );
  CKMUX2D0BWP12T30P140 U470 ( .I0(extDC[11]), .I1(i_DC[11]), .S(i_valid_DC), 
        .Z(n245) );
  NR2D0BWP12T30P140 U471 ( .A1(n401), .A2(n400), .ZN(n419) );
  ND2D0BWP12T30P140 U472 ( .A1(ct[10]), .A2(n419), .ZN(n507) );
  AOI21D0BWP12T30P140 U473 ( .A1(n493), .A2(n507), .B(n492), .ZN(n509) );
  ND2D0BWP12T30P140 U474 ( .A1(n494), .A2(n508), .ZN(n506) );
  NR2D0BWP12T30P140 U475 ( .A1(n508), .A2(n507), .ZN(n403) );
  ND2D0BWP12T30P140 U476 ( .A1(n494), .A2(n403), .ZN(n402) );
  INVD0BWP12T30P140 U477 ( .I(ct[12]), .ZN(n438) );
  AOI32D0BWP12T30P140 U478 ( .A1(n509), .A2(ct[12]), .A3(n506), .B1(n402), 
        .B2(n438), .ZN(n264) );
  INVD0BWP12T30P140 U479 ( .I(i_wb_data[6]), .ZN(n516) );
  MAOI22D0BWP12T30P140 U480 ( .A1(n501), .A2(n516), .B1(divisor[6]), .B2(n501), 
        .ZN(n304) );
  ND2D0BWP12T30P140 U481 ( .A1(ct[12]), .A2(n403), .ZN(n497) );
  IND3D1BWP12T30P140 U482 ( .A1(n497), .B1(ct[13]), .B2(n494), .ZN(n496) );
  OAI21D0BWP12T30P140 U483 ( .A1(n493), .A2(n492), .B(ct[15]), .ZN(n404) );
  OAI21D0BWP12T30P140 U484 ( .A1(n496), .A2(n495), .B(n404), .ZN(n267) );
  INVD0BWP12T30P140 U485 ( .I(i_wb_data[4]), .ZN(n518) );
  MAOI22D0BWP12T30P140 U486 ( .A1(n501), .A2(n518), .B1(divisor[4]), .B2(n433), 
        .ZN(n306) );
  INVD0BWP12T30P140 U487 ( .I(ct[0]), .ZN(n410) );
  OA22D0BWP12T30P140 U488 ( .A1(n410), .A2(n492), .B1(n493), .B2(ct[0]), .Z(
        n268) );
  OAI21D0BWP12T30P140 U489 ( .A1(switch_ack_clrint), .A2(n523), .B(clrint), 
        .ZN(n406) );
  AOI32D0BWP12T30P140 U490 ( .A1(ctrl[3]), .A2(n406), .A3(n485), .B1(n405), 
        .B2(n406), .ZN(n252) );
  INVD0BWP12T30P140 U491 ( .I(i_wb_data[7]), .ZN(n540) );
  MAOI22D0BWP12T30P140 U492 ( .A1(n501), .A2(n540), .B1(divisor[7]), .B2(n433), 
        .ZN(n303) );
  CKMUX2D0BWP12T30P140 U493 ( .I0(extDC[2]), .I1(i_DC[2]), .S(i_valid_DC), .Z(
        n236) );
  INVD0BWP12T30P140 U494 ( .I(i_wb_data[9]), .ZN(n527) );
  MAOI22D0BWP12T30P140 U495 ( .A1(n433), .A2(n527), .B1(divisor[9]), .B2(n501), 
        .ZN(n301) );
  CKMUX2D0BWP12T30P140 U496 ( .I0(extDC[4]), .I1(i_DC[4]), .S(i_valid_DC), .Z(
        n238) );
  INVD0BWP12T30P140 U497 ( .I(i_wb_data[5]), .ZN(n530) );
  MAOI22D0BWP12T30P140 U498 ( .A1(n501), .A2(n530), .B1(divisor[5]), .B2(n433), 
        .ZN(n305) );
  CKMUX2D0BWP12T30P140 U499 ( .I0(extDC[6]), .I1(i_DC[6]), .S(i_valid_DC), .Z(
        n240) );
  INVD0BWP12T30P140 U500 ( .I(i_wb_data[13]), .ZN(n522) );
  MAOI22D0BWP12T30P140 U501 ( .A1(n501), .A2(n522), .B1(divisor[13]), .B2(n433), .ZN(n297) );
  CKMUX2D0BWP12T30P140 U502 ( .I0(extDC[3]), .I1(i_DC[3]), .S(i_valid_DC), .Z(
        n237) );
  INVD0BWP12T30P140 U503 ( .I(i_wb_data[15]), .ZN(n525) );
  MAOI22D0BWP12T30P140 U504 ( .A1(n433), .A2(n525), .B1(divisor[15]), .B2(n433), .ZN(n295) );
  CKMUX2D0BWP12T30P140 U505 ( .I0(extDC[5]), .I1(i_DC[5]), .S(i_valid_DC), .Z(
        n239) );
  INVD0BWP12T30P140 U506 ( .I(i_wb_data[11]), .ZN(n535) );
  MAOI22D0BWP12T30P140 U507 ( .A1(n501), .A2(n535), .B1(divisor[11]), .B2(n433), .ZN(n299) );
  CKMUX2D0BWP12T30P140 U508 ( .I0(extDC[7]), .I1(i_DC[7]), .S(i_valid_DC), .Z(
        n241) );
  AOI21D0BWP12T30P140 U509 ( .A1(n493), .A2(n435), .B(n492), .ZN(n437) );
  ND2D0BWP12T30P140 U510 ( .A1(n494), .A2(n436), .ZN(n434) );
  ND2D0BWP12T30P140 U511 ( .A1(n493), .A2(n407), .ZN(n409) );
  INVD0BWP12T30P140 U512 ( .I(ct[8]), .ZN(n408) );
  AOI32D0BWP12T30P140 U513 ( .A1(n437), .A2(ct[8]), .A3(n434), .B1(n409), .B2(
        n408), .ZN(n260) );
  CKMUX2D0BWP12T30P140 U514 ( .I0(extDC[8]), .I1(i_DC[8]), .S(i_valid_DC), .Z(
        n242) );
  INVD0BWP12T30P140 U515 ( .I(i_wb_data[3]), .ZN(n547) );
  MAOI22D0BWP12T30P140 U516 ( .A1(n501), .A2(n547), .B1(divisor[3]), .B2(n433), 
        .ZN(n307) );
  CKMUX2D0BWP12T30P140 U517 ( .I0(extDC[9]), .I1(i_DC[9]), .S(i_valid_DC), .Z(
        n243) );
  AOI21D0BWP12T30P140 U518 ( .A1(n493), .A2(n410), .B(n492), .ZN(n414) );
  INVD0BWP12T30P140 U519 ( .I(ct[1]), .ZN(n411) );
  ND2D0BWP12T30P140 U520 ( .A1(n494), .A2(n411), .ZN(n413) );
  OAI22D0BWP12T30P140 U521 ( .A1(n414), .A2(n411), .B1(n410), .B2(n413), .ZN(
        n253) );
  CKMUX2D0BWP12T30P140 U522 ( .I0(extDC[10]), .I1(i_DC[10]), .S(i_valid_DC), 
        .Z(n244) );
  ND3D0BWP12T30P140 U523 ( .A1(ct[1]), .A2(ct[0]), .A3(n494), .ZN(n412) );
  INVD0BWP12T30P140 U524 ( .I(ct[2]), .ZN(n447) );
  AOI32D0BWP12T30P140 U525 ( .A1(n414), .A2(ct[2]), .A3(n413), .B1(n412), .B2(
        n447), .ZN(n254) );
  CKMUX2D0BWP12T30P140 U526 ( .I0(extDC[0]), .I1(i_DC[0]), .S(i_valid_DC), .Z(
        n234) );
  AOI21D0BWP12T30P140 U527 ( .A1(n493), .A2(n430), .B(n492), .ZN(n432) );
  ND2D0BWP12T30P140 U528 ( .A1(n494), .A2(n431), .ZN(n429) );
  ND2D0BWP12T30P140 U529 ( .A1(n493), .A2(n415), .ZN(n416) );
  INVD0BWP12T30P140 U530 ( .I(ct[6]), .ZN(n457) );
  AOI32D0BWP12T30P140 U531 ( .A1(n432), .A2(ct[6]), .A3(n429), .B1(n416), .B2(
        n457), .ZN(n258) );
  INVD0BWP12T30P140 U532 ( .I(i_wb_data[10]), .ZN(n526) );
  MAOI22D0BWP12T30P140 U533 ( .A1(n501), .A2(n526), .B1(divisor[10]), .B2(n433), .ZN(n300) );
  AOI21D0BWP12T30P140 U534 ( .A1(n493), .A2(n425), .B(n492), .ZN(n427) );
  ND2D0BWP12T30P140 U535 ( .A1(n494), .A2(n426), .ZN(n424) );
  ND2D0BWP12T30P140 U536 ( .A1(n493), .A2(n417), .ZN(n418) );
  INVD0BWP12T30P140 U537 ( .I(ct[4]), .ZN(n452) );
  AOI32D0BWP12T30P140 U538 ( .A1(n427), .A2(ct[4]), .A3(n424), .B1(n418), .B2(
        n452), .ZN(n256) );
  INVD0BWP12T30P140 U539 ( .I(i_wb_data[14]), .ZN(n531) );
  MAOI22D0BWP12T30P140 U540 ( .A1(n433), .A2(n531), .B1(divisor[14]), .B2(n501), .ZN(n296) );
  ND2D0BWP12T30P140 U541 ( .A1(n494), .A2(n419), .ZN(n421) );
  AOI32D0BWP12T30P140 U542 ( .A1(n423), .A2(ct[10]), .A3(n422), .B1(n421), 
        .B2(n420), .ZN(n262) );
  CKMUX2D0BWP12T30P140 U543 ( .I0(extDC[13]), .I1(i_DC[13]), .S(i_valid_DC), 
        .Z(n247) );
  INVD0BWP12T30P140 U544 ( .I(i_wb_data[2]), .ZN(n524) );
  MAOI22D0BWP12T30P140 U545 ( .A1(n501), .A2(n524), .B1(divisor[2]), .B2(n433), 
        .ZN(n308) );
  OAI22D0BWP12T30P140 U546 ( .A1(n427), .A2(n426), .B1(n425), .B2(n424), .ZN(
        n255) );
  INR2D1BWP12T30P140 U547 ( .A1(n428), .B1(i_wb_adr[1]), .ZN(n573) );
  INR2D1BWP12T30P140 U548 ( .A1(n573), .B1(n539), .ZN(n548) );
  INVD0BWP12T30P140 U549 ( .I(ctrl[6]), .ZN(n479) );
  INVD0BWP12T30P140 U550 ( .I(n548), .ZN(n545) );
  AOI22D0BWP12T30P140 U551 ( .A1(n548), .A2(n516), .B1(n479), .B2(n545), .ZN(
        n291) );
  OAI22D0BWP12T30P140 U552 ( .A1(n432), .A2(n431), .B1(n430), .B2(n429), .ZN(
        n257) );
  INVD0BWP12T30P140 U553 ( .I(i_wb_data[1]), .ZN(n532) );
  MAOI22D0BWP12T30P140 U554 ( .A1(n501), .A2(n532), .B1(divisor[1]), .B2(n433), 
        .ZN(n309) );
  OAI22D0BWP12T30P140 U555 ( .A1(n437), .A2(n436), .B1(n435), .B2(n434), .ZN(
        n259) );
  INVD0BWP12T30P140 U556 ( .I(pts), .ZN(n551) );
  AOI22D0BWP12T30P140 U557 ( .A1(ctrl[6]), .A2(extDC[15]), .B1(DC[15]), .B2(
        n479), .ZN(n483) );
  OAI22D0BWP12T30P140 U558 ( .A1(extDC[12]), .A2(n438), .B1(extDC[13]), .B2(
        n499), .ZN(n440) );
  OAI22D0BWP12T30P140 U559 ( .A1(DC[12]), .A2(n438), .B1(DC[13]), .B2(n499), 
        .ZN(n439) );
  AOI22D0BWP12T30P140 U560 ( .A1(ctrl[6]), .A2(n440), .B1(n439), .B2(n479), 
        .ZN(n478) );
  AOI22D0BWP12T30P140 U561 ( .A1(ctrl[6]), .A2(extDC[12]), .B1(DC[12]), .B2(
        n479), .ZN(n473) );
  AOI22D0BWP12T30P140 U562 ( .A1(ctrl[6]), .A2(extDC[9]), .B1(DC[9]), .B2(n479), .ZN(n466) );
  NR2D0BWP12T30P140 U563 ( .A1(ct[9]), .A2(n466), .ZN(n463) );
  AOI22D0BWP12T30P140 U564 ( .A1(ctrl[6]), .A2(extDC[10]), .B1(DC[10]), .B2(
        n479), .ZN(n468) );
  NR2D0BWP12T30P140 U565 ( .A1(ct[10]), .A2(n468), .ZN(n462) );
  AOI22D0BWP12T30P140 U566 ( .A1(ctrl[6]), .A2(extDC[8]), .B1(DC[8]), .B2(n479), .ZN(n464) );
  AO22D0BWP12T30P140 U567 ( .A1(ctrl[6]), .A2(extDC[11]), .B1(DC[11]), .B2(
        n479), .Z(n470) );
  ND2D0BWP12T30P140 U568 ( .A1(n508), .A2(n470), .ZN(n441) );
  OAI21D0BWP12T30P140 U569 ( .A1(ct[8]), .A2(n464), .B(n441), .ZN(n461) );
  INVD0BWP12T30P140 U570 ( .I(DC[0]), .ZN(n554) );
  AOI21D0BWP12T30P140 U571 ( .A1(n554), .A2(n479), .B(ct[0]), .ZN(n442) );
  OAI21D0BWP12T30P140 U572 ( .A1(extDC[0]), .A2(n479), .B(n442), .ZN(n444) );
  AOI22D0BWP12T30P140 U573 ( .A1(ctrl[6]), .A2(extDC[1]), .B1(DC[1]), .B2(n479), .ZN(n443) );
  MAOI222D0BWP12T30P140 U574 ( .A(ct[1]), .B(n444), .C(n443), .ZN(n446) );
  INVD0BWP12T30P140 U575 ( .I(DC[2]), .ZN(n520) );
  MAOI22D0BWP12T30P140 U576 ( .A1(n520), .A2(n479), .B1(n479), .B2(extDC[2]), 
        .ZN(n445) );
  MAOI222D0BWP12T30P140 U577 ( .A(n447), .B(n446), .C(n445), .ZN(n449) );
  AOI22D0BWP12T30P140 U578 ( .A1(ctrl[6]), .A2(extDC[3]), .B1(DC[3]), .B2(n479), .ZN(n448) );
  MAOI222D0BWP12T30P140 U579 ( .A(ct[3]), .B(n449), .C(n448), .ZN(n451) );
  INVD0BWP12T30P140 U580 ( .I(DC[4]), .ZN(n517) );
  MAOI22D0BWP12T30P140 U581 ( .A1(n517), .A2(n479), .B1(n328), .B2(extDC[4]), 
        .ZN(n450) );
  MAOI222D0BWP12T30P140 U582 ( .A(n452), .B(n451), .C(n450), .ZN(n454) );
  AOI22D0BWP12T30P140 U583 ( .A1(ctrl[6]), .A2(extDC[5]), .B1(DC[5]), .B2(n479), .ZN(n453) );
  MAOI222D0BWP12T30P140 U584 ( .A(ct[5]), .B(n454), .C(n453), .ZN(n456) );
  INVD0BWP12T30P140 U585 ( .I(DC[6]), .ZN(n515) );
  MAOI22D0BWP12T30P140 U586 ( .A1(n515), .A2(n479), .B1(n328), .B2(extDC[6]), 
        .ZN(n455) );
  MAOI222D0BWP12T30P140 U587 ( .A(n457), .B(n456), .C(n455), .ZN(n459) );
  AOI22D0BWP12T30P140 U588 ( .A1(ctrl[6]), .A2(extDC[7]), .B1(DC[7]), .B2(n479), .ZN(n458) );
  MAOI222D0BWP12T30P140 U589 ( .A(ct[7]), .B(n459), .C(n458), .ZN(n460) );
  NR4D0BWP12T30P140 U590 ( .A1(n463), .A2(n462), .A3(n461), .A4(n460), .ZN(
        n472) );
  OAI211D0BWP12T30P140 U591 ( .A1(n466), .A2(ct[9]), .B(ct[8]), .C(n464), .ZN(
        n465) );
  IOA21D0BWP12T30P140 U592 ( .A1(ct[9]), .A2(n466), .B(n465), .ZN(n467) );
  MAOI222D0BWP12T30P140 U593 ( .A(ct[10]), .B(n468), .C(n467), .ZN(n469) );
  MAOI222D0BWP12T30P140 U594 ( .A(n508), .B(n470), .C(n469), .ZN(n471) );
  OAI22D0BWP12T30P140 U595 ( .A1(ct[12]), .A2(n473), .B1(n472), .B2(n471), 
        .ZN(n477) );
  AOI22D0BWP12T30P140 U596 ( .A1(extDC[13]), .A2(n499), .B1(extDC[14]), .B2(
        n495), .ZN(n475) );
  AOI22D0BWP12T30P140 U597 ( .A1(DC[14]), .A2(n495), .B1(DC[13]), .B2(n499), 
        .ZN(n474) );
  AOI22D0BWP12T30P140 U598 ( .A1(ctrl[6]), .A2(n475), .B1(n474), .B2(n479), 
        .ZN(n476) );
  AOI21D0BWP12T30P140 U599 ( .A1(n478), .A2(n477), .B(n476), .ZN(n481) );
  AOI221D0BWP12T30P140 U600 ( .A1(extDC[14]), .A2(ctrl[6]), .B1(DC[14]), .B2(
        n479), .C(n495), .ZN(n480) );
  OR2D0BWP12T30P140 U601 ( .A1(n481), .A2(n480), .Z(n482) );
  MAOI222D0BWP12T30P140 U602 ( .A(n483), .B(ct[15]), .C(n482), .ZN(n489) );
  ND2D0BWP12T30P140 U603 ( .A1(pts), .A2(n494), .ZN(n487) );
  INVD0BWP12T30P140 U604 ( .I(clrint), .ZN(n484) );
  AOI222D0BWP12T30P140 U605 ( .A1(n485), .A2(n484), .B1(n485), .B2(ctrl[3]), 
        .C1(n484), .C2(pts), .ZN(n486) );
  OAI22D0BWP12T30P140 U606 ( .A1(ctrl[3]), .A2(n487), .B1(n486), .B2(n523), 
        .ZN(n488) );
  AOI32D0BWP12T30P140 U607 ( .A1(n489), .A2(ctrl[1]), .A3(ctrl[2]), .B1(n537), 
        .B2(n488), .ZN(n490) );
  OAI31D0BWP12T30P140 U608 ( .A1(ctrl[2]), .A2(n491), .A3(n551), .B(n490), 
        .ZN(n272) );
  AOI21D0BWP12T30P140 U609 ( .A1(n493), .A2(n497), .B(n492), .ZN(n500) );
  ND2D0BWP12T30P140 U610 ( .A1(n494), .A2(n499), .ZN(n498) );
  AOI32D0BWP12T30P140 U611 ( .A1(n500), .A2(ct[14]), .A3(n498), .B1(n496), 
        .B2(n495), .ZN(n266) );
  OAI22D0BWP12T30P140 U612 ( .A1(n500), .A2(n499), .B1(n498), .B2(n497), .ZN(
        n265) );
  CKMUX2D0BWP12T30P140 U613 ( .I0(extDC[1]), .I1(i_DC[1]), .S(i_valid_DC), .Z(
        n235) );
  CKMUX2D0BWP12T30P140 U614 ( .I0(extDC[15]), .I1(i_DC[15]), .S(i_valid_DC), 
        .Z(n249) );
  INVD0BWP12T30P140 U615 ( .I(i_wb_data[0]), .ZN(n513) );
  MAOI22D0BWP12T30P140 U616 ( .A1(n501), .A2(n513), .B1(divisor[0]), .B2(n501), 
        .ZN(n310) );
  MAOI22D0BWP12T30P140 U617 ( .A1(n548), .A2(n513), .B1(ctrl[0]), .B2(n548), 
        .ZN(n273) );
  ND2D0BWP12T30P140 U618 ( .A1(i_wb_adr[2]), .A2(n502), .ZN(n512) );
  NR2D0BWP12T30P140 U619 ( .A1(i_wb_adr[1]), .A2(n512), .ZN(n574) );
  INR2D1BWP12T30P140 U620 ( .A1(n574), .B1(n539), .ZN(n529) );
  INVD0BWP12T30P140 U621 ( .I(n529), .ZN(n542) );
  INVD0BWP12T30P140 U622 ( .I(n542), .ZN(n544) );
  AOI22D0BWP12T30P140 U623 ( .A1(n544), .A2(n513), .B1(n503), .B2(n542), .ZN(
        n326) );
  AOI22D0BWP12T30P140 U624 ( .A1(n544), .A2(n530), .B1(n504), .B2(n542), .ZN(
        n321) );
  AOI22D0BWP12T30P140 U625 ( .A1(n544), .A2(n540), .B1(n505), .B2(n542), .ZN(
        n319) );
  OAI22D0BWP12T30P140 U626 ( .A1(n509), .A2(n508), .B1(n507), .B2(n506), .ZN(
        n263) );
  AOI22D0BWP12T30P140 U627 ( .A1(n544), .A2(n532), .B1(n510), .B2(n542), .ZN(
        n325) );
  AOI22D0BWP12T30P140 U628 ( .A1(n544), .A2(n526), .B1(n511), .B2(n542), .ZN(
        n316) );
  MAOI22D0BWP12T30P140 U629 ( .A1(n544), .A2(n524), .B1(period[2]), .B2(n529), 
        .ZN(n324) );
  MAOI22D0BWP12T30P140 U630 ( .A1(n544), .A2(n518), .B1(period[4]), .B2(n529), 
        .ZN(n322) );
  MAOI22D0BWP12T30P140 U631 ( .A1(n544), .A2(n516), .B1(period[6]), .B2(n529), 
        .ZN(n320) );
  INR2D1BWP12T30P140 U632 ( .A1(i_wb_adr[1]), .B1(n512), .ZN(n575) );
  INVD0BWP12T30P140 U633 ( .I(n575), .ZN(n555) );
  OR2D0BWP12T30P140 U634 ( .A1(n555), .A2(n539), .Z(n519) );
  INVD0BWP12T30P140 U635 ( .I(n519), .ZN(n536) );
  INVD0BWP12T30P140 U636 ( .I(n519), .ZN(n534) );
  MAOI22D0BWP12T30P140 U637 ( .A1(n536), .A2(n522), .B1(DC[13]), .B2(n534), 
        .ZN(n276) );
  MAOI22D0BWP12T30P140 U638 ( .A1(n544), .A2(n528), .B1(period[8]), .B2(n529), 
        .ZN(n318) );
  MAOI22D0BWP12T30P140 U639 ( .A1(n544), .A2(n527), .B1(period[9]), .B2(n529), 
        .ZN(n317) );
  MAOI22D0BWP12T30P140 U640 ( .A1(n529), .A2(n514), .B1(period[12]), .B2(n529), 
        .ZN(n314) );
  AOI22D0BWP12T30P140 U641 ( .A1(n536), .A2(n513), .B1(n554), .B2(n519), .ZN(
        n289) );
  MAOI22D0BWP12T30P140 U642 ( .A1(n536), .A2(n514), .B1(DC[12]), .B2(n534), 
        .ZN(n277) );
  INVD0BWP12T30P140 U643 ( .I(ctrl[4]), .ZN(n550) );
  AOI22D0BWP12T30P140 U644 ( .A1(n548), .A2(n518), .B1(n550), .B2(n545), .ZN(
        n292) );
  MAOI22D0BWP12T30P140 U645 ( .A1(n548), .A2(n540), .B1(ctrl[7]), .B2(n548), 
        .ZN(n290) );
  MAOI22D0BWP12T30P140 U646 ( .A1(n544), .A2(n531), .B1(period[14]), .B2(n529), 
        .ZN(n312) );
  AOI22D0BWP12T30P140 U647 ( .A1(n548), .A2(n532), .B1(n537), .B2(n545), .ZN(
        n327) );
  AOI22D0BWP12T30P140 U648 ( .A1(n536), .A2(n516), .B1(n515), .B2(n519), .ZN(
        n283) );
  AOI22D0BWP12T30P140 U649 ( .A1(n534), .A2(n518), .B1(n517), .B2(n519), .ZN(
        n285) );
  AOI22D0BWP12T30P140 U650 ( .A1(n536), .A2(n524), .B1(n520), .B2(n519), .ZN(
        n287) );
  AOI22D0BWP12T30P140 U651 ( .A1(n544), .A2(n522), .B1(n521), .B2(n542), .ZN(
        n313) );
  MAOI22D0BWP12T30P140 U652 ( .A1(n544), .A2(n525), .B1(period[15]), .B2(n529), 
        .ZN(n311) );
  AOI22D0BWP12T30P140 U653 ( .A1(n548), .A2(n524), .B1(n523), .B2(n545), .ZN(
        n294) );
  MAOI22D0BWP12T30P140 U654 ( .A1(n536), .A2(n525), .B1(DC[15]), .B2(n534), 
        .ZN(n274) );
  MAOI22D0BWP12T30P140 U655 ( .A1(n536), .A2(n526), .B1(DC[10]), .B2(n534), 
        .ZN(n279) );
  MAOI22D0BWP12T30P140 U656 ( .A1(n536), .A2(n527), .B1(DC[9]), .B2(n534), 
        .ZN(n280) );
  MAOI22D0BWP12T30P140 U657 ( .A1(n536), .A2(n528), .B1(DC[8]), .B2(n534), 
        .ZN(n281) );
  MAOI22D0BWP12T30P140 U658 ( .A1(n529), .A2(n535), .B1(period[11]), .B2(n529), 
        .ZN(n315) );
  MAOI22D0BWP12T30P140 U659 ( .A1(n536), .A2(n540), .B1(DC[7]), .B2(n534), 
        .ZN(n282) );
  MAOI22D0BWP12T30P140 U660 ( .A1(n536), .A2(n530), .B1(DC[5]), .B2(n534), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U661 ( .A1(n536), .A2(n547), .B1(DC[3]), .B2(n534), 
        .ZN(n286) );
  MAOI22D0BWP12T30P140 U662 ( .A1(n536), .A2(n531), .B1(DC[14]), .B2(n534), 
        .ZN(n275) );
  MAOI22D0BWP12T30P140 U663 ( .A1(n536), .A2(n532), .B1(DC[1]), .B2(n534), 
        .ZN(n288) );
  INVD0BWP12T30P140 U664 ( .I(state[1]), .ZN(n582) );
  ND2D0BWP12T30P140 U665 ( .A1(n582), .A2(state[0]), .ZN(n538) );
  IND3D1BWP12T30P140 U666 ( .A1(n538), .B1(n540), .B2(n537), .ZN(n581) );
  IND4D1BWP12T30P140 U667 ( .A1(state[0]), .B1(switch_ack_clrint), .B2(clrint), 
        .B3(state[1]), .ZN(n578) );
  ND2D0BWP12T30P140 U668 ( .A1(clrint), .A2(n578), .ZN(n533) );
  OAI31D0BWP12T30P140 U669 ( .A1(i_wb_data[5]), .A2(n539), .A3(n581), .B(n533), 
        .ZN(n269) );
  MAOI22D0BWP12T30P140 U670 ( .A1(n536), .A2(n535), .B1(DC[11]), .B2(n534), 
        .ZN(n278) );
  OAI211D0BWP12T30P140 U671 ( .A1(state[0]), .A2(n582), .B(n537), .C(n538), 
        .ZN(n559) );
  NR2D0BWP12T30P140 U672 ( .A1(n551), .A2(n559), .ZN(n557) );
  AOI211D0BWP12T30P140 U673 ( .A1(i_wb_data[5]), .A2(n540), .B(n539), .C(n538), 
        .ZN(n556) );
  NR2D0BWP12T30P140 U674 ( .A1(n557), .A2(n556), .ZN(n579) );
  OAI21D0BWP12T30P140 U675 ( .A1(state[1]), .A2(n579), .B(state[0]), .ZN(n541)
         );
  OAI21D0BWP12T30P140 U676 ( .A1(state[0]), .A2(n579), .B(n541), .ZN(n270) );
  AOI22D0BWP12T30P140 U677 ( .A1(n544), .A2(n547), .B1(n543), .B2(n542), .ZN(
        n323) );
  AOI22D0BWP12T30P140 U678 ( .A1(n548), .A2(n547), .B1(n546), .B2(n545), .ZN(
        n293) );
  CKBD0BWP12T30P140 U679 ( .I(i_wb_clk), .Z(n592) );
  CKBD0BWP12T30P140 U680 ( .I(i_wb_clk), .Z(n591) );
  CKBD0BWP12T30P140 U681 ( .I(clk), .Z(n588) );
  CKBD0BWP12T30P140 U682 ( .I(i_wb_clk), .Z(n590) );
  CKBD0BWP12T30P140 U683 ( .I(clk_source), .Z(n589) );
  INVD0BWP12T30P140 U684 ( .I(i_wb_rst), .ZN(n250) );
  CKBD0BWP12T30P140 U685 ( .I(n250), .Z(n586) );
  CKBD0BWP12T30P140 U686 ( .I(n250), .Z(n585) );
  NR2D0BWP12T30P140 U687 ( .A1(ctrl[7]), .A2(i_wb_rst), .ZN(n233) );
  CKBD0BWP12T30P140 U688 ( .I(n233), .Z(n587) );
  CKBD0BWP12T30P140 U689 ( .I(n250), .Z(n584) );
  INVD0BWP12T30P140 U690 ( .I(n549), .ZN(n572) );
  AO222D0BWP12T30P140 U691 ( .A1(DC[15]), .A2(n575), .B1(period[15]), .B2(n574), .C1(n572), .C2(divisor[15]), .Z(o_wb_data[15]) );
  NR2D0BWP12T30P140 U692 ( .A1(n551), .A2(n550), .ZN(o_pwm) );
  AO222D0BWP12T30P140 U693 ( .A1(DC[8]), .A2(n575), .B1(period[8]), .B2(n574), 
        .C1(n572), .C2(divisor[8]), .Z(o_wb_data[8]) );
  AO222D0BWP12T30P140 U694 ( .A1(DC[9]), .A2(n575), .B1(period[9]), .B2(n574), 
        .C1(n572), .C2(divisor[9]), .Z(o_wb_data[9]) );
  AO222D0BWP12T30P140 U695 ( .A1(DC[10]), .A2(n575), .B1(period[10]), .B2(n574), .C1(n572), .C2(divisor[10]), .Z(o_wb_data[10]) );
  AO222D0BWP12T30P140 U696 ( .A1(DC[11]), .A2(n575), .B1(period[11]), .B2(n574), .C1(n572), .C2(divisor[11]), .Z(o_wb_data[11]) );
  AO222D0BWP12T30P140 U697 ( .A1(DC[12]), .A2(n575), .B1(period[12]), .B2(n574), .C1(n572), .C2(divisor[12]), .Z(o_wb_data[12]) );
  AO222D0BWP12T30P140 U698 ( .A1(DC[13]), .A2(n575), .B1(period[13]), .B2(n574), .C1(n572), .C2(divisor[13]), .Z(o_wb_data[13]) );
  AO222D0BWP12T30P140 U699 ( .A1(DC[14]), .A2(n575), .B1(period[14]), .B2(n574), .C1(n572), .C2(divisor[14]), .Z(o_wb_data[14]) );
  AOI22D0BWP12T30P140 U700 ( .A1(n572), .A2(divisor[0]), .B1(ctrl[0]), .B2(
        n573), .ZN(n553) );
  ND2D0BWP12T30P140 U701 ( .A1(period[0]), .A2(n574), .ZN(n552) );
  OAI211D0BWP12T30P140 U702 ( .A1(n555), .A2(n554), .B(n553), .C(n552), .ZN(
        o_wb_data[0]) );
  INVD0BWP12T30P140 U703 ( .I(n556), .ZN(n558) );
  AO31D0BWP12T30P140 U704 ( .A1(ctrl[5]), .A2(n559), .A3(n558), .B(n557), .Z(
        n251) );
  AOI22D0BWP12T30P140 U705 ( .A1(ctrl[1]), .A2(n573), .B1(n572), .B2(
        divisor[1]), .ZN(n561) );
  AOI22D0BWP12T30P140 U706 ( .A1(DC[1]), .A2(n575), .B1(period[1]), .B2(n574), 
        .ZN(n560) );
  ND2D0BWP12T30P140 U707 ( .A1(n561), .A2(n560), .ZN(o_wb_data[1]) );
  AOI22D0BWP12T30P140 U708 ( .A1(ctrl[3]), .A2(n573), .B1(n572), .B2(
        divisor[3]), .ZN(n563) );
  AOI22D0BWP12T30P140 U709 ( .A1(DC[3]), .A2(n575), .B1(period[3]), .B2(n574), 
        .ZN(n562) );
  ND2D0BWP12T30P140 U710 ( .A1(n563), .A2(n562), .ZN(o_wb_data[3]) );
  AOI22D0BWP12T30P140 U711 ( .A1(n572), .A2(divisor[4]), .B1(n573), .B2(
        ctrl[4]), .ZN(n565) );
  AOI22D0BWP12T30P140 U712 ( .A1(DC[4]), .A2(n575), .B1(period[4]), .B2(n574), 
        .ZN(n564) );
  ND2D0BWP12T30P140 U713 ( .A1(n565), .A2(n564), .ZN(o_wb_data[4]) );
  AOI22D0BWP12T30P140 U714 ( .A1(n572), .A2(divisor[5]), .B1(n573), .B2(
        ctrl[5]), .ZN(n567) );
  AOI22D0BWP12T30P140 U715 ( .A1(DC[5]), .A2(n575), .B1(period[5]), .B2(n574), 
        .ZN(n566) );
  ND2D0BWP12T30P140 U716 ( .A1(n567), .A2(n566), .ZN(o_wb_data[5]) );
  AOI22D0BWP12T30P140 U717 ( .A1(ctrl[2]), .A2(n573), .B1(n572), .B2(
        divisor[2]), .ZN(n569) );
  AOI22D0BWP12T30P140 U718 ( .A1(DC[2]), .A2(n575), .B1(period[2]), .B2(n574), 
        .ZN(n568) );
  ND2D0BWP12T30P140 U719 ( .A1(n569), .A2(n568), .ZN(o_wb_data[2]) );
  AOI22D0BWP12T30P140 U720 ( .A1(n572), .A2(divisor[7]), .B1(n573), .B2(
        ctrl[7]), .ZN(n571) );
  AOI22D0BWP12T30P140 U721 ( .A1(DC[7]), .A2(n575), .B1(period[7]), .B2(n574), 
        .ZN(n570) );
  ND2D0BWP12T30P140 U722 ( .A1(n571), .A2(n570), .ZN(o_wb_data[7]) );
  AOI22D0BWP12T30P140 U723 ( .A1(ctrl[6]), .A2(n573), .B1(n572), .B2(
        divisor[6]), .ZN(n577) );
  AOI22D0BWP12T30P140 U724 ( .A1(DC[6]), .A2(n575), .B1(period[6]), .B2(n574), 
        .ZN(n576) );
  ND2D0BWP12T30P140 U725 ( .A1(n577), .A2(n576), .ZN(o_wb_data[6]) );
  ND2D0BWP12T30P140 U726 ( .A1(n579), .A2(n578), .ZN(n580) );
  MUX2ND0BWP12T30P140 U727 ( .I0(n582), .I1(n581), .S(n580), .ZN(n271) );
endmodule

