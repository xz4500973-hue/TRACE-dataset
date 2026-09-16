/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:58:38 2026
/////////////////////////////////////////////////////////////


module a429_tx_iface ( clk2M, reset, enable, speed, gap_bits, data, tx_req, 
        a429_out_a, a429_out_b, ready );
  input [1:0] speed;
  input [6:0] gap_bits;
  input [32:1] data;
  input clk2M, reset, enable, tx_req;
  output a429_out_a, a429_out_b, ready;
  wire   clk429, N16, N27, N28, N29, N30, N31, N32, N33, N34, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142;
  wire   [7:0] clk429_counter;
  wire   [32:1] shift_reg;
  wire   [1:0] state;
  wire   [4:0] shift_counter;
  wire   [6:0] gap_counter;

  DFCNQD1BWP12T30P140 clk429_reg ( .D(N16), .CP(clk2M), .CDN(n139), .Q(clk429)
         );
  DFCNQD1BWP12T30P140 clk429_counter_reg_0_ ( .D(N27), .CP(clk2M), .CDN(n142), 
        .Q(clk429_counter[0]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_1_ ( .D(N28), .CP(clk2M), .CDN(n139), 
        .Q(clk429_counter[1]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_6_ ( .D(N33), .CP(clk2M), .CDN(n142), 
        .Q(clk429_counter[6]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_5_ ( .D(N32), .CP(clk2M), .CDN(n139), 
        .Q(clk429_counter[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n66), .CP(clk429), .CDN(n139), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n96), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n95), .CP(clk429), .CDN(n142), 
        .Q(shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n94), .CP(clk429), .CDN(n142), 
        .Q(shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n93), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n92), .CP(clk429), .CDN(n138), 
        .Q(shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n91), .CP(clk429), .CDN(n138), 
        .Q(shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n90), .CP(clk429), .CDN(n142), 
        .Q(shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n89), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n87), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n84), .CP(clk429), .CDN(n142), 
        .Q(shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n81), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n78), .CP(clk429), .CDN(n139), 
        .Q(shift_reg[14]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_2_ ( .D(N29), .CP(clk2M), .CDN(n142), 
        .Q(clk429_counter[2]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_7_ ( .D(N34), .CP(clk2M), .CDN(n142), 
        .Q(clk429_counter[7]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_4_ ( .D(N31), .CP(clk2M), .CDN(n142), 
        .Q(clk429_counter[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n86), .CP(n141), .CDN(n142), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n83), .CP(n141), .CDN(n139), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n80), .CP(n141), .CDN(n138), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n88), .CP(n140), .CDN(n142), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n85), .CP(n140), .CDN(n139), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n82), .CP(n140), .CDN(n142), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n79), .CP(n140), .CDN(n142), .Q(
        shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n77), .CP(n140), .CDN(n138), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n76), .CP(n140), .CDN(n142), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n75), .CP(n140), .CDN(n142), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n74), .CP(n140), .CDN(n142), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n73), .CP(n140), .CDN(n142), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n72), .CP(n140), .CDN(n139), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n71), .CP(n140), .CDN(n138), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n70), .CP(n140), .CDN(n139), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n69), .CP(n140), .CDN(n138), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n68), .CP(n140), .CDN(n139), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n67), .CP(n140), .CDN(n138), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_1_ ( .D(n97), .CP(clk429), .CDN(n142), .Q(
        shift_reg[1]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_3_ ( .D(N30), .CP(clk2M), .CDN(n139), 
        .Q(clk429_counter[3]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_5_ ( .D(n59), .CP(n141), .CDN(n138), .Q(
        gap_counter[5]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_6_ ( .D(n60), .CP(n141), .CDN(n138), .Q(
        gap_counter[6]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n54), .CP(n141), .CDN(n139), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_0_ ( .D(n98), .CP(n141), .CDN(n138), .Q(
        gap_counter[0]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n65), .CP(n141), .CDN(n138), 
        .Q(shift_counter[0]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n53), .CP(clk429), .CDN(n139), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_3_ ( .D(n57), .CP(n141), .CDN(n138), .Q(
        gap_counter[3]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n64), .CP(n141), .CDN(n138), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_1_ ( .D(n55), .CP(n141), .CDN(n138), .Q(
        gap_counter[1]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n62), .CP(n141), .CDN(n138), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_4_ ( .D(n58), .CP(n141), .CDN(n138), .Q(
        gap_counter[4]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_2_ ( .D(n56), .CP(n141), .CDN(n138), .Q(
        gap_counter[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n63), .CP(n141), .CDN(n138), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n61), .CP(n140), .CDN(n138), 
        .Q(shift_counter[1]) );
  INVD0BWP12T30P140 U3 ( .I(state[0]), .ZN(n13) );
  AOI211D0BWP12T30P140 U4 ( .A1(tx_req), .A2(n135), .B(n127), .C(n15), .ZN(
        n124) );
  AOI221D0BWP12T30P140 U5 ( .A1(clk429_counter[2]), .A2(clk429_counter[3]), 
        .B1(clk429_counter[1]), .B2(clk429_counter[3]), .C(clk429_counter[6]), 
        .ZN(n1) );
  INVD0BWP12T30P140 U6 ( .I(speed[0]), .ZN(n110) );
  INVD0BWP12T30P140 U7 ( .I(clk429_counter[5]), .ZN(n106) );
  INVD0BWP12T30P140 U8 ( .I(clk429_counter[4]), .ZN(n120) );
  OAI211D0BWP12T30P140 U9 ( .A1(n1), .A2(n110), .B(n106), .C(n120), .ZN(n2) );
  AOI221D0BWP12T30P140 U10 ( .A1(clk429_counter[6]), .A2(n2), .B1(speed[0]), 
        .B2(n2), .C(clk429_counter[7]), .ZN(N16) );
  NR2D0BWP12T30P140 U11 ( .A1(state[0]), .A2(state[1]), .ZN(ready) );
  INVD0BWP12T30P140 U12 ( .I(state[1]), .ZN(n135) );
  NR3D0BWP12T30P140 U13 ( .A1(shift_counter[0]), .A2(shift_counter[2]), .A3(
        shift_counter[1]), .ZN(n5) );
  INVD0BWP12T30P140 U14 ( .I(n5), .ZN(n25) );
  NR3D0BWP12T30P140 U15 ( .A1(shift_counter[4]), .A2(shift_counter[3]), .A3(
        n25), .ZN(n40) );
  INVD0BWP12T30P140 U16 ( .I(n40), .ZN(n12) );
  ND2D0BWP12T30P140 U17 ( .A1(n12), .A2(state[0]), .ZN(n3) );
  ND2D0BWP12T30P140 U18 ( .A1(enable), .A2(n3), .ZN(n44) );
  ND3D0BWP12T30P140 U19 ( .A1(n135), .A2(n44), .A3(enable), .ZN(n24) );
  INVD0BWP12T30P140 U20 ( .I(shift_counter[0]), .ZN(n43) );
  OAI21D0BWP12T30P140 U21 ( .A1(n43), .A2(n24), .B(n44), .ZN(n22) );
  NR2D0BWP12T30P140 U22 ( .A1(state[1]), .A2(n13), .ZN(n127) );
  INVD0BWP12T30P140 U23 ( .I(enable), .ZN(n15) );
  CKBD0BWP12T30P140 U24 ( .I(n124), .Z(n121) );
  ND2D0BWP12T30P140 U25 ( .A1(enable), .A2(ready), .ZN(n37) );
  NR2D0BWP12T30P140 U26 ( .A1(n121), .A2(n37), .ZN(n125) );
  AOI21D0BWP12T30P140 U27 ( .A1(shift_counter[1]), .A2(n22), .B(n125), .ZN(n4)
         );
  OAI31D0BWP12T30P140 U28 ( .A1(shift_counter[0]), .A2(shift_counter[1]), .A3(
        n24), .B(n4), .ZN(n61) );
  OAI21D0BWP12T30P140 U29 ( .A1(n5), .A2(n24), .B(n44), .ZN(n128) );
  AOI21D0BWP12T30P140 U30 ( .A1(shift_counter[3]), .A2(n128), .B(n125), .ZN(n6) );
  OAI31D0BWP12T30P140 U31 ( .A1(shift_counter[3]), .A2(n25), .A3(n24), .B(n6), 
        .ZN(n63) );
  NR2D0BWP12T30P140 U32 ( .A1(state[0]), .A2(n135), .ZN(n48) );
  INVD0BWP12T30P140 U33 ( .I(n127), .ZN(n137) );
  INVD0BWP12T30P140 U34 ( .I(gap_bits[6]), .ZN(n16) );
  OR4D0BWP12T30P140 U35 ( .A1(gap_bits[4]), .A2(gap_bits[5]), .A3(gap_bits[2]), 
        .A4(gap_bits[3]), .Z(n7) );
  ND2D0BWP12T30P140 U36 ( .A1(n16), .A2(n7), .ZN(n28) );
  NR2D0BWP12T30P140 U37 ( .A1(n137), .A2(n28), .ZN(n47) );
  AOI22D0BWP12T30P140 U38 ( .A1(n48), .A2(gap_counter[2]), .B1(n47), .B2(
        gap_bits[2]), .ZN(n10) );
  INVD0BWP12T30P140 U39 ( .I(n48), .ZN(n8) );
  NR2D0BWP12T30P140 U40 ( .A1(gap_counter[0]), .A2(n8), .ZN(n45) );
  AOI22D0BWP12T30P140 U41 ( .A1(n48), .A2(gap_counter[1]), .B1(n47), .B2(
        gap_bits[1]), .ZN(n26) );
  AN2D0BWP12T30P140 U42 ( .A1(n10), .A2(n9), .Z(n34) );
  IAO21D0BWP12T30P140 U43 ( .A1(n10), .A2(n9), .B(n34), .ZN(n18) );
  OR4D0BWP12T30P140 U44 ( .A1(gap_counter[3]), .A2(gap_counter[4]), .A3(
        gap_counter[0]), .A4(gap_counter[5]), .Z(n11) );
  NR4D0BWP12T30P140 U45 ( .A1(gap_counter[6]), .A2(gap_counter[1]), .A3(
        gap_counter[2]), .A4(n11), .ZN(n38) );
  OAI22D0BWP12T30P140 U46 ( .A1(n38), .A2(n135), .B1(n13), .B2(n12), .ZN(n14)
         );
  NR2D0BWP12T30P140 U47 ( .A1(n15), .A2(n14), .ZN(n101) );
  NR2D0BWP12T30P140 U48 ( .A1(n15), .A2(n101), .ZN(n52) );
  INVD0BWP12T30P140 U49 ( .I(n52), .ZN(n104) );
  ND2D0BWP12T30P140 U50 ( .A1(n127), .A2(enable), .ZN(n136) );
  OR3D0BWP12T30P140 U51 ( .A1(n101), .A2(n136), .A3(n16), .Z(n103) );
  ND2D0BWP12T30P140 U52 ( .A1(n101), .A2(gap_counter[2]), .ZN(n17) );
  OAI211D0BWP12T30P140 U53 ( .A1(n18), .A2(n104), .B(n103), .C(n17), .ZN(n56)
         );
  AOI22D0BWP12T30P140 U54 ( .A1(n48), .A2(gap_counter[3]), .B1(n47), .B2(
        gap_bits[3]), .ZN(n33) );
  ND2D0BWP12T30P140 U55 ( .A1(n34), .A2(n33), .ZN(n32) );
  AO22D0BWP12T30P140 U56 ( .A1(n48), .A2(gap_counter[4]), .B1(n47), .B2(
        gap_bits[4]), .Z(n19) );
  NR2D0BWP12T30P140 U57 ( .A1(n32), .A2(n19), .ZN(n99) );
  AOI21D0BWP12T30P140 U58 ( .A1(n32), .A2(n19), .B(n99), .ZN(n21) );
  ND2D0BWP12T30P140 U59 ( .A1(n101), .A2(gap_counter[4]), .ZN(n20) );
  OAI211D0BWP12T30P140 U60 ( .A1(n21), .A2(n104), .B(n103), .C(n20), .ZN(n58)
         );
  INVD0BWP12T30P140 U61 ( .I(n125), .ZN(n131) );
  INVD0BWP12T30P140 U62 ( .I(n24), .ZN(n129) );
  AOI32D0BWP12T30P140 U63 ( .A1(shift_counter[1]), .A2(shift_counter[2]), .A3(
        n129), .B1(n22), .B2(shift_counter[2]), .ZN(n23) );
  OAI211D0BWP12T30P140 U64 ( .A1(n25), .A2(n24), .B(n131), .C(n23), .ZN(n62)
         );
  FA1D0BWP12T30P140 U65 ( .A(n47), .B(n45), .CI(n26), .CO(n9), .S(n31) );
  INVD0BWP12T30P140 U66 ( .I(n101), .ZN(n27) );
  INVD0BWP12T30P140 U67 ( .I(n136), .ZN(n126) );
  ND3D0BWP12T30P140 U68 ( .A1(n28), .A2(n27), .A3(n126), .ZN(n30) );
  ND2D0BWP12T30P140 U69 ( .A1(n101), .A2(gap_counter[1]), .ZN(n29) );
  OAI211D0BWP12T30P140 U70 ( .A1(n31), .A2(n104), .B(n30), .C(n29), .ZN(n55)
         );
  OA21D0BWP12T30P140 U71 ( .A1(n34), .A2(n33), .B(n32), .Z(n36) );
  ND2D0BWP12T30P140 U72 ( .A1(n101), .A2(gap_counter[3]), .ZN(n35) );
  OAI211D0BWP12T30P140 U73 ( .A1(n36), .A2(n104), .B(n103), .C(n35), .ZN(n57)
         );
  INVD0BWP12T30P140 U74 ( .I(n37), .ZN(n41) );
  ND2D0BWP12T30P140 U75 ( .A1(enable), .A2(n48), .ZN(n39) );
  OAI222D0BWP12T30P140 U76 ( .A1(n136), .A2(n40), .B1(n39), .B2(n38), .C1(n37), 
        .C2(tx_req), .ZN(n134) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(n41), .I1(state[0]), .S(n134), .Z(n53) );
  ND2D0BWP12T30P140 U78 ( .A1(n129), .A2(n43), .ZN(n42) );
  OAI211D0BWP12T30P140 U79 ( .A1(n44), .A2(n43), .B(n131), .C(n42), .ZN(n65)
         );
  AOI21D0BWP12T30P140 U80 ( .A1(n47), .A2(gap_bits[0]), .B(n45), .ZN(n46) );
  MOAI22D0BWP12T30P140 U81 ( .A1(n46), .A2(n104), .B1(n101), .B2(
        gap_counter[0]), .ZN(n98) );
  ND2D0BWP12T30P140 U82 ( .A1(n48), .A2(gap_counter[6]), .ZN(n50) );
  AOI22D0BWP12T30P140 U83 ( .A1(n48), .A2(gap_counter[5]), .B1(n47), .B2(
        gap_bits[5]), .ZN(n100) );
  ND2D0BWP12T30P140 U84 ( .A1(n100), .A2(n99), .ZN(n49) );
  CKXOR2D0BWP12T30P140 U85 ( .A1(n50), .A2(n49), .Z(n51) );
  AO22D0BWP12T30P140 U86 ( .A1(gap_counter[6]), .A2(n101), .B1(n52), .B2(n51), 
        .Z(n60) );
  CKXOR2D0BWP12T30P140 U87 ( .A1(n100), .A2(n99), .Z(n105) );
  ND2D0BWP12T30P140 U88 ( .A1(n101), .A2(gap_counter[5]), .ZN(n102) );
  OAI211D0BWP12T30P140 U89 ( .A1(n105), .A2(n104), .B(n103), .C(n102), .ZN(n59) );
  INVD0BWP12T30P140 U90 ( .I(clk429_counter[2]), .ZN(n117) );
  ND2D0BWP12T30P140 U91 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), .ZN(
        n116) );
  NR2D0BWP12T30P140 U92 ( .A1(n117), .A2(n116), .ZN(n115) );
  ND2D0BWP12T30P140 U93 ( .A1(clk429_counter[3]), .A2(n115), .ZN(n119) );
  AOI221D0BWP12T30P140 U94 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .B1(clk429_counter[3]), .B2(clk429_counter[4]), .C(clk429_counter[7]), 
        .ZN(n111) );
  AOI32D0BWP12T30P140 U95 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .A3(clk429_counter[3]), .B1(speed[0]), .B2(clk429_counter[4]), .ZN(
        n107) );
  INVD0BWP12T30P140 U96 ( .I(clk429_counter[6]), .ZN(n112) );
  OAI211D0BWP12T30P140 U97 ( .A1(n116), .A2(n107), .B(n112), .C(n106), .ZN(
        n108) );
  OAI21D0BWP12T30P140 U98 ( .A1(speed[0]), .A2(clk429_counter[7]), .B(n108), 
        .ZN(n109) );
  OAI21D0BWP12T30P140 U99 ( .A1(n111), .A2(n110), .B(n109), .ZN(n132) );
  INVD0BWP12T30P140 U100 ( .I(n132), .ZN(n113) );
  OA211D0BWP12T30P140 U101 ( .A1(clk429_counter[3]), .A2(n115), .B(n119), .C(
        n113), .Z(N30) );
  CKBD0BWP12T30P140 U102 ( .I(n126), .Z(n123) );
  CKBD0BWP12T30P140 U103 ( .I(n125), .Z(n122) );
  AO222D0BWP12T30P140 U104 ( .A1(n123), .A2(shift_reg[2]), .B1(n122), .B2(
        data[8]), .C1(n121), .C2(shift_reg[1]), .Z(n97) );
  AO222D0BWP12T30P140 U105 ( .A1(n123), .A2(shift_reg[4]), .B1(n122), .B2(
        data[6]), .C1(n121), .C2(shift_reg[3]), .Z(n67) );
  OA211D0BWP12T30P140 U106 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), 
        .B(n113), .C(n116), .Z(N28) );
  NR2D0BWP12T30P140 U107 ( .A1(n120), .A2(n119), .ZN(n118) );
  ND2D0BWP12T30P140 U108 ( .A1(clk429_counter[5]), .A2(n118), .ZN(n114) );
  NR2D0BWP12T30P140 U109 ( .A1(n112), .A2(n114), .ZN(n133) );
  AOI211D0BWP12T30P140 U110 ( .A1(n112), .A2(n114), .B(n133), .C(n132), .ZN(
        N33) );
  OA211D0BWP12T30P140 U111 ( .A1(clk429_counter[5]), .A2(n118), .B(n114), .C(
        n113), .Z(N32) );
  AO222D0BWP12T30P140 U112 ( .A1(n123), .A2(shift_reg[3]), .B1(n122), .B2(
        data[7]), .C1(n124), .C2(shift_reg[2]), .Z(n66) );
  AO222D0BWP12T30P140 U113 ( .A1(n126), .A2(shift_reg[1]), .B1(n125), .B2(
        data[32]), .C1(n121), .C2(shift_reg[32]), .Z(n96) );
  NR2D0BWP12T30P140 U114 ( .A1(clk429_counter[0]), .A2(n132), .ZN(N27) );
  AO222D0BWP12T30P140 U115 ( .A1(n126), .A2(shift_reg[31]), .B1(n125), .B2(
        data[30]), .C1(n121), .C2(shift_reg[30]), .Z(n94) );
  AO222D0BWP12T30P140 U116 ( .A1(n123), .A2(shift_reg[30]), .B1(n122), .B2(
        data[29]), .C1(n121), .C2(shift_reg[29]), .Z(n93) );
  AO222D0BWP12T30P140 U117 ( .A1(n126), .A2(shift_reg[29]), .B1(n125), .B2(
        data[28]), .C1(n121), .C2(shift_reg[28]), .Z(n92) );
  AO222D0BWP12T30P140 U118 ( .A1(n123), .A2(shift_reg[28]), .B1(n122), .B2(
        data[27]), .C1(n124), .C2(shift_reg[27]), .Z(n91) );
  AO222D0BWP12T30P140 U119 ( .A1(n126), .A2(shift_reg[27]), .B1(n125), .B2(
        data[26]), .C1(n121), .C2(shift_reg[26]), .Z(n90) );
  AO222D0BWP12T30P140 U120 ( .A1(n126), .A2(shift_reg[26]), .B1(n122), .B2(
        data[25]), .C1(n124), .C2(shift_reg[25]), .Z(n89) );
  AO222D0BWP12T30P140 U121 ( .A1(n126), .A2(shift_reg[24]), .B1(n125), .B2(
        data[23]), .C1(n124), .C2(shift_reg[23]), .Z(n87) );
  AO222D0BWP12T30P140 U122 ( .A1(n123), .A2(shift_reg[21]), .B1(n122), .B2(
        data[20]), .C1(n121), .C2(shift_reg[20]), .Z(n84) );
  AO222D0BWP12T30P140 U123 ( .A1(n126), .A2(shift_reg[18]), .B1(n125), .B2(
        data[17]), .C1(n124), .C2(shift_reg[17]), .Z(n81) );
  AO222D0BWP12T30P140 U124 ( .A1(n123), .A2(shift_reg[15]), .B1(n122), .B2(
        data[14]), .C1(n124), .C2(shift_reg[14]), .Z(n78) );
  AOI211D0BWP12T30P140 U125 ( .A1(n117), .A2(n116), .B(n115), .C(n132), .ZN(
        N29) );
  AOI211D0BWP12T30P140 U126 ( .A1(n120), .A2(n119), .B(n118), .C(n132), .ZN(
        N31) );
  AO222D0BWP12T30P140 U127 ( .A1(n126), .A2(shift_reg[23]), .B1(n125), .B2(
        data[22]), .C1(n121), .C2(shift_reg[22]), .Z(n86) );
  AO222D0BWP12T30P140 U128 ( .A1(n126), .A2(shift_reg[20]), .B1(n125), .B2(
        data[19]), .C1(n124), .C2(shift_reg[19]), .Z(n83) );
  AO222D0BWP12T30P140 U129 ( .A1(n123), .A2(shift_reg[17]), .B1(n122), .B2(
        data[16]), .C1(n121), .C2(shift_reg[16]), .Z(n80) );
  AO222D0BWP12T30P140 U130 ( .A1(n126), .A2(shift_reg[25]), .B1(n125), .B2(
        data[24]), .C1(n121), .C2(shift_reg[24]), .Z(n88) );
  AO222D0BWP12T30P140 U131 ( .A1(n126), .A2(shift_reg[22]), .B1(n125), .B2(
        data[21]), .C1(n124), .C2(shift_reg[21]), .Z(n85) );
  AO222D0BWP12T30P140 U132 ( .A1(n123), .A2(shift_reg[19]), .B1(n122), .B2(
        data[18]), .C1(n121), .C2(shift_reg[18]), .Z(n82) );
  AO222D0BWP12T30P140 U133 ( .A1(n126), .A2(shift_reg[16]), .B1(n125), .B2(
        data[15]), .C1(n124), .C2(shift_reg[15]), .Z(n79) );
  AO222D0BWP12T30P140 U134 ( .A1(n123), .A2(shift_reg[32]), .B1(n122), .B2(
        data[31]), .C1(n121), .C2(shift_reg[31]), .Z(n95) );
  AO222D0BWP12T30P140 U135 ( .A1(n123), .A2(shift_reg[13]), .B1(n122), .B2(
        data[12]), .C1(n124), .C2(shift_reg[12]), .Z(n76) );
  AO222D0BWP12T30P140 U136 ( .A1(n126), .A2(shift_reg[14]), .B1(n125), .B2(
        data[13]), .C1(n124), .C2(shift_reg[13]), .Z(n77) );
  AO222D0BWP12T30P140 U137 ( .A1(n123), .A2(shift_reg[10]), .B1(n122), .B2(
        data[9]), .C1(n121), .C2(shift_reg[9]), .Z(n73) );
  AO222D0BWP12T30P140 U138 ( .A1(n126), .A2(shift_reg[12]), .B1(n125), .B2(
        data[11]), .C1(n124), .C2(shift_reg[11]), .Z(n75) );
  AO222D0BWP12T30P140 U139 ( .A1(n123), .A2(shift_reg[9]), .B1(n122), .B2(
        data[1]), .C1(n124), .C2(shift_reg[8]), .Z(n72) );
  AO222D0BWP12T30P140 U140 ( .A1(n123), .A2(shift_reg[5]), .B1(n122), .B2(
        data[5]), .C1(n124), .C2(shift_reg[4]), .Z(n68) );
  AO222D0BWP12T30P140 U141 ( .A1(n123), .A2(shift_reg[8]), .B1(n122), .B2(
        data[2]), .C1(n121), .C2(shift_reg[7]), .Z(n71) );
  AO222D0BWP12T30P140 U142 ( .A1(n123), .A2(shift_reg[6]), .B1(n122), .B2(
        data[4]), .C1(n121), .C2(shift_reg[5]), .Z(n69) );
  AO222D0BWP12T30P140 U143 ( .A1(n123), .A2(shift_reg[7]), .B1(n122), .B2(
        data[3]), .C1(n124), .C2(shift_reg[6]), .Z(n70) );
  AO222D0BWP12T30P140 U144 ( .A1(n126), .A2(shift_reg[11]), .B1(n125), .B2(
        data[10]), .C1(n124), .C2(shift_reg[10]), .Z(n74) );
  CKBD0BWP12T30P140 U145 ( .I(clk429), .Z(n140) );
  INVD0BWP12T30P140 U146 ( .I(reset), .ZN(n142) );
  CKBD0BWP12T30P140 U147 ( .I(n142), .Z(n139) );
  CKBD0BWP12T30P140 U148 ( .I(n142), .Z(n138) );
  CKBD0BWP12T30P140 U149 ( .I(clk429), .Z(n141) );
  AN3D0BWP12T30P140 U150 ( .A1(n127), .A2(shift_reg[1]), .A3(n141), .Z(
        a429_out_a) );
  AOI32D0BWP12T30P140 U151 ( .A1(shift_counter[3]), .A2(shift_counter[4]), 
        .A3(n129), .B1(n128), .B2(shift_counter[4]), .ZN(n130) );
  ND2D0BWP12T30P140 U152 ( .A1(n131), .A2(n130), .ZN(n64) );
  IAO21D0BWP12T30P140 U153 ( .A1(clk429_counter[7]), .A2(n133), .B(n132), .ZN(
        N34) );
  MUX2ND0BWP12T30P140 U154 ( .I0(n136), .I1(n135), .S(n134), .ZN(n54) );
  INR3D1BWP12T30P140 U155 ( .A1(n141), .B1(shift_reg[1]), .B2(n137), .ZN(
        a429_out_b) );
endmodule


module a429_rx_iface ( clk2M, reset, speed, a429_in_a, a429_in_b, parcheck, 
        data, wr_en );
  input [1:0] speed;
  output [32:1] data;
  input clk2M, reset, a429_in_a, a429_in_b, parcheck;
  output wr_en;
  wire   aorb, aorb_prev, parity, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200;
  wire   [1:0] state;
  wire   [8:0] sampling_counter;
  wire   [4:0] shift_counter;
  wire   [32:2] shift_reg;

  DFCSNQD1BWP12T30P140 sampling_counter_reg_5_ ( .D(n127), .CP(n197), .CDN(n93), .SDN(n92), .Q(sampling_counter[5]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_8_ ( .D(n172), .CP(n200), .CDN(n92), .SDN(n93), .Q(sampling_counter[8]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_6_ ( .D(n170), .CP(n200), .CDN(n92), .SDN(n93), .Q(sampling_counter[6]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_7_ ( .D(n171), .CP(n200), .CDN(n92), .SDN(n93), .Q(sampling_counter[7]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_2_ ( .D(n128), .CP(n197), .CDN(n92), .SDN(n93), .Q(sampling_counter[2]) );
  DFSNQD1BWP12T30P140 state_reg_1_ ( .D(n168), .CP(n200), .SDN(n196), .Q(
        state[1]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_0_ ( .D(n132), .CP(n197), .SDN(n196), .Q(sampling_counter[0]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_1_ ( .D(n131), .CP(n198), .SDN(n196), .Q(sampling_counter[1]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_4_ ( .D(n129), .CP(clk2M), .SDN(
        n196), .Q(sampling_counter[4]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_3_ ( .D(n130), .CP(n199), .SDN(n196), .Q(sampling_counter[3]) );
  DFCNQD1BWP12T30P140 aorb_prev_reg ( .D(aorb), .CP(n197), .CDN(n196), .Q(
        aorb_prev) );
  DFCNQD1BWP12T30P140 wr_en_reg ( .D(n94), .CP(n198), .CDN(n196), .Q(wr_en) );
  DFCNQD1BWP12T30P140 data_reg_32_ ( .D(n126), .CP(clk2M), .CDN(n195), .Q(
        data[32]) );
  DFCNQD1BWP12T30P140 data_reg_31_ ( .D(n125), .CP(n198), .CDN(n194), .Q(
        data[31]) );
  DFCNQD1BWP12T30P140 data_reg_30_ ( .D(n124), .CP(n199), .CDN(n195), .Q(
        data[30]) );
  DFCNQD1BWP12T30P140 data_reg_29_ ( .D(n123), .CP(n200), .CDN(n194), .Q(
        data[29]) );
  DFCNQD1BWP12T30P140 data_reg_28_ ( .D(n122), .CP(n197), .CDN(n91), .Q(
        data[28]) );
  DFCNQD1BWP12T30P140 data_reg_27_ ( .D(n121), .CP(clk2M), .CDN(n196), .Q(
        data[27]) );
  DFCNQD1BWP12T30P140 data_reg_26_ ( .D(n120), .CP(n198), .CDN(n91), .Q(
        data[26]) );
  DFCNQD1BWP12T30P140 data_reg_25_ ( .D(n119), .CP(n199), .CDN(n196), .Q(
        data[25]) );
  DFCNQD1BWP12T30P140 data_reg_24_ ( .D(n118), .CP(n200), .CDN(n91), .Q(
        data[24]) );
  DFCNQD1BWP12T30P140 data_reg_23_ ( .D(n117), .CP(n200), .CDN(n196), .Q(
        data[23]) );
  DFCNQD1BWP12T30P140 data_reg_22_ ( .D(n116), .CP(n200), .CDN(n91), .Q(
        data[22]) );
  DFCNQD1BWP12T30P140 data_reg_21_ ( .D(n115), .CP(n200), .CDN(n195), .Q(
        data[21]) );
  DFCNQD1BWP12T30P140 data_reg_20_ ( .D(n114), .CP(n200), .CDN(n194), .Q(
        data[20]) );
  DFCNQD1BWP12T30P140 data_reg_19_ ( .D(n113), .CP(n200), .CDN(n195), .Q(
        data[19]) );
  DFCNQD1BWP12T30P140 data_reg_18_ ( .D(n112), .CP(n200), .CDN(n196), .Q(
        data[18]) );
  DFCNQD1BWP12T30P140 data_reg_17_ ( .D(n111), .CP(n200), .CDN(n195), .Q(
        data[17]) );
  DFCNQD1BWP12T30P140 data_reg_16_ ( .D(n110), .CP(n200), .CDN(n194), .Q(
        data[16]) );
  DFCNQD1BWP12T30P140 data_reg_15_ ( .D(n109), .CP(n200), .CDN(n194), .Q(
        data[15]) );
  DFCNQD1BWP12T30P140 data_reg_14_ ( .D(n108), .CP(n200), .CDN(n91), .Q(
        data[14]) );
  DFCNQD1BWP12T30P140 data_reg_13_ ( .D(n107), .CP(n200), .CDN(n196), .Q(
        data[13]) );
  DFCNQD1BWP12T30P140 data_reg_12_ ( .D(n106), .CP(n200), .CDN(n91), .Q(
        data[12]) );
  DFCNQD1BWP12T30P140 data_reg_11_ ( .D(n105), .CP(n198), .CDN(n91), .Q(
        data[11]) );
  DFCNQD1BWP12T30P140 data_reg_10_ ( .D(n104), .CP(n200), .CDN(n91), .Q(
        data[10]) );
  DFCNQD1BWP12T30P140 data_reg_9_ ( .D(n103), .CP(n197), .CDN(n91), .Q(data[9]) );
  DFCNQD1BWP12T30P140 data_reg_8_ ( .D(n102), .CP(n198), .CDN(n91), .Q(data[8]) );
  DFCNQD1BWP12T30P140 data_reg_7_ ( .D(n101), .CP(n199), .CDN(n91), .Q(data[7]) );
  DFCNQD1BWP12T30P140 data_reg_6_ ( .D(n100), .CP(n199), .CDN(n91), .Q(data[6]) );
  DFCNQD1BWP12T30P140 data_reg_5_ ( .D(n99), .CP(n199), .CDN(n91), .Q(data[5])
         );
  DFCNQD1BWP12T30P140 data_reg_4_ ( .D(n98), .CP(n200), .CDN(n196), .Q(data[4]) );
  DFCNQD1BWP12T30P140 data_reg_3_ ( .D(n97), .CP(n197), .CDN(n91), .Q(data[3])
         );
  DFCNQD1BWP12T30P140 data_reg_2_ ( .D(n96), .CP(n198), .CDN(n196), .Q(data[2]) );
  DFCNQD1BWP12T30P140 data_reg_1_ ( .D(n95), .CP(n199), .CDN(n91), .Q(data[1])
         );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n163), .CP(n197), .CDN(n196), .Q(
        shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n162), .CP(n197), .CDN(n195), .Q(
        shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n161), .CP(n197), .CDN(n195), .Q(
        shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n160), .CP(n197), .CDN(n195), .Q(
        shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n159), .CP(n197), .CDN(n195), .Q(
        shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n158), .CP(n197), .CDN(n195), .Q(
        shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n157), .CP(n198), .CDN(n195), .Q(
        shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n156), .CP(n198), .CDN(n195), .Q(
        shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n155), .CP(n198), .CDN(n195), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n154), .CP(n198), .CDN(n195), .Q(
        shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n153), .CP(n198), .CDN(n195), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n152), .CP(n198), .CDN(n195), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n151), .CP(n198), .CDN(n195), .Q(
        shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n150), .CP(n198), .CDN(n194), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n149), .CP(n198), .CDN(n194), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n148), .CP(n198), .CDN(n194), .Q(
        shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n147), .CP(n198), .CDN(n194), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n146), .CP(n198), .CDN(n194), .Q(
        shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n145), .CP(n199), .CDN(n194), .Q(
        shift_reg[14]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n144), .CP(n199), .CDN(n194), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n143), .CP(n199), .CDN(n194), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n142), .CP(n199), .CDN(n194), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n141), .CP(n199), .CDN(n194), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n140), .CP(n199), .CDN(n194), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n139), .CP(n199), .CDN(n194), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n138), .CP(n199), .CDN(n194), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n137), .CP(n199), .CDN(n195), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n136), .CP(n199), .CDN(n194), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n135), .CP(n199), .CDN(n91), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n134), .CP(n199), .CDN(n195), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n133), .CP(n197), .CDN(n194), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n166), .CP(n197), .CDN(n195), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n173), .CP(n197), .CDN(n196), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 parity_reg ( .D(n174), .CP(clk2M), .CDN(n91), .Q(parity)
         );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n164), .CP(n197), .CDN(n196), 
        .Q(shift_counter[0]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n165), .CP(n197), .CDN(n196), 
        .Q(shift_counter[1]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n167), .CP(n197), .CDN(n196), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n169), .CP(n197), .CDN(n196), .Q(
        state[0]) );
  NR2D0BWP12T30P140 U3 ( .A1(a429_in_b), .A2(a429_in_a), .ZN(n63) );
  INVD0BWP12T30P140 U4 ( .I(n63), .ZN(aorb) );
  INVD0BWP12T30P140 U5 ( .I(sampling_counter[2]), .ZN(n20) );
  NR2D0BWP12T30P140 U6 ( .A1(sampling_counter[1]), .A2(sampling_counter[0]), 
        .ZN(n21) );
  ND2D0BWP12T30P140 U7 ( .A1(n20), .A2(n21), .ZN(n19) );
  NR2D0BWP12T30P140 U8 ( .A1(sampling_counter[3]), .A2(n19), .ZN(n7) );
  INVD0BWP12T30P140 U9 ( .I(n7), .ZN(n13) );
  NR2D0BWP12T30P140 U10 ( .A1(sampling_counter[4]), .A2(n13), .ZN(n12) );
  INVD0BWP12T30P140 U11 ( .I(n12), .ZN(n41) );
  NR2D0BWP12T30P140 U12 ( .A1(sampling_counter[5]), .A2(n41), .ZN(n40) );
  INVD0BWP12T30P140 U13 ( .I(sampling_counter[6]), .ZN(n35) );
  ND2D0BWP12T30P140 U14 ( .A1(n40), .A2(n35), .ZN(n34) );
  NR2D0BWP12T30P140 U15 ( .A1(sampling_counter[7]), .A2(n34), .ZN(n39) );
  INR2D1BWP12T30P140 U16 ( .A1(n39), .B1(sampling_counter[8]), .ZN(n66) );
  INVD0BWP12T30P140 U17 ( .I(state[0]), .ZN(n28) );
  NR2D0BWP12T30P140 U18 ( .A1(n28), .A2(state[1]), .ZN(n74) );
  ND2D0BWP12T30P140 U19 ( .A1(n66), .A2(n74), .ZN(n29) );
  INVD0BWP12T30P140 U20 ( .I(a429_in_a), .ZN(n77) );
  INVD0BWP12T30P140 U21 ( .I(a429_in_b), .ZN(n2) );
  OAI21D0BWP12T30P140 U22 ( .A1(n77), .A2(n2), .B(aorb), .ZN(n1) );
  NR3D0BWP12T30P140 U23 ( .A1(shift_counter[0]), .A2(shift_counter[2]), .A3(
        shift_counter[1]), .ZN(n68) );
  INR3D1BWP12T30P140 U24 ( .A1(n68), .B1(shift_counter[4]), .B2(
        shift_counter[3]), .ZN(n8) );
  IND2D1BWP12T30P140 U25 ( .A1(n1), .B1(n8), .ZN(n4) );
  NR2D0BWP12T30P140 U26 ( .A1(n29), .A2(n4), .ZN(n46) );
  CKBD0BWP12T30P140 U27 ( .I(n46), .Z(n60) );
  INVD0BWP12T30P140 U28 ( .I(shift_reg[31]), .ZN(n50) );
  CKBD0BWP12T30P140 U29 ( .I(n46), .Z(n58) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n60), .A2(n50), .B1(data[30]), .B2(n58), .ZN(
        n124) );
  INVD0BWP12T30P140 U31 ( .I(shift_reg[29]), .ZN(n52) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n60), .A2(n52), .B1(data[28]), .B2(n58), .ZN(
        n122) );
  INVD0BWP12T30P140 U33 ( .I(parity), .ZN(n75) );
  AOI22D0BWP12T30P140 U34 ( .A1(a429_in_b), .A2(parity), .B1(n75), .B2(n2), 
        .ZN(n5) );
  ND2D0BWP12T30P140 U35 ( .A1(state[0]), .A2(n66), .ZN(n3) );
  AOI211D0BWP12T30P140 U36 ( .A1(parcheck), .A2(n5), .B(n4), .C(n3), .ZN(n6)
         );
  INVD0BWP12T30P140 U37 ( .I(state[1]), .ZN(n67) );
  OA21D0BWP12T30P140 U38 ( .A1(wr_en), .A2(n6), .B(n67), .Z(n94) );
  INVD0BWP12T30P140 U39 ( .I(shift_reg[22]), .ZN(n176) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n60), .A2(n176), .B1(data[21]), .B2(n46), 
        .ZN(n115) );
  INVD0BWP12T30P140 U41 ( .I(shift_reg[21]), .ZN(n182) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n60), .A2(n182), .B1(data[20]), .B2(n60), 
        .ZN(n114) );
  INVD0BWP12T30P140 U43 ( .I(shift_reg[24]), .ZN(n56) );
  CKBD0BWP12T30P140 U44 ( .I(n46), .Z(n47) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n60), .A2(n56), .B1(data[23]), .B2(n47), .ZN(
        n117) );
  INVD0BWP12T30P140 U46 ( .I(shift_reg[26]), .ZN(n54) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n60), .A2(n54), .B1(data[25]), .B2(n58), .ZN(
        n119) );
  INVD0BWP12T30P140 U48 ( .I(n66), .ZN(n61) );
  NR3D0BWP12T30P140 U49 ( .A1(n66), .A2(aorb), .A3(n67), .ZN(n27) );
  AOI21D0BWP12T30P140 U50 ( .A1(state[0]), .A2(n61), .B(n27), .ZN(n11) );
  AOI21D0BWP12T30P140 U51 ( .A1(sampling_counter[3]), .A2(n19), .B(n7), .ZN(
        n10) );
  OAI21D0BWP12T30P140 U52 ( .A1(state[0]), .A2(aorb), .B(state[1]), .ZN(n23)
         );
  AOI21D0BWP12T30P140 U53 ( .A1(n66), .A2(n28), .B(n23), .ZN(n32) );
  INVD0BWP12T30P140 U54 ( .I(n32), .ZN(n16) );
  AOI211D0BWP12T30P140 U55 ( .A1(a429_in_a), .A2(a429_in_b), .B(n63), .C(n8), 
        .ZN(n65) );
  INVD0BWP12T30P140 U56 ( .I(n65), .ZN(n33) );
  INVD0BWP12T30P140 U57 ( .I(speed[0]), .ZN(n193) );
  OAI211D0BWP12T30P140 U58 ( .A1(n33), .A2(n193), .B(n66), .C(state[0]), .ZN(
        n9) );
  OAI211D0BWP12T30P140 U59 ( .A1(n11), .A2(n10), .B(n16), .C(n9), .ZN(n130) );
  INVD0BWP12T30P140 U60 ( .I(shift_reg[27]), .ZN(n53) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n60), .A2(n53), .B1(data[26]), .B2(n58), .ZN(
        n120) );
  INVD0BWP12T30P140 U62 ( .I(shift_reg[19]), .ZN(n185) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n47), .A2(n185), .B1(data[18]), .B2(n58), 
        .ZN(n112) );
  NR2D0BWP12T30P140 U64 ( .A1(state[0]), .A2(n27), .ZN(n17) );
  AOI21D0BWP12T30P140 U65 ( .A1(sampling_counter[4]), .A2(n13), .B(n12), .ZN(
        n14) );
  OAI21D0BWP12T30P140 U66 ( .A1(n17), .A2(n14), .B(n16), .ZN(n129) );
  INVD0BWP12T30P140 U67 ( .I(shift_reg[18]), .ZN(n184) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n47), .A2(n184), .B1(data[17]), .B2(n60), 
        .ZN(n111) );
  INVD0BWP12T30P140 U69 ( .I(shift_reg[25]), .ZN(n55) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n60), .A2(n55), .B1(data[24]), .B2(n46), .ZN(
        n118) );
  INVD0BWP12T30P140 U71 ( .I(shift_reg[17]), .ZN(n179) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n47), .A2(n179), .B1(data[16]), .B2(n46), 
        .ZN(n110) );
  AOI21D0BWP12T30P140 U73 ( .A1(sampling_counter[0]), .A2(sampling_counter[1]), 
        .B(n21), .ZN(n15) );
  NR2D0BWP12T30P140 U74 ( .A1(state[1]), .A2(state[0]), .ZN(n64) );
  ND2D0BWP12T30P140 U75 ( .A1(n64), .A2(n193), .ZN(n44) );
  OAI211D0BWP12T30P140 U76 ( .A1(n17), .A2(n15), .B(n16), .C(n44), .ZN(n131)
         );
  MAOI22D0BWP12T30P140 U77 ( .A1(n60), .A2(n77), .B1(data[32]), .B2(n58), .ZN(
        n126) );
  INVD0BWP12T30P140 U78 ( .I(shift_reg[16]), .ZN(n188) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n47), .A2(n188), .B1(data[15]), .B2(n46), 
        .ZN(n109) );
  OAI211D0BWP12T30P140 U80 ( .A1(sampling_counter[0]), .A2(n17), .B(n44), .C(
        n16), .ZN(n132) );
  INVD0BWP12T30P140 U81 ( .I(shift_reg[15]), .ZN(n187) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n47), .A2(n187), .B1(data[14]), .B2(n46), 
        .ZN(n108) );
  INVD0BWP12T30P140 U83 ( .I(shift_reg[14]), .ZN(n180) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n47), .A2(n180), .B1(data[13]), .B2(n46), 
        .ZN(n107) );
  ND2D0BWP12T30P140 U85 ( .A1(n66), .A2(n33), .ZN(n18) );
  AOI22D0BWP12T30P140 U86 ( .A1(n66), .A2(n28), .B1(n67), .B2(n18), .ZN(n168)
         );
  INVD0BWP12T30P140 U87 ( .I(shift_reg[20]), .ZN(n181) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n60), .A2(n181), .B1(data[19]), .B2(n47), 
        .ZN(n113) );
  INVD0BWP12T30P140 U89 ( .I(shift_reg[13]), .ZN(n178) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n47), .A2(n178), .B1(data[12]), .B2(n46), 
        .ZN(n106) );
  AOI32D0BWP12T30P140 U91 ( .A1(n61), .A2(n28), .A3(aorb), .B1(state[1]), .B2(
        state[0]), .ZN(n26) );
  OAI21D0BWP12T30P140 U92 ( .A1(n21), .A2(n20), .B(n19), .ZN(n22) );
  AOI31D0BWP12T30P140 U93 ( .A1(n61), .A2(n23), .A3(n22), .B(n64), .ZN(n25) );
  ND2D0BWP12T30P140 U94 ( .A1(n66), .A2(n67), .ZN(n24) );
  AOI32D0BWP12T30P140 U95 ( .A1(n26), .A2(n25), .A3(n24), .B1(speed[0]), .B2(
        n25), .ZN(n128) );
  INVD0BWP12T30P140 U96 ( .I(shift_reg[12]), .ZN(n177) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n47), .A2(n177), .B1(data[11]), .B2(n46), 
        .ZN(n105) );
  INVD0BWP12T30P140 U98 ( .I(shift_reg[11]), .ZN(n175) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n47), .A2(n175), .B1(data[10]), .B2(n46), 
        .ZN(n104) );
  AOI22D0BWP12T30P140 U100 ( .A1(n61), .A2(n74), .B1(n28), .B2(n27), .ZN(n37)
         );
  AOI21D0BWP12T30P140 U101 ( .A1(sampling_counter[7]), .A2(n34), .B(n39), .ZN(
        n31) );
  INVD0BWP12T30P140 U102 ( .I(n29), .ZN(n48) );
  OAI21D0BWP12T30P140 U103 ( .A1(n48), .A2(n32), .B(n193), .ZN(n30) );
  OAI21D0BWP12T30P140 U104 ( .A1(n37), .A2(n31), .B(n30), .ZN(n171) );
  INVD0BWP12T30P140 U105 ( .I(shift_reg[30]), .ZN(n51) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n60), .A2(n51), .B1(data[29]), .B2(n58), 
        .ZN(n123) );
  INVD0BWP12T30P140 U107 ( .I(shift_reg[10]), .ZN(n90) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n47), .A2(n90), .B1(data[9]), .B2(n46), .ZN(
        n103) );
  AOI21D0BWP12T30P140 U109 ( .A1(n48), .A2(n33), .B(n32), .ZN(n45) );
  OA21D0BWP12T30P140 U110 ( .A1(n40), .A2(n35), .B(n34), .Z(n36) );
  OAI22D0BWP12T30P140 U111 ( .A1(n45), .A2(speed[0]), .B1(n37), .B2(n36), .ZN(
        n170) );
  INVD0BWP12T30P140 U112 ( .I(shift_reg[2]), .ZN(n82) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n47), .A2(n82), .B1(data[8]), .B2(n46), .ZN(
        n102) );
  INVD0BWP12T30P140 U114 ( .I(shift_reg[32]), .ZN(n49) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n60), .A2(n49), .B1(data[31]), .B2(n58), 
        .ZN(n125) );
  INVD0BWP12T30P140 U116 ( .I(shift_reg[3]), .ZN(n83) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n60), .A2(n83), .B1(data[7]), .B2(n58), .ZN(
        n101) );
  INVD0BWP12T30P140 U118 ( .I(n37), .ZN(n42) );
  ND2D0BWP12T30P140 U119 ( .A1(sampling_counter[8]), .A2(n42), .ZN(n38) );
  OAI22D0BWP12T30P140 U120 ( .A1(n45), .A2(speed[0]), .B1(n39), .B2(n38), .ZN(
        n172) );
  INVD0BWP12T30P140 U121 ( .I(shift_reg[23]), .ZN(n57) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n60), .A2(n57), .B1(data[22]), .B2(n58), 
        .ZN(n116) );
  INVD0BWP12T30P140 U123 ( .I(shift_reg[4]), .ZN(n84) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n47), .A2(n84), .B1(data[6]), .B2(n47), .ZN(
        n100) );
  AOI32D0BWP12T30P140 U125 ( .A1(sampling_counter[5]), .A2(n42), .A3(n41), 
        .B1(n40), .B2(n42), .ZN(n43) );
  OAI211D0BWP12T30P140 U126 ( .A1(n45), .A2(n193), .B(n44), .C(n43), .ZN(n127)
         );
  INVD0BWP12T30P140 U127 ( .I(shift_reg[5]), .ZN(n85) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n58), .A2(n85), .B1(data[5]), .B2(n46), .ZN(
        n99) );
  INVD0BWP12T30P140 U129 ( .I(shift_reg[6]), .ZN(n86) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n60), .A2(n86), .B1(data[4]), .B2(n58), .ZN(
        n98) );
  INVD0BWP12T30P140 U131 ( .I(shift_reg[7]), .ZN(n87) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n47), .A2(n87), .B1(data[3]), .B2(n58), .ZN(
        n97) );
  INVD0BWP12T30P140 U133 ( .I(shift_reg[8]), .ZN(n88) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n46), .A2(n88), .B1(data[2]), .B2(n58), .ZN(
        n96) );
  INVD0BWP12T30P140 U135 ( .I(shift_reg[9]), .ZN(n89) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n47), .A2(n89), .B1(data[1]), .B2(n58), .ZN(
        n95) );
  ND2D0BWP12T30P140 U137 ( .A1(n65), .A2(n48), .ZN(n186) );
  INVD0BWP12T30P140 U138 ( .I(n186), .ZN(n81) );
  INVD0BWP12T30P140 U139 ( .I(n81), .ZN(n183) );
  AOI22D0BWP12T30P140 U140 ( .A1(n81), .A2(n77), .B1(n49), .B2(n183), .ZN(n163) );
  AOI22D0BWP12T30P140 U141 ( .A1(n81), .A2(n49), .B1(n50), .B2(n186), .ZN(n162) );
  AOI22D0BWP12T30P140 U142 ( .A1(n81), .A2(n50), .B1(n51), .B2(n183), .ZN(n161) );
  AOI22D0BWP12T30P140 U143 ( .A1(n81), .A2(n51), .B1(n52), .B2(n186), .ZN(n160) );
  INVD0BWP12T30P140 U144 ( .I(shift_reg[28]), .ZN(n59) );
  AOI22D0BWP12T30P140 U145 ( .A1(n81), .A2(n52), .B1(n59), .B2(n183), .ZN(n159) );
  AOI22D0BWP12T30P140 U146 ( .A1(n81), .A2(n59), .B1(n53), .B2(n186), .ZN(n158) );
  AOI22D0BWP12T30P140 U147 ( .A1(n81), .A2(n53), .B1(n54), .B2(n183), .ZN(n157) );
  AOI22D0BWP12T30P140 U148 ( .A1(n81), .A2(n54), .B1(n55), .B2(n186), .ZN(n156) );
  AOI22D0BWP12T30P140 U149 ( .A1(n81), .A2(n55), .B1(n56), .B2(n183), .ZN(n155) );
  AOI22D0BWP12T30P140 U150 ( .A1(n81), .A2(n56), .B1(n57), .B2(n186), .ZN(n154) );
  AOI22D0BWP12T30P140 U151 ( .A1(n81), .A2(n57), .B1(n176), .B2(n186), .ZN(
        n153) );
  MAOI22D0BWP12T30P140 U152 ( .A1(n60), .A2(n59), .B1(data[27]), .B2(n58), 
        .ZN(n121) );
  INVD0BWP12T30P140 U153 ( .I(n64), .ZN(n192) );
  OAI21D0BWP12T30P140 U154 ( .A1(n65), .A2(n61), .B(n74), .ZN(n62) );
  OAI31D0BWP12T30P140 U155 ( .A1(n63), .A2(aorb_prev), .A3(n192), .B(n62), 
        .ZN(n169) );
  ND2D0BWP12T30P140 U156 ( .A1(n68), .A2(n81), .ZN(n79) );
  AOI31D0BWP12T30P140 U157 ( .A1(n67), .A2(n66), .A3(n65), .B(n64), .ZN(n78)
         );
  INVD0BWP12T30P140 U158 ( .I(n78), .ZN(n72) );
  ND2D0BWP12T30P140 U159 ( .A1(n68), .A2(n72), .ZN(n190) );
  ND2D0BWP12T30P140 U160 ( .A1(shift_counter[3]), .A2(n190), .ZN(n69) );
  OAI211D0BWP12T30P140 U161 ( .A1(shift_counter[3]), .A2(n79), .B(n192), .C(
        n69), .ZN(n167) );
  INVD0BWP12T30P140 U162 ( .I(shift_counter[0]), .ZN(n73) );
  ND2D0BWP12T30P140 U163 ( .A1(n81), .A2(n73), .ZN(n71) );
  OAI21D0BWP12T30P140 U164 ( .A1(shift_counter[0]), .A2(n78), .B(
        shift_counter[1]), .ZN(n70) );
  OAI211D0BWP12T30P140 U165 ( .A1(shift_counter[1]), .A2(n71), .B(n192), .C(
        n70), .ZN(n165) );
  OAI211D0BWP12T30P140 U166 ( .A1(n73), .A2(n72), .B(n192), .C(n71), .ZN(n164)
         );
  AOI21D0BWP12T30P140 U167 ( .A1(n74), .A2(n77), .B(n78), .ZN(n76) );
  OAI32D0BWP12T30P140 U168 ( .A1(parity), .A2(n77), .A3(n186), .B1(n76), .B2(
        n75), .ZN(n174) );
  OAI31D0BWP12T30P140 U169 ( .A1(shift_counter[0]), .A2(shift_counter[1]), 
        .A3(n78), .B(shift_counter[2]), .ZN(n80) );
  ND3D0BWP12T30P140 U170 ( .A1(n80), .A2(n79), .A3(n192), .ZN(n166) );
  CKBD0BWP12T30P140 U171 ( .I(n81), .Z(n189) );
  AOI22D0BWP12T30P140 U172 ( .A1(n189), .A2(n83), .B1(n82), .B2(n183), .ZN(
        n133) );
  AOI22D0BWP12T30P140 U173 ( .A1(n189), .A2(n84), .B1(n83), .B2(n183), .ZN(
        n134) );
  AOI22D0BWP12T30P140 U174 ( .A1(n189), .A2(n85), .B1(n84), .B2(n183), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U175 ( .A1(n189), .A2(n86), .B1(n85), .B2(n183), .ZN(
        n136) );
  AOI22D0BWP12T30P140 U176 ( .A1(n189), .A2(n87), .B1(n86), .B2(n183), .ZN(
        n137) );
  AOI22D0BWP12T30P140 U177 ( .A1(n189), .A2(n88), .B1(n87), .B2(n186), .ZN(
        n138) );
  AOI22D0BWP12T30P140 U178 ( .A1(n189), .A2(n89), .B1(n88), .B2(n183), .ZN(
        n139) );
  AOI22D0BWP12T30P140 U179 ( .A1(n189), .A2(n90), .B1(n89), .B2(n186), .ZN(
        n140) );
  AOI22D0BWP12T30P140 U180 ( .A1(n189), .A2(n175), .B1(n90), .B2(n183), .ZN(
        n141) );
  AOI22D0BWP12T30P140 U181 ( .A1(n189), .A2(n177), .B1(n175), .B2(n186), .ZN(
        n142) );
  AOI22D0BWP12T30P140 U182 ( .A1(n189), .A2(n180), .B1(n178), .B2(n186), .ZN(
        n144) );
  AOI22D0BWP12T30P140 U183 ( .A1(n189), .A2(n176), .B1(n182), .B2(n186), .ZN(
        n152) );
  AOI22D0BWP12T30P140 U184 ( .A1(n189), .A2(n181), .B1(n185), .B2(n186), .ZN(
        n150) );
  AOI22D0BWP12T30P140 U185 ( .A1(n189), .A2(n178), .B1(n177), .B2(n183), .ZN(
        n143) );
  AOI22D0BWP12T30P140 U186 ( .A1(n189), .A2(n184), .B1(n179), .B2(n186), .ZN(
        n148) );
  AOI22D0BWP12T30P140 U187 ( .A1(n189), .A2(n179), .B1(n188), .B2(n183), .ZN(
        n147) );
  AOI22D0BWP12T30P140 U188 ( .A1(n189), .A2(n187), .B1(n180), .B2(n183), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U189 ( .A1(n189), .A2(n182), .B1(n181), .B2(n186), .ZN(
        n151) );
  AOI22D0BWP12T30P140 U190 ( .A1(n189), .A2(n185), .B1(n184), .B2(n183), .ZN(
        n149) );
  AOI22D0BWP12T30P140 U191 ( .A1(n189), .A2(n188), .B1(n187), .B2(n186), .ZN(
        n146) );
  CKBD0BWP12T30P140 U192 ( .I(clk2M), .Z(n199) );
  CKBD0BWP12T30P140 U193 ( .I(clk2M), .Z(n198) );
  CKBD0BWP12T30P140 U194 ( .I(clk2M), .Z(n197) );
  CKBD0BWP12T30P140 U195 ( .I(clk2M), .Z(n200) );
  INVD0BWP12T30P140 U196 ( .I(reset), .ZN(n91) );
  CKBD0BWP12T30P140 U197 ( .I(n91), .Z(n194) );
  CKBD0BWP12T30P140 U198 ( .I(n91), .Z(n195) );
  CKBD0BWP12T30P140 U199 ( .I(n91), .Z(n196) );
  OAI21D0BWP12T30P140 U200 ( .A1(shift_counter[3]), .A2(n190), .B(
        shift_counter[4]), .ZN(n191) );
  ND2D0BWP12T30P140 U201 ( .A1(n192), .A2(n191), .ZN(n173) );
  ND2D0BWP12T30P140 U202 ( .A1(reset), .A2(n193), .ZN(n93) );
  ND2D0BWP12T30P140 U203 ( .A1(speed[0]), .A2(reset), .ZN(n92) );
endmodule


module a429_top ( clk2M, reset, enable, speed, par_gen, gap_bits, tx_data, 
        tx_req, parcheck, rx_data, rx_wr_en, tx_ready, a429_out_a, a429_out_b
 );
  input [1:0] speed;
  input [6:0] gap_bits;
  input [32:1] tx_data;
  output [32:1] rx_data;
  input clk2M, reset, enable, par_gen, tx_req, parcheck;
  output rx_wr_en, tx_ready, a429_out_a, a429_out_b;


  a429_tx_iface u_tx ( .clk2M(clk2M), .reset(reset), .enable(enable), .speed(
        speed), .gap_bits(gap_bits), .data(tx_data), .tx_req(tx_req), 
        .a429_out_a(a429_out_a), .a429_out_b(a429_out_b), .ready(tx_ready) );
  a429_rx_iface u_rx ( .clk2M(clk2M), .reset(reset), .speed(speed), 
        .a429_in_a(a429_out_a), .a429_in_b(a429_out_b), .parcheck(parcheck), 
        .data(rx_data), .wr_en(rx_wr_en) );
endmodule

