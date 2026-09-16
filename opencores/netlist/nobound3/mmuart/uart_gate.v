/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:31:29 2026
/////////////////////////////////////////////////////////////


module uart_transceiver ( sys_rst, sys_clk, uart_rx, uart_tx, divisor, rx_data, 
        rx_done, tx_data, tx_wr, tx_done );
  input [15:0] divisor;
  output [7:0] rx_data;
  input [7:0] tx_data;
  input sys_rst, sys_clk, uart_rx, tx_wr;
  output uart_tx, rx_done, tx_done;
  wire   N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, uart_rx2, uart_rx1, rx_busy, N135, tx_busy, N190, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156;
  wire   [15:0] enable16_counter;
  wire   [3:0] rx_count16;
  wire   [3:0] rx_bitcount;
  wire   [7:0] rx_reg;
  wire   [3:0] tx_count16;
  wire   [3:0] tx_bitcount;
  wire   [7:0] tx_reg;

  DFQD2BWP12T30P140 rx_done_reg ( .D(N135), .CP(n154), .Q(rx_done) );
  DFQD2BWP12T30P140 tx_done_reg ( .D(N190), .CP(n156), .Q(tx_done) );
  DFQD2BWP12T30P140 rx_reg_reg_4_ ( .D(n112), .CP(sys_clk), .Q(rx_reg[4]) );
  DFQD2BWP12T30P140 rx_reg_reg_7_ ( .D(n115), .CP(n154), .Q(rx_reg[7]) );
  DFQD2BWP12T30P140 rx_reg_reg_6_ ( .D(n114), .CP(n155), .Q(rx_reg[6]) );
  DFQD2BWP12T30P140 rx_reg_reg_5_ ( .D(n113), .CP(n154), .Q(rx_reg[5]) );
  DFQD2BWP12T30P140 rx_reg_reg_3_ ( .D(n111), .CP(n156), .Q(rx_reg[3]) );
  DFQD2BWP12T30P140 rx_reg_reg_2_ ( .D(n110), .CP(n155), .Q(rx_reg[2]) );
  DFQD2BWP12T30P140 rx_reg_reg_1_ ( .D(n109), .CP(n154), .Q(rx_reg[1]) );
  DFQD2BWP12T30P140 rx_reg_reg_0_ ( .D(n108), .CP(n156), .Q(rx_reg[0]) );
  DFQD2BWP12T30P140 tx_busy_reg ( .D(n116), .CP(n155), .Q(tx_busy) );
  DFQD2BWP12T30P140 tx_reg_reg_0_ ( .D(n125), .CP(n155), .Q(tx_reg[0]) );
  DFQD2BWP12T30P140 tx_bitcount_reg_0_ ( .D(n121), .CP(n156), .Q(
        tx_bitcount[0]) );
  DFQD2BWP12T30P140 rx_data_reg_0_ ( .D(n91), .CP(n155), .Q(rx_data[0]) );
  DFQD2BWP12T30P140 tx_reg_reg_6_ ( .D(n85), .CP(n156), .Q(tx_reg[6]) );
  DFQD2BWP12T30P140 tx_reg_reg_5_ ( .D(n86), .CP(n156), .Q(tx_reg[5]) );
  DFQD2BWP12T30P140 tx_reg_reg_4_ ( .D(n87), .CP(n156), .Q(tx_reg[4]) );
  DFQD2BWP12T30P140 tx_reg_reg_3_ ( .D(n88), .CP(n156), .Q(tx_reg[3]) );
  DFQD2BWP12T30P140 tx_reg_reg_2_ ( .D(n89), .CP(n156), .Q(tx_reg[2]) );
  DFQD2BWP12T30P140 tx_reg_reg_1_ ( .D(n90), .CP(n156), .Q(tx_reg[1]) );
  DFQD2BWP12T30P140 tx_bitcount_reg_3_ ( .D(n120), .CP(n154), .Q(
        tx_bitcount[3]) );
  DFQD2BWP12T30P140 tx_reg_reg_7_ ( .D(n84), .CP(n156), .Q(tx_reg[7]) );
  DFQD2BWP12T30P140 tx_count16_reg_0_ ( .D(n126), .CP(sys_clk), .Q(
        tx_count16[0]) );
  DFQD2BWP12T30P140 rx_data_reg_1_ ( .D(n98), .CP(n155), .Q(rx_data[1]) );
  DFQD2BWP12T30P140 rx_data_reg_3_ ( .D(n96), .CP(n156), .Q(rx_data[3]) );
  DFQD2BWP12T30P140 rx_data_reg_4_ ( .D(n95), .CP(n155), .Q(rx_data[4]) );
  DFQD2BWP12T30P140 rx_data_reg_5_ ( .D(n94), .CP(n154), .Q(rx_data[5]) );
  DFQD2BWP12T30P140 rx_data_reg_7_ ( .D(n92), .CP(n156), .Q(rx_data[7]) );
  DFQD2BWP12T30P140 uart_tx_reg ( .D(n117), .CP(n154), .Q(uart_tx) );
  DFQD2BWP12T30P140 rx_count16_reg_1_ ( .D(n102), .CP(n154), .Q(rx_count16[1])
         );
  DFQD2BWP12T30P140 tx_bitcount_reg_2_ ( .D(n119), .CP(n155), .Q(
        tx_bitcount[2]) );
  DFQD2BWP12T30P140 rx_bitcount_reg_0_ ( .D(n107), .CP(n154), .Q(
        rx_bitcount[0]) );
  DFQD2BWP12T30P140 tx_count16_reg_2_ ( .D(n123), .CP(n156), .Q(tx_count16[2])
         );
  DFQD2BWP12T30P140 enable16_counter_reg_12_ ( .D(N94), .CP(n155), .Q(
        enable16_counter[12]) );
  DFQD2BWP12T30P140 enable16_counter_reg_8_ ( .D(N90), .CP(n155), .Q(
        enable16_counter[8]) );
  DFQD2BWP12T30P140 enable16_counter_reg_4_ ( .D(N86), .CP(n155), .Q(
        enable16_counter[4]) );
  DFQD2BWP12T30P140 enable16_counter_reg_0_ ( .D(N82), .CP(n154), .Q(
        enable16_counter[0]) );
  DFQD2BWP12T30P140 enable16_counter_reg_13_ ( .D(N95), .CP(n156), .Q(
        enable16_counter[13]) );
  DFQD2BWP12T30P140 enable16_counter_reg_5_ ( .D(N87), .CP(n155), .Q(
        enable16_counter[5]) );
  DFQD2BWP12T30P140 enable16_counter_reg_1_ ( .D(N83), .CP(n155), .Q(
        enable16_counter[1]) );
  DFQD2BWP12T30P140 enable16_counter_reg_15_ ( .D(N97), .CP(n156), .Q(
        enable16_counter[15]) );
  DFQD2BWP12T30P140 enable16_counter_reg_11_ ( .D(N93), .CP(n155), .Q(
        enable16_counter[11]) );
  DFQD2BWP12T30P140 enable16_counter_reg_7_ ( .D(N89), .CP(n155), .Q(
        enable16_counter[7]) );
  DFQD2BWP12T30P140 enable16_counter_reg_3_ ( .D(N85), .CP(n155), .Q(
        enable16_counter[3]) );
  DFQD2BWP12T30P140 enable16_counter_reg_14_ ( .D(N96), .CP(n156), .Q(
        enable16_counter[14]) );
  DFQD2BWP12T30P140 enable16_counter_reg_10_ ( .D(N92), .CP(n155), .Q(
        enable16_counter[10]) );
  DFQD2BWP12T30P140 enable16_counter_reg_6_ ( .D(N88), .CP(n155), .Q(
        enable16_counter[6]) );
  DFQD2BWP12T30P140 enable16_counter_reg_2_ ( .D(N84), .CP(n155), .Q(
        enable16_counter[2]) );
  DFQD2BWP12T30P140 rx_count16_reg_2_ ( .D(n101), .CP(n154), .Q(rx_count16[2])
         );
  DFQD2BWP12T30P140 rx_bitcount_reg_3_ ( .D(n104), .CP(n154), .Q(
        rx_bitcount[3]) );
  DFQD2BWP12T30P140 tx_count16_reg_3_ ( .D(n124), .CP(n156), .Q(tx_count16[3])
         );
  DFQD2BWP12T30P140 rx_count16_reg_3_ ( .D(n100), .CP(n154), .Q(rx_count16[3])
         );
  DFQD2BWP12T30P140 rx_busy_reg ( .D(n99), .CP(n154), .Q(rx_busy) );
  DFQD2BWP12T30P140 rx_count16_reg_0_ ( .D(n103), .CP(n154), .Q(rx_count16[0])
         );
  DFQD2BWP12T30P140 uart_rx2_reg ( .D(uart_rx1), .CP(n154), .Q(uart_rx2) );
  DFQD2BWP12T30P140 uart_rx1_reg ( .D(uart_rx), .CP(n156), .Q(uart_rx1) );
  DFQD2BWP12T30P140 tx_bitcount_reg_1_ ( .D(n118), .CP(n156), .Q(
        tx_bitcount[1]) );
  DFQD2BWP12T30P140 tx_count16_reg_1_ ( .D(n122), .CP(n154), .Q(tx_count16[1])
         );
  DFQD1BWP12T30P140 rx_data_reg_6_ ( .D(n93), .CP(sys_clk), .Q(rx_data[6]) );
  DFQD1BWP12T30P140 rx_data_reg_2_ ( .D(n97), .CP(n154), .Q(rx_data[2]) );
  DFQD1BWP12T30P140 enable16_counter_reg_9_ ( .D(N91), .CP(n155), .Q(
        enable16_counter[9]) );
  DFQD1BWP12T30P140 rx_bitcount_reg_2_ ( .D(n105), .CP(n154), .Q(
        rx_bitcount[2]) );
  DFQD1BWP12T30P140 rx_bitcount_reg_1_ ( .D(n106), .CP(n154), .Q(
        rx_bitcount[1]) );
  INVD0BWP12T30P140 U3 ( .I(tx_wr), .ZN(n20) );
  NR4D0BWP12T30P140 U4 ( .A1(enable16_counter[0]), .A2(enable16_counter[1]), 
        .A3(enable16_counter[2]), .A4(enable16_counter[3]), .ZN(n4) );
  NR4D0BWP12T30P140 U5 ( .A1(enable16_counter[4]), .A2(enable16_counter[5]), 
        .A3(enable16_counter[6]), .A4(enable16_counter[7]), .ZN(n3) );
  NR4D0BWP12T30P140 U6 ( .A1(enable16_counter[8]), .A2(enable16_counter[9]), 
        .A3(enable16_counter[10]), .A4(enable16_counter[11]), .ZN(n2) );
  NR4D0BWP12T30P140 U7 ( .A1(enable16_counter[12]), .A2(enable16_counter[13]), 
        .A3(enable16_counter[14]), .A4(enable16_counter[15]), .ZN(n1) );
  ND4D0BWP12T30P140 U8 ( .A1(n4), .A2(n3), .A3(n2), .A4(n1), .ZN(n56) );
  INVD0BWP12T30P140 U9 ( .I(n56), .ZN(n6) );
  ND3D0BWP12T30P140 U10 ( .A1(n20), .A2(tx_busy), .A3(n6), .ZN(n40) );
  INVD0BWP12T30P140 U11 ( .I(n40), .ZN(n49) );
  IND2D1BWP12T30P140 U12 ( .A1(tx_count16[0]), .B1(n49), .ZN(n39) );
  NR4D0BWP12T30P140 U13 ( .A1(tx_count16[1]), .A2(tx_count16[3]), .A3(
        tx_count16[2]), .A4(n39), .ZN(n11) );
  INVD0BWP12T30P140 U14 ( .I(tx_bitcount[3]), .ZN(n17) );
  NR3D0BWP12T30P140 U15 ( .A1(tx_bitcount[1]), .A2(tx_bitcount[2]), .A3(n17), 
        .ZN(n27) );
  ND3D0BWP12T30P140 U16 ( .A1(n11), .A2(tx_bitcount[0]), .A3(n27), .ZN(n78) );
  NR2D0BWP12T30P140 U17 ( .A1(sys_rst), .A2(n78), .ZN(N190) );
  INVD0BWP12T30P140 U18 ( .I(rx_bitcount[3]), .ZN(n71) );
  INVD0BWP12T30P140 U19 ( .I(rx_bitcount[0]), .ZN(n61) );
  NR4D0BWP12T30P140 U20 ( .A1(rx_bitcount[1]), .A2(rx_bitcount[2]), .A3(n71), 
        .A4(n61), .ZN(n64) );
  NR4D0BWP12T30P140 U21 ( .A1(rx_bitcount[3]), .A2(rx_bitcount[2]), .A3(
        rx_bitcount[1]), .A4(rx_bitcount[0]), .ZN(n66) );
  NR4D0BWP12T30P140 U22 ( .A1(rx_count16[1]), .A2(rx_count16[0]), .A3(
        rx_count16[3]), .A4(rx_count16[2]), .ZN(n5) );
  ND2D0BWP12T30P140 U23 ( .A1(n6), .A2(n5), .ZN(n37) );
  INVD0BWP12T30P140 U24 ( .I(sys_rst), .ZN(n79) );
  ND2D0BWP12T30P140 U25 ( .A1(rx_busy), .A2(n79), .ZN(n63) );
  NR4D0BWP12T30P140 U26 ( .A1(n64), .A2(n66), .A3(n37), .A4(n63), .ZN(n8) );
  INVD0BWP12T30P140 U27 ( .I(rx_reg[5]), .ZN(n25) );
  INVD0BWP12T30P140 U28 ( .I(rx_reg[4]), .ZN(n24) );
  INVD0BWP12T30P140 U29 ( .I(n8), .ZN(n7) );
  AOI22D0BWP12T30P140 U30 ( .A1(n8), .A2(n25), .B1(n24), .B2(n7), .ZN(n112) );
  INVD0BWP12T30P140 U31 ( .I(uart_rx2), .ZN(n9) );
  INVD0BWP12T30P140 U32 ( .I(rx_reg[7]), .ZN(n26) );
  AOI22D0BWP12T30P140 U33 ( .A1(n8), .A2(n9), .B1(n26), .B2(n7), .ZN(n115) );
  INVD0BWP12T30P140 U34 ( .I(rx_reg[6]), .ZN(n10) );
  AOI22D0BWP12T30P140 U35 ( .A1(n8), .A2(n26), .B1(n10), .B2(n7), .ZN(n114) );
  AOI22D0BWP12T30P140 U36 ( .A1(n8), .A2(n10), .B1(n25), .B2(n7), .ZN(n113) );
  INVD0BWP12T30P140 U37 ( .I(rx_reg[3]), .ZN(n23) );
  AOI22D0BWP12T30P140 U38 ( .A1(n8), .A2(n24), .B1(n23), .B2(n7), .ZN(n111) );
  INVD0BWP12T30P140 U39 ( .I(rx_reg[2]), .ZN(n22) );
  AOI22D0BWP12T30P140 U40 ( .A1(n8), .A2(n23), .B1(n22), .B2(n7), .ZN(n110) );
  INVD0BWP12T30P140 U41 ( .I(rx_reg[1]), .ZN(n21) );
  AOI22D0BWP12T30P140 U42 ( .A1(n8), .A2(n22), .B1(n21), .B2(n7), .ZN(n109) );
  INVD0BWP12T30P140 U43 ( .I(rx_reg[0]), .ZN(n13) );
  AOI22D0BWP12T30P140 U44 ( .A1(n8), .A2(n21), .B1(n13), .B2(n7), .ZN(n108) );
  INR4D0BWP12T30P140 U45 ( .A1(n64), .B1(n63), .B2(n37), .B3(n9), .ZN(N135) );
  MAOI22D0BWP12T30P140 U46 ( .A1(N135), .A2(n10), .B1(rx_data[6]), .B2(N135), 
        .ZN(n93) );
  NR2D0BWP12T30P140 U47 ( .A1(sys_rst), .A2(n20), .ZN(n77) );
  INVD0BWP12T30P140 U48 ( .I(n11), .ZN(n12) );
  NR3D0BWP12T30P140 U49 ( .A1(sys_rst), .A2(n27), .A3(n12), .ZN(n14) );
  NR2D0BWP12T30P140 U50 ( .A1(n77), .A2(n14), .ZN(n19) );
  AO222D0BWP12T30P140 U51 ( .A1(n77), .A2(tx_data[0]), .B1(n19), .B2(tx_reg[0]), .C1(tx_reg[1]), .C2(n14), .Z(n125) );
  ND2D0BWP12T30P140 U52 ( .A1(n20), .A2(n12), .ZN(n30) );
  ND2D0BWP12T30P140 U53 ( .A1(n79), .A2(n30), .ZN(n16) );
  INVD0BWP12T30P140 U54 ( .I(tx_bitcount[0]), .ZN(n15) );
  AOI21D0BWP12T30P140 U55 ( .A1(n49), .A2(n15), .B(n16), .ZN(n60) );
  AOI21D0BWP12T30P140 U56 ( .A1(n16), .A2(n15), .B(n60), .ZN(n121) );
  MAOI22D0BWP12T30P140 U57 ( .A1(N135), .A2(n13), .B1(rx_data[0]), .B2(N135), 
        .ZN(n91) );
  AO222D0BWP12T30P140 U58 ( .A1(n77), .A2(tx_data[6]), .B1(n19), .B2(tx_reg[6]), .C1(tx_reg[7]), .C2(n14), .Z(n85) );
  AO222D0BWP12T30P140 U59 ( .A1(n77), .A2(tx_data[5]), .B1(n19), .B2(tx_reg[5]), .C1(tx_reg[6]), .C2(n14), .Z(n86) );
  AO222D0BWP12T30P140 U60 ( .A1(n77), .A2(tx_data[4]), .B1(n19), .B2(tx_reg[4]), .C1(tx_reg[5]), .C2(n14), .Z(n87) );
  AO222D0BWP12T30P140 U61 ( .A1(n77), .A2(tx_data[3]), .B1(n19), .B2(tx_reg[3]), .C1(tx_reg[4]), .C2(n14), .Z(n88) );
  AO222D0BWP12T30P140 U62 ( .A1(n77), .A2(tx_data[2]), .B1(n19), .B2(tx_reg[2]), .C1(tx_reg[3]), .C2(n14), .Z(n89) );
  AO222D0BWP12T30P140 U63 ( .A1(n77), .A2(tx_data[1]), .B1(n19), .B2(tx_reg[1]), .C1(tx_reg[2]), .C2(n14), .Z(n90) );
  INVD0BWP12T30P140 U64 ( .I(tx_bitcount[2]), .ZN(n35) );
  NR3D0BWP12T30P140 U65 ( .A1(n40), .A2(n16), .A3(n15), .ZN(n59) );
  ND2D0BWP12T30P140 U66 ( .A1(tx_bitcount[1]), .A2(n59), .ZN(n36) );
  OAI21D0BWP12T30P140 U67 ( .A1(tx_bitcount[1]), .A2(n40), .B(n60), .ZN(n34)
         );
  AOI21D0BWP12T30P140 U68 ( .A1(n49), .A2(n35), .B(n34), .ZN(n18) );
  OAI32D0BWP12T30P140 U69 ( .A1(tx_bitcount[3]), .A2(n35), .A3(n36), .B1(n18), 
        .B2(n17), .ZN(n120) );
  AO22D0BWP12T30P140 U70 ( .A1(n77), .A2(tx_data[7]), .B1(n19), .B2(tx_reg[7]), 
        .Z(n84) );
  AOI21D0BWP12T30P140 U71 ( .A1(n20), .A2(n40), .B(sys_rst), .ZN(n38) );
  AN3D0BWP12T30P140 U72 ( .A1(tx_count16[0]), .A2(n79), .A3(n49), .Z(n41) );
  IAO21D0BWP12T30P140 U73 ( .A1(n38), .A2(tx_count16[0]), .B(n41), .ZN(n126)
         );
  MAOI22D0BWP12T30P140 U74 ( .A1(N135), .A2(n21), .B1(rx_data[1]), .B2(N135), 
        .ZN(n98) );
  MAOI22D0BWP12T30P140 U75 ( .A1(N135), .A2(n22), .B1(rx_data[2]), .B2(N135), 
        .ZN(n97) );
  MAOI22D0BWP12T30P140 U76 ( .A1(N135), .A2(n23), .B1(rx_data[3]), .B2(N135), 
        .ZN(n96) );
  MAOI22D0BWP12T30P140 U77 ( .A1(N135), .A2(n24), .B1(rx_data[4]), .B2(N135), 
        .ZN(n95) );
  MAOI22D0BWP12T30P140 U78 ( .A1(N135), .A2(n25), .B1(rx_data[5]), .B2(N135), 
        .ZN(n94) );
  MAOI22D0BWP12T30P140 U79 ( .A1(N135), .A2(n26), .B1(rx_data[7]), .B2(N135), 
        .ZN(n92) );
  INVD0BWP12T30P140 U80 ( .I(uart_tx), .ZN(n29) );
  OAI211D0BWP12T30P140 U81 ( .A1(n27), .A2(tx_reg[0]), .B(n49), .C(n30), .ZN(
        n28) );
  OAI211D0BWP12T30P140 U82 ( .A1(n30), .A2(n29), .B(n79), .C(n28), .ZN(n117)
         );
  NR3D0BWP12T30P140 U83 ( .A1(rx_busy), .A2(uart_rx2), .A3(n56), .ZN(n68) );
  INVD0BWP12T30P140 U84 ( .I(n68), .ZN(n47) );
  INVD0BWP12T30P140 U85 ( .I(rx_count16[1]), .ZN(n32) );
  INVD0BWP12T30P140 U86 ( .I(rx_busy), .ZN(n55) );
  AOI21D0BWP12T30P140 U87 ( .A1(uart_rx2), .A2(n55), .B(n56), .ZN(n54) );
  ND2D0BWP12T30P140 U88 ( .A1(rx_count16[0]), .A2(n54), .ZN(n31) );
  NR2D0BWP12T30P140 U89 ( .A1(n32), .A2(n31), .ZN(n45) );
  AO21D0BWP12T30P140 U90 ( .A1(n32), .A2(n31), .B(n45), .Z(n33) );
  AOI21D0BWP12T30P140 U91 ( .A1(n47), .A2(n33), .B(sys_rst), .ZN(n102) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n36), .A2(n35), .B1(n35), .B2(n34), .ZN(n119)
         );
  NR2D0BWP12T30P140 U93 ( .A1(n55), .A2(n37), .ZN(n65) );
  NR3D0BWP12T30P140 U94 ( .A1(sys_rst), .A2(n65), .A3(n68), .ZN(n62) );
  INVD0BWP12T30P140 U95 ( .I(n63), .ZN(n70) );
  AOI21D0BWP12T30P140 U96 ( .A1(n70), .A2(n61), .B(n62), .ZN(n76) );
  AOI21D0BWP12T30P140 U97 ( .A1(n62), .A2(n61), .B(n76), .ZN(n107) );
  ND2D0BWP12T30P140 U98 ( .A1(tx_count16[1]), .A2(n41), .ZN(n52) );
  INVD0BWP12T30P140 U99 ( .I(tx_count16[2]), .ZN(n53) );
  AN2D0BWP12T30P140 U100 ( .A1(n39), .A2(n38), .Z(n42) );
  OAI21D0BWP12T30P140 U101 ( .A1(tx_count16[1]), .A2(n40), .B(n42), .ZN(n48)
         );
  MAOI22D0BWP12T30P140 U102 ( .A1(n52), .A2(n53), .B1(n53), .B2(n48), .ZN(n123) );
  MAOI22D0BWP12T30P140 U103 ( .A1(tx_count16[1]), .A2(n42), .B1(n41), .B2(
        tx_count16[1]), .ZN(n122) );
  ND2D0BWP12T30P140 U104 ( .A1(rx_count16[2]), .A2(n45), .ZN(n44) );
  MAOI22D0BWP12T30P140 U105 ( .A1(rx_count16[3]), .A2(n44), .B1(n44), .B2(
        rx_count16[3]), .ZN(n43) );
  AOI211D0BWP12T30P140 U106 ( .A1(n54), .A2(n55), .B(sys_rst), .C(n43), .ZN(
        n100) );
  ND2D0BWP12T30P140 U107 ( .A1(n79), .A2(n56), .ZN(n139) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(enable16_counter[0]), .I1(divisor[0]), .S(
        n139), .Z(n136) );
  INVD0BWP12T30P140 U109 ( .I(n136), .ZN(N82) );
  OAI21D0BWP12T30P140 U110 ( .A1(rx_count16[2]), .A2(n45), .B(n44), .ZN(n46)
         );
  AOI21D0BWP12T30P140 U111 ( .A1(n47), .A2(n46), .B(sys_rst), .ZN(n101) );
  AOI21D0BWP12T30P140 U112 ( .A1(n49), .A2(n53), .B(n48), .ZN(n51) );
  INVD0BWP12T30P140 U113 ( .I(tx_count16[3]), .ZN(n50) );
  OAI32D0BWP12T30P140 U114 ( .A1(tx_count16[3]), .A2(n53), .A3(n52), .B1(n51), 
        .B2(n50), .ZN(n124) );
  INVD0BWP12T30P140 U115 ( .I(n54), .ZN(n58) );
  OAI211D0BWP12T30P140 U116 ( .A1(n56), .A2(n55), .B(rx_count16[0]), .C(n79), 
        .ZN(n57) );
  OAI31D0BWP12T30P140 U117 ( .A1(sys_rst), .A2(rx_count16[0]), .A3(n58), .B(
        n57), .ZN(n103) );
  MAOI22D0BWP12T30P140 U118 ( .A1(tx_bitcount[1]), .A2(n60), .B1(n59), .B2(
        tx_bitcount[1]), .ZN(n118) );
  NR3D0BWP12T30P140 U119 ( .A1(n62), .A2(n63), .A3(n61), .ZN(n75) );
  ND2D0BWP12T30P140 U120 ( .A1(rx_bitcount[1]), .A2(n75), .ZN(n73) );
  INVD0BWP12T30P140 U121 ( .I(rx_bitcount[2]), .ZN(n74) );
  OAI21D0BWP12T30P140 U122 ( .A1(rx_bitcount[1]), .A2(n63), .B(n76), .ZN(n69)
         );
  MAOI22D0BWP12T30P140 U123 ( .A1(n73), .A2(n74), .B1(n74), .B2(n69), .ZN(n105) );
  AOI32D0BWP12T30P140 U124 ( .A1(n66), .A2(n65), .A3(uart_rx2), .B1(n64), .B2(
        n65), .ZN(n67) );
  OA211D0BWP12T30P140 U125 ( .A1(rx_busy), .A2(n68), .B(n79), .C(n67), .Z(n99)
         );
  AOI21D0BWP12T30P140 U126 ( .A1(n70), .A2(n74), .B(n69), .ZN(n72) );
  OAI32D0BWP12T30P140 U127 ( .A1(rx_bitcount[3]), .A2(n74), .A3(n73), .B1(n72), 
        .B2(n71), .ZN(n104) );
  MAOI22D0BWP12T30P140 U128 ( .A1(rx_bitcount[1]), .A2(n76), .B1(n75), .B2(
        rx_bitcount[1]), .ZN(n106) );
  CKBD0BWP12T30P140 U129 ( .I(sys_clk), .Z(n155) );
  CKBD0BWP12T30P140 U130 ( .I(sys_clk), .Z(n156) );
  CKBD0BWP12T30P140 U131 ( .I(sys_clk), .Z(n154) );
  AO31D0BWP12T30P140 U132 ( .A1(tx_busy), .A2(n79), .A3(n78), .B(n77), .Z(n116) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(enable16_counter[1]), .I1(divisor[1]), .S(
        n139), .Z(n135) );
  OR2D0BWP12T30P140 U134 ( .A1(n136), .A2(n135), .Z(n147) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(enable16_counter[2]), .I1(divisor[2]), .S(
        n139), .Z(n146) );
  OR2D0BWP12T30P140 U136 ( .A1(n147), .A2(n146), .Z(n151) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(enable16_counter[3]), .I1(divisor[3]), .S(
        n139), .Z(n150) );
  OR2D0BWP12T30P140 U138 ( .A1(n151), .A2(n150), .Z(n83) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(enable16_counter[4]), .I1(divisor[4]), .S(
        n139), .Z(n82) );
  OR2D0BWP12T30P140 U140 ( .A1(n83), .A2(n82), .Z(n132) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(enable16_counter[5]), .I1(divisor[5]), .S(
        n139), .Z(n131) );
  OR2D0BWP12T30P140 U142 ( .A1(n132), .A2(n131), .Z(n143) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(enable16_counter[6]), .I1(divisor[6]), .S(
        n139), .Z(n142) );
  OR2D0BWP12T30P140 U144 ( .A1(n143), .A2(n142), .Z(n149) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(enable16_counter[7]), .I1(divisor[7]), .S(
        n139), .Z(n148) );
  OR2D0BWP12T30P140 U146 ( .A1(n149), .A2(n148), .Z(n81) );
  CKMUX2D0BWP12T30P140 U147 ( .I0(enable16_counter[8]), .I1(divisor[8]), .S(
        n139), .Z(n80) );
  OR2D0BWP12T30P140 U148 ( .A1(n81), .A2(n80), .Z(n130) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(enable16_counter[9]), .I1(divisor[9]), .S(
        n139), .Z(n129) );
  OR2D0BWP12T30P140 U150 ( .A1(n130), .A2(n129), .Z(n153) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(enable16_counter[10]), .I1(divisor[10]), .S(
        n139), .Z(n152) );
  OR2D0BWP12T30P140 U152 ( .A1(n153), .A2(n152), .Z(n145) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(enable16_counter[11]), .I1(divisor[11]), .S(
        n139), .Z(n144) );
  OR2D0BWP12T30P140 U154 ( .A1(n145), .A2(n144), .Z(n128) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(enable16_counter[12]), .I1(divisor[12]), .S(
        n139), .Z(n127) );
  XNR2D0BWP12T30P140 U156 ( .A1(n128), .A2(n127), .ZN(N94) );
  XNR2D0BWP12T30P140 U157 ( .A1(n81), .A2(n80), .ZN(N90) );
  XNR2D0BWP12T30P140 U158 ( .A1(n83), .A2(n82), .ZN(N86) );
  OR2D0BWP12T30P140 U159 ( .A1(n128), .A2(n127), .Z(n134) );
  CKMUX2D0BWP12T30P140 U160 ( .I0(enable16_counter[13]), .I1(divisor[13]), .S(
        n139), .Z(n133) );
  XNR2D0BWP12T30P140 U161 ( .A1(n134), .A2(n133), .ZN(N95) );
  XNR2D0BWP12T30P140 U162 ( .A1(n130), .A2(n129), .ZN(N91) );
  XNR2D0BWP12T30P140 U163 ( .A1(n132), .A2(n131), .ZN(N87) );
  OR2D0BWP12T30P140 U164 ( .A1(n134), .A2(n133), .Z(n138) );
  CKMUX2D0BWP12T30P140 U165 ( .I0(enable16_counter[14]), .I1(divisor[14]), .S(
        n139), .Z(n137) );
  XNR2D0BWP12T30P140 U166 ( .A1(n138), .A2(n137), .ZN(N96) );
  XNR2D0BWP12T30P140 U167 ( .A1(n136), .A2(n135), .ZN(N83) );
  OR2D0BWP12T30P140 U168 ( .A1(n138), .A2(n137), .Z(n141) );
  CKMUX2D0BWP12T30P140 U169 ( .I0(enable16_counter[15]), .I1(divisor[15]), .S(
        n139), .Z(n140) );
  XNR2D0BWP12T30P140 U170 ( .A1(n141), .A2(n140), .ZN(N97) );
  XNR2D0BWP12T30P140 U171 ( .A1(n143), .A2(n142), .ZN(N88) );
  XNR2D0BWP12T30P140 U172 ( .A1(n145), .A2(n144), .ZN(N93) );
  XNR2D0BWP12T30P140 U173 ( .A1(n147), .A2(n146), .ZN(N84) );
  XNR2D0BWP12T30P140 U174 ( .A1(n149), .A2(n148), .ZN(N89) );
  XNR2D0BWP12T30P140 U175 ( .A1(n151), .A2(n150), .ZN(N85) );
  XNR2D0BWP12T30P140 U176 ( .A1(n153), .A2(n152), .ZN(N92) );
