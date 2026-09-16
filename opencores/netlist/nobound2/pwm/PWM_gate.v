/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:50:06 2026
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
  INVD0BWP12T30P140 U10 ( .I(go), .ZN(n149) );
  INVD0BWP12T30P140 U11 ( .I(divisor[15]), .ZN(n67) );
  ND2D0BWP12T30P140 U12 ( .A1(ct_1[15]), .A2(n67), .ZN(n26) );
  AOI22D0BWP12T30P140 U13 ( .A1(divisor[13]), .A2(n193), .B1(divisor[12]), 
        .B2(n198), .ZN(n24) );
  INVD0BWP12T30P140 U14 ( .I(divisor[11]), .ZN(n57) );
  INVD0BWP12T30P140 U15 ( .I(divisor[8]), .ZN(n49) );
  NR2D0BWP12T30P140 U16 ( .A1(divisor[9]), .A2(n195), .ZN(n15) );
  INVD0BWP12T30P140 U17 ( .I(divisor[1]), .ZN(n37) );
  AOI21D0BWP12T30P140 U18 ( .A1(ct_1[1]), .A2(n37), .B(ct_1[0]), .ZN(n6) );
  AOI22D0BWP12T30P140 U19 ( .A1(n6), .A2(divisor[0]), .B1(divisor[1]), .B2(
        n194), .ZN(n7) );
  INVD0BWP12T30P140 U20 ( .I(divisor[2]), .ZN(n39) );
  MAOI222D0BWP12T30P140 U21 ( .A(ct_1[2]), .B(n7), .C(n39), .ZN(n8) );
  MAOI222D0BWP12T30P140 U22 ( .A(divisor[3]), .B(n8), .C(n201), .ZN(n9) );
  INVD0BWP12T30P140 U23 ( .I(divisor[4]), .ZN(n42) );
  MAOI222D0BWP12T30P140 U24 ( .A(ct_1[4]), .B(n9), .C(n42), .ZN(n10) );
  MAOI222D0BWP12T30P140 U25 ( .A(divisor[5]), .B(n10), .C(n202), .ZN(n11) );
  INVD0BWP12T30P140 U26 ( .I(divisor[6]), .ZN(n45) );
  MAOI222D0BWP12T30P140 U27 ( .A(ct_1[6]), .B(n11), .C(n45), .ZN(n12) );
  MAOI222D0BWP12T30P140 U28 ( .A(divisor[7]), .B(n12), .C(n203), .ZN(n13) );
  AOI211D0BWP12T30P140 U29 ( .A1(ct_1[8]), .A2(n49), .B(n15), .C(n13), .ZN(n18) );
  INVD0BWP12T30P140 U30 ( .I(divisor[10]), .ZN(n52) );
  AOI22D0BWP12T30P140 U31 ( .A1(divisor[9]), .A2(n195), .B1(divisor[8]), .B2(
        n199), .ZN(n14) );
  OAI22D0BWP12T30P140 U32 ( .A1(ct_1[10]), .A2(n52), .B1(n15), .B2(n14), .ZN(
        n17) );
  AOI22D0BWP12T30P140 U33 ( .A1(ct_1[10]), .A2(n52), .B1(ct_1[11]), .B2(n57), 
        .ZN(n16) );
  OAI21D0BWP12T30P140 U34 ( .A1(n18), .A2(n17), .B(n16), .ZN(n19) );
  OAI21D0BWP12T30P140 U35 ( .A1(ct_1[11]), .A2(n57), .B(n19), .ZN(n20) );
  OAI21D0BWP12T30P140 U36 ( .A1(divisor[12]), .A2(n198), .B(n20), .ZN(n23) );
  INVD0BWP12T30P140 U37 ( .I(divisor[14]), .ZN(n59) );
  AOI22D0BWP12T30P140 U38 ( .A1(ct_1[14]), .A2(n59), .B1(ct_1[15]), .B2(n67), 
        .ZN(n21) );
  OAI21D0BWP12T30P140 U39 ( .A1(divisor[13]), .A2(n193), .B(n21), .ZN(n22) );
  AOI21D0BWP12T30P140 U40 ( .A1(n24), .A2(n23), .B(n22), .ZN(n25) );
  AOI31D0BWP12T30P140 U41 ( .A1(divisor[14]), .A2(n26), .A3(n196), .B(n25), 
        .ZN(n27) );
  OAI21D0BWP12T30P140 U42 ( .A1(ct_1[15]), .A2(n67), .B(n27), .ZN(n28) );
  ND2D0BWP12T30P140 U43 ( .A1(go), .A2(b), .ZN(n30) );
  NR2D0BWP12T30P140 U44 ( .A1(n28), .A2(n30), .ZN(n29) );
  AOI221D0BWP12T30P140 U45 ( .A1(a), .A2(n207), .B1(n149), .B2(n207), .C(n29), 
        .ZN(n121) );
  INVD0BWP12T30P140 U46 ( .I(n30), .ZN(n176) );
  ND2D0BWP12T30P140 U47 ( .A1(n176), .A2(n28), .ZN(n177) );
  NR3D0BWP12T30P140 U48 ( .A1(n200), .A2(n194), .A3(n197), .ZN(n35) );
  ND2D0BWP12T30P140 U49 ( .A1(ct_1[3]), .A2(n35), .ZN(n71) );
  NR2D0BWP12T30P140 U50 ( .A1(n204), .A2(n71), .ZN(n72) );
  ND2D0BWP12T30P140 U51 ( .A1(ct_1[5]), .A2(n72), .ZN(n87) );
  NR2D0BWP12T30P140 U52 ( .A1(n205), .A2(n87), .ZN(n126) );
  ND2D0BWP12T30P140 U53 ( .A1(ct_1[7]), .A2(n126), .ZN(n136) );
  NR2D0BWP12T30P140 U54 ( .A1(n199), .A2(n136), .ZN(n142) );
  ND2D0BWP12T30P140 U55 ( .A1(ct_1[9]), .A2(n142), .ZN(n153) );
  NR2D0BWP12T30P140 U56 ( .A1(n206), .A2(n153), .ZN(n156) );
  ND2D0BWP12T30P140 U57 ( .A1(ct_1[11]), .A2(n156), .ZN(n175) );
  NR3D0BWP12T30P140 U58 ( .A1(n198), .A2(n177), .A3(n175), .ZN(n179) );
  ND2D0BWP12T30P140 U59 ( .A1(ct_1[13]), .A2(n179), .ZN(n187) );
  OAI22D0BWP12T30P140 U60 ( .A1(n29), .A2(n208), .B1(n196), .B2(n187), .ZN(
        n119) );
  NR2D0BWP12T30P140 U61 ( .A1(ct_1[0]), .A2(n177), .ZN(n31) );
  AO21D0BWP12T30P140 U62 ( .A1(ct_1[0]), .A2(n30), .B(n31), .Z(n118) );
  NR2D0BWP12T30P140 U63 ( .A1(n31), .A2(n30), .ZN(n34) );
  INVD0BWP12T30P140 U64 ( .I(n177), .ZN(n186) );
  ND2D0BWP12T30P140 U65 ( .A1(n186), .A2(n194), .ZN(n33) );
  OAI22D0BWP12T30P140 U66 ( .A1(n34), .A2(n194), .B1(n197), .B2(n33), .ZN(n117) );
  ND3D0BWP12T30P140 U67 ( .A1(ct_1[1]), .A2(ct_1[0]), .A3(n186), .ZN(n32) );
  AOI32D0BWP12T30P140 U68 ( .A1(n34), .A2(ct_1[2]), .A3(n33), .B1(n32), .B2(
        n200), .ZN(n116) );
  OAI21D0BWP12T30P140 U69 ( .A1(n35), .A2(n177), .B(n176), .ZN(n69) );
  NR2D0BWP12T30P140 U70 ( .A1(ct_1[3]), .A2(n177), .ZN(n36) );
  AO22D0BWP12T30P140 U71 ( .A1(ct_1[3]), .A2(n69), .B1(n36), .B2(n35), .Z(n115) );
  INVD0BWP12T30P140 U72 ( .I(ct_0[10]), .ZN(n139) );
  INVD0BWP12T30P140 U73 ( .I(ct_0[8]), .ZN(n160) );
  INVD0BWP12T30P140 U74 ( .I(ct_0[6]), .ZN(n75) );
  INVD0BWP12T30P140 U75 ( .I(ct_0[4]), .ZN(n79) );
  INVD0BWP12T30P140 U76 ( .I(ct_0[2]), .ZN(n83) );
  INVD0BWP12T30P140 U77 ( .I(ct_0[1]), .ZN(n173) );
  INVD0BWP12T30P140 U78 ( .I(ct_0[0]), .ZN(n172) );
  NR3D0BWP12T30P140 U79 ( .A1(n83), .A2(n173), .A3(n172), .ZN(n131) );
  ND2D0BWP12T30P140 U80 ( .A1(ct_0[3]), .A2(n131), .ZN(n81) );
  NR2D0BWP12T30P140 U81 ( .A1(n79), .A2(n81), .ZN(n128) );
  ND2D0BWP12T30P140 U82 ( .A1(ct_0[5]), .A2(n128), .ZN(n77) );
  NR2D0BWP12T30P140 U83 ( .A1(n75), .A2(n77), .ZN(n154) );
  ND2D0BWP12T30P140 U84 ( .A1(ct_0[7]), .A2(n154), .ZN(n162) );
  NR2D0BWP12T30P140 U85 ( .A1(n160), .A2(n162), .ZN(n124) );
  ND2D0BWP12T30P140 U86 ( .A1(ct_0[9]), .A2(n124), .ZN(n141) );
  NR2D0BWP12T30P140 U87 ( .A1(n139), .A2(n141), .ZN(n146) );
  ND2D0BWP12T30P140 U88 ( .A1(go), .A2(a), .ZN(n144) );
  INVD0BWP12T30P140 U89 ( .I(n144), .ZN(n165) );
  ND2D0BWP12T30P140 U90 ( .A1(ct_0[15]), .A2(n67), .ZN(n65) );
  INVD0BWP12T30P140 U91 ( .I(ct_0[14]), .ZN(n168) );
  INVD0BWP12T30P140 U92 ( .I(ct_0[13]), .ZN(n189) );
  INVD0BWP12T30P140 U93 ( .I(ct_0[12]), .ZN(n181) );
  AOI22D0BWP12T30P140 U94 ( .A1(divisor[13]), .A2(n189), .B1(divisor[12]), 
        .B2(n181), .ZN(n63) );
  INVD0BWP12T30P140 U95 ( .I(ct_0[9]), .ZN(n138) );
  NR2D0BWP12T30P140 U96 ( .A1(divisor[9]), .A2(n138), .ZN(n51) );
  AOI21D0BWP12T30P140 U97 ( .A1(ct_0[1]), .A2(n37), .B(ct_0[0]), .ZN(n38) );
  AOI22D0BWP12T30P140 U98 ( .A1(divisor[0]), .A2(n38), .B1(divisor[1]), .B2(
        n173), .ZN(n40) );
  MAOI222D0BWP12T30P140 U99 ( .A(ct_0[2]), .B(n40), .C(n39), .ZN(n41) );
  INVD0BWP12T30P140 U100 ( .I(ct_0[3]), .ZN(n78) );
  MAOI222D0BWP12T30P140 U101 ( .A(divisor[3]), .B(n41), .C(n78), .ZN(n43) );
  MAOI222D0BWP12T30P140 U102 ( .A(ct_0[4]), .B(n43), .C(n42), .ZN(n44) );
  INVD0BWP12T30P140 U103 ( .I(ct_0[5]), .ZN(n74) );
  MAOI222D0BWP12T30P140 U104 ( .A(divisor[5]), .B(n44), .C(n74), .ZN(n46) );
  MAOI222D0BWP12T30P140 U105 ( .A(ct_0[6]), .B(n46), .C(n45), .ZN(n47) );
  INVD0BWP12T30P140 U106 ( .I(ct_0[7]), .ZN(n159) );
  MAOI222D0BWP12T30P140 U107 ( .A(divisor[7]), .B(n47), .C(n159), .ZN(n48) );
  AOI211D0BWP12T30P140 U108 ( .A1(ct_0[8]), .A2(n49), .B(n51), .C(n48), .ZN(
        n55) );
  AOI22D0BWP12T30P140 U109 ( .A1(divisor[9]), .A2(n138), .B1(divisor[8]), .B2(
        n160), .ZN(n50) );
  OAI22D0BWP12T30P140 U110 ( .A1(ct_0[10]), .A2(n52), .B1(n51), .B2(n50), .ZN(
        n54) );
  AOI22D0BWP12T30P140 U111 ( .A1(ct_0[10]), .A2(n52), .B1(ct_0[11]), .B2(n57), 
        .ZN(n53) );
  OAI21D0BWP12T30P140 U112 ( .A1(n55), .A2(n54), .B(n53), .ZN(n56) );
  OAI21D0BWP12T30P140 U113 ( .A1(ct_0[11]), .A2(n57), .B(n56), .ZN(n58) );
  OAI21D0BWP12T30P140 U114 ( .A1(divisor[12]), .A2(n181), .B(n58), .ZN(n62) );
  AOI22D0BWP12T30P140 U115 ( .A1(ct_0[14]), .A2(n59), .B1(ct_0[15]), .B2(n67), 
        .ZN(n60) );
  OAI21D0BWP12T30P140 U116 ( .A1(divisor[13]), .A2(n189), .B(n60), .ZN(n61) );
  AOI21D0BWP12T30P140 U117 ( .A1(n63), .A2(n62), .B(n61), .ZN(n64) );
  AOI31D0BWP12T30P140 U118 ( .A1(divisor[14]), .A2(n65), .A3(n168), .B(n64), 
        .ZN(n66) );
  OAI21D0BWP12T30P140 U119 ( .A1(ct_0[15]), .A2(n67), .B(n66), .ZN(n145) );
  ND2D0BWP12T30P140 U120 ( .A1(n165), .A2(n145), .ZN(n184) );
  OAI21D0BWP12T30P140 U121 ( .A1(n146), .A2(n184), .B(n165), .ZN(n180) );
  NR2D0BWP12T30P140 U122 ( .A1(ct_0[11]), .A2(n184), .ZN(n68) );
  AO22D0BWP12T30P140 U123 ( .A1(ct_0[11]), .A2(n180), .B1(n68), .B2(n146), .Z(
        n91) );
  AOI21D0BWP12T30P140 U124 ( .A1(n186), .A2(n201), .B(n69), .ZN(n70) );
  OAI32D0BWP12T30P140 U125 ( .A1(ct_1[4]), .A2(n177), .A3(n71), .B1(n70), .B2(
        n204), .ZN(n114) );
  NR2D0BWP12T30P140 U126 ( .A1(ct_0[0]), .A2(n184), .ZN(n82) );
  AO21D0BWP12T30P140 U127 ( .A1(ct_0[0]), .A2(n144), .B(n82), .Z(n102) );
  OAI21D0BWP12T30P140 U129 ( .A1(n72), .A2(n177), .B(n176), .ZN(n85) );
  NR2D0BWP12T30P140 U130 ( .A1(ct_1[5]), .A2(n177), .ZN(n73) );
  AO22D0BWP12T30P140 U131 ( .A1(ct_1[5]), .A2(n85), .B1(n73), .B2(n72), .Z(
        n113) );
  INVD0BWP12T30P140 U132 ( .I(n184), .ZN(n167) );
  OAI21D0BWP12T30P140 U133 ( .A1(n128), .A2(n184), .B(n165), .ZN(n130) );
  AOI21D0BWP12T30P140 U134 ( .A1(n167), .A2(n74), .B(n130), .ZN(n76) );
  OAI32D0BWP12T30P140 U135 ( .A1(ct_0[6]), .A2(n184), .A3(n77), .B1(n76), .B2(
        n75), .ZN(n96) );
  OAI21D0BWP12T30P140 U136 ( .A1(n131), .A2(n184), .B(n165), .ZN(n133) );
  AOI21D0BWP12T30P140 U137 ( .A1(n167), .A2(n78), .B(n133), .ZN(n80) );
  OAI32D0BWP12T30P140 U138 ( .A1(ct_0[4]), .A2(n184), .A3(n81), .B1(n80), .B2(
        n79), .ZN(n98) );
  NR2D0BWP12T30P140 U139 ( .A1(n82), .A2(n144), .ZN(n174) );
  ND2D0BWP12T30P140 U140 ( .A1(n167), .A2(n173), .ZN(n171) );
  ND3D0BWP12T30P140 U141 ( .A1(ct_0[1]), .A2(ct_0[0]), .A3(n167), .ZN(n84) );
  AOI32D0BWP12T30P140 U142 ( .A1(n174), .A2(ct_0[2]), .A3(n171), .B1(n84), 
        .B2(n83), .ZN(n100) );
  AOI21D0BWP12T30P140 U143 ( .A1(n186), .A2(n202), .B(n85), .ZN(n86) );
  OAI32D0BWP12T30P140 U144 ( .A1(ct_1[6]), .A2(n177), .A3(n87), .B1(n86), .B2(
        n205), .ZN(n112) );
  OAI21D0BWP12T30P140 U145 ( .A1(n124), .A2(n184), .B(n165), .ZN(n137) );
  NR2D0BWP12T30P140 U146 ( .A1(ct_0[9]), .A2(n184), .ZN(n125) );
  AO22D0BWP12T30P140 U147 ( .A1(ct_0[9]), .A2(n137), .B1(n125), .B2(n124), .Z(
        n93) );
  OAI21D0BWP12T30P140 U148 ( .A1(n126), .A2(n177), .B(n176), .ZN(n134) );
  NR2D0BWP12T30P140 U149 ( .A1(ct_1[7]), .A2(n177), .ZN(n127) );
  AO22D0BWP12T30P140 U150 ( .A1(ct_1[7]), .A2(n134), .B1(n127), .B2(n126), .Z(
        n111) );
  NR2D0BWP12T30P140 U151 ( .A1(ct_0[5]), .A2(n184), .ZN(n129) );
  AO22D0BWP12T30P140 U152 ( .A1(ct_0[5]), .A2(n130), .B1(n129), .B2(n128), .Z(
        n97) );
  NR2D0BWP12T30P140 U153 ( .A1(ct_0[3]), .A2(n184), .ZN(n132) );
  AO22D0BWP12T30P140 U154 ( .A1(ct_0[3]), .A2(n133), .B1(n132), .B2(n131), .Z(
        n99) );
  AOI21D0BWP12T30P140 U155 ( .A1(n186), .A2(n203), .B(n134), .ZN(n135) );
  OAI32D0BWP12T30P140 U156 ( .A1(ct_1[8]), .A2(n177), .A3(n136), .B1(n135), 
        .B2(n199), .ZN(n110) );
  AOI21D0BWP12T30P140 U157 ( .A1(n167), .A2(n138), .B(n137), .ZN(n140) );
  OAI32D0BWP12T30P140 U158 ( .A1(ct_0[10]), .A2(n184), .A3(n141), .B1(n140), 
        .B2(n139), .ZN(n92) );
  OAI21D0BWP12T30P140 U159 ( .A1(n142), .A2(n177), .B(n176), .ZN(n151) );
  NR2D0BWP12T30P140 U160 ( .A1(ct_1[9]), .A2(n177), .ZN(n143) );
  AO22D0BWP12T30P140 U161 ( .A1(ct_1[9]), .A2(n151), .B1(n143), .B2(n142), .Z(
        n109) );
  NR2D0BWP12T30P140 U162 ( .A1(n145), .A2(n144), .ZN(n148) );
  INVD0BWP12T30P140 U163 ( .I(ct_0[15]), .ZN(n147) );
  ND2D0BWP12T30P140 U164 ( .A1(ct_0[11]), .A2(n146), .ZN(n183) );
  NR3D0BWP12T30P140 U165 ( .A1(n181), .A2(n184), .A3(n183), .ZN(n190) );
  ND2D0BWP12T30P140 U166 ( .A1(ct_0[13]), .A2(n190), .ZN(n169) );
  OAI22D0BWP12T30P140 U167 ( .A1(n148), .A2(n147), .B1(n168), .B2(n169), .ZN(
        n103) );
  INVD0BWP12T30P140 U168 ( .I(a), .ZN(n150) );
  AOI221D0BWP12T30P140 U169 ( .A1(b), .A2(n150), .B1(n149), .B2(n150), .C(n148), .ZN(n120) );
  AOI21D0BWP12T30P140 U170 ( .A1(n186), .A2(n195), .B(n151), .ZN(n152) );
  OAI32D0BWP12T30P140 U171 ( .A1(ct_1[10]), .A2(n177), .A3(n153), .B1(n152), 
        .B2(n206), .ZN(n108) );
  OAI21D0BWP12T30P140 U172 ( .A1(n154), .A2(n184), .B(n165), .ZN(n158) );
  NR2D0BWP12T30P140 U173 ( .A1(ct_0[7]), .A2(n184), .ZN(n155) );
  AO22D0BWP12T30P140 U174 ( .A1(ct_0[7]), .A2(n158), .B1(n155), .B2(n154), .Z(
        n95) );
  OAI21D0BWP12T30P140 U175 ( .A1(n156), .A2(n177), .B(n176), .ZN(n163) );
  NR2D0BWP12T30P140 U176 ( .A1(ct_1[11]), .A2(n177), .ZN(n157) );
  AO22D0BWP12T30P140 U177 ( .A1(ct_1[11]), .A2(n163), .B1(n157), .B2(n156), 
        .Z(n107) );
  AOI21D0BWP12T30P140 U178 ( .A1(n167), .A2(n159), .B(n158), .ZN(n161) );
  OAI32D0BWP12T30P140 U179 ( .A1(ct_0[8]), .A2(n184), .A3(n162), .B1(n161), 
        .B2(n160), .ZN(n94) );
  IAO21D0BWP12T30P140 U180 ( .A1(n177), .A2(ct_1[11]), .B(n163), .ZN(n164) );
  OAI32D0BWP12T30P140 U181 ( .A1(ct_1[12]), .A2(n177), .A3(n175), .B1(n164), 
        .B2(n198), .ZN(n106) );
  NR2D0BWP12T30P140 U182 ( .A1(n181), .A2(n183), .ZN(n166) );
  OAI21D0BWP12T30P140 U183 ( .A1(n166), .A2(n184), .B(n165), .ZN(n191) );
  AOI21D0BWP12T30P140 U184 ( .A1(n167), .A2(n189), .B(n191), .ZN(n170) );
  AOI22D0BWP12T30P140 U185 ( .A1(ct_0[14]), .A2(n170), .B1(n169), .B2(n168), 
        .ZN(n88) );
  OAI22D0BWP12T30P140 U186 ( .A1(n174), .A2(n173), .B1(n172), .B2(n171), .ZN(
        n101) );
  NR2D0BWP12T30P140 U187 ( .A1(n198), .A2(n175), .ZN(n178) );
  OAI21D0BWP12T30P140 U188 ( .A1(n178), .A2(n177), .B(n176), .ZN(n185) );
  CKMUX2D0BWP12T30P140 U189 ( .I0(n185), .I1(n179), .S(n193), .Z(n105) );
  IAO21D0BWP12T30P140 U190 ( .A1(n184), .A2(ct_0[11]), .B(n180), .ZN(n182) );
  OAI32D0BWP12T30P140 U191 ( .A1(ct_0[12]), .A2(n184), .A3(n183), .B1(n182), 
        .B2(n181), .ZN(n90) );
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
         switch_ack_clrint, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n592, n593, n594, n595, n596, n597,
         n598, n599, n600;
  wire   [7:0] ctrl;
  wire   [15:0] DC;
  wire   [15:0] period;
  wire   [15:0] divisor;
  wire   [1:0] state;
  wire   [15:0] extDC;
  wire   [15:0] ct;

  down_clocking_even down_clocking_even_0 ( .i_clk(clk_source), .i_rst(n592), 
        .i_divisor({n_Logic0_, divisor[15:1]}), .o_clk(eclk) );
  down_clocking_odd down_clocking_odd_0 ( .i_clk(n597), .i_rst(n592), 
        .i_divisor({n_Logic0_, divisor[15:1]}), .o_clk(oclk) );
  DFCNQD1BWP12T30P140 ctrl_reg_5_ ( .D(n255), .CP(i_wb_clk), .CDN(n594), .Q(
        ctrl[5]) );
  DFCNQD1BWP12T30P140 DC_reg_0_ ( .D(n298), .CP(i_wb_clk), .CDN(n593), .Q(
        DC[0]) );
  DFCNQD1BWP12T30P140 ctrl_reg_4_ ( .D(n280), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[4]) );
  DFCNQD1BWP12T30P140 ctrl_reg_7_ ( .D(n278), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[7]) );
  DFCNQD1BWP12T30P140 ctrl_reg_3_ ( .D(n281), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[3]) );
  DFCNQD1BWP12T30P140 period_reg_13_ ( .D(n301), .CP(n599), .CDN(n254), .Q(
        period[13]) );
  DFCNQD1BWP12T30P140 DC_reg_11_ ( .D(n287), .CP(n600), .CDN(n593), .Q(DC[11])
         );
  DFCNQD1BWP12T30P140 DC_reg_6_ ( .D(n292), .CP(n600), .CDN(n593), .Q(DC[6])
         );
  DFCNQD1BWP12T30P140 DC_reg_4_ ( .D(n294), .CP(n600), .CDN(n593), .Q(DC[4])
         );
  DFCNQD1BWP12T30P140 DC_reg_2_ ( .D(n296), .CP(n600), .CDN(n593), .Q(DC[2])
         );
  DFCNQD1BWP12T30P140 ctrl_reg_1_ ( .D(n331), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[1]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n275), .CP(i_wb_clk), .CDN(n594), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 clrint_reg ( .D(n273), .CP(i_wb_clk), .CDN(n594), .Q(
        clrint) );
  DFCNQD1BWP12T30P140 DC_reg_1_ ( .D(n297), .CP(n600), .CDN(n593), .Q(DC[1])
         );
  DFCNQD1BWP12T30P140 period_reg_3_ ( .D(n311), .CP(n599), .CDN(n254), .Q(
        period[3]) );
  DFCNQD1BWP12T30P140 DC_reg_7_ ( .D(n291), .CP(n600), .CDN(n593), .Q(DC[7])
         );
  DFCNQD1BWP12T30P140 DC_reg_5_ ( .D(n293), .CP(n600), .CDN(n593), .Q(DC[5])
         );
  DFCNQD1BWP12T30P140 DC_reg_3_ ( .D(n295), .CP(n600), .CDN(n593), .Q(DC[3])
         );
  DFCNQD1BWP12T30P140 period_reg_0_ ( .D(n314), .CP(n600), .CDN(n594), .Q(
        period[0]) );
  DFCNQD1BWP12T30P140 DC_reg_15_ ( .D(n283), .CP(n598), .CDN(n254), .Q(DC[15])
         );
  DFCNQD1BWP12T30P140 DC_reg_10_ ( .D(n288), .CP(n600), .CDN(n593), .Q(DC[10])
         );
  DFCNQD1BWP12T30P140 DC_reg_9_ ( .D(n289), .CP(n600), .CDN(n593), .Q(DC[9])
         );
  DFCNQD1BWP12T30P140 DC_reg_8_ ( .D(n290), .CP(n600), .CDN(n593), .Q(DC[8])
         );
  DFCNQD1BWP12T30P140 period_reg_1_ ( .D(n313), .CP(n599), .CDN(n254), .Q(
        period[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n274), .CP(i_wb_clk), .CDN(n593), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 period_reg_14_ ( .D(n300), .CP(n599), .CDN(n594), .Q(
        period[14]) );
  DFCNQD1BWP12T30P140 period_reg_15_ ( .D(n299), .CP(n599), .CDN(n254), .Q(
        period[15]) );
  DFCNQD1BWP12T30P140 period_reg_12_ ( .D(n302), .CP(n599), .CDN(n594), .Q(
        period[12]) );
  DFCNQD1BWP12T30P140 period_reg_9_ ( .D(n305), .CP(n599), .CDN(n254), .Q(
        period[9]) );
  DFCNQD1BWP12T30P140 period_reg_8_ ( .D(n306), .CP(n599), .CDN(n594), .Q(
        period[8]) );
  DFCNQD1BWP12T30P140 period_reg_6_ ( .D(n308), .CP(n600), .CDN(n594), .Q(
        period[6]) );
  DFCNQD1BWP12T30P140 period_reg_4_ ( .D(n310), .CP(n598), .CDN(n594), .Q(
        period[4]) );
  DFCNQD1BWP12T30P140 period_reg_2_ ( .D(n312), .CP(n599), .CDN(n594), .Q(
        period[2]) );
  DFCNQD1BWP12T30P140 DC_reg_13_ ( .D(n285), .CP(n600), .CDN(n254), .Q(DC[13])
         );
  DFCNQD1BWP12T30P140 DC_reg_14_ ( .D(n284), .CP(n598), .CDN(n254), .Q(DC[14])
         );
  DFCNQD1BWP12T30P140 period_reg_11_ ( .D(n303), .CP(n599), .CDN(n254), .Q(
        period[11]) );
  DFCNQD1BWP12T30P140 period_reg_10_ ( .D(n304), .CP(n599), .CDN(n594), .Q(
        period[10]) );
  DFCNQD1BWP12T30P140 period_reg_7_ ( .D(n307), .CP(n599), .CDN(n254), .Q(
        period[7]) );
  DFCNQD1BWP12T30P140 period_reg_5_ ( .D(n309), .CP(n600), .CDN(n254), .Q(
        period[5]) );
  DFCNQD1BWP12T30P140 ctrl_reg_0_ ( .D(n277), .CP(n598), .CDN(n592), .Q(
        ctrl[0]) );
  DFCNQD1BWP12T30P140 ct_reg_11_ ( .D(n267), .CP(n596), .CDN(n237), .Q(ct[11])
         );
  DFCNQD1BWP12T30P140 DC_reg_12_ ( .D(n286), .CP(n600), .CDN(n593), .Q(DC[12])
         );
  DFCNQD1BWP12T30P140 divisor_reg_0_ ( .D(n330), .CP(n599), .CDN(n594), .Q(
        divisor[0]) );
  DFCNQD1BWP12T30P140 extDC_reg_15_ ( .D(n253), .CP(n596), .CDN(n595), .Q(
        extDC[15]) );
  DFCNQD1BWP12T30P140 extDC_reg_1_ ( .D(n239), .CP(n596), .CDN(n595), .Q(
        extDC[1]) );
  DFCNQD1BWP12T30P140 ct_reg_13_ ( .D(n269), .CP(n596), .CDN(n595), .Q(ct[13])
         );
  DFCNQD1BWP12T30P140 ct_reg_14_ ( .D(n270), .CP(n596), .CDN(n595), .Q(ct[14])
         );
  DFCNQD1BWP12T30P140 ct_reg_9_ ( .D(n265), .CP(n596), .CDN(n237), .Q(ct[9])
         );
  DFCNQD1BWP12T30P140 ctrl_reg_2_ ( .D(n282), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[2]) );
  DFCNQD1BWP12T30P140 pts_reg ( .D(n276), .CP(n596), .CDN(n595), .Q(pts) );
  DFCNQD1BWP12T30P140 ct_reg_7_ ( .D(n263), .CP(n596), .CDN(n237), .Q(ct[7])
         );
  DFCNQD1BWP12T30P140 ct_reg_5_ ( .D(n261), .CP(n596), .CDN(n237), .Q(ct[5])
         );
  DFCNQD1BWP12T30P140 ct_reg_3_ ( .D(n259), .CP(n596), .CDN(n595), .Q(ct[3])
         );
  DFCNQD1BWP12T30P140 extDC_reg_13_ ( .D(n251), .CP(n596), .CDN(n595), .Q(
        extDC[13]) );
  DFCNQD1BWP12T30P140 divisor_reg_14_ ( .D(n316), .CP(n598), .CDN(n592), .Q(
        divisor[14]) );
  DFCNQD1BWP12T30P140 divisor_reg_10_ ( .D(n320), .CP(n598), .CDN(n592), .Q(
        divisor[10]) );
  DFCNQD1BWP12T30P140 extDC_reg_0_ ( .D(n238), .CP(clk), .CDN(n595), .Q(
        extDC[0]) );
  DFCNQD1BWP12T30P140 extDC_reg_10_ ( .D(n248), .CP(clk), .CDN(n595), .Q(
        extDC[10]) );
  DFCNQD1BWP12T30P140 extDC_reg_9_ ( .D(n247), .CP(clk), .CDN(n595), .Q(
        extDC[9]) );
  DFCNQD1BWP12T30P140 extDC_reg_8_ ( .D(n246), .CP(clk), .CDN(n595), .Q(
        extDC[8]) );
  DFCNQD1BWP12T30P140 extDC_reg_7_ ( .D(n245), .CP(clk), .CDN(n595), .Q(
        extDC[7]) );
  DFCNQD1BWP12T30P140 extDC_reg_5_ ( .D(n243), .CP(clk), .CDN(n237), .Q(
        extDC[5]) );
  DFCNQD1BWP12T30P140 extDC_reg_3_ ( .D(n241), .CP(clk), .CDN(n595), .Q(
        extDC[3]) );
  DFCNQD1BWP12T30P140 extDC_reg_11_ ( .D(n249), .CP(clk), .CDN(n595), .Q(
        extDC[11]) );
  DFCNQD1BWP12T30P140 extDC_reg_6_ ( .D(n244), .CP(clk), .CDN(n237), .Q(
        extDC[6]) );
  DFCNQD1BWP12T30P140 extDC_reg_4_ ( .D(n242), .CP(clk), .CDN(n237), .Q(
        extDC[4]) );
  DFCNQD1BWP12T30P140 extDC_reg_2_ ( .D(n240), .CP(clk), .CDN(n237), .Q(
        extDC[2]) );
  DFCNQD1BWP12T30P140 switch_ack_clrint_reg ( .D(n256), .CP(clk), .CDN(n595), 
        .Q(switch_ack_clrint) );
  DFCNQD1BWP12T30P140 divisor_reg_4_ ( .D(n326), .CP(n598), .CDN(n592), .Q(
        divisor[4]) );
  DFCNQD1BWP12T30P140 divisor_reg_6_ ( .D(n324), .CP(n598), .CDN(n592), .Q(
        divisor[6]) );
  DFCNQD1BWP12T30P140 divisor_reg_12_ ( .D(n318), .CP(n598), .CDN(n592), .Q(
        divisor[12]) );
  DFCNQD1BWP12T30P140 divisor_reg_8_ ( .D(n322), .CP(n598), .CDN(n592), .Q(
        divisor[8]) );
  DFCNQD1BWP12T30P140 ct_reg_0_ ( .D(n272), .CP(n596), .CDN(n237), .Q(ct[0])
         );
  DFCNQD1BWP12T30P140 extDC_reg_14_ ( .D(n252), .CP(clk), .CDN(n595), .Q(
        extDC[14]) );
  DFCNQD1BWP12T30P140 extDC_reg_12_ ( .D(n250), .CP(clk), .CDN(n595), .Q(
        extDC[12]) );
  DFCNQD1BWP12T30P140 ct_reg_12_ ( .D(n268), .CP(n596), .CDN(n237), .Q(ct[12])
         );
  DFCNQD1BWP12T30P140 divisor_reg_7_ ( .D(n323), .CP(n598), .CDN(n592), .Q(
        divisor[7]) );
  DFCNQD1BWP12T30P140 divisor_reg_9_ ( .D(n321), .CP(n598), .CDN(n592), .Q(
        divisor[9]) );
  DFCNQD1BWP12T30P140 divisor_reg_5_ ( .D(n325), .CP(n598), .CDN(n592), .Q(
        divisor[5]) );
  DFCNQD1BWP12T30P140 divisor_reg_13_ ( .D(n317), .CP(n598), .CDN(n592), .Q(
        divisor[13]) );
  DFCNQD1BWP12T30P140 divisor_reg_15_ ( .D(n315), .CP(n598), .CDN(n592), .Q(
        divisor[15]) );
  DFCNQD1BWP12T30P140 divisor_reg_11_ ( .D(n319), .CP(n598), .CDN(n592), .Q(
        divisor[11]) );
  DFCNQD1BWP12T30P140 ct_reg_8_ ( .D(n264), .CP(n596), .CDN(n237), .Q(ct[8])
         );
  DFCNQD1BWP12T30P140 ct_reg_1_ ( .D(n257), .CP(n596), .CDN(n595), .Q(ct[1])
         );
  DFCNQD1BWP12T30P140 divisor_reg_3_ ( .D(n327), .CP(n599), .CDN(n592), .Q(
        divisor[3]) );
  DFCNQD1BWP12T30P140 ct_reg_6_ ( .D(n262), .CP(clk), .CDN(n237), .Q(ct[6]) );
  DFCNQD1BWP12T30P140 ct_reg_4_ ( .D(n260), .CP(clk), .CDN(n595), .Q(ct[4]) );
  DFCNQD1BWP12T30P140 ct_reg_15_ ( .D(n271), .CP(n596), .CDN(n237), .Q(ct[15])
         );
  DFCNQD1BWP12T30P140 ct_reg_2_ ( .D(n258), .CP(clk), .CDN(n595), .Q(ct[2]) );
  DFCNQD1BWP12T30P140 ct_reg_10_ ( .D(n266), .CP(n596), .CDN(n237), .Q(ct[10])
         );
  DFCNQD1BWP12T30P140 divisor_reg_2_ ( .D(n328), .CP(n599), .CDN(n592), .Q(
        divisor[2]) );
  DFCNQD1BWP12T30P140 ctrl_reg_6_ ( .D(n279), .CP(i_wb_clk), .CDN(n593), .Q(
        ctrl[6]) );
  DFCNQD1BWP12T30P140 divisor_reg_1_ ( .D(n329), .CP(n599), .CDN(n592), .Q(
        divisor[1]) );
  CKMUX2D0BWP12T30P140 U352 ( .I0(i_wb_clk), .I1(i_extclk), .S(ctrl[0]), .Z(
        clk_source) );
  CKMUX2D0BWP12T30P140 U353 ( .I0(eclk), .I1(oclk), .S(divisor[0]), .Z(clk) );
  INVD0BWP12T30P140 U354 ( .I(ctrl[6]), .ZN(n332) );
  INVD0BWP12T30P140 U355 ( .I(n488), .ZN(n333) );
  INR2D1BWP12T30P140 U356 ( .A1(n580), .B1(n539), .ZN(n436) );
  TIELBWP12T30P140 U357 ( .ZN(n_Logic0_) );
  CKBD0BWP12T30P140 U358 ( .I(i_wb_stb), .Z(o_wb_ack) );
  NR2D0BWP12T30P140 U359 ( .A1(i_wb_adr[13]), .A2(i_wb_adr[14]), .ZN(n337) );
  NR4D0BWP12T30P140 U360 ( .A1(i_wb_adr[4]), .A2(i_wb_adr[12]), .A3(
        i_wb_adr[0]), .A4(i_wb_adr[5]), .ZN(n336) );
  NR4D0BWP12T30P140 U361 ( .A1(i_wb_adr[8]), .A2(i_wb_adr[6]), .A3(i_wb_adr[7]), .A4(i_wb_adr[11]), .ZN(n335) );
  NR4D0BWP12T30P140 U362 ( .A1(i_wb_adr[9]), .A2(i_wb_adr[10]), .A3(
        i_wb_adr[3]), .A4(i_wb_adr[15]), .ZN(n334) );
  ND4D0BWP12T30P140 U363 ( .A1(n337), .A2(n336), .A3(n335), .A4(n334), .ZN(
        n431) );
  IND2D1BWP12T30P140 U364 ( .A1(n431), .B1(i_wb_adr[1]), .ZN(n505) );
  NR2D0BWP12T30P140 U365 ( .A1(i_wb_adr[2]), .A2(n505), .ZN(n580) );
  ND3D0BWP12T30P140 U366 ( .A1(i_wb_stb), .A2(i_wb_we), .A3(i_wb_cyc), .ZN(
        n539) );
  CKBD0BWP12T30P140 U367 ( .I(n436), .Z(n504) );
  INVD0BWP12T30P140 U368 ( .I(i_wb_data[8]), .ZN(n550) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n504), .A2(n550), .B1(divisor[8]), .B2(n436), 
        .ZN(n322) );
  INVD0BWP12T30P140 U370 ( .I(i_wb_data[12]), .ZN(n525) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n436), .A2(n525), .B1(divisor[12]), .B2(n504), .ZN(n318) );
  INVD0BWP12T30P140 U372 ( .I(period[10]), .ZN(n514) );
  INVD0BWP12T30P140 U373 ( .I(period[1]), .ZN(n560) );
  INVD0BWP12T30P140 U374 ( .I(period[0]), .ZN(n557) );
  ND2D0BWP12T30P140 U375 ( .A1(n560), .A2(n557), .ZN(n345) );
  NR2D0BWP12T30P140 U376 ( .A1(period[2]), .A2(n345), .ZN(n344) );
  INVD0BWP12T30P140 U377 ( .I(period[3]), .ZN(n532) );
  ND2D0BWP12T30P140 U378 ( .A1(n344), .A2(n532), .ZN(n353) );
  NR2D0BWP12T30P140 U379 ( .A1(period[4]), .A2(n353), .ZN(n352) );
  INVD0BWP12T30P140 U380 ( .I(period[5]), .ZN(n512) );
  ND2D0BWP12T30P140 U381 ( .A1(n352), .A2(n512), .ZN(n358) );
  NR2D0BWP12T30P140 U382 ( .A1(period[6]), .A2(n358), .ZN(n363) );
  INVD0BWP12T30P140 U383 ( .I(period[7]), .ZN(n513) );
  ND2D0BWP12T30P140 U384 ( .A1(n363), .A2(n513), .ZN(n340) );
  NR2D0BWP12T30P140 U385 ( .A1(period[8]), .A2(n340), .ZN(n339) );
  INVD0BWP12T30P140 U386 ( .I(n339), .ZN(n371) );
  NR2D0BWP12T30P140 U387 ( .A1(n371), .A2(period[9]), .ZN(n370) );
  ND2D0BWP12T30P140 U388 ( .A1(n514), .A2(n370), .ZN(n369) );
  NR2D0BWP12T30P140 U389 ( .A1(n369), .A2(period[11]), .ZN(n368) );
  INVD0BWP12T30P140 U390 ( .I(n368), .ZN(n338) );
  NR2D0BWP12T30P140 U391 ( .A1(period[12]), .A2(n338), .ZN(n388) );
  INVD0BWP12T30P140 U392 ( .I(period[13]), .ZN(n517) );
  ND2D0BWP12T30P140 U393 ( .A1(n388), .A2(n517), .ZN(n387) );
  NR2D0BWP12T30P140 U394 ( .A1(period[14]), .A2(n387), .ZN(n386) );
  INVD0BWP12T30P140 U395 ( .I(n386), .ZN(n389) );
  NR2D0BWP12T30P140 U396 ( .A1(n389), .A2(period[15]), .ZN(n362) );
  INVD0BWP12T30P140 U397 ( .I(n362), .ZN(n396) );
  AOI22D0BWP12T30P140 U398 ( .A1(n338), .A2(period[12]), .B1(n396), .B2(n388), 
        .ZN(n395) );
  AOI22D0BWP12T30P140 U399 ( .A1(n340), .A2(period[8]), .B1(n396), .B2(n339), 
        .ZN(n374) );
  NR2D0BWP12T30P140 U400 ( .A1(n370), .A2(period[10]), .ZN(n341) );
  AOI211D0BWP12T30P140 U401 ( .A1(n370), .A2(period[10]), .B(n362), .C(n341), 
        .ZN(n372) );
  INVD0BWP12T30P140 U402 ( .I(ct[10]), .ZN(n421) );
  NR2D0BWP12T30P140 U403 ( .A1(n372), .A2(n421), .ZN(n367) );
  NR2D0BWP12T30P140 U404 ( .A1(n352), .A2(period[5]), .ZN(n342) );
  AOI211D0BWP12T30P140 U405 ( .A1(n352), .A2(period[5]), .B(n362), .C(n342), 
        .ZN(n357) );
  INVD0BWP12T30P140 U406 ( .I(n344), .ZN(n343) );
  AOI221D0BWP12T30P140 U407 ( .A1(n344), .A2(period[3]), .B1(n343), .B2(n532), 
        .C(n362), .ZN(n351) );
  AOI22D0BWP12T30P140 U408 ( .A1(n345), .A2(period[2]), .B1(n396), .B2(n344), 
        .ZN(n349) );
  AOI211D0BWP12T30P140 U409 ( .A1(period[1]), .A2(ct[1]), .B(period[0]), .C(
        ct[0]), .ZN(n347) );
  AOI221D0BWP12T30P140 U410 ( .A1(period[0]), .A2(n560), .B1(n557), .B2(
        period[1]), .C(ct[1]), .ZN(n346) );
  OAI21D0BWP12T30P140 U411 ( .A1(n347), .A2(n346), .B(n396), .ZN(n348) );
  MAOI222D0BWP12T30P140 U412 ( .A(ct[2]), .B(n349), .C(n348), .ZN(n350) );
  INVD0BWP12T30P140 U413 ( .I(ct[3]), .ZN(n425) );
  MAOI222D0BWP12T30P140 U414 ( .A(n351), .B(n350), .C(n425), .ZN(n355) );
  AOI22D0BWP12T30P140 U415 ( .A1(n353), .A2(period[4]), .B1(n396), .B2(n352), 
        .ZN(n354) );
  MAOI222D0BWP12T30P140 U416 ( .A(n355), .B(ct[4]), .C(n354), .ZN(n356) );
  INVD0BWP12T30P140 U417 ( .I(ct[5]), .ZN(n429) );
  MAOI222D0BWP12T30P140 U418 ( .A(n357), .B(n356), .C(n429), .ZN(n360) );
  AOI22D0BWP12T30P140 U419 ( .A1(n358), .A2(period[6]), .B1(n396), .B2(n363), 
        .ZN(n359) );
  MAOI222D0BWP12T30P140 U420 ( .A(n360), .B(ct[6]), .C(n359), .ZN(n365) );
  NR2D0BWP12T30P140 U421 ( .A1(n363), .A2(period[7]), .ZN(n361) );
  AOI211D0BWP12T30P140 U422 ( .A1(n363), .A2(period[7]), .B(n362), .C(n361), 
        .ZN(n364) );
  INVD0BWP12T30P140 U423 ( .I(ct[7]), .ZN(n434) );
  MAOI222D0BWP12T30P140 U424 ( .A(n365), .B(n364), .C(n434), .ZN(n366) );
  AOI211D0BWP12T30P140 U425 ( .A1(ct[8]), .A2(n374), .B(n367), .C(n366), .ZN(
        n382) );
  AOI21D0BWP12T30P140 U426 ( .A1(period[11]), .A2(n369), .B(n368), .ZN(n383)
         );
  ND2D0BWP12T30P140 U427 ( .A1(n383), .A2(ct[11]), .ZN(n381) );
  AOI22D0BWP12T30P140 U428 ( .A1(n371), .A2(period[9]), .B1(n396), .B2(n370), 
        .ZN(n373) );
  ND2D0BWP12T30P140 U429 ( .A1(ct[9]), .A2(n373), .ZN(n380) );
  INVD0BWP12T30P140 U430 ( .I(n372), .ZN(n378) );
  INVD0BWP12T30P140 U431 ( .I(n373), .ZN(n376) );
  INVD0BWP12T30P140 U432 ( .I(ct[9]), .ZN(n494) );
  NR2D0BWP12T30P140 U433 ( .A1(n374), .A2(ct[8]), .ZN(n375) );
  MAOI222D0BWP12T30P140 U434 ( .A(n376), .B(n494), .C(n375), .ZN(n377) );
  MAOI222D0BWP12T30P140 U435 ( .A(ct[10]), .B(n378), .C(n377), .ZN(n379) );
  AOI32D0BWP12T30P140 U436 ( .A1(n382), .A2(n381), .A3(n380), .B1(n379), .B2(
        n381), .ZN(n385) );
  INVD0BWP12T30P140 U437 ( .I(ct[11]), .ZN(n509) );
  IND3D1BWP12T30P140 U438 ( .A1(n383), .B1(n509), .B2(n396), .ZN(n384) );
  AOI22D0BWP12T30P140 U439 ( .A1(ct[12]), .A2(n395), .B1(n385), .B2(n384), 
        .ZN(n403) );
  AOI21D0BWP12T30P140 U440 ( .A1(period[14]), .A2(n387), .B(n386), .ZN(n397)
         );
  INVD0BWP12T30P140 U441 ( .I(ct[13]), .ZN(n502) );
  OAI21D0BWP12T30P140 U442 ( .A1(n388), .A2(n517), .B(n387), .ZN(n392) );
  ND2D0BWP12T30P140 U443 ( .A1(period[15]), .A2(n389), .ZN(n399) );
  ND2D0BWP12T30P140 U444 ( .A1(ct[15]), .A2(n399), .ZN(n390) );
  OAI21D0BWP12T30P140 U445 ( .A1(n502), .A2(n392), .B(n390), .ZN(n391) );
  AOI21D0BWP12T30P140 U446 ( .A1(ct[14]), .A2(n397), .B(n391), .ZN(n402) );
  INVD0BWP12T30P140 U447 ( .I(n392), .ZN(n394) );
  ND2D0BWP12T30P140 U448 ( .A1(n502), .A2(n396), .ZN(n393) );
  OAI22D0BWP12T30P140 U449 ( .A1(ct[12]), .A2(n395), .B1(n394), .B2(n393), 
        .ZN(n401) );
  INVD0BWP12T30P140 U450 ( .I(ct[14]), .ZN(n498) );
  IND3D1BWP12T30P140 U451 ( .A1(n397), .B1(n396), .B2(n498), .ZN(n398) );
  MAOI222D0BWP12T30P140 U452 ( .A(ct[15]), .B(n399), .C(n398), .ZN(n400) );
  AOI221D0BWP12T30P140 U453 ( .A1(n403), .A2(n402), .B1(n401), .B2(n402), .C(
        n400), .ZN(n438) );
  INVD0BWP12T30P140 U454 ( .I(n438), .ZN(n404) );
  ND2D0BWP12T30P140 U455 ( .A1(n404), .A2(ctrl[2]), .ZN(n488) );
  INVD0BWP12T30P140 U456 ( .I(ct[0]), .ZN(n409) );
  INVD0BWP12T30P140 U457 ( .I(ctrl[1]), .ZN(n537) );
  INVD0BWP12T30P140 U458 ( .I(ctrl[3]), .ZN(n516) );
  ND2D0BWP12T30P140 U459 ( .A1(n537), .A2(n516), .ZN(n489) );
  INVD0BWP12T30P140 U460 ( .I(clrint), .ZN(n437) );
  NR2D0BWP12T30P140 U461 ( .A1(ctrl[1]), .A2(n437), .ZN(n569) );
  AOI221D0BWP12T30P140 U462 ( .A1(n404), .A2(ctrl[2]), .B1(n489), .B2(ctrl[2]), 
        .C(n569), .ZN(n496) );
  MAOI22D0BWP12T30P140 U463 ( .A1(n488), .A2(n409), .B1(n409), .B2(n496), .ZN(
        n272) );
  INVD0BWP12T30P140 U464 ( .I(i_wb_data[6]), .ZN(n522) );
  MAOI22D0BWP12T30P140 U465 ( .A1(n504), .A2(n522), .B1(divisor[6]), .B2(n504), 
        .ZN(n324) );
  CKMUX2D0BWP12T30P140 U466 ( .I0(extDC[14]), .I1(i_DC[14]), .S(i_valid_DC), 
        .Z(n252) );
  INVD0BWP12T30P140 U467 ( .I(i_wb_data[4]), .ZN(n524) );
  MAOI22D0BWP12T30P140 U468 ( .A1(n504), .A2(n524), .B1(divisor[4]), .B2(n436), 
        .ZN(n326) );
  CKMUX2D0BWP12T30P140 U469 ( .I0(extDC[12]), .I1(i_DC[12]), .S(i_valid_DC), 
        .Z(n250) );
  INVD0BWP12T30P140 U470 ( .I(n488), .ZN(n497) );
  ND3D0BWP12T30P140 U471 ( .A1(ct[1]), .A2(ct[0]), .A3(ct[2]), .ZN(n424) );
  NR2D0BWP12T30P140 U472 ( .A1(n425), .A2(n424), .ZN(n413) );
  ND2D0BWP12T30P140 U473 ( .A1(ct[4]), .A2(n413), .ZN(n428) );
  NR2D0BWP12T30P140 U474 ( .A1(n429), .A2(n428), .ZN(n411) );
  ND2D0BWP12T30P140 U475 ( .A1(ct[6]), .A2(n411), .ZN(n433) );
  NR2D0BWP12T30P140 U476 ( .A1(n434), .A2(n433), .ZN(n406) );
  ND2D0BWP12T30P140 U477 ( .A1(ct[8]), .A2(n406), .ZN(n493) );
  NR2D0BWP12T30P140 U478 ( .A1(n494), .A2(n493), .ZN(n420) );
  ND2D0BWP12T30P140 U479 ( .A1(ct[10]), .A2(n420), .ZN(n508) );
  AOI21D0BWP12T30P140 U480 ( .A1(n497), .A2(n508), .B(n496), .ZN(n510) );
  ND2D0BWP12T30P140 U481 ( .A1(n497), .A2(n509), .ZN(n507) );
  NR2D0BWP12T30P140 U482 ( .A1(n509), .A2(n508), .ZN(n415) );
  ND2D0BWP12T30P140 U483 ( .A1(n497), .A2(n415), .ZN(n405) );
  INVD0BWP12T30P140 U484 ( .I(ct[12]), .ZN(n474) );
  AOI32D0BWP12T30P140 U485 ( .A1(n510), .A2(ct[12]), .A3(n507), .B1(n405), 
        .B2(n474), .ZN(n268) );
  CKMUX2D0BWP12T30P140 U486 ( .I0(extDC[2]), .I1(i_DC[2]), .S(i_valid_DC), .Z(
        n240) );
  INVD0BWP12T30P140 U487 ( .I(i_wb_data[7]), .ZN(n540) );
  MAOI22D0BWP12T30P140 U488 ( .A1(n504), .A2(n540), .B1(divisor[7]), .B2(n436), 
        .ZN(n323) );
  CKMUX2D0BWP12T30P140 U489 ( .I0(extDC[4]), .I1(i_DC[4]), .S(i_valid_DC), .Z(
        n242) );
  INVD0BWP12T30P140 U490 ( .I(i_wb_data[9]), .ZN(n548) );
  MAOI22D0BWP12T30P140 U491 ( .A1(n436), .A2(n548), .B1(divisor[9]), .B2(n504), 
        .ZN(n321) );
  CKMUX2D0BWP12T30P140 U492 ( .I0(extDC[6]), .I1(i_DC[6]), .S(i_valid_DC), .Z(
        n244) );
  INVD0BWP12T30P140 U493 ( .I(i_wb_data[5]), .ZN(n533) );
  MAOI22D0BWP12T30P140 U494 ( .A1(n504), .A2(n533), .B1(divisor[5]), .B2(n436), 
        .ZN(n325) );
  CKMUX2D0BWP12T30P140 U495 ( .I0(extDC[11]), .I1(i_DC[11]), .S(i_valid_DC), 
        .Z(n249) );
  INVD0BWP12T30P140 U496 ( .I(i_wb_data[13]), .ZN(n518) );
  MAOI22D0BWP12T30P140 U497 ( .A1(n504), .A2(n518), .B1(divisor[13]), .B2(n436), .ZN(n317) );
  CKMUX2D0BWP12T30P140 U498 ( .I0(extDC[3]), .I1(i_DC[3]), .S(i_valid_DC), .Z(
        n241) );
  INVD0BWP12T30P140 U499 ( .I(i_wb_data[15]), .ZN(n543) );
  MAOI22D0BWP12T30P140 U500 ( .A1(n436), .A2(n543), .B1(divisor[15]), .B2(n436), .ZN(n315) );
  CKMUX2D0BWP12T30P140 U501 ( .I0(extDC[5]), .I1(i_DC[5]), .S(i_valid_DC), .Z(
        n243) );
  INVD0BWP12T30P140 U502 ( .I(i_wb_data[11]), .ZN(n520) );
  MAOI22D0BWP12T30P140 U503 ( .A1(n504), .A2(n520), .B1(divisor[11]), .B2(n436), .ZN(n319) );
  CKMUX2D0BWP12T30P140 U504 ( .I0(extDC[7]), .I1(i_DC[7]), .S(i_valid_DC), .Z(
        n245) );
  AOI21D0BWP12T30P140 U505 ( .A1(n497), .A2(n433), .B(n496), .ZN(n435) );
  ND2D0BWP12T30P140 U506 ( .A1(n497), .A2(n434), .ZN(n432) );
  ND2D0BWP12T30P140 U507 ( .A1(n497), .A2(n406), .ZN(n408) );
  INVD0BWP12T30P140 U508 ( .I(ct[8]), .ZN(n407) );
  AOI32D0BWP12T30P140 U509 ( .A1(n435), .A2(ct[8]), .A3(n432), .B1(n408), .B2(
        n407), .ZN(n264) );
  CKMUX2D0BWP12T30P140 U510 ( .I0(extDC[8]), .I1(i_DC[8]), .S(i_valid_DC), .Z(
        n246) );
  AOI21D0BWP12T30P140 U511 ( .A1(n497), .A2(n409), .B(n496), .ZN(n419) );
  INVD0BWP12T30P140 U512 ( .I(ct[1]), .ZN(n410) );
  ND2D0BWP12T30P140 U513 ( .A1(n497), .A2(n410), .ZN(n418) );
  OAI22D0BWP12T30P140 U514 ( .A1(n419), .A2(n410), .B1(n409), .B2(n418), .ZN(
        n257) );
  CKMUX2D0BWP12T30P140 U515 ( .I0(extDC[9]), .I1(i_DC[9]), .S(i_valid_DC), .Z(
        n247) );
  INVD0BWP12T30P140 U516 ( .I(i_wb_data[3]), .ZN(n536) );
  MAOI22D0BWP12T30P140 U517 ( .A1(n504), .A2(n536), .B1(divisor[3]), .B2(n436), 
        .ZN(n327) );
  CKMUX2D0BWP12T30P140 U518 ( .I0(extDC[10]), .I1(i_DC[10]), .S(i_valid_DC), 
        .Z(n248) );
  AOI21D0BWP12T30P140 U519 ( .A1(n497), .A2(n428), .B(n496), .ZN(n430) );
  ND2D0BWP12T30P140 U520 ( .A1(n497), .A2(n429), .ZN(n427) );
  ND2D0BWP12T30P140 U521 ( .A1(n497), .A2(n411), .ZN(n412) );
  INVD0BWP12T30P140 U522 ( .I(ct[6]), .ZN(n455) );
  AOI32D0BWP12T30P140 U523 ( .A1(n430), .A2(ct[6]), .A3(n427), .B1(n412), .B2(
        n455), .ZN(n262) );
  CKMUX2D0BWP12T30P140 U524 ( .I0(extDC[0]), .I1(i_DC[0]), .S(i_valid_DC), .Z(
        n238) );
  AOI21D0BWP12T30P140 U525 ( .A1(n497), .A2(n424), .B(n496), .ZN(n426) );
  ND2D0BWP12T30P140 U526 ( .A1(n497), .A2(n425), .ZN(n423) );
  ND2D0BWP12T30P140 U527 ( .A1(n497), .A2(n413), .ZN(n414) );
  INVD0BWP12T30P140 U528 ( .I(ct[4]), .ZN(n450) );
  AOI32D0BWP12T30P140 U529 ( .A1(n426), .A2(ct[4]), .A3(n423), .B1(n414), .B2(
        n450), .ZN(n260) );
  INVD0BWP12T30P140 U530 ( .I(i_wb_data[10]), .ZN(n544) );
  MAOI22D0BWP12T30P140 U531 ( .A1(n504), .A2(n544), .B1(divisor[10]), .B2(n436), .ZN(n320) );
  ND2D0BWP12T30P140 U532 ( .A1(ct[12]), .A2(n415), .ZN(n500) );
  IND3D1BWP12T30P140 U533 ( .A1(n500), .B1(ct[13]), .B2(n497), .ZN(n499) );
  OAI21D0BWP12T30P140 U534 ( .A1(n497), .A2(n496), .B(ct[15]), .ZN(n416) );
  OAI21D0BWP12T30P140 U535 ( .A1(n499), .A2(n498), .B(n416), .ZN(n271) );
  INVD0BWP12T30P140 U536 ( .I(i_wb_data[14]), .ZN(n534) );
  MAOI22D0BWP12T30P140 U537 ( .A1(n436), .A2(n534), .B1(divisor[14]), .B2(n504), .ZN(n316) );
  ND3D0BWP12T30P140 U538 ( .A1(ct[1]), .A2(ct[0]), .A3(n497), .ZN(n417) );
  INVD0BWP12T30P140 U539 ( .I(ct[2]), .ZN(n445) );
  AOI32D0BWP12T30P140 U540 ( .A1(n419), .A2(ct[2]), .A3(n418), .B1(n417), .B2(
        n445), .ZN(n258) );
  CKMUX2D0BWP12T30P140 U541 ( .I0(extDC[13]), .I1(i_DC[13]), .S(i_valid_DC), 
        .Z(n251) );
  AOI21D0BWP12T30P140 U542 ( .A1(n333), .A2(n493), .B(n496), .ZN(n495) );
  ND2D0BWP12T30P140 U543 ( .A1(n497), .A2(n494), .ZN(n492) );
  ND2D0BWP12T30P140 U544 ( .A1(n497), .A2(n420), .ZN(n422) );
  AOI32D0BWP12T30P140 U545 ( .A1(n495), .A2(ct[10]), .A3(n492), .B1(n422), 
        .B2(n421), .ZN(n266) );
  OAI22D0BWP12T30P140 U546 ( .A1(n426), .A2(n425), .B1(n424), .B2(n423), .ZN(
        n259) );
  INVD0BWP12T30P140 U547 ( .I(i_wb_data[2]), .ZN(n528) );
  MAOI22D0BWP12T30P140 U548 ( .A1(n504), .A2(n528), .B1(divisor[2]), .B2(n436), 
        .ZN(n328) );
  OAI22D0BWP12T30P140 U549 ( .A1(n430), .A2(n429), .B1(n428), .B2(n427), .ZN(
        n261) );
  INVD0BWP12T30P140 U550 ( .I(i_wb_adr[2]), .ZN(n506) );
  NR2D0BWP12T30P140 U551 ( .A1(i_wb_adr[1]), .A2(n431), .ZN(n511) );
  ND2D0BWP12T30P140 U552 ( .A1(n506), .A2(n511), .ZN(n554) );
  NR2D0BWP12T30P140 U553 ( .A1(n554), .A2(n539), .ZN(n530) );
  INVD0BWP12T30P140 U554 ( .I(ctrl[6]), .ZN(n475) );
  INVD0BWP12T30P140 U555 ( .I(n530), .ZN(n529) );
  AOI22D0BWP12T30P140 U556 ( .A1(n530), .A2(n522), .B1(n475), .B2(n529), .ZN(
        n279) );
  OAI22D0BWP12T30P140 U557 ( .A1(n435), .A2(n434), .B1(n433), .B2(n432), .ZN(
        n263) );
  INVD0BWP12T30P140 U558 ( .I(i_wb_data[1]), .ZN(n546) );
  MAOI22D0BWP12T30P140 U559 ( .A1(n504), .A2(n546), .B1(divisor[1]), .B2(n436), 
        .ZN(n329) );
  ND2D0BWP12T30P140 U560 ( .A1(n438), .A2(ctrl[3]), .ZN(n568) );
  OAI21D0BWP12T30P140 U561 ( .A1(n438), .A2(pts), .B(n437), .ZN(n487) );
  AOI22D0BWP12T30P140 U562 ( .A1(ctrl[6]), .A2(extDC[9]), .B1(DC[9]), .B2(n475), .ZN(n462) );
  NR2D0BWP12T30P140 U563 ( .A1(ct[9]), .A2(n462), .ZN(n461) );
  AOI22D0BWP12T30P140 U564 ( .A1(ctrl[6]), .A2(extDC[10]), .B1(DC[10]), .B2(
        n475), .ZN(n467) );
  NR2D0BWP12T30P140 U565 ( .A1(ct[10]), .A2(n467), .ZN(n460) );
  AOI22D0BWP12T30P140 U566 ( .A1(ctrl[6]), .A2(extDC[8]), .B1(DC[8]), .B2(n475), .ZN(n463) );
  INVD0BWP12T30P140 U567 ( .I(DC[11]), .ZN(n519) );
  MAOI22D0BWP12T30P140 U568 ( .A1(n519), .A2(n475), .B1(n475), .B2(extDC[11]), 
        .ZN(n469) );
  ND2D0BWP12T30P140 U569 ( .A1(n509), .A2(n469), .ZN(n439) );
  OAI21D0BWP12T30P140 U570 ( .A1(ct[8]), .A2(n463), .B(n439), .ZN(n459) );
  INVD0BWP12T30P140 U571 ( .I(DC[0]), .ZN(n515) );
  AOI21D0BWP12T30P140 U572 ( .A1(n515), .A2(n475), .B(ct[0]), .ZN(n440) );
  OAI21D0BWP12T30P140 U573 ( .A1(extDC[0]), .A2(n475), .B(n440), .ZN(n442) );
  AOI22D0BWP12T30P140 U574 ( .A1(ctrl[6]), .A2(extDC[1]), .B1(DC[1]), .B2(n475), .ZN(n441) );
  MAOI222D0BWP12T30P140 U575 ( .A(ct[1]), .B(n442), .C(n441), .ZN(n444) );
  INVD0BWP12T30P140 U576 ( .I(DC[2]), .ZN(n527) );
  MAOI22D0BWP12T30P140 U577 ( .A1(n527), .A2(n475), .B1(n475), .B2(extDC[2]), 
        .ZN(n443) );
  MAOI222D0BWP12T30P140 U578 ( .A(n445), .B(n444), .C(n443), .ZN(n447) );
  AOI22D0BWP12T30P140 U579 ( .A1(ctrl[6]), .A2(extDC[3]), .B1(DC[3]), .B2(n475), .ZN(n446) );
  MAOI222D0BWP12T30P140 U580 ( .A(ct[3]), .B(n447), .C(n446), .ZN(n449) );
  INVD0BWP12T30P140 U581 ( .I(DC[4]), .ZN(n523) );
  MAOI22D0BWP12T30P140 U582 ( .A1(n523), .A2(n475), .B1(n332), .B2(extDC[4]), 
        .ZN(n448) );
  MAOI222D0BWP12T30P140 U583 ( .A(n450), .B(n449), .C(n448), .ZN(n452) );
  AOI22D0BWP12T30P140 U584 ( .A1(ctrl[6]), .A2(extDC[5]), .B1(DC[5]), .B2(n475), .ZN(n451) );
  MAOI222D0BWP12T30P140 U585 ( .A(ct[5]), .B(n452), .C(n451), .ZN(n454) );
  INVD0BWP12T30P140 U586 ( .I(DC[6]), .ZN(n521) );
  MAOI22D0BWP12T30P140 U587 ( .A1(n521), .A2(n475), .B1(n332), .B2(extDC[6]), 
        .ZN(n453) );
  MAOI222D0BWP12T30P140 U588 ( .A(n455), .B(n454), .C(n453), .ZN(n457) );
  AOI22D0BWP12T30P140 U589 ( .A1(ctrl[6]), .A2(extDC[7]), .B1(DC[7]), .B2(n475), .ZN(n456) );
  MAOI222D0BWP12T30P140 U590 ( .A(ct[7]), .B(n457), .C(n456), .ZN(n458) );
  NR4D0BWP12T30P140 U591 ( .A1(n461), .A2(n460), .A3(n459), .A4(n458), .ZN(
        n472) );
  INVD0BWP12T30P140 U592 ( .I(n462), .ZN(n465) );
  ND2D0BWP12T30P140 U593 ( .A1(ct[8]), .A2(n463), .ZN(n464) );
  MAOI222D0BWP12T30P140 U594 ( .A(n494), .B(n465), .C(n464), .ZN(n466) );
  MAOI222D0BWP12T30P140 U595 ( .A(ct[10]), .B(n467), .C(n466), .ZN(n468) );
  MAOI222D0BWP12T30P140 U596 ( .A(n509), .B(n469), .C(n468), .ZN(n471) );
  AOI22D0BWP12T30P140 U597 ( .A1(ctrl[6]), .A2(extDC[12]), .B1(DC[12]), .B2(
        n475), .ZN(n470) );
  OAI22D0BWP12T30P140 U598 ( .A1(n472), .A2(n471), .B1(ct[12]), .B2(n470), 
        .ZN(n485) );
  AOI22D0BWP12T30P140 U599 ( .A1(ctrl[6]), .A2(extDC[15]), .B1(DC[15]), .B2(
        n475), .ZN(n478) );
  AOI221D0BWP12T30P140 U600 ( .A1(extDC[14]), .A2(ctrl[6]), .B1(DC[14]), .B2(
        n475), .C(n498), .ZN(n473) );
  MAOI222D0BWP12T30P140 U601 ( .A(ct[15]), .B(n478), .C(n473), .ZN(n484) );
  OAI22D0BWP12T30P140 U602 ( .A1(extDC[13]), .A2(n502), .B1(extDC[12]), .B2(
        n474), .ZN(n477) );
  OAI22D0BWP12T30P140 U603 ( .A1(DC[13]), .A2(n502), .B1(DC[12]), .B2(n474), 
        .ZN(n476) );
  AOI22D0BWP12T30P140 U604 ( .A1(ctrl[6]), .A2(n477), .B1(n476), .B2(n475), 
        .ZN(n483) );
  AOI22D0BWP12T30P140 U605 ( .A1(DC[13]), .A2(n502), .B1(DC[14]), .B2(n498), 
        .ZN(n481) );
  AO22D0BWP12T30P140 U606 ( .A1(extDC[13]), .A2(n502), .B1(extDC[14]), .B2(
        n498), .Z(n479) );
  MAOI22D0BWP12T30P140 U607 ( .A1(ctrl[6]), .A2(n479), .B1(ct[15]), .B2(n478), 
        .ZN(n480) );
  OAI21D0BWP12T30P140 U608 ( .A1(ctrl[6]), .A2(n481), .B(n480), .ZN(n482) );
  AOI32D0BWP12T30P140 U609 ( .A1(n485), .A2(n484), .A3(n483), .B1(n482), .B2(
        n484), .ZN(n486) );
  AOI32D0BWP12T30P140 U610 ( .A1(n568), .A2(n537), .A3(n487), .B1(ctrl[1]), 
        .B2(n486), .ZN(n491) );
  OAI22D0BWP12T30P140 U611 ( .A1(ctrl[2]), .A2(n569), .B1(n489), .B2(n488), 
        .ZN(n490) );
  AO22D0BWP12T30P140 U612 ( .A1(ctrl[2]), .A2(n491), .B1(pts), .B2(n490), .Z(
        n276) );
  INVD0BWP12T30P140 U613 ( .I(ctrl[2]), .ZN(n566) );
  AOI22D0BWP12T30P140 U614 ( .A1(n530), .A2(n528), .B1(n566), .B2(n529), .ZN(
        n282) );
  OAI22D0BWP12T30P140 U615 ( .A1(n495), .A2(n494), .B1(n493), .B2(n492), .ZN(
        n265) );
  AOI21D0BWP12T30P140 U616 ( .A1(n333), .A2(n500), .B(n496), .ZN(n503) );
  ND2D0BWP12T30P140 U617 ( .A1(n497), .A2(n502), .ZN(n501) );
  AOI32D0BWP12T30P140 U618 ( .A1(n503), .A2(ct[14]), .A3(n501), .B1(n499), 
        .B2(n498), .ZN(n270) );
  OAI22D0BWP12T30P140 U619 ( .A1(n503), .A2(n502), .B1(n501), .B2(n500), .ZN(
        n269) );
  CKMUX2D0BWP12T30P140 U620 ( .I0(extDC[1]), .I1(i_DC[1]), .S(i_valid_DC), .Z(
        n239) );
  CKMUX2D0BWP12T30P140 U621 ( .I0(extDC[15]), .I1(i_DC[15]), .S(i_valid_DC), 
        .Z(n253) );
  INVD0BWP12T30P140 U622 ( .I(i_wb_data[0]), .ZN(n542) );
  MAOI22D0BWP12T30P140 U623 ( .A1(n504), .A2(n542), .B1(divisor[0]), .B2(n504), 
        .ZN(n330) );
  NR2D0BWP12T30P140 U624 ( .A1(n506), .A2(n505), .ZN(n582) );
  INR2D1BWP12T30P140 U625 ( .A1(n582), .B1(n539), .ZN(n549) );
  INVD0BWP12T30P140 U626 ( .I(n549), .ZN(n526) );
  INVD0BWP12T30P140 U627 ( .I(n526), .ZN(n551) );
  MAOI22D0BWP12T30P140 U628 ( .A1(n551), .A2(n525), .B1(DC[12]), .B2(n549), 
        .ZN(n286) );
  OAI22D0BWP12T30P140 U629 ( .A1(n510), .A2(n509), .B1(n508), .B2(n507), .ZN(
        n267) );
  MAOI22D0BWP12T30P140 U630 ( .A1(n530), .A2(n542), .B1(ctrl[0]), .B2(n530), 
        .ZN(n277) );
  ND2D0BWP12T30P140 U631 ( .A1(i_wb_adr[2]), .A2(n511), .ZN(n561) );
  OR2D0BWP12T30P140 U632 ( .A1(n561), .A2(n539), .Z(n545) );
  INVD0BWP12T30P140 U633 ( .I(n545), .ZN(n547) );
  AOI22D0BWP12T30P140 U634 ( .A1(n547), .A2(n533), .B1(n512), .B2(n545), .ZN(
        n309) );
  AOI22D0BWP12T30P140 U635 ( .A1(n547), .A2(n540), .B1(n513), .B2(n545), .ZN(
        n307) );
  AOI22D0BWP12T30P140 U636 ( .A1(n547), .A2(n544), .B1(n514), .B2(n545), .ZN(
        n304) );
  INVD0BWP12T30P140 U637 ( .I(n545), .ZN(n535) );
  MAOI22D0BWP12T30P140 U638 ( .A1(n535), .A2(n520), .B1(period[11]), .B2(n535), 
        .ZN(n303) );
  MAOI22D0BWP12T30P140 U639 ( .A1(n551), .A2(n534), .B1(DC[14]), .B2(n549), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U640 ( .A1(n551), .A2(n518), .B1(DC[13]), .B2(n549), 
        .ZN(n285) );
  MAOI22D0BWP12T30P140 U641 ( .A1(n547), .A2(n528), .B1(period[2]), .B2(n535), 
        .ZN(n312) );
  MAOI22D0BWP12T30P140 U642 ( .A1(n547), .A2(n524), .B1(period[4]), .B2(n535), 
        .ZN(n310) );
  MAOI22D0BWP12T30P140 U643 ( .A1(n547), .A2(n522), .B1(period[6]), .B2(n535), 
        .ZN(n308) );
  MAOI22D0BWP12T30P140 U644 ( .A1(n547), .A2(n550), .B1(period[8]), .B2(n535), 
        .ZN(n306) );
  AOI22D0BWP12T30P140 U645 ( .A1(n551), .A2(n542), .B1(n515), .B2(n526), .ZN(
        n298) );
  MAOI22D0BWP12T30P140 U646 ( .A1(n551), .A2(n546), .B1(DC[1]), .B2(n549), 
        .ZN(n297) );
  INVD0BWP12T30P140 U647 ( .I(ctrl[4]), .ZN(n552) );
  AOI22D0BWP12T30P140 U648 ( .A1(n530), .A2(n524), .B1(n552), .B2(n529), .ZN(
        n280) );
  MAOI22D0BWP12T30P140 U649 ( .A1(n530), .A2(n540), .B1(ctrl[7]), .B2(n530), 
        .ZN(n278) );
  AOI22D0BWP12T30P140 U650 ( .A1(n530), .A2(n536), .B1(n516), .B2(n529), .ZN(
        n281) );
  MAOI22D0BWP12T30P140 U651 ( .A1(n535), .A2(n548), .B1(period[9]), .B2(n535), 
        .ZN(n305) );
  AOI22D0BWP12T30P140 U652 ( .A1(n547), .A2(n518), .B1(n517), .B2(n545), .ZN(
        n301) );
  AOI22D0BWP12T30P140 U653 ( .A1(n551), .A2(n520), .B1(n519), .B2(n526), .ZN(
        n287) );
  AOI22D0BWP12T30P140 U654 ( .A1(n551), .A2(n522), .B1(n521), .B2(n526), .ZN(
        n292) );
  AOI22D0BWP12T30P140 U655 ( .A1(n551), .A2(n524), .B1(n523), .B2(n526), .ZN(
        n294) );
  MAOI22D0BWP12T30P140 U656 ( .A1(n535), .A2(n525), .B1(period[12]), .B2(n535), 
        .ZN(n302) );
  AOI22D0BWP12T30P140 U657 ( .A1(n551), .A2(n528), .B1(n527), .B2(n526), .ZN(
        n296) );
  AOI22D0BWP12T30P140 U658 ( .A1(n530), .A2(n546), .B1(n537), .B2(n529), .ZN(
        n331) );
  INVD0BWP12T30P140 U659 ( .I(state[1]), .ZN(n590) );
  ND2D0BWP12T30P140 U660 ( .A1(n590), .A2(state[0]), .ZN(n538) );
  IND3D1BWP12T30P140 U661 ( .A1(n538), .B1(n540), .B2(n537), .ZN(n589) );
  IND4D1BWP12T30P140 U662 ( .A1(state[0]), .B1(switch_ack_clrint), .B2(clrint), 
        .B3(state[1]), .ZN(n586) );
  ND2D0BWP12T30P140 U663 ( .A1(clrint), .A2(n586), .ZN(n531) );
  OAI31D0BWP12T30P140 U664 ( .A1(i_wb_data[5]), .A2(n539), .A3(n589), .B(n531), 
        .ZN(n273) );
  MAOI22D0BWP12T30P140 U665 ( .A1(n547), .A2(n543), .B1(period[15]), .B2(n535), 
        .ZN(n299) );
  AOI22D0BWP12T30P140 U666 ( .A1(n547), .A2(n536), .B1(n532), .B2(n545), .ZN(
        n311) );
  MAOI22D0BWP12T30P140 U667 ( .A1(n551), .A2(n540), .B1(DC[7]), .B2(n549), 
        .ZN(n291) );
  MAOI22D0BWP12T30P140 U668 ( .A1(n551), .A2(n533), .B1(DC[5]), .B2(n549), 
        .ZN(n293) );
  MAOI22D0BWP12T30P140 U669 ( .A1(n535), .A2(n534), .B1(period[14]), .B2(n535), 
        .ZN(n300) );
  MAOI22D0BWP12T30P140 U670 ( .A1(n551), .A2(n536), .B1(DC[3]), .B2(n549), 
        .ZN(n295) );
  INVD0BWP12T30P140 U671 ( .I(pts), .ZN(n553) );
  OAI211D0BWP12T30P140 U672 ( .A1(state[0]), .A2(n590), .B(n537), .C(n538), 
        .ZN(n565) );
  NR2D0BWP12T30P140 U673 ( .A1(n553), .A2(n565), .ZN(n563) );
  AOI211D0BWP12T30P140 U674 ( .A1(i_wb_data[5]), .A2(n540), .B(n539), .C(n538), 
        .ZN(n562) );
  NR2D0BWP12T30P140 U675 ( .A1(n563), .A2(n562), .ZN(n587) );
  OAI21D0BWP12T30P140 U676 ( .A1(state[1]), .A2(n587), .B(state[0]), .ZN(n541)
         );
  OAI21D0BWP12T30P140 U677 ( .A1(state[0]), .A2(n587), .B(n541), .ZN(n274) );
  AOI22D0BWP12T30P140 U678 ( .A1(n547), .A2(n542), .B1(n557), .B2(n545), .ZN(
        n314) );
  MAOI22D0BWP12T30P140 U679 ( .A1(n551), .A2(n543), .B1(DC[15]), .B2(n549), 
        .ZN(n283) );
  MAOI22D0BWP12T30P140 U680 ( .A1(n549), .A2(n544), .B1(DC[10]), .B2(n549), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U681 ( .A1(n547), .A2(n546), .B1(n560), .B2(n545), .ZN(
        n313) );
  MAOI22D0BWP12T30P140 U682 ( .A1(n551), .A2(n548), .B1(DC[9]), .B2(n549), 
        .ZN(n289) );
  MAOI22D0BWP12T30P140 U683 ( .A1(n551), .A2(n550), .B1(DC[8]), .B2(n549), 
        .ZN(n290) );
  CKBD0BWP12T30P140 U684 ( .I(i_wb_clk), .Z(n600) );
  CKBD0BWP12T30P140 U685 ( .I(i_wb_clk), .Z(n599) );
  CKBD0BWP12T30P140 U686 ( .I(clk), .Z(n596) );
  CKBD0BWP12T30P140 U687 ( .I(i_wb_clk), .Z(n598) );
  CKBD0BWP12T30P140 U688 ( .I(clk_source), .Z(n597) );
  INVD0BWP12T30P140 U689 ( .I(i_wb_rst), .ZN(n254) );
  CKBD0BWP12T30P140 U690 ( .I(n254), .Z(n594) );
  CKBD0BWP12T30P140 U691 ( .I(n254), .Z(n593) );
  NR2D0BWP12T30P140 U692 ( .A1(ctrl[7]), .A2(i_wb_rst), .ZN(n237) );
  CKBD0BWP12T30P140 U693 ( .I(n237), .Z(n595) );
  CKBD0BWP12T30P140 U694 ( .I(n254), .Z(n592) );
  NR2D0BWP12T30P140 U695 ( .A1(n553), .A2(n552), .ZN(o_pwm) );
  INVD0BWP12T30P140 U696 ( .I(n561), .ZN(n583) );
  AO222D0BWP12T30P140 U697 ( .A1(period[15]), .A2(n583), .B1(n582), .B2(DC[15]), .C1(n580), .C2(divisor[15]), .Z(o_wb_data[15]) );
  AO222D0BWP12T30P140 U698 ( .A1(period[8]), .A2(n583), .B1(n582), .B2(DC[8]), 
        .C1(n580), .C2(divisor[8]), .Z(o_wb_data[8]) );
  AO222D0BWP12T30P140 U699 ( .A1(period[9]), .A2(n583), .B1(n582), .B2(DC[9]), 
        .C1(n580), .C2(divisor[9]), .Z(o_wb_data[9]) );
  AO222D0BWP12T30P140 U700 ( .A1(period[10]), .A2(n583), .B1(n582), .B2(DC[10]), .C1(n580), .C2(divisor[10]), .Z(o_wb_data[10]) );
  AO222D0BWP12T30P140 U701 ( .A1(DC[11]), .A2(n582), .B1(n583), .B2(period[11]), .C1(n580), .C2(divisor[11]), .Z(o_wb_data[11]) );
  AO222D0BWP12T30P140 U702 ( .A1(period[12]), .A2(n583), .B1(n582), .B2(DC[12]), .C1(n580), .C2(divisor[12]), .Z(o_wb_data[12]) );
  AO222D0BWP12T30P140 U703 ( .A1(period[13]), .A2(n583), .B1(n582), .B2(DC[13]), .C1(n580), .C2(divisor[13]), .Z(o_wb_data[13]) );
  AO222D0BWP12T30P140 U704 ( .A1(period[14]), .A2(n583), .B1(n582), .B2(DC[14]), .C1(n580), .C2(divisor[14]), .Z(o_wb_data[14]) );
  INVD0BWP12T30P140 U705 ( .I(n554), .ZN(n581) );
  AOI22D0BWP12T30P140 U706 ( .A1(ctrl[0]), .A2(n581), .B1(n580), .B2(
        divisor[0]), .ZN(n556) );
  ND2D0BWP12T30P140 U707 ( .A1(DC[0]), .A2(n582), .ZN(n555) );
  OAI211D0BWP12T30P140 U708 ( .A1(n557), .A2(n561), .B(n556), .C(n555), .ZN(
        o_wb_data[0]) );
  AOI22D0BWP12T30P140 U709 ( .A1(ctrl[1]), .A2(n581), .B1(n580), .B2(
        divisor[1]), .ZN(n559) );
  ND2D0BWP12T30P140 U710 ( .A1(DC[1]), .A2(n582), .ZN(n558) );
  OAI211D0BWP12T30P140 U711 ( .A1(n561), .A2(n560), .B(n559), .C(n558), .ZN(
        o_wb_data[1]) );
  INVD0BWP12T30P140 U712 ( .I(n562), .ZN(n564) );
  AO31D0BWP12T30P140 U713 ( .A1(ctrl[5]), .A2(n565), .A3(n564), .B(n563), .Z(
        n255) );
  OAI21D0BWP12T30P140 U714 ( .A1(switch_ack_clrint), .A2(n566), .B(clrint), 
        .ZN(n567) );
  IOA21D0BWP12T30P140 U715 ( .A1(n569), .A2(n568), .B(n567), .ZN(n256) );
  AOI22D0BWP12T30P140 U716 ( .A1(ctrl[3]), .A2(n581), .B1(n580), .B2(
        divisor[3]), .ZN(n571) );
  AOI22D0BWP12T30P140 U717 ( .A1(period[3]), .A2(n583), .B1(DC[3]), .B2(n582), 
        .ZN(n570) );
  ND2D0BWP12T30P140 U718 ( .A1(n571), .A2(n570), .ZN(o_wb_data[3]) );
  AOI22D0BWP12T30P140 U719 ( .A1(n581), .A2(ctrl[4]), .B1(n580), .B2(
        divisor[4]), .ZN(n573) );
  AOI22D0BWP12T30P140 U720 ( .A1(period[4]), .A2(n583), .B1(DC[4]), .B2(n582), 
        .ZN(n572) );
  ND2D0BWP12T30P140 U721 ( .A1(n573), .A2(n572), .ZN(o_wb_data[4]) );
  AOI22D0BWP12T30P140 U722 ( .A1(n581), .A2(ctrl[5]), .B1(n580), .B2(
        divisor[5]), .ZN(n575) );
  AOI22D0BWP12T30P140 U723 ( .A1(period[5]), .A2(n583), .B1(DC[5]), .B2(n582), 
        .ZN(n574) );
  ND2D0BWP12T30P140 U724 ( .A1(n575), .A2(n574), .ZN(o_wb_data[5]) );
  AOI22D0BWP12T30P140 U725 ( .A1(ctrl[2]), .A2(n581), .B1(n580), .B2(
        divisor[2]), .ZN(n577) );
  AOI22D0BWP12T30P140 U726 ( .A1(period[2]), .A2(n583), .B1(DC[2]), .B2(n582), 
        .ZN(n576) );
  ND2D0BWP12T30P140 U727 ( .A1(n577), .A2(n576), .ZN(o_wb_data[2]) );
  AOI22D0BWP12T30P140 U728 ( .A1(n581), .A2(ctrl[7]), .B1(n580), .B2(
        divisor[7]), .ZN(n579) );
  AOI22D0BWP12T30P140 U729 ( .A1(period[7]), .A2(n583), .B1(DC[7]), .B2(n582), 
        .ZN(n578) );
  ND2D0BWP12T30P140 U730 ( .A1(n579), .A2(n578), .ZN(o_wb_data[7]) );
  AOI22D0BWP12T30P140 U731 ( .A1(ctrl[6]), .A2(n581), .B1(n580), .B2(
        divisor[6]), .ZN(n585) );
  AOI22D0BWP12T30P140 U732 ( .A1(period[6]), .A2(n583), .B1(DC[6]), .B2(n582), 
        .ZN(n584) );
  ND2D0BWP12T30P140 U733 ( .A1(n585), .A2(n584), .ZN(o_wb_data[6]) );
  ND2D0BWP12T30P140 U734 ( .A1(n587), .A2(n586), .ZN(n588) );
  MUX2ND0BWP12T30P140 U735 ( .I0(n590), .I1(n589), .S(n588), .ZN(n275) );
endmodule

