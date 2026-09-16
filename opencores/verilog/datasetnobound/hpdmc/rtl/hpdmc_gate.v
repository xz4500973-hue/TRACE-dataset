/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:01:11 2026
/////////////////////////////////////////////////////////////


module hpdmc_ctlif_0 ( sys_clk, sys_rst, csr_a, csr_we, csr_di, csr_do, bypass, 
        sdram_rst, sdram_cke, sdram_cs_n, sdram_we_n, sdram_cas_n, sdram_ras_n, 
        sdram_adr, sdram_ba, tim_rp, tim_rcd, tim_cas, tim_refi, tim_rfc, 
        tim_wr, idelay_rst, idelay_ce, idelay_inc, dqs_psen, dqs_psincdec, 
        dqs_psdone, pll_stat );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  output [12:0] sdram_adr;
  output [1:0] sdram_ba;
  output [2:0] tim_rp;
  output [2:0] tim_rcd;
  output [10:0] tim_refi;
  output [3:0] tim_rfc;
  output [1:0] tim_wr;
  input [1:0] pll_stat;
  input sys_clk, sys_rst, csr_we, dqs_psdone;
  output bypass, sdram_rst, sdram_cke, sdram_cs_n, sdram_we_n, sdram_cas_n,
         sdram_ras_n, tim_cas, idelay_rst, idelay_ce, idelay_inc, dqs_psen,
         dqs_psincdec;
  wire   n104, psready, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96;
  wire   [1:0] pll_stat2;
  wire   [1:0] pll_stat1;

  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N138), .CP(n3), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N137), .CP(n6), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N136), .CP(n5), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_20_ ( .D(N135), .CP(n4), .Q(csr_do[20]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N134), .CP(n3), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N118), .CP(n6), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N115), .CP(n5), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N133), .CP(n4), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N132), .CP(n3), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N130), .CP(n5), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N129), .CP(n4), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N128), .CP(n3), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 csr_do_reg_12_ ( .D(N127), .CP(n6), .Q(csr_do[12]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N126), .CP(n5), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N125), .CP(n4), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N124), .CP(n3), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N123), .CP(n6), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N122), .CP(n5), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N121), .CP(n4), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N120), .CP(n3), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N119), .CP(n6), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N117), .CP(n5), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N116), .CP(n4), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 pll_stat2_reg_1_ ( .D(pll_stat1[1]), .CP(n6), .Q(
        pll_stat2[1]) );
  DFQD2BWP12T30P140 pll_stat2_reg_0_ ( .D(pll_stat1[0]), .CP(n5), .Q(
        pll_stat2[0]) );
  DFQD2BWP12T30P140 dqs_psincdec_reg ( .D(n43), .CP(n4), .Q(dqs_psincdec) );
  DFQD2BWP12T30P140 idelay_rst_reg ( .D(n41), .CP(n3), .Q(idelay_rst) );
  DFQD2BWP12T30P140 idelay_inc_reg ( .D(n37), .CP(n6), .Q(idelay_inc) );
  DFQD2BWP12T30P140 idelay_ce_reg ( .D(n35), .CP(n5), .Q(idelay_ce) );
  DFQD2BWP12T30P140 psready_reg ( .D(n44), .CP(n4), .Q(psready) );
  DFQD2BWP12T30P140 sdram_cs_n_reg ( .D(n42), .CP(n3), .Q(sdram_cs_n) );
  DFQD2BWP12T30P140 sdram_ras_n_reg ( .D(n40), .CP(n6), .Q(sdram_ras_n) );
  DFQD2BWP12T30P140 sdram_cas_n_reg ( .D(n39), .CP(n5), .Q(sdram_cas_n) );
  DFQD2BWP12T30P140 sdram_we_n_reg ( .D(n38), .CP(n4), .Q(sdram_we_n) );
  DFQD2BWP12T30P140 dqs_psen_reg ( .D(n36), .CP(n3), .Q(dqs_psen) );
  DFQD2BWP12T30P140 tim_rcd_reg_2_ ( .D(n66), .CP(n6), .Q(tim_rcd[2]) );
  DFQD2BWP12T30P140 tim_refi_reg_0_ ( .D(n62), .CP(n5), .Q(tim_refi[0]) );
  DFQD2BWP12T30P140 sdram_adr_reg_3_ ( .D(n63), .CP(n3), .Q(sdram_adr[3]) );
  DFQD2BWP12T30P140 sdram_adr_reg_2_ ( .D(n65), .CP(n6), .Q(sdram_adr[2]) );
  DFQD2BWP12T30P140 sdram_adr_reg_1_ ( .D(n67), .CP(n5), .Q(sdram_adr[1]) );
  DFQD2BWP12T30P140 tim_rcd_reg_1_ ( .D(n74), .CP(n4), .Q(tim_rcd[1]) );
  DFQD2BWP12T30P140 tim_rp_reg_1_ ( .D(n46), .CP(n3), .Q(tim_rp[1]) );
  DFQD2BWP12T30P140 tim_refi_reg_6_ ( .D(n78), .CP(n6), .Q(tim_refi[6]) );
  DFQD2BWP12T30P140 tim_refi_reg_2_ ( .D(n80), .CP(n5), .Q(tim_refi[2]) );
  DFQD2BWP12T30P140 sdram_ba_reg_1_ ( .D(n70), .CP(n4), .Q(sdram_ba[1]) );
  DFQD2BWP12T30P140 sdram_ba_reg_0_ ( .D(n72), .CP(n3), .Q(sdram_ba[0]) );
  DFQD2BWP12T30P140 sdram_adr_reg_12_ ( .D(n49), .CP(n6), .Q(sdram_adr[12]) );
  DFQD2BWP12T30P140 sdram_adr_reg_11_ ( .D(n51), .CP(n5), .Q(sdram_adr[11]) );
  DFQD2BWP12T30P140 sdram_adr_reg_10_ ( .D(n52), .CP(n4), .Q(sdram_adr[10]) );
  DFQD2BWP12T30P140 sdram_adr_reg_9_ ( .D(n53), .CP(n3), .Q(sdram_adr[9]) );
  DFQD2BWP12T30P140 sdram_adr_reg_8_ ( .D(n54), .CP(n6), .Q(sdram_adr[8]) );
  DFQD2BWP12T30P140 sdram_adr_reg_6_ ( .D(n58), .CP(n4), .Q(sdram_adr[6]) );
  DFQD2BWP12T30P140 sdram_adr_reg_5_ ( .D(n59), .CP(n3), .Q(sdram_adr[5]) );
  DFQD2BWP12T30P140 sdram_adr_reg_4_ ( .D(n61), .CP(n6), .Q(sdram_adr[4]) );
  DFQD2BWP12T30P140 sdram_adr_reg_0_ ( .D(n68), .CP(n5), .Q(sdram_adr[0]) );
  DFQD2BWP12T30P140 tim_refi_reg_9_ ( .D(n76), .CP(n4), .Q(tim_refi[9]) );
  DFQD2BWP12T30P140 tim_refi_reg_7_ ( .D(n77), .CP(n3), .Q(tim_refi[7]) );
  DFQD2BWP12T30P140 tim_refi_reg_5_ ( .D(n79), .CP(n6), .Q(tim_refi[5]) );
  DFQD2BWP12T30P140 tim_rfc_reg_2_ ( .D(n82), .CP(n5), .Q(tim_rfc[2]) );
  DFQD2BWP12T30P140 tim_rfc_reg_1_ ( .D(n83), .CP(n4), .Q(tim_rfc[1]) );
  DFQD2BWP12T30P140 tim_rp_reg_0_ ( .D(n73), .CP(n3), .Q(tim_rp[0]) );
  DFQD2BWP12T30P140 tim_rfc_reg_0_ ( .D(n69), .CP(n6), .Q(tim_rfc[0]) );
  DFQD2BWP12T30P140 tim_rp_reg_2_ ( .D(n47), .CP(n5), .Q(tim_rp[2]) );
  DFQD2BWP12T30P140 tim_rcd_reg_0_ ( .D(n75), .CP(n4), .Q(tim_rcd[0]) );
  DFQD2BWP12T30P140 tim_refi_reg_8_ ( .D(n50), .CP(n3), .Q(tim_refi[8]) );
  DFQD2BWP12T30P140 tim_refi_reg_1_ ( .D(n60), .CP(n5), .Q(tim_refi[1]) );
  DFQD2BWP12T30P140 tim_refi_reg_10_ ( .D(n71), .CP(n4), .Q(tim_refi[10]) );
  DFQD2BWP12T30P140 tim_refi_reg_3_ ( .D(n57), .CP(n3), .Q(tim_refi[3]) );
  DFQD2BWP12T30P140 tim_cas_reg ( .D(n64), .CP(n6), .Q(tim_cas) );
  DFQD2BWP12T30P140 pll_stat1_reg_1_ ( .D(pll_stat[1]), .CP(n5), .Q(
        pll_stat1[1]) );
  DFQD2BWP12T30P140 pll_stat1_reg_0_ ( .D(pll_stat[0]), .CP(n4), .Q(
        pll_stat1[0]) );
  DFQD2BWP12T30P140 tim_wr_reg_1_ ( .D(n84), .CP(n3), .Q(tim_wr[1]) );
  DFQD2BWP12T30P140 tim_wr_reg_0_ ( .D(n85), .CP(n6), .Q(tim_wr[0]) );
  DFQD2BWP12T30P140 sdram_cke_reg ( .D(n48), .CP(n5), .Q(sdram_cke) );
  DFQD2BWP12T30P140 sdram_rst_reg ( .D(n86), .CP(n4), .Q(sdram_rst) );
  DFQD2BWP12T30P140 bypass_reg ( .D(n45), .CP(sys_clk), .Q(n104) );
  DFQD1BWP12T30P140 csr_do_reg_16_ ( .D(N131), .CP(n6), .Q(csr_do[16]) );
  DFQD1BWP12T30P140 csr_do_reg_24_ ( .D(n34), .CP(n3), .Q(csr_do[25]) );
  DFQD1BWP12T30P140 tim_rfc_reg_3_ ( .D(n81), .CP(n4), .Q(tim_rfc[3]) );
  DFQD1BWP12T30P140 sdram_adr_reg_7_ ( .D(n56), .CP(n5), .Q(sdram_adr[7]) );
  DFQD1BWP12T30P140 tim_refi_reg_4_ ( .D(n55), .CP(n6), .Q(tim_refi[4]) );
  INVD0BWP12T30P140 U3 ( .I(sys_clk), .ZN(n2) );
  INVD0BWP12T30P140 U4 ( .I(n2), .ZN(n3) );
  INVD0BWP12T30P140 U5 ( .I(n2), .ZN(n4) );
  INVD0BWP12T30P140 U6 ( .I(n2), .ZN(n5) );
  INVD0BWP12T30P140 U7 ( .I(n2), .ZN(n6) );
  INVD0BWP12T30P140 U8 ( .I(n104), .ZN(n7) );
  INVD0BWP12T30P140 U9 ( .I(n7), .ZN(bypass) );
  INVD0BWP12T30P140 U10 ( .I(n96), .ZN(n9) );
  CKBD0BWP12T30P140 U11 ( .I(sys_rst), .Z(n33) );
  TIELBWP12T30P140 U12 ( .ZN(n34) );
  INVD0BWP12T30P140 U13 ( .I(csr_do[25]), .ZN(n10) );
  INVD0BWP12T30P140 U14 ( .I(n10), .ZN(csr_do[26]) );
  INVD0BWP12T30P140 U15 ( .I(n10), .ZN(csr_do[27]) );
  INVD0BWP12T30P140 U16 ( .I(n10), .ZN(csr_do[28]) );
  INVD0BWP12T30P140 U17 ( .I(n10), .ZN(csr_do[29]) );
  INVD0BWP12T30P140 U18 ( .I(n10), .ZN(csr_do[30]) );
  INVD0BWP12T30P140 U19 ( .I(n10), .ZN(csr_do[31]) );
  INVD0BWP12T30P140 U20 ( .I(n10), .ZN(csr_do[24]) );
  OR4D0BWP12T30P140 U21 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .Z(n25) );
  INVD0BWP12T30P140 U22 ( .I(csr_we), .ZN(n16) );
  NR3D0BWP12T30P140 U23 ( .A1(csr_a[0]), .A2(n25), .A3(n16), .ZN(n15) );
  INVD0BWP12T30P140 U24 ( .I(csr_a[1]), .ZN(n88) );
  AOI21D0BWP12T30P140 U25 ( .A1(n15), .A2(n88), .B(n33), .ZN(n14) );
  NR2D0BWP12T30P140 U26 ( .A1(n33), .A2(n14), .ZN(n13) );
  INVD0BWP12T30P140 U27 ( .I(csr_di[0]), .ZN(n11) );
  AOI22D0BWP12T30P140 U28 ( .A1(n14), .A2(n7), .B1(n13), .B2(n11), .ZN(n45) );
  INVD0BWP12T30P140 U29 ( .I(sdram_rst), .ZN(n12) );
  INVD0BWP12T30P140 U30 ( .I(csr_di[1]), .ZN(n19) );
  AOI22D0BWP12T30P140 U31 ( .A1(n14), .A2(n12), .B1(n13), .B2(n19), .ZN(n86)
         );
  AO22D0BWP12T30P140 U32 ( .A1(n14), .A2(sdram_cke), .B1(n13), .B2(csr_di[2]), 
        .Z(n48) );
  AO21D0BWP12T30P140 U33 ( .A1(csr_a[1]), .A2(n15), .B(n33), .Z(n21) );
  INVD0BWP12T30P140 U34 ( .I(n21), .ZN(n24) );
  NR2D0BWP12T30P140 U35 ( .A1(n33), .A2(n24), .ZN(n23) );
  AO22D0BWP12T30P140 U36 ( .A1(n24), .A2(tim_wr[0]), .B1(n23), .B2(csr_di[22]), 
        .Z(n85) );
  INVD0BWP12T30P140 U37 ( .I(n21), .ZN(n22) );
  AO221D0BWP12T30P140 U38 ( .A1(n22), .A2(tim_wr[1]), .B1(n21), .B2(csr_di[23]), .C(sys_rst), .Z(n84) );
  AO22D0BWP12T30P140 U39 ( .A1(tim_cas), .A2(n24), .B1(n23), .B2(csr_di[6]), 
        .Z(n64) );
  AO22D0BWP12T30P140 U40 ( .A1(n24), .A2(tim_refi[3]), .B1(n23), .B2(
        csr_di[10]), .Z(n57) );
  AO22D0BWP12T30P140 U41 ( .A1(n24), .A2(tim_refi[10]), .B1(n23), .B2(
        csr_di[17]), .Z(n71) );
  AO22D0BWP12T30P140 U42 ( .A1(n24), .A2(tim_refi[1]), .B1(n23), .B2(csr_di[8]), .Z(n60) );
  AO22D0BWP12T30P140 U43 ( .A1(n24), .A2(tim_refi[4]), .B1(n23), .B2(
        csr_di[11]), .Z(n55) );
  AO22D0BWP12T30P140 U44 ( .A1(n24), .A2(tim_refi[8]), .B1(n23), .B2(
        csr_di[15]), .Z(n50) );
  AO22D0BWP12T30P140 U45 ( .A1(n24), .A2(tim_rcd[0]), .B1(n23), .B2(csr_di[3]), 
        .Z(n75) );
  AO22D0BWP12T30P140 U46 ( .A1(n24), .A2(tim_rp[2]), .B1(n23), .B2(csr_di[2]), 
        .Z(n47) );
  AO22D0BWP12T30P140 U47 ( .A1(n24), .A2(tim_rfc[0]), .B1(n23), .B2(csr_di[18]), .Z(n69) );
  AO22D0BWP12T30P140 U48 ( .A1(n24), .A2(tim_rp[0]), .B1(n23), .B2(csr_di[0]), 
        .Z(n73) );
  AO22D0BWP12T30P140 U49 ( .A1(n24), .A2(tim_rfc[1]), .B1(n23), .B2(csr_di[19]), .Z(n83) );
  AO22D0BWP12T30P140 U50 ( .A1(n22), .A2(tim_rfc[2]), .B1(n23), .B2(csr_di[20]), .Z(n82) );
  AO221D0BWP12T30P140 U51 ( .A1(n22), .A2(tim_refi[5]), .B1(n21), .B2(
        csr_di[12]), .C(sys_rst), .Z(n79) );
  AO221D0BWP12T30P140 U52 ( .A1(n22), .A2(tim_refi[7]), .B1(n21), .B2(
        csr_di[14]), .C(sys_rst), .Z(n77) );
  AO221D0BWP12T30P140 U53 ( .A1(n22), .A2(tim_refi[9]), .B1(n21), .B2(
        csr_di[16]), .C(sys_rst), .Z(n76) );
  NR2D0BWP12T30P140 U54 ( .A1(n25), .A2(n16), .ZN(n17) );
  AOI31D0BWP12T30P140 U55 ( .A1(csr_a[0]), .A2(n17), .A3(n88), .B(sys_rst), 
        .ZN(n29) );
  NR2D0BWP12T30P140 U56 ( .A1(n33), .A2(n29), .ZN(n20) );
  AO22D0BWP12T30P140 U57 ( .A1(csr_di[4]), .A2(n20), .B1(sdram_adr[0]), .B2(
        n29), .Z(n68) );
  AO22D0BWP12T30P140 U58 ( .A1(csr_di[8]), .A2(n20), .B1(sdram_adr[4]), .B2(
        n29), .Z(n61) );
  AO22D0BWP12T30P140 U59 ( .A1(csr_di[9]), .A2(n20), .B1(sdram_adr[5]), .B2(
        n29), .Z(n59) );
  AO22D0BWP12T30P140 U60 ( .A1(csr_di[10]), .A2(n20), .B1(sdram_adr[6]), .B2(
        n29), .Z(n58) );
  AO22D0BWP12T30P140 U61 ( .A1(csr_di[11]), .A2(n20), .B1(sdram_adr[7]), .B2(
        n29), .Z(n56) );
  AO22D0BWP12T30P140 U62 ( .A1(csr_di[12]), .A2(n20), .B1(sdram_adr[8]), .B2(
        n29), .Z(n54) );
  AO22D0BWP12T30P140 U63 ( .A1(csr_di[13]), .A2(n20), .B1(sdram_adr[9]), .B2(
        n29), .Z(n53) );
  AO22D0BWP12T30P140 U64 ( .A1(csr_di[14]), .A2(n20), .B1(sdram_adr[10]), .B2(
        n29), .Z(n52) );
  AO22D0BWP12T30P140 U65 ( .A1(csr_di[15]), .A2(n20), .B1(sdram_adr[11]), .B2(
        n29), .Z(n51) );
  AO22D0BWP12T30P140 U66 ( .A1(csr_di[16]), .A2(n20), .B1(sdram_adr[12]), .B2(
        n29), .Z(n49) );
  AO22D0BWP12T30P140 U67 ( .A1(csr_di[17]), .A2(n20), .B1(sdram_ba[0]), .B2(
        n29), .Z(n72) );
  AO22D0BWP12T30P140 U68 ( .A1(csr_di[18]), .A2(n20), .B1(sdram_ba[1]), .B2(
        n29), .Z(n70) );
  AO221D0BWP12T30P140 U69 ( .A1(n22), .A2(tim_refi[2]), .B1(n21), .B2(
        csr_di[9]), .C(sys_rst), .Z(n80) );
  AO221D0BWP12T30P140 U70 ( .A1(n22), .A2(tim_refi[6]), .B1(n21), .B2(
        csr_di[13]), .C(sys_rst), .Z(n78) );
  AOI21D0BWP12T30P140 U71 ( .A1(n22), .A2(tim_rp[1]), .B(n33), .ZN(n18) );
  OAI21D0BWP12T30P140 U72 ( .A1(n22), .A2(n19), .B(n18), .ZN(n46) );
  AO221D0BWP12T30P140 U73 ( .A1(n22), .A2(tim_rcd[1]), .B1(n21), .B2(csr_di[4]), .C(sys_rst), .Z(n74) );
  AO22D0BWP12T30P140 U74 ( .A1(sdram_adr[1]), .A2(n29), .B1(csr_di[5]), .B2(
        n20), .Z(n67) );
  AO22D0BWP12T30P140 U75 ( .A1(sdram_adr[2]), .A2(n29), .B1(csr_di[6]), .B2(
        n20), .Z(n65) );
  AO22D0BWP12T30P140 U76 ( .A1(sdram_adr[3]), .A2(n29), .B1(csr_di[7]), .B2(
        n20), .Z(n63) );
  AO221D0BWP12T30P140 U77 ( .A1(n22), .A2(tim_rfc[3]), .B1(n21), .B2(
        csr_di[21]), .C(sys_rst), .Z(n81) );
  AO22D0BWP12T30P140 U78 ( .A1(tim_refi[0]), .A2(n24), .B1(n23), .B2(csr_di[7]), .Z(n62) );
  AO22D0BWP12T30P140 U79 ( .A1(tim_rcd[2]), .A2(n24), .B1(n23), .B2(csr_di[5]), 
        .Z(n66) );
  NR2D0BWP12T30P140 U80 ( .A1(n33), .A2(n25), .ZN(n89) );
  ND2D0BWP12T30P140 U81 ( .A1(n89), .A2(csr_a[1]), .ZN(n87) );
  INVD0BWP12T30P140 U82 ( .I(csr_a[0]), .ZN(n91) );
  NR2D0BWP12T30P140 U83 ( .A1(n87), .A2(n91), .ZN(n92) );
  AN2D0BWP12T30P140 U84 ( .A1(n92), .A2(csr_we), .Z(n32) );
  AO22D0BWP12T30P140 U85 ( .A1(n33), .A2(dqs_psen), .B1(csr_di[3]), .B2(n32), 
        .Z(n36) );
  AOI21D0BWP12T30P140 U86 ( .A1(sys_rst), .A2(sdram_we_n), .B(n29), .ZN(n26)
         );
  OAI21D0BWP12T30P140 U87 ( .A1(csr_di[1]), .A2(sys_rst), .B(n26), .ZN(n38) );
  AOI21D0BWP12T30P140 U88 ( .A1(n33), .A2(sdram_cas_n), .B(n29), .ZN(n27) );
  OAI21D0BWP12T30P140 U89 ( .A1(csr_di[2]), .A2(sys_rst), .B(n27), .ZN(n39) );
  AOI21D0BWP12T30P140 U90 ( .A1(n33), .A2(sdram_ras_n), .B(n29), .ZN(n28) );
  OAI21D0BWP12T30P140 U91 ( .A1(csr_di[3]), .A2(sys_rst), .B(n28), .ZN(n40) );
  AOI21D0BWP12T30P140 U92 ( .A1(sys_rst), .A2(sdram_cs_n), .B(n29), .ZN(n30)
         );
  OAI21D0BWP12T30P140 U93 ( .A1(csr_di[0]), .A2(sys_rst), .B(n30), .ZN(n42) );
  INVD0BWP12T30P140 U94 ( .I(dqs_psen), .ZN(n31) );
  AO21D0BWP12T30P140 U95 ( .A1(psready), .A2(n31), .B(dqs_psdone), .Z(n44) );
  AO22D0BWP12T30P140 U96 ( .A1(n33), .A2(idelay_ce), .B1(csr_di[1]), .B2(n32), 
        .Z(n35) );
  AO22D0BWP12T30P140 U97 ( .A1(n33), .A2(idelay_inc), .B1(csr_di[2]), .B2(n32), 
        .Z(n37) );
  AO22D0BWP12T30P140 U98 ( .A1(n33), .A2(idelay_rst), .B1(csr_di[0]), .B2(n32), 
        .Z(n41) );
  AO22D0BWP12T30P140 U99 ( .A1(n33), .A2(dqs_psincdec), .B1(csr_di[4]), .B2(
        n32), .Z(n43) );
  NR2D0BWP12T30P140 U100 ( .A1(csr_a[0]), .A2(n87), .ZN(n95) );
  ND2D0BWP12T30P140 U101 ( .A1(n89), .A2(n88), .ZN(n90) );
  NR2D0BWP12T30P140 U102 ( .A1(csr_a[0]), .A2(n90), .ZN(n94) );
  AO22D0BWP12T30P140 U103 ( .A1(n95), .A2(tim_rp[1]), .B1(sdram_rst), .B2(n94), 
        .Z(N116) );
  AO22D0BWP12T30P140 U104 ( .A1(n95), .A2(tim_rp[2]), .B1(sdram_cke), .B2(n94), 
        .Z(N117) );
  NR2D0BWP12T30P140 U105 ( .A1(n91), .A2(n90), .ZN(n93) );
  AO22D0BWP12T30P140 U106 ( .A1(n95), .A2(tim_rcd[1]), .B1(n93), .B2(
        sdram_adr[0]), .Z(N119) );
  AO222D0BWP12T30P140 U107 ( .A1(tim_rcd[2]), .A2(n95), .B1(n92), .B2(psready), 
        .C1(sdram_adr[1]), .C2(n93), .Z(N120) );
  AO222D0BWP12T30P140 U108 ( .A1(n95), .A2(tim_cas), .B1(n93), .B2(
        sdram_adr[2]), .C1(pll_stat2[0]), .C2(n92), .Z(N121) );
  AO222D0BWP12T30P140 U109 ( .A1(n95), .A2(tim_refi[0]), .B1(n93), .B2(
        sdram_adr[3]), .C1(pll_stat2[1]), .C2(n92), .Z(N122) );
  AO22D0BWP12T30P140 U110 ( .A1(n95), .A2(tim_refi[1]), .B1(n93), .B2(
        sdram_adr[4]), .Z(N123) );
  AO22D0BWP12T30P140 U111 ( .A1(n95), .A2(tim_refi[2]), .B1(n93), .B2(
        sdram_adr[5]), .Z(N124) );
  AO22D0BWP12T30P140 U112 ( .A1(n95), .A2(tim_refi[3]), .B1(n93), .B2(
        sdram_adr[6]), .Z(N125) );
  AO22D0BWP12T30P140 U113 ( .A1(n95), .A2(tim_refi[4]), .B1(n93), .B2(
        sdram_adr[7]), .Z(N126) );
  AO22D0BWP12T30P140 U114 ( .A1(n95), .A2(tim_refi[5]), .B1(n93), .B2(
        sdram_adr[8]), .Z(N127) );
  AO22D0BWP12T30P140 U115 ( .A1(n95), .A2(tim_refi[6]), .B1(n93), .B2(
        sdram_adr[9]), .Z(N128) );
  AO22D0BWP12T30P140 U116 ( .A1(n95), .A2(tim_refi[7]), .B1(n93), .B2(
        sdram_adr[10]), .Z(N129) );
  AO22D0BWP12T30P140 U117 ( .A1(n95), .A2(tim_refi[8]), .B1(n93), .B2(
        sdram_adr[11]), .Z(N130) );
  AO22D0BWP12T30P140 U118 ( .A1(n95), .A2(tim_refi[9]), .B1(n93), .B2(
        sdram_adr[12]), .Z(N131) );
  AO22D0BWP12T30P140 U119 ( .A1(n95), .A2(tim_refi[10]), .B1(n93), .B2(
        sdram_ba[0]), .Z(N132) );
  AO22D0BWP12T30P140 U120 ( .A1(n95), .A2(tim_rfc[0]), .B1(n93), .B2(
        sdram_ba[1]), .Z(N133) );
  AO22D0BWP12T30P140 U121 ( .A1(n95), .A2(tim_rp[0]), .B1(bypass), .B2(n94), 
        .Z(N115) );
  AN2D0BWP12T30P140 U122 ( .A1(tim_rfc[3]), .A2(n9), .Z(N136) );
  AN2D0BWP12T30P140 U123 ( .A1(tim_wr[1]), .A2(n95), .Z(N138) );
  INVD0BWP12T30P140 U124 ( .I(n95), .ZN(n96) );
  INR2D1BWP12T30P140 U125 ( .A1(tim_rcd[0]), .B1(n96), .ZN(N118) );
  INR2D1BWP12T30P140 U126 ( .A1(tim_rfc[1]), .B1(n96), .ZN(N134) );
  INR2D1BWP12T30P140 U127 ( .A1(tim_rfc[2]), .B1(n96), .ZN(N135) );
  INR2D1BWP12T30P140 U128 ( .A1(tim_wr[0]), .B1(n96), .ZN(N137) );
