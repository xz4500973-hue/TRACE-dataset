/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:38:47 2026
/////////////////////////////////////////////////////////////


module rtfSimpleUartRx ( rst_i, clk_i, cyc_i, stb_i, ack_o, we_i, dat_o, cs_i, 
        baud16x_ce, baud8x, clear, rxd, data_present, frame_err, overrun );
  output [7:0] dat_o;
  input rst_i, clk_i, cyc_i, stb_i, we_i, cs_i, baud16x_ce, baud8x, clear, rxd;
  output ack_o, data_present, frame_err, overrun;
  wire   wf, rdxstart, state, N48, modeX8, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93;
  wire   [7:0] dat;
  wire   [9:1] rx_data;
  wire   [4:0] rxdd;
  wire   [7:0] cnt;

  DFQD2BWP12T30P140 rxdd_reg_3_ ( .D(n62), .CP(n92), .Q(rxdd[3]) );
  DFQD2BWP12T30P140 rx_data_reg_9_ ( .D(n78), .CP(n92), .Q(rx_data[9]) );
  DFQD2BWP12T30P140 rx_data_reg_8_ ( .D(n77), .CP(n93), .Q(rx_data[8]) );
  DFQD2BWP12T30P140 rx_data_reg_7_ ( .D(n76), .CP(n93), .Q(rx_data[7]) );
  DFQD2BWP12T30P140 rx_data_reg_6_ ( .D(n75), .CP(n93), .Q(rx_data[6]) );
  DFQD2BWP12T30P140 rx_data_reg_5_ ( .D(n74), .CP(n93), .Q(rx_data[5]) );
  DFQD2BWP12T30P140 rx_data_reg_4_ ( .D(n73), .CP(n93), .Q(rx_data[4]) );
  DFQD2BWP12T30P140 rx_data_reg_3_ ( .D(n72), .CP(n93), .Q(rx_data[3]) );
  DFQD2BWP12T30P140 rx_data_reg_2_ ( .D(n71), .CP(n93), .Q(rx_data[2]) );
  DFQD2BWP12T30P140 rx_data_reg_1_ ( .D(n70), .CP(n93), .Q(rx_data[1]) );
  DFQD2BWP12T30P140 dat_reg_0_ ( .D(n58), .CP(n92), .Q(dat[0]) );
  DFQD2BWP12T30P140 dat_reg_7_ ( .D(n57), .CP(n92), .Q(dat[7]) );
  DFQD2BWP12T30P140 dat_reg_6_ ( .D(n56), .CP(n92), .Q(dat[6]) );
  DFQD2BWP12T30P140 dat_reg_5_ ( .D(n55), .CP(n92), .Q(dat[5]) );
  DFQD2BWP12T30P140 dat_reg_3_ ( .D(n53), .CP(n92), .Q(dat[3]) );
  DFQD2BWP12T30P140 dat_reg_2_ ( .D(n52), .CP(n92), .Q(dat[2]) );
  DFQD2BWP12T30P140 rdxstart_reg ( .D(n60), .CP(n92), .Q(rdxstart) );
  DFQD2BWP12T30P140 rxdd_reg_2_ ( .D(n63), .CP(n92), .Q(rxdd[2]) );
  DFQD2BWP12T30P140 dat_reg_1_ ( .D(n51), .CP(n93), .Q(dat[1]) );
  DFQD2BWP12T30P140 rxdd_reg_1_ ( .D(n64), .CP(n92), .Q(rxdd[1]) );
  DFQD2BWP12T30P140 frame_err_reg ( .D(n69), .CP(n93), .Q(frame_err) );
  DFQD2BWP12T30P140 modeX8_reg ( .D(n79), .CP(n93), .Q(modeX8) );
  DFQD2BWP12T30P140 overrun_reg ( .D(n68), .CP(n93), .Q(overrun) );
  DFQD2BWP12T30P140 rxdd_reg_0_ ( .D(n65), .CP(n93), .Q(rxdd[0]) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n48), .CP(n92), .Q(cnt[3]) );
  DFQD2BWP12T30P140 cnt_reg_6_ ( .D(n45), .CP(n92), .Q(cnt[6]) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n49), .CP(n93), .Q(cnt[2]) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n50), .CP(n92), .Q(cnt[1]) );
  DFQD2BWP12T30P140 cnt_reg_7_ ( .D(n44), .CP(clk_i), .Q(cnt[7]) );
  DFQD2BWP12T30P140 rxdd_reg_4_ ( .D(n61), .CP(n92), .Q(rxdd[4]) );
  DFQD2BWP12T30P140 state_reg ( .D(n66), .CP(n93), .Q(state) );
  DFQD2BWP12T30P140 data_present_reg ( .D(n67), .CP(n93), .Q(data_present) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n59), .CP(n92), .Q(cnt[0]) );
  DFQD2BWP12T30P140 cnt_reg_5_ ( .D(n46), .CP(n93), .Q(cnt[5]) );
  DFQD2BWP12T30P140 wf_reg ( .D(N48), .CP(n93), .Q(wf) );
  DFQD1BWP12T30P140 dat_reg_4_ ( .D(n54), .CP(n92), .Q(dat[4]) );
  DFQD1BWP12T30P140 cnt_reg_4_ ( .D(n47), .CP(clk_i), .Q(cnt[4]) );
  INVD0BWP12T30P140 U3 ( .I(rxdd[3]), .ZN(n36) );
  INVD0BWP12T30P140 U4 ( .I(baud16x_ce), .ZN(n82) );
  MAOI22D0BWP12T30P140 U5 ( .A1(n36), .A2(n82), .B1(n82), .B2(rxdd[2]), .ZN(
        n62) );
  ND3D0BWP12T30P140 U6 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .ZN(n18) );
  INVD0BWP12T30P140 U7 ( .I(state), .ZN(n20) );
  NR2D0BWP12T30P140 U8 ( .A1(n20), .A2(n82), .ZN(n30) );
  INVD0BWP12T30P140 U9 ( .I(n30), .ZN(n87) );
  NR3D0BWP12T30P140 U10 ( .A1(cnt[3]), .A2(n18), .A3(n87), .ZN(n38) );
  NR2D0BWP12T30P140 U11 ( .A1(clear), .A2(rst_i), .ZN(n88) );
  ND2D0BWP12T30P140 U12 ( .A1(n38), .A2(n88), .ZN(n3) );
  INVD0BWP12T30P140 U13 ( .I(n3), .ZN(n4) );
  INVD0BWP12T30P140 U14 ( .I(rxdd[4]), .ZN(n35) );
  INVD0BWP12T30P140 U15 ( .I(rx_data[9]), .ZN(n2) );
  AOI22D0BWP12T30P140 U16 ( .A1(n4), .A2(n35), .B1(n2), .B2(n3), .ZN(n78) );
  INVD0BWP12T30P140 U17 ( .I(rx_data[8]), .ZN(n6) );
  AOI22D0BWP12T30P140 U18 ( .A1(n4), .A2(n2), .B1(n6), .B2(n3), .ZN(n77) );
  INVD0BWP12T30P140 U19 ( .I(rx_data[7]), .ZN(n7) );
  AOI22D0BWP12T30P140 U20 ( .A1(n4), .A2(n6), .B1(n7), .B2(n3), .ZN(n76) );
  INVD0BWP12T30P140 U21 ( .I(rx_data[6]), .ZN(n8) );
  AOI22D0BWP12T30P140 U22 ( .A1(n4), .A2(n7), .B1(n8), .B2(n3), .ZN(n75) );
  INVD0BWP12T30P140 U23 ( .I(rx_data[5]), .ZN(n9) );
  AOI22D0BWP12T30P140 U24 ( .A1(n4), .A2(n8), .B1(n9), .B2(n3), .ZN(n74) );
  INVD0BWP12T30P140 U25 ( .I(rx_data[4]), .ZN(n10) );
  AOI22D0BWP12T30P140 U26 ( .A1(n4), .A2(n9), .B1(n10), .B2(n3), .ZN(n73) );
  INVD0BWP12T30P140 U27 ( .I(rx_data[3]), .ZN(n11) );
  AOI22D0BWP12T30P140 U28 ( .A1(n4), .A2(n10), .B1(n11), .B2(n3), .ZN(n72) );
  INVD0BWP12T30P140 U29 ( .I(rx_data[2]), .ZN(n12) );
  AOI22D0BWP12T30P140 U30 ( .A1(n4), .A2(n11), .B1(n12), .B2(n3), .ZN(n71) );
  INVD0BWP12T30P140 U31 ( .I(rx_data[1]), .ZN(n5) );
  AOI22D0BWP12T30P140 U32 ( .A1(n4), .A2(n12), .B1(n5), .B2(n3), .ZN(n70) );
  MAOI22D0BWP12T30P140 U33 ( .A1(wf), .A2(n5), .B1(dat[0]), .B2(wf), .ZN(n58)
         );
  MAOI22D0BWP12T30P140 U34 ( .A1(wf), .A2(n6), .B1(dat[7]), .B2(wf), .ZN(n57)
         );
  MAOI22D0BWP12T30P140 U35 ( .A1(wf), .A2(n7), .B1(dat[6]), .B2(wf), .ZN(n56)
         );
  MAOI22D0BWP12T30P140 U36 ( .A1(wf), .A2(n8), .B1(dat[5]), .B2(wf), .ZN(n55)
         );
  MAOI22D0BWP12T30P140 U37 ( .A1(wf), .A2(n9), .B1(dat[4]), .B2(wf), .ZN(n54)
         );
  MAOI22D0BWP12T30P140 U38 ( .A1(wf), .A2(n10), .B1(dat[3]), .B2(wf), .ZN(n53)
         );
  MAOI22D0BWP12T30P140 U39 ( .A1(wf), .A2(n11), .B1(dat[2]), .B2(wf), .ZN(n52)
         );
  AO32D0BWP12T30P140 U40 ( .A1(baud16x_ce), .A2(n36), .A3(rxdd[4]), .B1(n82), 
        .B2(rdxstart), .Z(n60) );
  CKMUX2D0BWP12T30P140 U41 ( .I0(rxdd[2]), .I1(rxdd[1]), .S(baud16x_ce), .Z(
        n63) );
  MAOI22D0BWP12T30P140 U42 ( .A1(wf), .A2(n12), .B1(dat[1]), .B2(wf), .ZN(n51)
         );
  CKMUX2D0BWP12T30P140 U43 ( .I0(rxdd[1]), .I1(rxdd[0]), .S(baud16x_ce), .Z(
        n64) );
  NR2D0BWP12T30P140 U44 ( .A1(n87), .A2(n18), .ZN(n24) );
  INVD0BWP12T30P140 U45 ( .I(cnt[3]), .ZN(n23) );
  ND4D0BWP12T30P140 U46 ( .A1(cnt[4]), .A2(cnt[7]), .A3(n24), .A4(n23), .ZN(
        n13) );
  NR3D0BWP12T30P140 U47 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n13), .ZN(n89) );
  OAI21D0BWP12T30P140 U48 ( .A1(frame_err), .A2(n89), .B(n88), .ZN(n14) );
  AOI21D0BWP12T30P140 U49 ( .A1(n89), .A2(rxdd[4]), .B(n14), .ZN(n69) );
  OA21D0BWP12T30P140 U50 ( .A1(state), .A2(n82), .B(modeX8), .Z(n79) );
  INVD0BWP12T30P140 U51 ( .I(data_present), .ZN(n16) );
  OAI21D0BWP12T30P140 U52 ( .A1(overrun), .A2(n89), .B(n88), .ZN(n15) );
  AOI21D0BWP12T30P140 U53 ( .A1(n89), .A2(n16), .B(n15), .ZN(n68) );
  CKMUX2D0BWP12T30P140 U54 ( .I0(rxdd[0]), .I1(rxd), .S(baud16x_ce), .Z(n65)
         );
  AOI21D0BWP12T30P140 U55 ( .A1(state), .A2(n18), .B(n82), .ZN(n28) );
  INVD0BWP12T30P140 U56 ( .I(n38), .ZN(n17) );
  OAI21D0BWP12T30P140 U57 ( .A1(n28), .A2(n23), .B(n17), .ZN(n48) );
  INVD0BWP12T30P140 U58 ( .I(cnt[4]), .ZN(n25) );
  NR3D0BWP12T30P140 U59 ( .A1(n18), .A2(n25), .A3(n23), .ZN(n19) );
  ND3D0BWP12T30P140 U60 ( .A1(n30), .A2(cnt[5]), .A3(n19), .ZN(n33) );
  INVD0BWP12T30P140 U61 ( .I(cnt[6]), .ZN(n34) );
  INVD0BWP12T30P140 U62 ( .I(n19), .ZN(n86) );
  AOI21D0BWP12T30P140 U63 ( .A1(state), .A2(n86), .B(n82), .ZN(n85) );
  OAI21D0BWP12T30P140 U64 ( .A1(cnt[5]), .A2(n87), .B(n85), .ZN(n29) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n33), .A2(n34), .B1(n34), .B2(n29), .ZN(n45)
         );
  ND2D0BWP12T30P140 U66 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n22) );
  NR2D0BWP12T30P140 U67 ( .A1(cnt[1]), .A2(n87), .ZN(n80) );
  OAI21D0BWP12T30P140 U68 ( .A1(cnt[0]), .A2(n20), .B(baud16x_ce), .ZN(n81) );
  OAI21D0BWP12T30P140 U69 ( .A1(n80), .A2(n81), .B(cnt[2]), .ZN(n21) );
  OAI31D0BWP12T30P140 U70 ( .A1(cnt[2]), .A2(n22), .A3(n87), .B(n21), .ZN(n49)
         );
  ND2D0BWP12T30P140 U71 ( .A1(n30), .A2(n23), .ZN(n27) );
  ND2D0BWP12T30P140 U72 ( .A1(cnt[3]), .A2(n24), .ZN(n26) );
  AOI32D0BWP12T30P140 U73 ( .A1(n28), .A2(cnt[4]), .A3(n27), .B1(n26), .B2(n25), .ZN(n47) );
  AOI21D0BWP12T30P140 U74 ( .A1(n30), .A2(n34), .B(n29), .ZN(n32) );
  INVD0BWP12T30P140 U75 ( .I(cnt[7]), .ZN(n31) );
  OAI32D0BWP12T30P140 U76 ( .A1(cnt[7]), .A2(n34), .A3(n33), .B1(n32), .B2(n31), .ZN(n44) );
  AOI22D0BWP12T30P140 U77 ( .A1(baud16x_ce), .A2(n36), .B1(n35), .B2(n82), 
        .ZN(n61) );
  AOI21D0BWP12T30P140 U78 ( .A1(baud16x_ce), .A2(rdxstart), .B(state), .ZN(n41) );
  NR4D0BWP12T30P140 U79 ( .A1(cnt[6]), .A2(cnt[5]), .A3(cnt[4]), .A4(cnt[7]), 
        .ZN(n37) );
  AOI31D0BWP12T30P140 U80 ( .A1(rxdd[4]), .A2(n38), .A3(n37), .B(n89), .ZN(n39) );
  ND2D0BWP12T30P140 U81 ( .A1(n88), .A2(n39), .ZN(n40) );
  NR2D0BWP12T30P140 U82 ( .A1(n41), .A2(n40), .ZN(n66) );
  INVD0BWP12T30P140 U83 ( .I(wf), .ZN(n43) );
  ND3D0BWP12T30P140 U84 ( .A1(cs_i), .A2(cyc_i), .A3(stb_i), .ZN(n91) );
  OAI21D0BWP12T30P140 U85 ( .A1(we_i), .A2(n91), .B(data_present), .ZN(n42) );
  AOI21D0BWP12T30P140 U86 ( .A1(n43), .A2(n42), .B(rst_i), .ZN(n67) );
  AO22D0BWP12T30P140 U87 ( .A1(cnt[1]), .A2(n81), .B1(cnt[0]), .B2(n80), .Z(
        n50) );
  AOI22D0BWP12T30P140 U88 ( .A1(baud16x_ce), .A2(modeX8), .B1(cnt[0]), .B2(n82), .ZN(n83) );
  OAI21D0BWP12T30P140 U89 ( .A1(cnt[0]), .A2(n87), .B(n83), .ZN(n59) );
  INVD0BWP12T30P140 U90 ( .I(cnt[5]), .ZN(n84) );
  OAI32D0BWP12T30P140 U91 ( .A1(cnt[5]), .A2(n87), .A3(n86), .B1(n85), .B2(n84), .ZN(n46) );
  ND2D0BWP12T30P140 U92 ( .A1(n89), .A2(n88), .ZN(n90) );
  NR2D0BWP12T30P140 U93 ( .A1(data_present), .A2(n90), .ZN(N48) );
  CKBD0BWP12T30P140 U94 ( .I(clk_i), .Z(n92) );
  CKBD0BWP12T30P140 U95 ( .I(clk_i), .Z(n93) );
  INVD0BWP12T30P140 U96 ( .I(n91), .ZN(ack_o) );
  AN2D0BWP12T30P140 U97 ( .A1(dat[7]), .A2(ack_o), .Z(dat_o[7]) );
  AN2D0BWP12T30P140 U98 ( .A1(dat[0]), .A2(ack_o), .Z(dat_o[0]) );
  AN2D0BWP12T30P140 U99 ( .A1(dat[1]), .A2(ack_o), .Z(dat_o[1]) );
  AN2D0BWP12T30P140 U100 ( .A1(dat[2]), .A2(ack_o), .Z(dat_o[2]) );
  AN2D0BWP12T30P140 U101 ( .A1(dat[3]), .A2(ack_o), .Z(dat_o[3]) );
  AN2D0BWP12T30P140 U102 ( .A1(dat[4]), .A2(ack_o), .Z(dat_o[4]) );
  AN2D0BWP12T30P140 U103 ( .A1(dat[5]), .A2(ack_o), .Z(dat_o[5]) );
  AN2D0BWP12T30P140 U104 ( .A1(dat[6]), .A2(ack_o), .Z(dat_o[6]) );
