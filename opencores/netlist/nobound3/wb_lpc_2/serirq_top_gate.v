/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:55:45 2026
/////////////////////////////////////////////////////////////


module serirq_host ( clk_i, nrst_i, serirq_mode_i, irq_o, serirq_o, serirq_i, 
        serirq_oe );
  output [31:0] irq_o;
  input clk_i, nrst_i, serirq_mode_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   current_mode, nxt_serirq_o, nxt_serirq_oe, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147;
  wire   [10:0] state;
  wire   [8:0] nxt_state;
  wire   [2:0] start_cnt;
  wire   [4:0] irq_cnt;
  wire   [2:0] stop_cnt;
  wire   [2:0] nxt_start_cnt;
  wire   [2:0] nxt_stop_cnt;

  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(nxt_serirq_o), .CP(clk_i), .SDN(nrst_i), .Q(serirq_o) );
  DFSNQD1BWP12T30P140 irq_o_reg_0_ ( .D(n132), .CP(n146), .SDN(nrst_i), .Q(
        irq_o[0]) );
  DFSNQD1BWP12T30P140 irq_o_reg_1_ ( .D(n131), .CP(n146), .SDN(nrst_i), .Q(
        irq_o[1]) );
  DFSNQD1BWP12T30P140 irq_o_reg_2_ ( .D(n130), .CP(n146), .SDN(nrst_i), .Q(
        irq_o[2]) );
  DFSNQD1BWP12T30P140 irq_o_reg_3_ ( .D(n129), .CP(n147), .SDN(nrst_i), .Q(
        irq_o[3]) );
  DFSNQD1BWP12T30P140 irq_o_reg_4_ ( .D(n128), .CP(n147), .SDN(nrst_i), .Q(
        irq_o[4]) );
  DFSNQD1BWP12T30P140 irq_o_reg_5_ ( .D(n127), .CP(n147), .SDN(nrst_i), .Q(
        irq_o[5]) );
  DFSNQD1BWP12T30P140 irq_o_reg_6_ ( .D(n126), .CP(n147), .SDN(nrst_i), .Q(
        irq_o[6]) );
  DFSNQD1BWP12T30P140 irq_o_reg_7_ ( .D(n125), .CP(n147), .SDN(n144), .Q(
        irq_o[7]) );
  DFSNQD1BWP12T30P140 irq_o_reg_8_ ( .D(n124), .CP(n147), .SDN(n144), .Q(
        irq_o[8]) );
  DFSNQD1BWP12T30P140 irq_o_reg_9_ ( .D(n123), .CP(n147), .SDN(n144), .Q(
        irq_o[9]) );
  DFSNQD1BWP12T30P140 irq_o_reg_10_ ( .D(n122), .CP(n147), .SDN(n144), .Q(
        irq_o[10]) );
  DFSNQD1BWP12T30P140 irq_o_reg_11_ ( .D(n121), .CP(n147), .SDN(n144), .Q(
        irq_o[11]) );
  DFSNQD1BWP12T30P140 irq_o_reg_12_ ( .D(n120), .CP(n147), .SDN(n144), .Q(
        irq_o[12]) );
  DFSNQD1BWP12T30P140 irq_o_reg_13_ ( .D(n119), .CP(n147), .SDN(n144), .Q(
        irq_o[13]) );
  DFSNQD1BWP12T30P140 irq_o_reg_14_ ( .D(n118), .CP(n147), .SDN(n144), .Q(
        irq_o[14]) );
  DFSNQD1BWP12T30P140 irq_o_reg_15_ ( .D(n117), .CP(n147), .SDN(n144), .Q(
        irq_o[15]) );
  DFSNQD1BWP12T30P140 irq_o_reg_16_ ( .D(n116), .CP(n147), .SDN(n144), .Q(
        irq_o[16]) );
  DFSNQD1BWP12T30P140 irq_o_reg_17_ ( .D(n115), .CP(n147), .SDN(n144), .Q(
        irq_o[17]) );
  DFSNQD1BWP12T30P140 irq_o_reg_18_ ( .D(n114), .CP(n147), .SDN(n144), .Q(
        irq_o[18]) );
  DFSNQD1BWP12T30P140 irq_o_reg_19_ ( .D(n113), .CP(n147), .SDN(n144), .Q(
        irq_o[19]) );
  DFSNQD1BWP12T30P140 irq_o_reg_20_ ( .D(n112), .CP(n147), .SDN(n144), .Q(
        irq_o[20]) );
  DFSNQD1BWP12T30P140 irq_o_reg_21_ ( .D(n111), .CP(n147), .SDN(n144), .Q(
        irq_o[21]) );
  DFSNQD1BWP12T30P140 irq_o_reg_22_ ( .D(n110), .CP(n147), .SDN(n144), .Q(
        irq_o[22]) );
  DFSNQD1BWP12T30P140 irq_o_reg_23_ ( .D(n109), .CP(clk_i), .SDN(n144), .Q(
        irq_o[23]) );
  DFSNQD1BWP12T30P140 irq_o_reg_24_ ( .D(n108), .CP(clk_i), .SDN(n144), .Q(
        irq_o[24]) );
  DFSNQD1BWP12T30P140 irq_o_reg_25_ ( .D(n107), .CP(clk_i), .SDN(n144), .Q(
        irq_o[25]) );
  DFSNQD1BWP12T30P140 irq_o_reg_26_ ( .D(n106), .CP(clk_i), .SDN(n143), .Q(
        irq_o[26]) );
  DFSNQD1BWP12T30P140 irq_o_reg_27_ ( .D(n105), .CP(clk_i), .SDN(nrst_i), .Q(
        irq_o[27]) );
  DFSNQD1BWP12T30P140 irq_o_reg_28_ ( .D(n104), .CP(clk_i), .SDN(n143), .Q(
        irq_o[28]) );
  DFSNQD1BWP12T30P140 irq_o_reg_29_ ( .D(n103), .CP(clk_i), .SDN(n143), .Q(
        irq_o[29]) );
  DFSNQD1BWP12T30P140 irq_o_reg_30_ ( .D(n102), .CP(clk_i), .SDN(n143), .Q(
        irq_o[30]) );
  DFSNQD1BWP12T30P140 irq_o_reg_31_ ( .D(n101), .CP(clk_i), .SDN(n144), .Q(
        irq_o[31]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(nxt_state[0]), .CP(n145), .CDN(n143), 
        .Q(state[0]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_0_ ( .D(nxt_start_cnt[0]), .CP(n145), 
        .CDN(n143), .Q(start_cnt[0]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_2_ ( .D(nxt_stop_cnt[2]), .CP(n146), .CDN(
        n143), .Q(stop_cnt[2]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_1_ ( .D(nxt_stop_cnt[1]), .CP(n146), .CDN(
        n143), .Q(stop_cnt[1]) );
  DFCNQD1BWP12T30P140 current_mode_reg ( .D(n99), .CP(n146), .CDN(nrst_i), .Q(
        current_mode) );
  DFCNQD1BWP12T30P140 state_reg_10_ ( .D(n100), .CP(n145), .CDN(n143), .Q(
        state[10]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_1_ ( .D(nxt_start_cnt[1]), .CP(n145), 
        .CDN(n143), .Q(start_cnt[1]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_2_ ( .D(nxt_start_cnt[2]), .CP(n145), 
        .CDN(n143), .Q(start_cnt[2]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_0_ ( .D(nxt_stop_cnt[0]), .CP(n145), .CDN(
        n143), .Q(stop_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(nxt_state[5]), .CP(n145), .CDN(n143), 
        .Q(state[5]) );
  DFCNQD1BWP12T30P140 state_reg_6_ ( .D(nxt_state[6]), .CP(n145), .CDN(n143), 
        .Q(state[6]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n137), .CP(n146), .CDN(n143), .Q(
        irq_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n135), .CP(n146), .CDN(nrst_i), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n133), .CP(n145), .CDN(n143), .Q(
        irq_cnt[4]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n134), .CP(n146), .CDN(n143), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(nxt_state[1]), .CP(n145), .CDN(n143), 
        .Q(state[1]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(nxt_state[4]), .CP(n146), .CDN(nrst_i), 
        .Q(state[4]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(nxt_state[3]), .CP(n145), .CDN(n143), 
        .Q(state[3]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(nxt_state[7]), .CP(n146), .CDN(nrst_i), 
        .Q(state[7]) );
  DFCNQD1BWP12T30P140 state_reg_8_ ( .D(nxt_state[8]), .CP(n146), .CDN(nrst_i), 
        .Q(state[8]) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(nxt_serirq_oe), .CP(n146), .CDN(
        nrst_i), .Q(serirq_oe) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(nxt_state[2]), .CP(n145), .CDN(n143), 
        .Q(state[2]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n136), .CP(n146), .CDN(nrst_i), .Q(
        irq_cnt[1]) );
  TIELBWP12T30P140 U3 ( .ZN(n100) );
  CKBD0BWP12T30P140 U4 ( .I(nrst_i), .Z(n144) );
  INVD0BWP12T30P140 U5 ( .I(irq_cnt[2]), .ZN(n47) );
  INVD0BWP12T30P140 U6 ( .I(irq_cnt[1]), .ZN(n48) );
  INVD0BWP12T30P140 U7 ( .I(irq_cnt[0]), .ZN(n49) );
  NR3D0BWP12T30P140 U8 ( .A1(n47), .A2(n48), .A3(n49), .ZN(n2) );
  INVD0BWP12T30P140 U9 ( .I(n2), .ZN(n83) );
  INVD0BWP12T30P140 U10 ( .I(state[0]), .ZN(n22) );
  INVD0BWP12T30P140 U11 ( .I(state[6]), .ZN(n23) );
  ND2D0BWP12T30P140 U12 ( .A1(n22), .A2(n23), .ZN(n95) );
  OR4D0BWP12T30P140 U13 ( .A1(state[10]), .A2(state[1]), .A3(state[3]), .A4(
        n95), .Z(n93) );
  NR3D0BWP12T30P140 U14 ( .A1(state[4]), .A2(state[7]), .A3(n93), .ZN(n13) );
  NR2D0BWP12T30P140 U15 ( .A1(state[2]), .A2(state[8]), .ZN(n1) );
  ND3D0BWP12T30P140 U16 ( .A1(state[5]), .A2(n13), .A3(n1), .ZN(n30) );
  INVD0BWP12T30P140 U17 ( .I(irq_cnt[3]), .ZN(n60) );
  INVD0BWP12T30P140 U18 ( .I(irq_cnt[4]), .ZN(n57) );
  NR2D0BWP12T30P140 U19 ( .A1(n60), .A2(n57), .ZN(n36) );
  ND2D0BWP12T30P140 U20 ( .A1(n36), .A2(n2), .ZN(n34) );
  INVD0BWP12T30P140 U21 ( .I(n34), .ZN(n31) );
  NR2D0BWP12T30P140 U22 ( .A1(n31), .A2(n30), .ZN(n7) );
  INVD0BWP12T30P140 U23 ( .I(n7), .ZN(n14) );
  OR3D0BWP12T30P140 U24 ( .A1(state[5]), .A2(state[2]), .A3(state[8]), .Z(n92)
         );
  OR4D0BWP12T30P140 U25 ( .A1(state[10]), .A2(state[4]), .A3(state[7]), .A4(
        n92), .Z(n94) );
  NR3D0BWP12T30P140 U26 ( .A1(state[1]), .A2(state[3]), .A3(n94), .ZN(n21) );
  INVD0BWP12T30P140 U27 ( .I(n21), .ZN(n24) );
  NR3D0BWP12T30P140 U28 ( .A1(state[6]), .A2(n24), .A3(n22), .ZN(n9) );
  INVD0BWP12T30P140 U29 ( .I(n9), .ZN(n98) );
  ND2D0BWP12T30P140 U30 ( .A1(n14), .A2(n98), .ZN(n11) );
  OAI21D0BWP12T30P140 U31 ( .A1(n2), .A2(n30), .B(n11), .ZN(n4) );
  INVD0BWP12T30P140 U32 ( .I(n4), .ZN(n3) );
  OAI32D0BWP12T30P140 U33 ( .A1(irq_cnt[3]), .A2(n83), .A3(n30), .B1(n3), .B2(
        n60), .ZN(n134) );
  OAI21D0BWP12T30P140 U34 ( .A1(n7), .A2(n4), .B(irq_cnt[4]), .ZN(n5) );
  OAI31D0BWP12T30P140 U35 ( .A1(n83), .A2(n60), .A3(n14), .B(n5), .ZN(n133) );
  NR2D0BWP12T30P140 U36 ( .A1(n49), .A2(irq_cnt[1]), .ZN(n38) );
  OAI21D0BWP12T30P140 U37 ( .A1(irq_cnt[0]), .A2(n14), .B(n11), .ZN(n6) );
  AO22D0BWP12T30P140 U38 ( .A1(n7), .A2(n38), .B1(irq_cnt[1]), .B2(n6), .Z(
        n136) );
  AOI21D0BWP12T30P140 U39 ( .A1(n7), .A2(n48), .B(n6), .ZN(n8) );
  ND3D0BWP12T30P140 U40 ( .A1(n47), .A2(irq_cnt[0]), .A3(irq_cnt[1]), .ZN(n72)
         );
  OAI22D0BWP12T30P140 U41 ( .A1(n8), .A2(n47), .B1(n30), .B2(n72), .ZN(n135)
         );
  ND3D0BWP12T30P140 U42 ( .A1(n22), .A2(n21), .A3(state[6]), .ZN(n96) );
  NR2D0BWP12T30P140 U43 ( .A1(stop_cnt[0]), .A2(n96), .ZN(nxt_stop_cnt[0]) );
  NR2D0BWP12T30P140 U44 ( .A1(start_cnt[0]), .A2(n98), .ZN(nxt_start_cnt[0])
         );
  INVD0BWP12T30P140 U45 ( .I(start_cnt[1]), .ZN(n90) );
  ND2D0BWP12T30P140 U46 ( .A1(n9), .A2(start_cnt[0]), .ZN(n89) );
  AOI21D0BWP12T30P140 U47 ( .A1(n9), .A2(n90), .B(nxt_start_cnt[0]), .ZN(n28)
         );
  INVD0BWP12T30P140 U48 ( .I(start_cnt[2]), .ZN(n88) );
  OAI32D0BWP12T30P140 U49 ( .A1(start_cnt[2]), .A2(n90), .A3(n89), .B1(n28), 
        .B2(n88), .ZN(nxt_start_cnt[2]) );
  INR4D0BWP12T30P140 U50 ( .A1(state[4]), .B1(state[7]), .B2(n93), .B3(n92), 
        .ZN(nxt_state[5]) );
  ND2D0BWP12T30P140 U51 ( .A1(n38), .A2(n47), .ZN(n67) );
  ND2D0BWP12T30P140 U52 ( .A1(serirq_i), .A2(nxt_state[5]), .ZN(n33) );
  INVD0BWP12T30P140 U53 ( .I(n33), .ZN(n59) );
  ND3D0BWP12T30P140 U54 ( .A1(n57), .A2(n60), .A3(n59), .ZN(n52) );
  ND3D0BWP12T30P140 U55 ( .A1(n57), .A2(n60), .A3(nxt_state[5]), .ZN(n50) );
  OAI21D0BWP12T30P140 U56 ( .A1(n67), .A2(n50), .B(irq_o[1]), .ZN(n10) );
  OAI21D0BWP12T30P140 U57 ( .A1(n67), .A2(n52), .B(n10), .ZN(n131) );
  AOI22D0BWP12T30P140 U58 ( .A1(irq_cnt[0]), .A2(n11), .B1(n14), .B2(n49), 
        .ZN(n137) );
  INVD0BWP12T30P140 U59 ( .I(current_mode), .ZN(n142) );
  NR4D0BWP12T30P140 U60 ( .A1(serirq_i), .A2(n24), .A3(n95), .A4(n142), .ZN(
        n138) );
  AOI21D0BWP12T30P140 U61 ( .A1(start_cnt[1]), .A2(nxt_start_cnt[0]), .B(n138), 
        .ZN(n12) );
  OAI21D0BWP12T30P140 U62 ( .A1(start_cnt[1]), .A2(n89), .B(n12), .ZN(
        nxt_start_cnt[1]) );
  INVD0BWP12T30P140 U63 ( .I(state[2]), .ZN(n15) );
  IND2D1BWP12T30P140 U64 ( .A1(state[5]), .B1(n13), .ZN(n139) );
  OAI31D0BWP12T30P140 U65 ( .A1(state[8]), .A2(n15), .A3(n139), .B(n14), .ZN(
        nxt_state[3]) );
  ND3D0BWP12T30P140 U66 ( .A1(n49), .A2(n47), .A3(irq_cnt[1]), .ZN(n79) );
  OAI21D0BWP12T30P140 U67 ( .A1(n79), .A2(n50), .B(irq_o[2]), .ZN(n16) );
  OAI21D0BWP12T30P140 U68 ( .A1(n79), .A2(n52), .B(n16), .ZN(n130) );
  INVD0BWP12T30P140 U69 ( .I(stop_cnt[0]), .ZN(n18) );
  INVD0BWP12T30P140 U70 ( .I(stop_cnt[1]), .ZN(n17) );
  NR2D0BWP12T30P140 U71 ( .A1(n18), .A2(n17), .ZN(n19) );
  AOI211D0BWP12T30P140 U72 ( .A1(n18), .A2(n17), .B(n19), .C(n96), .ZN(
        nxt_stop_cnt[1]) );
  NR2D0BWP12T30P140 U73 ( .A1(stop_cnt[2]), .A2(n19), .ZN(n29) );
  AOI211D0BWP12T30P140 U74 ( .A1(stop_cnt[2]), .A2(n19), .B(n29), .C(n96), 
        .ZN(nxt_stop_cnt[2]) );
  INVD0BWP12T30P140 U75 ( .I(serirq_i), .ZN(n26) );
  AO21D0BWP12T30P140 U76 ( .A1(n26), .A2(current_mode), .B(n95), .Z(n20) );
  OAI211D0BWP12T30P140 U77 ( .A1(n23), .A2(n22), .B(n21), .C(n20), .ZN(
        nxt_serirq_o) );
  INVD0BWP12T30P140 U78 ( .I(serirq_mode_i), .ZN(n141) );
  NR2D0BWP12T30P140 U79 ( .A1(n95), .A2(n24), .ZN(n25) );
  OAI31D0BWP12T30P140 U80 ( .A1(n142), .A2(n26), .A3(n141), .B(n25), .ZN(n27)
         );
  OAI211D0BWP12T30P140 U81 ( .A1(start_cnt[2]), .A2(n98), .B(n28), .C(n27), 
        .ZN(nxt_state[0]) );
  OA221D0BWP12T30P140 U82 ( .A1(n141), .A2(stop_cnt[0]), .B1(serirq_mode_i), 
        .B2(stop_cnt[1]), .C(n29), .Z(n91) );
  OAI22D0BWP12T30P140 U83 ( .A1(n91), .A2(n96), .B1(n34), .B2(n30), .ZN(
        nxt_state[6]) );
  IOA21D0BWP12T30P140 U84 ( .A1(n31), .A2(nxt_state[5]), .B(irq_o[31]), .ZN(
        n32) );
  OAI21D0BWP12T30P140 U85 ( .A1(n34), .A2(n33), .B(n32), .ZN(n101) );
  ND3D0BWP12T30P140 U86 ( .A1(n49), .A2(n48), .A3(irq_cnt[2]), .ZN(n87) );
  OAI21D0BWP12T30P140 U87 ( .A1(n87), .A2(n50), .B(irq_o[4]), .ZN(n35) );
  OAI21D0BWP12T30P140 U88 ( .A1(n87), .A2(n52), .B(n35), .ZN(n128) );
  ND3D0BWP12T30P140 U89 ( .A1(n49), .A2(irq_cnt[2]), .A3(irq_cnt[1]), .ZN(n77)
         );
  ND2D0BWP12T30P140 U90 ( .A1(n36), .A2(n59), .ZN(n56) );
  ND2D0BWP12T30P140 U91 ( .A1(n36), .A2(nxt_state[5]), .ZN(n54) );
  OAI21D0BWP12T30P140 U92 ( .A1(n77), .A2(n54), .B(irq_o[30]), .ZN(n37) );
  OAI21D0BWP12T30P140 U93 ( .A1(n77), .A2(n56), .B(n37), .ZN(n102) );
  ND2D0BWP12T30P140 U94 ( .A1(irq_cnt[2]), .A2(n38), .ZN(n74) );
  OAI21D0BWP12T30P140 U95 ( .A1(n74), .A2(n50), .B(irq_o[5]), .ZN(n39) );
  OAI21D0BWP12T30P140 U96 ( .A1(n74), .A2(n52), .B(n39), .ZN(n127) );
  OAI21D0BWP12T30P140 U97 ( .A1(n72), .A2(n50), .B(irq_o[3]), .ZN(n40) );
  OAI21D0BWP12T30P140 U98 ( .A1(n72), .A2(n52), .B(n40), .ZN(n129) );
  OAI21D0BWP12T30P140 U99 ( .A1(n74), .A2(n54), .B(irq_o[29]), .ZN(n41) );
  OAI21D0BWP12T30P140 U100 ( .A1(n74), .A2(n56), .B(n41), .ZN(n103) );
  OAI21D0BWP12T30P140 U101 ( .A1(n87), .A2(n54), .B(irq_o[28]), .ZN(n42) );
  OAI21D0BWP12T30P140 U102 ( .A1(n87), .A2(n56), .B(n42), .ZN(n104) );
  OAI21D0BWP12T30P140 U103 ( .A1(n77), .A2(n50), .B(irq_o[6]), .ZN(n43) );
  OAI21D0BWP12T30P140 U104 ( .A1(n77), .A2(n52), .B(n43), .ZN(n126) );
  OAI21D0BWP12T30P140 U105 ( .A1(n72), .A2(n54), .B(irq_o[27]), .ZN(n44) );
  OAI21D0BWP12T30P140 U106 ( .A1(n72), .A2(n56), .B(n44), .ZN(n105) );
  OAI21D0BWP12T30P140 U107 ( .A1(n83), .A2(n50), .B(irq_o[7]), .ZN(n45) );
  OAI21D0BWP12T30P140 U108 ( .A1(n83), .A2(n52), .B(n45), .ZN(n125) );
  OAI21D0BWP12T30P140 U109 ( .A1(n79), .A2(n54), .B(irq_o[26]), .ZN(n46) );
  OAI21D0BWP12T30P140 U110 ( .A1(n79), .A2(n56), .B(n46), .ZN(n106) );
  ND3D0BWP12T30P140 U111 ( .A1(n49), .A2(n48), .A3(n47), .ZN(n63) );
  OAI21D0BWP12T30P140 U112 ( .A1(n63), .A2(n50), .B(irq_o[0]), .ZN(n51) );
  OAI21D0BWP12T30P140 U113 ( .A1(n63), .A2(n52), .B(n51), .ZN(n132) );
  OAI21D0BWP12T30P140 U114 ( .A1(n67), .A2(n54), .B(irq_o[25]), .ZN(n53) );
  OAI21D0BWP12T30P140 U115 ( .A1(n67), .A2(n56), .B(n53), .ZN(n107) );
  OAI21D0BWP12T30P140 U116 ( .A1(n63), .A2(n54), .B(irq_o[24]), .ZN(n55) );
  OAI21D0BWP12T30P140 U117 ( .A1(n63), .A2(n56), .B(n55), .ZN(n108) );
  ND3D0BWP12T30P140 U118 ( .A1(n57), .A2(n59), .A3(irq_cnt[3]), .ZN(n82) );
  ND3D0BWP12T30P140 U119 ( .A1(n57), .A2(nxt_state[5]), .A3(irq_cnt[3]), .ZN(
        n80) );
  OAI21D0BWP12T30P140 U120 ( .A1(n63), .A2(n80), .B(irq_o[8]), .ZN(n58) );
  OAI21D0BWP12T30P140 U121 ( .A1(n63), .A2(n82), .B(n58), .ZN(n124) );
  ND3D0BWP12T30P140 U122 ( .A1(n60), .A2(n59), .A3(irq_cnt[4]), .ZN(n86) );
  ND3D0BWP12T30P140 U123 ( .A1(n60), .A2(nxt_state[5]), .A3(irq_cnt[4]), .ZN(
        n84) );
  OAI21D0BWP12T30P140 U124 ( .A1(n83), .A2(n84), .B(irq_o[23]), .ZN(n61) );
  OAI21D0BWP12T30P140 U125 ( .A1(n83), .A2(n86), .B(n61), .ZN(n109) );
  OAI21D0BWP12T30P140 U126 ( .A1(n63), .A2(n84), .B(irq_o[16]), .ZN(n62) );
  OAI21D0BWP12T30P140 U127 ( .A1(n63), .A2(n86), .B(n62), .ZN(n116) );
  OAI21D0BWP12T30P140 U128 ( .A1(n67), .A2(n80), .B(irq_o[9]), .ZN(n64) );
  OAI21D0BWP12T30P140 U129 ( .A1(n67), .A2(n82), .B(n64), .ZN(n123) );
  OAI21D0BWP12T30P140 U130 ( .A1(n77), .A2(n84), .B(irq_o[22]), .ZN(n65) );
  OAI21D0BWP12T30P140 U131 ( .A1(n77), .A2(n86), .B(n65), .ZN(n110) );
  OAI21D0BWP12T30P140 U132 ( .A1(n67), .A2(n84), .B(irq_o[17]), .ZN(n66) );
  OAI21D0BWP12T30P140 U133 ( .A1(n67), .A2(n86), .B(n66), .ZN(n115) );
  OAI21D0BWP12T30P140 U134 ( .A1(n87), .A2(n80), .B(irq_o[12]), .ZN(n68) );
  OAI21D0BWP12T30P140 U135 ( .A1(n87), .A2(n82), .B(n68), .ZN(n120) );
  OAI21D0BWP12T30P140 U136 ( .A1(n72), .A2(n84), .B(irq_o[19]), .ZN(n69) );
  OAI21D0BWP12T30P140 U137 ( .A1(n72), .A2(n86), .B(n69), .ZN(n113) );
  OAI21D0BWP12T30P140 U138 ( .A1(n74), .A2(n84), .B(irq_o[21]), .ZN(n70) );
  OAI21D0BWP12T30P140 U139 ( .A1(n74), .A2(n86), .B(n70), .ZN(n111) );
  OAI21D0BWP12T30P140 U140 ( .A1(n72), .A2(n80), .B(irq_o[11]), .ZN(n71) );
  OAI21D0BWP12T30P140 U141 ( .A1(n72), .A2(n82), .B(n71), .ZN(n121) );
  OAI21D0BWP12T30P140 U142 ( .A1(n74), .A2(n80), .B(irq_o[13]), .ZN(n73) );
  OAI21D0BWP12T30P140 U143 ( .A1(n74), .A2(n82), .B(n73), .ZN(n119) );
  OAI21D0BWP12T30P140 U144 ( .A1(n79), .A2(n80), .B(irq_o[10]), .ZN(n75) );
  OAI21D0BWP12T30P140 U145 ( .A1(n79), .A2(n82), .B(n75), .ZN(n122) );
  OAI21D0BWP12T30P140 U146 ( .A1(n77), .A2(n80), .B(irq_o[14]), .ZN(n76) );
  OAI21D0BWP12T30P140 U147 ( .A1(n77), .A2(n82), .B(n76), .ZN(n118) );
  OAI21D0BWP12T30P140 U148 ( .A1(n79), .A2(n84), .B(irq_o[18]), .ZN(n78) );
  OAI21D0BWP12T30P140 U149 ( .A1(n79), .A2(n86), .B(n78), .ZN(n114) );
  OAI21D0BWP12T30P140 U150 ( .A1(n83), .A2(n80), .B(irq_o[15]), .ZN(n81) );
  OAI21D0BWP12T30P140 U151 ( .A1(n83), .A2(n82), .B(n81), .ZN(n117) );
  OAI21D0BWP12T30P140 U152 ( .A1(n87), .A2(n84), .B(irq_o[20]), .ZN(n85) );
  OAI21D0BWP12T30P140 U153 ( .A1(n87), .A2(n86), .B(n85), .ZN(n112) );
  CKBD0BWP12T30P140 U154 ( .I(clk_i), .Z(n147) );
  CKBD0BWP12T30P140 U155 ( .I(clk_i), .Z(n145) );
  CKBD0BWP12T30P140 U156 ( .I(clk_i), .Z(n146) );
  CKBD0BWP12T30P140 U157 ( .I(nrst_i), .Z(n143) );
  NR3D0BWP12T30P140 U158 ( .A1(n90), .A2(n89), .A3(n88), .ZN(nxt_state[1]) );
  INR2D1BWP12T30P140 U159 ( .A1(n91), .B1(n96), .ZN(nxt_state[7]) );
  INR4D0BWP12T30P140 U160 ( .A1(state[7]), .B1(state[4]), .B2(n93), .B3(n92), 
        .ZN(nxt_state[8]) );
  INR4D0BWP12T30P140 U161 ( .A1(state[3]), .B1(state[1]), .B2(n95), .B3(n94), 
        .ZN(nxt_state[4]) );
  INR4D0BWP12T30P140 U162 ( .A1(state[1]), .B1(state[3]), .B2(n95), .B3(n94), 
        .ZN(nxt_state[2]) );
  AOI32D0BWP12T30P140 U163 ( .A1(state[8]), .A2(serirq_oe), .A3(state[2]), 
        .B1(n139), .B2(serirq_oe), .ZN(n97) );
  IND4D1BWP12T30P140 U164 ( .A1(n138), .B1(n98), .B2(n97), .B3(n96), .ZN(
        nxt_serirq_oe) );
  INR3D1BWP12T30P140 U165 ( .A1(state[8]), .B1(state[2]), .B2(n139), .ZN(n140)
         );
  MUX2ND0BWP12T30P140 U166 ( .I0(n142), .I1(n141), .S(n140), .ZN(n99) );
endmodule


module serirq_slave ( clk_i, nrst_i, irq_i, serirq_o, serirq_i, serirq_oe );
  input [31:0] irq_i;
  input clk_i, nrst_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   serirq_mode, found_stop, found_start, nxt_state_9, nxt_serirq_o,
         nxt_serirq_oe, N103, N104, N105, N106, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260;
  wire   [31:0] current_irq;
  wire   [9:0] state;
  wire   [5:3] nxt_state;
  wire   [4:0] irq_cnt;
  wire   [3:0] stop_clk_cnt;

  DFCSNQD1BWP12T30P140 current_irq_reg_0_ ( .D(n242), .CP(n259), .CDN(n147), 
        .SDN(n148), .Q(current_irq[0]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_31_ ( .D(n241), .CP(n259), .CDN(n149), 
        .SDN(n150), .Q(current_irq[31]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_30_ ( .D(n240), .CP(n259), .CDN(n151), 
        .SDN(n152), .Q(current_irq[30]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_29_ ( .D(n239), .CP(n259), .CDN(n153), 
        .SDN(n154), .Q(current_irq[29]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_28_ ( .D(n238), .CP(n259), .CDN(n155), 
        .SDN(n156), .Q(current_irq[28]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_27_ ( .D(n237), .CP(n259), .CDN(n157), 
        .SDN(n158), .Q(current_irq[27]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_26_ ( .D(n236), .CP(n259), .CDN(n159), 
        .SDN(n160), .Q(current_irq[26]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_25_ ( .D(n235), .CP(n259), .CDN(n161), 
        .SDN(n162), .Q(current_irq[25]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_24_ ( .D(n234), .CP(n259), .CDN(n163), 
        .SDN(n164), .Q(current_irq[24]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_23_ ( .D(n233), .CP(n259), .CDN(n165), 
        .SDN(n166), .Q(current_irq[23]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_22_ ( .D(n232), .CP(n259), .CDN(n167), 
        .SDN(n168), .Q(current_irq[22]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_21_ ( .D(n231), .CP(n260), .CDN(n169), 
        .SDN(n170), .Q(current_irq[21]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_20_ ( .D(n230), .CP(n260), .CDN(n171), 
        .SDN(n172), .Q(current_irq[20]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_19_ ( .D(n229), .CP(n260), .CDN(n173), 
        .SDN(n174), .Q(current_irq[19]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_18_ ( .D(n228), .CP(n260), .CDN(n175), 
        .SDN(n176), .Q(current_irq[18]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_17_ ( .D(n227), .CP(n260), .CDN(n177), 
        .SDN(n178), .Q(current_irq[17]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_16_ ( .D(n226), .CP(n260), .CDN(n179), 
        .SDN(n180), .Q(current_irq[16]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_15_ ( .D(n225), .CP(n260), .CDN(n181), 
        .SDN(n182), .Q(current_irq[15]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_14_ ( .D(n224), .CP(n260), .CDN(n183), 
        .SDN(n184), .Q(current_irq[14]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_13_ ( .D(n223), .CP(n260), .CDN(n185), 
        .SDN(n186), .Q(current_irq[13]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_12_ ( .D(n222), .CP(n260), .CDN(n187), 
        .SDN(n188), .Q(current_irq[12]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_11_ ( .D(n221), .CP(n260), .CDN(n189), 
        .SDN(n190), .Q(current_irq[11]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_10_ ( .D(n220), .CP(n260), .CDN(n191), 
        .SDN(n192), .Q(current_irq[10]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_9_ ( .D(n219), .CP(n260), .CDN(n193), 
        .SDN(n194), .Q(current_irq[9]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_8_ ( .D(n218), .CP(n260), .CDN(n195), 
        .SDN(n196), .Q(current_irq[8]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_7_ ( .D(n217), .CP(n260), .CDN(n197), 
        .SDN(n198), .Q(current_irq[7]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_6_ ( .D(n216), .CP(n260), .CDN(n199), 
        .SDN(n200), .Q(current_irq[6]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_5_ ( .D(n215), .CP(n260), .CDN(n201), 
        .SDN(n202), .Q(current_irq[5]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_4_ ( .D(n214), .CP(n260), .CDN(n203), 
        .SDN(n204), .Q(current_irq[4]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_3_ ( .D(n213), .CP(n260), .CDN(n205), 
        .SDN(n206), .Q(current_irq[3]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_2_ ( .D(n212), .CP(n259), .CDN(n207), 
        .SDN(n208), .Q(current_irq[2]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_1_ ( .D(n211), .CP(n259), .CDN(n209), 
        .SDN(n210), .Q(current_irq[1]) );
  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(nxt_serirq_o), .CP(n259), .SDN(n257), 
        .Q(serirq_o) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(nxt_serirq_oe), .CP(n259), .CDN(n257), 
        .Q(serirq_oe) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_2_ ( .D(N105), .CP(n258), .CDN(n257), 
        .Q(stop_clk_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(nxt_state[5]), .CP(n258), .CDN(n257), 
        .Q(state[5]) );
  DFCNQD1BWP12T30P140 serirq_mode_reg ( .D(n248), .CP(n258), .CDN(n257), .Q(
        serirq_mode) );
  DFCNQD1BWP12T30P140 found_stop_reg ( .D(n145), .CP(n259), .CDN(n257), .Q(
        found_stop) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_3_ ( .D(N106), .CP(n258), .CDN(n257), 
        .Q(stop_clk_cnt[3]) );
  DFCNQD1BWP12T30P140 state_reg_9_ ( .D(nxt_state_9), .CP(n258), .CDN(n257), 
        .Q(state[9]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n246), .CP(n259), .CDN(n257), .Q(
        irq_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n144), .CP(n258), .CDN(n257), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n244), .CP(n259), .CDN(n257), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(nxt_state[4]), .CP(n258), .CDN(n257), 
        .Q(state[4]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_1_ ( .D(N104), .CP(n258), .CDN(n257), 
        .Q(stop_clk_cnt[1]) );
  DFCNQD1BWP12T30P140 found_start_reg ( .D(n146), .CP(n259), .CDN(n257), .Q(
        found_start) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n247), .CP(n258), .CDN(n257), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_0_ ( .D(N103), .CP(n258), .CDN(n257), 
        .Q(stop_clk_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(nxt_state[3]), .CP(n258), .CDN(n257), 
        .Q(state[3]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n245), .CP(n258), .CDN(n257), .Q(
        irq_cnt[1]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n243), .CP(n259), .CDN(n257), .Q(
        irq_cnt[4]) );
  CKBD0BWP12T30P140 U3 ( .I(n249), .Z(n254) );
  TIELBWP12T30P140 U4 ( .ZN(n144) );
  NR3D0BWP12T30P140 U5 ( .A1(state[9]), .A2(state[0]), .A3(state[4]), .ZN(n67)
         );
  INVD0BWP12T30P140 U6 ( .I(state[5]), .ZN(n90) );
  ND2D0BWP12T30P140 U7 ( .A1(n67), .A2(n90), .ZN(n83) );
  NR2D0BWP12T30P140 U8 ( .A1(state[3]), .A2(n83), .ZN(n75) );
  INVD0BWP12T30P140 U9 ( .I(irq_i[5]), .ZN(n119) );
  INVD0BWP12T30P140 U10 ( .I(irq_i[1]), .ZN(n116) );
  OAI22D0BWP12T30P140 U11 ( .A1(current_irq[5]), .A2(n119), .B1(n116), .B2(
        current_irq[1]), .ZN(n1) );
  AOI221D0BWP12T30P140 U12 ( .A1(n119), .A2(current_irq[5]), .B1(n116), .B2(
        current_irq[1]), .C(n1), .ZN(n8) );
  INVD0BWP12T30P140 U13 ( .I(irq_i[7]), .ZN(n121) );
  INVD0BWP12T30P140 U14 ( .I(irq_i[3]), .ZN(n117) );
  OAI22D0BWP12T30P140 U15 ( .A1(current_irq[3]), .A2(n117), .B1(current_irq[7]), .B2(n121), .ZN(n2) );
  AOI221D0BWP12T30P140 U16 ( .A1(n121), .A2(current_irq[7]), .B1(n117), .B2(
        current_irq[3]), .C(n2), .ZN(n7) );
  INVD0BWP12T30P140 U17 ( .I(irq_i[2]), .ZN(n115) );
  INVD0BWP12T30P140 U18 ( .I(irq_i[4]), .ZN(n118) );
  OAI22D0BWP12T30P140 U19 ( .A1(current_irq[4]), .A2(n118), .B1(current_irq[2]), .B2(n115), .ZN(n3) );
  AOI221D0BWP12T30P140 U20 ( .A1(n115), .A2(current_irq[2]), .B1(n118), .B2(
        current_irq[4]), .C(n3), .ZN(n6) );
  INVD0BWP12T30P140 U21 ( .I(irq_i[8]), .ZN(n123) );
  INVD0BWP12T30P140 U22 ( .I(irq_i[6]), .ZN(n120) );
  OAI22D0BWP12T30P140 U23 ( .A1(current_irq[6]), .A2(n120), .B1(current_irq[8]), .B2(n123), .ZN(n4) );
  AOI221D0BWP12T30P140 U24 ( .A1(n123), .A2(current_irq[8]), .B1(n120), .B2(
        current_irq[6]), .C(n4), .ZN(n5) );
  ND4D0BWP12T30P140 U25 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n36) );
  INVD0BWP12T30P140 U26 ( .I(irq_i[16]), .ZN(n131) );
  INVD0BWP12T30P140 U27 ( .I(irq_i[13]), .ZN(n128) );
  OAI22D0BWP12T30P140 U28 ( .A1(current_irq[13]), .A2(n128), .B1(
        current_irq[16]), .B2(n131), .ZN(n9) );
  AOI221D0BWP12T30P140 U29 ( .A1(n131), .A2(current_irq[16]), .B1(n128), .B2(
        current_irq[13]), .C(n9), .ZN(n16) );
  INVD0BWP12T30P140 U30 ( .I(irq_i[9]), .ZN(n124) );
  INVD0BWP12T30P140 U31 ( .I(irq_i[15]), .ZN(n130) );
  OAI22D0BWP12T30P140 U32 ( .A1(current_irq[15]), .A2(n130), .B1(
        current_irq[9]), .B2(n124), .ZN(n10) );
  AOI221D0BWP12T30P140 U33 ( .A1(n124), .A2(current_irq[9]), .B1(n130), .B2(
        current_irq[15]), .C(n10), .ZN(n15) );
  INVD0BWP12T30P140 U34 ( .I(irq_i[11]), .ZN(n126) );
  INVD0BWP12T30P140 U35 ( .I(irq_i[10]), .ZN(n125) );
  OAI22D0BWP12T30P140 U36 ( .A1(current_irq[10]), .A2(n125), .B1(
        current_irq[11]), .B2(n126), .ZN(n11) );
  AOI221D0BWP12T30P140 U37 ( .A1(n126), .A2(current_irq[11]), .B1(n125), .B2(
        current_irq[10]), .C(n11), .ZN(n14) );
  INVD0BWP12T30P140 U38 ( .I(irq_i[12]), .ZN(n127) );
  INVD0BWP12T30P140 U39 ( .I(irq_i[14]), .ZN(n129) );
  OAI22D0BWP12T30P140 U40 ( .A1(current_irq[14]), .A2(n129), .B1(
        current_irq[12]), .B2(n127), .ZN(n12) );
  AOI221D0BWP12T30P140 U41 ( .A1(n127), .A2(current_irq[12]), .B1(n129), .B2(
        current_irq[14]), .C(n12), .ZN(n13) );
  ND4D0BWP12T30P140 U42 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .ZN(n35) );
  INVD0BWP12T30P140 U43 ( .I(irq_i[21]), .ZN(n137) );
  INVD0BWP12T30P140 U44 ( .I(irq_i[17]), .ZN(n132) );
  OAI22D0BWP12T30P140 U45 ( .A1(current_irq[17]), .A2(n132), .B1(
        current_irq[21]), .B2(n137), .ZN(n17) );
  AOI221D0BWP12T30P140 U46 ( .A1(n137), .A2(current_irq[21]), .B1(n132), .B2(
        current_irq[17]), .C(n17), .ZN(n24) );
  INVD0BWP12T30P140 U47 ( .I(irq_i[19]), .ZN(n135) );
  INVD0BWP12T30P140 U48 ( .I(irq_i[18]), .ZN(n134) );
  OAI22D0BWP12T30P140 U49 ( .A1(current_irq[18]), .A2(n134), .B1(
        current_irq[19]), .B2(n135), .ZN(n18) );
  AOI221D0BWP12T30P140 U50 ( .A1(n135), .A2(current_irq[19]), .B1(n134), .B2(
        current_irq[18]), .C(n18), .ZN(n23) );
  INVD0BWP12T30P140 U51 ( .I(irq_i[22]), .ZN(n138) );
  INVD0BWP12T30P140 U52 ( .I(irq_i[24]), .ZN(n140) );
  OAI22D0BWP12T30P140 U53 ( .A1(current_irq[24]), .A2(n140), .B1(
        current_irq[22]), .B2(n138), .ZN(n19) );
  AOI221D0BWP12T30P140 U54 ( .A1(n138), .A2(current_irq[22]), .B1(n140), .B2(
        current_irq[24]), .C(n19), .ZN(n22) );
  INVD0BWP12T30P140 U55 ( .I(irq_i[20]), .ZN(n136) );
  INVD0BWP12T30P140 U56 ( .I(irq_i[23]), .ZN(n139) );
  OAI22D0BWP12T30P140 U57 ( .A1(current_irq[23]), .A2(n139), .B1(
        current_irq[20]), .B2(n136), .ZN(n20) );
  AOI221D0BWP12T30P140 U58 ( .A1(n136), .A2(current_irq[20]), .B1(n139), .B2(
        current_irq[23]), .C(n20), .ZN(n21) );
  ND4D0BWP12T30P140 U59 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .ZN(n34) );
  INVD0BWP12T30P140 U60 ( .I(irq_i[0]), .ZN(n255) );
  INVD0BWP12T30P140 U61 ( .I(irq_i[29]), .ZN(n251) );
  OAI22D0BWP12T30P140 U62 ( .A1(current_irq[29]), .A2(n251), .B1(
        current_irq[0]), .B2(n255), .ZN(n25) );
  AOI221D0BWP12T30P140 U63 ( .A1(n255), .A2(current_irq[0]), .B1(n251), .B2(
        current_irq[29]), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U64 ( .I(irq_i[25]), .ZN(n141) );
  INVD0BWP12T30P140 U65 ( .I(irq_i[27]), .ZN(n143) );
  OAI22D0BWP12T30P140 U66 ( .A1(current_irq[27]), .A2(n143), .B1(
        current_irq[25]), .B2(n141), .ZN(n26) );
  AOI221D0BWP12T30P140 U67 ( .A1(n141), .A2(current_irq[25]), .B1(n143), .B2(
        current_irq[27]), .C(n26), .ZN(n31) );
  INVD0BWP12T30P140 U68 ( .I(irq_i[26]), .ZN(n142) );
  INVD0BWP12T30P140 U69 ( .I(irq_i[30]), .ZN(n252) );
  OAI22D0BWP12T30P140 U70 ( .A1(current_irq[30]), .A2(n252), .B1(
        current_irq[26]), .B2(n142), .ZN(n27) );
  AOI221D0BWP12T30P140 U71 ( .A1(n142), .A2(current_irq[26]), .B1(n252), .B2(
        current_irq[30]), .C(n27), .ZN(n30) );
  INVD0BWP12T30P140 U72 ( .I(irq_i[28]), .ZN(n250) );
  INVD0BWP12T30P140 U73 ( .I(irq_i[31]), .ZN(n253) );
  OAI22D0BWP12T30P140 U74 ( .A1(current_irq[31]), .A2(n253), .B1(
        current_irq[28]), .B2(n250), .ZN(n28) );
  AOI221D0BWP12T30P140 U75 ( .A1(n250), .A2(current_irq[28]), .B1(n253), .B2(
        current_irq[31]), .C(n28), .ZN(n29) );
  ND4D0BWP12T30P140 U76 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  NR4D0BWP12T30P140 U77 ( .A1(n36), .A2(n35), .A3(n34), .A4(n33), .ZN(n37) );
  INR2D1BWP12T30P140 U78 ( .A1(serirq_mode), .B1(n37), .ZN(n100) );
  ND2D0BWP12T30P140 U79 ( .A1(n75), .A2(n100), .ZN(n70) );
  INVD0BWP12T30P140 U80 ( .I(n83), .ZN(n99) );
  INVD0BWP12T30P140 U81 ( .I(irq_cnt[3]), .ZN(n78) );
  NR2D0BWP12T30P140 U82 ( .A1(irq_cnt[2]), .A2(irq_cnt[1]), .ZN(n61) );
  INVD0BWP12T30P140 U83 ( .I(irq_cnt[1]), .ZN(n77) );
  NR2D0BWP12T30P140 U84 ( .A1(n77), .A2(irq_cnt[2]), .ZN(n85) );
  INVD0BWP12T30P140 U85 ( .I(n85), .ZN(n58) );
  INVD0BWP12T30P140 U86 ( .I(irq_cnt[2]), .ZN(n88) );
  NR2D0BWP12T30P140 U87 ( .A1(irq_cnt[1]), .A2(n88), .ZN(n84) );
  ND2D0BWP12T30P140 U88 ( .A1(irq_cnt[2]), .A2(irq_cnt[1]), .ZN(n56) );
  INVD0BWP12T30P140 U89 ( .I(n56), .ZN(n71) );
  AOI22D0BWP12T30P140 U90 ( .A1(irq_i[29]), .A2(n84), .B1(irq_i[31]), .B2(n71), 
        .ZN(n38) );
  OAI211D0BWP12T30P140 U91 ( .A1(n143), .A2(n58), .B(irq_cnt[4]), .C(n38), 
        .ZN(n39) );
  AOI21D0BWP12T30P140 U92 ( .A1(irq_i[25]), .A2(n61), .B(n39), .ZN(n49) );
  AOI22D0BWP12T30P140 U93 ( .A1(irq_i[13]), .A2(n84), .B1(irq_i[9]), .B2(n61), 
        .ZN(n40) );
  OAI21D0BWP12T30P140 U94 ( .A1(n130), .A2(n56), .B(n40), .ZN(n41) );
  AOI211D0BWP12T30P140 U95 ( .A1(irq_i[11]), .A2(n85), .B(irq_cnt[4]), .C(n41), 
        .ZN(n48) );
  AOI21D0BWP12T30P140 U96 ( .A1(irq_i[3]), .A2(n85), .B(irq_cnt[4]), .ZN(n43)
         );
  AOI22D0BWP12T30P140 U97 ( .A1(irq_i[5]), .A2(n84), .B1(irq_i[1]), .B2(n61), 
        .ZN(n42) );
  OAI211D0BWP12T30P140 U98 ( .A1(n121), .A2(n56), .B(n43), .C(n42), .ZN(n46)
         );
  AOI22D0BWP12T30P140 U99 ( .A1(irq_i[17]), .A2(n61), .B1(irq_i[23]), .B2(n71), 
        .ZN(n44) );
  OAI211D0BWP12T30P140 U100 ( .A1(n135), .A2(n58), .B(irq_cnt[4]), .C(n44), 
        .ZN(n45) );
  AOI32D0BWP12T30P140 U101 ( .A1(n84), .A2(n46), .A3(irq_i[21]), .B1(n45), 
        .B2(n46), .ZN(n47) );
  OAI32D0BWP12T30P140 U102 ( .A1(n78), .A2(n49), .A3(n48), .B1(irq_cnt[3]), 
        .B2(n47), .ZN(n66) );
  AOI22D0BWP12T30P140 U103 ( .A1(irq_i[30]), .A2(n71), .B1(irq_i[28]), .B2(n84), .ZN(n50) );
  OAI211D0BWP12T30P140 U104 ( .A1(n142), .A2(n58), .B(irq_cnt[4]), .C(n50), 
        .ZN(n51) );
  AOI21D0BWP12T30P140 U105 ( .A1(irq_i[24]), .A2(n61), .B(n51), .ZN(n64) );
  AOI22D0BWP12T30P140 U106 ( .A1(irq_i[8]), .A2(n61), .B1(irq_i[12]), .B2(n84), 
        .ZN(n52) );
  OAI21D0BWP12T30P140 U107 ( .A1(n129), .A2(n56), .B(n52), .ZN(n53) );
  AOI211D0BWP12T30P140 U108 ( .A1(irq_i[10]), .A2(n85), .B(irq_cnt[4]), .C(n53), .ZN(n63) );
  AOI21D0BWP12T30P140 U109 ( .A1(irq_i[2]), .A2(n85), .B(irq_cnt[4]), .ZN(n55)
         );
  AOI22D0BWP12T30P140 U110 ( .A1(irq_i[4]), .A2(n84), .B1(irq_i[0]), .B2(n61), 
        .ZN(n54) );
  OAI211D0BWP12T30P140 U111 ( .A1(n120), .A2(n56), .B(n55), .C(n54), .ZN(n60)
         );
  AOI22D0BWP12T30P140 U112 ( .A1(irq_i[22]), .A2(n71), .B1(irq_i[20]), .B2(n84), .ZN(n57) );
  OAI211D0BWP12T30P140 U113 ( .A1(n134), .A2(n58), .B(irq_cnt[4]), .C(n57), 
        .ZN(n59) );
  AOI32D0BWP12T30P140 U114 ( .A1(n61), .A2(n60), .A3(irq_i[16]), .B1(n59), 
        .B2(n60), .ZN(n62) );
  OAI32D0BWP12T30P140 U115 ( .A1(n78), .A2(n64), .A3(n63), .B1(irq_cnt[3]), 
        .B2(n62), .ZN(n65) );
  INVD0BWP12T30P140 U116 ( .I(irq_cnt[0]), .ZN(n96) );
  AOI22D0BWP12T30P140 U117 ( .A1(irq_cnt[0]), .A2(n66), .B1(n65), .B2(n96), 
        .ZN(n101) );
  OAI211D0BWP12T30P140 U118 ( .A1(found_start), .A2(state[3]), .B(n99), .C(
        n101), .ZN(n69) );
  INVD0BWP12T30P140 U119 ( .I(state[3]), .ZN(n102) );
  ND3D0BWP12T30P140 U120 ( .A1(n102), .A2(n67), .A3(state[5]), .ZN(n97) );
  ND3D0BWP12T30P140 U121 ( .A1(n97), .A2(n83), .A3(serirq_oe), .ZN(n68) );
  OAI211D0BWP12T30P140 U122 ( .A1(found_start), .A2(n70), .B(n69), .C(n68), 
        .ZN(nxt_serirq_oe) );
  INVD0BWP12T30P140 U123 ( .I(n97), .ZN(n92) );
  ND2D0BWP12T30P140 U124 ( .A1(irq_cnt[0]), .A2(n71), .ZN(n80) );
  NR2D0BWP12T30P140 U125 ( .A1(n78), .A2(n80), .ZN(n72) );
  AN2D0BWP12T30P140 U126 ( .A1(n72), .A2(irq_cnt[4]), .Z(n91) );
  NR2D0BWP12T30P140 U127 ( .A1(n91), .A2(n97), .ZN(n76) );
  NR2D0BWP12T30P140 U128 ( .A1(n75), .A2(n76), .ZN(n95) );
  AOI21D0BWP12T30P140 U129 ( .A1(n92), .A2(n80), .B(n95), .ZN(n79) );
  INVD0BWP12T30P140 U130 ( .I(irq_cnt[4]), .ZN(n74) );
  OAI21D0BWP12T30P140 U131 ( .A1(irq_cnt[4]), .A2(n72), .B(n76), .ZN(n73) );
  OAI21D0BWP12T30P140 U132 ( .A1(n79), .A2(n74), .B(n73), .ZN(n243) );
  OA21D0BWP12T30P140 U133 ( .A1(found_start), .A2(n100), .B(n75), .Z(n114) );
  CKBD0BWP12T30P140 U134 ( .I(n114), .Z(n94) );
  CKBD0BWP12T30P140 U135 ( .I(n114), .Z(n113) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n253), .A2(n94), .B1(n113), .B2(
        current_irq[31]), .ZN(n241) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n252), .A2(n94), .B1(n113), .B2(
        current_irq[30]), .ZN(n240) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n251), .A2(n94), .B1(n113), .B2(
        current_irq[29]), .ZN(n239) );
  INVD0BWP12T30P140 U139 ( .I(n76), .ZN(n86) );
  AOI21D0BWP12T30P140 U140 ( .A1(n76), .A2(n96), .B(n95), .ZN(n89) );
  OAI32D0BWP12T30P140 U141 ( .A1(irq_cnt[1]), .A2(n96), .A3(n86), .B1(n89), 
        .B2(n77), .ZN(n245) );
  CKBD0BWP12T30P140 U142 ( .I(n114), .Z(n98) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n250), .A2(n98), .B1(n98), .B2(
        current_irq[28]), .ZN(n238) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n255), .A2(n94), .B1(n113), .B2(
        current_irq[0]), .ZN(n242) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n143), .A2(n94), .B1(n98), .B2(
        current_irq[27]), .ZN(n237) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n142), .A2(n94), .B1(n98), .B2(
        current_irq[26]), .ZN(n236) );
  NR2D0BWP12T30P140 U147 ( .A1(found_stop), .A2(n86), .ZN(nxt_state[3]) );
  MAOI22D0BWP12T30P140 U148 ( .A1(n141), .A2(n94), .B1(n98), .B2(
        current_irq[25]), .ZN(n235) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n140), .A2(n114), .B1(n94), .B2(
        current_irq[24]), .ZN(n234) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n139), .A2(n113), .B1(n98), .B2(
        current_irq[23]), .ZN(n233) );
  NR2D0BWP12T30P140 U151 ( .A1(serirq_i), .A2(stop_clk_cnt[0]), .ZN(N103) );
  MAOI22D0BWP12T30P140 U152 ( .A1(n138), .A2(n98), .B1(n94), .B2(
        current_irq[22]), .ZN(n232) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n137), .A2(n113), .B1(n94), .B2(
        current_irq[21]), .ZN(n231) );
  OAI32D0BWP12T30P140 U154 ( .A1(irq_cnt[3]), .A2(n97), .A3(n80), .B1(n79), 
        .B2(n78), .ZN(n247) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n136), .A2(n94), .B1(n94), .B2(
        current_irq[20]), .ZN(n230) );
  INVD0BWP12T30P140 U156 ( .I(serirq_i), .ZN(n82) );
  INVD0BWP12T30P140 U157 ( .I(stop_clk_cnt[3]), .ZN(n108) );
  INVD0BWP12T30P140 U158 ( .I(stop_clk_cnt[2]), .ZN(n109) );
  OA32D0BWP12T30P140 U159 ( .A1(n108), .A2(stop_clk_cnt[2]), .A3(
        stop_clk_cnt[1]), .B1(stop_clk_cnt[3]), .B2(n109), .Z(n81) );
  INVD0BWP12T30P140 U160 ( .I(found_start), .ZN(n104) );
  OAI32D0BWP12T30P140 U161 ( .A1(n82), .A2(stop_clk_cnt[0]), .A3(n81), .B1(
        serirq_i), .B2(n104), .ZN(n146) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n135), .A2(n114), .B1(n94), .B2(
        current_irq[19]), .ZN(n229) );
  MAOI22D0BWP12T30P140 U163 ( .A1(n134), .A2(n98), .B1(n94), .B2(
        current_irq[18]), .ZN(n228) );
  ND2D0BWP12T30P140 U164 ( .A1(stop_clk_cnt[1]), .A2(stop_clk_cnt[0]), .ZN(
        n107) );
  OA211D0BWP12T30P140 U165 ( .A1(stop_clk_cnt[1]), .A2(stop_clk_cnt[0]), .B(
        n82), .C(n107), .Z(N104) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n132), .A2(n114), .B1(n98), .B2(
        current_irq[17]), .ZN(n227) );
  AOI221D0BWP12T30P140 U167 ( .A1(state[3]), .A2(found_stop), .B1(n102), .B2(
        n104), .C(n83), .ZN(nxt_state[4]) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n131), .A2(n113), .B1(n94), .B2(
        current_irq[16]), .ZN(n226) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n123), .A2(n114), .B1(n113), .B2(
        current_irq[8]), .ZN(n218) );
  MAOI22D0BWP12T30P140 U170 ( .A1(n118), .A2(n114), .B1(n113), .B2(
        current_irq[4]), .ZN(n214) );
  MAOI22D0BWP12T30P140 U171 ( .A1(n130), .A2(n94), .B1(n98), .B2(
        current_irq[15]), .ZN(n225) );
  AOI21D0BWP12T30P140 U172 ( .A1(irq_cnt[0]), .A2(n85), .B(n84), .ZN(n87) );
  OAI22D0BWP12T30P140 U173 ( .A1(n89), .A2(n88), .B1(n87), .B2(n86), .ZN(n244)
         );
  MAOI22D0BWP12T30P140 U174 ( .A1(n129), .A2(n114), .B1(n98), .B2(
        current_irq[14]), .ZN(n224) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n120), .A2(n114), .B1(n113), .B2(
        current_irq[6]), .ZN(n216) );
  INVD0BWP12T30P140 U176 ( .I(found_stop), .ZN(n110) );
  ND3D0BWP12T30P140 U177 ( .A1(n110), .A2(n90), .A3(n102), .ZN(n256) );
  NR3D0BWP12T30P140 U178 ( .A1(state[0]), .A2(state[4]), .A3(n256), .ZN(n93)
         );
  AO22D0BWP12T30P140 U179 ( .A1(state[9]), .A2(n93), .B1(n92), .B2(n91), .Z(
        nxt_state_9) );
  MAOI22D0BWP12T30P140 U180 ( .A1(n128), .A2(n113), .B1(n98), .B2(
        current_irq[13]), .ZN(n223) );
  MAOI22D0BWP12T30P140 U181 ( .A1(n124), .A2(n94), .B1(n98), .B2(
        current_irq[9]), .ZN(n219) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n127), .A2(n98), .B1(n98), .B2(
        current_irq[12]), .ZN(n222) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n97), .A2(n96), .B1(n96), .B2(n95), .ZN(n246) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n126), .A2(n114), .B1(n98), .B2(
        current_irq[11]), .ZN(n221) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n121), .A2(n114), .B1(n113), .B2(
        current_irq[7]), .ZN(n217) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n125), .A2(n113), .B1(n98), .B2(
        current_irq[10]), .ZN(n220) );
  OA31D0BWP12T30P140 U187 ( .A1(found_start), .A2(state[3]), .A3(n100), .B(n99), .Z(n103) );
  AOI32D0BWP12T30P140 U188 ( .A1(n104), .A2(n103), .A3(n102), .B1(n101), .B2(
        n103), .ZN(nxt_serirq_o) );
  NR2D0BWP12T30P140 U189 ( .A1(n109), .A2(n107), .ZN(n106) );
  INVD0BWP12T30P140 U190 ( .I(n106), .ZN(n105) );
  AOI221D0BWP12T30P140 U191 ( .A1(stop_clk_cnt[3]), .A2(n106), .B1(n108), .B2(
        n105), .C(serirq_i), .ZN(N106) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n119), .A2(n114), .B1(n113), .B2(
        current_irq[5]), .ZN(n215) );
  AOI211D0BWP12T30P140 U193 ( .A1(n109), .A2(n107), .B(serirq_i), .C(n106), 
        .ZN(N105) );
  ND4D0BWP12T30P140 U194 ( .A1(serirq_i), .A2(stop_clk_cnt[1]), .A3(n109), 
        .A4(n108), .ZN(n112) );
  OAI21D0BWP12T30P140 U195 ( .A1(serirq_i), .A2(n110), .B(n112), .ZN(n145) );
  ND2D0BWP12T30P140 U196 ( .A1(n112), .A2(serirq_mode), .ZN(n111) );
  OAI21D0BWP12T30P140 U197 ( .A1(n112), .A2(stop_clk_cnt[0]), .B(n111), .ZN(
        n248) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n117), .A2(n114), .B1(n113), .B2(
        current_irq[3]), .ZN(n213) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n115), .A2(n114), .B1(n113), .B2(
        current_irq[2]), .ZN(n212) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n116), .A2(n114), .B1(n113), .B2(
        current_irq[1]), .ZN(n211) );
  CKBD0BWP12T30P140 U201 ( .I(clk_i), .Z(n259) );
  CKBD0BWP12T30P140 U202 ( .I(clk_i), .Z(n258) );
  CKBD0BWP12T30P140 U203 ( .I(clk_i), .Z(n260) );
  INVD0BWP12T30P140 U204 ( .I(nrst_i), .ZN(n133) );
  CKBD0BWP12T30P140 U205 ( .I(n133), .Z(n122) );
  INVD0BWP12T30P140 U206 ( .I(n122), .ZN(n257) );
  INVD0BWP12T30P140 U207 ( .I(nrst_i), .ZN(n249) );
  ND2D0BWP12T30P140 U208 ( .A1(irq_i[0]), .A2(n254), .ZN(n148) );
  ND2D0BWP12T30P140 U209 ( .A1(irq_i[31]), .A2(n254), .ZN(n150) );
  ND2D0BWP12T30P140 U210 ( .A1(irq_i[30]), .A2(n254), .ZN(n152) );
  ND2D0BWP12T30P140 U211 ( .A1(irq_i[29]), .A2(n254), .ZN(n154) );
  ND2D0BWP12T30P140 U212 ( .A1(irq_i[28]), .A2(n249), .ZN(n156) );
  ND2D0BWP12T30P140 U213 ( .A1(irq_i[27]), .A2(n249), .ZN(n158) );
  ND2D0BWP12T30P140 U214 ( .A1(irq_i[26]), .A2(n249), .ZN(n160) );
  ND2D0BWP12T30P140 U215 ( .A1(irq_i[25]), .A2(n254), .ZN(n162) );
  ND2D0BWP12T30P140 U216 ( .A1(irq_i[24]), .A2(n254), .ZN(n164) );
  ND2D0BWP12T30P140 U217 ( .A1(irq_i[23]), .A2(n254), .ZN(n166) );
  ND2D0BWP12T30P140 U218 ( .A1(irq_i[22]), .A2(n254), .ZN(n168) );
  ND2D0BWP12T30P140 U219 ( .A1(irq_i[21]), .A2(n254), .ZN(n170) );
  ND2D0BWP12T30P140 U220 ( .A1(irq_i[20]), .A2(n254), .ZN(n172) );
  ND2D0BWP12T30P140 U221 ( .A1(irq_i[19]), .A2(n254), .ZN(n174) );
  ND2D0BWP12T30P140 U222 ( .A1(irq_i[18]), .A2(n133), .ZN(n176) );
  ND2D0BWP12T30P140 U223 ( .A1(irq_i[17]), .A2(n133), .ZN(n178) );
  ND2D0BWP12T30P140 U224 ( .A1(irq_i[16]), .A2(n133), .ZN(n180) );
  ND2D0BWP12T30P140 U225 ( .A1(irq_i[15]), .A2(n133), .ZN(n182) );
  ND2D0BWP12T30P140 U226 ( .A1(irq_i[14]), .A2(n133), .ZN(n184) );
  ND2D0BWP12T30P140 U227 ( .A1(irq_i[13]), .A2(n133), .ZN(n186) );
  ND2D0BWP12T30P140 U228 ( .A1(irq_i[12]), .A2(n133), .ZN(n188) );
  ND2D0BWP12T30P140 U229 ( .A1(irq_i[11]), .A2(n133), .ZN(n190) );
  ND2D0BWP12T30P140 U230 ( .A1(irq_i[10]), .A2(n122), .ZN(n192) );
  ND2D0BWP12T30P140 U231 ( .A1(irq_i[9]), .A2(n122), .ZN(n194) );
  ND2D0BWP12T30P140 U232 ( .A1(irq_i[8]), .A2(n122), .ZN(n196) );
  ND2D0BWP12T30P140 U233 ( .A1(irq_i[7]), .A2(n122), .ZN(n198) );
  ND2D0BWP12T30P140 U234 ( .A1(irq_i[6]), .A2(n122), .ZN(n200) );
  ND2D0BWP12T30P140 U235 ( .A1(irq_i[5]), .A2(n122), .ZN(n202) );
  ND2D0BWP12T30P140 U236 ( .A1(irq_i[4]), .A2(n122), .ZN(n204) );
  ND2D0BWP12T30P140 U237 ( .A1(irq_i[3]), .A2(n122), .ZN(n206) );
  ND2D0BWP12T30P140 U238 ( .A1(irq_i[2]), .A2(n122), .ZN(n208) );
  ND2D0BWP12T30P140 U239 ( .A1(irq_i[1]), .A2(n122), .ZN(n210) );
  ND2D0BWP12T30P140 U240 ( .A1(n115), .A2(n122), .ZN(n207) );
  ND2D0BWP12T30P140 U241 ( .A1(n116), .A2(n122), .ZN(n209) );
  ND2D0BWP12T30P140 U242 ( .A1(n117), .A2(n122), .ZN(n205) );
  ND2D0BWP12T30P140 U243 ( .A1(n118), .A2(n122), .ZN(n203) );
  ND2D0BWP12T30P140 U244 ( .A1(n119), .A2(n122), .ZN(n201) );
  ND2D0BWP12T30P140 U245 ( .A1(n120), .A2(n122), .ZN(n199) );
  ND2D0BWP12T30P140 U246 ( .A1(n121), .A2(n122), .ZN(n197) );
  ND2D0BWP12T30P140 U247 ( .A1(n123), .A2(n122), .ZN(n195) );
  ND2D0BWP12T30P140 U248 ( .A1(n124), .A2(n133), .ZN(n193) );
  ND2D0BWP12T30P140 U249 ( .A1(n125), .A2(n133), .ZN(n191) );
  ND2D0BWP12T30P140 U250 ( .A1(n126), .A2(n133), .ZN(n189) );
  ND2D0BWP12T30P140 U251 ( .A1(n127), .A2(n133), .ZN(n187) );
  ND2D0BWP12T30P140 U252 ( .A1(n128), .A2(n133), .ZN(n185) );
  ND2D0BWP12T30P140 U253 ( .A1(n129), .A2(n133), .ZN(n183) );
  ND2D0BWP12T30P140 U254 ( .A1(n130), .A2(n133), .ZN(n181) );
  ND2D0BWP12T30P140 U255 ( .A1(n131), .A2(n133), .ZN(n179) );
  ND2D0BWP12T30P140 U256 ( .A1(n132), .A2(n133), .ZN(n177) );
  ND2D0BWP12T30P140 U257 ( .A1(n134), .A2(n133), .ZN(n175) );
  ND2D0BWP12T30P140 U258 ( .A1(n135), .A2(n249), .ZN(n173) );
  ND2D0BWP12T30P140 U259 ( .A1(n136), .A2(n249), .ZN(n171) );
  ND2D0BWP12T30P140 U260 ( .A1(n137), .A2(n249), .ZN(n169) );
  ND2D0BWP12T30P140 U261 ( .A1(n138), .A2(n249), .ZN(n167) );
  ND2D0BWP12T30P140 U262 ( .A1(n139), .A2(n249), .ZN(n165) );
  ND2D0BWP12T30P140 U263 ( .A1(n140), .A2(n249), .ZN(n163) );
  ND2D0BWP12T30P140 U264 ( .A1(n141), .A2(n249), .ZN(n161) );
  ND2D0BWP12T30P140 U265 ( .A1(n142), .A2(n249), .ZN(n159) );
  ND2D0BWP12T30P140 U266 ( .A1(n143), .A2(n249), .ZN(n157) );
  ND2D0BWP12T30P140 U267 ( .A1(n250), .A2(n249), .ZN(n155) );
  ND2D0BWP12T30P140 U268 ( .A1(n251), .A2(n254), .ZN(n153) );
  ND2D0BWP12T30P140 U269 ( .A1(n252), .A2(n254), .ZN(n151) );
  ND2D0BWP12T30P140 U270 ( .A1(n253), .A2(n254), .ZN(n149) );
  ND2D0BWP12T30P140 U271 ( .A1(n255), .A2(n254), .ZN(n147) );
  INR4D0BWP12T30P140 U272 ( .A1(state[4]), .B1(state[9]), .B2(state[0]), .B3(
        n256), .ZN(nxt_state[5]) );
endmodule


module serirq_top ( clk_i, nrst_i, serirq_mode_i, irq_i, irq_o );
  input [31:0] irq_i;
  output [31:0] irq_o;
  input clk_i, nrst_i, serirq_mode_i;
  wire   host_serirq_o, serirq_line, host_serirq_oe, slave_serirq_o,
         slave_serirq_oe, n2;

  serirq_host u_host ( .clk_i(clk_i), .nrst_i(nrst_i), .serirq_mode_i(
        serirq_mode_i), .irq_o(irq_o), .serirq_o(host_serirq_o), .serirq_i(
        serirq_line), .serirq_oe(host_serirq_oe) );
  serirq_slave u_slave ( .clk_i(clk_i), .nrst_i(nrst_i), .irq_i(irq_i), 
        .serirq_o(slave_serirq_o), .serirq_i(serirq_line), .serirq_oe(
        slave_serirq_oe) );
  MUX2ND0BWP12T30P140 U4 ( .I0(slave_serirq_o), .I1(host_serirq_o), .S(
        host_serirq_oe), .ZN(n2) );
  OAI21D0BWP12T30P140 U5 ( .A1(host_serirq_oe), .A2(slave_serirq_oe), .B(n2), 
        .ZN(serirq_line) );
endmodule