endmodule


module hpdmc_mgmt_sdram_depth26_sdram_columndepth9 ( sys_clk, sdram_rst, 
        tim_rp, tim_rcd, tim_refi, tim_rfc, stb, we, address, ack, read, write, 
        concerned_bank, read_safe, write_safe, precharge_safe, sdram_cs_n, 
        sdram_we_n, sdram_cas_n, sdram_ras_n, sdram_adr, sdram_ba );
  input [2:0] tim_rp;
  input [2:0] tim_rcd;
  input [10:0] tim_refi;
  input [3:0] tim_rfc;
  input [22:0] address;
  output [3:0] concerned_bank;
  input [3:0] precharge_safe;
  output [12:0] sdram_adr;
  output [1:0] sdram_ba;
  input sys_clk, sdram_rst, stb, we, read_safe, write_safe;
  output ack, read, write, sdram_cs_n, sdram_we_n, sdram_cas_n, sdram_ras_n;
  wire   N44, N45, N46, N47, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273;
  wire   [3:0] has_openrow;
  wire   [51:0] openrows;
  wire   [2:0] precharge_counter;
  wire   [2:0] activate_counter;
  wire   [10:0] refresh_counter;
  wire   [3:0] autorefresh_counter;
  wire   [3:0] state;

  DFQD2BWP12T30P140 refresh_counter_reg_9_ ( .D(n186), .CP(n2), .Q(
        refresh_counter[9]) );
  DFQD2BWP12T30P140 refresh_counter_reg_7_ ( .D(n184), .CP(n5), .Q(
        refresh_counter[7]) );
  DFQD2BWP12T30P140 refresh_counter_reg_5_ ( .D(n182), .CP(n4), .Q(
        refresh_counter[5]) );
  DFQD2BWP12T30P140 autorefresh_counter_reg_1_ ( .D(n174), .CP(n2), .Q(
        autorefresh_counter[1]) );
  DFQD2BWP12T30P140 refresh_counter_reg_8_ ( .D(n185), .CP(n5), .Q(
        refresh_counter[8]) );
  DFQD2BWP12T30P140 refresh_counter_reg_6_ ( .D(n183), .CP(n4), .Q(
        refresh_counter[6]) );
  DFQD2BWP12T30P140 refresh_counter_reg_4_ ( .D(n181), .CP(n3), .Q(
        refresh_counter[4]) );
  DFQD2BWP12T30P140 has_openrow_reg_0_ ( .D(N44), .CP(n2), .Q(has_openrow[0])
         );
  DFQD2BWP12T30P140 has_openrow_reg_2_ ( .D(N46), .CP(n5), .Q(has_openrow[2])
         );
  DFQD2BWP12T30P140 autorefresh_counter_reg_2_ ( .D(n175), .CP(n4), .Q(
        autorefresh_counter[2]) );
  DFQD2BWP12T30P140 has_openrow_reg_1_ ( .D(N45), .CP(n3), .Q(has_openrow[1])
         );
  DFQD2BWP12T30P140 has_openrow_reg_3_ ( .D(N47), .CP(n2), .Q(has_openrow[3])
         );
  DFQD2BWP12T30P140 autorefresh_counter_reg_3_ ( .D(n177), .CP(n5), .Q(
        autorefresh_counter[3]) );
  DFQD2BWP12T30P140 openrows_reg_2__0_ ( .D(n233), .CP(n4), .Q(openrows[13])
         );
  DFQD2BWP12T30P140 openrows_reg_2__1_ ( .D(n232), .CP(n3), .Q(openrows[14])
         );
  DFQD2BWP12T30P140 openrows_reg_2__2_ ( .D(n231), .CP(n2), .Q(openrows[15])
         );
  DFQD2BWP12T30P140 openrows_reg_2__3_ ( .D(n230), .CP(n5), .Q(openrows[16])
         );
  DFQD2BWP12T30P140 openrows_reg_2__5_ ( .D(n228), .CP(n3), .Q(openrows[18])
         );
  DFQD2BWP12T30P140 openrows_reg_2__6_ ( .D(n227), .CP(n2), .Q(openrows[19])
         );
  DFQD2BWP12T30P140 openrows_reg_2__7_ ( .D(n226), .CP(n5), .Q(openrows[20])
         );
  DFQD2BWP12T30P140 openrows_reg_2__8_ ( .D(n225), .CP(n4), .Q(openrows[21])
         );
  DFQD2BWP12T30P140 openrows_reg_2__9_ ( .D(n224), .CP(n3), .Q(openrows[22])
         );
  DFQD2BWP12T30P140 openrows_reg_2__10_ ( .D(n223), .CP(n2), .Q(openrows[23])
         );
  DFQD2BWP12T30P140 openrows_reg_2__11_ ( .D(n222), .CP(n5), .Q(openrows[24])
         );
  DFQD2BWP12T30P140 openrows_reg_2__12_ ( .D(n221), .CP(n4), .Q(openrows[25])
         );
  DFQD2BWP12T30P140 openrows_reg_0__0_ ( .D(n207), .CP(n3), .Q(openrows[39])
         );
  DFQD2BWP12T30P140 openrows_reg_0__1_ ( .D(n206), .CP(n2), .Q(openrows[40])
         );
  DFQD2BWP12T30P140 openrows_reg_0__2_ ( .D(n205), .CP(n5), .Q(openrows[41])
         );
  DFQD2BWP12T30P140 openrows_reg_0__3_ ( .D(n204), .CP(n4), .Q(openrows[42])
         );
  DFQD2BWP12T30P140 openrows_reg_0__4_ ( .D(n203), .CP(n3), .Q(openrows[43])
         );
  DFQD2BWP12T30P140 openrows_reg_0__5_ ( .D(n202), .CP(n2), .Q(openrows[44])
         );
  DFQD2BWP12T30P140 openrows_reg_0__7_ ( .D(n200), .CP(n4), .Q(openrows[46])
         );
  DFQD2BWP12T30P140 openrows_reg_0__8_ ( .D(n199), .CP(n3), .Q(openrows[47])
         );
  DFQD2BWP12T30P140 openrows_reg_0__9_ ( .D(n198), .CP(n2), .Q(openrows[48])
         );
  DFQD2BWP12T30P140 openrows_reg_0__10_ ( .D(n197), .CP(n5), .Q(openrows[49])
         );
  DFQD2BWP12T30P140 openrows_reg_0__11_ ( .D(n196), .CP(n4), .Q(openrows[50])
         );
  DFQD2BWP12T30P140 openrows_reg_0__12_ ( .D(n195), .CP(n3), .Q(openrows[51])
         );
  DFQD2BWP12T30P140 openrows_reg_3__0_ ( .D(n246), .CP(n2), .Q(openrows[0]) );
  DFQD2BWP12T30P140 openrows_reg_3__1_ ( .D(n245), .CP(n5), .Q(openrows[1]) );
  DFQD2BWP12T30P140 openrows_reg_3__2_ ( .D(n244), .CP(n4), .Q(openrows[2]) );
  DFQD2BWP12T30P140 openrows_reg_3__3_ ( .D(n243), .CP(n3), .Q(openrows[3]) );
  DFQD2BWP12T30P140 openrows_reg_3__4_ ( .D(n242), .CP(n2), .Q(openrows[4]) );
  DFQD2BWP12T30P140 openrows_reg_3__5_ ( .D(n241), .CP(n5), .Q(openrows[5]) );
  DFQD2BWP12T30P140 openrows_reg_3__6_ ( .D(n240), .CP(n4), .Q(openrows[6]) );
  DFQD2BWP12T30P140 openrows_reg_3__7_ ( .D(n239), .CP(n3), .Q(openrows[7]) );
  DFQD2BWP12T30P140 openrows_reg_3__9_ ( .D(n237), .CP(n5), .Q(openrows[9]) );
  DFQD2BWP12T30P140 openrows_reg_3__10_ ( .D(n236), .CP(n4), .Q(openrows[10])
         );
  DFQD2BWP12T30P140 openrows_reg_3__11_ ( .D(n235), .CP(n3), .Q(openrows[11])
         );
  DFQD2BWP12T30P140 openrows_reg_3__12_ ( .D(n234), .CP(n2), .Q(openrows[12])
         );
  DFQD2BWP12T30P140 openrows_reg_1__0_ ( .D(n220), .CP(n5), .Q(openrows[26])
         );
  DFQD2BWP12T30P140 openrows_reg_1__1_ ( .D(n219), .CP(n4), .Q(openrows[27])
         );
  DFQD2BWP12T30P140 openrows_reg_1__2_ ( .D(n218), .CP(n3), .Q(openrows[28])
         );
  DFQD2BWP12T30P140 openrows_reg_1__3_ ( .D(n217), .CP(n2), .Q(openrows[29])
         );
  DFQD2BWP12T30P140 openrows_reg_1__4_ ( .D(n216), .CP(n5), .Q(openrows[30])
         );
  DFQD2BWP12T30P140 openrows_reg_1__5_ ( .D(n215), .CP(n4), .Q(openrows[31])
         );
  DFQD2BWP12T30P140 openrows_reg_1__6_ ( .D(n214), .CP(n3), .Q(openrows[32])
         );
  DFQD2BWP12T30P140 openrows_reg_1__7_ ( .D(n213), .CP(n2), .Q(openrows[33])
         );
  DFQD2BWP12T30P140 openrows_reg_1__8_ ( .D(n212), .CP(n5), .Q(openrows[34])
         );
  DFQD2BWP12T30P140 openrows_reg_1__9_ ( .D(n211), .CP(n4), .Q(openrows[35])
         );
  DFQD2BWP12T30P140 openrows_reg_1__11_ ( .D(n209), .CP(n2), .Q(openrows[37])
         );
  DFQD2BWP12T30P140 openrows_reg_1__12_ ( .D(n208), .CP(n5), .Q(openrows[38])
         );
  DFQD2BWP12T30P140 refresh_counter_reg_10_ ( .D(n188), .CP(n4), .Q(
        refresh_counter[10]) );
  DFQD2BWP12T30P140 refresh_counter_reg_2_ ( .D(n179), .CP(n3), .Q(
        refresh_counter[2]) );
  DFQD2BWP12T30P140 autorefresh_counter_reg_0_ ( .D(n176), .CP(n2), .Q(
        autorefresh_counter[0]) );
  DFQD2BWP12T30P140 precharge_counter_reg_2_ ( .D(n194), .CP(n5), .Q(
        precharge_counter[2]) );
  DFQD2BWP12T30P140 refresh_counter_reg_1_ ( .D(n178), .CP(n4), .Q(
        refresh_counter[1]) );
  DFQD2BWP12T30P140 activate_counter_reg_2_ ( .D(n191), .CP(n3), .Q(
        activate_counter[2]) );
  DFQD2BWP12T30P140 precharge_counter_reg_0_ ( .D(n193), .CP(n2), .Q(
        precharge_counter[0]) );
  DFQD2BWP12T30P140 activate_counter_reg_0_ ( .D(n190), .CP(n5), .Q(
        activate_counter[0]) );
  DFQD2BWP12T30P140 refresh_counter_reg_0_ ( .D(n187), .CP(n4), .Q(
        refresh_counter[0]) );
  DFQD2BWP12T30P140 activate_counter_reg_1_ ( .D(n189), .CP(n3), .Q(
        activate_counter[1]) );
  DFQD2BWP12T30P140 precharge_counter_reg_1_ ( .D(n192), .CP(n2), .Q(
        precharge_counter[1]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n248), .CP(n5), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n250), .CP(n3), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n247), .CP(sys_clk), .Q(state[3]) );
  DFQD1BWP12T30P140 refresh_counter_reg_3_ ( .D(n180), .CP(n3), .Q(
        refresh_counter[3]) );
  DFQD1BWP12T30P140 openrows_reg_2__4_ ( .D(n229), .CP(n4), .Q(openrows[17])
         );
  DFQD1BWP12T30P140 openrows_reg_0__6_ ( .D(n201), .CP(n5), .Q(openrows[45])
         );
  DFQD1BWP12T30P140 openrows_reg_3__8_ ( .D(n238), .CP(n2), .Q(openrows[8]) );
  DFQD1BWP12T30P140 openrows_reg_1__10_ ( .D(n210), .CP(n3), .Q(openrows[36])
         );
  DFQD1BWP12T30P140 state_reg_1_ ( .D(n249), .CP(n4), .Q(state[1]) );
  INVD0BWP12T30P140 U3 ( .I(sys_clk), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n1), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(n1), .ZN(n3) );
  INVD0BWP12T30P140 U6 ( .I(n1), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(n5) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n173) );
  CKBD0BWP12T30P140 U9 ( .I(address[8]), .Z(sdram_ba[0]) );
  CKBD0BWP12T30P140 U10 ( .I(address[9]), .Z(sdram_ba[1]) );
  INVD0BWP12T30P140 U11 ( .I(address[8]), .ZN(n6) );
  INVD0BWP12T30P140 U12 ( .I(address[9]), .ZN(n7) );
  ND2D0BWP12T30P140 U13 ( .A1(n6), .A2(n7), .ZN(n68) );
  INVD0BWP12T30P140 U14 ( .I(n68), .ZN(concerned_bank[0]) );
  ND2D0BWP12T30P140 U15 ( .A1(n6), .A2(address[9]), .ZN(n89) );
  INVD0BWP12T30P140 U16 ( .I(n89), .ZN(concerned_bank[2]) );
  ND2D0BWP12T30P140 U17 ( .A1(n7), .A2(address[8]), .ZN(n145) );
  INVD0BWP12T30P140 U18 ( .I(n145), .ZN(concerned_bank[1]) );
  ND2D0BWP12T30P140 U19 ( .A1(address[8]), .A2(address[9]), .ZN(n148) );
  INVD0BWP12T30P140 U20 ( .I(n148), .ZN(concerned_bank[3]) );
  AOI22D0BWP12T30P140 U21 ( .A1(concerned_bank[2]), .A2(has_openrow[2]), .B1(
        concerned_bank[1]), .B2(has_openrow[1]), .ZN(n9) );
  AOI22D0BWP12T30P140 U22 ( .A1(concerned_bank[0]), .A2(has_openrow[0]), .B1(
        concerned_bank[3]), .B2(has_openrow[3]), .ZN(n8) );
  ND2D0BWP12T30P140 U23 ( .A1(n9), .A2(n8), .ZN(n119) );
  INVD0BWP12T30P140 U24 ( .I(n119), .ZN(n97) );
  INVD0BWP12T30P140 U25 ( .I(refresh_counter[9]), .ZN(n86) );
  INVD0BWP12T30P140 U26 ( .I(refresh_counter[7]), .ZN(n83) );
  INVD0BWP12T30P140 U27 ( .I(refresh_counter[5]), .ZN(n79) );
  INVD0BWP12T30P140 U28 ( .I(refresh_counter[3]), .ZN(n76) );
  NR3D0BWP12T30P140 U29 ( .A1(refresh_counter[1]), .A2(refresh_counter[0]), 
        .A3(refresh_counter[2]), .ZN(n141) );
  ND2D0BWP12T30P140 U30 ( .A1(n76), .A2(n141), .ZN(n75) );
  NR2D0BWP12T30P140 U31 ( .A1(refresh_counter[4]), .A2(n75), .ZN(n80) );
  ND2D0BWP12T30P140 U32 ( .A1(n79), .A2(n80), .ZN(n78) );
  NR2D0BWP12T30P140 U33 ( .A1(refresh_counter[6]), .A2(n78), .ZN(n84) );
  ND2D0BWP12T30P140 U34 ( .A1(n83), .A2(n84), .ZN(n82) );
  NR2D0BWP12T30P140 U35 ( .A1(refresh_counter[8]), .A2(n82), .ZN(n87) );
  ND2D0BWP12T30P140 U36 ( .A1(n86), .A2(n87), .ZN(n265) );
  NR2D0BWP12T30P140 U37 ( .A1(refresh_counter[10]), .A2(n265), .ZN(n126) );
  INR3D1BWP12T30P140 U38 ( .A1(stb), .B1(state[1]), .B2(n126), .ZN(n10) );
  INVD0BWP12T30P140 U39 ( .I(state[2]), .ZN(n124) );
  ND2D0BWP12T30P140 U40 ( .A1(n10), .A2(n124), .ZN(n118) );
  NR2D0BWP12T30P140 U41 ( .A1(state[0]), .A2(n118), .ZN(n92) );
  AOI22D0BWP12T30P140 U42 ( .A1(concerned_bank[2]), .A2(openrows[25]), .B1(
        concerned_bank[1]), .B2(openrows[38]), .ZN(n12) );
  AOI22D0BWP12T30P140 U43 ( .A1(concerned_bank[0]), .A2(openrows[51]), .B1(
        concerned_bank[3]), .B2(openrows[12]), .ZN(n11) );
  ND2D0BWP12T30P140 U44 ( .A1(n12), .A2(n11), .ZN(n17) );
  INVD0BWP12T30P140 U45 ( .I(address[22]), .ZN(n152) );
  AOI22D0BWP12T30P140 U46 ( .A1(concerned_bank[2]), .A2(openrows[14]), .B1(
        concerned_bank[1]), .B2(openrows[27]), .ZN(n14) );
  AOI22D0BWP12T30P140 U47 ( .A1(concerned_bank[0]), .A2(openrows[40]), .B1(
        concerned_bank[3]), .B2(openrows[1]), .ZN(n13) );
  ND2D0BWP12T30P140 U48 ( .A1(n14), .A2(n13), .ZN(n16) );
  INVD0BWP12T30P140 U49 ( .I(address[11]), .ZN(n164) );
  OAI22D0BWP12T30P140 U50 ( .A1(n164), .A2(n16), .B1(n152), .B2(n17), .ZN(n15)
         );
  AOI221D0BWP12T30P140 U51 ( .A1(n17), .A2(n152), .B1(n16), .B2(n164), .C(n15), 
        .ZN(n42) );
  AOI22D0BWP12T30P140 U52 ( .A1(concerned_bank[2]), .A2(openrows[23]), .B1(
        concerned_bank[1]), .B2(openrows[36]), .ZN(n19) );
  AOI22D0BWP12T30P140 U53 ( .A1(concerned_bank[0]), .A2(openrows[49]), .B1(
        concerned_bank[3]), .B2(openrows[10]), .ZN(n18) );
  ND2D0BWP12T30P140 U54 ( .A1(n19), .A2(n18), .ZN(n24) );
  INVD0BWP12T30P140 U55 ( .I(address[20]), .ZN(n154) );
  AOI22D0BWP12T30P140 U56 ( .A1(concerned_bank[2]), .A2(openrows[20]), .B1(
        concerned_bank[1]), .B2(openrows[33]), .ZN(n21) );
  AOI22D0BWP12T30P140 U57 ( .A1(concerned_bank[0]), .A2(openrows[46]), .B1(
        concerned_bank[3]), .B2(openrows[7]), .ZN(n20) );
  ND2D0BWP12T30P140 U58 ( .A1(n21), .A2(n20), .ZN(n23) );
  INVD0BWP12T30P140 U59 ( .I(address[17]), .ZN(n157) );
  OAI22D0BWP12T30P140 U60 ( .A1(n157), .A2(n23), .B1(n154), .B2(n24), .ZN(n22)
         );
  AOI221D0BWP12T30P140 U61 ( .A1(n24), .A2(n154), .B1(n23), .B2(n157), .C(n22), 
        .ZN(n41) );
  AOI22D0BWP12T30P140 U62 ( .A1(concerned_bank[2]), .A2(openrows[18]), .B1(
        concerned_bank[1]), .B2(openrows[31]), .ZN(n26) );
  AOI22D0BWP12T30P140 U63 ( .A1(concerned_bank[0]), .A2(openrows[44]), .B1(
        concerned_bank[3]), .B2(openrows[5]), .ZN(n25) );
  ND2D0BWP12T30P140 U64 ( .A1(n26), .A2(n25), .ZN(n31) );
  INVD0BWP12T30P140 U65 ( .I(address[15]), .ZN(n159) );
  AOI22D0BWP12T30P140 U66 ( .A1(concerned_bank[2]), .A2(openrows[16]), .B1(
        concerned_bank[1]), .B2(openrows[29]), .ZN(n28) );
  AOI22D0BWP12T30P140 U67 ( .A1(concerned_bank[0]), .A2(openrows[42]), .B1(
        concerned_bank[3]), .B2(openrows[3]), .ZN(n27) );
  ND2D0BWP12T30P140 U68 ( .A1(n28), .A2(n27), .ZN(n30) );
  INVD0BWP12T30P140 U69 ( .I(address[13]), .ZN(n161) );
  OAI22D0BWP12T30P140 U70 ( .A1(n161), .A2(n30), .B1(n159), .B2(n31), .ZN(n29)
         );
  AOI221D0BWP12T30P140 U71 ( .A1(n31), .A2(n159), .B1(n30), .B2(n161), .C(n29), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U72 ( .A1(concerned_bank[2]), .A2(openrows[24]), .B1(
        concerned_bank[1]), .B2(openrows[37]), .ZN(n33) );
  AOI22D0BWP12T30P140 U73 ( .A1(concerned_bank[0]), .A2(openrows[50]), .B1(
        concerned_bank[3]), .B2(openrows[11]), .ZN(n32) );
  ND2D0BWP12T30P140 U74 ( .A1(n33), .A2(n32), .ZN(n38) );
  INVD0BWP12T30P140 U75 ( .I(address[21]), .ZN(n153) );
  AOI22D0BWP12T30P140 U76 ( .A1(concerned_bank[2]), .A2(openrows[19]), .B1(
        concerned_bank[1]), .B2(openrows[32]), .ZN(n35) );
  AOI22D0BWP12T30P140 U77 ( .A1(concerned_bank[0]), .A2(openrows[45]), .B1(
        concerned_bank[3]), .B2(openrows[6]), .ZN(n34) );
  ND2D0BWP12T30P140 U78 ( .A1(n35), .A2(n34), .ZN(n37) );
  INVD0BWP12T30P140 U79 ( .I(address[16]), .ZN(n158) );
  OAI22D0BWP12T30P140 U80 ( .A1(n158), .A2(n37), .B1(n153), .B2(n38), .ZN(n36)
         );
  AOI221D0BWP12T30P140 U81 ( .A1(n38), .A2(n153), .B1(n37), .B2(n158), .C(n36), 
        .ZN(n39) );
  ND4D0BWP12T30P140 U82 ( .A1(n42), .A2(n41), .A3(n40), .A4(n39), .ZN(n64) );
  AOI22D0BWP12T30P140 U83 ( .A1(concerned_bank[2]), .A2(openrows[15]), .B1(
        concerned_bank[1]), .B2(openrows[28]), .ZN(n44) );
  AOI22D0BWP12T30P140 U84 ( .A1(concerned_bank[0]), .A2(openrows[41]), .B1(
        concerned_bank[3]), .B2(openrows[2]), .ZN(n43) );
  ND2D0BWP12T30P140 U85 ( .A1(n44), .A2(n43), .ZN(n49) );
  INVD0BWP12T30P140 U86 ( .I(address[12]), .ZN(n163) );
  AOI22D0BWP12T30P140 U87 ( .A1(concerned_bank[2]), .A2(openrows[22]), .B1(
        concerned_bank[1]), .B2(openrows[35]), .ZN(n46) );
  AOI22D0BWP12T30P140 U88 ( .A1(concerned_bank[0]), .A2(openrows[48]), .B1(
        concerned_bank[3]), .B2(openrows[9]), .ZN(n45) );
  ND2D0BWP12T30P140 U89 ( .A1(n46), .A2(n45), .ZN(n48) );
  INVD0BWP12T30P140 U90 ( .I(address[19]), .ZN(n155) );
  OAI22D0BWP12T30P140 U91 ( .A1(n155), .A2(n48), .B1(n163), .B2(n49), .ZN(n47)
         );
  AOI221D0BWP12T30P140 U92 ( .A1(n49), .A2(n163), .B1(n48), .B2(n155), .C(n47), 
        .ZN(n62) );
  INVD0BWP12T30P140 U93 ( .I(address[10]), .ZN(n165) );
  AOI22D0BWP12T30P140 U94 ( .A1(concerned_bank[2]), .A2(openrows[13]), .B1(
        concerned_bank[1]), .B2(openrows[26]), .ZN(n51) );
  AOI22D0BWP12T30P140 U95 ( .A1(concerned_bank[0]), .A2(openrows[39]), .B1(
        concerned_bank[3]), .B2(openrows[0]), .ZN(n50) );
  ND2D0BWP12T30P140 U96 ( .A1(n51), .A2(n50), .ZN(n52) );
  MUX2ND0BWP12T30P140 U97 ( .I0(address[10]), .I1(n165), .S(n52), .ZN(n61) );
  AOI22D0BWP12T30P140 U98 ( .A1(concerned_bank[2]), .A2(openrows[21]), .B1(
        concerned_bank[1]), .B2(openrows[34]), .ZN(n54) );
  AOI22D0BWP12T30P140 U99 ( .A1(concerned_bank[0]), .A2(openrows[47]), .B1(
        concerned_bank[3]), .B2(openrows[8]), .ZN(n53) );
  ND2D0BWP12T30P140 U100 ( .A1(n54), .A2(n53), .ZN(n59) );
  INVD0BWP12T30P140 U101 ( .I(address[18]), .ZN(n156) );
  AOI22D0BWP12T30P140 U102 ( .A1(concerned_bank[2]), .A2(openrows[17]), .B1(
        concerned_bank[1]), .B2(openrows[30]), .ZN(n56) );
  AOI22D0BWP12T30P140 U103 ( .A1(concerned_bank[0]), .A2(openrows[43]), .B1(
        concerned_bank[3]), .B2(openrows[4]), .ZN(n55) );
  ND2D0BWP12T30P140 U104 ( .A1(n56), .A2(n55), .ZN(n58) );
  INVD0BWP12T30P140 U105 ( .I(address[14]), .ZN(n160) );
  OAI22D0BWP12T30P140 U106 ( .A1(n160), .A2(n58), .B1(n156), .B2(n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U107 ( .A1(n59), .A2(n156), .B1(n58), .B2(n160), .C(n57), .ZN(n60) );
  ND4D0BWP12T30P140 U108 ( .A1(n62), .A2(n61), .A3(n60), .A4(n119), .ZN(n63)
         );
  NR2D0BWP12T30P140 U109 ( .A1(n64), .A2(n63), .ZN(n91) );
  OAI22D0BWP12T30P140 U110 ( .A1(precharge_safe[0]), .A2(n68), .B1(
        precharge_safe[1]), .B2(n145), .ZN(n66) );
  OAI22D0BWP12T30P140 U111 ( .A1(precharge_safe[3]), .A2(n148), .B1(
        precharge_safe[2]), .B2(n89), .ZN(n65) );
  INR4D0BWP12T30P140 U112 ( .A1(n92), .B1(n91), .B2(n66), .B3(n65), .ZN(n67)
         );
  INVD0BWP12T30P140 U113 ( .I(n67), .ZN(n109) );
  NR3D0BWP12T30P140 U114 ( .A1(state[3]), .A2(n97), .A3(n109), .ZN(n253) );
  ND2D0BWP12T30P140 U115 ( .A1(n97), .A2(n92), .ZN(n110) );
  INVD0BWP12T30P140 U116 ( .I(state[1]), .ZN(n121) );
  ND2D0BWP12T30P140 U117 ( .A1(n121), .A2(state[0]), .ZN(n116) );
  INVD0BWP12T30P140 U118 ( .I(n116), .ZN(n114) );
  NR3D0BWP12T30P140 U119 ( .A1(precharge_counter[2]), .A2(precharge_counter[0]), .A3(precharge_counter[1]), .ZN(n108) );
  ND2D0BWP12T30P140 U120 ( .A1(n114), .A2(n108), .ZN(n254) );
  AOI211D0BWP12T30P140 U121 ( .A1(n110), .A2(n254), .B(state[2]), .C(state[3]), 
        .ZN(n261) );
  ND2D0BWP12T30P140 U122 ( .A1(n261), .A2(n173), .ZN(n147) );
  NR2D0BWP12T30P140 U123 ( .A1(n68), .A2(n147), .ZN(n150) );
  AOI21D0BWP12T30P140 U124 ( .A1(has_openrow[0]), .A2(n173), .B(n150), .ZN(n70) );
  ND4D0BWP12T30P140 U125 ( .A1(state[2]), .A2(precharge_safe[2]), .A3(
        precharge_safe[3]), .A4(precharge_safe[0]), .ZN(n69) );
  INVD0BWP12T30P140 U126 ( .I(state[0]), .ZN(n270) );
  IND4D1BWP12T30P140 U127 ( .A1(n69), .B1(precharge_safe[1]), .B2(n121), .B3(
        n270), .ZN(n255) );
  NR2D0BWP12T30P140 U128 ( .A1(state[3]), .A2(n255), .ZN(n252) );
  AOI211D0BWP12T30P140 U129 ( .A1(concerned_bank[0]), .A2(n253), .B(n70), .C(
        n252), .ZN(N44) );
  AOI21D0BWP12T30P140 U130 ( .A1(refresh_counter[4]), .A2(n75), .B(n80), .ZN(
        n71) );
  NR2D0BWP12T30P140 U131 ( .A1(n124), .A2(n254), .ZN(n96) );
  INVD0BWP12T30P140 U132 ( .I(state[3]), .ZN(n259) );
  ND2D0BWP12T30P140 U133 ( .A1(n96), .A2(n259), .ZN(n169) );
  INVD0BWP12T30P140 U134 ( .I(n169), .ZN(n167) );
  NR3D0BWP12T30P140 U135 ( .A1(sdram_rst), .A2(n126), .A3(n167), .ZN(n264) );
  INVD0BWP12T30P140 U136 ( .I(n264), .ZN(n143) );
  NR2D0BWP12T30P140 U137 ( .A1(sdram_rst), .A2(n169), .ZN(n267) );
  MOAI22D0BWP12T30P140 U138 ( .A1(n71), .A2(n143), .B1(n267), .B2(tim_refi[4]), 
        .ZN(n181) );
  AOI21D0BWP12T30P140 U139 ( .A1(refresh_counter[6]), .A2(n78), .B(n84), .ZN(
        n72) );
  MOAI22D0BWP12T30P140 U140 ( .A1(n72), .A2(n143), .B1(n267), .B2(tim_refi[6]), 
        .ZN(n183) );
  AOI21D0BWP12T30P140 U141 ( .A1(refresh_counter[8]), .A2(n82), .B(n87), .ZN(
        n73) );
  MOAI22D0BWP12T30P140 U142 ( .A1(n73), .A2(n143), .B1(n267), .B2(tim_refi[8]), 
        .ZN(n185) );
  OR2D0BWP12T30P140 U143 ( .A1(autorefresh_counter[1]), .A2(
        autorefresh_counter[0]), .Z(n102) );
  OR2D0BWP12T30P140 U144 ( .A1(autorefresh_counter[2]), .A2(n102), .Z(n168) );
  NR2D0BWP12T30P140 U145 ( .A1(autorefresh_counter[3]), .A2(n168), .ZN(n106)
         );
  OR2D0BWP12T30P140 U146 ( .A1(n106), .A2(n167), .Z(n139) );
  AOI32D0BWP12T30P140 U147 ( .A1(autorefresh_counter[0]), .A2(n169), .A3(
        autorefresh_counter[1]), .B1(tim_rfc[1]), .B2(n167), .ZN(n74) );
  OAI21D0BWP12T30P140 U148 ( .A1(n102), .A2(n139), .B(n74), .ZN(n174) );
  OAI21D0BWP12T30P140 U149 ( .A1(n141), .A2(n76), .B(n75), .ZN(n77) );
  AO22D0BWP12T30P140 U150 ( .A1(n264), .A2(n77), .B1(n267), .B2(tim_refi[3]), 
        .Z(n180) );
  OAI21D0BWP12T30P140 U151 ( .A1(n80), .A2(n79), .B(n78), .ZN(n81) );
  AO22D0BWP12T30P140 U152 ( .A1(n264), .A2(n81), .B1(n267), .B2(tim_refi[5]), 
        .Z(n182) );
  OAI21D0BWP12T30P140 U153 ( .A1(n84), .A2(n83), .B(n82), .ZN(n85) );
  AO22D0BWP12T30P140 U154 ( .A1(n264), .A2(n85), .B1(n267), .B2(tim_refi[7]), 
        .Z(n184) );
  OAI21D0BWP12T30P140 U155 ( .A1(n87), .A2(n86), .B(n265), .ZN(n88) );
  AO22D0BWP12T30P140 U156 ( .A1(n264), .A2(n88), .B1(n267), .B2(tim_refi[9]), 
        .Z(n186) );
  NR2D0BWP12T30P140 U157 ( .A1(n89), .A2(n147), .ZN(n162) );
  AOI21D0BWP12T30P140 U158 ( .A1(has_openrow[2]), .A2(n173), .B(n162), .ZN(n90) );
  AOI211D0BWP12T30P140 U159 ( .A1(concerned_bank[2]), .A2(n253), .B(n252), .C(
        n90), .ZN(N46) );
  INVD0BWP12T30P140 U160 ( .I(n261), .ZN(n134) );
  NR2D0BWP12T30P140 U161 ( .A1(n165), .A2(n134), .ZN(sdram_adr[0]) );
  ND2D0BWP12T30P140 U162 ( .A1(n92), .A2(n91), .ZN(n269) );
  INVD0BWP12T30P140 U163 ( .I(n269), .ZN(n94) );
  INVD0BWP12T30P140 U164 ( .I(read_safe), .ZN(n272) );
  ND2D0BWP12T30P140 U165 ( .A1(we), .A2(write_safe), .ZN(n98) );
  OAI21D0BWP12T30P140 U166 ( .A1(we), .A2(n272), .B(n98), .ZN(n93) );
  NR4D0BWP12T30P140 U167 ( .A1(state[2]), .A2(activate_counter[2]), .A3(
        activate_counter[1]), .A4(activate_counter[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U168 ( .A1(state[1]), .A2(n105), .ZN(n99) );
  INVD0BWP12T30P140 U169 ( .I(n99), .ZN(n271) );
  ND2D0BWP12T30P140 U170 ( .A1(state[0]), .A2(write_safe), .ZN(n100) );
  OAI21D0BWP12T30P140 U171 ( .A1(state[0]), .A2(n272), .B(n100), .ZN(n104) );
  AOI22D0BWP12T30P140 U172 ( .A1(n94), .A2(n93), .B1(n271), .B2(n104), .ZN(n95) );
  NR2D0BWP12T30P140 U173 ( .A1(state[3]), .A2(n95), .ZN(ack) );
  MOAI22D0BWP12T30P140 U174 ( .A1(n164), .A2(n134), .B1(ack), .B2(address[0]), 
        .ZN(sdram_adr[1]) );
  MOAI22D0BWP12T30P140 U175 ( .A1(n163), .A2(n134), .B1(ack), .B2(address[1]), 
        .ZN(sdram_adr[2]) );
  MOAI22D0BWP12T30P140 U176 ( .A1(n161), .A2(n134), .B1(ack), .B2(address[2]), 
        .ZN(sdram_adr[3]) );
  MOAI22D0BWP12T30P140 U177 ( .A1(n160), .A2(n134), .B1(ack), .B2(address[3]), 
        .ZN(sdram_adr[4]) );
  MOAI22D0BWP12T30P140 U178 ( .A1(n159), .A2(n134), .B1(ack), .B2(address[4]), 
        .ZN(sdram_adr[5]) );
  MOAI22D0BWP12T30P140 U179 ( .A1(n158), .A2(n134), .B1(ack), .B2(address[5]), 
        .ZN(sdram_adr[6]) );
  MOAI22D0BWP12T30P140 U180 ( .A1(n157), .A2(n134), .B1(ack), .B2(address[6]), 
        .ZN(sdram_adr[7]) );
  MOAI22D0BWP12T30P140 U181 ( .A1(n156), .A2(n134), .B1(ack), .B2(address[7]), 
        .ZN(sdram_adr[8]) );
  NR2D0BWP12T30P140 U182 ( .A1(n155), .A2(n134), .ZN(sdram_adr[9]) );
  AO21D0BWP12T30P140 U183 ( .A1(address[20]), .A2(n261), .B(n252), .Z(
        sdram_adr[10]) );
  NR2D0BWP12T30P140 U184 ( .A1(n153), .A2(n134), .ZN(sdram_adr[11]) );
  NR2D0BWP12T30P140 U185 ( .A1(n152), .A2(n134), .ZN(sdram_adr[12]) );
  INVD0BWP12T30P140 U186 ( .I(n95), .ZN(n257) );
  OAI21D0BWP12T30P140 U187 ( .A1(n96), .A2(n257), .B(n259), .ZN(sdram_cas_n)
         );
  INVD0BWP12T30P140 U188 ( .I(n255), .ZN(n111) );
  NR2D0BWP12T30P140 U189 ( .A1(n97), .A2(n109), .ZN(n101) );
  OAI22D0BWP12T30P140 U190 ( .A1(n100), .A2(n99), .B1(n269), .B2(n98), .ZN(
        n268) );
  OAI31D0BWP12T30P140 U191 ( .A1(n111), .A2(n101), .A3(n268), .B(n259), .ZN(
        sdram_we_n) );
  AOI32D0BWP12T30P140 U192 ( .A1(autorefresh_counter[2]), .A2(n169), .A3(n102), 
        .B1(tim_rfc[2]), .B2(n167), .ZN(n103) );
  OAI21D0BWP12T30P140 U193 ( .A1(n168), .A2(n139), .B(n103), .ZN(n175) );
  NR2D0BWP12T30P140 U194 ( .A1(sdram_rst), .A2(n259), .ZN(n247) );
  AOI22D0BWP12T30P140 U195 ( .A1(state[2]), .A2(n106), .B1(n105), .B2(n104), 
        .ZN(n107) );
  AOI21D0BWP12T30P140 U196 ( .A1(state[1]), .A2(n107), .B(state[3]), .ZN(n127)
         );
  AOI221D0BWP12T30P140 U197 ( .A1(n108), .A2(n127), .B1(n116), .B2(n127), .C(
        sdram_rst), .ZN(n123) );
  ND2D0BWP12T30P140 U198 ( .A1(n110), .A2(n109), .ZN(n256) );
  AOI221D0BWP12T30P140 U199 ( .A1(we), .A2(n256), .B1(n119), .B2(n256), .C(
        n111), .ZN(n112) );
  ND2D0BWP12T30P140 U200 ( .A1(state[0]), .A2(state[2]), .ZN(n117) );
  OAI22D0BWP12T30P140 U201 ( .A1(n123), .A2(n112), .B1(n121), .B2(n117), .ZN(
        n113) );
  AOI31D0BWP12T30P140 U202 ( .A1(n114), .A2(we), .A3(n124), .B(n113), .ZN(n115) );
  INVD0BWP12T30P140 U203 ( .I(n123), .ZN(n120) );
  OAI22D0BWP12T30P140 U204 ( .A1(sdram_rst), .A2(n115), .B1(n120), .B2(n270), 
        .ZN(n250) );
  OA211D0BWP12T30P140 U205 ( .A1(n119), .A2(n118), .B(n117), .C(n116), .Z(n122) );
  OAI32D0BWP12T30P140 U206 ( .A1(n123), .A2(sdram_rst), .A3(n122), .B1(n121), 
        .B2(n120), .ZN(n249) );
  NR2D0BWP12T30P140 U207 ( .A1(state[1]), .A2(state[0]), .ZN(n128) );
  AOI31D0BWP12T30P140 U208 ( .A1(state[1]), .A2(n127), .A3(n270), .B(n124), 
        .ZN(n125) );
  AOI31D0BWP12T30P140 U209 ( .A1(n128), .A2(n127), .A3(n126), .B(n125), .ZN(
        n129) );
  NR2D0BWP12T30P140 U210 ( .A1(sdram_rst), .A2(n129), .ZN(n248) );
  NR2D0BWP12T30P140 U211 ( .A1(n252), .A2(n253), .ZN(n138) );
  INVD0BWP12T30P140 U212 ( .I(precharge_counter[0]), .ZN(n136) );
  OAI211D0BWP12T30P140 U213 ( .A1(precharge_counter[2]), .A2(
        precharge_counter[1]), .B(n138), .C(n136), .ZN(n262) );
  INVD0BWP12T30P140 U214 ( .I(n138), .ZN(n263) );
  AOI32D0BWP12T30P140 U215 ( .A1(precharge_counter[1]), .A2(n138), .A3(
        precharge_counter[0]), .B1(tim_rp[1]), .B2(n263), .ZN(n130) );
  OAI21D0BWP12T30P140 U216 ( .A1(precharge_counter[1]), .A2(n262), .B(n130), 
        .ZN(n192) );
  INVD0BWP12T30P140 U217 ( .I(activate_counter[0]), .ZN(n132) );
  OAI211D0BWP12T30P140 U218 ( .A1(activate_counter[2]), .A2(
        activate_counter[1]), .B(n134), .C(n132), .ZN(n260) );
  AOI32D0BWP12T30P140 U219 ( .A1(activate_counter[0]), .A2(n134), .A3(
        activate_counter[1]), .B1(tim_rcd[1]), .B2(n261), .ZN(n131) );
  OAI21D0BWP12T30P140 U220 ( .A1(activate_counter[1]), .A2(n260), .B(n131), 
        .ZN(n189) );
  MOAI22D0BWP12T30P140 U221 ( .A1(refresh_counter[0]), .A2(n143), .B1(
        tim_refi[0]), .B2(n267), .ZN(n187) );
  IND2D1BWP12T30P140 U222 ( .A1(activate_counter[1]), .B1(n132), .ZN(n133) );
  AO32D0BWP12T30P140 U223 ( .A1(activate_counter[2]), .A2(n134), .A3(n133), 
        .B1(n261), .B2(tim_rcd[2]), .Z(n191) );
  NR2D0BWP12T30P140 U224 ( .A1(refresh_counter[1]), .A2(refresh_counter[0]), 
        .ZN(n140) );
  AOI21D0BWP12T30P140 U225 ( .A1(refresh_counter[0]), .A2(refresh_counter[1]), 
        .B(n140), .ZN(n135) );
  MOAI22D0BWP12T30P140 U226 ( .A1(n135), .A2(n143), .B1(n267), .B2(tim_refi[1]), .ZN(n178) );
  IND2D1BWP12T30P140 U227 ( .A1(precharge_counter[1]), .B1(n136), .ZN(n137) );
  AO32D0BWP12T30P140 U228 ( .A1(precharge_counter[2]), .A2(n138), .A3(n137), 
        .B1(n263), .B2(tim_rp[2]), .Z(n194) );
  MOAI22D0BWP12T30P140 U229 ( .A1(autorefresh_counter[0]), .A2(n139), .B1(
        tim_rfc[0]), .B2(n167), .ZN(n176) );
  INVD0BWP12T30P140 U230 ( .I(n140), .ZN(n142) );
  AOI21D0BWP12T30P140 U231 ( .A1(refresh_counter[2]), .A2(n142), .B(n141), 
        .ZN(n144) );
  MOAI22D0BWP12T30P140 U232 ( .A1(n144), .A2(n143), .B1(n267), .B2(tim_refi[2]), .ZN(n179) );
  NR2D0BWP12T30P140 U233 ( .A1(n145), .A2(n147), .ZN(n172) );
  CKBD0BWP12T30P140 U234 ( .I(n172), .Z(n146) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n172), .A2(n152), .B1(openrows[38]), .B2(
        n146), .ZN(n208) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n172), .A2(n153), .B1(openrows[37]), .B2(
        n172), .ZN(n209) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n146), .A2(n154), .B1(openrows[36]), .B2(
        n146), .ZN(n210) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n172), .A2(n155), .B1(openrows[35]), .B2(
        n172), .ZN(n211) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n146), .A2(n156), .B1(openrows[34]), .B2(
        n172), .ZN(n212) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n172), .A2(n157), .B1(openrows[33]), .B2(
        n146), .ZN(n213) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n146), .A2(n158), .B1(openrows[32]), .B2(
        n172), .ZN(n214) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n172), .A2(n159), .B1(openrows[31]), .B2(
        n172), .ZN(n215) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n146), .A2(n160), .B1(openrows[30]), .B2(
        n146), .ZN(n216) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n172), .A2(n161), .B1(openrows[29]), .B2(
        n146), .ZN(n217) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n146), .A2(n163), .B1(openrows[28]), .B2(
        n172), .ZN(n218) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n146), .A2(n164), .B1(openrows[27]), .B2(
        n146), .ZN(n219) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n146), .A2(n165), .B1(openrows[26]), .B2(
        n146), .ZN(n220) );
  NR2D0BWP12T30P140 U248 ( .A1(n148), .A2(n147), .ZN(n170) );
  CKBD0BWP12T30P140 U249 ( .I(n170), .Z(n149) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n170), .A2(n152), .B1(openrows[12]), .B2(
        n149), .ZN(n234) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n170), .A2(n153), .B1(openrows[11]), .B2(
        n170), .ZN(n235) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n149), .A2(n154), .B1(openrows[10]), .B2(
        n149), .ZN(n236) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n170), .A2(n155), .B1(openrows[9]), .B2(n170), .ZN(n237) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n149), .A2(n156), .B1(openrows[8]), .B2(n170), .ZN(n238) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n170), .A2(n157), .B1(openrows[7]), .B2(n149), .ZN(n239) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n149), .A2(n158), .B1(openrows[6]), .B2(n170), .ZN(n240) );
  MAOI22D0BWP12T30P140 U257 ( .A1(n170), .A2(n159), .B1(openrows[5]), .B2(n170), .ZN(n241) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n149), .A2(n160), .B1(openrows[4]), .B2(n149), .ZN(n242) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n170), .A2(n161), .B1(openrows[3]), .B2(n149), .ZN(n243) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n149), .A2(n163), .B1(openrows[2]), .B2(n170), .ZN(n244) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n149), .A2(n164), .B1(openrows[1]), .B2(n149), .ZN(n245) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n149), .A2(n165), .B1(openrows[0]), .B2(n149), .ZN(n246) );
  CKBD0BWP12T30P140 U263 ( .I(n150), .Z(n151) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n150), .A2(n152), .B1(openrows[51]), .B2(
        n151), .ZN(n195) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n150), .A2(n153), .B1(openrows[50]), .B2(
        n150), .ZN(n196) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n151), .A2(n154), .B1(openrows[49]), .B2(
        n151), .ZN(n197) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n150), .A2(n155), .B1(openrows[48]), .B2(
        n150), .ZN(n198) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n151), .A2(n156), .B1(openrows[47]), .B2(
        n150), .ZN(n199) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n150), .A2(n157), .B1(openrows[46]), .B2(
        n151), .ZN(n200) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n151), .A2(n158), .B1(openrows[45]), .B2(
        n150), .ZN(n201) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n150), .A2(n159), .B1(openrows[44]), .B2(
        n150), .ZN(n202) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n151), .A2(n160), .B1(openrows[43]), .B2(
        n151), .ZN(n203) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n150), .A2(n161), .B1(openrows[42]), .B2(
        n151), .ZN(n204) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n151), .A2(n163), .B1(openrows[41]), .B2(
        n150), .ZN(n205) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n151), .A2(n164), .B1(openrows[40]), .B2(
        n151), .ZN(n206) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n151), .A2(n165), .B1(openrows[39]), .B2(
        n151), .ZN(n207) );
  CKBD0BWP12T30P140 U277 ( .I(n162), .Z(n166) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n162), .A2(n152), .B1(openrows[25]), .B2(
        n166), .ZN(n221) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n162), .A2(n153), .B1(openrows[24]), .B2(
        n162), .ZN(n222) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n166), .A2(n154), .B1(openrows[23]), .B2(
        n166), .ZN(n223) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n162), .A2(n155), .B1(openrows[22]), .B2(
        n162), .ZN(n224) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n166), .A2(n156), .B1(openrows[21]), .B2(
        n162), .ZN(n225) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n162), .A2(n157), .B1(openrows[20]), .B2(
        n166), .ZN(n226) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n166), .A2(n158), .B1(openrows[19]), .B2(
        n162), .ZN(n227) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n162), .A2(n159), .B1(openrows[18]), .B2(
        n162), .ZN(n228) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n166), .A2(n160), .B1(openrows[17]), .B2(
        n166), .ZN(n229) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n162), .A2(n161), .B1(openrows[16]), .B2(
        n166), .ZN(n230) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n166), .A2(n163), .B1(openrows[15]), .B2(
        n162), .ZN(n231) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n166), .A2(n164), .B1(openrows[14]), .B2(
        n166), .ZN(n232) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n166), .A2(n165), .B1(openrows[13]), .B2(
        n166), .ZN(n233) );
  AO32D0BWP12T30P140 U291 ( .A1(autorefresh_counter[3]), .A2(n169), .A3(n168), 
        .B1(n167), .B2(tim_rfc[3]), .Z(n177) );
  AOI21D0BWP12T30P140 U292 ( .A1(has_openrow[3]), .A2(n173), .B(n170), .ZN(
        n171) );
  AOI211D0BWP12T30P140 U293 ( .A1(concerned_bank[3]), .A2(n253), .B(n252), .C(
        n171), .ZN(N47) );
  AOI21D0BWP12T30P140 U294 ( .A1(has_openrow[1]), .A2(n173), .B(n172), .ZN(
        n251) );
  AOI211D0BWP12T30P140 U295 ( .A1(concerned_bank[1]), .A2(n253), .B(n252), .C(
        n251), .ZN(N45) );
  IND3D1BWP12T30P140 U296 ( .A1(n256), .B1(n255), .B2(n254), .ZN(n258) );
  OAI21D0BWP12T30P140 U297 ( .A1(n257), .A2(n258), .B(n259), .ZN(sdram_cs_n)
         );
  ND2D0BWP12T30P140 U298 ( .A1(n259), .A2(n258), .ZN(sdram_ras_n) );
  IOA21D0BWP12T30P140 U299 ( .A1(n261), .A2(tim_rcd[0]), .B(n260), .ZN(n190)
         );
  IOA21D0BWP12T30P140 U300 ( .A1(tim_rp[0]), .A2(n263), .B(n262), .ZN(n193) );
  ND3D0BWP12T30P140 U301 ( .A1(n265), .A2(n264), .A3(refresh_counter[10]), 
        .ZN(n266) );
  IOA21D0BWP12T30P140 U302 ( .A1(n267), .A2(tim_refi[10]), .B(n266), .ZN(n188)
         );
  INR2D1BWP12T30P140 U303 ( .A1(n268), .B1(state[3]), .ZN(write) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n271), .A2(n270), .B1(n269), .B2(we), .ZN(
        n273) );
  NR3D0BWP12T30P140 U305 ( .A1(state[3]), .A2(n273), .A3(n272), .ZN(read) );