endmodule


module rtfSimpleUartTx ( rst_i, clk_i, cyc_i, stb_i, ack_o, we_i, dat_i, cs_i, 
        baud16x_ce, baud8x, cts, txd, empty, txc );
  input [7:0] dat_i;
  input rst_i, clk_i, cyc_i, stb_i, we_i, cs_i, baud16x_ce, baud8x, cts;
  output ack_o, txd, empty, txc;
  wire   rd, modeX8, N65, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89;
  wire   [9:1] tx_data;
  wire   [7:0] fdo;
  wire   [7:0] cnt;

  DFQD2BWP12T30P140 tx_data_reg_0_ ( .D(n70), .CP(n89), .Q(txd) );
  DFQD2BWP12T30P140 rd_reg ( .D(N65), .CP(n88), .Q(rd) );
  DFQD2BWP12T30P140 txc_reg ( .D(n71), .CP(n88), .Q(txc) );
  DFQD2BWP12T30P140 cnt_reg_7_ ( .D(n53), .CP(n88), .Q(cnt[7]) );
  DFQD2BWP12T30P140 tx_data_reg_8_ ( .D(n68), .CP(n88), .Q(tx_data[8]) );
  DFQD2BWP12T30P140 tx_data_reg_7_ ( .D(n67), .CP(n88), .Q(tx_data[7]) );
  DFQD2BWP12T30P140 tx_data_reg_6_ ( .D(n66), .CP(n88), .Q(tx_data[6]) );
  DFQD2BWP12T30P140 tx_data_reg_4_ ( .D(n64), .CP(n88), .Q(tx_data[4]) );
  DFQD2BWP12T30P140 tx_data_reg_3_ ( .D(n63), .CP(n89), .Q(tx_data[3]) );
  DFQD2BWP12T30P140 tx_data_reg_2_ ( .D(n62), .CP(n89), .Q(tx_data[2]) );
  DFQD2BWP12T30P140 tx_data_reg_1_ ( .D(n61), .CP(n89), .Q(tx_data[1]) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(n57), .CP(n88), .Q(cnt[3]) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(n58), .CP(n89), .Q(cnt[2]) );
  DFQD2BWP12T30P140 tx_data_reg_9_ ( .D(n69), .CP(n88), .Q(tx_data[9]) );
  DFQD2BWP12T30P140 fdo_reg_7_ ( .D(n52), .CP(n89), .Q(fdo[7]) );
  DFQD2BWP12T30P140 fdo_reg_6_ ( .D(n51), .CP(n89), .Q(fdo[6]) );
  DFQD2BWP12T30P140 fdo_reg_5_ ( .D(n50), .CP(n89), .Q(fdo[5]) );
  DFQD2BWP12T30P140 fdo_reg_4_ ( .D(n49), .CP(n89), .Q(fdo[4]) );
  DFQD2BWP12T30P140 fdo_reg_3_ ( .D(n48), .CP(n89), .Q(fdo[3]) );
  DFQD2BWP12T30P140 fdo_reg_2_ ( .D(n47), .CP(n89), .Q(fdo[2]) );
  DFQD2BWP12T30P140 fdo_reg_1_ ( .D(n46), .CP(n88), .Q(fdo[1]) );
  DFQD2BWP12T30P140 modeX8_reg ( .D(n72), .CP(n88), .Q(modeX8) );
  DFQD2BWP12T30P140 cnt_reg_5_ ( .D(n55), .CP(n89), .Q(cnt[5]) );
  DFQD2BWP12T30P140 cnt_reg_4_ ( .D(n56), .CP(n89), .Q(cnt[4]) );
  DFQD2BWP12T30P140 cnt_reg_1_ ( .D(n59), .CP(n88), .Q(cnt[1]) );
  DFQD2BWP12T30P140 cnt_reg_6_ ( .D(n54), .CP(n89), .Q(cnt[6]) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(n73), .CP(n88), .Q(cnt[0]) );
  DFQD2BWP12T30P140 empty_reg ( .D(n60), .CP(n88), .Q(empty) );
  DFQD1BWP12T30P140 tx_data_reg_5_ ( .D(n65), .CP(n88), .Q(tx_data[5]) );
  DFQD1BWP12T30P140 fdo_reg_0_ ( .D(n45), .CP(n89), .Q(fdo[0]) );
  AN3D0BWP12T30P140 U3 ( .A1(cyc_i), .A2(cs_i), .A3(stb_i), .Z(ack_o) );
  ND2D0BWP12T30P140 U4 ( .A1(ack_o), .A2(we_i), .ZN(n78) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(dat_i[0]), .I1(fdo[0]), .S(n78), .Z(n45) );
  AN3D0BWP12T30P140 U6 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .Z(n18) );
  ND2D0BWP12T30P140 U7 ( .A1(cnt[3]), .A2(n18), .ZN(n31) );
  IND2D1BWP12T30P140 U8 ( .A1(n31), .B1(cnt[4]), .ZN(n74) );
  INVD0BWP12T30P140 U9 ( .I(cnt[7]), .ZN(n12) );
  NR4D0BWP12T30P140 U10 ( .A1(cnt[5]), .A2(cnt[6]), .A3(n74), .A4(n12), .ZN(n9) );
  INVD0BWP12T30P140 U11 ( .I(empty), .ZN(n7) );
  ND4D0BWP12T30P140 U12 ( .A1(baud16x_ce), .A2(n9), .A3(cts), .A4(n7), .ZN(n1)
         );
  NR2D0BWP12T30P140 U13 ( .A1(rst_i), .A2(n1), .ZN(N65) );
  IND2D1BWP12T30P140 U14 ( .A1(n9), .B1(baud16x_ce), .ZN(n44) );
  INVD0BWP12T30P140 U15 ( .I(rst_i), .ZN(n85) );
  OAI21D0BWP12T30P140 U16 ( .A1(n31), .A2(n44), .B(n85), .ZN(n80) );
  INR2D1BWP12T30P140 U17 ( .A1(n1), .B1(n80), .ZN(n87) );
  IND2D1BWP12T30P140 U18 ( .A1(n87), .B1(n9), .ZN(n36) );
  INVD0BWP12T30P140 U19 ( .I(fdo[2]), .ZN(n3) );
  AOI22D0BWP12T30P140 U20 ( .A1(tx_data[3]), .A2(n87), .B1(tx_data[4]), .B2(
        n80), .ZN(n2) );
  OAI211D0BWP12T30P140 U21 ( .A1(n36), .A2(n3), .B(n2), .C(n85), .ZN(n63) );
  AN2D0BWP12T30P140 U22 ( .A1(cts), .A2(n7), .Z(n6) );
  AOI21D0BWP12T30P140 U23 ( .A1(n9), .A2(baud16x_ce), .B(rst_i), .ZN(n5) );
  INVD0BWP12T30P140 U24 ( .I(n5), .ZN(n86) );
  INVD0BWP12T30P140 U25 ( .I(txc), .ZN(n4) );
  AOI32D0BWP12T30P140 U26 ( .A1(n6), .A2(n86), .A3(n85), .B1(n5), .B2(n4), 
        .ZN(n71) );
  ND3D0BWP12T30P140 U27 ( .A1(n7), .A2(cts), .A3(baud16x_ce), .ZN(n8) );
  ND3D0BWP12T30P140 U28 ( .A1(n44), .A2(n8), .A3(n85), .ZN(n83) );
  INVD0BWP12T30P140 U29 ( .I(n83), .ZN(n41) );
  NR2D0BWP12T30P140 U30 ( .A1(n9), .A2(n41), .ZN(n37) );
  INVD0BWP12T30P140 U31 ( .I(cnt[5]), .ZN(n75) );
  NR2D0BWP12T30P140 U32 ( .A1(n74), .A2(n75), .ZN(n77) );
  ND2D0BWP12T30P140 U33 ( .A1(cnt[6]), .A2(n77), .ZN(n10) );
  AOI21D0BWP12T30P140 U34 ( .A1(n37), .A2(n10), .B(n41), .ZN(n13) );
  INVD0BWP12T30P140 U35 ( .I(n10), .ZN(n43) );
  AOI31D0BWP12T30P140 U36 ( .A1(n43), .A2(n12), .A3(n83), .B(rst_i), .ZN(n11)
         );
  OAI21D0BWP12T30P140 U37 ( .A1(n13), .A2(n12), .B(n11), .ZN(n53) );
  INVD0BWP12T30P140 U38 ( .I(fdo[0]), .ZN(n15) );
  AOI22D0BWP12T30P140 U39 ( .A1(tx_data[1]), .A2(n87), .B1(tx_data[2]), .B2(
        n80), .ZN(n14) );
  OAI211D0BWP12T30P140 U40 ( .A1(n36), .A2(n15), .B(n14), .C(n85), .ZN(n61) );
  INVD0BWP12T30P140 U41 ( .I(fdo[7]), .ZN(n17) );
  AOI22D0BWP12T30P140 U42 ( .A1(tx_data[8]), .A2(n87), .B1(tx_data[9]), .B2(
        n80), .ZN(n16) );
  OAI211D0BWP12T30P140 U43 ( .A1(n17), .A2(n36), .B(n16), .C(n85), .ZN(n68) );
  NR2D0BWP12T30P140 U44 ( .A1(n41), .A2(n31), .ZN(n28) );
  AOI21D0BWP12T30P140 U45 ( .A1(n18), .A2(n37), .B(cnt[3]), .ZN(n19) );
  OAI21D0BWP12T30P140 U46 ( .A1(n28), .A2(n19), .B(n85), .ZN(n57) );
  INVD0BWP12T30P140 U47 ( .I(fdo[6]), .ZN(n21) );
  AOI22D0BWP12T30P140 U48 ( .A1(tx_data[7]), .A2(n87), .B1(tx_data[8]), .B2(
        n80), .ZN(n20) );
  OAI211D0BWP12T30P140 U49 ( .A1(n36), .A2(n21), .B(n20), .C(n85), .ZN(n67) );
  ND2D0BWP12T30P140 U50 ( .A1(cnt[0]), .A2(n83), .ZN(n82) );
  INR2D1BWP12T30P140 U51 ( .A1(cnt[1]), .B1(n82), .ZN(n39) );
  INVD0BWP12T30P140 U52 ( .I(cnt[2]), .ZN(n23) );
  ND4D0BWP12T30P140 U53 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n37), .A4(n23), .ZN(
        n22) );
  OAI211D0BWP12T30P140 U54 ( .A1(n39), .A2(n23), .B(n85), .C(n22), .ZN(n58) );
  INVD0BWP12T30P140 U55 ( .I(fdo[5]), .ZN(n25) );
  AOI22D0BWP12T30P140 U56 ( .A1(tx_data[6]), .A2(n87), .B1(tx_data[7]), .B2(
        n80), .ZN(n24) );
  OAI211D0BWP12T30P140 U57 ( .A1(n36), .A2(n25), .B(n24), .C(n85), .ZN(n66) );
  INVD0BWP12T30P140 U58 ( .I(fdo[4]), .ZN(n27) );
  AOI22D0BWP12T30P140 U59 ( .A1(tx_data[5]), .A2(n87), .B1(tx_data[6]), .B2(
        n80), .ZN(n26) );
  OAI211D0BWP12T30P140 U60 ( .A1(n36), .A2(n27), .B(n26), .C(n85), .ZN(n65) );
  INVD0BWP12T30P140 U61 ( .I(n28), .ZN(n29) );
  AOI21D0BWP12T30P140 U62 ( .A1(cnt[4]), .A2(n29), .B(rst_i), .ZN(n30) );
  OAI31D0BWP12T30P140 U63 ( .A1(cnt[4]), .A2(n41), .A3(n31), .B(n30), .ZN(n56)
         );
  CKMUX2D0BWP12T30P140 U64 ( .I0(dat_i[7]), .I1(fdo[7]), .S(n78), .Z(n52) );
  INVD0BWP12T30P140 U65 ( .I(fdo[3]), .ZN(n33) );
  AOI22D0BWP12T30P140 U66 ( .A1(tx_data[4]), .A2(n87), .B1(tx_data[5]), .B2(
        n80), .ZN(n32) );
  OAI211D0BWP12T30P140 U67 ( .A1(n36), .A2(n33), .B(n32), .C(n85), .ZN(n64) );
  CKMUX2D0BWP12T30P140 U68 ( .I0(dat_i[6]), .I1(fdo[6]), .S(n78), .Z(n51) );
  INVD0BWP12T30P140 U69 ( .I(fdo[1]), .ZN(n35) );
  AOI22D0BWP12T30P140 U70 ( .A1(tx_data[2]), .A2(n87), .B1(tx_data[3]), .B2(
        n80), .ZN(n34) );
  OAI211D0BWP12T30P140 U71 ( .A1(n36), .A2(n35), .B(n34), .C(n85), .ZN(n62) );
  AOI21D0BWP12T30P140 U72 ( .A1(cnt[0]), .A2(n37), .B(cnt[1]), .ZN(n38) );
  OAI21D0BWP12T30P140 U73 ( .A1(n39), .A2(n38), .B(n85), .ZN(n59) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(dat_i[4]), .I1(fdo[4]), .S(n78), .Z(n49) );
  INVD0BWP12T30P140 U75 ( .I(n44), .ZN(n40) );
  OAI211D0BWP12T30P140 U76 ( .A1(cnt[6]), .A2(n77), .B(n40), .C(n85), .ZN(n42)
         );
  MOAI22D0BWP12T30P140 U77 ( .A1(n43), .A2(n42), .B1(cnt[6]), .B2(n41), .ZN(
        n54) );
  AO211D0BWP12T30P140 U78 ( .A1(n74), .A2(n75), .B(n44), .C(rst_i), .Z(n76) );
  OAI22D0BWP12T30P140 U79 ( .A1(n77), .A2(n76), .B1(n75), .B2(n83), .ZN(n55)
         );
  CKMUX2D0BWP12T30P140 U80 ( .I0(dat_i[2]), .I1(fdo[2]), .S(n78), .Z(n47) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(dat_i[1]), .I1(fdo[1]), .S(n78), .Z(n46) );
  CKMUX2D0BWP12T30P140 U82 ( .I0(dat_i[5]), .I1(fdo[5]), .S(n78), .Z(n50) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(dat_i[3]), .I1(fdo[3]), .S(n78), .Z(n48) );
  CKBD0BWP12T30P140 U84 ( .I(clk_i), .Z(n89) );
  CKBD0BWP12T30P140 U85 ( .I(clk_i), .Z(n88) );
  OAI21D0BWP12T30P140 U86 ( .A1(empty), .A2(rd), .B(n78), .ZN(n79) );
  ND2D0BWP12T30P140 U87 ( .A1(n85), .A2(n79), .ZN(n60) );
  AOI22D0BWP12T30P140 U88 ( .A1(txd), .A2(n87), .B1(tx_data[1]), .B2(n80), 
        .ZN(n81) );
  ND2D0BWP12T30P140 U89 ( .A1(n81), .A2(n85), .ZN(n70) );
  OAI22D0BWP12T30P140 U90 ( .A1(cnt[0]), .A2(n83), .B1(modeX8), .B2(n82), .ZN(
        n84) );
  ND2D0BWP12T30P140 U91 ( .A1(n85), .A2(n84), .ZN(n73) );
  INR2D1BWP12T30P140 U92 ( .A1(modeX8), .B1(n86), .ZN(n72) );
  IND2D1BWP12T30P140 U93 ( .A1(tx_data[9]), .B1(n87), .ZN(n69) );
