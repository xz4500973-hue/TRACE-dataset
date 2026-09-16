/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:27:26 2026
/////////////////////////////////////////////////////////////


module a429_tx_iface ( clk2M, reset, enable, speed, gap_bits, data, tx_req, 
        a429_out_a, a429_out_b, ready );
  input [1:0] speed;
  input [6:0] gap_bits;
  input [32:1] data;
  input clk2M, reset, enable, tx_req;
  output a429_out_a, a429_out_b, ready;
  wire   clk429, N9, N20, N21, N22, N23, N24, N25, N26, N27, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147;
  wire   [7:0] clk429_counter;
  wire   [32:1] shift_reg;
  wire   [2:1] state;
  wire   [4:0] shift_counter;
  wire   [6:0] gap_counter;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(n63), .CP(n147), .SDN(n145), .Q(ready)
         );
  DFCNQD1BWP12T30P140 clk429_reg ( .D(N9), .CP(clk2M), .CDN(n53), .Q(clk429)
         );
  DFCNQD1BWP12T30P140 clk429_counter_reg_0_ ( .D(N20), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[0]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_1_ ( .D(N21), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[1]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_6_ ( .D(N26), .CP(clk2M), .CDN(n145), 
        .Q(clk429_counter[6]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n99), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_5_ ( .D(N25), .CP(clk2M), .CDN(n145), 
        .Q(clk429_counter[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n64), .CP(clk429), .CDN(n144), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n94), .CP(clk429), .CDN(n144), 
        .Q(shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n93), .CP(clk429), .CDN(n144), 
        .Q(shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n92), .CP(clk429), .CDN(n145), 
        .Q(shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n91), .CP(clk429), .CDN(n144), 
        .Q(shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n88), .CP(clk429), .CDN(n145), 
        .Q(shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n85), .CP(clk429), .CDN(n53), .Q(
        shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n82), .CP(clk429), .CDN(n145), 
        .Q(shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n79), .CP(clk429), .CDN(n53), .Q(
        shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n97), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_2_ ( .D(N22), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[2]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_7_ ( .D(N27), .CP(clk2M), .CDN(n53), 
        .Q(clk429_counter[7]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_4_ ( .D(N24), .CP(clk2M), .CDN(n145), 
        .Q(clk429_counter[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n98), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n62), .CP(n147), .CDN(n145), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n65), .CP(n147), .CDN(n145), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n90), .CP(n146), .CDN(n145), .Q(
        shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n89), .CP(n147), .CDN(n144), .Q(
        shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n87), .CP(n146), .CDN(n53), .Q(
        shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n86), .CP(n147), .CDN(n53), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n84), .CP(n146), .CDN(n53), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n83), .CP(n147), .CDN(n144), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n81), .CP(n146), .CDN(n144), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n80), .CP(n147), .CDN(n145), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n78), .CP(n146), .CDN(n145), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n77), .CP(n146), .CDN(n53), .Q(
        shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n76), .CP(n146), .CDN(n145), .Q(
        shift_reg[14]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n75), .CP(n146), .CDN(n53), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n74), .CP(n146), .CDN(n145), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n73), .CP(n146), .CDN(n53), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n72), .CP(n146), .CDN(n145), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n71), .CP(n146), .CDN(n53), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n70), .CP(n146), .CDN(n144), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n69), .CP(n146), .CDN(n144), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n68), .CP(n146), .CDN(n145), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n67), .CP(n147), .CDN(n53), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n66), .CP(n147), .CDN(n53), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_1_ ( .D(n95), .CP(clk429), .CDN(n144), .Q(
        shift_reg[1]) );
  DFCNQD1BWP12T30P140 clk429_counter_reg_3_ ( .D(N23), .CP(clk2M), .CDN(n144), 
        .Q(clk429_counter[3]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n61), .CP(clk429), .CDN(n53), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n96), .CP(clk429), .CDN(n144), 
        .Q(shift_counter[1]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_5_ ( .D(n58), .CP(n147), .CDN(n145), .Q(
        gap_counter[5]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_2_ ( .D(n55), .CP(n147), .CDN(n53), .Q(
        gap_counter[2]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_1_ ( .D(n54), .CP(n147), .CDN(n145), .Q(
        gap_counter[1]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_0_ ( .D(n60), .CP(n147), .CDN(n53), .Q(
        gap_counter[0]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_3_ ( .D(n56), .CP(n147), .CDN(n145), .Q(
        gap_counter[3]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_6_ ( .D(n59), .CP(n147), .CDN(n53), .Q(
        gap_counter[6]) );
  DFCNQD1BWP12T30P140 gap_counter_reg_4_ ( .D(n57), .CP(n147), .CDN(n53), .Q(
        gap_counter[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n100), .CP(n146), .CDN(n144), 
        .Q(shift_counter[0]) );
  INVD0BWP12T30P140 U3 ( .I(clk429_counter[2]), .ZN(n5) );
  ND2D0BWP12T30P140 U4 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), .ZN(
        n119) );
  NR2D0BWP12T30P140 U5 ( .A1(n5), .A2(n119), .ZN(n114) );
  AOI221D0BWP12T30P140 U6 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .B1(clk429_counter[3]), .B2(clk429_counter[4]), .C(clk429_counter[7]), 
        .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(speed[0]), .ZN(n129) );
  AOI32D0BWP12T30P140 U8 ( .A1(clk429_counter[2]), .A2(clk429_counter[4]), 
        .A3(clk429_counter[3]), .B1(speed[0]), .B2(clk429_counter[4]), .ZN(n1)
         );
  INVD0BWP12T30P140 U9 ( .I(clk429_counter[6]), .ZN(n118) );
  INVD0BWP12T30P140 U10 ( .I(clk429_counter[5]), .ZN(n128) );
  OAI211D0BWP12T30P140 U11 ( .A1(n119), .A2(n1), .B(n118), .C(n128), .ZN(n2)
         );
  OAI21D0BWP12T30P140 U12 ( .A1(speed[0]), .A2(clk429_counter[7]), .B(n2), 
        .ZN(n3) );
  OAI21D0BWP12T30P140 U13 ( .A1(n4), .A2(n129), .B(n3), .ZN(n122) );
  AOI211D0BWP12T30P140 U14 ( .A1(n5), .A2(n119), .B(n114), .C(n122), .ZN(N22)
         );
  NR3D0BWP12T30P140 U15 ( .A1(shift_counter[0]), .A2(shift_counter[2]), .A3(
        shift_counter[1]), .ZN(n7) );
  INVD0BWP12T30P140 U16 ( .I(n7), .ZN(n8) );
  NR2D0BWP12T30P140 U17 ( .A1(shift_counter[3]), .A2(n8), .ZN(n137) );
  IND2D1BWP12T30P140 U18 ( .A1(shift_counter[4]), .B1(n137), .ZN(n18) );
  INVD0BWP12T30P140 U19 ( .I(n18), .ZN(n6) );
  INVD0BWP12T30P140 U20 ( .I(enable), .ZN(n20) );
  INVD0BWP12T30P140 U21 ( .I(ready), .ZN(n125) );
  ND2D0BWP12T30P140 U22 ( .A1(state[1]), .A2(n125), .ZN(n19) );
  OR2D0BWP12T30P140 U23 ( .A1(n20), .A2(n19), .Z(n141) );
  NR2D0BWP12T30P140 U24 ( .A1(n6), .A2(n141), .ZN(n104) );
  ND2D0BWP12T30P140 U25 ( .A1(n7), .A2(n104), .ZN(n10) );
  AOI21D0BWP12T30P140 U26 ( .A1(ready), .A2(tx_req), .B(n20), .ZN(n107) );
  ND2D0BWP12T30P140 U27 ( .A1(n107), .A2(n19), .ZN(n136) );
  INVD0BWP12T30P140 U28 ( .I(n136), .ZN(n103) );
  AOI32D0BWP12T30P140 U29 ( .A1(n104), .A2(shift_counter[3]), .A3(n8), .B1(
        n103), .B2(shift_counter[3]), .ZN(n9) );
  ND2D0BWP12T30P140 U30 ( .A1(ready), .A2(enable), .ZN(n112) );
  INR2D1BWP12T30P140 U31 ( .A1(tx_req), .B1(n112), .ZN(n135) );
  INVD0BWP12T30P140 U32 ( .I(n135), .ZN(n138) );
  OAI211D0BWP12T30P140 U33 ( .A1(shift_counter[3]), .A2(n10), .B(n9), .C(n138), 
        .ZN(n98) );
  AOI221D0BWP12T30P140 U34 ( .A1(shift_counter[0]), .A2(n104), .B1(
        shift_counter[1]), .B2(n104), .C(n103), .ZN(n12) );
  INVD0BWP12T30P140 U35 ( .I(shift_counter[2]), .ZN(n11) );
  OAI211D0BWP12T30P140 U36 ( .A1(n12), .A2(n11), .B(n138), .C(n10), .ZN(n97)
         );
  CKBD0BWP12T30P140 U37 ( .I(n135), .Z(n133) );
  INVD0BWP12T30P140 U38 ( .I(n141), .ZN(n121) );
  AO222D0BWP12T30P140 U39 ( .A1(n103), .A2(shift_reg[8]), .B1(n133), .B2(
        data[1]), .C1(n121), .C2(shift_reg[9]), .Z(n70) );
  CKBD0BWP12T30P140 U40 ( .I(n103), .Z(n132) );
  INVD0BWP12T30P140 U41 ( .I(n141), .ZN(n134) );
  AO222D0BWP12T30P140 U42 ( .A1(n132), .A2(shift_reg[3]), .B1(n133), .B2(
        data[6]), .C1(n134), .C2(shift_reg[4]), .Z(n65) );
  AO222D0BWP12T30P140 U43 ( .A1(n103), .A2(shift_reg[28]), .B1(n135), .B2(
        data[28]), .C1(n134), .C2(shift_reg[29]), .Z(n90) );
  INVD0BWP12T30P140 U44 ( .I(clk429_counter[4]), .ZN(n127) );
  ND2D0BWP12T30P140 U45 ( .A1(clk429_counter[3]), .A2(n114), .ZN(n113) );
  NR2D0BWP12T30P140 U46 ( .A1(n127), .A2(n113), .ZN(n115) );
  ND2D0BWP12T30P140 U47 ( .A1(clk429_counter[5]), .A2(n115), .ZN(n117) );
  NR2D0BWP12T30P140 U48 ( .A1(n118), .A2(n117), .ZN(n116) );
  INVD0BWP12T30P140 U49 ( .I(n122), .ZN(n120) );
  OA21D0BWP12T30P140 U50 ( .A1(clk429_counter[7]), .A2(n116), .B(n120), .Z(N27) );
  AO222D0BWP12T30P140 U51 ( .A1(n132), .A2(shift_reg[27]), .B1(n133), .B2(
        data[27]), .C1(n134), .C2(shift_reg[28]), .Z(n89) );
  AOI211D0BWP12T30P140 U52 ( .A1(n127), .A2(n113), .B(n115), .C(n122), .ZN(N24) );
  AO222D0BWP12T30P140 U53 ( .A1(n132), .A2(shift_reg[25]), .B1(n133), .B2(
        data[25]), .C1(n134), .C2(shift_reg[26]), .Z(n87) );
  AO222D0BWP12T30P140 U54 ( .A1(n103), .A2(shift_reg[24]), .B1(n135), .B2(
        data[24]), .C1(n134), .C2(shift_reg[25]), .Z(n86) );
  AO222D0BWP12T30P140 U55 ( .A1(n103), .A2(shift_reg[22]), .B1(n135), .B2(
        data[22]), .C1(n134), .C2(shift_reg[23]), .Z(n84) );
  AO222D0BWP12T30P140 U56 ( .A1(n103), .A2(shift_reg[21]), .B1(n133), .B2(
        data[21]), .C1(n134), .C2(shift_reg[22]), .Z(n83) );
  AO222D0BWP12T30P140 U57 ( .A1(n103), .A2(shift_reg[19]), .B1(n135), .B2(
        data[19]), .C1(n134), .C2(shift_reg[20]), .Z(n81) );
  AO222D0BWP12T30P140 U58 ( .A1(n132), .A2(shift_reg[18]), .B1(n133), .B2(
        data[18]), .C1(n134), .C2(shift_reg[19]), .Z(n80) );
  AO222D0BWP12T30P140 U59 ( .A1(n132), .A2(shift_reg[16]), .B1(n133), .B2(
        data[16]), .C1(n121), .C2(shift_reg[17]), .Z(n78) );
  AO222D0BWP12T30P140 U60 ( .A1(n103), .A2(shift_reg[15]), .B1(n135), .B2(
        data[15]), .C1(n121), .C2(shift_reg[16]), .Z(n77) );
  INVD0BWP12T30P140 U61 ( .I(shift_counter[0]), .ZN(n13) );
  ND2D0BWP12T30P140 U62 ( .A1(n104), .A2(n13), .ZN(n106) );
  OAI211D0BWP12T30P140 U63 ( .A1(n136), .A2(n13), .B(n138), .C(n106), .ZN(n100) );
  INVD0BWP12T30P140 U64 ( .I(state[2]), .ZN(n142) );
  NR3D0BWP12T30P140 U65 ( .A1(ready), .A2(state[1]), .A3(n142), .ZN(n24) );
  INVD0BWP12T30P140 U66 ( .I(gap_bits[6]), .ZN(n21) );
  OR4D0BWP12T30P140 U67 ( .A1(gap_bits[4]), .A2(gap_bits[5]), .A3(gap_bits[2]), 
        .A4(gap_bits[3]), .Z(n14) );
  ND2D0BWP12T30P140 U68 ( .A1(n21), .A2(n14), .ZN(n39) );
  NR2D0BWP12T30P140 U69 ( .A1(n19), .A2(n39), .ZN(n37) );
  AOI22D0BWP12T30P140 U70 ( .A1(n24), .A2(gap_counter[2]), .B1(n37), .B2(
        gap_bits[2]), .ZN(n45) );
  INVD0BWP12T30P140 U71 ( .I(n24), .ZN(n15) );
  NR2D0BWP12T30P140 U72 ( .A1(gap_counter[0]), .A2(n15), .ZN(n36) );
  AOI22D0BWP12T30P140 U73 ( .A1(n24), .A2(gap_counter[1]), .B1(n37), .B2(
        gap_bits[1]), .ZN(n35) );
  AN2D0BWP12T30P140 U74 ( .A1(n45), .A2(n44), .Z(n43) );
  AOI22D0BWP12T30P140 U75 ( .A1(n24), .A2(gap_counter[3]), .B1(n37), .B2(
        gap_bits[3]), .ZN(n30) );
  ND2D0BWP12T30P140 U76 ( .A1(n43), .A2(n30), .ZN(n29) );
  AO22D0BWP12T30P140 U77 ( .A1(n24), .A2(gap_counter[4]), .B1(n37), .B2(
        gap_bits[4]), .Z(n16) );
  NR2D0BWP12T30P140 U78 ( .A1(n29), .A2(n16), .ZN(n48) );
  AOI21D0BWP12T30P140 U79 ( .A1(n29), .A2(n16), .B(n48), .ZN(n23) );
  OR4D0BWP12T30P140 U80 ( .A1(gap_counter[3]), .A2(gap_counter[4]), .A3(
        gap_counter[0]), .A4(gap_counter[5]), .Z(n17) );
  OR4D0BWP12T30P140 U81 ( .A1(gap_counter[6]), .A2(gap_counter[1]), .A3(
        gap_counter[2]), .A4(n17), .Z(n109) );
  NR2D0BWP12T30P140 U82 ( .A1(n19), .A2(n18), .ZN(n108) );
  AO211D0BWP12T30P140 U83 ( .A1(n24), .A2(n109), .B(n108), .C(n20), .Z(n38) );
  ND2D0BWP12T30P140 U84 ( .A1(n38), .A2(enable), .ZN(n101) );
  IND3D1BWP12T30P140 U85 ( .A1(n21), .B1(n38), .B2(n134), .ZN(n52) );
  INVD0BWP12T30P140 U86 ( .I(n38), .ZN(n50) );
  ND2D0BWP12T30P140 U87 ( .A1(n50), .A2(gap_counter[4]), .ZN(n22) );
  OAI211D0BWP12T30P140 U88 ( .A1(n23), .A2(n101), .B(n52), .C(n22), .ZN(n57)
         );
  ND2D0BWP12T30P140 U89 ( .A1(gap_counter[6]), .A2(n24), .ZN(n26) );
  AOI22D0BWP12T30P140 U90 ( .A1(n24), .A2(gap_counter[5]), .B1(n37), .B2(
        gap_bits[5]), .ZN(n49) );
  ND2D0BWP12T30P140 U91 ( .A1(n49), .A2(n48), .ZN(n25) );
  XNR2D0BWP12T30P140 U92 ( .A1(n26), .A2(n25), .ZN(n28) );
  INVD0BWP12T30P140 U93 ( .I(gap_counter[6]), .ZN(n27) );
  OAI22D0BWP12T30P140 U94 ( .A1(n28), .A2(n101), .B1(n38), .B2(n27), .ZN(n59)
         );
  AO222D0BWP12T30P140 U95 ( .A1(n132), .A2(shift_reg[14]), .B1(n133), .B2(
        data[14]), .C1(n121), .C2(shift_reg[15]), .Z(n76) );
  OA21D0BWP12T30P140 U96 ( .A1(n43), .A2(n30), .B(n29), .Z(n32) );
  ND2D0BWP12T30P140 U97 ( .A1(n50), .A2(gap_counter[3]), .ZN(n31) );
  OAI211D0BWP12T30P140 U98 ( .A1(n32), .A2(n101), .B(n52), .C(n31), .ZN(n56)
         );
  AOI21D0BWP12T30P140 U99 ( .A1(n37), .A2(gap_bits[0]), .B(n36), .ZN(n34) );
  INVD0BWP12T30P140 U100 ( .I(gap_counter[0]), .ZN(n33) );
  OAI22D0BWP12T30P140 U101 ( .A1(n34), .A2(n101), .B1(n38), .B2(n33), .ZN(n60)
         );
  FA1D0BWP12T30P140 U102 ( .A(n37), .B(n36), .CI(n35), .CO(n44), .S(n42) );
  ND3D0BWP12T30P140 U103 ( .A1(n39), .A2(n38), .A3(n134), .ZN(n41) );
  ND2D0BWP12T30P140 U104 ( .A1(n50), .A2(gap_counter[1]), .ZN(n40) );
  OAI211D0BWP12T30P140 U105 ( .A1(n42), .A2(n101), .B(n41), .C(n40), .ZN(n54)
         );
  AO222D0BWP12T30P140 U106 ( .A1(n103), .A2(shift_reg[13]), .B1(n135), .B2(
        data[13]), .C1(n121), .C2(shift_reg[14]), .Z(n75) );
  IAO21D0BWP12T30P140 U107 ( .A1(n45), .A2(n44), .B(n43), .ZN(n47) );
  ND2D0BWP12T30P140 U108 ( .A1(n50), .A2(gap_counter[2]), .ZN(n46) );
  OAI211D0BWP12T30P140 U109 ( .A1(n47), .A2(n101), .B(n52), .C(n46), .ZN(n55)
         );
  CKXOR2D0BWP12T30P140 U110 ( .A1(n49), .A2(n48), .Z(n102) );
  ND2D0BWP12T30P140 U111 ( .A1(n50), .A2(gap_counter[5]), .ZN(n51) );
  OAI211D0BWP12T30P140 U112 ( .A1(n102), .A2(n101), .B(n52), .C(n51), .ZN(n58)
         );
  AOI32D0BWP12T30P140 U113 ( .A1(shift_counter[0]), .A2(shift_counter[1]), 
        .A3(n104), .B1(n103), .B2(shift_counter[1]), .ZN(n105) );
  OAI211D0BWP12T30P140 U114 ( .A1(shift_counter[1]), .A2(n106), .B(n105), .C(
        n138), .ZN(n96) );
  AO222D0BWP12T30P140 U115 ( .A1(n132), .A2(shift_reg[12]), .B1(n133), .B2(
        data[12]), .C1(n121), .C2(shift_reg[13]), .Z(n74) );
  INVD0BWP12T30P140 U116 ( .I(n107), .ZN(n126) );
  NR2D0BWP12T30P140 U117 ( .A1(n108), .A2(n126), .ZN(n110) );
  INVD0BWP12T30P140 U118 ( .I(state[1]), .ZN(n143) );
  ND2D0BWP12T30P140 U119 ( .A1(n125), .A2(n143), .ZN(n123) );
  AOI32D0BWP12T30P140 U120 ( .A1(state[2]), .A2(n110), .A3(n109), .B1(n123), 
        .B2(n110), .ZN(n140) );
  INVD0BWP12T30P140 U121 ( .I(n140), .ZN(n111) );
  MOAI22D0BWP12T30P140 U122 ( .A1(n112), .A2(n111), .B1(state[1]), .B2(n110), 
        .ZN(n61) );
  OA211D0BWP12T30P140 U123 ( .A1(clk429_counter[3]), .A2(n114), .B(n113), .C(
        n120), .Z(N23) );
  AO222D0BWP12T30P140 U124 ( .A1(n132), .A2(shift_reg[1]), .B1(n121), .B2(
        shift_reg[2]), .C1(data[8]), .C2(n135), .Z(n95) );
  AO222D0BWP12T30P140 U125 ( .A1(n103), .A2(shift_reg[11]), .B1(n135), .B2(
        data[11]), .C1(n121), .C2(shift_reg[12]), .Z(n73) );
  AO222D0BWP12T30P140 U126 ( .A1(n132), .A2(shift_reg[4]), .B1(n133), .B2(
        data[5]), .C1(n121), .C2(shift_reg[5]), .Z(n66) );
  AO222D0BWP12T30P140 U127 ( .A1(n132), .A2(shift_reg[5]), .B1(n133), .B2(
        data[4]), .C1(n121), .C2(shift_reg[6]), .Z(n67) );
  AO222D0BWP12T30P140 U128 ( .A1(n132), .A2(shift_reg[6]), .B1(n135), .B2(
        data[3]), .C1(n121), .C2(shift_reg[7]), .Z(n68) );
  AO222D0BWP12T30P140 U129 ( .A1(n132), .A2(shift_reg[10]), .B1(n133), .B2(
        data[10]), .C1(n121), .C2(shift_reg[11]), .Z(n72) );
  AO222D0BWP12T30P140 U130 ( .A1(n132), .A2(shift_reg[7]), .B1(n135), .B2(
        data[2]), .C1(n121), .C2(shift_reg[8]), .Z(n69) );
  AO222D0BWP12T30P140 U131 ( .A1(n132), .A2(shift_reg[29]), .B1(n133), .B2(
        data[29]), .C1(n134), .C2(shift_reg[30]), .Z(n91) );
  AO222D0BWP12T30P140 U132 ( .A1(n132), .A2(shift_reg[2]), .B1(n133), .B2(
        data[7]), .C1(shift_reg[3]), .C2(n134), .Z(n64) );
  AO222D0BWP12T30P140 U133 ( .A1(n103), .A2(shift_reg[32]), .B1(shift_reg[1]), 
        .B2(n134), .C1(n133), .C2(data[32]), .Z(n94) );
  OA211D0BWP12T30P140 U134 ( .A1(clk429_counter[5]), .A2(n115), .B(n117), .C(
        n120), .Z(N25) );
  AO222D0BWP12T30P140 U135 ( .A1(n132), .A2(shift_reg[31]), .B1(n133), .B2(
        data[31]), .C1(n134), .C2(shift_reg[32]), .Z(n93) );
  AO222D0BWP12T30P140 U136 ( .A1(n103), .A2(shift_reg[30]), .B1(n135), .B2(
        data[30]), .C1(n134), .C2(shift_reg[31]), .Z(n92) );
  AOI211D0BWP12T30P140 U137 ( .A1(n118), .A2(n117), .B(n116), .C(n122), .ZN(
        N26) );
  OA211D0BWP12T30P140 U138 ( .A1(clk429_counter[1]), .A2(clk429_counter[0]), 
        .B(n120), .C(n119), .Z(N21) );
  AO222D0BWP12T30P140 U139 ( .A1(n103), .A2(shift_reg[9]), .B1(n135), .B2(
        data[9]), .C1(n121), .C2(shift_reg[10]), .Z(n71) );
  NR2D0BWP12T30P140 U140 ( .A1(clk429_counter[0]), .A2(n122), .ZN(N20) );
  AO222D0BWP12T30P140 U141 ( .A1(n103), .A2(shift_reg[26]), .B1(n135), .B2(
        data[26]), .C1(n134), .C2(shift_reg[27]), .Z(n88) );
  IOA21D0BWP12T30P140 U142 ( .A1(n123), .A2(enable), .B(n140), .ZN(n124) );
  OAI21D0BWP12T30P140 U143 ( .A1(n126), .A2(n125), .B(n124), .ZN(n63) );
  AOI221D0BWP12T30P140 U144 ( .A1(clk429_counter[2]), .A2(clk429_counter[3]), 
        .B1(clk429_counter[1]), .B2(clk429_counter[3]), .C(clk429_counter[6]), 
        .ZN(n130) );
  OAI211D0BWP12T30P140 U145 ( .A1(n130), .A2(n129), .B(n128), .C(n127), .ZN(
        n131) );
  AOI221D0BWP12T30P140 U146 ( .A1(clk429_counter[6]), .A2(n131), .B1(speed[0]), 
        .B2(n131), .C(clk429_counter[7]), .ZN(N9) );
  AO222D0BWP12T30P140 U147 ( .A1(n132), .A2(shift_reg[20]), .B1(n135), .B2(
        data[20]), .C1(n134), .C2(shift_reg[21]), .Z(n82) );
  AO222D0BWP12T30P140 U148 ( .A1(n103), .A2(shift_reg[23]), .B1(n133), .B2(
        data[23]), .C1(n134), .C2(shift_reg[24]), .Z(n85) );
  AO222D0BWP12T30P140 U149 ( .A1(n103), .A2(shift_reg[17]), .B1(n135), .B2(
        data[17]), .C1(n134), .C2(shift_reg[18]), .Z(n79) );
  CKBD0BWP12T30P140 U150 ( .I(clk429), .Z(n146) );
  INVD0BWP12T30P140 U151 ( .I(reset), .ZN(n53) );
  CKBD0BWP12T30P140 U152 ( .I(n53), .Z(n145) );
  CKBD0BWP12T30P140 U153 ( .I(n53), .Z(n144) );
  CKBD0BWP12T30P140 U154 ( .I(clk429), .Z(n147) );
  AN3D0BWP12T30P140 U155 ( .A1(state[1]), .A2(shift_reg[1]), .A3(n147), .Z(
        a429_out_a) );
  OAI21D0BWP12T30P140 U156 ( .A1(n137), .A2(n141), .B(n136), .ZN(n139) );
  IOA21D0BWP12T30P140 U157 ( .A1(shift_counter[4]), .A2(n139), .B(n138), .ZN(
        n99) );
  MUX2ND0BWP12T30P140 U158 ( .I0(n142), .I1(n141), .S(n140), .ZN(n62) );
  INR3D1BWP12T30P140 U159 ( .A1(n147), .B1(shift_reg[1]), .B2(n143), .ZN(
        a429_out_b) );
endmodule


module a429_rx_iface ( clk2M, reset, speed, a429_in_a, a429_in_b, parcheck, 
        data, wr_en );
  input [1:0] speed;
  output [32:1] data;
  input clk2M, reset, a429_in_a, a429_in_b, parcheck;
  output wr_en;
  wire   aorb, aorb_prev, parity, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204;
  wire   [2:0] state;
  wire   [32:2] shift_reg;
  wire   [4:0] shift_counter;
  wire   [8:0] sampling_counter;

  DFCSNQD1BWP12T30P140 sampling_counter_reg_6_ ( .D(n96), .CP(n203), .CDN(n93), 
        .SDN(n94), .Q(sampling_counter[6]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_2_ ( .D(n100), .CP(n203), .CDN(n93), .SDN(n94), .Q(sampling_counter[2]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_5_ ( .D(n97), .CP(n201), .CDN(n94), 
        .SDN(n93), .Q(sampling_counter[5]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_8_ ( .D(n104), .CP(n201), .CDN(n93), .SDN(n94), .Q(sampling_counter[8]) );
  DFCSNQD1BWP12T30P140 sampling_counter_reg_7_ ( .D(n103), .CP(n204), .CDN(n93), .SDN(n94), .Q(sampling_counter[7]) );
  DFSNQD1BWP12T30P140 state_reg_2_ ( .D(n173), .CP(n201), .SDN(n199), .Q(
        state[2]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_0_ ( .D(n102), .CP(clk2M), .SDN(
        n198), .Q(sampling_counter[0]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_1_ ( .D(n101), .CP(n202), .SDN(n200), .Q(sampling_counter[1]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_4_ ( .D(n98), .CP(n204), .SDN(n198), 
        .Q(sampling_counter[4]) );
  DFSNQD1BWP12T30P140 sampling_counter_reg_3_ ( .D(n99), .CP(n203), .SDN(n200), 
        .Q(sampling_counter[3]) );
  DFCNQD1BWP12T30P140 data_reg_8_ ( .D(n116), .CP(n203), .CDN(n200), .Q(
        data[8]) );
  DFCNQD1BWP12T30P140 data_reg_7_ ( .D(n115), .CP(n202), .CDN(n199), .Q(
        data[7]) );
  DFCNQD1BWP12T30P140 data_reg_6_ ( .D(n114), .CP(n204), .CDN(n92), .Q(data[6]) );
  DFCNQD1BWP12T30P140 data_reg_5_ ( .D(n113), .CP(n203), .CDN(n198), .Q(
        data[5]) );
  DFCNQD1BWP12T30P140 data_reg_4_ ( .D(n112), .CP(n201), .CDN(n200), .Q(
        data[4]) );
  DFCNQD1BWP12T30P140 data_reg_3_ ( .D(n111), .CP(n204), .CDN(n199), .Q(
        data[3]) );
  DFCNQD1BWP12T30P140 data_reg_2_ ( .D(n110), .CP(n202), .CDN(n92), .Q(data[2]) );
  DFCNQD1BWP12T30P140 wr_en_reg ( .D(n95), .CP(n204), .CDN(n198), .Q(wr_en) );
  DFCNQD1BWP12T30P140 aorb_prev_reg ( .D(aorb), .CP(n204), .CDN(n200), .Q(
        aorb_prev) );
  DFCNQD1BWP12T30P140 data_reg_1_ ( .D(n141), .CP(n204), .CDN(n199), .Q(
        data[1]) );
  DFCNQD1BWP12T30P140 data_reg_32_ ( .D(n140), .CP(n204), .CDN(n199), .Q(
        data[32]) );
  DFCNQD1BWP12T30P140 data_reg_31_ ( .D(n139), .CP(n204), .CDN(n199), .Q(
        data[31]) );
  DFCNQD1BWP12T30P140 data_reg_30_ ( .D(n138), .CP(n204), .CDN(n199), .Q(
        data[30]) );
  DFCNQD1BWP12T30P140 data_reg_29_ ( .D(n137), .CP(n204), .CDN(n199), .Q(
        data[29]) );
  DFCNQD1BWP12T30P140 data_reg_28_ ( .D(n136), .CP(n204), .CDN(n199), .Q(
        data[28]) );
  DFCNQD1BWP12T30P140 data_reg_27_ ( .D(n135), .CP(n204), .CDN(n199), .Q(
        data[27]) );
  DFCNQD1BWP12T30P140 data_reg_26_ ( .D(n134), .CP(n204), .CDN(n199), .Q(
        data[26]) );
  DFCNQD1BWP12T30P140 data_reg_25_ ( .D(n133), .CP(n204), .CDN(n199), .Q(
        data[25]) );
  DFCNQD1BWP12T30P140 data_reg_24_ ( .D(n132), .CP(n204), .CDN(n199), .Q(
        data[24]) );
  DFCNQD1BWP12T30P140 data_reg_23_ ( .D(n131), .CP(n204), .CDN(n199), .Q(
        data[23]) );
  DFCNQD1BWP12T30P140 data_reg_22_ ( .D(n130), .CP(n204), .CDN(n199), .Q(
        data[22]) );
  DFCNQD1BWP12T30P140 data_reg_21_ ( .D(n129), .CP(n201), .CDN(n199), .Q(
        data[21]) );
  DFCNQD1BWP12T30P140 data_reg_20_ ( .D(n128), .CP(clk2M), .CDN(n200), .Q(
        data[20]) );
  DFCNQD1BWP12T30P140 data_reg_19_ ( .D(n127), .CP(n202), .CDN(n200), .Q(
        data[19]) );
  DFCNQD1BWP12T30P140 data_reg_18_ ( .D(n126), .CP(n204), .CDN(n200), .Q(
        data[18]) );
  DFCNQD1BWP12T30P140 data_reg_17_ ( .D(n125), .CP(n203), .CDN(n200), .Q(
        data[17]) );
  DFCNQD1BWP12T30P140 data_reg_16_ ( .D(n124), .CP(n201), .CDN(n200), .Q(
        data[16]) );
  DFCNQD1BWP12T30P140 data_reg_15_ ( .D(n123), .CP(clk2M), .CDN(n200), .Q(
        data[15]) );
  DFCNQD1BWP12T30P140 data_reg_14_ ( .D(n122), .CP(n202), .CDN(n200), .Q(
        data[14]) );
  DFCNQD1BWP12T30P140 data_reg_13_ ( .D(n121), .CP(n204), .CDN(n200), .Q(
        data[13]) );
  DFCNQD1BWP12T30P140 data_reg_12_ ( .D(n120), .CP(n203), .CDN(n200), .Q(
        data[12]) );
  DFCNQD1BWP12T30P140 data_reg_11_ ( .D(n119), .CP(n201), .CDN(n200), .Q(
        data[11]) );
  DFCNQD1BWP12T30P140 data_reg_10_ ( .D(n118), .CP(clk2M), .CDN(n200), .Q(
        data[10]) );
  DFCNQD1BWP12T30P140 data_reg_9_ ( .D(n117), .CP(n202), .CDN(n200), .Q(
        data[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_32_ ( .D(n172), .CP(n201), .CDN(n92), .Q(
        shift_reg[32]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_31_ ( .D(n171), .CP(n201), .CDN(n92), .Q(
        shift_reg[31]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_30_ ( .D(n170), .CP(n201), .CDN(n92), .Q(
        shift_reg[30]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_29_ ( .D(n169), .CP(n201), .CDN(n92), .Q(
        shift_reg[29]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_28_ ( .D(n168), .CP(n201), .CDN(n92), .Q(
        shift_reg[28]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_27_ ( .D(n167), .CP(n202), .CDN(n199), .Q(
        shift_reg[27]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_26_ ( .D(n166), .CP(n202), .CDN(n198), .Q(
        shift_reg[26]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_25_ ( .D(n165), .CP(n202), .CDN(n199), .Q(
        shift_reg[25]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_24_ ( .D(n164), .CP(n202), .CDN(n200), .Q(
        shift_reg[24]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_23_ ( .D(n163), .CP(n202), .CDN(n92), .Q(
        shift_reg[23]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_22_ ( .D(n162), .CP(n202), .CDN(n198), .Q(
        shift_reg[22]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_21_ ( .D(n161), .CP(n202), .CDN(n199), .Q(
        shift_reg[21]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_20_ ( .D(n160), .CP(n202), .CDN(n200), .Q(
        shift_reg[20]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_19_ ( .D(n159), .CP(n202), .CDN(n92), .Q(
        shift_reg[19]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_18_ ( .D(n158), .CP(n202), .CDN(n198), .Q(
        shift_reg[18]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_17_ ( .D(n157), .CP(n202), .CDN(n92), .Q(
        shift_reg[17]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_16_ ( .D(n156), .CP(n202), .CDN(n200), .Q(
        shift_reg[16]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_15_ ( .D(n155), .CP(n202), .CDN(n92), .Q(
        shift_reg[15]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_14_ ( .D(n154), .CP(n203), .CDN(n198), .Q(
        shift_reg[14]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_13_ ( .D(n153), .CP(n203), .CDN(n198), .Q(
        shift_reg[13]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_12_ ( .D(n152), .CP(n203), .CDN(n198), .Q(
        shift_reg[12]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_11_ ( .D(n151), .CP(n203), .CDN(n198), .Q(
        shift_reg[11]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_10_ ( .D(n150), .CP(n203), .CDN(n198), .Q(
        shift_reg[10]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_9_ ( .D(n149), .CP(n203), .CDN(n198), .Q(
        shift_reg[9]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n148), .CP(n203), .CDN(n198), .Q(
        shift_reg[8]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n147), .CP(n203), .CDN(n198), .Q(
        shift_reg[7]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n146), .CP(n203), .CDN(n198), .Q(
        shift_reg[6]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n145), .CP(n203), .CDN(n198), .Q(
        shift_reg[5]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n144), .CP(n203), .CDN(n198), .Q(
        shift_reg[4]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n143), .CP(n203), .CDN(n198), .Q(
        shift_reg[3]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n142), .CP(n203), .CDN(n198), .Q(
        shift_reg[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_2_ ( .D(n107), .CP(n201), .CDN(n92), 
        .Q(shift_counter[2]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_4_ ( .D(n109), .CP(n201), .CDN(n199), 
        .Q(shift_counter[4]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_0_ ( .D(n105), .CP(n201), .CDN(n92), 
        .Q(shift_counter[0]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_1_ ( .D(n106), .CP(n201), .CDN(n92), 
        .Q(shift_counter[1]) );
  DFCNQD1BWP12T30P140 shift_counter_reg_3_ ( .D(n108), .CP(n201), .CDN(n92), 
        .Q(shift_counter[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n176), .CP(n201), .CDN(n92), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n174), .CP(n201), .CDN(n92), .Q(
        state[1]) );
  DFQD1BWP12T30P140 parity_reg ( .D(n175), .CP(n201), .Q(parity) );
  INVD0BWP12T30P140 U3 ( .I(a429_in_b), .ZN(n5) );
  INVD0BWP12T30P140 U4 ( .I(a429_in_a), .ZN(n83) );
  ND2D0BWP12T30P140 U5 ( .A1(n5), .A2(n83), .ZN(aorb) );
  OR3D0BWP12T30P140 U6 ( .A1(shift_counter[1]), .A2(shift_counter[0]), .A3(
        shift_counter[2]), .Z(n76) );
  NR3D0BWP12T30P140 U7 ( .A1(shift_counter[4]), .A2(shift_counter[3]), .A3(n76), .ZN(n6) );
  OAI21D0BWP12T30P140 U8 ( .A1(n83), .A2(n5), .B(aorb), .ZN(n7) );
  INVD0BWP12T30P140 U9 ( .I(sampling_counter[7]), .ZN(n35) );
  NR3D0BWP12T30P140 U10 ( .A1(sampling_counter[2]), .A2(sampling_counter[1]), 
        .A3(sampling_counter[0]), .ZN(n44) );
  INVD0BWP12T30P140 U11 ( .I(n44), .ZN(n18) );
  NR2D0BWP12T30P140 U12 ( .A1(sampling_counter[3]), .A2(n18), .ZN(n17) );
  INVD0BWP12T30P140 U13 ( .I(n17), .ZN(n25) );
  NR2D0BWP12T30P140 U14 ( .A1(sampling_counter[4]), .A2(n25), .ZN(n24) );
  INVD0BWP12T30P140 U15 ( .I(n24), .ZN(n39) );
  NR2D0BWP12T30P140 U16 ( .A1(sampling_counter[5]), .A2(n39), .ZN(n38) );
  INVD0BWP12T30P140 U17 ( .I(n38), .ZN(n54) );
  NR2D0BWP12T30P140 U18 ( .A1(sampling_counter[6]), .A2(n54), .ZN(n53) );
  ND2D0BWP12T30P140 U19 ( .A1(n35), .A2(n53), .ZN(n195) );
  NR2D0BWP12T30P140 U20 ( .A1(sampling_counter[8]), .A2(n195), .ZN(n72) );
  INVD0BWP12T30P140 U21 ( .I(state[0]), .ZN(n183) );
  AN2D0BWP12T30P140 U22 ( .A1(state[1]), .A2(n183), .Z(n81) );
  ND2D0BWP12T30P140 U23 ( .A1(n72), .A2(n81), .ZN(n19) );
  INR3D1BWP12T30P140 U24 ( .A1(n6), .B1(n7), .B2(n19), .ZN(n15) );
  CKBD0BWP12T30P140 U25 ( .I(n15), .Z(n14) );
  INVD0BWP12T30P140 U26 ( .I(shift_reg[10]), .ZN(n56) );
  CKBD0BWP12T30P140 U27 ( .I(n15), .Z(n16) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n14), .A2(n56), .B1(data[9]), .B2(n16), .ZN(
        n117) );
  NR2D0BWP12T30P140 U29 ( .A1(n6), .A2(n7), .ZN(n73) );
  IND2D1BWP12T30P140 U30 ( .A1(n19), .B1(n73), .ZN(n187) );
  INVD0BWP12T30P140 U31 ( .I(n187), .ZN(n90) );
  CKBD0BWP12T30P140 U32 ( .I(n90), .Z(n193) );
  INVD0BWP12T30P140 U33 ( .I(shift_reg[32]), .ZN(n4) );
  INVD0BWP12T30P140 U34 ( .I(n90), .ZN(n190) );
  AOI22D0BWP12T30P140 U35 ( .A1(n193), .A2(n83), .B1(n4), .B2(n190), .ZN(n172)
         );
  INVD0BWP12T30P140 U36 ( .I(shift_reg[12]), .ZN(n89) );
  MAOI22D0BWP12T30P140 U37 ( .A1(n14), .A2(n89), .B1(data[11]), .B2(n16), .ZN(
        n119) );
  INVD0BWP12T30P140 U38 ( .I(shift_reg[15]), .ZN(n61) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n14), .A2(n61), .B1(data[14]), .B2(n16), .ZN(
        n122) );
  INVD0BWP12T30P140 U40 ( .I(shift_reg[31]), .ZN(n3) );
  INVD0BWP12T30P140 U41 ( .I(shift_reg[30]), .ZN(n2) );
  AOI22D0BWP12T30P140 U42 ( .A1(n193), .A2(n3), .B1(n2), .B2(n190), .ZN(n170)
         );
  INVD0BWP12T30P140 U43 ( .I(shift_reg[16]), .ZN(n64) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n14), .A2(n64), .B1(data[15]), .B2(n16), .ZN(
        n123) );
  INVD0BWP12T30P140 U45 ( .I(shift_reg[18]), .ZN(n68) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n14), .A2(n68), .B1(data[17]), .B2(n16), .ZN(
        n125) );
  INVD0BWP12T30P140 U47 ( .I(shift_reg[19]), .ZN(n71) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n14), .A2(n71), .B1(data[18]), .B2(n14), .ZN(
        n126) );
  INVD0BWP12T30P140 U49 ( .I(shift_reg[20]), .ZN(n75) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n14), .A2(n75), .B1(data[19]), .B2(n15), .ZN(
        n127) );
  INVD0BWP12T30P140 U51 ( .I(shift_reg[29]), .ZN(n1) );
  INVD0BWP12T30P140 U52 ( .I(shift_reg[28]), .ZN(n12) );
  AOI22D0BWP12T30P140 U53 ( .A1(n193), .A2(n1), .B1(n12), .B2(n190), .ZN(n168)
         );
  CKBD0BWP12T30P140 U54 ( .I(n15), .Z(n13) );
  INVD0BWP12T30P140 U55 ( .I(shift_reg[21]), .ZN(n78) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n13), .A2(n78), .B1(data[20]), .B2(n14), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U57 ( .A1(n193), .A2(n2), .B1(n1), .B2(n187), .ZN(n169)
         );
  INVD0BWP12T30P140 U58 ( .I(shift_reg[22]), .ZN(n178) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n13), .A2(n178), .B1(data[21]), .B2(n16), 
        .ZN(n129) );
  AOI22D0BWP12T30P140 U60 ( .A1(n193), .A2(n4), .B1(n3), .B2(n187), .ZN(n171)
         );
  INVD0BWP12T30P140 U61 ( .I(shift_reg[23]), .ZN(n188) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n13), .A2(n188), .B1(data[22]), .B2(n15), 
        .ZN(n130) );
  INVD0BWP12T30P140 U63 ( .I(shift_reg[24]), .ZN(n189) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n13), .A2(n189), .B1(data[23]), .B2(n13), 
        .ZN(n131) );
  INVD0BWP12T30P140 U65 ( .I(shift_reg[11]), .ZN(n88) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n14), .A2(n88), .B1(data[10]), .B2(n16), .ZN(
        n118) );
  INVD0BWP12T30P140 U67 ( .I(shift_reg[25]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n13), .A2(n186), .B1(data[24]), .B2(n14), 
        .ZN(n132) );
  INVD0BWP12T30P140 U69 ( .I(shift_reg[13]), .ZN(n57) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n14), .A2(n57), .B1(data[12]), .B2(n16), .ZN(
        n120) );
  INVD0BWP12T30P140 U71 ( .I(shift_reg[26]), .ZN(n191) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n13), .A2(n191), .B1(data[25]), .B2(n15), 
        .ZN(n133) );
  INVD0BWP12T30P140 U73 ( .I(shift_reg[14]), .ZN(n59) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n14), .A2(n59), .B1(data[13]), .B2(n16), .ZN(
        n121) );
  INVD0BWP12T30P140 U75 ( .I(shift_reg[27]), .ZN(n192) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n13), .A2(n192), .B1(data[26]), .B2(n15), 
        .ZN(n134) );
  INVD0BWP12T30P140 U77 ( .I(shift_reg[17]), .ZN(n66) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n14), .A2(n66), .B1(data[16]), .B2(n16), .ZN(
        n124) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n13), .A2(n12), .B1(data[27]), .B2(n15), .ZN(
        n135) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n13), .A2(n1), .B1(data[28]), .B2(n15), .ZN(
        n136) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n13), .A2(n2), .B1(data[29]), .B2(n15), .ZN(
        n137) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n13), .A2(n3), .B1(data[30]), .B2(n15), .ZN(
        n138) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n13), .A2(n4), .B1(data[31]), .B2(n15), .ZN(
        n139) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n13), .A2(n83), .B1(data[32]), .B2(n15), .ZN(
        n140) );
  INVD0BWP12T30P140 U85 ( .I(shift_reg[9]), .ZN(n58) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n16), .A2(n58), .B1(data[1]), .B2(n16), .ZN(
        n141) );
  NR2D0BWP12T30P140 U87 ( .A1(state[1]), .A2(state[0]), .ZN(n181) );
  INVD0BWP12T30P140 U88 ( .I(parity), .ZN(n82) );
  AOI22D0BWP12T30P140 U89 ( .A1(a429_in_b), .A2(parity), .B1(n82), .B2(n5), 
        .ZN(n9) );
  IND2D1BWP12T30P140 U90 ( .A1(n7), .B1(n6), .ZN(n8) );
  INVD0BWP12T30P140 U91 ( .I(n72), .ZN(n48) );
  AOI211D0BWP12T30P140 U92 ( .A1(parcheck), .A2(n9), .B(n8), .C(n48), .ZN(n10)
         );
  AOI21D0BWP12T30P140 U93 ( .A1(n10), .A2(n183), .B(wr_en), .ZN(n11) );
  NR2D0BWP12T30P140 U94 ( .A1(n181), .A2(n11), .ZN(n95) );
  AOI22D0BWP12T30P140 U95 ( .A1(n193), .A2(n12), .B1(n192), .B2(n187), .ZN(
        n167) );
  INVD0BWP12T30P140 U96 ( .I(shift_reg[8]), .ZN(n60) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n14), .A2(n60), .B1(data[2]), .B2(n15), .ZN(
        n110) );
  INVD0BWP12T30P140 U98 ( .I(shift_reg[7]), .ZN(n62) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n16), .A2(n62), .B1(data[3]), .B2(n13), .ZN(
        n111) );
  INVD0BWP12T30P140 U100 ( .I(shift_reg[6]), .ZN(n63) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n14), .A2(n63), .B1(data[4]), .B2(n13), .ZN(
        n112) );
  INVD0BWP12T30P140 U102 ( .I(shift_reg[5]), .ZN(n65) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n16), .A2(n65), .B1(data[5]), .B2(n15), .ZN(
        n113) );
  INVD0BWP12T30P140 U104 ( .I(shift_reg[4]), .ZN(n67) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n16), .A2(n67), .B1(data[6]), .B2(n16), .ZN(
        n114) );
  INVD0BWP12T30P140 U106 ( .I(shift_reg[3]), .ZN(n70) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n14), .A2(n70), .B1(data[7]), .B2(n13), .ZN(
        n115) );
  INVD0BWP12T30P140 U108 ( .I(shift_reg[2]), .ZN(n69) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n16), .A2(n69), .B1(data[8]), .B2(n15), .ZN(
        n116) );
  AOI21D0BWP12T30P140 U110 ( .A1(sampling_counter[3]), .A2(n18), .B(n17), .ZN(
        n23) );
  ND2D0BWP12T30P140 U111 ( .A1(n183), .A2(n48), .ZN(n22) );
  INVD0BWP12T30P140 U112 ( .I(aorb), .ZN(n34) );
  INVD0BWP12T30P140 U113 ( .I(n181), .ZN(n20) );
  NR3D0BWP12T30P140 U114 ( .A1(n34), .A2(n72), .A3(n20), .ZN(n26) );
  OAI22D0BWP12T30P140 U115 ( .A1(state[2]), .A2(n20), .B1(n73), .B2(n19), .ZN(
        n32) );
  NR2D0BWP12T30P140 U116 ( .A1(n26), .A2(n32), .ZN(n42) );
  NR2D0BWP12T30P140 U117 ( .A1(speed[0]), .A2(n190), .ZN(n36) );
  INVD0BWP12T30P140 U118 ( .I(n36), .ZN(n21) );
  OAI211D0BWP12T30P140 U119 ( .A1(n23), .A2(n22), .B(n42), .C(n21), .ZN(n99)
         );
  OAI21D0BWP12T30P140 U120 ( .A1(state[1]), .A2(n48), .B(n183), .ZN(n31) );
  AOI21D0BWP12T30P140 U121 ( .A1(sampling_counter[4]), .A2(n25), .B(n24), .ZN(
        n27) );
  INVD0BWP12T30P140 U122 ( .I(state[2]), .ZN(n33) );
  AOI21D0BWP12T30P140 U123 ( .A1(n181), .A2(n33), .B(n26), .ZN(n28) );
  OAI21D0BWP12T30P140 U124 ( .A1(n31), .A2(n27), .B(n28), .ZN(n98) );
  NR2D0BWP12T30P140 U125 ( .A1(sampling_counter[1]), .A2(sampling_counter[0]), 
        .ZN(n43) );
  AOI21D0BWP12T30P140 U126 ( .A1(sampling_counter[0]), .A2(sampling_counter[1]), .B(n43), .ZN(n29) );
  INVD0BWP12T30P140 U127 ( .I(speed[0]), .ZN(n197) );
  ND2D0BWP12T30P140 U128 ( .A1(state[0]), .A2(n197), .ZN(n40) );
  AN2D0BWP12T30P140 U129 ( .A1(n28), .A2(n40), .Z(n30) );
  OAI21D0BWP12T30P140 U130 ( .A1(n31), .A2(n29), .B(n30), .ZN(n101) );
  OAI21D0BWP12T30P140 U131 ( .A1(sampling_counter[0]), .A2(n31), .B(n30), .ZN(
        n102) );
  AOI21D0BWP12T30P140 U132 ( .A1(n181), .A2(n72), .B(n32), .ZN(n185) );
  OAI31D0BWP12T30P140 U133 ( .A1(n34), .A2(aorb_prev), .A3(n183), .B(n185), 
        .ZN(n182) );
  NR2D0BWP12T30P140 U134 ( .A1(state[1]), .A2(n33), .ZN(n47) );
  OAI22D0BWP12T30P140 U135 ( .A1(n33), .A2(n182), .B1(n185), .B2(n47), .ZN(
        n173) );
  AOI21D0BWP12T30P140 U136 ( .A1(state[2]), .A2(n34), .B(state[1]), .ZN(n52)
         );
  NR3D0BWP12T30P140 U137 ( .A1(state[0]), .A2(n72), .A3(n52), .ZN(n196) );
  OAI21D0BWP12T30P140 U138 ( .A1(n53), .A2(n35), .B(n195), .ZN(n37) );
  NR2D0BWP12T30P140 U139 ( .A1(speed[0]), .A2(n42), .ZN(n194) );
  AO211D0BWP12T30P140 U140 ( .A1(n196), .A2(n37), .B(n194), .C(n36), .Z(n103)
         );
  AOI32D0BWP12T30P140 U141 ( .A1(sampling_counter[5]), .A2(n196), .A3(n39), 
        .B1(n38), .B2(n196), .ZN(n41) );
  OAI211D0BWP12T30P140 U142 ( .A1(n42), .A2(n197), .B(n41), .C(n40), .ZN(n97)
         );
  INVD0BWP12T30P140 U143 ( .I(n43), .ZN(n45) );
  AOI21D0BWP12T30P140 U144 ( .A1(sampling_counter[2]), .A2(n45), .B(n44), .ZN(
        n51) );
  ND2D0BWP12T30P140 U145 ( .A1(aorb), .A2(n48), .ZN(n46) );
  AOI22D0BWP12T30P140 U146 ( .A1(state[1]), .A2(n48), .B1(n47), .B2(n46), .ZN(
        n49) );
  AOI21D0BWP12T30P140 U147 ( .A1(n49), .A2(n197), .B(state[0]), .ZN(n50) );
  OAI31D0BWP12T30P140 U148 ( .A1(n72), .A2(n52), .A3(n51), .B(n50), .ZN(n100)
         );
  AO21D0BWP12T30P140 U149 ( .A1(sampling_counter[6]), .A2(n54), .B(n53), .Z(
        n55) );
  AO21D0BWP12T30P140 U150 ( .A1(n55), .A2(n196), .B(n194), .Z(n96) );
  AOI22D0BWP12T30P140 U151 ( .A1(n90), .A2(n88), .B1(n56), .B2(n187), .ZN(n150) );
  AOI22D0BWP12T30P140 U152 ( .A1(n90), .A2(n57), .B1(n89), .B2(n190), .ZN(n152) );
  AOI22D0BWP12T30P140 U153 ( .A1(n90), .A2(n56), .B1(n58), .B2(n187), .ZN(n149) );
  AOI22D0BWP12T30P140 U154 ( .A1(n193), .A2(n59), .B1(n57), .B2(n187), .ZN(
        n153) );
  AOI22D0BWP12T30P140 U155 ( .A1(n90), .A2(n58), .B1(n60), .B2(n187), .ZN(n148) );
  AOI22D0BWP12T30P140 U156 ( .A1(n193), .A2(n61), .B1(n59), .B2(n190), .ZN(
        n154) );
  AOI22D0BWP12T30P140 U157 ( .A1(n90), .A2(n60), .B1(n62), .B2(n187), .ZN(n147) );
  AOI22D0BWP12T30P140 U158 ( .A1(n193), .A2(n64), .B1(n61), .B2(n187), .ZN(
        n155) );
  AOI22D0BWP12T30P140 U159 ( .A1(n90), .A2(n62), .B1(n63), .B2(n190), .ZN(n146) );
  AOI22D0BWP12T30P140 U160 ( .A1(n90), .A2(n63), .B1(n65), .B2(n190), .ZN(n145) );
  AOI22D0BWP12T30P140 U161 ( .A1(n193), .A2(n66), .B1(n64), .B2(n190), .ZN(
        n156) );
  AOI22D0BWP12T30P140 U162 ( .A1(n90), .A2(n65), .B1(n67), .B2(n190), .ZN(n144) );
  AOI22D0BWP12T30P140 U163 ( .A1(n193), .A2(n68), .B1(n66), .B2(n187), .ZN(
        n157) );
  AOI22D0BWP12T30P140 U164 ( .A1(n90), .A2(n67), .B1(n70), .B2(n190), .ZN(n143) );
  AOI22D0BWP12T30P140 U165 ( .A1(n193), .A2(n71), .B1(n68), .B2(n190), .ZN(
        n158) );
  AOI22D0BWP12T30P140 U166 ( .A1(n90), .A2(n70), .B1(n69), .B2(n190), .ZN(n142) );
  AOI22D0BWP12T30P140 U167 ( .A1(n193), .A2(n75), .B1(n71), .B2(n187), .ZN(
        n159) );
  AOI31D0BWP12T30P140 U168 ( .A1(state[1]), .A2(n73), .A3(n72), .B(state[0]), 
        .ZN(n84) );
  NR3D0BWP12T30P140 U169 ( .A1(shift_counter[0]), .A2(shift_counter[1]), .A3(
        n84), .ZN(n179) );
  INVD0BWP12T30P140 U170 ( .I(shift_counter[2]), .ZN(n74) );
  OR2D0BWP12T30P140 U171 ( .A1(n76), .A2(n84), .Z(n177) );
  OAI211D0BWP12T30P140 U172 ( .A1(n179), .A2(n74), .B(n183), .C(n177), .ZN(
        n107) );
  AOI22D0BWP12T30P140 U173 ( .A1(n193), .A2(n78), .B1(n75), .B2(n190), .ZN(
        n160) );
  NR3D0BWP12T30P140 U174 ( .A1(shift_counter[3]), .A2(n76), .A3(n84), .ZN(n91)
         );
  INVD0BWP12T30P140 U175 ( .I(shift_counter[4]), .ZN(n77) );
  OAI21D0BWP12T30P140 U176 ( .A1(n91), .A2(n77), .B(n183), .ZN(n109) );
  AOI22D0BWP12T30P140 U177 ( .A1(n193), .A2(n178), .B1(n78), .B2(n187), .ZN(
        n161) );
  INVD0BWP12T30P140 U178 ( .I(n84), .ZN(n80) );
  INVD0BWP12T30P140 U179 ( .I(shift_counter[0]), .ZN(n79) );
  ND2D0BWP12T30P140 U180 ( .A1(n79), .A2(n80), .ZN(n180) );
  OAI211D0BWP12T30P140 U181 ( .A1(n80), .A2(n79), .B(n183), .C(n180), .ZN(n105) );
  OAI21D0BWP12T30P140 U182 ( .A1(n83), .A2(n82), .B(n81), .ZN(n87) );
  NR2D0BWP12T30P140 U183 ( .A1(reset), .A2(n84), .ZN(n86) );
  AOI21D0BWP12T30P140 U184 ( .A1(a429_in_a), .A2(n86), .B(parity), .ZN(n85) );
  AOI21D0BWP12T30P140 U185 ( .A1(n87), .A2(n86), .B(n85), .ZN(n175) );
  AOI22D0BWP12T30P140 U186 ( .A1(n90), .A2(n89), .B1(n88), .B2(n187), .ZN(n151) );
  AOI22D0BWP12T30P140 U187 ( .A1(n193), .A2(n186), .B1(n189), .B2(n190), .ZN(
        n164) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n183), .A2(n182), .B1(n182), .B2(state[1]), 
        .ZN(n174) );
  AO211D0BWP12T30P140 U189 ( .A1(shift_counter[3]), .A2(n177), .B(state[0]), 
        .C(n91), .Z(n108) );
  AOI22D0BWP12T30P140 U190 ( .A1(n193), .A2(n188), .B1(n178), .B2(n190), .ZN(
        n162) );
  AO211D0BWP12T30P140 U191 ( .A1(shift_counter[1]), .A2(n180), .B(state[0]), 
        .C(n179), .Z(n106) );
  ND2D0BWP12T30P140 U192 ( .A1(n181), .A2(state[2]), .ZN(n184) );
  OAI22D0BWP12T30P140 U193 ( .A1(n185), .A2(n184), .B1(n183), .B2(n182), .ZN(
        n176) );
  AOI22D0BWP12T30P140 U194 ( .A1(n193), .A2(n191), .B1(n186), .B2(n187), .ZN(
        n165) );
  AOI22D0BWP12T30P140 U195 ( .A1(n193), .A2(n189), .B1(n188), .B2(n187), .ZN(
        n163) );
  AOI22D0BWP12T30P140 U196 ( .A1(n193), .A2(n192), .B1(n191), .B2(n190), .ZN(
        n166) );
  CKBD0BWP12T30P140 U197 ( .I(clk2M), .Z(n203) );
  CKBD0BWP12T30P140 U198 ( .I(clk2M), .Z(n204) );
  CKBD0BWP12T30P140 U199 ( .I(clk2M), .Z(n201) );
  CKBD0BWP12T30P140 U200 ( .I(clk2M), .Z(n202) );
  INVD0BWP12T30P140 U201 ( .I(reset), .ZN(n92) );
  CKBD0BWP12T30P140 U202 ( .I(n92), .Z(n199) );
  CKBD0BWP12T30P140 U203 ( .I(n92), .Z(n200) );
  CKBD0BWP12T30P140 U204 ( .I(n92), .Z(n198) );
  AO31D0BWP12T30P140 U205 ( .A1(sampling_counter[8]), .A2(n196), .A3(n195), 
        .B(n194), .Z(n104) );
  ND2D0BWP12T30P140 U206 ( .A1(reset), .A2(n197), .ZN(n94) );
  ND2D0BWP12T30P140 U207 ( .A1(reset), .A2(speed[0]), .ZN(n93) );
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