endmodule


module hpdmc_busif_sdram_depth26 ( sys_clk, sdram_rst, fml_adr, fml_stb, 
        fml_we, fml_ack, mgmt_stb, mgmt_we, mgmt_address, mgmt_ack, data_ack
 );
  input [25:0] fml_adr;
  output [22:0] mgmt_address;
  input sys_clk, sdram_rst, fml_stb, fml_we, mgmt_ack, data_ack;
  output fml_ack, mgmt_stb, mgmt_we;
  wire   mgmt_stb_en, n3, n1, n2;

  DFQD2BWP12T30P140 mgmt_stb_en_reg ( .D(n3), .CP(sys_clk), .Q(mgmt_stb_en) );
  CKBD0BWP12T30P140 U3 ( .I(data_ack), .Z(fml_ack) );
  CKBD0BWP12T30P140 U4 ( .I(fml_we), .Z(mgmt_we) );
  CKBD0BWP12T30P140 U5 ( .I(fml_adr[3]), .Z(mgmt_address[0]) );
  CKBD0BWP12T30P140 U6 ( .I(fml_adr[4]), .Z(mgmt_address[1]) );
  CKBD0BWP12T30P140 U7 ( .I(fml_adr[5]), .Z(mgmt_address[2]) );
  CKBD0BWP12T30P140 U8 ( .I(fml_adr[6]), .Z(mgmt_address[3]) );
  CKBD0BWP12T30P140 U9 ( .I(fml_adr[7]), .Z(mgmt_address[4]) );
  CKBD0BWP12T30P140 U10 ( .I(fml_adr[8]), .Z(mgmt_address[5]) );
  CKBD0BWP12T30P140 U11 ( .I(fml_adr[9]), .Z(mgmt_address[6]) );
  CKBD0BWP12T30P140 U12 ( .I(fml_adr[10]), .Z(mgmt_address[7]) );
  CKBD0BWP12T30P140 U13 ( .I(fml_adr[11]), .Z(mgmt_address[8]) );
  CKBD0BWP12T30P140 U14 ( .I(fml_adr[12]), .Z(mgmt_address[9]) );
  CKBD0BWP12T30P140 U15 ( .I(fml_adr[13]), .Z(mgmt_address[10]) );
  CKBD0BWP12T30P140 U16 ( .I(fml_adr[14]), .Z(mgmt_address[11]) );
  CKBD0BWP12T30P140 U17 ( .I(fml_adr[15]), .Z(mgmt_address[12]) );
  CKBD0BWP12T30P140 U18 ( .I(fml_adr[16]), .Z(mgmt_address[13]) );
  CKBD0BWP12T30P140 U19 ( .I(fml_adr[17]), .Z(mgmt_address[14]) );
  CKBD0BWP12T30P140 U20 ( .I(fml_adr[18]), .Z(mgmt_address[15]) );
  CKBD0BWP12T30P140 U21 ( .I(fml_adr[19]), .Z(mgmt_address[16]) );
  CKBD0BWP12T30P140 U22 ( .I(fml_adr[20]), .Z(mgmt_address[17]) );
  CKBD0BWP12T30P140 U23 ( .I(fml_adr[21]), .Z(mgmt_address[18]) );
  CKBD0BWP12T30P140 U24 ( .I(fml_adr[22]), .Z(mgmt_address[19]) );
  CKBD0BWP12T30P140 U25 ( .I(fml_adr[23]), .Z(mgmt_address[20]) );
  CKBD0BWP12T30P140 U26 ( .I(fml_adr[24]), .Z(mgmt_address[21]) );
  CKBD0BWP12T30P140 U27 ( .I(fml_adr[25]), .Z(mgmt_address[22]) );
  INVD0BWP12T30P140 U28 ( .I(mgmt_stb_en), .ZN(n2) );
  NR2D0BWP12T30P140 U29 ( .A1(data_ack), .A2(sdram_rst), .ZN(n1) );
  OAI21D0BWP12T30P140 U30 ( .A1(mgmt_ack), .A2(n2), .B(n1), .ZN(n3) );
  AN2D0BWP12T30P140 U31 ( .A1(fml_stb), .A2(mgmt_stb_en), .Z(mgmt_stb) );
