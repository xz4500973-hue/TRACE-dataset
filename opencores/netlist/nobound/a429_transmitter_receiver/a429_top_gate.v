/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 10:59:17 2026
/////////////////////////////////////////////////////////////


module a429_tx_iface ( clk2M, reset, enable, speed, gap_bits, data, tx_req, 
        a429_out_a, a429_out_b, ready );
  input [1:0] speed;
  input [6:0] gap_bits;
  input [32:1] data;
  input clk2M, reset, enable, tx_req;
  output a429_out_a, a429_out_b, ready;
  wire   clk429, N12, N23, N24, N25, N26, N27, N28, N29, N30, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  wire   [7:0] clk429_counter;
  wire   [32:1] shift_reg;
  wire   [1:0] state;
  wire   [4:0] shift_counter;
  wire   [6:0] gap_counter;

  DFCNQD1BWP12T30P140 clk429_reg ( .D(N12), .CP(clk2M), .CDN(n141), .Q(clk429)
         );
  DFCNQD1BWP12T30P140 clk429_counter_reg_0_ ( .D(N23), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[0]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_1_ ( .D(N24), .CP(clk2M), .CDN(n141), 
        .Q(clk429_counter[1]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_6_ ( .D(N29), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[6]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_5_ ( .D(N28), .CP(clk2M), .CDN(n141), 
        .Q(clk429_counter[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n93), .CP(clk429), .CDN(n140), 
        .Q(shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n90), .CP(clk429), .CDN(n141), 
        .Q(shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n87), .CP(clk429), .CDN(n144), 
        .Q(shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n95), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_2_ ( .D(N25), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[2]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_7_ ( .D(N30), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[7]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_5_ ( .D(n58), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[5]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_0_ ( .D(n60), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[0]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_3_ ( .D(n56), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[3]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_4_ ( .D(n57), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[4]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_2_ ( .D(n55), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[2]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_6_ ( .D(n59), .CP(clk429), .CDN(n140), 
        .Q(gap_counter[6]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n97), .CP(clk429), .CDN(n141), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_4_ ( .D(N27), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n98), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[0]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n94), .CP(clk429), .CDN(n141), 
        .Q(shift_counter[1]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n92), .CP(n143), .CDN(n140), .Q(
        shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n89), .CP(n143), .CDN(n144), .Q(
        shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n86), .CP(n143), .CDN(n141), .Q(
        shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n72), .CP(n143), .CDN(n140), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n71), .CP(n143), .CDN(n141), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n70), .CP(n143), .CDN(n140), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n69), .CP(n143), .CDN(n141), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n68), .CP(n143), .CDN(n140), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n67), .CP(n143), .CDN(n140), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n66), .CP(n143), .CDN(n140), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n65), .CP(n143), .CDN(n140), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n64), .CP(n143), .CDN(n140), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n63), .CP(n143), .CDN(n140), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n96), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n91), .CP(n142), .CDN(n144), .Q(
        shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n88), .CP(n142), .CDN(n141), .Q(
        shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n85), .CP(n142), .CDN(n144), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n84), .CP(n142), .CDN(n141), .Q(
        shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n83), .CP(n142), .CDN(n144), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n82), .CP(n142), .CDN(n141), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n81), .CP(n142), .CDN(n140), .Q(
        shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n80), .CP(n142), .CDN(n144), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n79), .CP(n142), .CDN(n141), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n78), .CP(n142), .CDN(n140), .Q(
        shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n77), .CP(n142), .CDN(n144), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n76), .CP(n142), .CDN(n144), .Q(
        shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n75), .CP(n142), .CDN(n144), .Q(
        shift_reg[14]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n74), .CP(n142), .CDN(n144), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n73), .CP(n142), .CDN(n141), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_3_ ( .D(N26), .CP(clk2M), .CDN(n141), 
        .Q(clk429_counter[3]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_1_ ( .D(n54), .CP(n142), .CDN(n140), .Q(
        gap_counter[1]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n61), .CP(clk429), .CDN(n141), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n62), .CP(n143), .CDN(n141), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_1_ ( .D(n99), .CP(n143), .CDN(n141), .Q(
        shift_reg[1]) );
  AOI211D0BWP12T30P140 U3 ( .A1(tx_req), .A2(n3), .B(n129), .C(n10), .ZN(n118)
         );
  CKBD0BWP12T30P140 U4 ( .I(n128), .Z(n124) );
  AOI221D0BWP12T30P140 U5 ( .A1(clk429_counter[2]), .A2(clk429_counter[3]), 
        .B1(clk429_counter[1]), .B2(clk429_counter[3]), .C(clk429_counter[6]), 
        .ZN(n1) );
  INVD0BWP12T30P140 U6 ( .I(speed[0]), .ZN(n19) );
  INVD0BWP12T30P140 U7 ( .I(clk429_counter[5]), .ZN(n15) );
  INVD0BWP12T30P140 U8 ( .I(clk429_counter[4]), .ZN(n111) );
  OAI211D0BWP12T30P140 U9 ( .A1(n1), .A2(n19), .B(n15), .C(n111), .ZN(n2) );
  AOI221D0BWP12T30P140 U10 ( .A1(clk429_counter[6]), .A2(n2), .B1(speed[0]), 
        .B2(n2), .C(clk429_counter[7]), .ZN(N12) );
  NR2D0BWP12T30P140 U11 ( .A1(state[0]), .A2(state[1]), .ZN(ready) );
  INVD0BWP12T30P140 U12 ( .I(state[0]), .ZN(n137) );
  NR2D0BWP12T30P140 U13 ( .A1(state[1]), .A2(n137), .ZN(n129) );
  ND2D0BWP12T30P140 U14 ( .A1(n129), .A2(enable), .ZN(n120) );
  INVD0BWP12T30P140 U15 ( .I(n120), .ZN(n128) );
  INVD0BWP12T30P140 U16 ( .I(state[1]), .ZN(n3) );
  INVD0BWP12T30P140 U17 ( .I(enable), .ZN(n10) );
  CKBD0BWP12T30P140 U18 ( .I(n118), .Z(n126) );
  ND2D0BWP12T30P140 U19 ( .A1(enable), .A2(ready), .ZN(n138) );
  NR2D0BWP12T30P140 U20 ( .A1(n126), .A2(n138), .ZN(n125) );
  AO222D0BWP12T30P140 U21 ( .A1(n124), .A2(shift_reg[2]), .B1(n125), .B2(
        data[8]), .C1(n126), .C2(shift_reg[1]), .Z(n99) );
  NR3D0BWP12T30P140 U22 ( .A1(shift_counter[0]), .A2(shift_counter[2]), .A3(
        shift_counter[1]), .ZN(n121) );
  INR3D1BWP12T30P140 U23 ( .A1(n121), .B1(shift_counter[4]), .B2(
        shift_counter[3]), .ZN(n25) );
  OR4D0BWP12T30P140 U24 ( .A1(gap_counter[3]), .A2(gap_counter[4]), .A3(
        gap_counter[0]), .A4(gap_counter[5]), .Z(n4) );
  NR4D0BWP12T30P140 U25 ( .A1(gap_counter[6]), .A2(gap_counter[1]), .A3(
        gap_counter[2]), .A4(n4), .ZN(n8) );
  AOI21D0BWP12T30P140 U26 ( .A1(ready), .A2(tx_req), .B(n10), .ZN(n24) );
  IOA21D0BWP12T30P140 U27 ( .A1(state[1]), .A2(n8), .B(n24), .ZN(n5) );
  AOI211D0BWP12T30P140 U28 ( .A1(state[0]), .A2(n25), .B(state[1]), .C(n5), 
        .ZN(n136) );
  ND2D0BWP12T30P140 U29 ( .A1(state[1]), .A2(n137), .ZN(n7) );
  OAI22D0BWP12T30P140 U30 ( .A1(n136), .A2(n120), .B1(n5), .B2(n7), .ZN(n61)
         );
  INVD0BWP12T30P140 U31 ( .I(n129), .ZN(n139) );
  INVD0BWP12T30P140 U32 ( .I(gap_bits[6]), .ZN(n33) );
  OR4D0BWP12T30P140 U33 ( .A1(gap_bits[4]), .A2(gap_bits[5]), .A3(gap_bits[2]), 
        .A4(gap_bits[3]), .Z(n6) );
  ND2D0BWP12T30P140 U34 ( .A1(n33), .A2(n6), .ZN(n11) );
  NR2D0BWP12T30P140 U35 ( .A1(n139), .A2(n11), .ZN(n37) );
  NR2D0BWP12T30P140 U36 ( .A1(gap_counter[0]), .A2(n7), .ZN(n36) );
  INVD0BWP12T30P140 U37 ( .I(n7), .ZN(n101) );
  AOI22D0BWP12T30P140 U38 ( .A1(n37), .A2(gap_bits[1]), .B1(n101), .B2(
        gap_counter[1]), .ZN(n32) );
  OAI21D0BWP12T30P140 U39 ( .A1(n8), .A2(n7), .B(enable), .ZN(n9) );
  AOI21D0BWP12T30P140 U40 ( .A1(n129), .A2(n25), .B(n9), .ZN(n108) );
  NR2D0BWP12T30P140 U41 ( .A1(n108), .A2(n10), .ZN(n107) );
  INVD0BWP12T30P140 U42 ( .I(n107), .ZN(n53) );
  INVD0BWP12T30P140 U43 ( .I(n108), .ZN(n39) );
  ND3D0BWP12T30P140 U44 ( .A1(n11), .A2(n39), .A3(n128), .ZN(n13) );
  ND2D0BWP12T30P140 U45 ( .A1(n108), .A2(gap_counter[1]), .ZN(n12) );
  OAI211D0BWP12T30P140 U46 ( .A1(n14), .A2(n53), .B(n13), .C(n12), .ZN(n54) );
  INVD0BWP12T30P140 U47 ( .I(clk429_counter[2]), .ZN(n31) );
  ND2D0BWP12T30P140 U48 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), .ZN(
        n30) );
  NR2D0BWP12T30P140 U49 ( .A1(n31), .A2(n30), .ZN(n29) );
  ND2D0BWP12T30P140 U50 ( .A1(clk429_counter[3]), .A2(n29), .ZN(n110) );
  AOI221D0BWP12T30P140 U51 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .B1(clk429_counter[3]), .B2(clk429_counter[4]), .C(clk429_counter[7]), 
        .ZN(n20) );
  AOI32D0BWP12T30P140 U52 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .A3(clk429_counter[3]), .B1(speed[0]), .B2(clk429_counter[4]), .ZN(n16) );
  INVD0BWP12T30P140 U53 ( .I(clk429_counter[6]), .ZN(n21) );
  OAI211D0BWP12T30P140 U54 ( .A1(n30), .A2(n16), .B(n21), .C(n15), .ZN(n17) );
  OAI21D0BWP12T30P140 U55 ( .A1(speed[0]), .A2(clk429_counter[7]), .B(n17), 
        .ZN(n18) );
  OAI21D0BWP12T30P140 U56 ( .A1(n20), .A2(n19), .B(n18), .ZN(n130) );
  INVD0BWP12T30P140 U57 ( .I(n130), .ZN(n22) );
  OA211D0BWP12T30P140 U58 ( .A1(clk429_counter[3]), .A2(n29), .B(n110), .C(n22), .Z(N26) );
  AO222D0BWP12T30P140 U59 ( .A1(n124), .A2(shift_reg[13]), .B1(n125), .B2(
        data[12]), .C1(n118), .C2(shift_reg[12]), .Z(n73) );
  CKBD0BWP12T30P140 U60 ( .I(n125), .Z(n127) );
  AO222D0BWP12T30P140 U61 ( .A1(n128), .A2(shift_reg[14]), .B1(n127), .B2(
        data[13]), .C1(n118), .C2(shift_reg[13]), .Z(n74) );
  AO222D0BWP12T30P140 U62 ( .A1(n124), .A2(shift_reg[15]), .B1(n125), .B2(
        data[14]), .C1(n118), .C2(shift_reg[14]), .Z(n75) );
  AO222D0BWP12T30P140 U63 ( .A1(n128), .A2(shift_reg[16]), .B1(n127), .B2(
        data[15]), .C1(n118), .C2(shift_reg[15]), .Z(n76) );
  AO222D0BWP12T30P140 U64 ( .A1(n124), .A2(shift_reg[17]), .B1(n125), .B2(
        data[16]), .C1(n126), .C2(shift_reg[16]), .Z(n77) );
  AO222D0BWP12T30P140 U65 ( .A1(n128), .A2(shift_reg[18]), .B1(n127), .B2(
        data[17]), .C1(n118), .C2(shift_reg[17]), .Z(n78) );
  AO222D0BWP12T30P140 U66 ( .A1(n124), .A2(shift_reg[19]), .B1(n125), .B2(
        data[18]), .C1(n126), .C2(shift_reg[18]), .Z(n79) );
  AO222D0BWP12T30P140 U67 ( .A1(n128), .A2(shift_reg[20]), .B1(n127), .B2(
        data[19]), .C1(n118), .C2(shift_reg[19]), .Z(n80) );
  AO222D0BWP12T30P140 U68 ( .A1(n124), .A2(shift_reg[21]), .B1(n125), .B2(
        data[20]), .C1(n126), .C2(shift_reg[20]), .Z(n81) );
  AO222D0BWP12T30P140 U69 ( .A1(n128), .A2(shift_reg[22]), .B1(n127), .B2(
        data[21]), .C1(n118), .C2(shift_reg[21]), .Z(n82) );
  AO222D0BWP12T30P140 U70 ( .A1(n128), .A2(shift_reg[23]), .B1(n125), .B2(
        data[22]), .C1(n126), .C2(shift_reg[22]), .Z(n83) );
  AO222D0BWP12T30P140 U71 ( .A1(n128), .A2(shift_reg[24]), .B1(n125), .B2(
        data[23]), .C1(n118), .C2(shift_reg[23]), .Z(n84) );
  OA211D0BWP12T30P140 U72 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), 
        .B(n22), .C(n30), .Z(N24) );
  NR2D0BWP12T30P140 U73 ( .A1(n111), .A2(n110), .ZN(n109) );
  ND2D0BWP12T30P140 U74 ( .A1(clk429_counter[5]), .A2(n109), .ZN(n23) );
  NR2D0BWP12T30P140 U75 ( .A1(n21), .A2(n23), .ZN(n131) );
  AOI211D0BWP12T30P140 U76 ( .A1(n21), .A2(n23), .B(n131), .C(n130), .ZN(N29)
         );
  OA211D0BWP12T30P140 U77 ( .A1(clk429_counter[5]), .A2(n109), .B(n23), .C(n22), .Z(N28) );
  AO222D0BWP12T30P140 U78 ( .A1(n128), .A2(shift_reg[1]), .B1(n127), .B2(
        data[32]), .C1(n126), .C2(shift_reg[32]), .Z(n93) );
  AO222D0BWP12T30P140 U79 ( .A1(n124), .A2(shift_reg[30]), .B1(n125), .B2(
        data[29]), .C1(n126), .C2(shift_reg[29]), .Z(n90) );
  AO222D0BWP12T30P140 U80 ( .A1(n128), .A2(shift_reg[27]), .B1(n125), .B2(
        data[26]), .C1(n126), .C2(shift_reg[26]), .Z(n87) );
  OAI21D0BWP12T30P140 U81 ( .A1(n25), .A2(n139), .B(n24), .ZN(n119) );
  INVD0BWP12T30P140 U82 ( .I(n119), .ZN(n26) );
  NR2D0BWP12T30P140 U83 ( .A1(n26), .A2(n120), .ZN(n133) );
  AOI221D0BWP12T30P140 U84 ( .A1(shift_counter[0]), .A2(n133), .B1(
        shift_counter[1]), .B2(n133), .C(n26), .ZN(n28) );
  INVD0BWP12T30P140 U85 ( .I(shift_counter[2]), .ZN(n27) );
  ND3D0BWP12T30P140 U86 ( .A1(n119), .A2(enable), .A3(ready), .ZN(n135) );
  ND2D0BWP12T30P140 U87 ( .A1(n121), .A2(n133), .ZN(n123) );
  OAI211D0BWP12T30P140 U88 ( .A1(n28), .A2(n27), .B(n135), .C(n123), .ZN(n95)
         );
  AOI211D0BWP12T30P140 U89 ( .A1(n31), .A2(n30), .B(n29), .C(n130), .ZN(N25)
         );
  AOI22D0BWP12T30P140 U90 ( .A1(n37), .A2(gap_bits[5]), .B1(n101), .B2(
        gap_counter[5]), .ZN(n103) );
  AOI22D0BWP12T30P140 U91 ( .A1(n37), .A2(gap_bits[2]), .B1(n101), .B2(
        gap_counter[2]), .ZN(n50) );
  FA1D0BWP12T30P140 U92 ( .A(n37), .B(n36), .CI(n32), .CO(n49), .S(n14) );
  AN2D0BWP12T30P140 U93 ( .A1(n50), .A2(n49), .Z(n48) );
  AOI22D0BWP12T30P140 U94 ( .A1(n37), .A2(gap_bits[3]), .B1(n101), .B2(
        gap_counter[3]), .ZN(n41) );
  ND2D0BWP12T30P140 U95 ( .A1(n48), .A2(n41), .ZN(n45) );
  AO22D0BWP12T30P140 U96 ( .A1(n37), .A2(gap_bits[4]), .B1(n101), .B2(
        gap_counter[4]), .Z(n44) );
  NR2D0BWP12T30P140 U97 ( .A1(n45), .A2(n44), .ZN(n102) );
  CKXOR2D0BWP12T30P140 U98 ( .A1(n103), .A2(n102), .Z(n35) );
  OR3D0BWP12T30P140 U99 ( .A1(n108), .A2(n120), .A3(n33), .Z(n52) );
  ND2D0BWP12T30P140 U100 ( .A1(n108), .A2(gap_counter[5]), .ZN(n34) );
  OAI211D0BWP12T30P140 U101 ( .A1(n35), .A2(n53), .B(n52), .C(n34), .ZN(n58)
         );
  AOI21D0BWP12T30P140 U102 ( .A1(n37), .A2(gap_bits[0]), .B(n36), .ZN(n40) );
  INVD0BWP12T30P140 U103 ( .I(gap_counter[0]), .ZN(n38) );
  OAI22D0BWP12T30P140 U104 ( .A1(n40), .A2(n53), .B1(n39), .B2(n38), .ZN(n60)
         );
  OA21D0BWP12T30P140 U105 ( .A1(n48), .A2(n41), .B(n45), .Z(n43) );
  ND2D0BWP12T30P140 U106 ( .A1(n108), .A2(gap_counter[3]), .ZN(n42) );
  OAI211D0BWP12T30P140 U107 ( .A1(n43), .A2(n53), .B(n52), .C(n42), .ZN(n56)
         );
  AOI21D0BWP12T30P140 U108 ( .A1(n45), .A2(n44), .B(n102), .ZN(n47) );
  ND2D0BWP12T30P140 U109 ( .A1(n108), .A2(gap_counter[4]), .ZN(n46) );
  OAI211D0BWP12T30P140 U110 ( .A1(n47), .A2(n53), .B(n52), .C(n46), .ZN(n57)
         );
  IAO21D0BWP12T30P140 U111 ( .A1(n50), .A2(n49), .B(n48), .ZN(n100) );
  ND2D0BWP12T30P140 U112 ( .A1(n108), .A2(gap_counter[2]), .ZN(n51) );
  OAI211D0BWP12T30P140 U113 ( .A1(n100), .A2(n53), .B(n52), .C(n51), .ZN(n55)
         );
  ND2D0BWP12T30P140 U114 ( .A1(n101), .A2(gap_counter[6]), .ZN(n105) );
  ND2D0BWP12T30P140 U115 ( .A1(n103), .A2(n102), .ZN(n104) );
  CKXOR2D0BWP12T30P140 U116 ( .A1(n105), .A2(n104), .Z(n106) );
  AO22D0BWP12T30P140 U117 ( .A1(n108), .A2(gap_counter[6]), .B1(n107), .B2(
        n106), .Z(n59) );
  AOI211D0BWP12T30P140 U118 ( .A1(n111), .A2(n110), .B(n109), .C(n130), .ZN(
        N27) );
  INVD0BWP12T30P140 U119 ( .I(shift_counter[0]), .ZN(n113) );
  ND2D0BWP12T30P140 U120 ( .A1(n133), .A2(n113), .ZN(n112) );
  OAI211D0BWP12T30P140 U121 ( .A1(n119), .A2(n113), .B(n135), .C(n112), .ZN(
        n98) );
  INVD0BWP12T30P140 U122 ( .I(n133), .ZN(n117) );
  OAI21D0BWP12T30P140 U123 ( .A1(n113), .A2(n120), .B(n119), .ZN(n115) );
  INVD0BWP12T30P140 U124 ( .I(n135), .ZN(n114) );
  AOI21D0BWP12T30P140 U125 ( .A1(shift_counter[1]), .A2(n115), .B(n114), .ZN(
        n116) );
  OAI31D0BWP12T30P140 U126 ( .A1(shift_counter[0]), .A2(shift_counter[1]), 
        .A3(n117), .B(n116), .ZN(n94) );
  NR2D0BWP12T30P140 U127 ( .A1(clk429_counter[0]), .A2(n130), .ZN(N23) );
  AO222D0BWP12T30P140 U128 ( .A1(n124), .A2(shift_reg[32]), .B1(n125), .B2(
        data[31]), .C1(n126), .C2(shift_reg[31]), .Z(n92) );
  AO222D0BWP12T30P140 U129 ( .A1(n128), .A2(shift_reg[29]), .B1(n127), .B2(
        data[28]), .C1(n126), .C2(shift_reg[28]), .Z(n89) );
  AO222D0BWP12T30P140 U130 ( .A1(n128), .A2(shift_reg[26]), .B1(n125), .B2(
        data[25]), .C1(n118), .C2(shift_reg[25]), .Z(n86) );
  AO222D0BWP12T30P140 U131 ( .A1(n128), .A2(shift_reg[12]), .B1(n127), .B2(
        data[11]), .C1(n118), .C2(shift_reg[11]), .Z(n72) );
  AO222D0BWP12T30P140 U132 ( .A1(n128), .A2(shift_reg[11]), .B1(n125), .B2(
        data[10]), .C1(n118), .C2(shift_reg[10]), .Z(n71) );
  AO222D0BWP12T30P140 U133 ( .A1(n124), .A2(shift_reg[10]), .B1(n127), .B2(
        data[9]), .C1(n126), .C2(shift_reg[9]), .Z(n70) );
  AO222D0BWP12T30P140 U134 ( .A1(n124), .A2(shift_reg[9]), .B1(n127), .B2(
        data[1]), .C1(n118), .C2(shift_reg[8]), .Z(n69) );
  AO222D0BWP12T30P140 U135 ( .A1(n124), .A2(shift_reg[7]), .B1(n127), .B2(
        data[3]), .C1(n118), .C2(shift_reg[6]), .Z(n67) );
  AO222D0BWP12T30P140 U136 ( .A1(n124), .A2(shift_reg[28]), .B1(n125), .B2(
        data[27]), .C1(n118), .C2(shift_reg[27]), .Z(n88) );
  AO222D0BWP12T30P140 U137 ( .A1(n124), .A2(shift_reg[8]), .B1(n127), .B2(
        data[2]), .C1(n126), .C2(shift_reg[7]), .Z(n68) );
  AO222D0BWP12T30P140 U138 ( .A1(n124), .A2(shift_reg[3]), .B1(n127), .B2(
        data[7]), .C1(n118), .C2(shift_reg[2]), .Z(n63) );
  AO222D0BWP12T30P140 U139 ( .A1(n124), .A2(shift_reg[5]), .B1(n127), .B2(
        data[5]), .C1(n118), .C2(shift_reg[4]), .Z(n65) );
  OAI21D0BWP12T30P140 U140 ( .A1(n121), .A2(n120), .B(n119), .ZN(n132) );
  ND2D0BWP12T30P140 U141 ( .A1(shift_counter[3]), .A2(n132), .ZN(n122) );
  OAI211D0BWP12T30P140 U142 ( .A1(shift_counter[3]), .A2(n123), .B(n135), .C(
        n122), .ZN(n96) );
  AO222D0BWP12T30P140 U143 ( .A1(n124), .A2(shift_reg[4]), .B1(n127), .B2(
        data[6]), .C1(n126), .C2(shift_reg[3]), .Z(n64) );
  AO222D0BWP12T30P140 U144 ( .A1(n124), .A2(shift_reg[6]), .B1(n127), .B2(
        data[4]), .C1(n126), .C2(shift_reg[5]), .Z(n66) );
  AO222D0BWP12T30P140 U145 ( .A1(n128), .A2(shift_reg[25]), .B1(n125), .B2(
        data[24]), .C1(n126), .C2(shift_reg[24]), .Z(n85) );
  AO222D0BWP12T30P140 U146 ( .A1(n128), .A2(shift_reg[31]), .B1(n127), .B2(
        data[30]), .C1(n126), .C2(shift_reg[30]), .Z(n91) );
  CKBD0BWP12T30P140 U147 ( .I(clk429), .Z(n142) );
  INVD0BWP12T30P140 U148 ( .I(reset), .ZN(n144) );
  CKBD0BWP12T30P140 U149 ( .I(n144), .Z(n140) );
  CKBD0BWP12T30P140 U150 ( .I(n144), .Z(n141) );
  CKBD0BWP12T30P140 U151 ( .I(clk429), .Z(n143) );
  AN3D0BWP12T30P140 U152 ( .A1(n129), .A2(shift_reg[1]), .A3(n143), .Z(
        a429_out_a) );
  IAO21D0BWP12T30P140 U153 ( .A1(clk429_counter[7]), .A2(n131), .B(n130), .ZN(
        N30) );
  AOI32D0BWP12T30P140 U154 ( .A1(shift_counter[3]), .A2(shift_counter[4]), 
        .A3(n133), .B1(n132), .B2(shift_counter[4]), .ZN(n134) );
  ND2D0BWP12T30P140 U155 ( .A1(n135), .A2(n134), .ZN(n97) );
  MUX2ND0BWP12T30P140 U156 ( .I0(n138), .I1(n137), .S(n136), .ZN(n62) );
  INR3D1BWP12T30P140 U157 ( .A1(n143), .B1(shift_reg[1]), .B2(n139), .ZN(
        a429_out_b) );