endmodule


module edge_det ( rst, clk, ce, i, pe, ne, ee );
  input rst, clk, ce, i;
  output pe, ne, ee;
  wire   ed, n2, n3;

  DFQD1BWP12T30P140 ed_reg ( .D(n2), .CP(clk), .Q(ed) );
  INVD0BWP12T30P140 U3 ( .I(i), .ZN(n3) );
  NR2D0BWP12T30P140 U4 ( .A1(ed), .A2(n3), .ZN(pe) );
  NR2D0BWP12T30P140 U5 ( .A1(rst), .A2(n3), .ZN(n2) );
  AN2D0BWP12T30P140 U6 ( .A1(ed), .A2(n3), .Z(ne) );
  OR2D0BWP12T30P140 U7 ( .A1(pe), .A2(ne), .Z(ee) );
endmodule


module rtfSimpleUart ( rst_i, clk_i, cyc_i, stb_i, we_i, adr_i, dat_i, dat_o, 
        ack_o, vol_o, irq_o, cts_ni, rts_no, dsr_ni, dcd_ni, dtr_no, rxd_i, 
        txd_o, data_present_o, baud16_clk );
  input [31:0] adr_i;
  input [7:0] dat_i;
  output [7:0] dat_o;
  input rst_i, clk_i, cyc_i, stb_i, we_i, cts_ni, dsr_ni, dcd_ni, rxd_i;
  output ack_o, vol_o, irq_o, rts_no, dtr_no, txd_o, data_present_o,
         baud16_clk;
  wire   n_Logic0_, clear, rx_present_ie, tx_empty, tx_empty_ie, dcd_ie, txrx,
         frame_err, over_run, n_0_net_, hwfc, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210;
  wire   [1:0] dcdx;
  wire   [7:0] rx_do;
  wire   [1:0] ctsx;
  wire   [1:0] dsrx;
  wire   [23:0] c;
  wire   [23:0] ck_mul;

  rtfSimpleUartRx uart_rx0 ( .rst_i(n206), .clk_i(n208), .cyc_i(cyc_i), 
        .stb_i(stb_i), .we_i(we_i), .dat_o(rx_do), .cs_i(txrx), .baud16x_ce(
        baud16_clk), .baud8x(n_Logic0_), .clear(clear), .rxd(rxd_i), 
        .data_present(data_present_o), .frame_err(frame_err), .overrun(
        over_run) );
  rtfSimpleUartTx uart_tx0 ( .rst_i(n206), .clk_i(n208), .cyc_i(cyc_i), 
        .stb_i(stb_i), .we_i(we_i), .dat_i(dat_i), .cs_i(txrx), .baud16x_ce(
        baud16_clk), .baud8x(n_Logic0_), .cts(n_0_net_), .txd(txd_o), .empty(
        tx_empty) );
  edge_det ed0 ( .rst(n207), .clk(n208), .ce(n40), .i(c[23]), .pe(baud16_clk)
         );
  DFQD2BWP12T30P140 dsrx_reg_1_ ( .D(dsrx[0]), .CP(clk_i), .Q(dsrx[1]) );
  DFQD2BWP12T30P140 ctsx_reg_1_ ( .D(ctsx[0]), .CP(clk_i), .Q(ctsx[1]) );
  DFQD2BWP12T30P140 dcdx_reg_1_ ( .D(dcdx[0]), .CP(clk_i), .Q(dcdx[1]) );
  DFQD2BWP12T30P140 ck_mul_reg_0_ ( .D(n39), .CP(clk_i), .Q(ck_mul[0]) );
  DFQD2BWP12T30P140 ck_mul_reg_1_ ( .D(n41), .CP(clk_i), .Q(ck_mul[1]) );
  DFQD2BWP12T30P140 ctsx_reg_0_ ( .D(n70), .CP(clk_i), .Q(ctsx[0]) );
  DFQD2BWP12T30P140 dsrx_reg_0_ ( .D(n71), .CP(clk_i), .Q(dsrx[0]) );
  DFQD2BWP12T30P140 dcdx_reg_0_ ( .D(n72), .CP(clk_i), .Q(dcdx[0]) );
  DFQD2BWP12T30P140 rts_no_reg ( .D(n69), .CP(n209), .Q(rts_no) );
  DFQD2BWP12T30P140 dtr_no_reg ( .D(n65), .CP(n209), .Q(dtr_no) );
  DFQD2BWP12T30P140 c_reg_21_ ( .D(N96), .CP(n208), .Q(c[21]) );
  DFQD2BWP12T30P140 c_reg_19_ ( .D(N94), .CP(n208), .Q(c[19]) );
  DFQD2BWP12T30P140 c_reg_17_ ( .D(N92), .CP(n208), .Q(c[17]) );
  DFQD2BWP12T30P140 c_reg_15_ ( .D(N90), .CP(n208), .Q(c[15]) );
  DFQD2BWP12T30P140 c_reg_11_ ( .D(N86), .CP(n208), .Q(c[11]) );
  DFQD2BWP12T30P140 rx_present_ie_reg ( .D(n68), .CP(n209), .Q(rx_present_ie)
         );
  DFQD2BWP12T30P140 c_reg_0_ ( .D(N75), .CP(n209), .Q(c[0]) );
  DFQD2BWP12T30P140 dcd_ie_reg ( .D(n67), .CP(n209), .Q(dcd_ie) );
  DFQD2BWP12T30P140 c_reg_22_ ( .D(N97), .CP(n208), .Q(c[22]) );
  DFQD2BWP12T30P140 c_reg_20_ ( .D(N95), .CP(n208), .Q(c[20]) );
  DFQD2BWP12T30P140 c_reg_18_ ( .D(N93), .CP(n208), .Q(c[18]) );
  DFQD2BWP12T30P140 c_reg_16_ ( .D(N91), .CP(n208), .Q(c[16]) );
  DFQD2BWP12T30P140 c_reg_14_ ( .D(N89), .CP(n208), .Q(c[14]) );
  DFQD2BWP12T30P140 c_reg_12_ ( .D(N87), .CP(n208), .Q(c[12]) );
  DFQD2BWP12T30P140 hwfc_reg ( .D(n66), .CP(n209), .Q(hwfc) );
  DFQD2BWP12T30P140 tx_empty_ie_reg ( .D(n64), .CP(n209), .Q(tx_empty_ie) );
  DFQD2BWP12T30P140 c_reg_9_ ( .D(N84), .CP(n209), .Q(c[9]) );
  DFQD2BWP12T30P140 c_reg_7_ ( .D(N82), .CP(n209), .Q(c[7]) );
  DFQD2BWP12T30P140 c_reg_3_ ( .D(N78), .CP(n209), .Q(c[3]) );
  DFQD2BWP12T30P140 ck_mul_reg_23_ ( .D(n63), .CP(n209), .Q(ck_mul[23]) );
  DFQD2BWP12T30P140 c_reg_23_ ( .D(N98), .CP(n209), .Q(c[23]) );
  DFQD2BWP12T30P140 c_reg_10_ ( .D(N85), .CP(n209), .Q(c[10]) );
  DFQD2BWP12T30P140 c_reg_8_ ( .D(N83), .CP(n209), .Q(c[8]) );
  DFQD2BWP12T30P140 c_reg_6_ ( .D(N81), .CP(n209), .Q(c[6]) );
  DFQD2BWP12T30P140 c_reg_4_ ( .D(N79), .CP(n209), .Q(c[4]) );
  DFQD2BWP12T30P140 c_reg_2_ ( .D(N77), .CP(n209), .Q(c[2]) );
  DFQD2BWP12T30P140 c_reg_1_ ( .D(N76), .CP(n209), .Q(c[1]) );
  DFQD2BWP12T30P140 ck_mul_reg_7_ ( .D(n47), .CP(n210), .Q(ck_mul[7]) );
  DFQD2BWP12T30P140 ck_mul_reg_3_ ( .D(n43), .CP(n210), .Q(ck_mul[3]) );
  DFQD2BWP12T30P140 ck_mul_reg_21_ ( .D(n61), .CP(n210), .Q(ck_mul[21]) );
  DFQD2BWP12T30P140 ck_mul_reg_19_ ( .D(n59), .CP(n210), .Q(ck_mul[19]) );
  DFQD2BWP12T30P140 ck_mul_reg_16_ ( .D(n56), .CP(n210), .Q(ck_mul[16]) );
  DFQD2BWP12T30P140 ck_mul_reg_10_ ( .D(n50), .CP(n210), .Q(ck_mul[10]) );
  DFQD2BWP12T30P140 ck_mul_reg_8_ ( .D(n48), .CP(n210), .Q(ck_mul[8]) );
  DFQD2BWP12T30P140 ck_mul_reg_4_ ( .D(n44), .CP(n210), .Q(ck_mul[4]) );
  DFQD2BWP12T30P140 ck_mul_reg_2_ ( .D(n42), .CP(n210), .Q(ck_mul[2]) );
  DFQD2BWP12T30P140 ck_mul_reg_17_ ( .D(n57), .CP(n210), .Q(ck_mul[17]) );
  DFQD2BWP12T30P140 ck_mul_reg_15_ ( .D(n55), .CP(n210), .Q(ck_mul[15]) );
  DFQD2BWP12T30P140 ck_mul_reg_13_ ( .D(n53), .CP(n210), .Q(ck_mul[13]) );
  DFQD2BWP12T30P140 ck_mul_reg_11_ ( .D(n51), .CP(n210), .Q(ck_mul[11]) );
  DFQD2BWP12T30P140 ck_mul_reg_9_ ( .D(n49), .CP(n210), .Q(ck_mul[9]) );
  DFQD2BWP12T30P140 ck_mul_reg_5_ ( .D(n45), .CP(n210), .Q(ck_mul[5]) );
  DFQD2BWP12T30P140 ck_mul_reg_12_ ( .D(n52), .CP(n210), .Q(ck_mul[12]) );
  DFQD2BWP12T30P140 ck_mul_reg_6_ ( .D(n46), .CP(n210), .Q(ck_mul[6]) );
  DFQD2BWP12T30P140 ck_mul_reg_22_ ( .D(n62), .CP(n209), .Q(ck_mul[22]) );
  DFQD2BWP12T30P140 ck_mul_reg_20_ ( .D(n60), .CP(n210), .Q(ck_mul[20]) );
  DFQD1BWP12T30P140 c_reg_13_ ( .D(N88), .CP(n208), .Q(c[13]) );
  DFQD1BWP12T30P140 c_reg_5_ ( .D(N80), .CP(n209), .Q(c[5]) );
  DFQD1BWP12T30P140 ck_mul_reg_14_ ( .D(n54), .CP(n210), .Q(ck_mul[14]) );
  DFQD1BWP12T30P140 ck_mul_reg_18_ ( .D(n58), .CP(n210), .Q(ck_mul[18]) );
  TIELBWP12T30P140 U114 ( .ZN(n_Logic0_) );
  TIEHBWP12T30P140 U115 ( .Z(n40) );
  INVD0BWP12T30P140 U116 ( .I(rst_i), .ZN(n205) );
  INVD0BWP12T30P140 U117 ( .I(n205), .ZN(n206) );
  OR2D0BWP12T30P140 U118 ( .A1(ck_mul[2]), .A2(n206), .Z(n42) );
  INVD0BWP12T30P140 U119 ( .I(n205), .ZN(n207) );
  OR2D0BWP12T30P140 U120 ( .A1(ck_mul[8]), .A2(n207), .Z(n48) );
  OR2D0BWP12T30P140 U121 ( .A1(ck_mul[10]), .A2(n206), .Z(n50) );
  OR2D0BWP12T30P140 U122 ( .A1(ck_mul[14]), .A2(n206), .Z(n54) );
  OR2D0BWP12T30P140 U123 ( .A1(ck_mul[16]), .A2(n207), .Z(n56) );
  CKBD0BWP12T30P140 U124 ( .I(n205), .Z(n163) );
  AN2D0BWP12T30P140 U125 ( .A1(ck_mul[19]), .A2(n163), .Z(n59) );
  AN2D0BWP12T30P140 U126 ( .A1(ck_mul[21]), .A2(n205), .Z(n61) );
  AN2D0BWP12T30P140 U127 ( .A1(ck_mul[3]), .A2(n205), .Z(n43) );
  AN2D0BWP12T30P140 U128 ( .A1(ck_mul[7]), .A2(n163), .Z(n47) );
  ND2D0BWP12T30P140 U129 ( .A1(ck_mul[0]), .A2(c[0]), .ZN(n138) );
  INVD0BWP12T30P140 U130 ( .I(n138), .ZN(n75) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n75), .A2(c[1]), .B1(c[1]), .B2(n75), .ZN(
        n74) );
  OAI21D0BWP12T30P140 U132 ( .A1(ck_mul[1]), .A2(n74), .B(n163), .ZN(n73) );
  AOI21D0BWP12T30P140 U133 ( .A1(ck_mul[1]), .A2(n74), .B(n73), .ZN(N76) );
  MAOI222D0BWP12T30P140 U134 ( .A(n75), .B(c[1]), .C(ck_mul[1]), .ZN(n76) );
  INVD0BWP12T30P140 U135 ( .I(n76), .ZN(n79) );
  MUX2ND0BWP12T30P140 U136 ( .I0(n76), .I1(n79), .S(c[2]), .ZN(n78) );
  OAI21D0BWP12T30P140 U137 ( .A1(ck_mul[2]), .A2(n78), .B(n163), .ZN(n77) );
  AOI21D0BWP12T30P140 U138 ( .A1(ck_mul[2]), .A2(n78), .B(n77), .ZN(N77) );
  MAOI222D0BWP12T30P140 U139 ( .A(ck_mul[2]), .B(c[2]), .C(n79), .ZN(n80) );
  INVD0BWP12T30P140 U140 ( .I(n80), .ZN(n110) );
  MAOI222D0BWP12T30P140 U141 ( .A(n110), .B(ck_mul[3]), .C(c[3]), .ZN(n81) );
  INVD0BWP12T30P140 U142 ( .I(n81), .ZN(n84) );
  MUX2ND0BWP12T30P140 U143 ( .I0(n81), .I1(n84), .S(c[4]), .ZN(n83) );
  OAI21D0BWP12T30P140 U144 ( .A1(ck_mul[4]), .A2(n83), .B(n163), .ZN(n82) );
  AOI21D0BWP12T30P140 U145 ( .A1(ck_mul[4]), .A2(n83), .B(n82), .ZN(N79) );
  MAOI222D0BWP12T30P140 U146 ( .A(ck_mul[4]), .B(c[4]), .C(n84), .ZN(n85) );
  INVD0BWP12T30P140 U147 ( .I(n85), .ZN(n113) );
  MAOI222D0BWP12T30P140 U148 ( .A(n113), .B(ck_mul[5]), .C(c[5]), .ZN(n86) );
  INVD0BWP12T30P140 U149 ( .I(n86), .ZN(n89) );
  MUX2ND0BWP12T30P140 U150 ( .I0(n86), .I1(n89), .S(c[6]), .ZN(n88) );
  OAI21D0BWP12T30P140 U151 ( .A1(ck_mul[6]), .A2(n88), .B(n163), .ZN(n87) );
  AOI21D0BWP12T30P140 U152 ( .A1(ck_mul[6]), .A2(n88), .B(n87), .ZN(N81) );
  MAOI222D0BWP12T30P140 U153 ( .A(ck_mul[6]), .B(c[6]), .C(n89), .ZN(n90) );
  INVD0BWP12T30P140 U154 ( .I(n90), .ZN(n116) );
  MAOI222D0BWP12T30P140 U155 ( .A(n116), .B(ck_mul[7]), .C(c[7]), .ZN(n91) );
  INVD0BWP12T30P140 U156 ( .I(n91), .ZN(n94) );
  MUX2ND0BWP12T30P140 U157 ( .I0(n91), .I1(n94), .S(c[8]), .ZN(n93) );
  OAI21D0BWP12T30P140 U158 ( .A1(ck_mul[8]), .A2(n93), .B(n163), .ZN(n92) );
  AOI21D0BWP12T30P140 U159 ( .A1(ck_mul[8]), .A2(n93), .B(n92), .ZN(N83) );
  MAOI222D0BWP12T30P140 U160 ( .A(ck_mul[8]), .B(c[8]), .C(n94), .ZN(n95) );
  INVD0BWP12T30P140 U161 ( .I(n95), .ZN(n119) );
  MAOI222D0BWP12T30P140 U162 ( .A(n119), .B(ck_mul[9]), .C(c[9]), .ZN(n96) );
  INVD0BWP12T30P140 U163 ( .I(n96), .ZN(n99) );
  MUX2ND0BWP12T30P140 U164 ( .I0(n96), .I1(n99), .S(c[10]), .ZN(n98) );
  OAI21D0BWP12T30P140 U165 ( .A1(ck_mul[10]), .A2(n98), .B(n163), .ZN(n97) );
  AOI21D0BWP12T30P140 U166 ( .A1(ck_mul[10]), .A2(n98), .B(n97), .ZN(N85) );
  INVD0BWP12T30P140 U167 ( .I(c[23]), .ZN(n107) );
  MAOI222D0BWP12T30P140 U168 ( .A(ck_mul[10]), .B(c[10]), .C(n99), .ZN(n100)
         );
  INVD0BWP12T30P140 U169 ( .I(n100), .ZN(n150) );
  MAOI222D0BWP12T30P140 U170 ( .A(n150), .B(ck_mul[11]), .C(c[11]), .ZN(n123)
         );
  INVD0BWP12T30P140 U171 ( .I(n123), .ZN(n122) );
  MAOI222D0BWP12T30P140 U172 ( .A(ck_mul[12]), .B(c[12]), .C(n122), .ZN(n101)
         );
  INVD0BWP12T30P140 U173 ( .I(n101), .ZN(n156) );
  MAOI222D0BWP12T30P140 U174 ( .A(n156), .B(ck_mul[13]), .C(c[13]), .ZN(n127)
         );
  INVD0BWP12T30P140 U175 ( .I(n127), .ZN(n126) );
  MAOI222D0BWP12T30P140 U176 ( .A(ck_mul[14]), .B(c[14]), .C(n126), .ZN(n102)
         );
  INVD0BWP12T30P140 U177 ( .I(n102), .ZN(n147) );
  MAOI222D0BWP12T30P140 U178 ( .A(n147), .B(ck_mul[15]), .C(c[15]), .ZN(n131)
         );
  INVD0BWP12T30P140 U179 ( .I(n131), .ZN(n130) );
  MAOI222D0BWP12T30P140 U180 ( .A(ck_mul[16]), .B(c[16]), .C(n130), .ZN(n103)
         );
  INVD0BWP12T30P140 U181 ( .I(n103), .ZN(n162) );
  MAOI222D0BWP12T30P140 U182 ( .A(n162), .B(ck_mul[17]), .C(c[17]), .ZN(n135)
         );
  INVD0BWP12T30P140 U183 ( .I(n135), .ZN(n134) );
  MAOI222D0BWP12T30P140 U184 ( .A(ck_mul[18]), .B(c[18]), .C(n134), .ZN(n104)
         );
  INVD0BWP12T30P140 U185 ( .I(n104), .ZN(n153) );
  MAOI222D0BWP12T30P140 U186 ( .A(n153), .B(ck_mul[19]), .C(c[19]), .ZN(n140)
         );
  INVD0BWP12T30P140 U187 ( .I(n140), .ZN(n139) );
  MAOI222D0BWP12T30P140 U188 ( .A(ck_mul[20]), .B(c[20]), .C(n139), .ZN(n105)
         );
  INVD0BWP12T30P140 U189 ( .I(n105), .ZN(n159) );
  MAOI222D0BWP12T30P140 U190 ( .A(n159), .B(ck_mul[21]), .C(c[21]), .ZN(n144)
         );
  INVD0BWP12T30P140 U191 ( .I(n144), .ZN(n143) );
  MAOI222D0BWP12T30P140 U192 ( .A(ck_mul[22]), .B(c[22]), .C(n143), .ZN(n106)
         );
  MUX2ND0BWP12T30P140 U193 ( .I0(c[23]), .I1(n107), .S(n106), .ZN(n109) );
  NR2D0BWP12T30P140 U194 ( .A1(ck_mul[23]), .A2(n109), .ZN(n108) );
  AOI211D0BWP12T30P140 U195 ( .A1(ck_mul[23]), .A2(n109), .B(n207), .C(n108), 
        .ZN(N98) );
  MAOI22D0BWP12T30P140 U196 ( .A1(c[3]), .A2(n110), .B1(n110), .B2(c[3]), .ZN(
        n112) );
  OAI21D0BWP12T30P140 U197 ( .A1(ck_mul[3]), .A2(n112), .B(n163), .ZN(n111) );
  AOI21D0BWP12T30P140 U198 ( .A1(ck_mul[3]), .A2(n112), .B(n111), .ZN(N78) );
  MAOI22D0BWP12T30P140 U199 ( .A1(c[5]), .A2(n113), .B1(n113), .B2(c[5]), .ZN(
        n115) );
  OAI21D0BWP12T30P140 U200 ( .A1(ck_mul[5]), .A2(n115), .B(n163), .ZN(n114) );
  AOI21D0BWP12T30P140 U201 ( .A1(ck_mul[5]), .A2(n115), .B(n114), .ZN(N80) );
  MAOI22D0BWP12T30P140 U202 ( .A1(c[7]), .A2(n116), .B1(n116), .B2(c[7]), .ZN(
        n118) );
  OAI21D0BWP12T30P140 U203 ( .A1(ck_mul[7]), .A2(n118), .B(n163), .ZN(n117) );
  AOI21D0BWP12T30P140 U204 ( .A1(ck_mul[7]), .A2(n118), .B(n117), .ZN(N82) );
  MAOI22D0BWP12T30P140 U205 ( .A1(c[9]), .A2(n119), .B1(n119), .B2(c[9]), .ZN(
        n121) );
  OAI21D0BWP12T30P140 U206 ( .A1(ck_mul[9]), .A2(n121), .B(n163), .ZN(n120) );
  AOI21D0BWP12T30P140 U207 ( .A1(ck_mul[9]), .A2(n121), .B(n120), .ZN(N84) );
  AN2D0BWP12T30P140 U208 ( .A1(tx_empty_ie), .A2(n205), .Z(n64) );
  OR2D0BWP12T30P140 U209 ( .A1(ck_mul[4]), .A2(n206), .Z(n44) );
  MUX2ND0BWP12T30P140 U210 ( .I0(n123), .I1(n122), .S(c[12]), .ZN(n125) );
  OAI21D0BWP12T30P140 U211 ( .A1(ck_mul[12]), .A2(n125), .B(n163), .ZN(n124)
         );
  AOI21D0BWP12T30P140 U212 ( .A1(ck_mul[12]), .A2(n125), .B(n124), .ZN(N87) );
  MUX2ND0BWP12T30P140 U213 ( .I0(n127), .I1(n126), .S(c[14]), .ZN(n129) );
  OAI21D0BWP12T30P140 U214 ( .A1(ck_mul[14]), .A2(n129), .B(n163), .ZN(n128)
         );
  AOI21D0BWP12T30P140 U215 ( .A1(ck_mul[14]), .A2(n129), .B(n128), .ZN(N89) );
  INVD0BWP12T30P140 U216 ( .I(cts_ni), .ZN(n70) );
  MUX2ND0BWP12T30P140 U217 ( .I0(n131), .I1(n130), .S(c[16]), .ZN(n133) );
  OAI21D0BWP12T30P140 U218 ( .A1(ck_mul[16]), .A2(n133), .B(n163), .ZN(n132)
         );
  AOI21D0BWP12T30P140 U219 ( .A1(ck_mul[16]), .A2(n133), .B(n132), .ZN(N91) );
  AN2D0BWP12T30P140 U220 ( .A1(dcd_ie), .A2(n205), .Z(n67) );
  MUX2ND0BWP12T30P140 U221 ( .I0(n135), .I1(n134), .S(c[18]), .ZN(n137) );
  NR2D0BWP12T30P140 U222 ( .A1(ck_mul[18]), .A2(n137), .ZN(n136) );
  AOI211D0BWP12T30P140 U223 ( .A1(ck_mul[18]), .A2(n137), .B(n207), .C(n136), 
        .ZN(N93) );
  OA211D0BWP12T30P140 U224 ( .A1(ck_mul[0]), .A2(c[0]), .B(n163), .C(n138), 
        .Z(N75) );
  MUX2ND0BWP12T30P140 U225 ( .I0(n140), .I1(n139), .S(c[20]), .ZN(n142) );
  NR2D0BWP12T30P140 U226 ( .A1(ck_mul[20]), .A2(n142), .ZN(n141) );
  AOI211D0BWP12T30P140 U227 ( .A1(ck_mul[20]), .A2(n142), .B(n207), .C(n141), 
        .ZN(N95) );
  AN2D0BWP12T30P140 U228 ( .A1(rx_present_ie), .A2(n205), .Z(n68) );
  MUX2ND0BWP12T30P140 U229 ( .I0(n144), .I1(n143), .S(c[22]), .ZN(n146) );
  NR2D0BWP12T30P140 U230 ( .A1(ck_mul[22]), .A2(n146), .ZN(n145) );
  AOI211D0BWP12T30P140 U231 ( .A1(ck_mul[22]), .A2(n146), .B(n207), .C(n145), 
        .ZN(N97) );
  AN2D0BWP12T30P140 U232 ( .A1(rts_no), .A2(n205), .Z(n69) );
  MAOI22D0BWP12T30P140 U233 ( .A1(c[15]), .A2(n147), .B1(n147), .B2(c[15]), 
        .ZN(n149) );
  OAI21D0BWP12T30P140 U234 ( .A1(ck_mul[15]), .A2(n149), .B(n163), .ZN(n148)
         );
  AOI21D0BWP12T30P140 U235 ( .A1(ck_mul[15]), .A2(n149), .B(n148), .ZN(N90) );
  INVD0BWP12T30P140 U236 ( .I(dcd_ni), .ZN(n72) );
  MAOI22D0BWP12T30P140 U237 ( .A1(c[11]), .A2(n150), .B1(n150), .B2(c[11]), 
        .ZN(n152) );
  OAI21D0BWP12T30P140 U238 ( .A1(ck_mul[11]), .A2(n152), .B(n163), .ZN(n151)
         );
  AOI21D0BWP12T30P140 U239 ( .A1(ck_mul[11]), .A2(n152), .B(n151), .ZN(N86) );
  MAOI22D0BWP12T30P140 U240 ( .A1(c[19]), .A2(n153), .B1(n153), .B2(c[19]), 
        .ZN(n155) );
  NR2D0BWP12T30P140 U241 ( .A1(ck_mul[19]), .A2(n155), .ZN(n154) );
  AOI211D0BWP12T30P140 U242 ( .A1(ck_mul[19]), .A2(n155), .B(n207), .C(n154), 
        .ZN(N94) );
  MAOI22D0BWP12T30P140 U243 ( .A1(c[13]), .A2(n156), .B1(n156), .B2(c[13]), 
        .ZN(n158) );
  OAI21D0BWP12T30P140 U244 ( .A1(ck_mul[13]), .A2(n158), .B(n163), .ZN(n157)
         );
  AOI21D0BWP12T30P140 U245 ( .A1(ck_mul[13]), .A2(n158), .B(n157), .ZN(N88) );
  AN2D0BWP12T30P140 U246 ( .A1(dtr_no), .A2(n205), .Z(n65) );
  MAOI22D0BWP12T30P140 U247 ( .A1(c[21]), .A2(n159), .B1(n159), .B2(c[21]), 
        .ZN(n161) );
  NR2D0BWP12T30P140 U248 ( .A1(ck_mul[21]), .A2(n161), .ZN(n160) );
  AOI211D0BWP12T30P140 U249 ( .A1(ck_mul[21]), .A2(n161), .B(n207), .C(n160), 
        .ZN(N96) );
  INVD0BWP12T30P140 U250 ( .I(dsr_ni), .ZN(n71) );
  MAOI22D0BWP12T30P140 U251 ( .A1(c[17]), .A2(n162), .B1(n162), .B2(c[17]), 
        .ZN(n165) );
  OAI21D0BWP12T30P140 U252 ( .A1(ck_mul[17]), .A2(n165), .B(n163), .ZN(n164)
         );
  AOI21D0BWP12T30P140 U253 ( .A1(ck_mul[17]), .A2(n165), .B(n164), .ZN(N92) );
  CKBD0BWP12T30P140 U254 ( .I(clk_i), .Z(n209) );
  CKBD0BWP12T30P140 U255 ( .I(clk_i), .Z(n210) );
  CKBD0BWP12T30P140 U256 ( .I(clk_i), .Z(n208) );
  CKND2D1BWP12T30P140 U257 ( .A1(rx_present_ie), .A2(data_present_o), .ZN(n179) );
  CKND2D1BWP12T30P140 U258 ( .A1(tx_empty_ie), .A2(tx_empty), .ZN(n166) );
  CKND2D1BWP12T30P140 U259 ( .A1(n179), .A2(n166), .ZN(n186) );
  INVD0BWP12T30P140 U260 ( .I(dcdx[0]), .ZN(n167) );
  MUX2ND0BWP12T30P140 U261 ( .I0(dcdx[0]), .I1(n167), .S(dcdx[1]), .ZN(n183)
         );
  IND2D1BWP12T30P140 U262 ( .A1(n183), .B1(dcd_ie), .ZN(n187) );
  IND2D1BWP12T30P140 U263 ( .A1(n186), .B1(n187), .ZN(irq_o) );
  IND3D1BWP12T30P140 U264 ( .A1(adr_i[10]), .B1(cyc_i), .B2(stb_i), .ZN(n171)
         );
  NR4D0BWP12T30P140 U265 ( .A1(adr_i[17]), .A2(adr_i[16]), .A3(adr_i[14]), 
        .A4(adr_i[13]), .ZN(n170) );
  NR4D0BWP12T30P140 U266 ( .A1(adr_i[12]), .A2(adr_i[21]), .A3(adr_i[8]), .A4(
        adr_i[7]), .ZN(n169) );
  NR4D0BWP12T30P140 U267 ( .A1(adr_i[6]), .A2(adr_i[15]), .A3(adr_i[5]), .A4(
        adr_i[4]), .ZN(n168) );
  IND4D1BWP12T30P140 U268 ( .A1(n171), .B1(n170), .B2(n169), .B3(n168), .ZN(
        n204) );
  ND4D0BWP12T30P140 U269 ( .A1(adr_i[22]), .A2(adr_i[19]), .A3(adr_i[20]), 
        .A4(adr_i[31]), .ZN(n175) );
  ND4D0BWP12T30P140 U270 ( .A1(adr_i[9]), .A2(adr_i[11]), .A3(adr_i[30]), .A4(
        adr_i[27]), .ZN(n174) );
  AN4D0BWP12T30P140 U271 ( .A1(adr_i[26]), .A2(adr_i[24]), .A3(adr_i[23]), 
        .A4(adr_i[25]), .Z(n172) );
  ND4D0BWP12T30P140 U272 ( .A1(adr_i[18]), .A2(adr_i[29]), .A3(adr_i[28]), 
        .A4(n172), .ZN(n173) );
  NR4D0BWP12T30P140 U273 ( .A1(n204), .A2(n175), .A3(n174), .A4(n173), .ZN(
        ack_o) );
  INVD0BWP12T30P140 U274 ( .I(ack_o), .ZN(n177) );
  NR3D0BWP12T30P140 U275 ( .A1(adr_i[2]), .A2(adr_i[3]), .A3(n177), .ZN(vol_o)
         );
  INVD0BWP12T30P140 U276 ( .I(adr_i[0]), .ZN(n197) );
  ND2D0BWP12T30P140 U277 ( .A1(adr_i[1]), .A2(vol_o), .ZN(n176) );
  NR2D0BWP12T30P140 U278 ( .A1(n197), .A2(n176), .ZN(n184) );
  NR2D0BWP12T30P140 U279 ( .A1(adr_i[2]), .A2(adr_i[3]), .ZN(n178) );
  INVD0BWP12T30P140 U280 ( .I(adr_i[1]), .ZN(n196) );
  ND2D0BWP12T30P140 U281 ( .A1(n197), .A2(n196), .ZN(n189) );
  AOI21D0BWP12T30P140 U282 ( .A1(n178), .A2(n189), .B(n177), .ZN(n195) );
  ND3D0BWP12T30P140 U283 ( .A1(n197), .A2(vol_o), .A3(adr_i[1]), .ZN(n182) );
  INVD0BWP12T30P140 U284 ( .I(n182), .ZN(n191) );
  AO222D0BWP12T30P140 U285 ( .A1(irq_o), .A2(n184), .B1(n195), .B2(rx_do[7]), 
        .C1(dcdx[1]), .C2(n191), .Z(dat_o[7]) );
  INVD0BWP12T30P140 U286 ( .I(vol_o), .ZN(n190) );
  NR3D0BWP12T30P140 U287 ( .A1(adr_i[1]), .A2(n197), .A3(n190), .ZN(n192) );
  AO22D0BWP12T30P140 U288 ( .A1(data_present_o), .A2(n192), .B1(n195), .B2(
        rx_do[0]), .Z(dat_o[0]) );
  AO22D0BWP12T30P140 U289 ( .A1(n192), .A2(over_run), .B1(n195), .B2(rx_do[1]), 
        .Z(dat_o[1]) );
  AO22D0BWP12T30P140 U290 ( .A1(n184), .A2(n186), .B1(n195), .B2(rx_do[2]), 
        .Z(dat_o[2]) );
  AOI22D0BWP12T30P140 U291 ( .A1(n192), .A2(frame_err), .B1(n195), .B2(
        rx_do[3]), .ZN(n181) );
  ND4D0BWP12T30P140 U292 ( .A1(tx_empty_ie), .A2(tx_empty), .A3(n184), .A4(
        n179), .ZN(n180) );
  OAI211D0BWP12T30P140 U293 ( .A1(n183), .A2(n182), .B(n181), .C(n180), .ZN(
        dat_o[3]) );
  INVD0BWP12T30P140 U294 ( .I(n184), .ZN(n188) );
  AOI22D0BWP12T30P140 U295 ( .A1(n191), .A2(ctsx[1]), .B1(n195), .B2(rx_do[4]), 
        .ZN(n185) );
  OAI31D0BWP12T30P140 U296 ( .A1(n188), .A2(n187), .A3(n186), .B(n185), .ZN(
        dat_o[4]) );
  NR2D0BWP12T30P140 U297 ( .A1(n190), .A2(n189), .ZN(txrx) );
  AOI22D0BWP12T30P140 U298 ( .A1(n191), .A2(dsrx[1]), .B1(n195), .B2(rx_do[5]), 
        .ZN(n193) );
  ND2D0BWP12T30P140 U299 ( .A1(tx_empty), .A2(n192), .ZN(n194) );
  ND2D0BWP12T30P140 U300 ( .A1(n193), .A2(n194), .ZN(dat_o[5]) );
  IOA21D0BWP12T30P140 U301 ( .A1(n195), .A2(rx_do[6]), .B(n194), .ZN(dat_o[6])
         );
  ND4D0BWP12T30P140 U302 ( .A1(adr_i[2]), .A2(adr_i[3]), .A3(we_i), .A4(n196), 
        .ZN(n203) );
  NR4D0BWP12T30P140 U303 ( .A1(adr_i[22]), .A2(adr_i[19]), .A3(adr_i[23]), 
        .A4(adr_i[25]), .ZN(n201) );
  NR4D0BWP12T30P140 U304 ( .A1(adr_i[29]), .A2(adr_i[28]), .A3(adr_i[26]), 
        .A4(adr_i[24]), .ZN(n200) );
  NR4D0BWP12T30P140 U305 ( .A1(adr_i[27]), .A2(adr_i[30]), .A3(adr_i[18]), 
        .A4(n197), .ZN(n199) );
  NR4D0BWP12T30P140 U306 ( .A1(adr_i[20]), .A2(adr_i[31]), .A3(adr_i[9]), .A4(
        adr_i[11]), .ZN(n198) );
  ND4D0BWP12T30P140 U307 ( .A1(n201), .A2(n200), .A3(n199), .A4(n198), .ZN(
        n202) );
  NR3D0BWP12T30P140 U308 ( .A1(n204), .A2(n203), .A3(n202), .ZN(clear) );
  IND2D1BWP12T30P140 U309 ( .A1(ctsx[1]), .B1(hwfc), .ZN(n_0_net_) );
  IND2D1BWP12T30P140 U310 ( .A1(hwfc), .B1(n205), .ZN(n66) );
  INR2D1BWP12T30P140 U311 ( .A1(ck_mul[23]), .B1(n206), .ZN(n63) );
  INR2D1BWP12T30P140 U312 ( .A1(ck_mul[22]), .B1(n206), .ZN(n62) );
  INR2D1BWP12T30P140 U313 ( .A1(ck_mul[20]), .B1(n206), .ZN(n60) );
  INR2D1BWP12T30P140 U314 ( .A1(ck_mul[18]), .B1(n206), .ZN(n58) );
  IND2D1BWP12T30P140 U315 ( .A1(ck_mul[17]), .B1(n205), .ZN(n57) );
  IND2D1BWP12T30P140 U316 ( .A1(ck_mul[15]), .B1(n205), .ZN(n55) );
  IND2D1BWP12T30P140 U317 ( .A1(ck_mul[13]), .B1(n205), .ZN(n53) );
  INR2D1BWP12T30P140 U318 ( .A1(ck_mul[12]), .B1(n206), .ZN(n52) );
  IND2D1BWP12T30P140 U319 ( .A1(ck_mul[11]), .B1(n205), .ZN(n51) );
  IND2D1BWP12T30P140 U320 ( .A1(ck_mul[9]), .B1(n205), .ZN(n49) );
  INR2D1BWP12T30P140 U321 ( .A1(ck_mul[6]), .B1(n206), .ZN(n46) );
  IND2D1BWP12T30P140 U322 ( .A1(ck_mul[5]), .B1(n205), .ZN(n45) );
  IND2D1BWP12T30P140 U323 ( .A1(ck_mul[1]), .B1(n205), .ZN(n41) );
  INR2D1BWP12T30P140 U324 ( .A1(ck_mul[0]), .B1(n206), .ZN(n39) );
endmodule