endmodule


module hpdmc_banktimer_3 ( sys_clk, sdram_rst, tim_wr, read, write, 
        precharge_safe );
  input [1:0] tim_wr;
  input sys_clk, sdram_rst, read, write;
  output precharge_safe;
  wire   n16, n17, n18, n19, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14;
  wire   [2:0] counter;

  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n16), .CP(sys_clk), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n17), .CP(sys_clk), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n19), .CP(sys_clk), .Q(counter[0]) );
  DFQD2BWP12T30P140 precharge_safe_reg ( .D(n18), .CP(sys_clk), .Q(
        precharge_safe) );
  INVD0BWP12T30P140 U3 ( .I(counter[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(counter[1]), .ZN(n4) );
  AOI31D0BWP12T30P140 U5 ( .A1(counter[0]), .A2(n7), .A3(n4), .B(
        precharge_safe), .ZN(n1) );
  NR2D0BWP12T30P140 U6 ( .A1(read), .A2(write), .ZN(n10) );
  INVD0BWP12T30P140 U7 ( .I(n10), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n2) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n3), .B(n2), .ZN(n18) );
  INVD0BWP12T30P140 U10 ( .I(n2), .ZN(n8) );
  NR2D0BWP12T30P140 U11 ( .A1(n8), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U12 ( .A1(precharge_safe), .A2(counter[0]), .ZN(n11) );
  OR3D0BWP12T30P140 U13 ( .A1(counter[1]), .A2(precharge_safe), .A3(counter[0]), .Z(n6) );
  OAI21D0BWP12T30P140 U14 ( .A1(n11), .A2(n4), .B(n6), .ZN(n5) );
  INR3D1BWP12T30P140 U15 ( .A1(write), .B1(n8), .B2(read), .ZN(n14) );
  AO22D0BWP12T30P140 U16 ( .A1(n12), .A2(n5), .B1(n14), .B2(tim_wr[1]), .Z(n17) );
  MUX2ND0BWP12T30P140 U17 ( .I0(n7), .I1(counter[2]), .S(n6), .ZN(n9) );
  AOI21D0BWP12T30P140 U18 ( .A1(n10), .A2(n9), .B(n8), .ZN(n16) );
  AOI32D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n12), .A3(precharge_safe), 
        .B1(n11), .B2(n12), .ZN(n13) );
  IOA21D0BWP12T30P140 U20 ( .A1(n14), .A2(tim_wr[0]), .B(n13), .ZN(n19) );