endmodule


module a429_rx_iface ( clk2M, reset, speed, a429_in_a, a429_in_b, parcheck, 
        data, wr_en );
  input [1:0] speed;
  output [32:1] data;
  input clk2M, reset, a429_in_a, a429_in_b, parcheck;
  output wr_en;
  wire   aorb, aorb_prev, parity, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;
  wire   [1:0] state;
  wire   [32:2] shift_reg;
  wire   [4:0] shift_counter;
  wire   [8:0] sampling_counter;

  DFSNQD1BWP12T30P140 sampling_counter_reg_0_ ( .D(n178), .CP(n200), .SDN(n194), .Q(sampling_counter[0]) );
  DFSNQD1BWP12T30P140 state_reg_1_ ( .D(n176), .CP(n200), .SDN(n196), .Q(
        state[1]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_1_ ( .D(n168), .CP(n200), .SDN(n195), .Q(sampling_counter[1]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_4_ ( .D(n165), .CP(n200), .SDN(n194), .Q(sampling_counter[4]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_3_ ( .D(n166), .CP(n200), .SDN(n195), .Q(sampling_counter[3]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_5_ ( .D(n164), .CP(n200), .CDN(n97), .SDN(n96), .Q(sampling_counter[5]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_8_ ( .D(n177), .CP(n200), .CDN(n96), .SDN(n97), .Q(sampling_counter[8]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_6_ ( .D(n163), .CP(n200), .CDN(n96), .SDN(n97), .Q(sampling_counter[6]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_2_ ( .D(n167), .CP(n200), .CDN(n96), .SDN(n97), .Q(sampling_counter[2]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_7_ ( .D(n162), .CP(n200), .CDN(n96), .SDN(n97), .Q(sampling_counter[7]) );
  DFCNQD1BWP12T30P140 data_reg_5_ ( .D(n104), .CP(n200), .CDN(n95), .Q(data[5]) );
  DFCNQD1BWP12T30P140 data_reg_6_ ( .D(n102), .CP(n200), .CDN(n95), .Q(data[6]) );
  DFCNQD1BWP12T30P140 data_reg_7_ ( .D(n100), .CP(n200), .CDN(n95), .Q(data[7]) );
  DFCNQD1BWP12T30P140 data_reg_8_ ( .D(n98), .CP(n200), .CDN(n95), .Q(data[8])
         );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n103), .CP(n200), .CDN(n95), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n101), .CP(n200), .CDN(n196), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n99), .CP(n200), .CDN(n195), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 aorb_prev_reg ( .D(aorb), .CP(n199), .CDN(n194), .Q(
        aorb_prev) );
  DFCNQD1BWP12T30P140 wr_en_reg ( .D(n160), .CP(n197), .CDN(n196), .Q(wr_en)
         );
  DFCNQD1BWP12T30P140 data_reg_32_ ( .D(n161), .CP(n197), .CDN(n196), .Q(
        data[32]) );
  DFCNQD1BWP12T30P140 data_reg_31_ ( .D(n158), .CP(n197), .CDN(n196), .Q(
        data[31]) );
  DFCNQD1BWP12T30P140 data_reg_30_ ( .D(n156), .CP(n197), .CDN(n196), .Q(
        data[30]) );
  DFCNQD1BWP12T30P140 data_reg_29_ ( .D(n154), .CP(n198), .CDN(n196), .Q(
        data[29]) );
  DFCNQD1BWP12T30P140 data_reg_28_ ( .D(n152), .CP(n198), .CDN(n196), .Q(
        data[28]) );
  DFCNQD1BWP12T30P140 data_reg_27_ ( .D(n150), .CP(n198), .CDN(n196), .Q(
        data[27]) );
  DFCNQD1BWP12T30P140 data_reg_26_ ( .D(n148), .CP(n198), .CDN(n195), .Q(
        data[26]) );
  DFCNQD1BWP12T30P140 data_reg_25_ ( .D(n146), .CP(n198), .CDN(n195), .Q(
        data[25]) );
  DFCNQD1BWP12T30P140 data_reg_24_ ( .D(n144), .CP(n198), .CDN(n195), .Q(
        data[24]) );
  DFCNQD1BWP12T30P140 data_reg_23_ ( .D(n142), .CP(n199), .CDN(n195), .Q(
        data[23]) );
  DFCNQD1BWP12T30P140 data_reg_22_ ( .D(n140), .CP(n199), .CDN(n195), .Q(
        data[22]) );
  DFCNQD1BWP12T30P140 data_reg_21_ ( .D(n138), .CP(n199), .CDN(n195), .Q(
        data[21]) );
  DFCNQD1BWP12T30P140 data_reg_20_ ( .D(n136), .CP(n199), .CDN(n194), .Q(
        data[20]) );
  DFCNQD1BWP12T30P140 data_reg_19_ ( .D(n134), .CP(n199), .CDN(n194), .Q(
        data[19]) );
  DFCNQD1BWP12T30P140 data_reg_18_ ( .D(n132), .CP(n199), .CDN(n194), .Q(
        data[18]) );
  DFCNQD1BWP12T30P140 data_reg_17_ ( .D(n130), .CP(n199), .CDN(n194), .Q(
        data[17]) );
  DFCNQD1BWP12T30P140 data_reg_16_ ( .D(n128), .CP(clk2M), .CDN(n194), .Q(
        data[16]) );
  DFCNQD1BWP12T30P140 data_reg_15_ ( .D(n126), .CP(n197), .CDN(n194), .Q(
        data[15]) );
  DFCNQD1BWP12T30P140 data_reg_14_ ( .D(n124), .CP(n198), .CDN(n95), .Q(
        data[14]) );
  DFCNQD1BWP12T30P140 data_reg_13_ ( .D(n122), .CP(n199), .CDN(n196), .Q(
        data[13]) );
  DFCNQD1BWP12T30P140 data_reg_12_ ( .D(n120), .CP(clk2M), .CDN(n195), .Q(
        data[12]) );
  DFCNQD1BWP12T30P140 data_reg_11_ ( .D(n118), .CP(n197), .CDN(n196), .Q(
        data[11]) );
  DFCNQD1BWP12T30P140 data_reg_10_ ( .D(n116), .CP(n199), .CDN(n194), .Q(
        data[10]) );
  DFCNQD1BWP12T30P140 data_reg_9_ ( .D(n114), .CP(n197), .CDN(n196), .Q(
        data[9]) );
  DFCNQD1BWP12T30P140 data_reg_1_ ( .D(n112), .CP(clk2M), .CDN(n194), .Q(
        data[1]) );
  DFCNQD1BWP12T30P140 data_reg_2_ ( .D(n110), .CP(n198), .CDN(n95), .Q(data[2]) );
  DFCNQD1BWP12T30P140 data_reg_3_ ( .D(n108), .CP(n199), .CDN(n95), .Q(data[3]) );
  DFCNQD1BWP12T30P140 data_reg_4_ ( .D(n106), .CP(n197), .CDN(n95), .Q(data[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n171), .CP(n197), .CDN(n196), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n159), .CP(n197), .CDN(n196), .Q(
        shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n157), .CP(n197), .CDN(n196), .Q(
        shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n155), .CP(n198), .CDN(n196), .Q(
        shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n153), .CP(n198), .CDN(n196), .Q(
        shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n151), .CP(n198), .CDN(n196), .Q(
        shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n149), .CP(n198), .CDN(n195), .Q(
        shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n147), .CP(n198), .CDN(n195), .Q(
        shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n145), .CP(n198), .CDN(n195), .Q(
        shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n143), .CP(n198), .CDN(n195), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n141), .CP(n199), .CDN(n195), .Q(
        shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n139), .CP(n199), .CDN(n195), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n137), .CP(n199), .CDN(n195), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n135), .CP(n199), .CDN(n194), .Q(
        shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n133), .CP(n199), .CDN(n194), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n131), .CP(n199), .CDN(n194), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n129), .CP(n198), .CDN(n194), .Q(
        shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n127), .CP(n199), .CDN(n194), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n125), .CP(clk2M), .CDN(n194), 
        .Q(shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n123), .CP(n197), .CDN(n95), .Q(
        shift_reg[14]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n121), .CP(n198), .CDN(n95), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n119), .CP(clk2M), .CDN(n95), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n117), .CP(n197), .CDN(n195), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n115), .CP(n198), .CDN(n194), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n113), .CP(n199), .CDN(n195), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n111), .CP(n197), .CDN(n194), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n109), .CP(n198), .CDN(n95), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n107), .CP(n198), .CDN(n95), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n105), .CP(n199), .CDN(n95), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n169), .CP(n197), .CDN(n95), 
        .Q(shift_counter[0]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n173), .CP(n197), .CDN(n196), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n170), .CP(n197), .CDN(n195), 
        .Q(shift_counter[1]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n172), .CP(n197), .CDN(n194), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n175), .CP(n197), .CDN(n95), .Q(
        state[0]) );
  DFQD1BWP12T30P140 parity_reg ( .D(n174), .CP(n197), .Q(parity) );
  NR2D0BWP12T30P140 U3 ( .A1(a429_in_b), .A2(a429_in_a), .ZN(n65) );
  INVD0BWP12T30P140 U4 ( .I(n65), .ZN(aorb) );
  INVD0BWP12T30P140 U5 ( .I(sampling_counter[8]), .ZN(n21) );
  NR2D0BWP12T30P140 U6 ( .A1(sampling_counter[1]), .A2(sampling_counter[0]), 
        .ZN(n40) );
  INVD0BWP12T30P140 U7 ( .I(n40), .ZN(n12) );
  NR2D0BWP12T30P140 U8 ( .A1(sampling_counter[2]), .A2(n12), .ZN(n11) );
  INVD0BWP12T30P140 U9 ( .I(n11), .ZN(n30) );
  NR2D0BWP12T30P140 U10 ( .A1(sampling_counter[3]), .A2(n30), .ZN(n29) );
  INVD0BWP12T30P140 U11 ( .I(n29), .ZN(n36) );
  NR2D0BWP12T30P140 U12 ( .A1(sampling_counter[4]), .A2(n36), .ZN(n35) );
  INVD0BWP12T30P140 U13 ( .I(n35), .ZN(n24) );
  NR2D0BWP12T30P140 U14 ( .A1(sampling_counter[5]), .A2(n24), .ZN(n23) );
  INVD0BWP12T30P140 U15 ( .I(sampling_counter[6]), .ZN(n17) );
  ND2D0BWP12T30P140 U16 ( .A1(n23), .A2(n17), .ZN(n16) );
  NR2D0BWP12T30P140 U17 ( .A1(sampling_counter[7]), .A2(n16), .ZN(n22) );
  ND2D0BWP12T30P140 U18 ( .A1(n21), .A2(n22), .ZN(n62) );
  INVD0BWP12T30P140 U19 ( .I(n62), .ZN(n45) );
  INVD0BWP12T30P140 U20 ( .I(state[0]), .ZN(n46) );
  NR2D0BWP12T30P140 U21 ( .A1(state[1]), .A2(n46), .ZN(n66) );
  ND2D0BWP12T30P140 U22 ( .A1(n45), .A2(n66), .ZN(n18) );
  INVD0BWP12T30P140 U23 ( .I(shift_counter[0]), .ZN(n82) );
  INVD0BWP12T30P140 U24 ( .I(shift_counter[2]), .ZN(n54) );
  IND3D1BWP12T30P140 U25 ( .A1(shift_counter[1]), .B1(n82), .B2(n54), .ZN(n72)
         );
  NR3D0BWP12T30P140 U26 ( .A1(shift_counter[4]), .A2(shift_counter[3]), .A3(
        n72), .ZN(n4) );
  INVD0BWP12T30P140 U27 ( .I(a429_in_a), .ZN(n68) );
  INVD0BWP12T30P140 U28 ( .I(a429_in_b), .ZN(n3) );
  OAI21D0BWP12T30P140 U29 ( .A1(n68), .A2(n3), .B(aorb), .ZN(n5) );
  NR2D0BWP12T30P140 U30 ( .A1(n4), .A2(n5), .ZN(n63) );
  INVD0BWP12T30P140 U31 ( .I(n63), .ZN(n53) );
  NR2D0BWP12T30P140 U32 ( .A1(n18), .A2(n53), .ZN(n192) );
  CKBD0BWP12T30P140 U33 ( .I(n192), .Z(n188) );
  INVD0BWP12T30P140 U34 ( .I(shift_reg[5]), .ZN(n83) );
  INVD0BWP12T30P140 U35 ( .I(shift_reg[4]), .ZN(n39) );
  INVD0BWP12T30P140 U36 ( .I(n188), .ZN(n189) );
  AOI22D0BWP12T30P140 U37 ( .A1(n188), .A2(n83), .B1(n39), .B2(n189), .ZN(n103) );
  INVD0BWP12T30P140 U38 ( .I(shift_reg[3]), .ZN(n38) );
  INVD0BWP12T30P140 U39 ( .I(shift_reg[2]), .ZN(n43) );
  AOI22D0BWP12T30P140 U40 ( .A1(n192), .A2(n38), .B1(n43), .B2(n189), .ZN(n99)
         );
  INR3D1BWP12T30P140 U41 ( .A1(n4), .B1(n18), .B2(n5), .ZN(n49) );
  CKBD0BWP12T30P140 U42 ( .I(n49), .Z(n51) );
  CKBD0BWP12T30P140 U43 ( .I(n49), .Z(n50) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n51), .A2(n39), .B1(data[6]), .B2(n50), .ZN(
        n102) );
  INVD0BWP12T30P140 U45 ( .I(shift_reg[29]), .ZN(n58) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n50), .A2(n58), .B1(data[28]), .B2(n49), .ZN(
        n152) );
  INVD0BWP12T30P140 U47 ( .I(shift_reg[28]), .ZN(n59) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n50), .A2(n59), .B1(data[27]), .B2(n49), .ZN(
        n150) );
  INVD0BWP12T30P140 U49 ( .I(shift_reg[31]), .ZN(n56) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n50), .A2(n56), .B1(data[30]), .B2(n49), .ZN(
        n156) );
  CKBD0BWP12T30P140 U51 ( .I(n49), .Z(n52) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n52), .A2(n68), .B1(data[32]), .B2(n52), .ZN(
        n161) );
  NR2D0BWP12T30P140 U53 ( .A1(n45), .A2(n65), .ZN(n10) );
  OAI21D0BWP12T30P140 U54 ( .A1(n10), .A2(state[0]), .B(state[1]), .ZN(n41) );
  INVD0BWP12T30P140 U55 ( .I(state[1]), .ZN(n61) );
  NR3D0BWP12T30P140 U56 ( .A1(n45), .A2(n61), .A3(aorb), .ZN(n34) );
  AOI22D0BWP12T30P140 U57 ( .A1(n34), .A2(n46), .B1(n66), .B2(n62), .ZN(n28)
         );
  INVD0BWP12T30P140 U58 ( .I(n28), .ZN(n1) );
  AOI32D0BWP12T30P140 U59 ( .A1(sampling_counter[7]), .A2(n1), .A3(n16), .B1(
        n22), .B2(n1), .ZN(n2) );
  AOI32D0BWP12T30P140 U60 ( .A1(n41), .A2(n2), .A3(n18), .B1(speed[0]), .B2(n2), .ZN(n162) );
  INVD0BWP12T30P140 U61 ( .I(parity), .ZN(n67) );
  AOI22D0BWP12T30P140 U62 ( .A1(a429_in_b), .A2(parity), .B1(n67), .B2(n3), 
        .ZN(n8) );
  IND2D1BWP12T30P140 U63 ( .A1(n5), .B1(n4), .ZN(n7) );
  ND2D0BWP12T30P140 U64 ( .A1(n45), .A2(state[0]), .ZN(n6) );
  AOI211D0BWP12T30P140 U65 ( .A1(parcheck), .A2(n8), .B(n7), .C(n6), .ZN(n9)
         );
  OA21D0BWP12T30P140 U66 ( .A1(wr_en), .A2(n9), .B(n61), .Z(n160) );
  INVD0BWP12T30P140 U67 ( .I(shift_reg[26]), .ZN(n94) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n50), .A2(n94), .B1(data[25]), .B2(n49), .ZN(
        n146) );
  AOI222D0BWP12T30P140 U69 ( .A1(state[1]), .A2(state[0]), .B1(n46), .B2(n10), 
        .C1(n61), .C2(n45), .ZN(n15) );
  AOI221D0BWP12T30P140 U70 ( .A1(state[0]), .A2(state[1]), .B1(aorb), .B2(
        state[1]), .C(n45), .ZN(n13) );
  AOI32D0BWP12T30P140 U71 ( .A1(sampling_counter[2]), .A2(n13), .A3(n12), .B1(
        n11), .B2(n13), .ZN(n14) );
  ND2D0BWP12T30P140 U72 ( .A1(n61), .A2(n46), .ZN(n80) );
  OAI211D0BWP12T30P140 U73 ( .A1(speed[0]), .A2(n15), .B(n14), .C(n80), .ZN(
        n167) );
  INVD0BWP12T30P140 U74 ( .I(shift_reg[25]), .ZN(n187) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n50), .A2(n187), .B1(data[24]), .B2(n49), 
        .ZN(n144) );
  INVD0BWP12T30P140 U76 ( .I(shift_reg[32]), .ZN(n55) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n50), .A2(n55), .B1(data[31]), .B2(n49), .ZN(
        n158) );
  INVD0BWP12T30P140 U78 ( .I(shift_reg[24]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n50), .A2(n186), .B1(data[23]), .B2(n51), 
        .ZN(n142) );
  OA21D0BWP12T30P140 U80 ( .A1(n23), .A2(n17), .B(n16), .Z(n19) );
  INVD0BWP12T30P140 U81 ( .I(speed[0]), .ZN(n193) );
  OAI21D0BWP12T30P140 U82 ( .A1(n63), .A2(n18), .B(n41), .ZN(n25) );
  ND2D0BWP12T30P140 U83 ( .A1(n193), .A2(n25), .ZN(n20) );
  OAI21D0BWP12T30P140 U84 ( .A1(n28), .A2(n19), .B(n20), .ZN(n163) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n52), .A2(n38), .B1(data[7]), .B2(n50), .ZN(
        n100) );
  INVD0BWP12T30P140 U86 ( .I(shift_reg[23]), .ZN(n183) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n50), .A2(n183), .B1(data[22]), .B2(n50), 
        .ZN(n140) );
  OAI31D0BWP12T30P140 U88 ( .A1(n22), .A2(n28), .A3(n21), .B(n20), .ZN(n177)
         );
  INVD0BWP12T30P140 U89 ( .I(shift_reg[22]), .ZN(n182) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n50), .A2(n182), .B1(data[21]), .B2(n49), 
        .ZN(n138) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n52), .A2(n83), .B1(data[5]), .B2(n49), .ZN(
        n104) );
  INVD0BWP12T30P140 U92 ( .I(shift_reg[21]), .ZN(n181) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n50), .A2(n181), .B1(data[20]), .B2(n52), 
        .ZN(n136) );
  AOI21D0BWP12T30P140 U94 ( .A1(sampling_counter[5]), .A2(n24), .B(n23), .ZN(
        n27) );
  INVD0BWP12T30P140 U95 ( .I(n80), .ZN(n76) );
  AOI22D0BWP12T30P140 U96 ( .A1(speed[0]), .A2(n25), .B1(n76), .B2(n193), .ZN(
        n26) );
  OAI21D0BWP12T30P140 U97 ( .A1(n28), .A2(n27), .B(n26), .ZN(n164) );
  INVD0BWP12T30P140 U98 ( .I(shift_reg[27]), .ZN(n60) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n50), .A2(n60), .B1(data[26]), .B2(n49), .ZN(
        n148) );
  INVD0BWP12T30P140 U100 ( .I(shift_reg[20]), .ZN(n191) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n50), .A2(n191), .B1(data[19]), .B2(n51), 
        .ZN(n134) );
  AOI21D0BWP12T30P140 U102 ( .A1(state[0]), .A2(n62), .B(n34), .ZN(n33) );
  AOI21D0BWP12T30P140 U103 ( .A1(sampling_counter[3]), .A2(n30), .B(n29), .ZN(
        n32) );
  OAI211D0BWP12T30P140 U104 ( .A1(n193), .A2(n53), .B(n45), .C(state[0]), .ZN(
        n31) );
  OAI211D0BWP12T30P140 U105 ( .A1(n33), .A2(n32), .B(n41), .C(n31), .ZN(n166)
         );
  INVD0BWP12T30P140 U106 ( .I(shift_reg[19]), .ZN(n190) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n51), .A2(n190), .B1(data[18]), .B2(n49), 
        .ZN(n132) );
  INVD0BWP12T30P140 U108 ( .I(shift_reg[18]), .ZN(n184) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n51), .A2(n184), .B1(data[17]), .B2(n51), 
        .ZN(n130) );
  NR2D0BWP12T30P140 U110 ( .A1(state[0]), .A2(n34), .ZN(n48) );
  AOI21D0BWP12T30P140 U111 ( .A1(sampling_counter[4]), .A2(n36), .B(n35), .ZN(
        n37) );
  OAI21D0BWP12T30P140 U112 ( .A1(n48), .A2(n37), .B(n41), .ZN(n165) );
  AOI22D0BWP12T30P140 U113 ( .A1(n192), .A2(n39), .B1(n38), .B2(n189), .ZN(
        n101) );
  INVD0BWP12T30P140 U114 ( .I(shift_reg[17]), .ZN(n180) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n51), .A2(n180), .B1(data[16]), .B2(n52), 
        .ZN(n128) );
  AOI21D0BWP12T30P140 U116 ( .A1(sampling_counter[0]), .A2(sampling_counter[1]), .B(n40), .ZN(n42) );
  OA21D0BWP12T30P140 U117 ( .A1(n80), .A2(speed[0]), .B(n41), .Z(n47) );
  OAI21D0BWP12T30P140 U118 ( .A1(n48), .A2(n42), .B(n47), .ZN(n168) );
  INVD0BWP12T30P140 U119 ( .I(shift_reg[16]), .ZN(n179) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n51), .A2(n179), .B1(data[15]), .B2(n52), 
        .ZN(n126) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n51), .A2(n43), .B1(data[8]), .B2(n49), .ZN(
        n98) );
  AOI21D0BWP12T30P140 U122 ( .A1(n53), .A2(n45), .B(state[1]), .ZN(n44) );
  AOI21D0BWP12T30P140 U123 ( .A1(n46), .A2(n45), .B(n44), .ZN(n176) );
  INVD0BWP12T30P140 U124 ( .I(shift_reg[15]), .ZN(n91) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n51), .A2(n91), .B1(data[14]), .B2(n52), 
        .ZN(n124) );
  INVD0BWP12T30P140 U126 ( .I(shift_reg[30]), .ZN(n57) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n50), .A2(n57), .B1(data[29]), .B2(n49), 
        .ZN(n154) );
  INVD0BWP12T30P140 U128 ( .I(shift_reg[14]), .ZN(n90) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n51), .A2(n90), .B1(data[13]), .B2(n52), 
        .ZN(n122) );
  OAI21D0BWP12T30P140 U130 ( .A1(sampling_counter[0]), .A2(n48), .B(n47), .ZN(
        n178) );
  INVD0BWP12T30P140 U131 ( .I(shift_reg[13]), .ZN(n89) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n51), .A2(n89), .B1(data[12]), .B2(n52), 
        .ZN(n120) );
  INVD0BWP12T30P140 U133 ( .I(shift_reg[12]), .ZN(n88) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n51), .A2(n88), .B1(data[11]), .B2(n52), 
        .ZN(n118) );
  INVD0BWP12T30P140 U135 ( .I(shift_reg[11]), .ZN(n87) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n51), .A2(n87), .B1(data[10]), .B2(n52), 
        .ZN(n116) );
  INVD0BWP12T30P140 U137 ( .I(shift_reg[10]), .ZN(n93) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n51), .A2(n93), .B1(data[9]), .B2(n52), .ZN(
        n114) );
  INVD0BWP12T30P140 U139 ( .I(shift_reg[9]), .ZN(n92) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n51), .A2(n92), .B1(data[1]), .B2(n52), .ZN(
        n112) );
  INVD0BWP12T30P140 U141 ( .I(shift_reg[8]), .ZN(n86) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n52), .A2(n86), .B1(data[2]), .B2(n49), .ZN(
        n110) );
  INVD0BWP12T30P140 U143 ( .I(shift_reg[7]), .ZN(n85) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n51), .A2(n85), .B1(data[3]), .B2(n50), .ZN(
        n108) );
  INVD0BWP12T30P140 U145 ( .I(shift_reg[6]), .ZN(n84) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n52), .A2(n84), .B1(data[4]), .B2(n52), .ZN(
        n106) );
  OAI31D0BWP12T30P140 U147 ( .A1(n62), .A2(n53), .A3(state[1]), .B(n80), .ZN(
        n81) );
  INVD0BWP12T30P140 U148 ( .I(n81), .ZN(n73) );
  NR3D0BWP12T30P140 U149 ( .A1(shift_counter[0]), .A2(shift_counter[1]), .A3(
        n73), .ZN(n75) );
  IND2D1BWP12T30P140 U150 ( .A1(n72), .B1(n81), .ZN(n74) );
  OAI211D0BWP12T30P140 U151 ( .A1(n75), .A2(n54), .B(n74), .C(n80), .ZN(n171)
         );
  INVD0BWP12T30P140 U152 ( .I(n188), .ZN(n185) );
  AOI22D0BWP12T30P140 U153 ( .A1(n192), .A2(n68), .B1(n55), .B2(n185), .ZN(
        n159) );
  AOI22D0BWP12T30P140 U154 ( .A1(n188), .A2(n55), .B1(n56), .B2(n185), .ZN(
        n157) );
  AOI22D0BWP12T30P140 U155 ( .A1(n192), .A2(n56), .B1(n57), .B2(n185), .ZN(
        n155) );
  AOI22D0BWP12T30P140 U156 ( .A1(n192), .A2(n57), .B1(n58), .B2(n185), .ZN(
        n153) );
  AOI22D0BWP12T30P140 U157 ( .A1(n188), .A2(n58), .B1(n59), .B2(n185), .ZN(
        n151) );
  AOI22D0BWP12T30P140 U158 ( .A1(n192), .A2(n59), .B1(n60), .B2(n185), .ZN(
        n149) );
  AOI22D0BWP12T30P140 U159 ( .A1(n188), .A2(n60), .B1(n94), .B2(n185), .ZN(
        n147) );
  OAI211D0BWP12T30P140 U160 ( .A1(n63), .A2(n62), .B(state[0]), .C(n61), .ZN(
        n64) );
  OAI31D0BWP12T30P140 U161 ( .A1(n65), .A2(aorb_prev), .A3(n80), .B(n64), .ZN(
        n175) );
  OAI21D0BWP12T30P140 U162 ( .A1(n68), .A2(n67), .B(n66), .ZN(n71) );
  NR2D0BWP12T30P140 U163 ( .A1(reset), .A2(n73), .ZN(n70) );
  AOI21D0BWP12T30P140 U164 ( .A1(a429_in_a), .A2(n70), .B(parity), .ZN(n69) );
  AOI21D0BWP12T30P140 U165 ( .A1(n71), .A2(n70), .B(n69), .ZN(n174) );
  NR3D0BWP12T30P140 U166 ( .A1(shift_counter[3]), .A2(n73), .A3(n72), .ZN(n78)
         );
  AO211D0BWP12T30P140 U167 ( .A1(shift_counter[3]), .A2(n74), .B(n76), .C(n78), 
        .Z(n172) );
  ND2D0BWP12T30P140 U168 ( .A1(n82), .A2(n81), .ZN(n79) );
  AO211D0BWP12T30P140 U169 ( .A1(shift_counter[1]), .A2(n79), .B(n76), .C(n75), 
        .Z(n170) );
  INVD0BWP12T30P140 U170 ( .I(shift_counter[4]), .ZN(n77) );
  OAI21D0BWP12T30P140 U171 ( .A1(n78), .A2(n77), .B(n80), .ZN(n173) );
  OAI211D0BWP12T30P140 U172 ( .A1(n82), .A2(n81), .B(n80), .C(n79), .ZN(n169)
         );
  AOI22D0BWP12T30P140 U173 ( .A1(n192), .A2(n84), .B1(n83), .B2(n189), .ZN(
        n105) );
  AOI22D0BWP12T30P140 U174 ( .A1(n188), .A2(n85), .B1(n84), .B2(n189), .ZN(
        n107) );
  AOI22D0BWP12T30P140 U175 ( .A1(n192), .A2(n86), .B1(n85), .B2(n189), .ZN(
        n109) );
  AOI22D0BWP12T30P140 U176 ( .A1(n188), .A2(n92), .B1(n86), .B2(n189), .ZN(
        n111) );
  AOI22D0BWP12T30P140 U177 ( .A1(n188), .A2(n87), .B1(n93), .B2(n189), .ZN(
        n115) );
  AOI22D0BWP12T30P140 U178 ( .A1(n192), .A2(n88), .B1(n87), .B2(n189), .ZN(
        n117) );
  AOI22D0BWP12T30P140 U179 ( .A1(n188), .A2(n89), .B1(n88), .B2(n189), .ZN(
        n119) );
  AOI22D0BWP12T30P140 U180 ( .A1(n192), .A2(n90), .B1(n89), .B2(n189), .ZN(
        n121) );
  AOI22D0BWP12T30P140 U181 ( .A1(n188), .A2(n91), .B1(n90), .B2(n189), .ZN(
        n123) );
  AOI22D0BWP12T30P140 U182 ( .A1(n192), .A2(n179), .B1(n91), .B2(n189), .ZN(
        n125) );
  AOI22D0BWP12T30P140 U183 ( .A1(n192), .A2(n93), .B1(n92), .B2(n189), .ZN(
        n113) );
  AOI22D0BWP12T30P140 U184 ( .A1(n188), .A2(n181), .B1(n191), .B2(n185), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U185 ( .A1(n192), .A2(n94), .B1(n187), .B2(n185), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U186 ( .A1(n188), .A2(n180), .B1(n179), .B2(n185), .ZN(
        n127) );
  AOI22D0BWP12T30P140 U187 ( .A1(n192), .A2(n184), .B1(n180), .B2(n189), .ZN(
        n129) );
  AOI22D0BWP12T30P140 U188 ( .A1(n192), .A2(n182), .B1(n181), .B2(n185), .ZN(
        n137) );
  AOI22D0BWP12T30P140 U189 ( .A1(n188), .A2(n183), .B1(n182), .B2(n185), .ZN(
        n139) );
  AOI22D0BWP12T30P140 U190 ( .A1(n192), .A2(n186), .B1(n183), .B2(n185), .ZN(
        n141) );
  AOI22D0BWP12T30P140 U191 ( .A1(n188), .A2(n190), .B1(n184), .B2(n185), .ZN(
        n131) );
  AOI22D0BWP12T30P140 U192 ( .A1(n188), .A2(n187), .B1(n186), .B2(n185), .ZN(
        n143) );
  AOI22D0BWP12T30P140 U193 ( .A1(n192), .A2(n191), .B1(n190), .B2(n189), .ZN(
        n133) );
  CKBD0BWP12T30P140 U194 ( .I(clk2M), .Z(n200) );
  CKBD0BWP12T30P140 U195 ( .I(clk2M), .Z(n199) );
  CKBD0BWP12T30P140 U196 ( .I(clk2M), .Z(n198) );
  CKBD0BWP12T30P140 U197 ( .I(clk2M), .Z(n197) );
  INVD0BWP12T30P140 U198 ( .I(reset), .ZN(n95) );
  CKBD0BWP12T30P140 U199 ( .I(n95), .Z(n194) );
  CKBD0BWP12T30P140 U200 ( .I(n95), .Z(n195) );
  CKBD0BWP12T30P140 U201 ( .I(n95), .Z(n196) );
  ND2D0BWP12T30P140 U202 ( .A1(reset), .A2(n193), .ZN(n97) );
  ND2D0BWP12T30P140 U203 ( .A1(speed[0]), .A2(reset), .ZN(n96) );
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