endmodule


module uart ( sys_clk, sys_rst, csr_a, csr_we, csr_di, csr_do, rx_irq, tx_irq, 
        uart_rx, uart_tx );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  input sys_clk, sys_rst, csr_we, uart_rx;
  output rx_irq, tx_irq, uart_tx;
  wire   uart_tx_transceiver, tx_wr, thru, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n59, n60;
  wire   [15:0] divisor;
  wire   [7:0] rx_data;

  uart_transceiver transceiver ( .sys_rst(sys_rst), .sys_clk(n59), .uart_rx(
        uart_rx), .uart_tx(uart_tx_transceiver), .divisor(divisor), .rx_data(
        rx_data), .rx_done(rx_irq), .tx_data(csr_di[7:0]), .tx_wr(tx_wr), 
        .tx_done(tx_irq) );
  DFQD2BWP12T30P140 csr_do_reg_12_ ( .D(N87), .CP(n59), .Q(csr_do[12]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N86), .CP(n59), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N85), .CP(n59), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N84), .CP(n59), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N83), .CP(n59), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N82), .CP(n59), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N81), .CP(n59), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N80), .CP(n59), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N79), .CP(n59), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N78), .CP(n59), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N77), .CP(n59), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N76), .CP(n59), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N75), .CP(n59), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(n11), .CP(n59), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N89), .CP(n60), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N88), .CP(n60), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 thru_reg ( .D(n27), .CP(n60), .Q(thru) );
  DFQD2BWP12T30P140 divisor_reg_5_ ( .D(n22), .CP(n60), .Q(divisor[5]) );
  DFQD2BWP12T30P140 divisor_reg_4_ ( .D(n23), .CP(n60), .Q(divisor[4]) );
  DFQD2BWP12T30P140 divisor_reg_2_ ( .D(n25), .CP(n60), .Q(divisor[2]) );
  DFQD2BWP12T30P140 divisor_reg_1_ ( .D(n26), .CP(n60), .Q(divisor[1]) );
  DFQD2BWP12T30P140 divisor_reg_15_ ( .D(n12), .CP(n60), .Q(divisor[15]) );
  DFQD2BWP12T30P140 divisor_reg_14_ ( .D(n13), .CP(n60), .Q(divisor[14]) );
  DFQD2BWP12T30P140 divisor_reg_13_ ( .D(n14), .CP(n60), .Q(divisor[13]) );
  DFQD2BWP12T30P140 divisor_reg_12_ ( .D(n15), .CP(n60), .Q(divisor[12]) );
  DFQD2BWP12T30P140 divisor_reg_11_ ( .D(n16), .CP(n60), .Q(divisor[11]) );
  DFQD2BWP12T30P140 divisor_reg_10_ ( .D(n17), .CP(n60), .Q(divisor[10]) );
  DFQD2BWP12T30P140 divisor_reg_9_ ( .D(n18), .CP(n60), .Q(divisor[9]) );
  DFQD2BWP12T30P140 divisor_reg_0_ ( .D(n28), .CP(n60), .Q(divisor[0]) );
  DFQD2BWP12T30P140 divisor_reg_7_ ( .D(n20), .CP(n60), .Q(divisor[7]) );
  DFQD2BWP12T30P140 divisor_reg_6_ ( .D(n21), .CP(n60), .Q(divisor[6]) );
  DFQD2BWP12T30P140 divisor_reg_3_ ( .D(n24), .CP(n60), .Q(divisor[3]) );
  DFQD1BWP12T30P140 csr_do_reg_15_ ( .D(N90), .CP(n60), .Q(csr_do[15]) );
  DFQD1BWP12T30P140 divisor_reg_8_ ( .D(n19), .CP(n60), .Q(divisor[8]) );
  TIELBWP12T30P140 U48 ( .ZN(n11) );
  INVD0BWP12T30P140 U49 ( .I(csr_do[17]), .ZN(n29) );
  INVD0BWP12T30P140 U50 ( .I(n29), .ZN(csr_do[18]) );
  INVD0BWP12T30P140 U51 ( .I(n29), .ZN(csr_do[19]) );
  INVD0BWP12T30P140 U52 ( .I(n29), .ZN(csr_do[20]) );
  INVD0BWP12T30P140 U53 ( .I(n29), .ZN(csr_do[21]) );
  INVD0BWP12T30P140 U54 ( .I(n29), .ZN(csr_do[22]) );
  INVD0BWP12T30P140 U55 ( .I(n29), .ZN(csr_do[23]) );
  INVD0BWP12T30P140 U56 ( .I(n29), .ZN(csr_do[24]) );
  INVD0BWP12T30P140 U57 ( .I(n29), .ZN(csr_do[25]) );
  INVD0BWP12T30P140 U58 ( .I(n29), .ZN(csr_do[26]) );
  INVD0BWP12T30P140 U59 ( .I(n29), .ZN(csr_do[27]) );
  INVD0BWP12T30P140 U60 ( .I(n29), .ZN(csr_do[28]) );
  INVD0BWP12T30P140 U61 ( .I(n29), .ZN(csr_do[29]) );
  INVD0BWP12T30P140 U62 ( .I(n29), .ZN(csr_do[30]) );
  INVD0BWP12T30P140 U63 ( .I(n29), .ZN(csr_do[31]) );
  INVD0BWP12T30P140 U64 ( .I(n29), .ZN(csr_do[16]) );
  NR4D0BWP12T30P140 U65 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .ZN(n32) );
  IND2D1BWP12T30P140 U66 ( .A1(csr_a[1]), .B1(n32), .ZN(n43) );
  INVD0BWP12T30P140 U67 ( .I(csr_a[0]), .ZN(n31) );
  NR2D0BWP12T30P140 U68 ( .A1(n43), .A2(n31), .ZN(n34) );
  AOI21D0BWP12T30P140 U69 ( .A1(n34), .A2(csr_we), .B(sys_rst), .ZN(n38) );
  NR2D0BWP12T30P140 U70 ( .A1(sys_rst), .A2(n38), .ZN(n37) );
  AO22D0BWP12T30P140 U71 ( .A1(n38), .A2(divisor[3]), .B1(n37), .B2(csr_di[3]), 
        .Z(n24) );
  AO22D0BWP12T30P140 U72 ( .A1(n38), .A2(divisor[7]), .B1(n37), .B2(csr_di[7]), 
        .Z(n20) );
  AO22D0BWP12T30P140 U73 ( .A1(n38), .A2(divisor[0]), .B1(n37), .B2(csr_di[0]), 
        .Z(n28) );
  AO22D0BWP12T30P140 U74 ( .A1(n38), .A2(divisor[8]), .B1(n37), .B2(csr_di[8]), 
        .Z(n19) );
  AO22D0BWP12T30P140 U75 ( .A1(n38), .A2(divisor[9]), .B1(n37), .B2(csr_di[9]), 
        .Z(n18) );
  AO22D0BWP12T30P140 U76 ( .A1(n38), .A2(divisor[10]), .B1(n37), .B2(
        csr_di[10]), .Z(n17) );
  AO22D0BWP12T30P140 U77 ( .A1(n38), .A2(divisor[11]), .B1(n37), .B2(
        csr_di[11]), .Z(n16) );
  AO22D0BWP12T30P140 U78 ( .A1(n38), .A2(divisor[12]), .B1(n37), .B2(
        csr_di[12]), .Z(n15) );
  AO22D0BWP12T30P140 U79 ( .A1(n38), .A2(divisor[13]), .B1(n37), .B2(
        csr_di[13]), .Z(n14) );
  AO22D0BWP12T30P140 U80 ( .A1(n38), .A2(divisor[14]), .B1(n37), .B2(
        csr_di[14]), .Z(n13) );
  AO22D0BWP12T30P140 U81 ( .A1(n38), .A2(divisor[15]), .B1(n37), .B2(
        csr_di[15]), .Z(n12) );
  INVD0BWP12T30P140 U82 ( .I(n38), .ZN(n30) );
  AO221D0BWP12T30P140 U83 ( .A1(n38), .A2(divisor[1]), .B1(n30), .B2(csr_di[1]), .C(sys_rst), .Z(n26) );
  AO221D0BWP12T30P140 U84 ( .A1(n38), .A2(divisor[2]), .B1(n30), .B2(csr_di[2]), .C(sys_rst), .Z(n25) );
  AO221D0BWP12T30P140 U85 ( .A1(n38), .A2(divisor[4]), .B1(n30), .B2(csr_di[4]), .C(sys_rst), .Z(n23) );
  AO221D0BWP12T30P140 U86 ( .A1(n38), .A2(divisor[5]), .B1(n30), .B2(csr_di[5]), .C(sys_rst), .Z(n22) );
  INVD0BWP12T30P140 U87 ( .I(csr_we), .ZN(n42) );
  IND4D1BWP12T30P140 U88 ( .A1(sys_rst), .B1(csr_a[1]), .B2(n32), .B3(n31), 
        .ZN(n36) );
  NR2D0BWP12T30P140 U89 ( .A1(n42), .A2(n36), .ZN(n33) );
  CKMUX2D0BWP12T30P140 U90 ( .I0(thru), .I1(csr_di[0]), .S(n33), .Z(n27) );
  INR2D1BWP12T30P140 U91 ( .A1(n34), .B1(sys_rst), .ZN(n40) );
  AN2D0BWP12T30P140 U92 ( .A1(divisor[13]), .A2(n40), .Z(N88) );
  AN2D0BWP12T30P140 U93 ( .A1(divisor[14]), .A2(n40), .Z(N89) );
  AN2D0BWP12T30P140 U94 ( .A1(divisor[15]), .A2(n40), .Z(N90) );
  AN2D0BWP12T30P140 U95 ( .A1(divisor[11]), .A2(n40), .Z(N86) );
  INVD0BWP12T30P140 U96 ( .I(thru), .ZN(n41) );
  NR3D0BWP12T30P140 U97 ( .A1(sys_rst), .A2(csr_a[0]), .A3(n43), .ZN(n39) );
  AOI22D0BWP12T30P140 U98 ( .A1(divisor[0]), .A2(n40), .B1(n39), .B2(
        rx_data[0]), .ZN(n35) );
  OAI21D0BWP12T30P140 U99 ( .A1(n41), .A2(n36), .B(n35), .ZN(N75) );
  AO22D0BWP12T30P140 U100 ( .A1(divisor[6]), .A2(n40), .B1(n39), .B2(
        rx_data[6]), .Z(N81) );
  AO22D0BWP12T30P140 U101 ( .A1(n38), .A2(divisor[6]), .B1(n37), .B2(csr_di[6]), .Z(n21) );
  AO22D0BWP12T30P140 U102 ( .A1(divisor[3]), .A2(n40), .B1(n39), .B2(
        rx_data[3]), .Z(N78) );
  AO22D0BWP12T30P140 U103 ( .A1(divisor[1]), .A2(n40), .B1(n39), .B2(
        rx_data[1]), .Z(N76) );
  AO22D0BWP12T30P140 U104 ( .A1(divisor[4]), .A2(n40), .B1(n39), .B2(
        rx_data[4]), .Z(N79) );
  AO22D0BWP12T30P140 U105 ( .A1(divisor[2]), .A2(n40), .B1(n39), .B2(
        rx_data[2]), .Z(N77) );
  AN2D0BWP12T30P140 U106 ( .A1(divisor[9]), .A2(n40), .Z(N84) );
  AO22D0BWP12T30P140 U107 ( .A1(divisor[5]), .A2(n40), .B1(n39), .B2(
        rx_data[5]), .Z(N80) );
  AO22D0BWP12T30P140 U108 ( .A1(divisor[7]), .A2(n40), .B1(n39), .B2(
        rx_data[7]), .Z(N82) );
  AN2D0BWP12T30P140 U109 ( .A1(divisor[8]), .A2(n40), .Z(N83) );
  AN2D0BWP12T30P140 U110 ( .A1(divisor[12]), .A2(n40), .Z(N87) );
  AN2D0BWP12T30P140 U111 ( .A1(divisor[10]), .A2(n40), .Z(N85) );
  CKBD0BWP12T30P140 U112 ( .I(sys_clk), .Z(n60) );
  CKBD0BWP12T30P140 U113 ( .I(sys_clk), .Z(n59) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(uart_rx), .I1(uart_tx_transceiver), .S(n41), 
        .Z(uart_tx) );
  NR3D0BWP12T30P140 U115 ( .A1(csr_a[0]), .A2(n43), .A3(n42), .ZN(tx_wr) );
endmodule