endmodule


module hpdmc_banktimer_2 ( sys_clk, sdram_rst, tim_wr, read, write, 
        precharge_safe );
  input [1:0] tim_wr;
  input sys_clk, sdram_rst, read, write;
  output precharge_safe;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n19,
         n20, n21;
  wire   [2:0] counter;

  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n21), .CP(sys_clk), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n20), .CP(sys_clk), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n15), .CP(sys_clk), .Q(counter[0]) );
  DFQD1BWP12T30P140 precharge_safe_reg ( .D(n19), .CP(sys_clk), .Q(
        precharge_safe) );
  INVD0BWP12T30P140 U3 ( .I(counter[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(counter[1]), .ZN(n4) );
  AOI31D0BWP12T30P140 U5 ( .A1(counter[0]), .A2(n7), .A3(n4), .B(
        precharge_safe), .ZN(n1) );
  NR2D0BWP12T30P140 U6 ( .A1(read), .A2(write), .ZN(n10) );
  INVD0BWP12T30P140 U7 ( .I(n10), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n2) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n3), .B(n2), .ZN(n19) );
  INVD0BWP12T30P140 U10 ( .I(n2), .ZN(n8) );
  NR2D0BWP12T30P140 U11 ( .A1(n8), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U12 ( .A1(precharge_safe), .A2(counter[0]), .ZN(n11) );
  OR3D0BWP12T30P140 U13 ( .A1(counter[1]), .A2(precharge_safe), .A3(counter[0]), .Z(n6) );
  OAI21D0BWP12T30P140 U14 ( .A1(n11), .A2(n4), .B(n6), .ZN(n5) );
  INR3D1BWP12T30P140 U15 ( .A1(write), .B1(n8), .B2(read), .ZN(n14) );
  AO22D0BWP12T30P140 U16 ( .A1(n12), .A2(n5), .B1(n14), .B2(tim_wr[1]), .Z(n20) );
  MUX2ND0BWP12T30P140 U17 ( .I0(n7), .I1(counter[2]), .S(n6), .ZN(n9) );
  AOI21D0BWP12T30P140 U18 ( .A1(n10), .A2(n9), .B(n8), .ZN(n21) );
  AOI32D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n12), .A3(precharge_safe), 
        .B1(n11), .B2(n12), .ZN(n13) );
  IOA21D0BWP12T30P140 U20 ( .A1(n14), .A2(tim_wr[0]), .B(n13), .ZN(n15) );
endmodule


module hpdmc_banktimer_1 ( sys_clk, sdram_rst, tim_wr, read, write, 
        precharge_safe );
  input [1:0] tim_wr;
  input sys_clk, sdram_rst, read, write;
  output precharge_safe;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n19,
         n20, n21;
  wire   [2:0] counter;

  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n21), .CP(sys_clk), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n20), .CP(sys_clk), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n15), .CP(sys_clk), .Q(counter[0]) );
  DFQD2BWP12T30P140 precharge_safe_reg ( .D(n19), .CP(sys_clk), .Q(
        precharge_safe) );
  INVD0BWP12T30P140 U3 ( .I(counter[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(counter[1]), .ZN(n4) );
  AOI31D0BWP12T30P140 U5 ( .A1(counter[0]), .A2(n7), .A3(n4), .B(
        precharge_safe), .ZN(n1) );
  NR2D0BWP12T30P140 U6 ( .A1(read), .A2(write), .ZN(n10) );
  INVD0BWP12T30P140 U7 ( .I(n10), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n2) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n3), .B(n2), .ZN(n19) );
  INVD0BWP12T30P140 U10 ( .I(n2), .ZN(n8) );
  NR2D0BWP12T30P140 U11 ( .A1(n8), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U12 ( .A1(precharge_safe), .A2(counter[0]), .ZN(n11) );
  OR3D0BWP12T30P140 U13 ( .A1(counter[1]), .A2(precharge_safe), .A3(counter[0]), .Z(n6) );
  OAI21D0BWP12T30P140 U14 ( .A1(n11), .A2(n4), .B(n6), .ZN(n5) );
  INR3D1BWP12T30P140 U15 ( .A1(write), .B1(n8), .B2(read), .ZN(n14) );
  AO22D0BWP12T30P140 U16 ( .A1(n12), .A2(n5), .B1(n14), .B2(tim_wr[1]), .Z(n20) );
  MUX2ND0BWP12T30P140 U17 ( .I0(n7), .I1(counter[2]), .S(n6), .ZN(n9) );
  AOI21D0BWP12T30P140 U18 ( .A1(n10), .A2(n9), .B(n8), .ZN(n21) );
  AOI32D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n12), .A3(precharge_safe), 
        .B1(n11), .B2(n12), .ZN(n13) );
  IOA21D0BWP12T30P140 U20 ( .A1(n14), .A2(tim_wr[0]), .B(n13), .ZN(n15) );
endmodule


module hpdmc_banktimer_0 ( sys_clk, sdram_rst, tim_wr, read, write, 
        precharge_safe );
  input [1:0] tim_wr;
  input sys_clk, sdram_rst, read, write;
  output precharge_safe;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n19,
         n20, n21;
  wire   [2:0] counter;

  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n21), .CP(sys_clk), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n20), .CP(sys_clk), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n15), .CP(sys_clk), .Q(counter[0]) );
  DFQD1BWP12T30P140 precharge_safe_reg ( .D(n19), .CP(sys_clk), .Q(
        precharge_safe) );
  INVD0BWP12T30P140 U3 ( .I(counter[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(counter[1]), .ZN(n4) );
  AOI31D0BWP12T30P140 U5 ( .A1(counter[0]), .A2(n7), .A3(n4), .B(
        precharge_safe), .ZN(n1) );
  NR2D0BWP12T30P140 U6 ( .A1(read), .A2(write), .ZN(n10) );
  INVD0BWP12T30P140 U7 ( .I(n10), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n2) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n3), .B(n2), .ZN(n19) );
  INVD0BWP12T30P140 U10 ( .I(n2), .ZN(n8) );
  NR2D0BWP12T30P140 U11 ( .A1(n8), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U12 ( .A1(precharge_safe), .A2(counter[0]), .ZN(n11) );
  OR3D0BWP12T30P140 U13 ( .A1(counter[1]), .A2(precharge_safe), .A3(counter[0]), .Z(n6) );
  OAI21D0BWP12T30P140 U14 ( .A1(n11), .A2(n4), .B(n6), .ZN(n5) );
  INR3D1BWP12T30P140 U15 ( .A1(write), .B1(n8), .B2(read), .ZN(n14) );
  AO22D0BWP12T30P140 U16 ( .A1(n12), .A2(n5), .B1(n14), .B2(tim_wr[1]), .Z(n20) );
  MUX2ND0BWP12T30P140 U17 ( .I0(n7), .I1(counter[2]), .S(n6), .ZN(n9) );
  AOI21D0BWP12T30P140 U18 ( .A1(n10), .A2(n9), .B(n8), .ZN(n21) );
  AOI32D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n12), .A3(precharge_safe), 
        .B1(n11), .B2(n12), .ZN(n13) );
  IOA21D0BWP12T30P140 U20 ( .A1(n14), .A2(tim_wr[0]), .B(n13), .ZN(n15) );
endmodule


module hpdmc_datactl ( sys_clk, sdram_rst, read, write, concerned_bank, 
        read_safe, write_safe, precharge_safe, ack, direction, direction_r, 
        tim_cas, tim_wr );
  input [3:0] concerned_bank;
  output [3:0] precharge_safe;
  input [1:0] tim_wr;
  input sys_clk, sdram_rst, read, write, tim_cas;
  output read_safe, write_safe, ack, direction, direction_r;
  wire   ack_read2, ack_read1, ack_read0, ack_read3, N55, N56, ack0, N62, N63,
         write_d, N81, n_0_net_, n_1_net_, n_2_net_, n_3_net_, n_4_net_,
         n_5_net_, n_6_net_, n_7_net_, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44;
  wire   [2:0] read_safe_counter;
  wire   [2:0] write_safe_counter;
  wire   [2:0] counter_writedirection;

  hpdmc_banktimer_3 banktimer0 ( .sys_clk(sys_clk), .sdram_rst(n44), .tim_wr(
        tim_wr), .read(n_0_net_), .write(n_1_net_), .precharge_safe(
        precharge_safe[0]) );
  hpdmc_banktimer_2 banktimer1 ( .sys_clk(sys_clk), .sdram_rst(n44), .tim_wr(
        tim_wr), .read(n_2_net_), .write(n_3_net_), .precharge_safe(
        precharge_safe[1]) );
  hpdmc_banktimer_1 banktimer2 ( .sys_clk(sys_clk), .sdram_rst(n44), .tim_wr(
        tim_wr), .read(n_4_net_), .write(n_5_net_), .precharge_safe(
        precharge_safe[2]) );
  hpdmc_banktimer_0 banktimer3 ( .sys_clk(sys_clk), .sdram_rst(n44), .tim_wr(
        tim_wr), .read(n_6_net_), .write(n_7_net_), .precharge_safe(
        precharge_safe[3]) );
  DFQD2BWP12T30P140 ack_read0_reg ( .D(N56), .CP(n1), .Q(ack_read0) );
  DFQD2BWP12T30P140 ack_reg ( .D(N63), .CP(n1), .Q(ack) );
  DFQD2BWP12T30P140 ack_read3_reg ( .D(n50), .CP(n1), .Q(ack_read3) );
  DFQD2BWP12T30P140 counter_writedirection_reg_0_ ( .D(n47), .CP(n1), .Q(
        counter_writedirection[0]) );
  DFQD2BWP12T30P140 ack_read2_reg ( .D(n59), .CP(n1), .Q(ack_read2) );
  DFQD2BWP12T30P140 ack_read1_reg ( .D(N55), .CP(n1), .Q(ack_read1) );
  DFQD2BWP12T30P140 ack0_reg ( .D(N62), .CP(n1), .Q(ack0) );
  DFQD2BWP12T30P140 write_d_reg ( .D(N81), .CP(n1), .Q(write_d) );
  DFQD2BWP12T30P140 read_safe_counter_reg_2_ ( .D(n55), .CP(n1), .Q(
        read_safe_counter[2]) );
  DFQD2BWP12T30P140 write_safe_counter_reg_0_ ( .D(n54), .CP(n1), .Q(
        write_safe_counter[0]) );
  DFQD2BWP12T30P140 direction_reg ( .D(n48), .CP(n1), .Q(direction) );
  DFQD2BWP12T30P140 write_safe_counter_reg_2_ ( .D(n51), .CP(n1), .Q(
        write_safe_counter[2]) );
  DFQD2BWP12T30P140 read_safe_reg ( .D(n57), .CP(n1), .Q(read_safe) );
  DFQD2BWP12T30P140 write_safe_reg ( .D(n53), .CP(n1), .Q(write_safe) );
  DFQD2BWP12T30P140 read_safe_counter_reg_1_ ( .D(n56), .CP(n1), .Q(
        read_safe_counter[1]) );
  DFQD2BWP12T30P140 counter_writedirection_reg_1_ ( .D(n46), .CP(n1), .Q(
        counter_writedirection[1]) );
  DFQD2BWP12T30P140 write_safe_counter_reg_1_ ( .D(n52), .CP(sys_clk), .Q(
        write_safe_counter[1]) );
  DFQD2BWP12T30P140 counter_writedirection_reg_2_ ( .D(n49), .CP(sys_clk), .Q(
        counter_writedirection[2]) );
  DFQD1BWP12T30P140 read_safe_counter_reg_0_ ( .D(n58), .CP(n1), .Q(
        read_safe_counter[0]) );
  CKBD0BWP12T30P140 U3 ( .I(sys_clk), .Z(n1) );
  INVD0BWP12T30P140 U4 ( .I(counter_writedirection[0]), .ZN(n27) );
  INVD0BWP12T30P140 U5 ( .I(write_d), .ZN(n26) );
  NR2D0BWP12T30P140 U6 ( .A1(counter_writedirection[1]), .A2(
        counter_writedirection[2]), .ZN(n2) );
  ND3D0BWP12T30P140 U7 ( .A1(n27), .A2(n26), .A3(n2), .ZN(direction_r) );
  INVD0BWP12T30P140 U8 ( .I(sdram_rst), .ZN(n23) );
  INVD0BWP12T30P140 U9 ( .I(n23), .ZN(n44) );
  INVD0BWP12T30P140 U10 ( .I(counter_writedirection[2]), .ZN(n3) );
  ND2D0BWP12T30P140 U11 ( .A1(direction), .A2(n27), .ZN(n42) );
  NR2D0BWP12T30P140 U12 ( .A1(counter_writedirection[1]), .A2(n42), .ZN(n41)
         );
  MUX2ND0BWP12T30P140 U13 ( .I0(counter_writedirection[2]), .I1(n3), .S(n41), 
        .ZN(n4) );
  AOI21D0BWP12T30P140 U14 ( .A1(n4), .A2(n26), .B(n44), .ZN(n49) );
  INVD0BWP12T30P140 U15 ( .I(write), .ZN(n39) );
  NR2D0BWP12T30P140 U16 ( .A1(n44), .A2(n39), .ZN(N81) );
  INVD0BWP12T30P140 U17 ( .I(read), .ZN(n40) );
  NR2D0BWP12T30P140 U18 ( .A1(n44), .A2(n40), .ZN(n19) );
  ND2D0BWP12T30P140 U19 ( .A1(tim_cas), .A2(n19), .ZN(n29) );
  NR3D0BWP12T30P140 U20 ( .A1(n44), .A2(read), .A3(write), .ZN(n34) );
  ND2D0BWP12T30P140 U21 ( .A1(write_safe), .A2(n34), .ZN(n32) );
  INVD0BWP12T30P140 U22 ( .I(write_safe_counter[1]), .ZN(n6) );
  INVD0BWP12T30P140 U23 ( .I(write_safe_counter[0]), .ZN(n31) );
  AOI221D0BWP12T30P140 U24 ( .A1(write_safe_counter[0]), .A2(n6), .B1(n31), 
        .B2(write_safe_counter[1]), .C(n44), .ZN(n5) );
  OAI21D0BWP12T30P140 U25 ( .A1(n5), .A2(N81), .B(n40), .ZN(n7) );
  INVD0BWP12T30P140 U26 ( .I(n32), .ZN(n16) );
  AOI32D0BWP12T30P140 U27 ( .A1(n29), .A2(n32), .A3(n7), .B1(n16), .B2(n6), 
        .ZN(n52) );
  NR2D0BWP12T30P140 U28 ( .A1(read_safe), .A2(read_safe_counter[0]), .ZN(n9)
         );
  OAI21D0BWP12T30P140 U29 ( .A1(read_safe_counter[1]), .A2(n9), .B(n34), .ZN(
        n8) );
  AOI21D0BWP12T30P140 U30 ( .A1(read_safe_counter[1]), .A2(n9), .B(n8), .ZN(
        n56) );
  INVD0BWP12T30P140 U31 ( .I(write_safe_counter[2]), .ZN(n12) );
  NR2D0BWP12T30P140 U32 ( .A1(write_safe_counter[0]), .A2(
        write_safe_counter[1]), .ZN(n10) );
  MUX2ND0BWP12T30P140 U33 ( .I0(n12), .I1(write_safe_counter[2]), .S(n10), 
        .ZN(n11) );
  AOI21D0BWP12T30P140 U34 ( .A1(n11), .A2(n39), .B(read), .ZN(n13) );
  OAI32D0BWP12T30P140 U35 ( .A1(n16), .A2(n44), .A3(n13), .B1(n12), .B2(n32), 
        .ZN(n51) );
  INVD0BWP12T30P140 U36 ( .I(read_safe_counter[0]), .ZN(n35) );
  ND2D0BWP12T30P140 U37 ( .A1(n34), .A2(read_safe), .ZN(n36) );
  OAI211D0BWP12T30P140 U38 ( .A1(write), .A2(n35), .B(n23), .C(n36), .ZN(n14)
         );
  OAI22D0BWP12T30P140 U39 ( .A1(read), .A2(n14), .B1(n35), .B2(n36), .ZN(n58)
         );
  OAI21D0BWP12T30P140 U40 ( .A1(counter_writedirection[1]), .A2(
        counter_writedirection[2]), .B(direction), .ZN(n15) );
  AOI31D0BWP12T30P140 U41 ( .A1(n26), .A2(n42), .A3(n15), .B(n44), .ZN(n48) );
  INVD0BWP12T30P140 U42 ( .I(tim_cas), .ZN(n25) );
  ND2D0BWP12T30P140 U43 ( .A1(n19), .A2(n25), .ZN(n24) );
  OAI211D0BWP12T30P140 U44 ( .A1(write), .A2(n31), .B(n23), .C(n40), .ZN(n17)
         );
  AOI32D0BWP12T30P140 U45 ( .A1(n24), .A2(n32), .A3(n17), .B1(n16), .B2(n31), 
        .ZN(n54) );
  NR2D0BWP12T30P140 U46 ( .A1(read_safe_counter[0]), .A2(read_safe_counter[1]), 
        .ZN(n18) );
  OAI21D0BWP12T30P140 U47 ( .A1(n44), .A2(n18), .B(n36), .ZN(n22) );
  INVD0BWP12T30P140 U48 ( .I(n18), .ZN(n20) );
  NR2D0BWP12T30P140 U49 ( .A1(n19), .A2(N81), .ZN(n38) );
  OAI31D0BWP12T30P140 U50 ( .A1(n44), .A2(read_safe_counter[2]), .A3(n20), .B(
        n38), .ZN(n21) );
  AO22D0BWP12T30P140 U51 ( .A1(read_safe_counter[2]), .A2(n22), .B1(n36), .B2(
        n21), .Z(n55) );
  OA21D0BWP12T30P140 U52 ( .A1(write), .A2(ack_read0), .B(n23), .Z(N62) );
  ND2D0BWP12T30P140 U53 ( .A1(ack_read3), .A2(n23), .ZN(n30) );
  OAI21D0BWP12T30P140 U54 ( .A1(n25), .A2(n30), .B(n24), .ZN(n59) );
  AN2D0BWP12T30P140 U55 ( .A1(n42), .A2(n26), .Z(n28) );
  AOI221D0BWP12T30P140 U56 ( .A1(direction), .A2(n28), .B1(n27), .B2(n28), .C(
        n44), .ZN(n47) );
  OAI21D0BWP12T30P140 U57 ( .A1(tim_cas), .A2(n30), .B(n29), .ZN(n50) );
  OAI31D0BWP12T30P140 U58 ( .A1(write_safe_counter[1]), .A2(
        write_safe_counter[2]), .A3(n31), .B(n34), .ZN(n33) );
  IOA21D0BWP12T30P140 U59 ( .A1(n38), .A2(n33), .B(n32), .ZN(n53) );
  OAI31D0BWP12T30P140 U60 ( .A1(read_safe_counter[1]), .A2(
        read_safe_counter[2]), .A3(n35), .B(n34), .ZN(n37) );
  IOA21D0BWP12T30P140 U61 ( .A1(n38), .A2(n37), .B(n36), .ZN(n57) );
  INR2D1BWP12T30P140 U62 ( .A1(concerned_bank[0]), .B1(n39), .ZN(n_1_net_) );
  INR2D1BWP12T30P140 U63 ( .A1(concerned_bank[0]), .B1(n40), .ZN(n_0_net_) );
  INR2D1BWP12T30P140 U64 ( .A1(concerned_bank[1]), .B1(n39), .ZN(n_3_net_) );
  INR2D1BWP12T30P140 U65 ( .A1(concerned_bank[1]), .B1(n40), .ZN(n_2_net_) );
  INR2D1BWP12T30P140 U66 ( .A1(concerned_bank[2]), .B1(n39), .ZN(n_5_net_) );
  INR2D1BWP12T30P140 U67 ( .A1(concerned_bank[2]), .B1(n40), .ZN(n_4_net_) );
  INR2D1BWP12T30P140 U68 ( .A1(concerned_bank[3]), .B1(n39), .ZN(n_7_net_) );
  INR2D1BWP12T30P140 U69 ( .A1(concerned_bank[3]), .B1(n40), .ZN(n_6_net_) );
  INR2D1BWP12T30P140 U70 ( .A1(ack_read1), .B1(n44), .ZN(N56) );
  INR2D1BWP12T30P140 U71 ( .A1(ack_read2), .B1(n44), .ZN(N55) );
  INR2D1BWP12T30P140 U72 ( .A1(ack0), .B1(n44), .ZN(N63) );
  AOI21D0BWP12T30P140 U73 ( .A1(counter_writedirection[1]), .A2(n42), .B(n41), 
        .ZN(n43) );
  NR3D0BWP12T30P140 U74 ( .A1(n44), .A2(write_d), .A3(n43), .ZN(n46) );
endmodule


module hpdmc_iobuf32 ( T, I, O, IO );
  input [31:0] T;
  input [31:0] I;
  output [31:0] O;
  inout [31:0] IO;


  IOBUF iobuf0 ( .T(T[0]), .I(I[0]), .O(O[0]), .IO(IO[0]) );
  IOBUF iobuf1 ( .T(T[1]), .I(I[1]), .O(O[1]), .IO(IO[1]) );
  IOBUF iobuf2 ( .T(T[2]), .I(I[2]), .O(O[2]), .IO(IO[2]) );
  IOBUF iobuf3 ( .T(T[3]), .I(I[3]), .O(O[3]), .IO(IO[3]) );
  IOBUF iobuf4 ( .T(T[4]), .I(I[4]), .O(O[4]), .IO(IO[4]) );
  IOBUF iobuf5 ( .T(T[5]), .I(I[5]), .O(O[5]), .IO(IO[5]) );
  IOBUF iobuf6 ( .T(T[6]), .I(I[6]), .O(O[6]), .IO(IO[6]) );
  IOBUF iobuf7 ( .T(T[7]), .I(I[7]), .O(O[7]), .IO(IO[7]) );
  IOBUF iobuf8 ( .T(T[8]), .I(I[8]), .O(O[8]), .IO(IO[8]) );
  IOBUF iobuf9 ( .T(T[9]), .I(I[9]), .O(O[9]), .IO(IO[9]) );
  IOBUF iobuf10 ( .T(T[10]), .I(I[10]), .O(O[10]), .IO(IO[10]) );
  IOBUF iobuf11 ( .T(T[11]), .I(I[11]), .O(O[11]), .IO(IO[11]) );
  IOBUF iobuf12 ( .T(T[12]), .I(I[12]), .O(O[12]), .IO(IO[12]) );
  IOBUF iobuf13 ( .T(T[13]), .I(I[13]), .O(O[13]), .IO(IO[13]) );
  IOBUF iobuf14 ( .T(T[14]), .I(I[14]), .O(O[14]), .IO(IO[14]) );
  IOBUF iobuf15 ( .T(T[15]), .I(I[15]), .O(O[15]), .IO(IO[15]) );
  IOBUF iobuf16 ( .T(T[16]), .I(I[16]), .O(O[16]), .IO(IO[16]) );
  IOBUF iobuf17 ( .T(T[17]), .I(I[17]), .O(O[17]), .IO(IO[17]) );
  IOBUF iobuf18 ( .T(T[18]), .I(I[18]), .O(O[18]), .IO(IO[18]) );
  IOBUF iobuf19 ( .T(T[19]), .I(I[19]), .O(O[19]), .IO(IO[19]) );
  IOBUF iobuf20 ( .T(T[20]), .I(I[20]), .O(O[20]), .IO(IO[20]) );
  IOBUF iobuf21 ( .T(T[21]), .I(I[21]), .O(O[21]), .IO(IO[21]) );
  IOBUF iobuf22 ( .T(T[22]), .I(I[22]), .O(O[22]), .IO(IO[22]) );
  IOBUF iobuf23 ( .T(T[23]), .I(I[23]), .O(O[23]), .IO(IO[23]) );
  IOBUF iobuf24 ( .T(T[24]), .I(I[24]), .O(O[24]), .IO(IO[24]) );
  IOBUF iobuf25 ( .T(T[25]), .I(I[25]), .O(O[25]), .IO(IO[25]) );
  IOBUF iobuf26 ( .T(T[26]), .I(I[26]), .O(O[26]), .IO(IO[26]) );
  IOBUF iobuf27 ( .T(T[27]), .I(I[27]), .O(O[27]), .IO(IO[27]) );
  IOBUF iobuf28 ( .T(T[28]), .I(I[28]), .O(O[28]), .IO(IO[28]) );
  IOBUF iobuf29 ( .T(T[29]), .I(I[29]), .O(O[29]), .IO(IO[29]) );
  IOBUF iobuf30 ( .T(T[30]), .I(I[30]), .O(O[30]), .IO(IO[30]) );
  IOBUF iobuf31 ( .T(T[31]), .I(I[31]), .O(O[31]), .IO(IO[31]) );
endmodule


module hpdmc_oddr32_1 ( Q, C0, C1, CE, D0, D1, R, S );
  output [31:0] Q;
  input [31:0] D0;
  input [31:0] D1;
  input C0, C1, CE, R, S;


  ODDR2 oddr0 ( .Q(Q[0]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[0]), .D1(D1[0]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr1 ( .Q(Q[1]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[1]), .D1(D1[1]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr2 ( .Q(Q[2]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[2]), .D1(D1[2]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr3 ( .Q(Q[3]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[3]), .D1(D1[3]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr4 ( .Q(Q[4]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[4]), .D1(D1[4]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr5 ( .Q(Q[5]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[5]), .D1(D1[5]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr6 ( .Q(Q[6]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[6]), .D1(D1[6]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr7 ( .Q(Q[7]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[7]), .D1(D1[7]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr8 ( .Q(Q[8]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[8]), .D1(D1[8]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr9 ( .Q(Q[9]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[9]), .D1(D1[9]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr10 ( .Q(Q[10]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[10]), .D1(
        D1[10]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr11 ( .Q(Q[11]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[11]), .D1(
        D1[11]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr12 ( .Q(Q[12]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[12]), .D1(
        D1[12]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr13 ( .Q(Q[13]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[13]), .D1(
        D1[13]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr14 ( .Q(Q[14]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[14]), .D1(
        D1[14]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr15 ( .Q(Q[15]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[15]), .D1(
        D1[15]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr16 ( .Q(Q[16]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[16]), .D1(
        D1[16]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr17 ( .Q(Q[17]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[17]), .D1(
        D1[17]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr18 ( .Q(Q[18]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[18]), .D1(
        D1[18]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr19 ( .Q(Q[19]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[19]), .D1(
        D1[19]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr20 ( .Q(Q[20]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[20]), .D1(
        D1[20]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr21 ( .Q(Q[21]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[21]), .D1(
        D1[21]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr22 ( .Q(Q[22]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[22]), .D1(
        D1[22]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr23 ( .Q(Q[23]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[23]), .D1(
        D1[23]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr24 ( .Q(Q[24]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[24]), .D1(
        D1[24]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr25 ( .Q(Q[25]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[25]), .D1(
        D1[25]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr26 ( .Q(Q[26]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[26]), .D1(
        D1[26]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr27 ( .Q(Q[27]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[27]), .D1(
        D1[27]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr28 ( .Q(Q[28]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[28]), .D1(
        D1[28]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr29 ( .Q(Q[29]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[29]), .D1(
        D1[29]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr30 ( .Q(Q[30]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[30]), .D1(
        D1[30]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr31 ( .Q(Q[31]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[31]), .D1(
        D1[31]), .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_iddr32 ( Q0, Q1, C0, C1, CE, D, R, S );
  output [31:0] Q0;
  output [31:0] Q1;
  input [31:0] D;
  input C0, C1, CE, R, S;


  IDDR2 iddr0 ( .Q0(Q0[0]), .Q1(Q1[0]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[0]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr1 ( .Q0(Q0[1]), .Q1(Q1[1]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[1]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr2 ( .Q0(Q0[2]), .Q1(Q1[2]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[2]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr3 ( .Q0(Q0[3]), .Q1(Q1[3]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[3]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr4 ( .Q0(Q0[4]), .Q1(Q1[4]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[4]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr5 ( .Q0(Q0[5]), .Q1(Q1[5]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[5]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr6 ( .Q0(Q0[6]), .Q1(Q1[6]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[6]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr7 ( .Q0(Q0[7]), .Q1(Q1[7]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[7]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr8 ( .Q0(Q0[8]), .Q1(Q1[8]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[8]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr9 ( .Q0(Q0[9]), .Q1(Q1[9]), .C0(C0), .C1(C1), .CE(1'b1), .D(D[9]), 
        .R(1'b0), .S(1'b0) );
  IDDR2 iddr10 ( .Q0(Q0[10]), .Q1(Q1[10]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[10]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr11 ( .Q0(Q0[11]), .Q1(Q1[11]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[11]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr12 ( .Q0(Q0[12]), .Q1(Q1[12]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[12]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr13 ( .Q0(Q0[13]), .Q1(Q1[13]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[13]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr14 ( .Q0(Q0[14]), .Q1(Q1[14]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[14]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr15 ( .Q0(Q0[15]), .Q1(Q1[15]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[15]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr16 ( .Q0(Q0[16]), .Q1(Q1[16]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[16]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr17 ( .Q0(Q0[17]), .Q1(Q1[17]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[17]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr18 ( .Q0(Q0[18]), .Q1(Q1[18]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[18]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr19 ( .Q0(Q0[19]), .Q1(Q1[19]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[19]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr20 ( .Q0(Q0[20]), .Q1(Q1[20]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[20]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr21 ( .Q0(Q0[21]), .Q1(Q1[21]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[21]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr22 ( .Q0(Q0[22]), .Q1(Q1[22]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[22]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr23 ( .Q0(Q0[23]), .Q1(Q1[23]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[23]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr24 ( .Q0(Q0[24]), .Q1(Q1[24]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[24]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr25 ( .Q0(Q0[25]), .Q1(Q1[25]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[25]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr26 ( .Q0(Q0[26]), .Q1(Q1[26]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[26]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr27 ( .Q0(Q0[27]), .Q1(Q1[27]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[27]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr28 ( .Q0(Q0[28]), .Q1(Q1[28]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[28]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr29 ( .Q0(Q0[29]), .Q1(Q1[29]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[29]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr30 ( .Q0(Q0[30]), .Q1(Q1[30]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[30]), .R(1'b0), .S(1'b0) );
  IDDR2 iddr31 ( .Q0(Q0[31]), .Q1(Q1[31]), .C0(C0), .C1(C1), .CE(1'b1), .D(
        D[31]), .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_oddr4_2 ( Q, C0, C1, CE, D0, D1, R, S );
  output [3:0] Q;
  input [3:0] D0;
  input [3:0] D1;
  input C0, C1, CE, R, S;


  ODDR2 oddr0 ( .Q(Q[0]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[0]), .D1(D1[0]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr1 ( .Q(Q[1]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[1]), .D1(D1[1]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr2 ( .Q(Q[2]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[2]), .D1(D1[2]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr3 ( .Q(Q[3]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[3]), .D1(D1[3]), 
        .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_obuft4 ( T, I, O );
  input [3:0] T;
  input [3:0] I;
  output [3:0] O;


  OBUFT obuft0 ( .T(T[0]), .I(I[0]), .O(O[0]) );
  OBUFT obuft1 ( .T(T[1]), .I(I[1]), .O(O[1]) );
  OBUFT obuft2 ( .T(T[2]), .I(I[2]), .O(O[2]) );
  OBUFT obuft3 ( .T(T[3]), .I(I[3]), .O(O[3]) );
endmodule


module hpdmc_oddr4_1 ( Q, C0, C1, CE, D0, D1, R, S );
  output [3:0] Q;
  input [3:0] D0;
  input [3:0] D1;
  input C0, C1, CE, R, S;


  ODDR2 oddr0 ( .Q(Q[0]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[0]), .D1(D1[0]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr1 ( .Q(Q[1]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[1]), .D1(D1[1]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr2 ( .Q(Q[2]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[2]), .D1(D1[2]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr3 ( .Q(Q[3]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[3]), .D1(D1[3]), 
        .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_oddr4_0 ( Q, C0, C1, CE, D0, D1, R, S );
  output [3:0] Q;
  input [3:0] D0;
  input [3:0] D1;
  input C0, C1, CE, R, S;

  wire   [2:5] n;

  ODDR2 oddr0 ( .Q(Q[0]), .C0(C0), .C1(C1), .CE(1'b1), .D0(1'b1), .D1(1'b0), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr1 ( .Q(Q[1]), .C0(C0), .C1(C1), .CE(1'b1), .D0(1'b1), .D1(1'b0), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr2 ( .Q(Q[2]), .C0(C0), .C1(C1), .CE(1'b1), .D0(1'b1), .D1(1'b0), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr3 ( .Q(Q[3]), .C0(C0), .C1(C1), .CE(1'b1), .D0(1'b1), .D1(1'b0), 
        .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_oddr32_0 ( Q, C0, C1, CE, D0, D1, R, S );
  output [31:0] Q;
  input [31:0] D0;
  input [31:0] D1;
  input C0, C1, CE, R, S;


  ODDR2 oddr0 ( .Q(Q[0]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[0]), .D1(D1[0]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr1 ( .Q(Q[1]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[1]), .D1(D1[1]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr2 ( .Q(Q[2]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[2]), .D1(D1[2]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr3 ( .Q(Q[3]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[3]), .D1(D1[3]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr4 ( .Q(Q[4]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[4]), .D1(D1[4]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr5 ( .Q(Q[5]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[5]), .D1(D1[5]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr6 ( .Q(Q[6]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[6]), .D1(D1[6]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr7 ( .Q(Q[7]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[7]), .D1(D1[7]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr8 ( .Q(Q[8]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[8]), .D1(D1[8]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr9 ( .Q(Q[9]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[9]), .D1(D1[9]), 
        .R(1'b0), .S(1'b0) );
  ODDR2 oddr10 ( .Q(Q[10]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[10]), .D1(
        D1[10]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr11 ( .Q(Q[11]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[11]), .D1(
        D1[11]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr12 ( .Q(Q[12]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[12]), .D1(
        D1[12]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr13 ( .Q(Q[13]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[13]), .D1(
        D1[13]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr14 ( .Q(Q[14]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[14]), .D1(
        D1[14]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr15 ( .Q(Q[15]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[15]), .D1(
        D1[15]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr16 ( .Q(Q[16]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[16]), .D1(
        D1[16]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr17 ( .Q(Q[17]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[17]), .D1(
        D1[17]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr18 ( .Q(Q[18]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[18]), .D1(
        D1[18]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr19 ( .Q(Q[19]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[19]), .D1(
        D1[19]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr20 ( .Q(Q[20]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[20]), .D1(
        D1[20]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr21 ( .Q(Q[21]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[21]), .D1(
        D1[21]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr22 ( .Q(Q[22]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[22]), .D1(
        D1[22]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr23 ( .Q(Q[23]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[23]), .D1(
        D1[23]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr24 ( .Q(Q[24]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[24]), .D1(
        D1[24]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr25 ( .Q(Q[25]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[25]), .D1(
        D1[25]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr26 ( .Q(Q[26]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[26]), .D1(
        D1[26]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr27 ( .Q(Q[27]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[27]), .D1(
        D1[27]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr28 ( .Q(Q[28]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[28]), .D1(
        D1[28]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr29 ( .Q(Q[29]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[29]), .D1(
        D1[29]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr30 ( .Q(Q[30]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[30]), .D1(
        D1[30]), .R(1'b0), .S(1'b0) );
  ODDR2 oddr31 ( .Q(Q[31]), .C0(C0), .C1(C1), .CE(1'b1), .D0(D0[31]), .D1(
        D1[31]), .R(1'b0), .S(1'b0) );
endmodule


module hpdmc_ddrio ( sys_clk, sys_clk_n, dqs_clk, dqs_clk_n, direction_r, mo, 
        doo, di, sdram_dm, sdram_dq, sdram_dqs );
  input [7:0] mo;
  input [63:0] doo;
  output [63:0] di;
  output [3:0] sdram_dm;
  inout [31:0] sdram_dq;
  inout [3:0] sdram_dqs;
  input sys_clk, sys_clk_n, dqs_clk, dqs_clk_n, direction_r;
  wire   n_Logic1_, n_Logic0_, n_2_net__31_, n_16_net__3_;
  wire   [31:0] sdram_dq_t;
  wire   [31:0] sdram_dq_out;
  wire   [31:0] sdram_dq_in;
  wire   [3:0] sdram_dqs_t;
  wire   [3:0] sdram_dqs_out;

  hpdmc_iobuf32 iobuf_dq ( .T(sdram_dq_t), .I(sdram_dq_out), .O(sdram_dq_in), 
        .IO(sdram_dq) );
  hpdmc_oddr32_1 oddr_dq_t ( .Q(sdram_dq_t), .C0(sys_clk), .C1(sys_clk_n), 
        .CE(n_Logic1_), .D0({n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_}), .D1({
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, n_2_net__31_, 
        n_2_net__31_, n_2_net__31_}), .R(n_Logic0_), .S(n_Logic0_) );
  hpdmc_oddr32_0 oddr_dq ( .Q(sdram_dq_out), .C0(sys_clk), .C1(sys_clk_n), 
        .CE(n_Logic1_), .D0(doo[63:32]), .D1(doo[31:0]), .R(n_Logic0_), .S(
        n_Logic0_) );
  hpdmc_iddr32 iddr_dq ( .Q0(di[31:0]), .Q1(di[63:32]), .C0(sys_clk), .C1(
        sys_clk_n), .CE(n_Logic1_), .D(sdram_dq_in), .R(n_Logic0_), .S(
        n_Logic0_) );
  hpdmc_oddr4_2 oddr_dm ( .Q(sdram_dm), .C0(sys_clk), .C1(sys_clk_n), .CE(
        n_Logic1_), .D0(mo[7:4]), .D1(mo[3:0]), .R(n_Logic0_), .S(n_Logic0_)
         );
  hpdmc_obuft4 obuft_dqs ( .T(sdram_dqs_t), .I(sdram_dqs_out), .O(sdram_dqs)
         );
  hpdmc_oddr4_1 oddr_dqs_t ( .Q(sdram_dqs_t), .C0(dqs_clk), .C1(dqs_clk_n), 
        .CE(n_Logic1_), .D0({n_16_net__3_, n_16_net__3_, n_16_net__3_, 
        n_16_net__3_}), .D1({n_16_net__3_, n_16_net__3_, n_16_net__3_, 
        n_16_net__3_}), .R(n_Logic0_), .S(n_Logic0_) );
  hpdmc_oddr4_0 oddr_dqs ( .Q(sdram_dqs_out), .C0(dqs_clk), .C1(dqs_clk_n), 
        .CE(n_Logic1_), .D0({n_Logic1_, n_Logic1_, n_Logic1_, n_Logic1_}), 
        .D1({n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), .R(n_Logic0_), .S(
        n_Logic0_) );
  INVD0BWP12T30P140 I_0 ( .I(direction_r), .ZN(n_2_net__31_) );
  INVD0BWP12T30P140 I_1 ( .I(direction_r), .ZN(n_16_net__3_) );
  TIEHBWP12T30P140 U3 ( .Z(n_Logic1_) );
  TIELBWP12T30P140 U4 ( .ZN(n_Logic0_) );
endmodule


module hpdmc ( sys_clk, sys_clk_n, dqs_clk, dqs_clk_n, sys_rst, csr_a, csr_we, 
        csr_di, csr_do, fml_adr, fml_stb, fml_we, fml_ack, fml_sel, fml_di, 
        fml_do, sdram_cke, sdram_cs_n, sdram_we_n, sdram_cas_n, sdram_ras_n, 
        sdram_adr, sdram_ba, sdram_dm, sdram_dq, sdram_dqs, dqs_psen, 
        dqs_psincdec, dqs_psdone, pll_stat );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  input [25:0] fml_adr;
  input [7:0] fml_sel;
  input [63:0] fml_di;
  output [63:0] fml_do;
  output [12:0] sdram_adr;
  output [1:0] sdram_ba;
  output [3:0] sdram_dm;
  inout [31:0] sdram_dq;
  inout [3:0] sdram_dqs;
  input [1:0] pll_stat;
  input sys_clk, sys_clk_n, dqs_clk, dqs_clk_n, sys_rst, csr_we, fml_stb,
         fml_we, dqs_psdone;
  output fml_ack, sdram_cke, sdram_cs_n, sdram_we_n, sdram_cas_n, sdram_ras_n,
         dqs_psen, dqs_psincdec;
  wire   sdram_cke_r, sdram_cs_n_r, sdram_we_n_r, sdram_cas_n_r, sdram_ras_n_r,
         bypass, sdram_cs_n_bypass, sdram_cs_n_mgmt, sdram_we_n_bypass,
         sdram_we_n_mgmt, sdram_cas_n_bypass, sdram_cas_n_mgmt,
         sdram_ras_n_bypass, sdram_ras_n_mgmt, sdram_rst, tim_cas, mgmt_stb,
         mgmt_we, mgmt_ack, read, write, read_safe, write_safe, data_ack,
         direction_r, n_0_net__7_, n_0_net__6_, n_0_net__5_, n_0_net__4_,
         n_0_net__3_, n_0_net__2_, n_0_net__1_, n_0_net__0_, n1, n2, n3, n4;
  wire   [1:0] sdram_ba_r;
  wire   [12:0] sdram_adr_r;
  wire   [12:0] sdram_adr_bypass;
  wire   [12:0] sdram_adr_mgmt;
  wire   [1:0] sdram_ba_bypass;
  wire   [1:0] sdram_ba_mgmt;
  wire   [2:0] tim_rp;
  wire   [2:0] tim_rcd;
  wire   [10:0] tim_refi;
  wire   [3:0] tim_rfc;
  wire   [1:0] tim_wr;
  wire   [22:0] mgmt_address;
  wire   [3:0] concerned_bank;
  wire   [3:0] precharge_safe;

  hpdmc_ctlif_0 ctlif ( .sys_clk(n3), .sys_rst(sys_rst), .csr_a(csr_a), 
        .csr_we(csr_we), .csr_di(csr_di), .csr_do(csr_do), .bypass(bypass), 
        .sdram_rst(sdram_rst), .sdram_cke(sdram_cke_r), .sdram_cs_n(
        sdram_cs_n_bypass), .sdram_we_n(sdram_we_n_bypass), .sdram_cas_n(
        sdram_cas_n_bypass), .sdram_ras_n(sdram_ras_n_bypass), .sdram_adr(
        sdram_adr_bypass), .sdram_ba(sdram_ba_bypass), .tim_rp(tim_rp), 
        .tim_rcd(tim_rcd), .tim_cas(tim_cas), .tim_refi(tim_refi), .tim_rfc(
        tim_rfc), .tim_wr(tim_wr), .dqs_psen(dqs_psen), .dqs_psincdec(
        dqs_psincdec), .dqs_psdone(dqs_psdone), .pll_stat(pll_stat) );
  hpdmc_mgmt_sdram_depth26_sdram_columndepth9 mgmt ( .sys_clk(n2), .sdram_rst(
        sdram_rst), .tim_rp(tim_rp), .tim_rcd(tim_rcd), .tim_refi(tim_refi), 
        .tim_rfc(tim_rfc), .stb(mgmt_stb), .we(mgmt_we), .address(mgmt_address), .ack(mgmt_ack), .read(read), .write(write), .concerned_bank(concerned_bank), 
        .read_safe(read_safe), .write_safe(write_safe), .precharge_safe(
        precharge_safe), .sdram_cs_n(sdram_cs_n_mgmt), .sdram_we_n(
        sdram_we_n_mgmt), .sdram_cas_n(sdram_cas_n_mgmt), .sdram_ras_n(
        sdram_ras_n_mgmt), .sdram_adr(sdram_adr_mgmt), .sdram_ba(sdram_ba_mgmt) );
  hpdmc_busif_sdram_depth26 busif ( .sys_clk(n3), .sdram_rst(sdram_rst), 
        .fml_adr(fml_adr), .fml_stb(fml_stb), .fml_we(fml_we), .fml_ack(
        fml_ack), .mgmt_stb(mgmt_stb), .mgmt_we(mgmt_we), .mgmt_address(
        mgmt_address), .mgmt_ack(mgmt_ack), .data_ack(data_ack) );
  hpdmc_datactl datactl ( .sys_clk(n1), .sdram_rst(sdram_rst), .read(read), 
        .write(write), .concerned_bank(concerned_bank), .read_safe(read_safe), 
        .write_safe(write_safe), .precharge_safe(precharge_safe), .ack(
        data_ack), .direction_r(direction_r), .tim_cas(tim_cas), .tim_wr(
        tim_wr) );
  hpdmc_ddrio ddrio ( .sys_clk(sys_clk), .sys_clk_n(sys_clk_n), .dqs_clk(
        dqs_clk), .dqs_clk_n(dqs_clk_n), .direction_r(direction_r), .mo({
        n_0_net__7_, n_0_net__6_, n_0_net__5_, n_0_net__4_, n_0_net__3_, 
        n_0_net__2_, n_0_net__1_, n_0_net__0_}), .doo(fml_di), .di(fml_do), 
        .sdram_dm(sdram_dm), .sdram_dq(sdram_dq), .sdram_dqs(sdram_dqs) );
  INVD0BWP12T30P140 I_4 ( .I(fml_sel[4]), .ZN(n_0_net__4_) );
  INVD0BWP12T30P140 I_8 ( .I(fml_sel[0]), .ZN(n_0_net__0_) );
  INVD0BWP12T30P140 I_3 ( .I(fml_sel[5]), .ZN(n_0_net__5_) );
  INVD0BWP12T30P140 I_7 ( .I(fml_sel[1]), .ZN(n_0_net__1_) );
  INVD0BWP12T30P140 I_2 ( .I(fml_sel[6]), .ZN(n_0_net__6_) );
  INVD0BWP12T30P140 I_6 ( .I(fml_sel[2]), .ZN(n_0_net__2_) );
  INVD0BWP12T30P140 I_1 ( .I(fml_sel[7]), .ZN(n_0_net__7_) );
  INVD0BWP12T30P140 I_5 ( .I(fml_sel[3]), .ZN(n_0_net__3_) );
  DFQD2BWP12T30P140 sdram_cke_reg ( .D(sdram_cke_r), .CP(n3), .Q(sdram_cke) );
  DFQD2BWP12T30P140 sdram_cs_n_reg ( .D(sdram_cs_n_r), .CP(n3), .Q(sdram_cs_n)
         );
  DFQD2BWP12T30P140 sdram_we_n_reg ( .D(sdram_we_n_r), .CP(n3), .Q(sdram_we_n)
         );
  DFQD2BWP12T30P140 sdram_cas_n_reg ( .D(sdram_cas_n_r), .CP(n3), .Q(
        sdram_cas_n) );
  DFQD2BWP12T30P140 sdram_ras_n_reg ( .D(sdram_ras_n_r), .CP(n2), .Q(
        sdram_ras_n) );
  DFQD2BWP12T30P140 sdram_ba_reg_1_ ( .D(sdram_ba_r[1]), .CP(n3), .Q(
        sdram_ba[1]) );
  DFQD2BWP12T30P140 sdram_ba_reg_0_ ( .D(sdram_ba_r[0]), .CP(n2), .Q(
        sdram_ba[0]) );
  DFQD2BWP12T30P140 sdram_adr_reg_12_ ( .D(sdram_adr_r[12]), .CP(n2), .Q(
        sdram_adr[12]) );
  DFQD2BWP12T30P140 sdram_adr_reg_11_ ( .D(sdram_adr_r[11]), .CP(n3), .Q(
        sdram_adr[11]) );
  DFQD2BWP12T30P140 sdram_adr_reg_10_ ( .D(sdram_adr_r[10]), .CP(n2), .Q(
        sdram_adr[10]) );
  DFQD2BWP12T30P140 sdram_adr_reg_9_ ( .D(sdram_adr_r[9]), .CP(n2), .Q(
        sdram_adr[9]) );
  DFQD2BWP12T30P140 sdram_adr_reg_8_ ( .D(sdram_adr_r[8]), .CP(n2), .Q(
        sdram_adr[8]) );
  DFQD2BWP12T30P140 sdram_adr_reg_7_ ( .D(sdram_adr_r[7]), .CP(n2), .Q(
        sdram_adr[7]) );
  DFQD2BWP12T30P140 sdram_adr_reg_6_ ( .D(sdram_adr_r[6]), .CP(n3), .Q(
        sdram_adr[6]) );
  DFQD2BWP12T30P140 sdram_adr_reg_4_ ( .D(sdram_adr_r[4]), .CP(n2), .Q(
        sdram_adr[4]) );
  DFQD2BWP12T30P140 sdram_adr_reg_3_ ( .D(sdram_adr_r[3]), .CP(n2), .Q(
        sdram_adr[3]) );
  DFQD2BWP12T30P140 sdram_adr_reg_2_ ( .D(sdram_adr_r[2]), .CP(n2), .Q(
        sdram_adr[2]) );
  DFQD2BWP12T30P140 sdram_adr_reg_1_ ( .D(sdram_adr_r[1]), .CP(n3), .Q(
        sdram_adr[1]) );
  DFQD2BWP12T30P140 sdram_adr_reg_0_ ( .D(sdram_adr_r[0]), .CP(n3), .Q(
        sdram_adr[0]) );
  DFQD1BWP12T30P140 sdram_adr_reg_5_ ( .D(sdram_adr_r[5]), .CP(n2), .Q(
        sdram_adr[5]) );
  INVD0BWP12T30P140 U22 ( .I(sys_clk), .ZN(n4) );
  INVD0BWP12T30P140 U23 ( .I(n4), .ZN(n1) );
  INVD0BWP12T30P140 U24 ( .I(n4), .ZN(n2) );
  INVD0BWP12T30P140 U25 ( .I(n4), .ZN(n3) );
  CKMUX2D0BWP12T30P140 U26 ( .I0(sdram_adr_mgmt[0]), .I1(sdram_adr_bypass[0]), 
        .S(bypass), .Z(sdram_adr_r[0]) );
  CKMUX2D0BWP12T30P140 U27 ( .I0(sdram_adr_mgmt[1]), .I1(sdram_adr_bypass[1]), 
        .S(bypass), .Z(sdram_adr_r[1]) );
  CKMUX2D0BWP12T30P140 U28 ( .I0(sdram_adr_mgmt[2]), .I1(sdram_adr_bypass[2]), 
        .S(bypass), .Z(sdram_adr_r[2]) );
  CKMUX2D0BWP12T30P140 U29 ( .I0(sdram_adr_mgmt[3]), .I1(sdram_adr_bypass[3]), 
        .S(bypass), .Z(sdram_adr_r[3]) );
  CKMUX2D0BWP12T30P140 U30 ( .I0(sdram_adr_mgmt[4]), .I1(sdram_adr_bypass[4]), 
        .S(bypass), .Z(sdram_adr_r[4]) );
  CKMUX2D0BWP12T30P140 U31 ( .I0(sdram_adr_mgmt[5]), .I1(sdram_adr_bypass[5]), 
        .S(bypass), .Z(sdram_adr_r[5]) );
  CKMUX2D0BWP12T30P140 U32 ( .I0(sdram_adr_mgmt[6]), .I1(sdram_adr_bypass[6]), 
        .S(bypass), .Z(sdram_adr_r[6]) );
  CKMUX2D0BWP12T30P140 U33 ( .I0(sdram_adr_mgmt[7]), .I1(sdram_adr_bypass[7]), 
        .S(bypass), .Z(sdram_adr_r[7]) );
  CKMUX2D0BWP12T30P140 U34 ( .I0(sdram_adr_mgmt[8]), .I1(sdram_adr_bypass[8]), 
        .S(bypass), .Z(sdram_adr_r[8]) );
  CKMUX2D0BWP12T30P140 U35 ( .I0(sdram_adr_mgmt[9]), .I1(sdram_adr_bypass[9]), 
        .S(bypass), .Z(sdram_adr_r[9]) );
  CKMUX2D0BWP12T30P140 U36 ( .I0(sdram_adr_mgmt[10]), .I1(sdram_adr_bypass[10]), .S(bypass), .Z(sdram_adr_r[10]) );
  CKMUX2D0BWP12T30P140 U37 ( .I0(sdram_adr_mgmt[11]), .I1(sdram_adr_bypass[11]), .S(bypass), .Z(sdram_adr_r[11]) );
  CKMUX2D0BWP12T30P140 U38 ( .I0(sdram_adr_mgmt[12]), .I1(sdram_adr_bypass[12]), .S(bypass), .Z(sdram_adr_r[12]) );
  CKMUX2D0BWP12T30P140 U39 ( .I0(sdram_ba_mgmt[0]), .I1(sdram_ba_bypass[0]), 
        .S(bypass), .Z(sdram_ba_r[0]) );
  CKMUX2D0BWP12T30P140 U40 ( .I0(sdram_ba_mgmt[1]), .I1(sdram_ba_bypass[1]), 
        .S(bypass), .Z(sdram_ba_r[1]) );
  CKMUX2D0BWP12T30P140 U41 ( .I0(sdram_ras_n_mgmt), .I1(sdram_ras_n_bypass), 
        .S(bypass), .Z(sdram_ras_n_r) );
  CKMUX2D0BWP12T30P140 U42 ( .I0(sdram_cas_n_mgmt), .I1(sdram_cas_n_bypass), 
        .S(bypass), .Z(sdram_cas_n_r) );
  CKMUX2D0BWP12T30P140 U43 ( .I0(sdram_we_n_mgmt), .I1(sdram_we_n_bypass), .S(
        bypass), .Z(sdram_we_n_r) );
  CKMUX2D0BWP12T30P140 U44 ( .I0(sdram_cs_n_mgmt), .I1(sdram_cs_n_bypass), .S(
        bypass), .Z(sdram_cs_n_r) );
endmodule

