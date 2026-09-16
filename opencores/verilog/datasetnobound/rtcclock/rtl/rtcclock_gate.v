/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:38:16 2026
/////////////////////////////////////////////////////////////


module hexmap_3 ( i_clk, i_hex, o_map );
  input [3:0] i_hex;
  output [7:1] o_map;
  input i_clk;
  wire   n21, n22, n23, n24, n25, n26, n27, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  DFQD2BWP12T30P140 o_map_reg_7_ ( .D(n26), .CP(i_clk), .Q(o_map[7]) );
  DFQD2BWP12T30P140 o_map_reg_5_ ( .D(n27), .CP(i_clk), .Q(o_map[5]) );
  DFQD2BWP12T30P140 o_map_reg_4_ ( .D(n24), .CP(i_clk), .Q(o_map[4]) );
  DFQD2BWP12T30P140 o_map_reg_3_ ( .D(n23), .CP(i_clk), .Q(o_map[3]) );
  DFQD2BWP12T30P140 o_map_reg_2_ ( .D(n21), .CP(i_clk), .Q(o_map[2]) );
  DFQD2BWP12T30P140 o_map_reg_1_ ( .D(n22), .CP(i_clk), .Q(o_map[1]) );
  DFQD1BWP12T30P140 o_map_reg_6_ ( .D(n25), .CP(i_clk), .Q(o_map[6]) );
  INVD0BWP12T30P140 U3 ( .I(i_hex[1]), .ZN(n5) );
  NR2D0BWP12T30P140 U4 ( .A1(i_hex[2]), .A2(n5), .ZN(n15) );
  ND2D0BWP12T30P140 U5 ( .A1(i_hex[2]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U6 ( .A1(i_hex[3]), .A2(n9), .ZN(n17) );
  INVD0BWP12T30P140 U7 ( .I(i_hex[0]), .ZN(n7) );
  OAI21D0BWP12T30P140 U8 ( .A1(i_hex[3]), .A2(n9), .B(n7), .ZN(n11) );
  NR2D0BWP12T30P140 U9 ( .A1(i_hex[3]), .A2(n7), .ZN(n3) );
  OAI21D0BWP12T30P140 U10 ( .A1(i_hex[1]), .A2(i_hex[2]), .B(n3), .ZN(n1) );
  OAI211D0BWP12T30P140 U11 ( .A1(n15), .A2(n17), .B(n11), .C(n1), .ZN(n26) );
  INVD0BWP12T30P140 U12 ( .I(i_hex[3]), .ZN(n12) );
  OAI21D0BWP12T30P140 U13 ( .A1(i_hex[3]), .A2(i_hex[1]), .B(i_hex[2]), .ZN(n2) );
  AOI22D0BWP12T30P140 U14 ( .A1(n3), .A2(n9), .B1(n7), .B2(n2), .ZN(n4) );
  OAI31D0BWP12T30P140 U15 ( .A1(i_hex[1]), .A2(n12), .A3(n7), .B(n4), .ZN(n25)
         );
  OAI21D0BWP12T30P140 U16 ( .A1(n5), .A2(n12), .B(i_hex[0]), .ZN(n6) );
  IND2D1BWP12T30P140 U17 ( .A1(i_hex[2]), .B1(i_hex[3]), .ZN(n8) );
  OAI211D0BWP12T30P140 U18 ( .A1(i_hex[3]), .A2(n15), .B(n6), .C(n8), .ZN(n27)
         );
  INVD0BWP12T30P140 U19 ( .I(n9), .ZN(n13) );
  NR3D0BWP12T30P140 U20 ( .A1(n13), .A2(n15), .A3(n7), .ZN(n19) );
  AOI21D0BWP12T30P140 U21 ( .A1(n9), .A2(n8), .B(i_hex[0]), .ZN(n10) );
  OAI22D0BWP12T30P140 U22 ( .A1(i_hex[1]), .A2(n12), .B1(n19), .B2(n10), .ZN(
        n24) );
  NR2D0BWP12T30P140 U23 ( .A1(i_hex[1]), .A2(i_hex[2]), .ZN(n16) );
  OAI21D0BWP12T30P140 U24 ( .A1(n16), .A2(n12), .B(n11), .ZN(n23) );
  ND2D0BWP12T30P140 U25 ( .A1(n13), .A2(n12), .ZN(n14) );
  OAI211D0BWP12T30P140 U26 ( .A1(i_hex[0]), .A2(n15), .B(n14), .C(n17), .ZN(
        n21) );
  IAO21D0BWP12T30P140 U27 ( .A1(i_hex[3]), .A2(n16), .B(i_hex[0]), .ZN(n18) );
  OAI21D0BWP12T30P140 U28 ( .A1(n19), .A2(n18), .B(n17), .ZN(n22) );
endmodule


module hexmap_2 ( i_clk, i_hex, o_map );
  input [3:0] i_hex;
  output [7:1] o_map;
  input i_clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n27, n28, n29, n30, n31, n32;

  DFQD2BWP12T30P140 o_map_reg_7_ ( .D(n27), .CP(i_clk), .Q(o_map[7]) );
  DFQD2BWP12T30P140 o_map_reg_6_ ( .D(n28), .CP(i_clk), .Q(o_map[6]) );
  DFQD2BWP12T30P140 o_map_reg_5_ ( .D(n20), .CP(i_clk), .Q(o_map[5]) );
  DFQD2BWP12T30P140 o_map_reg_4_ ( .D(n29), .CP(i_clk), .Q(o_map[4]) );
  DFQD2BWP12T30P140 o_map_reg_3_ ( .D(n30), .CP(i_clk), .Q(o_map[3]) );
  DFQD2BWP12T30P140 o_map_reg_2_ ( .D(n32), .CP(i_clk), .Q(o_map[2]) );
  DFQD1BWP12T30P140 o_map_reg_1_ ( .D(n31), .CP(i_clk), .Q(o_map[1]) );
  INVD0BWP12T30P140 U3 ( .I(i_hex[1]), .ZN(n5) );
  NR2D0BWP12T30P140 U4 ( .A1(i_hex[2]), .A2(n5), .ZN(n15) );
  ND2D0BWP12T30P140 U5 ( .A1(i_hex[2]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U6 ( .A1(i_hex[3]), .A2(n9), .ZN(n17) );
  INVD0BWP12T30P140 U7 ( .I(i_hex[0]), .ZN(n7) );
  OAI21D0BWP12T30P140 U8 ( .A1(i_hex[3]), .A2(n9), .B(n7), .ZN(n11) );
  NR2D0BWP12T30P140 U9 ( .A1(i_hex[3]), .A2(n7), .ZN(n3) );
  OAI21D0BWP12T30P140 U10 ( .A1(i_hex[1]), .A2(i_hex[2]), .B(n3), .ZN(n1) );
  OAI211D0BWP12T30P140 U11 ( .A1(n15), .A2(n17), .B(n11), .C(n1), .ZN(n27) );
  INVD0BWP12T30P140 U12 ( .I(i_hex[3]), .ZN(n12) );
  OAI21D0BWP12T30P140 U13 ( .A1(i_hex[3]), .A2(i_hex[1]), .B(i_hex[2]), .ZN(n2) );
  AOI22D0BWP12T30P140 U14 ( .A1(n3), .A2(n9), .B1(n7), .B2(n2), .ZN(n4) );
  OAI31D0BWP12T30P140 U15 ( .A1(i_hex[1]), .A2(n12), .A3(n7), .B(n4), .ZN(n28)
         );
  OAI21D0BWP12T30P140 U16 ( .A1(n5), .A2(n12), .B(i_hex[0]), .ZN(n6) );
  IND2D1BWP12T30P140 U17 ( .A1(i_hex[2]), .B1(i_hex[3]), .ZN(n8) );
  OAI211D0BWP12T30P140 U18 ( .A1(i_hex[3]), .A2(n15), .B(n6), .C(n8), .ZN(n20)
         );
  INVD0BWP12T30P140 U19 ( .I(n9), .ZN(n13) );
  NR3D0BWP12T30P140 U20 ( .A1(n13), .A2(n15), .A3(n7), .ZN(n19) );
  AOI21D0BWP12T30P140 U21 ( .A1(n9), .A2(n8), .B(i_hex[0]), .ZN(n10) );
  OAI22D0BWP12T30P140 U22 ( .A1(i_hex[1]), .A2(n12), .B1(n19), .B2(n10), .ZN(
        n29) );
  NR2D0BWP12T30P140 U23 ( .A1(i_hex[1]), .A2(i_hex[2]), .ZN(n16) );
  OAI21D0BWP12T30P140 U24 ( .A1(n16), .A2(n12), .B(n11), .ZN(n30) );
  ND2D0BWP12T30P140 U25 ( .A1(n13), .A2(n12), .ZN(n14) );
  OAI211D0BWP12T30P140 U26 ( .A1(i_hex[0]), .A2(n15), .B(n14), .C(n17), .ZN(
        n32) );
  IAO21D0BWP12T30P140 U27 ( .A1(i_hex[3]), .A2(n16), .B(i_hex[0]), .ZN(n18) );
  OAI21D0BWP12T30P140 U28 ( .A1(n19), .A2(n18), .B(n17), .ZN(n31) );
endmodule


module hexmap_1 ( i_clk, i_hex, o_map );
  input [3:0] i_hex;
  output [7:1] o_map;
  input i_clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n27, n28, n29, n30, n31, n32;

  DFQD2BWP12T30P140 o_map_reg_7_ ( .D(n27), .CP(i_clk), .Q(o_map[7]) );
  DFQD2BWP12T30P140 o_map_reg_6_ ( .D(n28), .CP(i_clk), .Q(o_map[6]) );
  DFQD2BWP12T30P140 o_map_reg_4_ ( .D(n29), .CP(i_clk), .Q(o_map[4]) );
  DFQD2BWP12T30P140 o_map_reg_3_ ( .D(n30), .CP(i_clk), .Q(o_map[3]) );
  DFQD2BWP12T30P140 o_map_reg_2_ ( .D(n32), .CP(i_clk), .Q(o_map[2]) );
  DFQD2BWP12T30P140 o_map_reg_1_ ( .D(n31), .CP(i_clk), .Q(o_map[1]) );
  DFQD1BWP12T30P140 o_map_reg_5_ ( .D(n20), .CP(i_clk), .Q(o_map[5]) );
  INVD0BWP12T30P140 U3 ( .I(i_hex[1]), .ZN(n5) );
  NR2D0BWP12T30P140 U4 ( .A1(i_hex[2]), .A2(n5), .ZN(n15) );
  ND2D0BWP12T30P140 U5 ( .A1(i_hex[2]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U6 ( .A1(i_hex[3]), .A2(n9), .ZN(n17) );
  INVD0BWP12T30P140 U7 ( .I(i_hex[0]), .ZN(n7) );
  OAI21D0BWP12T30P140 U8 ( .A1(i_hex[3]), .A2(n9), .B(n7), .ZN(n11) );
  NR2D0BWP12T30P140 U9 ( .A1(i_hex[3]), .A2(n7), .ZN(n3) );
  OAI21D0BWP12T30P140 U10 ( .A1(i_hex[1]), .A2(i_hex[2]), .B(n3), .ZN(n1) );
  OAI211D0BWP12T30P140 U11 ( .A1(n15), .A2(n17), .B(n11), .C(n1), .ZN(n27) );
  INVD0BWP12T30P140 U12 ( .I(i_hex[3]), .ZN(n12) );
  OAI21D0BWP12T30P140 U13 ( .A1(i_hex[3]), .A2(i_hex[1]), .B(i_hex[2]), .ZN(n2) );
  AOI22D0BWP12T30P140 U14 ( .A1(n3), .A2(n9), .B1(n7), .B2(n2), .ZN(n4) );
  OAI31D0BWP12T30P140 U15 ( .A1(i_hex[1]), .A2(n12), .A3(n7), .B(n4), .ZN(n28)
         );
  OAI21D0BWP12T30P140 U16 ( .A1(n5), .A2(n12), .B(i_hex[0]), .ZN(n6) );
  IND2D1BWP12T30P140 U17 ( .A1(i_hex[2]), .B1(i_hex[3]), .ZN(n8) );
  OAI211D0BWP12T30P140 U18 ( .A1(i_hex[3]), .A2(n15), .B(n6), .C(n8), .ZN(n20)
         );
  INVD0BWP12T30P140 U19 ( .I(n9), .ZN(n13) );
  NR3D0BWP12T30P140 U20 ( .A1(n13), .A2(n15), .A3(n7), .ZN(n19) );
  AOI21D0BWP12T30P140 U21 ( .A1(n9), .A2(n8), .B(i_hex[0]), .ZN(n10) );
  OAI22D0BWP12T30P140 U22 ( .A1(i_hex[1]), .A2(n12), .B1(n19), .B2(n10), .ZN(
        n29) );
  NR2D0BWP12T30P140 U23 ( .A1(i_hex[1]), .A2(i_hex[2]), .ZN(n16) );
  OAI21D0BWP12T30P140 U24 ( .A1(n16), .A2(n12), .B(n11), .ZN(n30) );
  ND2D0BWP12T30P140 U25 ( .A1(n13), .A2(n12), .ZN(n14) );
  OAI211D0BWP12T30P140 U26 ( .A1(i_hex[0]), .A2(n15), .B(n14), .C(n17), .ZN(
        n32) );
  IAO21D0BWP12T30P140 U27 ( .A1(i_hex[3]), .A2(n16), .B(i_hex[0]), .ZN(n18) );
  OAI21D0BWP12T30P140 U28 ( .A1(n19), .A2(n18), .B(n17), .ZN(n31) );
endmodule


module hexmap_0 ( i_clk, i_hex, o_map );
  input [3:0] i_hex;
  output [7:1] o_map;
  input i_clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n27, n28, n29, n30, n31, n32;

  DFQD2BWP12T30P140 o_map_reg_7_ ( .D(n27), .CP(i_clk), .Q(o_map[7]) );
  DFQD2BWP12T30P140 o_map_reg_6_ ( .D(n28), .CP(i_clk), .Q(o_map[6]) );
  DFQD2BWP12T30P140 o_map_reg_5_ ( .D(n20), .CP(i_clk), .Q(o_map[5]) );
  DFQD2BWP12T30P140 o_map_reg_4_ ( .D(n29), .CP(i_clk), .Q(o_map[4]) );
  DFQD2BWP12T30P140 o_map_reg_3_ ( .D(n30), .CP(i_clk), .Q(o_map[3]) );
  DFQD2BWP12T30P140 o_map_reg_2_ ( .D(n32), .CP(i_clk), .Q(o_map[2]) );
  DFQD2BWP12T30P140 o_map_reg_1_ ( .D(n31), .CP(i_clk), .Q(o_map[1]) );
  INVD0BWP12T30P140 U3 ( .I(i_hex[1]), .ZN(n5) );
  NR2D0BWP12T30P140 U4 ( .A1(i_hex[2]), .A2(n5), .ZN(n15) );
  ND2D0BWP12T30P140 U5 ( .A1(i_hex[2]), .A2(n5), .ZN(n9) );
  ND2D0BWP12T30P140 U6 ( .A1(i_hex[3]), .A2(n9), .ZN(n17) );
  INVD0BWP12T30P140 U7 ( .I(i_hex[0]), .ZN(n7) );
  OAI21D0BWP12T30P140 U8 ( .A1(i_hex[3]), .A2(n9), .B(n7), .ZN(n11) );
  NR2D0BWP12T30P140 U9 ( .A1(i_hex[3]), .A2(n7), .ZN(n3) );
  OAI21D0BWP12T30P140 U10 ( .A1(i_hex[1]), .A2(i_hex[2]), .B(n3), .ZN(n1) );
  OAI211D0BWP12T30P140 U11 ( .A1(n15), .A2(n17), .B(n11), .C(n1), .ZN(n27) );
  INVD0BWP12T30P140 U12 ( .I(i_hex[3]), .ZN(n12) );
  OAI21D0BWP12T30P140 U13 ( .A1(i_hex[3]), .A2(i_hex[1]), .B(i_hex[2]), .ZN(n2) );
  AOI22D0BWP12T30P140 U14 ( .A1(n3), .A2(n9), .B1(n7), .B2(n2), .ZN(n4) );
  OAI31D0BWP12T30P140 U15 ( .A1(i_hex[1]), .A2(n12), .A3(n7), .B(n4), .ZN(n28)
         );
  OAI21D0BWP12T30P140 U16 ( .A1(n5), .A2(n12), .B(i_hex[0]), .ZN(n6) );
  IND2D1BWP12T30P140 U17 ( .A1(i_hex[2]), .B1(i_hex[3]), .ZN(n8) );
  OAI211D0BWP12T30P140 U18 ( .A1(i_hex[3]), .A2(n15), .B(n6), .C(n8), .ZN(n20)
         );
  INVD0BWP12T30P140 U19 ( .I(n9), .ZN(n13) );
  NR3D0BWP12T30P140 U20 ( .A1(n13), .A2(n15), .A3(n7), .ZN(n19) );
  AOI21D0BWP12T30P140 U21 ( .A1(n9), .A2(n8), .B(i_hex[0]), .ZN(n10) );
  OAI22D0BWP12T30P140 U22 ( .A1(i_hex[1]), .A2(n12), .B1(n19), .B2(n10), .ZN(
        n29) );
  NR2D0BWP12T30P140 U23 ( .A1(i_hex[1]), .A2(i_hex[2]), .ZN(n16) );
  OAI21D0BWP12T30P140 U24 ( .A1(n16), .A2(n12), .B(n11), .ZN(n30) );
  ND2D0BWP12T30P140 U25 ( .A1(n13), .A2(n12), .ZN(n14) );
  OAI211D0BWP12T30P140 U26 ( .A1(i_hex[0]), .A2(n15), .B(n14), .C(n17), .ZN(
        n32) );
  IAO21D0BWP12T30P140 U27 ( .A1(i_hex[3]), .A2(n16), .B(i_hex[0]), .ZN(n18) );
  OAI21D0BWP12T30P140 U28 ( .A1(n19), .A2(n18), .B(n17), .ZN(n31) );
endmodule


module rtcclock ( i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, 
        o_data, o_sseg, o_led, o_interrupt, o_ppd, i_hack );
  input [2:0] i_wb_addr;
  input [31:0] i_wb_data;
  output [31:0] o_data;
  output [31:0] o_sseg;
  output [15:0] o_led;
  input i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_hack;
  output o_interrupt, o_ppd;
  wire   N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107,
         N108, ck_carry, ck_prepps, ck_ppm, ck_pph, ck_ppd, N263, N264, N291,
         tm_pps, tm_int, N373, sw_pps, sw_ppm, sw_pph, N613, N614, N615, N616,
         N617, N618, N619, N659, N660, N661, al_tripped, al_int, al_enabled,
         N675, r_hack_carry, w_sseg_31, w_sseg_30, w_sseg_29, w_sseg_28,
         w_sseg_27, w_sseg_26, w_sseg_25, w_sseg_7, w_sseg_6, w_sseg_5,
         w_sseg_4, w_sseg_3, w_sseg_2, w_sseg_1, N743, N744, N745, N746, N747,
         N748, N749, N750, N751, N752, N753, N754, N755, N756, N757, N758,
         N759, N760, N761, N762, N763, N764, N765, N766, N767, N768, N769,
         N770, N771, N772, N773, N839, N840, N841, N842, N843, N844, N845,
         N846, N847, N848, N849, N850, N851, N852, N853, N854, N855, N856,
         N857, N858, N859, N860, N861, N862, N863, N864, N865, N866, N867,
         N868, N869, N870, N877, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942,
         n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953,
         n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964,
         n965, n966, n967, n968, n969, n970, n971, n972, n973, n974, n975,
         n976, n977, n978, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147,
         n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157,
         n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167,
         n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177,
         n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187,
         n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197,
         n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207,
         n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217,
         n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227,
         n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237,
         n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247,
         n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257,
         n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267,
         n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277,
         n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287,
         n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297,
         n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307,
         n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317,
         n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327,
         n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337,
         n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347,
         n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357,
         n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367,
         n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377,
         n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387,
         n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397,
         n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407,
         n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417,
         n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427,
         n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437,
         n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447,
         n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457,
         n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467,
         n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477,
         n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487,
         n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497,
         n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507,
         n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517,
         n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527,
         n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537,
         n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547,
         n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557,
         n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567,
         n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577,
         n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587,
         n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597,
         n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607,
         n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617,
         n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627,
         n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637,
         n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647,
         n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657,
         n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667,
         n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677,
         n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687,
         n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697,
         n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707,
         n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717,
         n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727,
         n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737,
         n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747,
         n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757,
         n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767,
         n1768, n1769, n1770, n1771, n1772, n1773, n1782, n1783, n1784, n1785,
         n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795,
         n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803;
  wire   [39:0] ck_counter;
  wire   [31:0] ckspeed;
  wire   [7:0] ck_sub;
  wire   [25:0] clock;
  wire   [21:0] ck_last_clock;
  wire   [25:0] timer;
  wire   [7:0] tm_sub;
  wire   [23:0] tm_start;
  wire   [31:0] stopwatch;
  wire   [7:0] sw_sub;
  wire   [21:0] alarm_time;
  wire   [29:0] hack_time;
  wire   [39:0] hack_counter;
  wire   [15:0] h_sseg;
  wire   [3:1] dmask;
  wire   [23:9] w_sseg;
  wire   [17:0] ledreg;

  hexmap_3 ha ( .i_clk(n1803), .i_hex(h_sseg[3:0]), .o_map({w_sseg_7, w_sseg_6, 
        w_sseg_5, w_sseg_4, w_sseg_3, w_sseg_2, w_sseg_1}) );
  hexmap_2 hb ( .i_clk(n1782), .i_hex(h_sseg[7:4]), .o_map(w_sseg[15:9]) );
  hexmap_1 hc ( .i_clk(n1782), .i_hex(h_sseg[11:8]), .o_map(w_sseg[23:17]) );
  hexmap_0 hd ( .i_clk(n1803), .i_hex(h_sseg[15:12]), .o_map({w_sseg_31, 
        w_sseg_30, w_sseg_29, w_sseg_28, w_sseg_27, w_sseg_26, w_sseg_25}) );
  DFQD2BWP12T30P140 ck_counter_reg_39_ ( .D(N107), .CP(n1802), .Q(
        ck_counter[39]) );
  DFQD2BWP12T30P140 ck_counter_reg_37_ ( .D(N105), .CP(n1802), .Q(
        ck_counter[37]) );
  DFQD2BWP12T30P140 ck_counter_reg_35_ ( .D(N103), .CP(n1802), .Q(
        ck_counter[35]) );
  DFQD2BWP12T30P140 ck_counter_reg_38_ ( .D(N106), .CP(n1802), .Q(
        ck_counter[38]) );
  DFQD2BWP12T30P140 ck_counter_reg_36_ ( .D(N104), .CP(n1802), .Q(
        ck_counter[36]) );
  DFQD2BWP12T30P140 ck_counter_reg_34_ ( .D(N102), .CP(n1802), .Q(
        ck_counter[34]) );
  DFQD2BWP12T30P140 o_sseg_reg_24_ ( .D(n683), .CP(n1782), .Q(o_sseg[24]) );
  DFQD2BWP12T30P140 o_sseg_reg_31_ ( .D(N773), .CP(n1790), .Q(o_sseg[31]) );
  DFQD2BWP12T30P140 o_sseg_reg_30_ ( .D(N772), .CP(n1790), .Q(o_sseg[30]) );
  DFQD2BWP12T30P140 o_sseg_reg_29_ ( .D(N771), .CP(n1790), .Q(o_sseg[29]) );
  DFQD2BWP12T30P140 o_sseg_reg_28_ ( .D(N770), .CP(n1790), .Q(o_sseg[28]) );
  DFQD2BWP12T30P140 o_sseg_reg_27_ ( .D(N769), .CP(n1789), .Q(o_sseg[27]) );
  DFQD2BWP12T30P140 o_sseg_reg_26_ ( .D(N768), .CP(n1789), .Q(o_sseg[26]) );
  DFQD2BWP12T30P140 o_sseg_reg_25_ ( .D(N767), .CP(n1789), .Q(o_sseg[25]) );
  DFQD2BWP12T30P140 o_sseg_reg_22_ ( .D(N765), .CP(n1789), .Q(o_sseg[22]) );
  DFQD2BWP12T30P140 o_sseg_reg_21_ ( .D(N764), .CP(n1789), .Q(o_sseg[21]) );
  DFQD2BWP12T30P140 o_sseg_reg_20_ ( .D(N763), .CP(n1789), .Q(o_sseg[20]) );
  DFQD2BWP12T30P140 o_sseg_reg_19_ ( .D(N762), .CP(n1789), .Q(o_sseg[19]) );
  DFQD2BWP12T30P140 o_sseg_reg_18_ ( .D(N761), .CP(n1789), .Q(o_sseg[18]) );
  DFQD2BWP12T30P140 o_sseg_reg_17_ ( .D(N760), .CP(n1789), .Q(o_sseg[17]) );
  DFQD2BWP12T30P140 o_sseg_reg_16_ ( .D(N759), .CP(n1789), .Q(o_sseg[16]) );
  DFQD2BWP12T30P140 o_sseg_reg_15_ ( .D(N758), .CP(n1789), .Q(o_sseg[15]) );
  DFQD2BWP12T30P140 o_sseg_reg_14_ ( .D(N757), .CP(n1789), .Q(o_sseg[14]) );
  DFQD2BWP12T30P140 o_sseg_reg_13_ ( .D(N756), .CP(n1789), .Q(o_sseg[13]) );
  DFQD2BWP12T30P140 o_sseg_reg_12_ ( .D(N755), .CP(n1789), .Q(o_sseg[12]) );
  DFQD2BWP12T30P140 o_sseg_reg_11_ ( .D(N754), .CP(n1789), .Q(o_sseg[11]) );
  DFQD2BWP12T30P140 o_sseg_reg_10_ ( .D(N753), .CP(n1789), .Q(o_sseg[10]) );
  DFQD2BWP12T30P140 o_sseg_reg_9_ ( .D(N752), .CP(n1789), .Q(o_sseg[9]) );
  DFQD2BWP12T30P140 o_sseg_reg_7_ ( .D(N750), .CP(n1789), .Q(o_sseg[7]) );
  DFQD2BWP12T30P140 o_sseg_reg_6_ ( .D(N749), .CP(n1788), .Q(o_sseg[6]) );
  DFQD2BWP12T30P140 o_sseg_reg_5_ ( .D(N748), .CP(n1788), .Q(o_sseg[5]) );
  DFQD2BWP12T30P140 o_sseg_reg_4_ ( .D(N747), .CP(n1788), .Q(o_sseg[4]) );
  DFQD2BWP12T30P140 o_sseg_reg_3_ ( .D(N746), .CP(n1788), .Q(o_sseg[3]) );
  DFQD2BWP12T30P140 o_sseg_reg_2_ ( .D(N745), .CP(n1788), .Q(o_sseg[2]) );
  DFQD2BWP12T30P140 o_sseg_reg_1_ ( .D(N744), .CP(n1788), .Q(o_sseg[1]) );
  DFQD2BWP12T30P140 o_sseg_reg_0_ ( .D(N743), .CP(n1788), .Q(o_sseg[0]) );
  DFQD2BWP12T30P140 o_data_reg_31_ ( .D(N870), .CP(n1787), .Q(o_data[31]) );
  DFQD2BWP12T30P140 o_data_reg_30_ ( .D(N869), .CP(n1787), .Q(o_data[30]) );
  DFQD2BWP12T30P140 o_data_reg_29_ ( .D(N868), .CP(n1787), .Q(o_data[29]) );
  DFQD2BWP12T30P140 o_data_reg_28_ ( .D(N867), .CP(n1787), .Q(o_data[28]) );
  DFQD2BWP12T30P140 o_data_reg_27_ ( .D(N866), .CP(n1787), .Q(o_data[27]) );
  DFQD2BWP12T30P140 o_data_reg_26_ ( .D(N865), .CP(n1787), .Q(o_data[26]) );
  DFQD2BWP12T30P140 o_data_reg_24_ ( .D(N863), .CP(n1787), .Q(o_data[24]) );
  DFQD2BWP12T30P140 o_data_reg_23_ ( .D(N862), .CP(n1787), .Q(o_data[23]) );
  DFQD2BWP12T30P140 o_data_reg_22_ ( .D(N861), .CP(n1787), .Q(o_data[22]) );
  DFQD2BWP12T30P140 o_data_reg_21_ ( .D(N860), .CP(n1787), .Q(o_data[21]) );
  DFQD2BWP12T30P140 o_data_reg_20_ ( .D(N859), .CP(n1787), .Q(o_data[20]) );
  DFQD2BWP12T30P140 o_data_reg_19_ ( .D(N858), .CP(n1787), .Q(o_data[19]) );
  DFQD2BWP12T30P140 o_data_reg_18_ ( .D(N857), .CP(n1787), .Q(o_data[18]) );
  DFQD2BWP12T30P140 o_data_reg_17_ ( .D(N856), .CP(n1787), .Q(o_data[17]) );
  DFQD2BWP12T30P140 o_data_reg_16_ ( .D(N855), .CP(n1786), .Q(o_data[16]) );
  DFQD2BWP12T30P140 o_data_reg_15_ ( .D(N854), .CP(n1786), .Q(o_data[15]) );
  DFQD2BWP12T30P140 o_data_reg_14_ ( .D(N853), .CP(n1786), .Q(o_data[14]) );
  DFQD2BWP12T30P140 o_data_reg_13_ ( .D(N852), .CP(n1786), .Q(o_data[13]) );
  DFQD2BWP12T30P140 o_data_reg_12_ ( .D(N851), .CP(n1786), .Q(o_data[12]) );
  DFQD2BWP12T30P140 o_data_reg_11_ ( .D(N850), .CP(n1786), .Q(o_data[11]) );
  DFQD2BWP12T30P140 o_data_reg_9_ ( .D(N848), .CP(n1786), .Q(o_data[9]) );
  DFQD2BWP12T30P140 o_data_reg_8_ ( .D(N847), .CP(n1786), .Q(o_data[8]) );
  DFQD2BWP12T30P140 o_data_reg_7_ ( .D(N846), .CP(n1786), .Q(o_data[7]) );
  DFQD2BWP12T30P140 o_data_reg_6_ ( .D(N845), .CP(n1786), .Q(o_data[6]) );
  DFQD2BWP12T30P140 o_data_reg_5_ ( .D(N844), .CP(n1786), .Q(o_data[5]) );
  DFQD2BWP12T30P140 o_data_reg_4_ ( .D(N843), .CP(n1786), .Q(o_data[4]) );
  DFQD2BWP12T30P140 o_data_reg_3_ ( .D(N842), .CP(n1786), .Q(o_data[3]) );
  DFQD2BWP12T30P140 o_data_reg_2_ ( .D(N841), .CP(n1786), .Q(o_data[2]) );
  DFQD2BWP12T30P140 o_data_reg_1_ ( .D(N840), .CP(n1786), .Q(o_data[1]) );
  DFQD2BWP12T30P140 o_data_reg_0_ ( .D(N839), .CP(n1786), .Q(o_data[0]) );
  DFQD2BWP12T30P140 hack_time_reg_1_ ( .D(n685), .CP(n1782), .Q(hack_time[1])
         );
  DFQD2BWP12T30P140 hack_time_reg_3_ ( .D(n687), .CP(n1782), .Q(hack_time[3])
         );
  DFQD2BWP12T30P140 hack_time_reg_2_ ( .D(n686), .CP(n1803), .Q(hack_time[2])
         );
  DFQD2BWP12T30P140 hack_time_reg_0_ ( .D(n684), .CP(n1803), .Q(hack_time[0])
         );
  DFQD2BWP12T30P140 tm_int_reg ( .D(N373), .CP(n1797), .Q(tm_int) );
  DFQD2BWP12T30P140 dmask_reg_3_ ( .D(n954), .CP(n1790), .Q(dmask[3]) );
  DFQD2BWP12T30P140 dmask_reg_1_ ( .D(n972), .CP(n1790), .Q(dmask[1]) );
  DFQD2BWP12T30P140 ck_prepps_reg ( .D(N877), .CP(n1799), .Q(ck_prepps) );
  DFQD2BWP12T30P140 ck_ppm_reg ( .D(N263), .CP(n1799), .Q(ck_ppm) );
  DFQD2BWP12T30P140 ck_pph_reg ( .D(N264), .CP(n1798), .Q(ck_pph) );
  DFQD2BWP12T30P140 r_hack_carry_reg ( .D(n810), .CP(n1791), .Q(r_hack_carry)
         );
  DFQD2BWP12T30P140 stopwatch_reg_1_ ( .D(N613), .CP(n1794), .Q(stopwatch[1])
         );
  DFQD2BWP12T30P140 stopwatch_reg_2_ ( .D(N614), .CP(n1794), .Q(stopwatch[2])
         );
  DFQD2BWP12T30P140 stopwatch_reg_3_ ( .D(N615), .CP(n1794), .Q(stopwatch[3])
         );
  DFQD2BWP12T30P140 ck_counter_reg_33_ ( .D(N101), .CP(n1801), .Q(
        ck_counter[33]) );
  DFQD2BWP12T30P140 ck_counter_reg_0_ ( .D(N68), .CP(n1800), .Q(ck_counter[0])
         );
  DFQD2BWP12T30P140 ck_sub_reg_3_ ( .D(n926), .CP(n1800), .Q(ck_sub[3]) );
  DFQD2BWP12T30P140 sw_sub_reg_6_ ( .D(n894), .CP(n1793), .Q(sw_sub[6]) );
  DFQD2BWP12T30P140 ledreg_reg_12_ ( .D(n797), .CP(n1788), .Q(ledreg[12]) );
  DFQD2BWP12T30P140 ledreg_reg_10_ ( .D(n799), .CP(n1788), .Q(ledreg[10]) );
  DFQD2BWP12T30P140 ledreg_reg_8_ ( .D(n801), .CP(n1788), .Q(ledreg[8]) );
  DFQD2BWP12T30P140 ledreg_reg_6_ ( .D(n803), .CP(n1788), .Q(ledreg[6]) );
  DFQD2BWP12T30P140 ledreg_reg_2_ ( .D(n807), .CP(n1787), .Q(ledreg[2]) );
  DFQD2BWP12T30P140 al_int_reg ( .D(N675), .CP(n1791), .Q(al_int) );
  DFQD2BWP12T30P140 ck_ppd_reg ( .D(n973), .CP(n1798), .Q(ck_ppd) );
  DFQD2BWP12T30P140 tm_pps_reg ( .D(N291), .CP(n1797), .Q(tm_pps) );
  DFQD2BWP12T30P140 tm_start_reg_0_ ( .D(n868), .CP(n1796), .Q(tm_start[0]) );
  DFQD2BWP12T30P140 tm_start_reg_4_ ( .D(n864), .CP(n1796), .Q(tm_start[4]) );
  DFQD2BWP12T30P140 tm_start_reg_20_ ( .D(n848), .CP(n1794), .Q(tm_start[20])
         );
  DFQD2BWP12T30P140 dmask_reg_2_ ( .D(n971), .CP(n1790), .Q(dmask[2]) );
  DFQD2BWP12T30P140 tm_start_reg_9_ ( .D(n859), .CP(n1795), .Q(tm_start[9]) );
  DFQD2BWP12T30P140 tm_start_reg_3_ ( .D(n865), .CP(n1796), .Q(tm_start[3]) );
  DFQD2BWP12T30P140 tm_start_reg_11_ ( .D(n857), .CP(n1795), .Q(tm_start[11])
         );
  DFQD2BWP12T30P140 tm_start_reg_19_ ( .D(n849), .CP(n1794), .Q(tm_start[19])
         );
  DFQD2BWP12T30P140 tm_start_reg_22_ ( .D(n846), .CP(n1794), .Q(tm_start[22])
         );
  DFQD2BWP12T30P140 tm_start_reg_23_ ( .D(n845), .CP(n1794), .Q(tm_start[23])
         );
  DFQD2BWP12T30P140 stopwatch_reg_28_ ( .D(n872), .CP(n1792), .Q(stopwatch[28]) );
  DFQD2BWP12T30P140 tm_start_reg_5_ ( .D(n863), .CP(n1796), .Q(tm_start[5]) );
  DFQD2BWP12T30P140 tm_start_reg_15_ ( .D(n853), .CP(n1795), .Q(tm_start[15])
         );
  DFQD2BWP12T30P140 tm_start_reg_17_ ( .D(n851), .CP(n1795), .Q(tm_start[17])
         );
  DFQD2BWP12T30P140 tm_start_reg_2_ ( .D(n866), .CP(n1796), .Q(tm_start[2]) );
  DFQD2BWP12T30P140 hack_counter_reg_0_ ( .D(n714), .CP(n1666), .Q(
        hack_counter[0]) );
  DFQD2BWP12T30P140 stopwatch_reg_29_ ( .D(n871), .CP(n1792), .Q(stopwatch[29]) );
  DFQD2BWP12T30P140 tm_start_reg_6_ ( .D(n862), .CP(n1796), .Q(tm_start[6]) );
  DFQD2BWP12T30P140 tm_start_reg_21_ ( .D(n847), .CP(n1796), .Q(tm_start[21])
         );
  DFQD2BWP12T30P140 tm_start_reg_12_ ( .D(n856), .CP(n1795), .Q(tm_start[12])
         );
  DFQD2BWP12T30P140 tm_start_reg_18_ ( .D(n850), .CP(n1795), .Q(tm_start[18])
         );
  DFQD2BWP12T30P140 ckspeed_reg_0_ ( .D(n754), .CP(n1784), .Q(ckspeed[0]) );
  DFQD2BWP12T30P140 hack_time_reg_6_ ( .D(n690), .CP(n1802), .Q(hack_time[6])
         );
  DFQD2BWP12T30P140 hack_counter_reg_37_ ( .D(n751), .CP(n1784), .Q(
        hack_counter[37]) );
  DFQD2BWP12T30P140 hack_counter_reg_35_ ( .D(n749), .CP(n1784), .Q(
        hack_counter[35]) );
  DFQD2BWP12T30P140 tm_start_reg_1_ ( .D(n867), .CP(n1796), .Q(tm_start[1]) );
  DFQD2BWP12T30P140 tm_start_reg_7_ ( .D(n861), .CP(n1796), .Q(tm_start[7]) );
  DFQD2BWP12T30P140 tm_start_reg_8_ ( .D(n860), .CP(n1795), .Q(tm_start[8]) );
  DFQD2BWP12T30P140 tm_start_reg_10_ ( .D(n858), .CP(n1795), .Q(tm_start[10])
         );
  DFQD2BWP12T30P140 tm_start_reg_13_ ( .D(n855), .CP(n1795), .Q(tm_start[13])
         );
  DFQD2BWP12T30P140 clock_reg_23_ ( .D(n789), .CP(n1786), .Q(clock[23]) );
  DFQD2BWP12T30P140 clock_reg_22_ ( .D(n788), .CP(n1785), .Q(clock[22]) );
  DFQD2BWP12T30P140 hack_counter_reg_39_ ( .D(n753), .CP(n1784), .Q(
        hack_counter[39]) );
  DFQD2BWP12T30P140 hack_counter_reg_33_ ( .D(n747), .CP(n1783), .Q(
        hack_counter[33]) );
  DFQD2BWP12T30P140 sw_sub_reg_4_ ( .D(n896), .CP(n1794), .Q(sw_sub[4]) );
  DFQD2BWP12T30P140 sw_sub_reg_7_ ( .D(n893), .CP(n1793), .Q(sw_sub[7]) );
  DFQD2BWP12T30P140 ledreg_reg_17_ ( .D(n792), .CP(n1788), .Q(ledreg[17]) );
  DFQD2BWP12T30P140 ledreg_reg_16_ ( .D(n793), .CP(n1788), .Q(ledreg[16]) );
  DFQD2BWP12T30P140 hack_counter_reg_8_ ( .D(n722), .CP(n1802), .Q(
        hack_counter[8]) );
  DFQD2BWP12T30P140 ledreg_reg_4_ ( .D(n805), .CP(n1787), .Q(ledreg[4]) );
  DFQD2BWP12T30P140 timer_reg_18_ ( .D(n818), .CP(n1794), .Q(timer[18]) );
  DFQD2BWP12T30P140 stopwatch_reg_4_ ( .D(N616), .CP(n1794), .Q(stopwatch[4])
         );
  DFQD2BWP12T30P140 stopwatch_reg_5_ ( .D(N617), .CP(n1793), .Q(stopwatch[5])
         );
  DFQD2BWP12T30P140 stopwatch_reg_6_ ( .D(N618), .CP(n1793), .Q(stopwatch[6])
         );
  DFQD2BWP12T30P140 stopwatch_reg_7_ ( .D(N619), .CP(n1793), .Q(stopwatch[7])
         );
  DFQD2BWP12T30P140 hack_counter_reg_36_ ( .D(n750), .CP(n1784), .Q(
        hack_counter[36]) );
  DFQD2BWP12T30P140 hack_counter_reg_34_ ( .D(n748), .CP(n1783), .Q(
        hack_counter[34]) );
  DFQD2BWP12T30P140 alarm_time_reg_13_ ( .D(n945), .CP(n1791), .Q(
        alarm_time[13]) );
  DFQD2BWP12T30P140 alarm_time_reg_6_ ( .D(n938), .CP(n1791), .Q(alarm_time[6]) );
  DFQD2BWP12T30P140 hack_counter_reg_38_ ( .D(n752), .CP(n1784), .Q(
        hack_counter[38]) );
  DFQD2BWP12T30P140 hack_counter_reg_32_ ( .D(n746), .CP(n1783), .Q(
        hack_counter[32]) );
  DFQD2BWP12T30P140 hack_time_reg_29_ ( .D(n713), .CP(n1802), .Q(hack_time[29]) );
  DFQD2BWP12T30P140 hack_time_reg_28_ ( .D(n712), .CP(n1667), .Q(hack_time[28]) );
  DFQD2BWP12T30P140 hack_time_reg_27_ ( .D(n711), .CP(n1666), .Q(hack_time[27]) );
  DFQD2BWP12T30P140 hack_time_reg_26_ ( .D(n710), .CP(n1802), .Q(hack_time[26]) );
  DFQD2BWP12T30P140 hack_time_reg_25_ ( .D(n709), .CP(n1782), .Q(hack_time[25]) );
  DFQD2BWP12T30P140 hack_time_reg_24_ ( .D(n708), .CP(n1666), .Q(hack_time[24]) );
  DFQD2BWP12T30P140 hack_time_reg_23_ ( .D(n707), .CP(n1667), .Q(hack_time[23]) );
  DFQD2BWP12T30P140 hack_time_reg_22_ ( .D(n706), .CP(n1802), .Q(hack_time[22]) );
  DFQD2BWP12T30P140 hack_time_reg_21_ ( .D(n705), .CP(n1802), .Q(hack_time[21]) );
  DFQD2BWP12T30P140 hack_time_reg_20_ ( .D(n704), .CP(n1666), .Q(hack_time[20]) );
  DFQD2BWP12T30P140 hack_time_reg_19_ ( .D(n703), .CP(n1667), .Q(hack_time[19]) );
  DFQD2BWP12T30P140 hack_time_reg_17_ ( .D(n701), .CP(n1802), .Q(hack_time[17]) );
  DFQD2BWP12T30P140 hack_time_reg_16_ ( .D(n700), .CP(n1666), .Q(hack_time[16]) );
  DFQD2BWP12T30P140 hack_time_reg_15_ ( .D(n699), .CP(n1667), .Q(hack_time[15]) );
  DFQD2BWP12T30P140 hack_time_reg_14_ ( .D(n698), .CP(n1667), .Q(hack_time[14]) );
  DFQD2BWP12T30P140 hack_time_reg_13_ ( .D(n697), .CP(n1802), .Q(hack_time[13]) );
  DFQD2BWP12T30P140 hack_time_reg_12_ ( .D(n696), .CP(n1666), .Q(hack_time[12]) );
  DFQD2BWP12T30P140 hack_time_reg_11_ ( .D(n695), .CP(n1667), .Q(hack_time[11]) );
  DFQD2BWP12T30P140 hack_time_reg_10_ ( .D(n694), .CP(n1802), .Q(hack_time[10]) );
  DFQD2BWP12T30P140 hack_time_reg_9_ ( .D(n693), .CP(n1802), .Q(hack_time[9])
         );
  DFQD2BWP12T30P140 hack_time_reg_8_ ( .D(n692), .CP(n1667), .Q(hack_time[8])
         );
  DFQD2BWP12T30P140 hack_time_reg_7_ ( .D(n691), .CP(n1666), .Q(hack_time[7])
         );
  DFQD2BWP12T30P140 hack_time_reg_5_ ( .D(n689), .CP(n1667), .Q(hack_time[5])
         );
  DFQD2BWP12T30P140 hack_counter_reg_29_ ( .D(n743), .CP(n1783), .Q(
        hack_counter[29]) );
  DFQD2BWP12T30P140 hack_counter_reg_28_ ( .D(n742), .CP(n1783), .Q(
        hack_counter[28]) );
  DFQD2BWP12T30P140 hack_counter_reg_26_ ( .D(n740), .CP(n1783), .Q(
        hack_counter[26]) );
  DFQD2BWP12T30P140 hack_counter_reg_25_ ( .D(n739), .CP(n1783), .Q(
        hack_counter[25]) );
  DFQD2BWP12T30P140 hack_counter_reg_24_ ( .D(n738), .CP(n1783), .Q(
        hack_counter[24]) );
  DFQD2BWP12T30P140 hack_counter_reg_23_ ( .D(n737), .CP(n1783), .Q(
        hack_counter[23]) );
  DFQD2BWP12T30P140 hack_counter_reg_22_ ( .D(n736), .CP(n1783), .Q(
        hack_counter[22]) );
  DFQD2BWP12T30P140 hack_counter_reg_21_ ( .D(n735), .CP(n1783), .Q(
        hack_counter[21]) );
  DFQD2BWP12T30P140 hack_counter_reg_20_ ( .D(n734), .CP(n1783), .Q(
        hack_counter[20]) );
  DFQD2BWP12T30P140 hack_counter_reg_19_ ( .D(n733), .CP(n1783), .Q(
        hack_counter[19]) );
  DFQD2BWP12T30P140 hack_counter_reg_18_ ( .D(n732), .CP(n1783), .Q(
        hack_counter[18]) );
  DFQD2BWP12T30P140 hack_counter_reg_17_ ( .D(n731), .CP(n1783), .Q(
        hack_counter[17]) );
  DFQD2BWP12T30P140 hack_counter_reg_16_ ( .D(n730), .CP(n1783), .Q(
        hack_counter[16]) );
  DFQD2BWP12T30P140 hack_counter_reg_15_ ( .D(n729), .CP(n1783), .Q(
        hack_counter[15]) );
  DFQD2BWP12T30P140 hack_counter_reg_14_ ( .D(n728), .CP(n1667), .Q(
        hack_counter[14]) );
  DFQD2BWP12T30P140 hack_counter_reg_13_ ( .D(n727), .CP(n1666), .Q(
        hack_counter[13]) );
  DFQD2BWP12T30P140 hack_counter_reg_11_ ( .D(n725), .CP(n1667), .Q(
        hack_counter[11]) );
  DFQD2BWP12T30P140 hack_counter_reg_10_ ( .D(n724), .CP(n1666), .Q(
        hack_counter[10]) );
  DFQD2BWP12T30P140 hack_counter_reg_9_ ( .D(n723), .CP(n1667), .Q(
        hack_counter[9]) );
  DFQD2BWP12T30P140 hack_counter_reg_31_ ( .D(n745), .CP(n1783), .Q(
        hack_counter[31]) );
  DFQD2BWP12T30P140 hack_counter_reg_30_ ( .D(n744), .CP(n1783), .Q(
        hack_counter[30]) );
  DFQD2BWP12T30P140 hack_counter_reg_7_ ( .D(n721), .CP(n1667), .Q(
        hack_counter[7]) );
  DFQD2BWP12T30P140 hack_counter_reg_6_ ( .D(n720), .CP(n1666), .Q(
        hack_counter[6]) );
  DFQD2BWP12T30P140 hack_counter_reg_5_ ( .D(n719), .CP(n1802), .Q(
        hack_counter[5]) );
  DFQD2BWP12T30P140 hack_counter_reg_4_ ( .D(n718), .CP(n1667), .Q(
        hack_counter[4]) );
  DFQD2BWP12T30P140 hack_counter_reg_3_ ( .D(n717), .CP(n1666), .Q(
        hack_counter[3]) );
  DFQD2BWP12T30P140 hack_counter_reg_2_ ( .D(n716), .CP(n1666), .Q(
        hack_counter[2]) );
  DFQD2BWP12T30P140 hack_counter_reg_1_ ( .D(n715), .CP(n1667), .Q(
        hack_counter[1]) );
  DFQD2BWP12T30P140 tm_sub_reg_2_ ( .D(n838), .CP(n1796), .Q(tm_sub[2]) );
  DFQD2BWP12T30P140 ck_counter_reg_32_ ( .D(N100), .CP(n1801), .Q(
        ck_counter[32]) );
  DFQD2BWP12T30P140 timer_reg_24_ ( .D(n812), .CP(n1797), .Q(timer[24]) );
  DFQD2BWP12T30P140 tm_sub_reg_6_ ( .D(n842), .CP(n1797), .Q(tm_sub[6]) );
  DFQD2BWP12T30P140 ledreg_reg_13_ ( .D(n796), .CP(n1788), .Q(ledreg[13]) );
  DFQD2BWP12T30P140 ledreg_reg_11_ ( .D(n798), .CP(n1788), .Q(ledreg[11]) );
  DFQD2BWP12T30P140 sw_sub_reg_2_ ( .D(n898), .CP(n1794), .Q(sw_sub[2]) );
  DFQD2BWP12T30P140 ledreg_reg_5_ ( .D(n804), .CP(n1788), .Q(ledreg[5]) );
  DFQD2BWP12T30P140 ck_sub_reg_5_ ( .D(n928), .CP(n1800), .Q(ck_sub[5]) );
  DFQD2BWP12T30P140 ck_sub_reg_4_ ( .D(n927), .CP(n1800), .Q(ck_sub[4]) );
  DFQD2BWP12T30P140 sw_pps_reg ( .D(N659), .CP(n1793), .Q(sw_pps) );
  DFQD2BWP12T30P140 tm_sub_reg_4_ ( .D(n840), .CP(n1797), .Q(tm_sub[4]) );
  DFQD2BWP12T30P140 ck_sub_reg_7_ ( .D(n930), .CP(n1800), .Q(ck_sub[7]) );
  DFQD2BWP12T30P140 ledreg_reg_15_ ( .D(n794), .CP(n1788), .Q(ledreg[15]) );
  DFQD2BWP12T30P140 ledreg_reg_9_ ( .D(n800), .CP(n1788), .Q(ledreg[9]) );
  DFQD2BWP12T30P140 ledreg_reg_7_ ( .D(n802), .CP(n1788), .Q(ledreg[7]) );
  DFQD2BWP12T30P140 ledreg_reg_1_ ( .D(n808), .CP(n1787), .Q(ledreg[1]) );
  DFQD2BWP12T30P140 timer_reg_25_ ( .D(n811), .CP(n1797), .Q(timer[25]) );
  DFQD2BWP12T30P140 timer_reg_2_ ( .D(n834), .CP(n1796), .Q(timer[2]) );
  DFQD2BWP12T30P140 stopwatch_reg_30_ ( .D(n870), .CP(n1792), .Q(stopwatch[30]) );
  DFQD2BWP12T30P140 alarm_time_reg_10_ ( .D(n942), .CP(n1791), .Q(
        alarm_time[10]) );
  DFQD2BWP12T30P140 tm_sub_reg_7_ ( .D(n843), .CP(n1797), .Q(tm_sub[7]) );
  DFQD2BWP12T30P140 stopwatch_reg_31_ ( .D(n869), .CP(n1792), .Q(stopwatch[31]) );
  DFQD2BWP12T30P140 al_tripped_reg ( .D(n901), .CP(n1791), .Q(al_tripped) );
  DFQD2BWP12T30P140 timer_reg_15_ ( .D(n821), .CP(n1795), .Q(timer[15]) );
  DFQD2BWP12T30P140 alarm_time_reg_19_ ( .D(n951), .CP(n1792), .Q(
        alarm_time[19]) );
  DFQD2BWP12T30P140 stopwatch_reg_27_ ( .D(n873), .CP(n1792), .Q(stopwatch[27]) );
  DFQD2BWP12T30P140 timer_reg_23_ ( .D(n813), .CP(n1797), .Q(timer[23]) );
  DFQD2BWP12T30P140 sw_pph_reg ( .D(N661), .CP(n1792), .Q(sw_pph) );
  DFQD2BWP12T30P140 tm_sub_reg_3_ ( .D(n839), .CP(n1796), .Q(tm_sub[3]) );
  DFQD2BWP12T30P140 tm_sub_reg_1_ ( .D(n837), .CP(n1796), .Q(tm_sub[1]) );
  DFQD2BWP12T30P140 ledreg_reg_0_ ( .D(n809), .CP(n1787), .Q(ledreg[0]) );
  DFQD2BWP12T30P140 sw_ppm_reg ( .D(N660), .CP(n1793), .Q(sw_ppm) );
  DFQD2BWP12T30P140 sw_sub_reg_5_ ( .D(n895), .CP(n1794), .Q(sw_sub[5]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_3_ ( .D(clock[3]), .CP(n1797), .Q(
        ck_last_clock[3]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_2_ ( .D(clock[2]), .CP(n1797), .Q(
        ck_last_clock[2]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_1_ ( .D(clock[1]), .CP(n1797), .Q(
        ck_last_clock[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_0_ ( .D(clock[0]), .CP(n1797), .Q(
        ck_last_clock[0]) );
  DFQD2BWP12T30P140 timer_reg_19_ ( .D(n817), .CP(n1794), .Q(timer[19]) );
  DFQD2BWP12T30P140 sw_sub_reg_1_ ( .D(n899), .CP(n1794), .Q(sw_sub[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_18_ ( .D(clock[18]), .CP(n1798), .Q(
        ck_last_clock[18]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_17_ ( .D(clock[17]), .CP(n1798), .Q(
        ck_last_clock[17]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_16_ ( .D(clock[16]), .CP(n1798), .Q(
        ck_last_clock[16]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_7_ ( .D(clock[7]), .CP(n1797), .Q(
        ck_last_clock[7]) );
  DFQD2BWP12T30P140 ck_sub_reg_6_ ( .D(n929), .CP(n1800), .Q(ck_sub[6]) );
  DFQD2BWP12T30P140 timer_reg_10_ ( .D(n826), .CP(n1795), .Q(timer[10]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_19_ ( .D(clock[19]), .CP(n1798), .Q(
        ck_last_clock[19]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_6_ ( .D(clock[6]), .CP(n1797), .Q(
        ck_last_clock[6]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_5_ ( .D(clock[5]), .CP(n1797), .Q(
        ck_last_clock[5]) );
  DFQD2BWP12T30P140 stopwatch_reg_0_ ( .D(n787), .CP(n1785), .Q(stopwatch[0])
         );
  DFQD2BWP12T30P140 timer_reg_7_ ( .D(n829), .CP(n1796), .Q(timer[7]) );
  DFQD2BWP12T30P140 alarm_time_reg_21_ ( .D(n953), .CP(n1792), .Q(
        alarm_time[21]) );
  DFQD2BWP12T30P140 alarm_time_reg_15_ ( .D(n947), .CP(n1792), .Q(
        alarm_time[15]) );
  DFQD2BWP12T30P140 alarm_time_reg_14_ ( .D(n946), .CP(n1792), .Q(
        alarm_time[14]) );
  DFQD2BWP12T30P140 alarm_time_reg_9_ ( .D(n941), .CP(n1791), .Q(alarm_time[9]) );
  DFQD2BWP12T30P140 alarm_time_reg_7_ ( .D(n939), .CP(n1791), .Q(alarm_time[7]) );
  DFQD2BWP12T30P140 alarm_time_reg_4_ ( .D(n936), .CP(n1791), .Q(alarm_time[4]) );
  DFQD2BWP12T30P140 alarm_time_reg_3_ ( .D(n935), .CP(n1791), .Q(alarm_time[3]) );
  DFQD2BWP12T30P140 alarm_time_reg_20_ ( .D(n952), .CP(n1792), .Q(
        alarm_time[20]) );
  DFQD2BWP12T30P140 alarm_time_reg_18_ ( .D(n950), .CP(n1792), .Q(
        alarm_time[18]) );
  DFQD2BWP12T30P140 alarm_time_reg_17_ ( .D(n949), .CP(n1792), .Q(
        alarm_time[17]) );
  DFQD2BWP12T30P140 alarm_time_reg_16_ ( .D(n948), .CP(n1792), .Q(
        alarm_time[16]) );
  DFQD2BWP12T30P140 alarm_time_reg_11_ ( .D(n943), .CP(n1791), .Q(
        alarm_time[11]) );
  DFQD2BWP12T30P140 alarm_time_reg_8_ ( .D(n940), .CP(n1791), .Q(alarm_time[8]) );
  DFQD2BWP12T30P140 alarm_time_reg_5_ ( .D(n937), .CP(n1791), .Q(alarm_time[5]) );
  DFQD2BWP12T30P140 alarm_time_reg_2_ ( .D(n934), .CP(n1791), .Q(alarm_time[2]) );
  DFQD2BWP12T30P140 alarm_time_reg_1_ ( .D(n933), .CP(n1791), .Q(alarm_time[1]) );
  DFQD2BWP12T30P140 alarm_time_reg_0_ ( .D(n932), .CP(n1791), .Q(alarm_time[0]) );
  DFQD2BWP12T30P140 timer_reg_22_ ( .D(n814), .CP(n1794), .Q(timer[22]) );
  DFQD2BWP12T30P140 sw_sub_reg_3_ ( .D(n897), .CP(n1794), .Q(sw_sub[3]) );
  DFQD2BWP12T30P140 timer_reg_12_ ( .D(n824), .CP(n1795), .Q(timer[12]) );
  DFQD2BWP12T30P140 stopwatch_reg_26_ ( .D(n874), .CP(n1792), .Q(stopwatch[26]) );
  DFQD2BWP12T30P140 timer_reg_17_ ( .D(n819), .CP(n1794), .Q(timer[17]) );
  DFQD2BWP12T30P140 timer_reg_20_ ( .D(n816), .CP(n1794), .Q(timer[20]) );
  DFQD2BWP12T30P140 timer_reg_9_ ( .D(n827), .CP(n1795), .Q(timer[9]) );
  DFQD2BWP12T30P140 stopwatch_reg_10_ ( .D(n890), .CP(n1793), .Q(stopwatch[10]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_20_ ( .D(clock[20]), .CP(n1798), .Q(
        ck_last_clock[20]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_21_ ( .D(clock[21]), .CP(n1798), .Q(
        ck_last_clock[21]) );
  DFQD2BWP12T30P140 timer_reg_8_ ( .D(n828), .CP(n1795), .Q(timer[8]) );
  DFQD2BWP12T30P140 timer_reg_11_ ( .D(n825), .CP(n1795), .Q(timer[11]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_13_ ( .D(clock[13]), .CP(n1798), .Q(
        ck_last_clock[13]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_12_ ( .D(clock[12]), .CP(n1798), .Q(
        ck_last_clock[12]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_11_ ( .D(clock[11]), .CP(n1798), .Q(
        ck_last_clock[11]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_10_ ( .D(clock[10]), .CP(n1798), .Q(
        ck_last_clock[10]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_9_ ( .D(clock[9]), .CP(n1797), .Q(
        ck_last_clock[9]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_8_ ( .D(clock[8]), .CP(n1797), .Q(
        ck_last_clock[8]) );
  DFQD2BWP12T30P140 timer_reg_21_ ( .D(n815), .CP(n1794), .Q(timer[21]) );
  DFQD2BWP12T30P140 sw_sub_reg_0_ ( .D(n900), .CP(n1794), .Q(sw_sub[0]) );
  DFQD2BWP12T30P140 timer_reg_0_ ( .D(n836), .CP(n1796), .Q(timer[0]) );
  DFQD2BWP12T30P140 timer_reg_3_ ( .D(n833), .CP(n1796), .Q(timer[3]) );
  DFQD2BWP12T30P140 timer_reg_1_ ( .D(n835), .CP(n1796), .Q(timer[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_15_ ( .D(clock[15]), .CP(n1798), .Q(
        ck_last_clock[15]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_14_ ( .D(clock[14]), .CP(n1798), .Q(
        ck_last_clock[14]) );
  DFQD2BWP12T30P140 h_sseg_reg_12_ ( .D(n967), .CP(n1790), .Q(h_sseg[12]) );
  DFQD2BWP12T30P140 h_sseg_reg_8_ ( .D(n963), .CP(n1790), .Q(h_sseg[8]) );
  DFQD2BWP12T30P140 h_sseg_reg_4_ ( .D(n959), .CP(n1790), .Q(h_sseg[4]) );
  DFQD2BWP12T30P140 h_sseg_reg_0_ ( .D(n955), .CP(n1790), .Q(h_sseg[0]) );
  DFQD2BWP12T30P140 stopwatch_reg_11_ ( .D(n889), .CP(n1793), .Q(stopwatch[11]) );
  DFQD2BWP12T30P140 timer_reg_16_ ( .D(n820), .CP(n1795), .Q(timer[16]) );
  DFQD2BWP12T30P140 ck_sub_reg_1_ ( .D(n924), .CP(n1799), .Q(ck_sub[1]) );
  DFQD2BWP12T30P140 stopwatch_reg_15_ ( .D(n885), .CP(n1793), .Q(stopwatch[15]) );
  DFQD2BWP12T30P140 stopwatch_reg_19_ ( .D(n881), .CP(n1793), .Q(stopwatch[19]) );
  DFQD2BWP12T30P140 timer_reg_4_ ( .D(n832), .CP(n1796), .Q(timer[4]) );
  DFQD2BWP12T30P140 timer_reg_14_ ( .D(n822), .CP(n1795), .Q(timer[14]) );
  DFQD2BWP12T30P140 stopwatch_reg_25_ ( .D(n875), .CP(n1792), .Q(stopwatch[25]) );
  DFQD2BWP12T30P140 ck_counter_reg_31_ ( .D(N99), .CP(n1801), .Q(
        ck_counter[31]) );
  DFQD2BWP12T30P140 ck_counter_reg_30_ ( .D(N98), .CP(n1801), .Q(
        ck_counter[30]) );
  DFQD2BWP12T30P140 ck_counter_reg_29_ ( .D(N97), .CP(n1801), .Q(
        ck_counter[29]) );
  DFQD2BWP12T30P140 ck_counter_reg_28_ ( .D(N96), .CP(n1801), .Q(
        ck_counter[28]) );
  DFQD2BWP12T30P140 ck_counter_reg_27_ ( .D(N95), .CP(n1801), .Q(
        ck_counter[27]) );
  DFQD2BWP12T30P140 ck_counter_reg_26_ ( .D(N94), .CP(n1801), .Q(
        ck_counter[26]) );
  DFQD2BWP12T30P140 ck_counter_reg_25_ ( .D(N93), .CP(n1801), .Q(
        ck_counter[25]) );
  DFQD2BWP12T30P140 ck_counter_reg_24_ ( .D(N92), .CP(n1801), .Q(
        ck_counter[24]) );
  DFQD2BWP12T30P140 ck_counter_reg_23_ ( .D(N91), .CP(n1801), .Q(
        ck_counter[23]) );
  DFQD2BWP12T30P140 ck_counter_reg_21_ ( .D(N89), .CP(n1801), .Q(
        ck_counter[21]) );
  DFQD2BWP12T30P140 ck_counter_reg_20_ ( .D(N88), .CP(n1801), .Q(
        ck_counter[20]) );
  DFQD2BWP12T30P140 ck_counter_reg_19_ ( .D(N87), .CP(n1801), .Q(
        ck_counter[19]) );
  DFQD2BWP12T30P140 ck_counter_reg_18_ ( .D(N86), .CP(n1801), .Q(
        ck_counter[18]) );
  DFQD2BWP12T30P140 ck_counter_reg_17_ ( .D(N85), .CP(n1801), .Q(
        ck_counter[17]) );
  DFQD2BWP12T30P140 ck_counter_reg_16_ ( .D(N84), .CP(n1801), .Q(
        ck_counter[16]) );
  DFQD2BWP12T30P140 ck_counter_reg_15_ ( .D(N83), .CP(n1801), .Q(
        ck_counter[15]) );
  DFQD2BWP12T30P140 ck_counter_reg_14_ ( .D(N82), .CP(n1801), .Q(
        ck_counter[14]) );
  DFQD2BWP12T30P140 ck_counter_reg_13_ ( .D(N81), .CP(n1800), .Q(
        ck_counter[13]) );
  DFQD2BWP12T30P140 ck_counter_reg_12_ ( .D(N80), .CP(n1800), .Q(
        ck_counter[12]) );
  DFQD2BWP12T30P140 ck_counter_reg_11_ ( .D(N79), .CP(n1800), .Q(
        ck_counter[11]) );
  DFQD2BWP12T30P140 ck_counter_reg_10_ ( .D(N78), .CP(n1800), .Q(
        ck_counter[10]) );
  DFQD2BWP12T30P140 ck_counter_reg_9_ ( .D(N77), .CP(n1800), .Q(ck_counter[9])
         );
  DFQD2BWP12T30P140 ck_counter_reg_8_ ( .D(N76), .CP(n1800), .Q(ck_counter[8])
         );
  DFQD2BWP12T30P140 ck_counter_reg_6_ ( .D(N74), .CP(n1800), .Q(ck_counter[6])
         );
  DFQD2BWP12T30P140 ck_counter_reg_5_ ( .D(N73), .CP(n1800), .Q(ck_counter[5])
         );
  DFQD2BWP12T30P140 ck_counter_reg_4_ ( .D(N72), .CP(n1800), .Q(ck_counter[4])
         );
  DFQD2BWP12T30P140 ck_counter_reg_3_ ( .D(N71), .CP(n1800), .Q(ck_counter[3])
         );
  DFQD2BWP12T30P140 ck_counter_reg_2_ ( .D(N70), .CP(n1800), .Q(ck_counter[2])
         );
  DFQD2BWP12T30P140 ck_counter_reg_1_ ( .D(N69), .CP(n1800), .Q(ck_counter[1])
         );
  DFQD2BWP12T30P140 ck_sub_reg_0_ ( .D(n931), .CP(n1799), .Q(ck_sub[0]) );
  DFQD2BWP12T30P140 h_sseg_reg_13_ ( .D(n968), .CP(n1791), .Q(h_sseg[13]) );
  DFQD2BWP12T30P140 h_sseg_reg_9_ ( .D(n964), .CP(n1790), .Q(h_sseg[9]) );
  DFQD2BWP12T30P140 h_sseg_reg_5_ ( .D(n960), .CP(n1790), .Q(h_sseg[5]) );
  DFQD2BWP12T30P140 h_sseg_reg_1_ ( .D(n956), .CP(n1790), .Q(h_sseg[1]) );
  DFQD2BWP12T30P140 clock_reg_11_ ( .D(n912), .CP(n1799), .Q(clock[11]) );
  DFQD2BWP12T30P140 clock_reg_21_ ( .D(n902), .CP(n1798), .Q(clock[21]) );
  DFQD2BWP12T30P140 stopwatch_reg_13_ ( .D(n887), .CP(n1793), .Q(stopwatch[13]) );
  DFQD2BWP12T30P140 h_sseg_reg_14_ ( .D(n969), .CP(n1791), .Q(h_sseg[14]) );
  DFQD2BWP12T30P140 h_sseg_reg_10_ ( .D(n965), .CP(n1790), .Q(h_sseg[10]) );
  DFQD2BWP12T30P140 h_sseg_reg_6_ ( .D(n961), .CP(n1790), .Q(h_sseg[6]) );
  DFQD2BWP12T30P140 h_sseg_reg_2_ ( .D(n957), .CP(n1790), .Q(h_sseg[2]) );
  DFQD2BWP12T30P140 timer_reg_13_ ( .D(n823), .CP(n1795), .Q(timer[13]) );
  DFQD2BWP12T30P140 stopwatch_reg_22_ ( .D(n878), .CP(n1792), .Q(stopwatch[22]) );
  DFQD2BWP12T30P140 stopwatch_reg_20_ ( .D(n880), .CP(n1792), .Q(stopwatch[20]) );
  DFQD2BWP12T30P140 stopwatch_reg_18_ ( .D(n882), .CP(n1793), .Q(stopwatch[18]) );
  DFQD2BWP12T30P140 ckspeed_reg_25_ ( .D(n779), .CP(n1785), .Q(ckspeed[25]) );
  DFQD2BWP12T30P140 ckspeed_reg_24_ ( .D(n778), .CP(n1785), .Q(ckspeed[24]) );
  DFQD2BWP12T30P140 ckspeed_reg_23_ ( .D(n777), .CP(n1785), .Q(ckspeed[23]) );
  DFQD2BWP12T30P140 ckspeed_reg_22_ ( .D(n776), .CP(n1785), .Q(ckspeed[22]) );
  DFQD2BWP12T30P140 ckspeed_reg_21_ ( .D(n775), .CP(n1785), .Q(ckspeed[21]) );
  DFQD2BWP12T30P140 ckspeed_reg_20_ ( .D(n774), .CP(n1785), .Q(ckspeed[20]) );
  DFQD2BWP12T30P140 ckspeed_reg_18_ ( .D(n772), .CP(n1785), .Q(ckspeed[18]) );
  DFQD2BWP12T30P140 ckspeed_reg_17_ ( .D(n771), .CP(n1785), .Q(ckspeed[17]) );
  DFQD2BWP12T30P140 ckspeed_reg_16_ ( .D(n770), .CP(n1785), .Q(ckspeed[16]) );
  DFQD2BWP12T30P140 ckspeed_reg_15_ ( .D(n769), .CP(n1785), .Q(ckspeed[15]) );
  DFQD2BWP12T30P140 ckspeed_reg_14_ ( .D(n768), .CP(n1784), .Q(ckspeed[14]) );
  DFQD2BWP12T30P140 ckspeed_reg_13_ ( .D(n767), .CP(n1784), .Q(ckspeed[13]) );
  DFQD2BWP12T30P140 ckspeed_reg_12_ ( .D(n766), .CP(n1784), .Q(ckspeed[12]) );
  DFQD2BWP12T30P140 ckspeed_reg_11_ ( .D(n765), .CP(n1784), .Q(ckspeed[11]) );
  DFQD2BWP12T30P140 ckspeed_reg_10_ ( .D(n764), .CP(n1784), .Q(ckspeed[10]) );
  DFQD2BWP12T30P140 ckspeed_reg_9_ ( .D(n763), .CP(n1784), .Q(ckspeed[9]) );
  DFQD2BWP12T30P140 ckspeed_reg_8_ ( .D(n762), .CP(n1784), .Q(ckspeed[8]) );
  DFQD2BWP12T30P140 ckspeed_reg_7_ ( .D(n761), .CP(n1784), .Q(ckspeed[7]) );
  DFQD2BWP12T30P140 ckspeed_reg_6_ ( .D(n760), .CP(n1784), .Q(ckspeed[6]) );
  DFQD2BWP12T30P140 ckspeed_reg_5_ ( .D(n759), .CP(n1784), .Q(ckspeed[5]) );
  DFQD2BWP12T30P140 ckspeed_reg_3_ ( .D(n757), .CP(n1784), .Q(ckspeed[3]) );
  DFQD2BWP12T30P140 ckspeed_reg_2_ ( .D(n756), .CP(n1784), .Q(ckspeed[2]) );
  DFQD2BWP12T30P140 ckspeed_reg_1_ ( .D(n755), .CP(n1784), .Q(ckspeed[1]) );
  DFQD2BWP12T30P140 ckspeed_reg_31_ ( .D(n785), .CP(n1785), .Q(ckspeed[31]) );
  DFQD2BWP12T30P140 ckspeed_reg_30_ ( .D(n784), .CP(n1785), .Q(ckspeed[30]) );
  DFQD2BWP12T30P140 ckspeed_reg_29_ ( .D(n783), .CP(n1785), .Q(ckspeed[29]) );
  DFQD2BWP12T30P140 ckspeed_reg_28_ ( .D(n782), .CP(n1785), .Q(ckspeed[28]) );
  DFQD2BWP12T30P140 ckspeed_reg_27_ ( .D(n781), .CP(n1785), .Q(ckspeed[27]) );
  DFQD2BWP12T30P140 ckspeed_reg_26_ ( .D(n780), .CP(n1785), .Q(ckspeed[26]) );
  DFQD2BWP12T30P140 stopwatch_reg_21_ ( .D(n879), .CP(n1792), .Q(stopwatch[21]) );
  DFQD2BWP12T30P140 stopwatch_reg_9_ ( .D(n891), .CP(n1793), .Q(stopwatch[9])
         );
  DFQD2BWP12T30P140 clock_reg_14_ ( .D(n909), .CP(n1799), .Q(clock[14]) );
  DFQD2BWP12T30P140 clock_reg_20_ ( .D(n903), .CP(n1798), .Q(clock[20]) );
  DFQD2BWP12T30P140 clock_reg_7_ ( .D(n916), .CP(n1799), .Q(clock[7]) );
  DFQD2BWP12T30P140 clock_reg_3_ ( .D(n920), .CP(n1799), .Q(clock[3]) );
  DFQD2BWP12T30P140 clock_reg_24_ ( .D(n790), .CP(n1786), .Q(clock[24]) );
  DFQD2BWP12T30P140 stopwatch_reg_12_ ( .D(n888), .CP(n1793), .Q(stopwatch[12]) );
  DFQD2BWP12T30P140 clock_reg_15_ ( .D(n908), .CP(n1799), .Q(clock[15]) );
  DFQD2BWP12T30P140 stopwatch_reg_24_ ( .D(n876), .CP(n1792), .Q(stopwatch[24]) );
  DFQD2BWP12T30P140 stopwatch_reg_14_ ( .D(n886), .CP(n1793), .Q(stopwatch[14]) );
  DFQD2BWP12T30P140 clock_reg_17_ ( .D(n906), .CP(n1798), .Q(clock[17]) );
  DFQD2BWP12T30P140 clock_reg_18_ ( .D(n905), .CP(n1798), .Q(clock[18]) );
  DFQD2BWP12T30P140 clock_reg_16_ ( .D(n907), .CP(n1798), .Q(clock[16]) );
  DFQD2BWP12T30P140 clock_reg_9_ ( .D(n914), .CP(n1799), .Q(clock[9]) );
  DFQD2BWP12T30P140 h_sseg_reg_15_ ( .D(n970), .CP(n1791), .Q(h_sseg[15]) );
  DFQD2BWP12T30P140 h_sseg_reg_11_ ( .D(n966), .CP(n1790), .Q(h_sseg[11]) );
  DFQD2BWP12T30P140 h_sseg_reg_7_ ( .D(n962), .CP(n1790), .Q(h_sseg[7]) );
  DFQD2BWP12T30P140 h_sseg_reg_3_ ( .D(n958), .CP(n1790), .Q(h_sseg[3]) );
  DFQD2BWP12T30P140 stopwatch_reg_8_ ( .D(n892), .CP(n1793), .Q(stopwatch[8])
         );
  DFQD2BWP12T30P140 clock_reg_1_ ( .D(n922), .CP(n1799), .Q(clock[1]) );
  DFQD2BWP12T30P140 clock_reg_4_ ( .D(n919), .CP(n1799), .Q(clock[4]) );
  DFQD2BWP12T30P140 clock_reg_5_ ( .D(n918), .CP(n1799), .Q(clock[5]) );
  DFQD2BWP12T30P140 clock_reg_19_ ( .D(n904), .CP(n1798), .Q(clock[19]) );
  DFQD2BWP12T30P140 stopwatch_reg_16_ ( .D(n884), .CP(n1793), .Q(stopwatch[16]) );
  DFQD2BWP12T30P140 clock_reg_0_ ( .D(n923), .CP(n1799), .Q(clock[0]) );
  DFQD2BWP12T30P140 clock_reg_2_ ( .D(n921), .CP(n1799), .Q(clock[2]) );
  DFQD2BWP12T30P140 clock_reg_12_ ( .D(n911), .CP(n1799), .Q(clock[12]) );
  DFQD2BWP12T30P140 clock_reg_6_ ( .D(n917), .CP(n1799), .Q(clock[6]) );
  DFQD2BWP12T30P140 clock_reg_10_ ( .D(n913), .CP(n1799), .Q(clock[10]) );
  DFQD2BWP12T30P140 clock_reg_13_ ( .D(n910), .CP(n1799), .Q(clock[13]) );
  DFQD2BWP12T30P140 ck_carry_reg ( .D(N108), .CP(n1802), .Q(ck_carry) );
  DFQD1BWP12T30P140 o_sseg_reg_23_ ( .D(N766), .CP(n1789), .Q(o_sseg[23]) );
  DFQD1BWP12T30P140 o_sseg_reg_8_ ( .D(N751), .CP(n1789), .Q(o_sseg[8]) );
  DFQD1BWP12T30P140 o_data_reg_25_ ( .D(N864), .CP(n1787), .Q(o_data[25]) );
  DFQD1BWP12T30P140 o_data_reg_10_ ( .D(N849), .CP(n1786), .Q(o_data[10]) );
  DFQD1BWP12T30P140 hack_time_reg_4_ ( .D(n688), .CP(n1803), .Q(hack_time[4])
         );
  DFQD1BWP12T30P140 ledreg_reg_14_ ( .D(n795), .CP(n1788), .Q(ledreg[14]) );
  DFQD1BWP12T30P140 tm_start_reg_14_ ( .D(n854), .CP(n1796), .Q(tm_start[14])
         );
  DFQD1BWP12T30P140 tm_start_reg_16_ ( .D(n852), .CP(n1795), .Q(tm_start[16])
         );
  DFQD1BWP12T30P140 tm_sub_reg_5_ ( .D(n841), .CP(n1797), .Q(tm_sub[5]) );
  DFQD1BWP12T30P140 alarm_time_reg_12_ ( .D(n944), .CP(n1791), .Q(
        alarm_time[12]) );
  DFQD1BWP12T30P140 hack_time_reg_18_ ( .D(n702), .CP(n1666), .Q(hack_time[18]) );
  DFQD1BWP12T30P140 hack_counter_reg_27_ ( .D(n741), .CP(n1783), .Q(
        hack_counter[27]) );
  DFQD1BWP12T30P140 hack_counter_reg_12_ ( .D(n726), .CP(n1666), .Q(
        hack_counter[12]) );
  DFQD1BWP12T30P140 al_enabled_reg ( .D(n786), .CP(n1785), .Q(al_enabled) );
  DFQD1BWP12T30P140 ledreg_reg_3_ ( .D(n806), .CP(n1787), .Q(ledreg[3]) );
  DFQD1BWP12T30P140 ck_sub_reg_2_ ( .D(n925), .CP(n1800), .Q(ck_sub[2]) );
  DFQD1BWP12T30P140 ck_last_clock_reg_4_ ( .D(clock[4]), .CP(n1797), .Q(
        ck_last_clock[4]) );
  DFQD1BWP12T30P140 timer_reg_6_ ( .D(n830), .CP(n1795), .Q(timer[6]) );
  DFQD1BWP12T30P140 timer_reg_5_ ( .D(n831), .CP(n1796), .Q(timer[5]) );
  DFQD1BWP12T30P140 clock_reg_25_ ( .D(n791), .CP(n1786), .Q(clock[25]) );
  DFQD1BWP12T30P140 stopwatch_reg_23_ ( .D(n877), .CP(n1793), .Q(stopwatch[23]) );
  DFQD1BWP12T30P140 ck_counter_reg_22_ ( .D(N90), .CP(n1801), .Q(
        ck_counter[22]) );
  DFQD1BWP12T30P140 ck_counter_reg_7_ ( .D(N75), .CP(n1800), .Q(ck_counter[7])
         );
  DFQD1BWP12T30P140 tm_sub_reg_0_ ( .D(n844), .CP(n1797), .Q(tm_sub[0]) );
  DFQD1BWP12T30P140 ckspeed_reg_19_ ( .D(n773), .CP(n1785), .Q(ckspeed[19]) );
  DFQD1BWP12T30P140 ckspeed_reg_4_ ( .D(n758), .CP(n1784), .Q(ckspeed[4]) );
  DFQD1BWP12T30P140 clock_reg_8_ ( .D(n915), .CP(n1799), .Q(clock[8]) );
  DFQD1BWP12T30P140 stopwatch_reg_17_ ( .D(n883), .CP(n1793), .Q(stopwatch[17]) );
  ND2D0BWP12T30P140 U1065 ( .A1(ck_sub[7]), .A2(n976), .ZN(n1765) );
  AOI32D0BWP12T30P140 U1066 ( .A1(n1029), .A2(n1028), .A3(n1669), .B1(n1050), 
        .B2(n1028), .ZN(n814) );
  AOI32D0BWP12T30P140 U1067 ( .A1(n993), .A2(n992), .A3(n1670), .B1(n1167), 
        .B2(n992), .ZN(n817) );
  AOI32D0BWP12T30P140 U1068 ( .A1(n1068), .A2(n1067), .A3(n1671), .B1(n1066), 
        .B2(n1067), .ZN(n825) );
  AOI32D0BWP12T30P140 U1069 ( .A1(n1125), .A2(n1124), .A3(n1672), .B1(n1123), 
        .B2(n1124), .ZN(n822) );
  AOI221D0BWP12T30P140 U1070 ( .A1(n1387), .A2(n1373), .B1(n1375), .B2(n1373), 
        .C(n1526), .ZN(n1471) );
  OAI32D0BWP12T30P140 U1071 ( .A1(n1115), .A2(n1749), .A3(n1367), .B1(sw_ppm), 
        .B2(n1749), .ZN(n1662) );
  AOI32D0BWP12T30P140 U1072 ( .A1(n1396), .A2(n1754), .A3(n1116), .B1(n1757), 
        .B2(n1754), .ZN(n1502) );
  CKBD0BWP12T30P140 U1073 ( .I(n1704), .Z(n1635) );
  INVD0BWP12T30P140 U1074 ( .I(timer[25]), .ZN(n1001) );
  INVD0BWP12T30P140 U1075 ( .I(n1635), .ZN(n974) );
  INVD0BWP12T30P140 U1076 ( .I(n1635), .ZN(n975) );
  ND2D0BWP12T30P140 U1077 ( .A1(n1704), .A2(n988), .ZN(n1706) );
  INVD0BWP12T30P140 U1078 ( .I(i_wb_addr[2]), .ZN(n1351) );
  INVD0BWP12T30P140 U1079 ( .I(n1365), .ZN(n1625) );
  TIELBWP12T30P140 U1080 ( .ZN(n683) );
  IND2D1BWP12T30P140 U1081 ( .A1(al_tripped), .B1(n1001), .ZN(n976) );
  INVD0BWP12T30P140 U1082 ( .I(ledreg[10]), .ZN(n1025) );
  OAI21D0BWP12T30P140 U1083 ( .A1(n976), .A2(n1025), .B(n1765), .ZN(o_led[8])
         );
  CKBD0BWP12T30P140 U1084 ( .I(o_led[8]), .Z(o_led[7]) );
  INVD0BWP12T30P140 U1085 ( .I(ledreg[11]), .ZN(n1205) );
  OAI21D0BWP12T30P140 U1086 ( .A1(n976), .A2(n1205), .B(n1765), .ZN(o_led[9])
         );
  CKBD0BWP12T30P140 U1087 ( .I(o_led[9]), .Z(o_led[6]) );
  INVD0BWP12T30P140 U1088 ( .I(ledreg[12]), .ZN(n1030) );
  OAI21D0BWP12T30P140 U1089 ( .A1(n976), .A2(n1030), .B(n1765), .ZN(o_led[10])
         );
  CKBD0BWP12T30P140 U1090 ( .I(o_led[10]), .Z(o_led[5]) );
  INVD0BWP12T30P140 U1091 ( .I(ledreg[13]), .ZN(n1201) );
  OAI21D0BWP12T30P140 U1092 ( .A1(n976), .A2(n1201), .B(n1765), .ZN(o_led[11])
         );
  CKBD0BWP12T30P140 U1093 ( .I(o_led[11]), .Z(o_led[4]) );
  INVD0BWP12T30P140 U1094 ( .I(ledreg[14]), .ZN(n1035) );
  OAI21D0BWP12T30P140 U1095 ( .A1(n976), .A2(n1035), .B(n1765), .ZN(o_led[12])
         );
  CKBD0BWP12T30P140 U1096 ( .I(o_led[12]), .Z(o_led[3]) );
  INVD0BWP12T30P140 U1097 ( .I(ledreg[15]), .ZN(n1237) );
  OAI21D0BWP12T30P140 U1098 ( .A1(n976), .A2(n1237), .B(n1765), .ZN(o_led[13])
         );
  CKBD0BWP12T30P140 U1099 ( .I(o_led[13]), .Z(o_led[2]) );
  INVD0BWP12T30P140 U1100 ( .I(ledreg[16]), .ZN(n1170) );
  OAI21D0BWP12T30P140 U1101 ( .A1(n976), .A2(n1170), .B(n1765), .ZN(o_led[14])
         );
  CKBD0BWP12T30P140 U1102 ( .I(o_led[14]), .Z(o_led[1]) );
  INVD0BWP12T30P140 U1103 ( .I(ledreg[17]), .ZN(n1172) );
  OAI21D0BWP12T30P140 U1104 ( .A1(n976), .A2(n1172), .B(n1765), .ZN(o_led[15])
         );
  CKBD0BWP12T30P140 U1105 ( .I(o_led[15]), .Z(o_led[0]) );
  INVD0BWP12T30P140 U1106 ( .I(ck_counter[39]), .ZN(n1186) );
  INVD0BWP12T30P140 U1107 ( .I(ck_counter[37]), .ZN(n1483) );
  INVD0BWP12T30P140 U1108 ( .I(ck_counter[35]), .ZN(n1480) );
  INVD0BWP12T30P140 U1109 ( .I(ck_counter[33]), .ZN(n1185) );
  INVD0BWP12T30P140 U1110 ( .I(ckspeed[0]), .ZN(n1223) );
  INVD0BWP12T30P140 U1111 ( .I(ck_counter[0]), .ZN(n1337) );
  NR2D0BWP12T30P140 U1112 ( .A1(n1223), .A2(n1337), .ZN(n1634) );
  ND2D0BWP12T30P140 U1113 ( .A1(ck_counter[32]), .A2(n1194), .ZN(n1193) );
  NR2D0BWP12T30P140 U1114 ( .A1(n1185), .A2(n1193), .ZN(n1476) );
  ND2D0BWP12T30P140 U1115 ( .A1(ck_counter[34]), .A2(n1476), .ZN(n1479) );
  NR2D0BWP12T30P140 U1116 ( .A1(n1480), .A2(n1479), .ZN(n1478) );
  ND2D0BWP12T30P140 U1117 ( .A1(ck_counter[36]), .A2(n1478), .ZN(n1482) );
  NR2D0BWP12T30P140 U1118 ( .A1(n1483), .A2(n1482), .ZN(n1481) );
  ND2D0BWP12T30P140 U1119 ( .A1(ck_counter[38]), .A2(n1481), .ZN(n1477) );
  NR2D0BWP12T30P140 U1120 ( .A1(n1186), .A2(n1477), .ZN(N108) );
  AOI21D0BWP12T30P140 U1121 ( .A1(n1186), .A2(n1477), .B(N108), .ZN(N107) );
  NR4D0BWP12T30P140 U1122 ( .A1(i_wb_data[0]), .A2(i_wb_data[3]), .A3(
        i_wb_data[4]), .A4(i_wb_data[6]), .ZN(n977) );
  NR4D0BWP12T30P140 U1123 ( .A1(i_wb_data[5]), .A2(i_wb_data[7]), .A3(
        i_wb_data[1]), .A4(i_wb_data[2]), .ZN(n1087) );
  ND2D0BWP12T30P140 U1124 ( .A1(n977), .A2(n1087), .ZN(n1052) );
  NR4D0BWP12T30P140 U1125 ( .A1(i_wb_data[16]), .A2(i_wb_data[17]), .A3(
        i_wb_data[18]), .A4(i_wb_data[19]), .ZN(n980) );
  NR4D0BWP12T30P140 U1126 ( .A1(i_wb_data[20]), .A2(i_wb_data[21]), .A3(
        i_wb_data[22]), .A4(i_wb_data[23]), .ZN(n979) );
  NR4D0BWP12T30P140 U1127 ( .A1(i_wb_data[9]), .A2(i_wb_data[10]), .A3(
        i_wb_data[13]), .A4(i_wb_data[15]), .ZN(n1079) );
  NR4D0BWP12T30P140 U1128 ( .A1(i_wb_data[12]), .A2(i_wb_data[14]), .A3(
        i_wb_data[8]), .A4(i_wb_data[11]), .ZN(n978) );
  ND4D0BWP12T30P140 U1129 ( .A1(n980), .A2(n979), .A3(n1079), .A4(n978), .ZN(
        n981) );
  OR2D0BWP12T30P140 U1130 ( .A1(n1052), .A2(n981), .Z(n989) );
  ND3D0BWP12T30P140 U1131 ( .A1(i_wb_stb), .A2(i_wb_we), .A3(i_wb_cyc), .ZN(
        n984) );
  INVD0BWP12T30P140 U1132 ( .I(n984), .ZN(n1222) );
  INVD0BWP12T30P140 U1133 ( .I(i_wb_addr[0]), .ZN(n1353) );
  NR3D0BWP12T30P140 U1134 ( .A1(i_wb_addr[2]), .A2(i_wb_addr[1]), .A3(n1353), 
        .ZN(n1648) );
  ND2D0BWP12T30P140 U1135 ( .A1(n1222), .A2(n1648), .ZN(n1195) );
  NR2D0BWP12T30P140 U1136 ( .A1(n1195), .A2(timer[24]), .ZN(n1668) );
  ND2D0BWP12T30P140 U1137 ( .A1(n989), .A2(n1668), .ZN(n1704) );
  INVD0BWP12T30P140 U1138 ( .I(i_wb_data[15]), .ZN(n1508) );
  NR2D0BWP12T30P140 U1139 ( .A1(n1508), .A2(n1704), .ZN(n1342) );
  AO21D0BWP12T30P140 U1140 ( .A1(tm_start[15]), .A2(n1635), .B(n1342), .Z(n853) );
  NR3D0BWP12T30P140 U1141 ( .A1(i_wb_addr[0]), .A2(i_wb_addr[1]), .A3(
        i_wb_addr[2]), .ZN(n1620) );
  ND2D0BWP12T30P140 U1142 ( .A1(n1222), .A2(n1620), .ZN(n1378) );
  OAI21D0BWP12T30P140 U1143 ( .A1(n1052), .A2(n1378), .B(ck_carry), .ZN(n1608)
         );
  ND2D0BWP12T30P140 U1144 ( .A1(ck_sub[0]), .A2(ck_sub[1]), .ZN(n983) );
  NR2D0BWP12T30P140 U1145 ( .A1(ck_sub[1]), .A2(n1608), .ZN(n1113) );
  INVD0BWP12T30P140 U1146 ( .I(ck_carry), .ZN(n1745) );
  OAI21D0BWP12T30P140 U1147 ( .A1(n1052), .A2(n1378), .B(n1745), .ZN(n1609) );
  OAI21D0BWP12T30P140 U1148 ( .A1(ck_sub[0]), .A2(n1608), .B(n1609), .ZN(n1112) );
  OAI21D0BWP12T30P140 U1149 ( .A1(n1113), .A2(n1112), .B(ck_sub[2]), .ZN(n982)
         );
  OAI31D0BWP12T30P140 U1150 ( .A1(ck_sub[2]), .A2(n1608), .A3(n983), .B(n982), 
        .ZN(n925) );
  NR3D0BWP12T30P140 U1151 ( .A1(timer[12]), .A2(timer[14]), .A3(timer[13]), 
        .ZN(n1340) );
  INVD0BWP12T30P140 U1152 ( .I(timer[15]), .ZN(n1338) );
  ND2D0BWP12T30P140 U1153 ( .A1(n1340), .A2(n1338), .ZN(n1100) );
  OR3D0BWP12T30P140 U1154 ( .A1(timer[10]), .A2(timer[8]), .A3(timer[9]), .Z(
        n1065) );
  NR2D0BWP12T30P140 U1155 ( .A1(n1065), .A2(timer[11]), .ZN(n1063) );
  INVD0BWP12T30P140 U1156 ( .I(n1063), .ZN(n991) );
  NR2D0BWP12T30P140 U1157 ( .A1(n1100), .A2(n991), .ZN(n1003) );
  NR2D0BWP12T30P140 U1158 ( .A1(timer[1]), .A2(timer[0]), .ZN(n1241) );
  INVD0BWP12T30P140 U1159 ( .I(timer[2]), .ZN(n1244) );
  ND2D0BWP12T30P140 U1160 ( .A1(n1241), .A2(n1244), .ZN(n1240) );
  NR2D0BWP12T30P140 U1161 ( .A1(timer[3]), .A2(n1240), .ZN(n1094) );
  NR3D0BWP12T30P140 U1162 ( .A1(timer[22]), .A2(timer[21]), .A3(timer[20]), 
        .ZN(n1707) );
  INVD0BWP12T30P140 U1163 ( .I(timer[16]), .ZN(n1108) );
  INVD0BWP12T30P140 U1164 ( .I(timer[18]), .ZN(n1164) );
  INVD0BWP12T30P140 U1165 ( .I(timer[17]), .ZN(n1046) );
  ND3D0BWP12T30P140 U1166 ( .A1(n1108), .A2(n1164), .A3(n1046), .ZN(n1159) );
  NR2D0BWP12T30P140 U1167 ( .A1(n1159), .A2(timer[19]), .ZN(n1044) );
  INVD0BWP12T30P140 U1168 ( .I(n1044), .ZN(n1027) );
  INR3D1BWP12T30P140 U1169 ( .A1(n1707), .B1(timer[23]), .B2(n1027), .ZN(n1002) );
  INVD0BWP12T30P140 U1170 ( .I(timer[5]), .ZN(n1040) );
  INVD0BWP12T30P140 U1171 ( .I(timer[4]), .ZN(n1118) );
  IND3D1BWP12T30P140 U1172 ( .A1(timer[6]), .B1(n1040), .B2(n1118), .ZN(n1016)
         );
  NR2D0BWP12T30P140 U1173 ( .A1(timer[7]), .A2(n1016), .ZN(n1679) );
  ND4D0BWP12T30P140 U1174 ( .A1(n1003), .A2(n1094), .A3(n1002), .A4(n1679), 
        .ZN(n1239) );
  INVD0BWP12T30P140 U1175 ( .I(n1239), .ZN(n990) );
  ND2D0BWP12T30P140 U1176 ( .A1(n1668), .A2(n990), .ZN(n988) );
  AOI21D0BWP12T30P140 U1177 ( .A1(ck_carry), .A2(tm_sub[0]), .B(n1706), .ZN(
        n1189) );
  INVD0BWP12T30P140 U1178 ( .I(n1706), .ZN(n1579) );
  ND2D0BWP12T30P140 U1179 ( .A1(ck_carry), .A2(n1579), .ZN(n1581) );
  NR2D0BWP12T30P140 U1180 ( .A1(tm_sub[1]), .A2(n1581), .ZN(n1190) );
  AO22D0BWP12T30P140 U1181 ( .A1(tm_sub[1]), .A2(n1189), .B1(tm_sub[0]), .B2(
        n1190), .Z(n837) );
  INVD0BWP12T30P140 U1182 ( .I(i_wb_data[5]), .ZN(n1442) );
  NR2D0BWP12T30P140 U1183 ( .A1(n1442), .A2(n1635), .ZN(n1038) );
  AO21D0BWP12T30P140 U1184 ( .A1(tm_start[5]), .A2(n1635), .B(n1038), .Z(n863)
         );
  ND2D0BWP12T30P140 U1185 ( .A1(ck_carry), .A2(ck_prepps), .ZN(n1743) );
  INVD0BWP12T30P140 U1186 ( .I(n1743), .ZN(n1390) );
  ND2D0BWP12T30P140 U1187 ( .A1(n1390), .A2(ck_ppm), .ZN(n1386) );
  INVD0BWP12T30P140 U1188 ( .I(n1386), .ZN(n1373) );
  NR2D0BWP12T30P140 U1189 ( .A1(n1745), .A2(n1373), .ZN(n1701) );
  MAOI22D0BWP12T30P140 U1190 ( .A1(ledreg[0]), .A2(ck_carry), .B1(n1701), .B2(
        ledreg[0]), .ZN(n809) );
  INVD0BWP12T30P140 U1191 ( .I(i_wb_data[0]), .ZN(n1450) );
  INVD0BWP12T30P140 U1192 ( .I(stopwatch[0]), .ZN(n986) );
  ND3D0BWP12T30P140 U1193 ( .A1(n1353), .A2(n1351), .A3(i_wb_addr[1]), .ZN(
        n1549) );
  NR2D0BWP12T30P140 U1194 ( .A1(n984), .A2(n1549), .ZN(n1005) );
  OAI211D0BWP12T30P140 U1195 ( .A1(n1450), .A2(n986), .B(i_wb_data[1]), .C(
        n1005), .ZN(n1754) );
  NR3D0BWP12T30P140 U1196 ( .A1(stopwatch[26]), .A2(stopwatch[24]), .A3(
        stopwatch[25]), .ZN(n999) );
  INVD0BWP12T30P140 U1197 ( .I(stopwatch[27]), .ZN(n1522) );
  NR2D0BWP12T30P140 U1198 ( .A1(n999), .A2(n1522), .ZN(n1037) );
  ND4D0BWP12T30P140 U1199 ( .A1(stopwatch[28]), .A2(stopwatch[29]), .A3(
        stopwatch[30]), .A4(stopwatch[31]), .ZN(n985) );
  INVD0BWP12T30P140 U1200 ( .I(n1754), .ZN(n1749) );
  AO31D0BWP12T30P140 U1201 ( .A1(n1037), .A2(sw_pph), .A3(n985), .B(n1749), 
        .Z(n1261) );
  ND2D0BWP12T30P140 U1202 ( .A1(n1754), .A2(n1261), .ZN(n1260) );
  INVD0BWP12T30P140 U1203 ( .I(stopwatch[28]), .ZN(n1507) );
  OAI22D0BWP12T30P140 U1204 ( .A1(stopwatch[24]), .A2(n1260), .B1(n1261), .B2(
        n1507), .ZN(n872) );
  OAI21D0BWP12T30P140 U1205 ( .A1(n986), .A2(n1745), .B(n1754), .ZN(n1083) );
  ND2D0BWP12T30P140 U1206 ( .A1(n1754), .A2(n1083), .ZN(n1209) );
  INVD0BWP12T30P140 U1207 ( .I(sw_sub[4]), .ZN(n1181) );
  INVD0BWP12T30P140 U1208 ( .I(sw_sub[1]), .ZN(n1070) );
  INVD0BWP12T30P140 U1209 ( .I(sw_sub[0]), .ZN(n1082) );
  INVD0BWP12T30P140 U1210 ( .I(sw_sub[2]), .ZN(n1069) );
  NR3D0BWP12T30P140 U1211 ( .A1(n1070), .A2(n1082), .A3(n1069), .ZN(n1033) );
  ND2D0BWP12T30P140 U1212 ( .A1(n1033), .A2(sw_sub[3]), .ZN(n1183) );
  NR2D0BWP12T30P140 U1213 ( .A1(n1181), .A2(n1183), .ZN(n1758) );
  INVD0BWP12T30P140 U1214 ( .I(n1758), .ZN(n987) );
  OA21D0BWP12T30P140 U1215 ( .A1(n1749), .A2(n1758), .B(n1083), .Z(n1043) );
  INVD0BWP12T30P140 U1216 ( .I(sw_sub[5]), .ZN(n1761) );
  OAI32D0BWP12T30P140 U1217 ( .A1(sw_sub[5]), .A2(n1209), .A3(n987), .B1(n1043), .B2(n1761), .ZN(n895) );
  NR2D0BWP12T30P140 U1218 ( .A1(n989), .A2(n988), .ZN(n1708) );
  AOI22D0BWP12T30P140 U1219 ( .A1(n1044), .A2(n1579), .B1(n1708), .B2(
        tm_start[19]), .ZN(n993) );
  INVD0BWP12T30P140 U1220 ( .I(n1100), .ZN(n1638) );
  ND2D0BWP12T30P140 U1221 ( .A1(n1001), .A2(timer[24]), .ZN(n1238) );
  IND2D1BWP12T30P140 U1222 ( .A1(n1238), .B1(tm_pps), .ZN(n1084) );
  INR3D1BWP12T30P140 U1223 ( .A1(n1094), .B1(n990), .B2(n1084), .ZN(n1006) );
  ND2D0BWP12T30P140 U1224 ( .A1(n1679), .A2(n1006), .ZN(n1064) );
  NR2D0BWP12T30P140 U1225 ( .A1(n991), .A2(n1064), .ZN(n1339) );
  ND2D0BWP12T30P140 U1226 ( .A1(n1638), .A2(n1339), .ZN(n1163) );
  CKBD0BWP12T30P140 U1227 ( .I(n1579), .Z(n1161) );
  OAI211D0BWP12T30P140 U1228 ( .A1(n1159), .A2(n1163), .B(timer[19]), .C(n1161), .ZN(n992) );
  ND2D0BWP12T30P140 U1229 ( .A1(n1668), .A2(i_wb_data[19]), .ZN(n1670) );
  ND2D0BWP12T30P140 U1230 ( .A1(n1579), .A2(n1163), .ZN(n1110) );
  INVD0BWP12T30P140 U1231 ( .I(n1110), .ZN(n1167) );
  OAI21D0BWP12T30P140 U1232 ( .A1(n1749), .A2(sw_sub[0]), .B(n1083), .ZN(n1206) );
  NR2D0BWP12T30P140 U1233 ( .A1(sw_sub[1]), .A2(n1209), .ZN(n1207) );
  AO22D0BWP12T30P140 U1234 ( .A1(sw_sub[1]), .A2(n1206), .B1(sw_sub[0]), .B2(
        n1207), .Z(n899) );
  INVD0BWP12T30P140 U1235 ( .I(ck_sub[3]), .ZN(n1126) );
  ND3D0BWP12T30P140 U1236 ( .A1(ck_sub[2]), .A2(ck_sub[0]), .A3(ck_sub[1]), 
        .ZN(n1053) );
  NR2D0BWP12T30P140 U1237 ( .A1(n1126), .A2(n1053), .ZN(n1215) );
  ND2D0BWP12T30P140 U1238 ( .A1(ck_sub[4]), .A2(n1215), .ZN(n1213) );
  OAI22D0BWP12T30P140 U1239 ( .A1(n1745), .A2(n1213), .B1(n1052), .B2(n1378), 
        .ZN(n1212) );
  OAI21D0BWP12T30P140 U1240 ( .A1(ck_sub[5]), .A2(n1608), .B(n1212), .ZN(n1229) );
  NR2D0BWP12T30P140 U1241 ( .A1(ck_sub[6]), .A2(n1608), .ZN(n1230) );
  INVD0BWP12T30P140 U1242 ( .I(ck_sub[5]), .ZN(n1211) );
  NR2D0BWP12T30P140 U1243 ( .A1(n1211), .A2(n1213), .ZN(n1098) );
  AO22D0BWP12T30P140 U1244 ( .A1(ck_sub[6]), .A2(n1229), .B1(n1230), .B2(n1098), .Z(n929) );
  INVD0BWP12T30P140 U1245 ( .I(timer[9]), .ZN(n1055) );
  OAI21D0BWP12T30P140 U1246 ( .A1(timer[8]), .A2(n1064), .B(n1579), .ZN(n1056)
         );
  OAI21D0BWP12T30P140 U1247 ( .A1(n1055), .A2(n1706), .B(n1056), .ZN(n997) );
  ND2D0BWP12T30P140 U1248 ( .A1(n1161), .A2(n1064), .ZN(n1061) );
  INVD0BWP12T30P140 U1249 ( .I(timer[11]), .ZN(n995) );
  CKBD0BWP12T30P140 U1250 ( .I(n1708), .Z(n1343) );
  AOI22D0BWP12T30P140 U1251 ( .A1(i_wb_data[10]), .A2(n975), .B1(n1343), .B2(
        tm_start[10]), .ZN(n994) );
  OAI31D0BWP12T30P140 U1252 ( .A1(n995), .A2(n1065), .A3(n1706), .B(n994), 
        .ZN(n996) );
  AO22D0BWP12T30P140 U1253 ( .A1(timer[10]), .A2(n997), .B1(n1061), .B2(n996), 
        .Z(n826) );
  NR3D0BWP12T30P140 U1254 ( .A1(stopwatch[18]), .A2(stopwatch[16]), .A3(
        stopwatch[17]), .ZN(n1114) );
  NR4D0BWP12T30P140 U1255 ( .A1(stopwatch[19]), .A2(stopwatch[21]), .A3(
        stopwatch[23]), .A4(stopwatch[27]), .ZN(n998) );
  ND3D0BWP12T30P140 U1256 ( .A1(n1114), .A2(n999), .A3(n998), .ZN(n1000) );
  NR3D0BWP12T30P140 U1257 ( .A1(stopwatch[22]), .A2(stopwatch[20]), .A3(n1000), 
        .ZN(n1104) );
  INVD0BWP12T30P140 U1258 ( .I(clock[25]), .ZN(n1103) );
  NR2D0BWP12T30P140 U1259 ( .A1(clock[24]), .A2(n1103), .ZN(n1762) );
  NR4D0BWP12T30P140 U1260 ( .A1(stopwatch[13]), .A2(stopwatch[15]), .A3(
        stopwatch[14]), .A4(stopwatch[12]), .ZN(n1004) );
  ND2D0BWP12T30P140 U1261 ( .A1(n1002), .A2(n1001), .ZN(n1099) );
  ND2D0BWP12T30P140 U1262 ( .A1(clock[24]), .A2(n1103), .ZN(n1423) );
  INR3D1BWP12T30P140 U1263 ( .A1(n1003), .B1(n1099), .B2(n1423), .ZN(n1678) );
  AOI31D0BWP12T30P140 U1264 ( .A1(n1104), .A2(n1762), .A3(n1004), .B(n1678), 
        .ZN(n971) );
  MAOI22D0BWP12T30P140 U1265 ( .A1(n1005), .A2(n1450), .B1(stopwatch[0]), .B2(
        n1005), .ZN(n787) );
  NR2D0BWP12T30P140 U1266 ( .A1(n1006), .A2(n1706), .ZN(n1119) );
  AOI21D0BWP12T30P140 U1267 ( .A1(n1161), .A2(n1016), .B(n1119), .ZN(n1009) );
  INVD0BWP12T30P140 U1268 ( .I(timer[7]), .ZN(n1008) );
  AOI22D0BWP12T30P140 U1269 ( .A1(i_wb_data[7]), .A2(n974), .B1(n1343), .B2(
        tm_start[7]), .ZN(n1007) );
  OAI21D0BWP12T30P140 U1270 ( .A1(n1009), .A2(n1008), .B(n1007), .ZN(n829) );
  INVD0BWP12T30P140 U1271 ( .I(i_wb_data[16]), .ZN(n1519) );
  INVD0BWP12T30P140 U1272 ( .I(i_wb_data[17]), .ZN(n1531) );
  ND4D0BWP12T30P140 U1273 ( .A1(i_wb_data[18]), .A2(i_wb_data[19]), .A3(
        i_wb_data[20]), .A4(i_wb_data[21]), .ZN(n1010) );
  NR3D0BWP12T30P140 U1274 ( .A1(n1519), .A2(n1531), .A3(n1010), .ZN(n1379) );
  INVD0BWP12T30P140 U1275 ( .I(i_wb_addr[1]), .ZN(n1352) );
  NR3D0BWP12T30P140 U1276 ( .A1(i_wb_addr[2]), .A2(n1353), .A3(n1352), .ZN(
        n1650) );
  ND2D0BWP12T30P140 U1277 ( .A1(n1222), .A2(n1650), .ZN(n1011) );
  NR2D0BWP12T30P140 U1278 ( .A1(n1379), .A2(n1011), .ZN(n1346) );
  INVD0BWP12T30P140 U1279 ( .I(i_wb_data[21]), .ZN(n1578) );
  INVD0BWP12T30P140 U1280 ( .I(alarm_time[21]), .ZN(n1283) );
  INVD0BWP12T30P140 U1281 ( .I(n1346), .ZN(n1344) );
  AOI22D0BWP12T30P140 U1282 ( .A1(n1346), .A2(n1578), .B1(n1283), .B2(n1344), 
        .ZN(n953) );
  INVD0BWP12T30P140 U1283 ( .I(n1011), .ZN(n1335) );
  INVD0BWP12T30P140 U1284 ( .I(i_wb_data[9]), .ZN(n1418) );
  INVD0BWP12T30P140 U1285 ( .I(i_wb_data[8]), .ZN(n1360) );
  ND3D0BWP12T30P140 U1286 ( .A1(i_wb_data[12]), .A2(i_wb_data[14]), .A3(
        i_wb_data[11]), .ZN(n1081) );
  NR4D0BWP12T30P140 U1287 ( .A1(n1418), .A2(n1508), .A3(n1360), .A4(n1081), 
        .ZN(n1012) );
  ND3D0BWP12T30P140 U1288 ( .A1(i_wb_data[10]), .A2(i_wb_data[13]), .A3(n1012), 
        .ZN(n1074) );
  ND2D0BWP12T30P140 U1289 ( .A1(n1335), .A2(n1074), .ZN(n1251) );
  INVD0BWP12T30P140 U1290 ( .I(n1251), .ZN(n1252) );
  INVD0BWP12T30P140 U1291 ( .I(alarm_time[15]), .ZN(n1312) );
  AOI22D0BWP12T30P140 U1292 ( .A1(n1252), .A2(n1508), .B1(n1312), .B2(n1251), 
        .ZN(n947) );
  INVD0BWP12T30P140 U1293 ( .I(i_wb_data[14]), .ZN(n1503) );
  INVD0BWP12T30P140 U1294 ( .I(alarm_time[14]), .ZN(n1299) );
  AOI22D0BWP12T30P140 U1295 ( .A1(n1252), .A2(n1503), .B1(n1299), .B2(n1251), 
        .ZN(n946) );
  INVD0BWP12T30P140 U1296 ( .I(alarm_time[9]), .ZN(n1300) );
  AOI22D0BWP12T30P140 U1297 ( .A1(n1252), .A2(n1418), .B1(n1300), .B2(n1251), 
        .ZN(n941) );
  INVD0BWP12T30P140 U1298 ( .I(i_wb_data[1]), .ZN(n1364) );
  ND4D0BWP12T30P140 U1299 ( .A1(i_wb_data[5]), .A2(i_wb_data[7]), .A3(
        i_wb_data[4]), .A4(i_wb_data[6]), .ZN(n1013) );
  NR3D0BWP12T30P140 U1300 ( .A1(n1364), .A2(n1450), .A3(n1013), .ZN(n1014) );
  ND3D0BWP12T30P140 U1301 ( .A1(i_wb_data[2]), .A2(i_wb_data[3]), .A3(n1014), 
        .ZN(n1088) );
  ND2D0BWP12T30P140 U1302 ( .A1(n1335), .A2(n1088), .ZN(n1156) );
  INVD0BWP12T30P140 U1303 ( .I(n1156), .ZN(n1157) );
  INVD0BWP12T30P140 U1304 ( .I(i_wb_data[7]), .ZN(n1385) );
  INVD0BWP12T30P140 U1305 ( .I(alarm_time[7]), .ZN(n1296) );
  AOI22D0BWP12T30P140 U1306 ( .A1(n1157), .A2(n1385), .B1(n1296), .B2(n1156), 
        .ZN(n939) );
  INVD0BWP12T30P140 U1307 ( .I(i_wb_data[4]), .ZN(n1362) );
  INVD0BWP12T30P140 U1308 ( .I(alarm_time[4]), .ZN(n1293) );
  AOI22D0BWP12T30P140 U1309 ( .A1(n1157), .A2(n1362), .B1(n1293), .B2(n1156), 
        .ZN(n936) );
  INVD0BWP12T30P140 U1310 ( .I(i_wb_data[3]), .ZN(n1391) );
  INVD0BWP12T30P140 U1311 ( .I(alarm_time[3]), .ZN(n1284) );
  AOI22D0BWP12T30P140 U1312 ( .A1(n1157), .A2(n1391), .B1(n1284), .B2(n1156), 
        .ZN(n935) );
  AOI21D0BWP12T30P140 U1313 ( .A1(n1161), .A2(timer[4]), .B(n1119), .ZN(n1041)
         );
  OAI21D0BWP12T30P140 U1314 ( .A1(n1040), .A2(n1706), .B(n1041), .ZN(n1018) );
  INVD0BWP12T30P140 U1315 ( .I(n1119), .ZN(n1120) );
  AOI22D0BWP12T30P140 U1316 ( .A1(n1668), .A2(i_wb_data[6]), .B1(n1343), .B2(
        tm_start[6]), .ZN(n1015) );
  OAI21D0BWP12T30P140 U1317 ( .A1(n1016), .A2(n1706), .B(n1015), .ZN(n1017) );
  AO22D0BWP12T30P140 U1318 ( .A1(timer[6]), .A2(n1018), .B1(n1120), .B2(n1017), 
        .Z(n830) );
  INVD0BWP12T30P140 U1319 ( .I(i_wb_data[20]), .ZN(n1568) );
  INVD0BWP12T30P140 U1320 ( .I(alarm_time[20]), .ZN(n1286) );
  AOI22D0BWP12T30P140 U1321 ( .A1(n1346), .A2(n1568), .B1(n1286), .B2(n1344), 
        .ZN(n952) );
  INVD0BWP12T30P140 U1322 ( .I(i_wb_data[18]), .ZN(n1537) );
  INVD0BWP12T30P140 U1323 ( .I(alarm_time[18]), .ZN(n1291) );
  AOI22D0BWP12T30P140 U1324 ( .A1(n1346), .A2(n1537), .B1(n1291), .B2(n1344), 
        .ZN(n950) );
  INVD0BWP12T30P140 U1325 ( .I(alarm_time[17]), .ZN(n1314) );
  AOI22D0BWP12T30P140 U1326 ( .A1(n1346), .A2(n1531), .B1(n1314), .B2(n1344), 
        .ZN(n949) );
  ND2D0BWP12T30P140 U1327 ( .A1(ledreg[0]), .A2(ledreg[1]), .ZN(n1700) );
  INVD0BWP12T30P140 U1328 ( .I(ledreg[2]), .ZN(n1019) );
  NR2D0BWP12T30P140 U1329 ( .A1(n1700), .A2(n1019), .ZN(n1698) );
  INVD0BWP12T30P140 U1330 ( .I(n1701), .ZN(n1236) );
  AO21D0BWP12T30P140 U1331 ( .A1(n1700), .A2(n1019), .B(n1236), .Z(n1020) );
  OAI22D0BWP12T30P140 U1332 ( .A1(n1698), .A2(n1020), .B1(ck_carry), .B2(n1019), .ZN(n807) );
  INVD0BWP12T30P140 U1333 ( .I(alarm_time[16]), .ZN(n1311) );
  AOI22D0BWP12T30P140 U1334 ( .A1(n1346), .A2(n1519), .B1(n1311), .B2(n1344), 
        .ZN(n948) );
  INVD0BWP12T30P140 U1335 ( .I(i_wb_data[11]), .ZN(n1358) );
  INVD0BWP12T30P140 U1336 ( .I(alarm_time[11]), .ZN(n1309) );
  AOI22D0BWP12T30P140 U1337 ( .A1(n1252), .A2(n1358), .B1(n1309), .B2(n1251), 
        .ZN(n943) );
  ND2D0BWP12T30P140 U1338 ( .A1(n1698), .A2(ledreg[3]), .ZN(n1697) );
  IND2D1BWP12T30P140 U1339 ( .A1(ledreg[4]), .B1(n1697), .ZN(n1689) );
  ND2D0BWP12T30P140 U1340 ( .A1(ledreg[5]), .A2(n1689), .ZN(n1688) );
  INVD0BWP12T30P140 U1341 ( .I(ledreg[6]), .ZN(n1021) );
  NR2D0BWP12T30P140 U1342 ( .A1(n1688), .A2(n1021), .ZN(n1695) );
  IOA21D0BWP12T30P140 U1343 ( .A1(n1688), .A2(n1021), .B(n1701), .ZN(n1022) );
  OAI22D0BWP12T30P140 U1344 ( .A1(n1695), .A2(n1022), .B1(ck_carry), .B2(n1021), .ZN(n803) );
  INVD0BWP12T30P140 U1345 ( .I(alarm_time[8]), .ZN(n1281) );
  AOI22D0BWP12T30P140 U1346 ( .A1(n1252), .A2(n1360), .B1(n1281), .B2(n1251), 
        .ZN(n940) );
  INVD0BWP12T30P140 U1347 ( .I(alarm_time[5]), .ZN(n1297) );
  AOI22D0BWP12T30P140 U1348 ( .A1(n1157), .A2(n1442), .B1(n1297), .B2(n1156), 
        .ZN(n937) );
  ND2D0BWP12T30P140 U1349 ( .A1(n1695), .A2(ledreg[7]), .ZN(n1694) );
  INVD0BWP12T30P140 U1350 ( .I(ledreg[8]), .ZN(n1023) );
  NR2D0BWP12T30P140 U1351 ( .A1(n1694), .A2(n1023), .ZN(n1692) );
  IOA21D0BWP12T30P140 U1352 ( .A1(n1694), .A2(n1023), .B(n1701), .ZN(n1024) );
  OAI22D0BWP12T30P140 U1353 ( .A1(n1692), .A2(n1024), .B1(ck_carry), .B2(n1023), .ZN(n801) );
  INVD0BWP12T30P140 U1354 ( .I(i_wb_data[2]), .ZN(n1363) );
  INVD0BWP12T30P140 U1355 ( .I(alarm_time[2]), .ZN(n1315) );
  AOI22D0BWP12T30P140 U1356 ( .A1(n1157), .A2(n1363), .B1(n1315), .B2(n1156), 
        .ZN(n934) );
  INVD0BWP12T30P140 U1357 ( .I(alarm_time[1]), .ZN(n1280) );
  AOI22D0BWP12T30P140 U1358 ( .A1(n1157), .A2(n1364), .B1(n1280), .B2(n1156), 
        .ZN(n933) );
  ND2D0BWP12T30P140 U1359 ( .A1(n1692), .A2(ledreg[9]), .ZN(n1691) );
  NR2D0BWP12T30P140 U1360 ( .A1(n1691), .A2(n1025), .ZN(n1203) );
  IOA21D0BWP12T30P140 U1361 ( .A1(n1691), .A2(n1025), .B(n1701), .ZN(n1026) );
  OAI22D0BWP12T30P140 U1362 ( .A1(n1203), .A2(n1026), .B1(ck_carry), .B2(n1025), .ZN(n799) );
  INVD0BWP12T30P140 U1363 ( .I(alarm_time[0]), .ZN(n1306) );
  AOI22D0BWP12T30P140 U1364 ( .A1(n1157), .A2(n1450), .B1(n1306), .B2(n1156), 
        .ZN(n932) );
  AOI22D0BWP12T30P140 U1365 ( .A1(n1707), .A2(n1161), .B1(n1708), .B2(
        tm_start[22]), .ZN(n1029) );
  INVD0BWP12T30P140 U1366 ( .I(timer[20]), .ZN(n1049) );
  OAI21D0BWP12T30P140 U1367 ( .A1(n1027), .A2(n1163), .B(n1579), .ZN(n1705) );
  OAI21D0BWP12T30P140 U1368 ( .A1(n1706), .A2(n1049), .B(n1705), .ZN(n1073) );
  AOI32D0BWP12T30P140 U1369 ( .A1(timer[21]), .A2(timer[22]), .A3(n1161), .B1(
        n1073), .B2(timer[22]), .ZN(n1028) );
  ND2D0BWP12T30P140 U1370 ( .A1(n1668), .A2(i_wb_data[22]), .ZN(n1669) );
  INVD0BWP12T30P140 U1371 ( .I(n1705), .ZN(n1050) );
  ND2D0BWP12T30P140 U1372 ( .A1(n1203), .A2(ledreg[11]), .ZN(n1202) );
  NR2D0BWP12T30P140 U1373 ( .A1(n1202), .A2(n1030), .ZN(n1199) );
  IOA21D0BWP12T30P140 U1374 ( .A1(n1202), .A2(n1030), .B(n1701), .ZN(n1031) );
  OAI22D0BWP12T30P140 U1375 ( .A1(n1199), .A2(n1031), .B1(ck_carry), .B2(n1030), .ZN(n797) );
  NR2D0BWP12T30P140 U1376 ( .A1(sw_sub[3]), .A2(n1209), .ZN(n1032) );
  OAI21D0BWP12T30P140 U1377 ( .A1(n1749), .A2(n1033), .B(n1083), .ZN(n1178) );
  AO22D0BWP12T30P140 U1378 ( .A1(n1033), .A2(n1032), .B1(sw_sub[3]), .B2(n1178), .Z(n897) );
  AOI22D0BWP12T30P140 U1379 ( .A1(n1668), .A2(i_wb_data[12]), .B1(n1708), .B2(
        tm_start[12]), .ZN(n1034) );
  NR2D0BWP12T30P140 U1380 ( .A1(n1339), .A2(n1706), .ZN(n1123) );
  INVD0BWP12T30P140 U1381 ( .I(n1123), .ZN(n1640) );
  INVD0BWP12T30P140 U1382 ( .I(timer[12]), .ZN(n1122) );
  ND2D0BWP12T30P140 U1383 ( .A1(n1579), .A2(n1122), .ZN(n1637) );
  AOI32D0BWP12T30P140 U1384 ( .A1(n1034), .A2(n1640), .A3(n1637), .B1(n1123), 
        .B2(n1122), .ZN(n824) );
  ND2D0BWP12T30P140 U1385 ( .A1(n1199), .A2(ledreg[13]), .ZN(n1198) );
  NR2D0BWP12T30P140 U1386 ( .A1(n1198), .A2(n1035), .ZN(n1234) );
  IOA21D0BWP12T30P140 U1387 ( .A1(n1198), .A2(n1035), .B(n1701), .ZN(n1036) );
  OAI22D0BWP12T30P140 U1388 ( .A1(n1234), .A2(n1036), .B1(ck_carry), .B2(n1035), .ZN(n795) );
  INVD0BWP12T30P140 U1389 ( .I(stopwatch[26]), .ZN(n1548) );
  IND2D1BWP12T30P140 U1390 ( .A1(sw_pph), .B1(n1754), .ZN(n1402) );
  ND2D0BWP12T30P140 U1391 ( .A1(stopwatch[24]), .A2(stopwatch[25]), .ZN(n1258)
         );
  MAOI22D0BWP12T30P140 U1392 ( .A1(stopwatch[26]), .A2(n1258), .B1(n1258), 
        .B2(stopwatch[26]), .ZN(n1248) );
  IND3D1BWP12T30P140 U1393 ( .A1(n1037), .B1(sw_pph), .B2(n1754), .ZN(n1403)
         );
  OAI22D0BWP12T30P140 U1394 ( .A1(n1548), .A2(n1402), .B1(n1248), .B2(n1403), 
        .ZN(n874) );
  NR4D0BWP12T30P140 U1395 ( .A1(n975), .A2(timer[5]), .A3(timer[4]), .A4(n1679), .ZN(n1039) );
  AOI211D0BWP12T30P140 U1396 ( .A1(tm_start[5]), .A2(n1343), .B(n1039), .C(
        n1038), .ZN(n1042) );
  OAI22D0BWP12T30P140 U1397 ( .A1(n1119), .A2(n1042), .B1(n1041), .B2(n1040), 
        .ZN(n831) );
  INVD0BWP12T30P140 U1398 ( .I(n1209), .ZN(n1180) );
  ND3D0BWP12T30P140 U1399 ( .A1(n1180), .A2(sw_sub[5]), .A3(n1758), .ZN(n1177)
         );
  INVD0BWP12T30P140 U1400 ( .I(sw_sub[6]), .ZN(n1221) );
  OAI21D0BWP12T30P140 U1401 ( .A1(sw_sub[5]), .A2(n1209), .B(n1043), .ZN(n1175) );
  MAOI22D0BWP12T30P140 U1402 ( .A1(n1177), .A2(n1221), .B1(n1221), .B2(n1175), 
        .ZN(n894) );
  NR4D0BWP12T30P140 U1403 ( .A1(timer[16]), .A2(timer[17]), .A3(n1044), .A4(
        n1706), .ZN(n1045) );
  INVD0BWP12T30P140 U1404 ( .I(n1668), .ZN(n1250) );
  NR2D0BWP12T30P140 U1405 ( .A1(n1250), .A2(n1531), .ZN(n1348) );
  AOI211D0BWP12T30P140 U1406 ( .A1(n1343), .A2(tm_start[17]), .B(n1045), .C(
        n1348), .ZN(n1048) );
  OAI21D0BWP12T30P140 U1407 ( .A1(timer[16]), .A2(n1163), .B(n1579), .ZN(n1047) );
  OAI22D0BWP12T30P140 U1408 ( .A1(n1167), .A2(n1048), .B1(n1047), .B2(n1046), 
        .ZN(n819) );
  AOI22D0BWP12T30P140 U1409 ( .A1(tm_start[20]), .A2(n1708), .B1(n1161), .B2(
        n1049), .ZN(n1051) );
  ND2D0BWP12T30P140 U1410 ( .A1(n1668), .A2(i_wb_data[20]), .ZN(n1675) );
  AOI32D0BWP12T30P140 U1411 ( .A1(n1051), .A2(n1705), .A3(n1675), .B1(n1050), 
        .B2(n1049), .ZN(n816) );
  OAI22D0BWP12T30P140 U1412 ( .A1(n1745), .A2(n1053), .B1(n1052), .B2(n1378), 
        .ZN(n1220) );
  INVD0BWP12T30P140 U1413 ( .I(n1608), .ZN(n1216) );
  ND2D0BWP12T30P140 U1414 ( .A1(n1216), .A2(n1126), .ZN(n1219) );
  OAI22D0BWP12T30P140 U1415 ( .A1(n1220), .A2(n1126), .B1(n1053), .B2(n1219), 
        .ZN(n926) );
  INVD0BWP12T30P140 U1416 ( .I(n1061), .ZN(n1066) );
  INVD0BWP12T30P140 U1417 ( .I(timer[8]), .ZN(n1059) );
  ND2D0BWP12T30P140 U1418 ( .A1(n1579), .A2(n1059), .ZN(n1060) );
  ND2D0BWP12T30P140 U1419 ( .A1(i_wb_data[9]), .A2(n974), .ZN(n1674) );
  OAI31D0BWP12T30P140 U1420 ( .A1(timer[9]), .A2(n1063), .A3(n1060), .B(n1674), 
        .ZN(n1054) );
  AOI21D0BWP12T30P140 U1421 ( .A1(n1343), .A2(tm_start[9]), .B(n1054), .ZN(
        n1057) );
  OAI22D0BWP12T30P140 U1422 ( .A1(n1066), .A2(n1057), .B1(n1056), .B2(n1055), 
        .ZN(n827) );
  AN3D0BWP12T30P140 U1423 ( .A1(tm_sub[2]), .A2(tm_sub[1]), .A3(tm_sub[0]), 
        .Z(n1224) );
  AOI21D0BWP12T30P140 U1424 ( .A1(ck_carry), .A2(n1224), .B(n1706), .ZN(n1225)
         );
  NR2D0BWP12T30P140 U1425 ( .A1(tm_sub[3]), .A2(n1581), .ZN(n1226) );
  AO22D0BWP12T30P140 U1426 ( .A1(tm_sub[3]), .A2(n1225), .B1(n1224), .B2(n1226), .Z(n839) );
  NR2D0BWP12T30P140 U1427 ( .A1(n1749), .A2(sw_pps), .ZN(n1105) );
  INVD0BWP12T30P140 U1428 ( .I(n1105), .ZN(n1429) );
  OAI31D0BWP12T30P140 U1429 ( .A1(stopwatch[10]), .A2(stopwatch[9]), .A3(
        stopwatch[8]), .B(stopwatch[11]), .ZN(n1116) );
  INVD0BWP12T30P140 U1430 ( .I(n1116), .ZN(n1397) );
  ND2D0BWP12T30P140 U1431 ( .A1(sw_pps), .A2(n1754), .ZN(n1399) );
  NR2D0BWP12T30P140 U1432 ( .A1(n1397), .A2(n1399), .ZN(n1428) );
  ND2D0BWP12T30P140 U1433 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .ZN(n1058)
         );
  ND2D0BWP12T30P140 U1434 ( .A1(n1428), .A2(n1058), .ZN(n1370) );
  ND3D0BWP12T30P140 U1435 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .A3(n1428), 
        .ZN(n1107) );
  INVD0BWP12T30P140 U1436 ( .I(stopwatch[10]), .ZN(n1751) );
  AOI32D0BWP12T30P140 U1437 ( .A1(n1429), .A2(stopwatch[10]), .A3(n1370), .B1(
        n1107), .B2(n1751), .ZN(n890) );
  AOI21D0BWP12T30P140 U1438 ( .A1(n1223), .A2(n1337), .B(n1634), .ZN(N68) );
  AOI21D0BWP12T30P140 U1439 ( .A1(n1185), .A2(n1193), .B(n1476), .ZN(N101) );
  AOI22D0BWP12T30P140 U1440 ( .A1(i_wb_data[8]), .A2(n975), .B1(n1343), .B2(
        tm_start[8]), .ZN(n1062) );
  AOI32D0BWP12T30P140 U1441 ( .A1(n1062), .A2(n1061), .A3(n1060), .B1(n1066), 
        .B2(n1059), .ZN(n828) );
  AOI22D0BWP12T30P140 U1442 ( .A1(n1063), .A2(n1161), .B1(n1708), .B2(
        tm_start[11]), .ZN(n1068) );
  OAI211D0BWP12T30P140 U1443 ( .A1(n1065), .A2(n1064), .B(timer[11]), .C(n1161), .ZN(n1067) );
  ND2D0BWP12T30P140 U1444 ( .A1(i_wb_data[11]), .A2(n975), .ZN(n1671) );
  INVD0BWP12T30P140 U1445 ( .I(sw_sub[3]), .ZN(n1179) );
  NR2D0BWP12T30P140 U1446 ( .A1(n1749), .A2(n1179), .ZN(N615) );
  NR2D0BWP12T30P140 U1447 ( .A1(n1749), .A2(n1069), .ZN(N614) );
  NR2D0BWP12T30P140 U1448 ( .A1(n1749), .A2(n1070), .ZN(N613) );
  INVD0BWP12T30P140 U1449 ( .I(i_hack), .ZN(n1188) );
  CKBD0BWP12T30P140 U1450 ( .I(n1188), .Z(n1187) );
  NR2D0BWP12T30P140 U1451 ( .A1(n1745), .A2(n1187), .ZN(n810) );
  INVD0BWP12T30P140 U1452 ( .I(n1378), .ZN(n1395) );
  INVD0BWP12T30P140 U1453 ( .I(i_wb_data[25]), .ZN(n1626) );
  AOI22D0BWP12T30P140 U1454 ( .A1(n1395), .A2(n1626), .B1(n1103), .B2(n1378), 
        .ZN(n791) );
  AOI22D0BWP12T30P140 U1455 ( .A1(n1668), .A2(i_wb_data[21]), .B1(n1343), .B2(
        tm_start[21]), .ZN(n1071) );
  OAI31D0BWP12T30P140 U1456 ( .A1(timer[21]), .A2(timer[20]), .A3(n1706), .B(
        n1071), .ZN(n1072) );
  AO22D0BWP12T30P140 U1457 ( .A1(timer[21]), .A2(n1073), .B1(n1705), .B2(n1072), .Z(n815) );
  ND2D0BWP12T30P140 U1458 ( .A1(n1395), .A2(n1074), .ZN(n1474) );
  INVD0BWP12T30P140 U1459 ( .I(n1474), .ZN(n1526) );
  INVD0BWP12T30P140 U1460 ( .I(clock[3]), .ZN(n1393) );
  ND2D0BWP12T30P140 U1461 ( .A1(clock[6]), .A2(clock[4]), .ZN(n1076) );
  INVD0BWP12T30P140 U1462 ( .I(clock[1]), .ZN(n1432) );
  INVD0BWP12T30P140 U1463 ( .I(clock[5]), .ZN(n1440) );
  INVD0BWP12T30P140 U1464 ( .I(clock[7]), .ZN(n1384) );
  ND4D0BWP12T30P140 U1465 ( .A1(clock[0]), .A2(n1432), .A3(n1440), .A4(n1384), 
        .ZN(n1075) );
  NR4D0BWP12T30P140 U1466 ( .A1(clock[2]), .A2(n1393), .A3(n1076), .A4(n1075), 
        .ZN(n1089) );
  INVD0BWP12T30P140 U1467 ( .I(clock[8]), .ZN(n1420) );
  INVD0BWP12T30P140 U1468 ( .I(clock[14]), .ZN(n1376) );
  INVD0BWP12T30P140 U1469 ( .I(clock[12]), .ZN(n1458) );
  NR4D0BWP12T30P140 U1470 ( .A1(clock[9]), .A2(n1420), .A3(n1376), .A4(n1458), 
        .ZN(n1078) );
  INVD0BWP12T30P140 U1471 ( .I(clock[11]), .ZN(n1527) );
  NR4D0BWP12T30P140 U1472 ( .A1(clock[13]), .A2(clock[10]), .A3(clock[15]), 
        .A4(n1527), .ZN(n1077) );
  ND3D0BWP12T30P140 U1473 ( .A1(n1089), .A2(n1078), .A3(n1077), .ZN(n1770) );
  ND3D0BWP12T30P140 U1474 ( .A1(n1079), .A2(i_wb_data[8]), .A3(n1395), .ZN(
        n1080) );
  OAI22D0BWP12T30P140 U1475 ( .A1(n1526), .A2(n1770), .B1(n1081), .B2(n1080), 
        .ZN(N264) );
  AOI22D0BWP12T30P140 U1476 ( .A1(sw_sub[0]), .A2(n1083), .B1(n1209), .B2(
        n1082), .ZN(n900) );
  INVD0BWP12T30P140 U1477 ( .I(timer[0]), .ZN(n1085) );
  AOI22D0BWP12T30P140 U1478 ( .A1(tm_start[0]), .A2(n1708), .B1(n1161), .B2(
        n1085), .ZN(n1086) );
  OAI21D0BWP12T30P140 U1479 ( .A1(n1094), .A2(n1084), .B(n1119), .ZN(n1246) );
  ND2D0BWP12T30P140 U1480 ( .A1(i_wb_data[0]), .A2(n974), .ZN(n1677) );
  INVD0BWP12T30P140 U1481 ( .I(n1246), .ZN(n1245) );
  AOI32D0BWP12T30P140 U1482 ( .A1(n1086), .A2(n1246), .A3(n1677), .B1(n1245), 
        .B2(n1085), .ZN(n836) );
  ND4D0BWP12T30P140 U1483 ( .A1(i_wb_data[4]), .A2(i_wb_data[6]), .A3(n1087), 
        .A4(n1395), .ZN(n1091) );
  ND2D0BWP12T30P140 U1484 ( .A1(n1395), .A2(n1088), .ZN(n1449) );
  ND2D0BWP12T30P140 U1485 ( .A1(n1089), .A2(n1449), .ZN(n1090) );
  OAI31D0BWP12T30P140 U1486 ( .A1(n1391), .A2(n1450), .A3(n1091), .B(n1090), 
        .ZN(N263) );
  AOI22D0BWP12T30P140 U1487 ( .A1(n1094), .A2(n1579), .B1(n1343), .B2(
        tm_start[3]), .ZN(n1093) );
  AOI32D0BWP12T30P140 U1488 ( .A1(n1161), .A2(timer[3]), .A3(n1240), .B1(n1245), .B2(timer[3]), .ZN(n1092) );
  ND2D0BWP12T30P140 U1489 ( .A1(i_wb_data[3]), .A2(n975), .ZN(n1673) );
  AOI32D0BWP12T30P140 U1490 ( .A1(n1093), .A2(n1092), .A3(n1673), .B1(n1245), 
        .B2(n1092), .ZN(n833) );
  AOI22D0BWP12T30P140 U1491 ( .A1(i_wb_data[1]), .A2(n974), .B1(n1343), .B2(
        tm_start[1]), .ZN(n1097) );
  NR2D0BWP12T30P140 U1492 ( .A1(n974), .A2(n1094), .ZN(n1243) );
  AOI32D0BWP12T30P140 U1493 ( .A1(timer[1]), .A2(n1243), .A3(timer[0]), .B1(
        n1241), .B2(n1243), .ZN(n1096) );
  INVD0BWP12T30P140 U1494 ( .I(timer[1]), .ZN(n1095) );
  AOI32D0BWP12T30P140 U1495 ( .A1(n1097), .A2(n1246), .A3(n1096), .B1(n1245), 
        .B2(n1095), .ZN(n835) );
  INVD0BWP12T30P140 U1496 ( .I(ck_sub[7]), .ZN(N743) );
  ND2D0BWP12T30P140 U1497 ( .A1(ck_sub[6]), .A2(n1098), .ZN(n1232) );
  NR2D0BWP12T30P140 U1498 ( .A1(N743), .A2(n1232), .ZN(N877) );
  OAI31D0BWP12T30P140 U1499 ( .A1(clock[25]), .A2(n1100), .A3(n1099), .B(
        clock[24]), .ZN(n1102) );
  NR2D0BWP12T30P140 U1500 ( .A1(clock[24]), .A2(clock[25]), .ZN(n1739) );
  OAI21D0BWP12T30P140 U1501 ( .A1(ck_last_clock[20]), .A2(ck_last_clock[21]), 
        .B(n1739), .ZN(n1101) );
  OAI211D0BWP12T30P140 U1502 ( .A1(n1104), .A2(n1103), .B(n1102), .C(n1101), 
        .ZN(n954) );
  OAI21D0BWP12T30P140 U1503 ( .A1(n1105), .A2(n1428), .B(stopwatch[11]), .ZN(
        n1106) );
  OAI21D0BWP12T30P140 U1504 ( .A1(n1107), .A2(n1751), .B(n1106), .ZN(n889) );
  AOI22D0BWP12T30P140 U1505 ( .A1(n1668), .A2(i_wb_data[16]), .B1(n1708), .B2(
        tm_start[16]), .ZN(n1111) );
  ND2D0BWP12T30P140 U1506 ( .A1(n1579), .A2(n1108), .ZN(n1109) );
  AOI32D0BWP12T30P140 U1507 ( .A1(n1111), .A2(n1110), .A3(n1109), .B1(n1167), 
        .B2(n1108), .ZN(n820) );
  INVD0BWP12T30P140 U1508 ( .I(ck_sub[4]), .ZN(n1217) );
  NR2D0BWP12T30P140 U1509 ( .A1(r_hack_carry), .A2(i_hack), .ZN(n1214) );
  INVD0BWP12T30P140 U1510 ( .I(n1214), .ZN(n1350) );
  CKBD0BWP12T30P140 U1511 ( .I(n1350), .Z(n1349) );
  MAOI22D0BWP12T30P140 U1512 ( .A1(n1217), .A2(n1349), .B1(n1349), .B2(
        hack_time[4]), .ZN(n688) );
  AO22D0BWP12T30P140 U1513 ( .A1(ck_sub[0]), .A2(n1113), .B1(ck_sub[1]), .B2(
        n1112), .Z(n924) );
  AOI21D0BWP12T30P140 U1514 ( .A1(stopwatch[21]), .A2(stopwatch[22]), .B(
        stopwatch[23]), .ZN(n1366) );
  INVD0BWP12T30P140 U1515 ( .I(n1366), .ZN(n1115) );
  INVD0BWP12T30P140 U1516 ( .I(stopwatch[19]), .ZN(n1748) );
  NR2D0BWP12T30P140 U1517 ( .A1(n1114), .A2(n1748), .ZN(n1367) );
  AN2D0BWP12T30P140 U1518 ( .A1(stopwatch[23]), .A2(n1662), .Z(n877) );
  INVD0BWP12T30P140 U1519 ( .I(ck_sub[0]), .ZN(n1607) );
  CKBD0BWP12T30P140 U1520 ( .I(n1350), .Z(n1158) );
  MAOI22D0BWP12T30P140 U1521 ( .A1(n1607), .A2(n1158), .B1(n1158), .B2(
        hack_time[0]), .ZN(n684) );
  INVD0BWP12T30P140 U1522 ( .I(stopwatch[15]), .ZN(n1752) );
  AOI21D0BWP12T30P140 U1523 ( .A1(stopwatch[13]), .A2(stopwatch[14]), .B(
        stopwatch[15]), .ZN(n1396) );
  INVD0BWP12T30P140 U1524 ( .I(sw_pps), .ZN(n1757) );
  NR2D0BWP12T30P140 U1525 ( .A1(n1752), .A2(n1502), .ZN(n885) );
  ND2D0BWP12T30P140 U1526 ( .A1(sw_ppm), .A2(n1754), .ZN(n1369) );
  NR2D0BWP12T30P140 U1527 ( .A1(n1367), .A2(n1369), .ZN(n1445) );
  ND3D0BWP12T30P140 U1528 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .A3(n1445), 
        .ZN(n1658) );
  INVD0BWP12T30P140 U1529 ( .I(stopwatch[18]), .ZN(n1657) );
  NR2D0BWP12T30P140 U1530 ( .A1(n1749), .A2(sw_ppm), .ZN(n1444) );
  OAI21D0BWP12T30P140 U1531 ( .A1(n1444), .A2(n1445), .B(stopwatch[19]), .ZN(
        n1117) );
  OAI21D0BWP12T30P140 U1532 ( .A1(n1658), .A2(n1657), .B(n1117), .ZN(n881) );
  OA22D0BWP12T30P140 U1533 ( .A1(n1349), .A2(hack_time[2]), .B1(ck_sub[2]), 
        .B2(n1214), .Z(n686) );
  AOI22D0BWP12T30P140 U1534 ( .A1(tm_start[4]), .A2(n1708), .B1(n1161), .B2(
        n1118), .ZN(n1121) );
  ND2D0BWP12T30P140 U1535 ( .A1(n1668), .A2(i_wb_data[4]), .ZN(n1676) );
  AOI32D0BWP12T30P140 U1536 ( .A1(n1121), .A2(n1120), .A3(n1676), .B1(n1119), 
        .B2(n1118), .ZN(n832) );
  AOI22D0BWP12T30P140 U1537 ( .A1(n1340), .A2(n1161), .B1(n1708), .B2(
        tm_start[14]), .ZN(n1125) );
  AOI21D0BWP12T30P140 U1538 ( .A1(n1339), .A2(n1122), .B(n1706), .ZN(n1641) );
  AOI32D0BWP12T30P140 U1539 ( .A1(timer[13]), .A2(timer[14]), .A3(n1161), .B1(
        n1641), .B2(timer[14]), .ZN(n1124) );
  ND2D0BWP12T30P140 U1540 ( .A1(n1668), .A2(i_wb_data[14]), .ZN(n1672) );
  MAOI22D0BWP12T30P140 U1541 ( .A1(n1126), .A2(n1349), .B1(n1350), .B2(
        hack_time[3]), .ZN(n687) );
  INVD0BWP12T30P140 U1542 ( .I(stopwatch[25]), .ZN(n1127) );
  OAI21D0BWP12T30P140 U1543 ( .A1(stopwatch[24]), .A2(stopwatch[25]), .B(n1258), .ZN(n1257) );
  OAI22D0BWP12T30P140 U1544 ( .A1(n1127), .A2(n1402), .B1(n1257), .B2(n1403), 
        .ZN(n875) );
  OA22D0BWP12T30P140 U1545 ( .A1(n1349), .A2(hack_time[1]), .B1(ck_sub[1]), 
        .B2(n1214), .Z(n685) );
  NR3D0BWP12T30P140 U1546 ( .A1(i_wb_addr[0]), .A2(i_wb_addr[1]), .A3(n1351), 
        .ZN(n1717) );
  CKBD0BWP12T30P140 U1547 ( .I(n1717), .Z(n1647) );
  AOI22D0BWP12T30P140 U1548 ( .A1(n1648), .A2(timer[0]), .B1(ckspeed[0]), .B2(
        n1647), .ZN(n1131) );
  NR3D0BWP12T30P140 U1549 ( .A1(i_wb_addr[0]), .A2(n1352), .A3(n1351), .ZN(
        n1714) );
  NR3D0BWP12T30P140 U1550 ( .A1(i_wb_addr[1]), .A2(n1353), .A3(n1351), .ZN(
        n1619) );
  AOI22D0BWP12T30P140 U1551 ( .A1(hack_counter[8]), .A2(n1714), .B1(
        hack_time[0]), .B2(n1619), .ZN(n1130) );
  INVD0BWP12T30P140 U1552 ( .I(n1549), .ZN(n1651) );
  CKBD0BWP12T30P140 U1553 ( .I(n1650), .Z(n1598) );
  AOI22D0BWP12T30P140 U1554 ( .A1(n1651), .A2(stopwatch[0]), .B1(n1598), .B2(
        alarm_time[0]), .ZN(n1129) );
  ND2D0BWP12T30P140 U1555 ( .A1(n1620), .A2(ck_last_clock[0]), .ZN(n1128) );
  ND4D0BWP12T30P140 U1556 ( .A1(n1131), .A2(n1130), .A3(n1129), .A4(n1128), 
        .ZN(N839) );
  CKBD0BWP12T30P140 U1557 ( .I(n1648), .Z(n1642) );
  AOI22D0BWP12T30P140 U1558 ( .A1(n1642), .A2(timer[1]), .B1(n1647), .B2(
        ckspeed[1]), .ZN(n1135) );
  CKBD0BWP12T30P140 U1559 ( .I(n1619), .Z(n1649) );
  AOI22D0BWP12T30P140 U1560 ( .A1(n1714), .A2(hack_counter[9]), .B1(n1649), 
        .B2(hack_time[1]), .ZN(n1134) );
  CKBD0BWP12T30P140 U1561 ( .I(n1651), .Z(n1715) );
  AOI22D0BWP12T30P140 U1562 ( .A1(n1715), .A2(stopwatch[1]), .B1(n1598), .B2(
        alarm_time[1]), .ZN(n1133) );
  CKBD0BWP12T30P140 U1563 ( .I(n1620), .Z(n1652) );
  ND2D0BWP12T30P140 U1564 ( .A1(n1652), .A2(ck_last_clock[1]), .ZN(n1132) );
  ND4D0BWP12T30P140 U1565 ( .A1(n1135), .A2(n1134), .A3(n1133), .A4(n1132), 
        .ZN(N840) );
  AOI22D0BWP12T30P140 U1566 ( .A1(n1642), .A2(timer[2]), .B1(n1717), .B2(
        ckspeed[2]), .ZN(n1139) );
  CKBD0BWP12T30P140 U1567 ( .I(n1714), .Z(n1610) );
  AOI22D0BWP12T30P140 U1568 ( .A1(n1610), .A2(hack_counter[10]), .B1(n1619), 
        .B2(hack_time[2]), .ZN(n1138) );
  AOI22D0BWP12T30P140 U1569 ( .A1(n1651), .A2(stopwatch[2]), .B1(n1598), .B2(
        alarm_time[2]), .ZN(n1137) );
  ND2D0BWP12T30P140 U1570 ( .A1(n1620), .A2(ck_last_clock[2]), .ZN(n1136) );
  ND4D0BWP12T30P140 U1571 ( .A1(n1139), .A2(n1138), .A3(n1137), .A4(n1136), 
        .ZN(N841) );
  AOI22D0BWP12T30P140 U1572 ( .A1(n1642), .A2(timer[3]), .B1(n1717), .B2(
        ckspeed[3]), .ZN(n1143) );
  AOI22D0BWP12T30P140 U1573 ( .A1(n1610), .A2(hack_counter[11]), .B1(n1649), 
        .B2(hack_time[3]), .ZN(n1142) );
  AOI22D0BWP12T30P140 U1574 ( .A1(n1715), .A2(stopwatch[3]), .B1(n1598), .B2(
        alarm_time[3]), .ZN(n1141) );
  ND2D0BWP12T30P140 U1575 ( .A1(n1620), .A2(ck_last_clock[3]), .ZN(n1140) );
  ND4D0BWP12T30P140 U1576 ( .A1(n1143), .A2(n1142), .A3(n1141), .A4(n1140), 
        .ZN(N842) );
  AOI22D0BWP12T30P140 U1577 ( .A1(n1642), .A2(timer[4]), .B1(n1717), .B2(
        ckspeed[4]), .ZN(n1147) );
  AOI22D0BWP12T30P140 U1578 ( .A1(n1610), .A2(hack_counter[12]), .B1(n1619), 
        .B2(hack_time[4]), .ZN(n1146) );
  AOI22D0BWP12T30P140 U1579 ( .A1(n1651), .A2(stopwatch[4]), .B1(n1598), .B2(
        alarm_time[4]), .ZN(n1145) );
  ND2D0BWP12T30P140 U1580 ( .A1(n1620), .A2(ck_last_clock[4]), .ZN(n1144) );
  ND4D0BWP12T30P140 U1581 ( .A1(n1147), .A2(n1146), .A3(n1145), .A4(n1144), 
        .ZN(N843) );
  AOI22D0BWP12T30P140 U1582 ( .A1(n1642), .A2(timer[5]), .B1(n1717), .B2(
        ckspeed[5]), .ZN(n1151) );
  AOI22D0BWP12T30P140 U1583 ( .A1(n1610), .A2(hack_counter[13]), .B1(n1649), 
        .B2(hack_time[5]), .ZN(n1150) );
  AOI22D0BWP12T30P140 U1584 ( .A1(n1715), .A2(stopwatch[5]), .B1(n1598), .B2(
        alarm_time[5]), .ZN(n1149) );
  ND2D0BWP12T30P140 U1585 ( .A1(n1620), .A2(ck_last_clock[5]), .ZN(n1148) );
  ND4D0BWP12T30P140 U1586 ( .A1(n1151), .A2(n1150), .A3(n1149), .A4(n1148), 
        .ZN(N844) );
  AOI22D0BWP12T30P140 U1587 ( .A1(n1642), .A2(timer[6]), .B1(n1717), .B2(
        ckspeed[6]), .ZN(n1155) );
  AOI22D0BWP12T30P140 U1588 ( .A1(n1610), .A2(hack_counter[14]), .B1(n1619), 
        .B2(hack_time[6]), .ZN(n1154) );
  AOI22D0BWP12T30P140 U1589 ( .A1(n1651), .A2(stopwatch[6]), .B1(n1598), .B2(
        alarm_time[6]), .ZN(n1153) );
  ND2D0BWP12T30P140 U1590 ( .A1(n1620), .A2(ck_last_clock[6]), .ZN(n1152) );
  ND4D0BWP12T30P140 U1591 ( .A1(n1155), .A2(n1154), .A3(n1153), .A4(n1152), 
        .ZN(N845) );
  INVD0BWP12T30P140 U1592 ( .I(clock[19]), .ZN(n1768) );
  MAOI22D0BWP12T30P140 U1593 ( .A1(n1768), .A2(n1349), .B1(n1349), .B2(
        hack_time[27]), .ZN(n711) );
  INVD0BWP12T30P140 U1594 ( .I(clock[18]), .ZN(n1767) );
  MAOI22D0BWP12T30P140 U1595 ( .A1(n1767), .A2(n1350), .B1(n1158), .B2(
        hack_time[26]), .ZN(n710) );
  OA22D0BWP12T30P140 U1596 ( .A1(n1187), .A2(ck_counter[32]), .B1(
        hack_counter[32]), .B2(i_hack), .Z(n746) );
  INVD0BWP12T30P140 U1597 ( .I(clock[17]), .ZN(n1410) );
  MAOI22D0BWP12T30P140 U1598 ( .A1(n1410), .A2(n1350), .B1(n1158), .B2(
        hack_time[25]), .ZN(n709) );
  INVD0BWP12T30P140 U1599 ( .I(clock[16]), .ZN(n1416) );
  MAOI22D0BWP12T30P140 U1600 ( .A1(n1416), .A2(n1349), .B1(n1158), .B2(
        hack_time[24]), .ZN(n708) );
  OA22D0BWP12T30P140 U1601 ( .A1(n1187), .A2(ck_counter[38]), .B1(
        hack_counter[38]), .B2(i_hack), .Z(n752) );
  INVD0BWP12T30P140 U1602 ( .I(clock[15]), .ZN(n1401) );
  MAOI22D0BWP12T30P140 U1603 ( .A1(n1401), .A2(n1349), .B1(n1158), .B2(
        hack_time[23]), .ZN(n707) );
  MAOI22D0BWP12T30P140 U1604 ( .A1(n1376), .A2(n1350), .B1(n1158), .B2(
        hack_time[22]), .ZN(n706) );
  INVD0BWP12T30P140 U1605 ( .I(i_wb_data[6]), .ZN(n1361) );
  INVD0BWP12T30P140 U1606 ( .I(alarm_time[6]), .ZN(n1294) );
  AOI22D0BWP12T30P140 U1607 ( .A1(n1157), .A2(n1361), .B1(n1294), .B2(n1156), 
        .ZN(n938) );
  INVD0BWP12T30P140 U1608 ( .I(clock[13]), .ZN(n1472) );
  MAOI22D0BWP12T30P140 U1609 ( .A1(n1472), .A2(n1350), .B1(n1158), .B2(
        hack_time[21]), .ZN(n705) );
  MAOI22D0BWP12T30P140 U1610 ( .A1(n1458), .A2(n1350), .B1(n1158), .B2(
        hack_time[20]), .ZN(n704) );
  INVD0BWP12T30P140 U1611 ( .I(i_wb_data[12]), .ZN(n1357) );
  INVD0BWP12T30P140 U1612 ( .I(alarm_time[12]), .ZN(n1322) );
  AOI22D0BWP12T30P140 U1613 ( .A1(n1252), .A2(n1357), .B1(n1322), .B2(n1251), 
        .ZN(n944) );
  MAOI22D0BWP12T30P140 U1614 ( .A1(n1527), .A2(n1158), .B1(n1158), .B2(
        hack_time[19]), .ZN(n703) );
  INVD0BWP12T30P140 U1615 ( .I(clock[10]), .ZN(n1372) );
  MAOI22D0BWP12T30P140 U1616 ( .A1(n1372), .A2(n1350), .B1(n1158), .B2(
        hack_time[18]), .ZN(n702) );
  INVD0BWP12T30P140 U1617 ( .I(i_wb_data[13]), .ZN(n1475) );
  INVD0BWP12T30P140 U1618 ( .I(alarm_time[13]), .ZN(n1308) );
  AOI22D0BWP12T30P140 U1619 ( .A1(n1252), .A2(n1475), .B1(n1308), .B2(n1251), 
        .ZN(n945) );
  INVD0BWP12T30P140 U1620 ( .I(clock[9]), .ZN(n1421) );
  MAOI22D0BWP12T30P140 U1621 ( .A1(n1421), .A2(n1350), .B1(n1158), .B2(
        hack_time[17]), .ZN(n701) );
  MAOI22D0BWP12T30P140 U1622 ( .A1(n1420), .A2(n1158), .B1(n1158), .B2(
        hack_time[16]), .ZN(n700) );
  OA22D0BWP12T30P140 U1623 ( .A1(n1187), .A2(ck_counter[34]), .B1(
        hack_counter[34]), .B2(i_hack), .Z(n748) );
  MAOI22D0BWP12T30P140 U1624 ( .A1(n1384), .A2(n1349), .B1(n1158), .B2(
        hack_time[15]), .ZN(n699) );
  INVD0BWP12T30P140 U1625 ( .I(clock[6]), .ZN(n1462) );
  MAOI22D0BWP12T30P140 U1626 ( .A1(n1462), .A2(n1350), .B1(n1158), .B2(
        hack_time[14]), .ZN(n698) );
  OA22D0BWP12T30P140 U1627 ( .A1(n1187), .A2(ck_counter[36]), .B1(
        hack_counter[36]), .B2(i_hack), .Z(n750) );
  MAOI22D0BWP12T30P140 U1628 ( .A1(n1440), .A2(n1350), .B1(n1350), .B2(
        hack_time[13]), .ZN(n697) );
  INVD0BWP12T30P140 U1629 ( .I(clock[4]), .ZN(n1437) );
  MAOI22D0BWP12T30P140 U1630 ( .A1(n1437), .A2(n1349), .B1(n1158), .B2(
        hack_time[12]), .ZN(n696) );
  INVD0BWP12T30P140 U1631 ( .I(sw_sub[7]), .ZN(n1760) );
  NR2D0BWP12T30P140 U1632 ( .A1(n1749), .A2(n1760), .ZN(N619) );
  MAOI22D0BWP12T30P140 U1633 ( .A1(n1393), .A2(n1349), .B1(n1350), .B2(
        hack_time[11]), .ZN(n695) );
  INVD0BWP12T30P140 U1634 ( .I(clock[2]), .ZN(n1394) );
  MAOI22D0BWP12T30P140 U1635 ( .A1(n1394), .A2(n1350), .B1(n1158), .B2(
        hack_time[10]), .ZN(n694) );
  MAOI22D0BWP12T30P140 U1636 ( .A1(n1432), .A2(n1349), .B1(n1349), .B2(
        hack_time[9]), .ZN(n693) );
  INVD0BWP12T30P140 U1637 ( .I(clock[0]), .ZN(n1389) );
  MAOI22D0BWP12T30P140 U1638 ( .A1(n1389), .A2(n1349), .B1(n1349), .B2(
        hack_time[8]), .ZN(n692) );
  NR2D0BWP12T30P140 U1639 ( .A1(n1749), .A2(n1761), .ZN(N617) );
  MAOI22D0BWP12T30P140 U1640 ( .A1(N743), .A2(n1349), .B1(n1350), .B2(
        hack_time[7]), .ZN(n691) );
  MAOI22D0BWP12T30P140 U1641 ( .A1(n1211), .A2(n1350), .B1(n1158), .B2(
        hack_time[5]), .ZN(n689) );
  NR2D0BWP12T30P140 U1642 ( .A1(n1749), .A2(n1181), .ZN(N616) );
  CKMUX2D0BWP12T30P140 U1643 ( .I0(ck_counter[29]), .I1(hack_counter[29]), .S(
        n1187), .Z(n743) );
  CKMUX2D0BWP12T30P140 U1644 ( .I0(ck_counter[28]), .I1(hack_counter[28]), .S(
        n1187), .Z(n742) );
  INVD0BWP12T30P140 U1645 ( .I(n1159), .ZN(n1162) );
  MOAI22D0BWP12T30P140 U1646 ( .A1(n1250), .A2(n1537), .B1(n1343), .B2(
        tm_start[18]), .ZN(n1160) );
  AOI31D0BWP12T30P140 U1647 ( .A1(timer[19]), .A2(n1162), .A3(n1161), .B(n1160), .ZN(n1166) );
  OAI31D0BWP12T30P140 U1648 ( .A1(timer[16]), .A2(timer[17]), .A3(n1163), .B(
        n1579), .ZN(n1165) );
  OAI22D0BWP12T30P140 U1649 ( .A1(n1167), .A2(n1166), .B1(n1165), .B2(n1164), 
        .ZN(n818) );
  CKMUX2D0BWP12T30P140 U1650 ( .I0(ck_counter[27]), .I1(hack_counter[27]), .S(
        n1187), .Z(n741) );
  CKMUX2D0BWP12T30P140 U1651 ( .I0(ck_counter[26]), .I1(hack_counter[26]), .S(
        n1187), .Z(n740) );
  OAI21D0BWP12T30P140 U1652 ( .A1(n1373), .A2(n1697), .B(ck_carry), .ZN(n1168)
         );
  MOAI22D0BWP12T30P140 U1653 ( .A1(n1689), .A2(n1236), .B1(ledreg[4]), .B2(
        n1168), .ZN(n805) );
  CKMUX2D0BWP12T30P140 U1654 ( .I0(ck_counter[25]), .I1(hack_counter[25]), .S(
        n1188), .Z(n739) );
  CKMUX2D0BWP12T30P140 U1655 ( .I0(ck_counter[24]), .I1(hack_counter[24]), .S(
        n1187), .Z(n738) );
  CKMUX2D0BWP12T30P140 U1656 ( .I0(ck_counter[8]), .I1(hack_counter[8]), .S(
        n1188), .Z(n722) );
  CKMUX2D0BWP12T30P140 U1657 ( .I0(ck_counter[23]), .I1(hack_counter[23]), .S(
        n1188), .Z(n737) );
  CKMUX2D0BWP12T30P140 U1658 ( .I0(ck_counter[22]), .I1(hack_counter[22]), .S(
        n1187), .Z(n736) );
  ND2D0BWP12T30P140 U1659 ( .A1(n1234), .A2(ledreg[15]), .ZN(n1233) );
  NR2D0BWP12T30P140 U1660 ( .A1(n1233), .A2(n1170), .ZN(n1171) );
  NR2D0BWP12T30P140 U1661 ( .A1(n1171), .A2(n1236), .ZN(n1169) );
  NR2D0BWP12T30P140 U1662 ( .A1(n1169), .A2(n1745), .ZN(n1173) );
  OAI32D0BWP12T30P140 U1663 ( .A1(ledreg[16]), .A2(n1233), .A3(n1236), .B1(
        n1173), .B2(n1170), .ZN(n793) );
  CKMUX2D0BWP12T30P140 U1664 ( .I0(ck_counter[21]), .I1(hack_counter[21]), .S(
        n1188), .Z(n735) );
  CKMUX2D0BWP12T30P140 U1665 ( .I0(ck_counter[20]), .I1(hack_counter[20]), .S(
        n1187), .Z(n734) );
  INVD0BWP12T30P140 U1666 ( .I(n1171), .ZN(n1174) );
  OAI32D0BWP12T30P140 U1667 ( .A1(ledreg[17]), .A2(n1174), .A3(n1236), .B1(
        n1173), .B2(n1172), .ZN(n792) );
  CKMUX2D0BWP12T30P140 U1668 ( .I0(ck_counter[19]), .I1(hack_counter[19]), .S(
        n1187), .Z(n733) );
  CKMUX2D0BWP12T30P140 U1669 ( .I0(ck_counter[18]), .I1(hack_counter[18]), .S(
        n1188), .Z(n732) );
  AOI21D0BWP12T30P140 U1670 ( .A1(n1180), .A2(n1221), .B(n1175), .ZN(n1176) );
  OAI32D0BWP12T30P140 U1671 ( .A1(sw_sub[7]), .A2(n1221), .A3(n1177), .B1(
        n1176), .B2(n1760), .ZN(n893) );
  CKMUX2D0BWP12T30P140 U1672 ( .I0(ck_counter[17]), .I1(hack_counter[17]), .S(
        n1187), .Z(n731) );
  CKMUX2D0BWP12T30P140 U1673 ( .I0(ck_counter[16]), .I1(hack_counter[16]), .S(
        n1188), .Z(n730) );
  AOI21D0BWP12T30P140 U1674 ( .A1(n1180), .A2(n1179), .B(n1178), .ZN(n1182) );
  OAI32D0BWP12T30P140 U1675 ( .A1(sw_sub[4]), .A2(n1209), .A3(n1183), .B1(
        n1182), .B2(n1181), .ZN(n896) );
  CKMUX2D0BWP12T30P140 U1676 ( .I0(ck_counter[15]), .I1(hack_counter[15]), .S(
        n1187), .Z(n729) );
  CKMUX2D0BWP12T30P140 U1677 ( .I0(ck_counter[14]), .I1(hack_counter[14]), .S(
        n1188), .Z(n728) );
  ND3D0BWP12T30P140 U1678 ( .A1(tm_sub[3]), .A2(n1224), .A3(tm_sub[4]), .ZN(
        n1196) );
  OAI21D0BWP12T30P140 U1679 ( .A1(n1745), .A2(n1196), .B(n1579), .ZN(n1184) );
  INVD0BWP12T30P140 U1680 ( .I(tm_sub[5]), .ZN(n1197) );
  OAI32D0BWP12T30P140 U1681 ( .A1(tm_sub[5]), .A2(n1581), .A3(n1196), .B1(
        n1184), .B2(n1197), .ZN(n841) );
  CKMUX2D0BWP12T30P140 U1682 ( .I0(ck_counter[13]), .I1(hack_counter[13]), .S(
        n1188), .Z(n727) );
  CKMUX2D0BWP12T30P140 U1683 ( .I0(ck_counter[12]), .I1(hack_counter[12]), .S(
        n1188), .Z(n726) );
  MAOI22D0BWP12T30P140 U1684 ( .A1(i_hack), .A2(n1185), .B1(hack_counter[33]), 
        .B2(i_hack), .ZN(n747) );
  CKMUX2D0BWP12T30P140 U1685 ( .I0(ck_counter[11]), .I1(hack_counter[11]), .S(
        n1188), .Z(n725) );
  CKMUX2D0BWP12T30P140 U1686 ( .I0(ck_counter[10]), .I1(hack_counter[10]), .S(
        n1188), .Z(n724) );
  INVD0BWP12T30P140 U1687 ( .I(clock[21]), .ZN(n1772) );
  MAOI22D0BWP12T30P140 U1688 ( .A1(n1772), .A2(n1350), .B1(n1349), .B2(
        hack_time[29]), .ZN(n713) );
  MAOI22D0BWP12T30P140 U1689 ( .A1(i_hack), .A2(n1186), .B1(hack_counter[39]), 
        .B2(i_hack), .ZN(n753) );
  CKMUX2D0BWP12T30P140 U1690 ( .I0(ck_counter[9]), .I1(hack_counter[9]), .S(
        n1188), .Z(n723) );
  CKMUX2D0BWP12T30P140 U1691 ( .I0(ck_counter[31]), .I1(hack_counter[31]), .S(
        n1187), .Z(n745) );
  INVD0BWP12T30P140 U1692 ( .I(i_wb_data[22]), .ZN(n1589) );
  MAOI22D0BWP12T30P140 U1693 ( .A1(n1395), .A2(n1589), .B1(clock[22]), .B2(
        n1395), .ZN(n788) );
  CKMUX2D0BWP12T30P140 U1694 ( .I0(ck_counter[30]), .I1(hack_counter[30]), .S(
        n1187), .Z(n744) );
  CKMUX2D0BWP12T30P140 U1695 ( .I0(ck_counter[7]), .I1(hack_counter[7]), .S(
        n1187), .Z(n721) );
  INVD0BWP12T30P140 U1696 ( .I(i_wb_data[23]), .ZN(n1517) );
  MAOI22D0BWP12T30P140 U1697 ( .A1(n1395), .A2(n1517), .B1(clock[23]), .B2(
        n1395), .ZN(n789) );
  CKMUX2D0BWP12T30P140 U1698 ( .I0(ck_counter[6]), .I1(hack_counter[6]), .S(
        n1188), .Z(n720) );
  CKMUX2D0BWP12T30P140 U1699 ( .I0(ck_counter[5]), .I1(hack_counter[5]), .S(
        n1187), .Z(n719) );
  MAOI22D0BWP12T30P140 U1700 ( .A1(n975), .A2(n1475), .B1(tm_start[13]), .B2(
        n974), .ZN(n855) );
  CKMUX2D0BWP12T30P140 U1701 ( .I0(ck_counter[4]), .I1(hack_counter[4]), .S(
        n1188), .Z(n718) );
  CKMUX2D0BWP12T30P140 U1702 ( .I0(ck_counter[3]), .I1(hack_counter[3]), .S(
        n1187), .Z(n717) );
  INVD0BWP12T30P140 U1703 ( .I(i_wb_data[10]), .ZN(n1359) );
  MAOI22D0BWP12T30P140 U1704 ( .A1(n974), .A2(n1359), .B1(tm_start[10]), .B2(
        n975), .ZN(n858) );
  CKMUX2D0BWP12T30P140 U1705 ( .I0(ck_counter[2]), .I1(hack_counter[2]), .S(
        n1188), .Z(n716) );
  CKMUX2D0BWP12T30P140 U1706 ( .I0(ck_counter[1]), .I1(hack_counter[1]), .S(
        n1188), .Z(n715) );
  MAOI22D0BWP12T30P140 U1707 ( .A1(n975), .A2(n1360), .B1(tm_start[8]), .B2(
        n974), .ZN(n860) );
  ND2D0BWP12T30P140 U1708 ( .A1(tm_sub[1]), .A2(tm_sub[0]), .ZN(n1192) );
  OAI21D0BWP12T30P140 U1709 ( .A1(n1190), .A2(n1189), .B(tm_sub[2]), .ZN(n1191) );
  OAI31D0BWP12T30P140 U1710 ( .A1(tm_sub[2]), .A2(n1581), .A3(n1192), .B(n1191), .ZN(n838) );
  OA21D0BWP12T30P140 U1711 ( .A1(ck_counter[32]), .A2(n1194), .B(n1193), .Z(
        N100) );
  MAOI22D0BWP12T30P140 U1712 ( .A1(n974), .A2(n1385), .B1(tm_start[7]), .B2(
        n975), .ZN(n861) );
  INVD0BWP12T30P140 U1713 ( .I(i_wb_data[24]), .ZN(n1523) );
  MAOI22D0BWP12T30P140 U1714 ( .A1(n1335), .A2(n1523), .B1(al_enabled), .B2(
        n1335), .ZN(n786) );
  MAOI22D0BWP12T30P140 U1715 ( .A1(n1238), .A2(n1195), .B1(n1195), .B2(
        i_wb_data[24]), .ZN(n812) );
  MAOI22D0BWP12T30P140 U1716 ( .A1(n975), .A2(n1364), .B1(tm_start[1]), .B2(
        n974), .ZN(n867) );
  OA31D0BWP12T30P140 U1717 ( .A1(n1745), .A2(n1197), .A3(n1196), .B(n1579), 
        .Z(n1254) );
  NR2D0BWP12T30P140 U1718 ( .A1(tm_sub[6]), .A2(n1581), .ZN(n1255) );
  NR2D0BWP12T30P140 U1719 ( .A1(n1197), .A2(n1196), .ZN(n1253) );
  AO22D0BWP12T30P140 U1720 ( .A1(tm_sub[6]), .A2(n1254), .B1(n1255), .B2(n1253), .Z(n842) );
  OAI211D0BWP12T30P140 U1721 ( .A1(n1199), .A2(ledreg[13]), .B(n1701), .C(
        n1198), .ZN(n1200) );
  OAI21D0BWP12T30P140 U1722 ( .A1(ck_carry), .A2(n1201), .B(n1200), .ZN(n796)
         );
  MAOI22D0BWP12T30P140 U1723 ( .A1(i_hack), .A2(n1480), .B1(hack_counter[35]), 
        .B2(i_hack), .ZN(n749) );
  OAI211D0BWP12T30P140 U1724 ( .A1(n1203), .A2(ledreg[11]), .B(n1701), .C(
        n1202), .ZN(n1204) );
  OAI21D0BWP12T30P140 U1725 ( .A1(ck_carry), .A2(n1205), .B(n1204), .ZN(n798)
         );
  ND2D0BWP12T30P140 U1726 ( .A1(sw_sub[1]), .A2(sw_sub[0]), .ZN(n1210) );
  OAI21D0BWP12T30P140 U1727 ( .A1(n1207), .A2(n1206), .B(sw_sub[2]), .ZN(n1208) );
  OAI31D0BWP12T30P140 U1728 ( .A1(sw_sub[2]), .A2(n1210), .A3(n1209), .B(n1208), .ZN(n898) );
  MAOI22D0BWP12T30P140 U1729 ( .A1(i_hack), .A2(n1483), .B1(hack_counter[37]), 
        .B2(i_hack), .ZN(n751) );
  OAI32D0BWP12T30P140 U1730 ( .A1(ck_sub[5]), .A2(n1608), .A3(n1213), .B1(
        n1212), .B2(n1211), .ZN(n928) );
  OA22D0BWP12T30P140 U1731 ( .A1(n1349), .A2(hack_time[6]), .B1(ck_sub[6]), 
        .B2(n1214), .Z(n690) );
  ND2D0BWP12T30P140 U1732 ( .A1(n1216), .A2(n1215), .ZN(n1218) );
  AOI32D0BWP12T30P140 U1733 ( .A1(n1220), .A2(ck_sub[4]), .A3(n1219), .B1(
        n1218), .B2(n1217), .ZN(n927) );
  NR2D0BWP12T30P140 U1734 ( .A1(n1749), .A2(n1221), .ZN(N618) );
  ND2D0BWP12T30P140 U1735 ( .A1(n1222), .A2(n1647), .ZN(n1365) );
  CKBD0BWP12T30P140 U1736 ( .I(n1625), .Z(n1627) );
  AOI22D0BWP12T30P140 U1737 ( .A1(n1627), .A2(n1450), .B1(n1223), .B2(n1365), 
        .ZN(n754) );
  ND2D0BWP12T30P140 U1738 ( .A1(tm_sub[3]), .A2(n1224), .ZN(n1228) );
  OAI21D0BWP12T30P140 U1739 ( .A1(n1226), .A2(n1225), .B(tm_sub[4]), .ZN(n1227) );
  OAI31D0BWP12T30P140 U1740 ( .A1(tm_sub[4]), .A2(n1581), .A3(n1228), .B(n1227), .ZN(n840) );
  NR2D0BWP12T30P140 U1741 ( .A1(n1230), .A2(n1229), .ZN(n1231) );
  OAI32D0BWP12T30P140 U1742 ( .A1(ck_sub[7]), .A2(n1608), .A3(n1232), .B1(
        n1231), .B2(N743), .ZN(n930) );
  MOAI22D0BWP12T30P140 U1743 ( .A1(n1250), .A2(n1537), .B1(tm_start[18]), .B2(
        n1704), .ZN(n850) );
  OAI21D0BWP12T30P140 U1744 ( .A1(n1234), .A2(ledreg[15]), .B(n1233), .ZN(
        n1235) );
  OAI22D0BWP12T30P140 U1745 ( .A1(ck_carry), .A2(n1237), .B1(n1236), .B2(n1235), .ZN(n794) );
  MOAI22D0BWP12T30P140 U1746 ( .A1(n1250), .A2(n1519), .B1(tm_start[16]), .B2(
        n1704), .ZN(n852) );
  MOAI22D0BWP12T30P140 U1747 ( .A1(n1250), .A2(n1357), .B1(tm_start[12]), .B2(
        n1704), .ZN(n856) );
  NR2D0BWP12T30P140 U1748 ( .A1(n1239), .A2(n1238), .ZN(N373) );
  AO21D0BWP12T30P140 U1749 ( .A1(timer[25]), .A2(n1250), .B(N373), .Z(n811) );
  MOAI22D0BWP12T30P140 U1750 ( .A1(n1250), .A2(n1578), .B1(tm_start[21]), .B2(
        n1704), .ZN(n847) );
  OAI21D0BWP12T30P140 U1751 ( .A1(n1241), .A2(n1244), .B(n1240), .ZN(n1242) );
  AOI22D0BWP12T30P140 U1752 ( .A1(n1343), .A2(tm_start[2]), .B1(n1243), .B2(
        n1242), .ZN(n1247) );
  ND2D0BWP12T30P140 U1753 ( .A1(i_wb_data[2]), .A2(n974), .ZN(n1703) );
  AOI32D0BWP12T30P140 U1754 ( .A1(n1247), .A2(n1246), .A3(n1703), .B1(n1245), 
        .B2(n1244), .ZN(n834) );
  INVD0BWP12T30P140 U1755 ( .I(stopwatch[30]), .ZN(n1249) );
  OAI22D0BWP12T30P140 U1756 ( .A1(n1249), .A2(n1261), .B1(n1260), .B2(n1248), 
        .ZN(n870) );
  MOAI22D0BWP12T30P140 U1757 ( .A1(n1250), .A2(n1361), .B1(tm_start[6]), .B2(
        n1704), .ZN(n862) );
  INVD0BWP12T30P140 U1758 ( .I(alarm_time[10]), .ZN(n1323) );
  AOI22D0BWP12T30P140 U1759 ( .A1(n1252), .A2(n1359), .B1(n1323), .B2(n1251), 
        .ZN(n942) );
  ND2D0BWP12T30P140 U1760 ( .A1(tm_sub[6]), .A2(n1253), .ZN(n1744) );
  OAI21D0BWP12T30P140 U1761 ( .A1(n1255), .A2(n1254), .B(tm_sub[7]), .ZN(n1256) );
  OAI31D0BWP12T30P140 U1762 ( .A1(tm_sub[7]), .A2(n1581), .A3(n1744), .B(n1256), .ZN(n843) );
  INVD0BWP12T30P140 U1763 ( .I(stopwatch[29]), .ZN(n1356) );
  OAI22D0BWP12T30P140 U1764 ( .A1(n1356), .A2(n1261), .B1(n1260), .B2(n1257), 
        .ZN(n871) );
  INVD0BWP12T30P140 U1765 ( .I(stopwatch[31]), .ZN(n1262) );
  NR2D0BWP12T30P140 U1766 ( .A1(n1548), .A2(n1258), .ZN(n1259) );
  MUX2ND0BWP12T30P140 U1767 ( .I0(stopwatch[27]), .I1(n1522), .S(n1259), .ZN(
        n1347) );
  OAI22D0BWP12T30P140 U1768 ( .A1(n1262), .A2(n1261), .B1(n1260), .B2(n1347), 
        .ZN(n869) );
  OAI22D0BWP12T30P140 U1769 ( .A1(n1527), .A2(alarm_time[11]), .B1(n1376), 
        .B2(alarm_time[14]), .ZN(n1263) );
  AOI221D0BWP12T30P140 U1770 ( .A1(n1527), .A2(alarm_time[11]), .B1(
        alarm_time[14]), .B2(n1376), .C(n1263), .ZN(n1270) );
  INVD0BWP12T30P140 U1771 ( .I(clock[20]), .ZN(n1769) );
  OAI22D0BWP12T30P140 U1772 ( .A1(n1769), .A2(alarm_time[20]), .B1(n1393), 
        .B2(alarm_time[3]), .ZN(n1264) );
  AOI221D0BWP12T30P140 U1773 ( .A1(n1769), .A2(alarm_time[20]), .B1(
        alarm_time[3]), .B2(n1393), .C(n1264), .ZN(n1269) );
  OAI22D0BWP12T30P140 U1774 ( .A1(n1389), .A2(alarm_time[0]), .B1(n1384), .B2(
        alarm_time[7]), .ZN(n1265) );
  AOI221D0BWP12T30P140 U1775 ( .A1(n1389), .A2(alarm_time[0]), .B1(
        alarm_time[7]), .B2(n1384), .C(n1265), .ZN(n1268) );
  OAI22D0BWP12T30P140 U1776 ( .A1(n1440), .A2(alarm_time[5]), .B1(n1294), .B2(
        clock[6]), .ZN(n1266) );
  AOI221D0BWP12T30P140 U1777 ( .A1(n1440), .A2(alarm_time[5]), .B1(clock[6]), 
        .B2(n1294), .C(n1266), .ZN(n1267) );
  ND4D0BWP12T30P140 U1778 ( .A1(n1270), .A2(n1269), .A3(n1268), .A4(n1267), 
        .ZN(n1334) );
  OAI22D0BWP12T30P140 U1779 ( .A1(n1767), .A2(alarm_time[18]), .B1(n1421), 
        .B2(alarm_time[9]), .ZN(n1271) );
  AOI221D0BWP12T30P140 U1780 ( .A1(n1767), .A2(alarm_time[18]), .B1(
        alarm_time[9]), .B2(n1421), .C(n1271), .ZN(n1278) );
  OAI22D0BWP12T30P140 U1781 ( .A1(n1394), .A2(alarm_time[2]), .B1(n1401), .B2(
        alarm_time[15]), .ZN(n1272) );
  AOI221D0BWP12T30P140 U1782 ( .A1(n1394), .A2(alarm_time[2]), .B1(
        alarm_time[15]), .B2(n1401), .C(n1272), .ZN(n1277) );
  OAI22D0BWP12T30P140 U1783 ( .A1(n1416), .A2(alarm_time[16]), .B1(n1308), 
        .B2(clock[13]), .ZN(n1273) );
  AOI221D0BWP12T30P140 U1784 ( .A1(n1416), .A2(alarm_time[16]), .B1(clock[13]), 
        .B2(n1308), .C(n1273), .ZN(n1276) );
  OAI22D0BWP12T30P140 U1785 ( .A1(n1410), .A2(alarm_time[17]), .B1(n1772), 
        .B2(alarm_time[21]), .ZN(n1274) );
  AOI221D0BWP12T30P140 U1786 ( .A1(n1410), .A2(alarm_time[17]), .B1(
        alarm_time[21]), .B2(n1772), .C(n1274), .ZN(n1275) );
  ND4D0BWP12T30P140 U1787 ( .A1(n1278), .A2(n1277), .A3(n1276), .A4(n1275), 
        .ZN(n1333) );
  OAI22D0BWP12T30P140 U1788 ( .A1(n1281), .A2(ck_last_clock[8]), .B1(n1280), 
        .B2(ck_last_clock[1]), .ZN(n1279) );
  AOI221D0BWP12T30P140 U1789 ( .A1(n1281), .A2(ck_last_clock[8]), .B1(
        ck_last_clock[1]), .B2(n1280), .C(n1279), .ZN(n1289) );
  OAI22D0BWP12T30P140 U1790 ( .A1(n1284), .A2(ck_last_clock[3]), .B1(n1283), 
        .B2(ck_last_clock[21]), .ZN(n1282) );
  AOI221D0BWP12T30P140 U1791 ( .A1(n1284), .A2(ck_last_clock[3]), .B1(
        ck_last_clock[21]), .B2(n1283), .C(n1282), .ZN(n1288) );
  INVD0BWP12T30P140 U1792 ( .I(alarm_time[19]), .ZN(n1345) );
  OAI22D0BWP12T30P140 U1793 ( .A1(n1345), .A2(ck_last_clock[19]), .B1(n1286), 
        .B2(ck_last_clock[20]), .ZN(n1285) );
  AOI221D0BWP12T30P140 U1794 ( .A1(n1345), .A2(ck_last_clock[19]), .B1(
        ck_last_clock[20]), .B2(n1286), .C(n1285), .ZN(n1287) );
  ND3D0BWP12T30P140 U1795 ( .A1(n1289), .A2(n1288), .A3(n1287), .ZN(n1331) );
  OAI22D0BWP12T30P140 U1796 ( .A1(n1323), .A2(ck_last_clock[10]), .B1(n1291), 
        .B2(ck_last_clock[18]), .ZN(n1290) );
  AOI221D0BWP12T30P140 U1797 ( .A1(n1323), .A2(ck_last_clock[10]), .B1(
        ck_last_clock[18]), .B2(n1291), .C(n1290), .ZN(n1304) );
  OAI22D0BWP12T30P140 U1798 ( .A1(n1294), .A2(ck_last_clock[6]), .B1(n1293), 
        .B2(ck_last_clock[4]), .ZN(n1292) );
  AOI221D0BWP12T30P140 U1799 ( .A1(n1294), .A2(ck_last_clock[6]), .B1(
        ck_last_clock[4]), .B2(n1293), .C(n1292), .ZN(n1303) );
  OAI22D0BWP12T30P140 U1800 ( .A1(n1297), .A2(ck_last_clock[5]), .B1(n1296), 
        .B2(ck_last_clock[7]), .ZN(n1295) );
  AOI221D0BWP12T30P140 U1801 ( .A1(n1297), .A2(ck_last_clock[5]), .B1(
        ck_last_clock[7]), .B2(n1296), .C(n1295), .ZN(n1302) );
  OAI22D0BWP12T30P140 U1802 ( .A1(n1300), .A2(ck_last_clock[9]), .B1(n1299), 
        .B2(ck_last_clock[14]), .ZN(n1298) );
  AOI221D0BWP12T30P140 U1803 ( .A1(n1300), .A2(ck_last_clock[9]), .B1(
        ck_last_clock[14]), .B2(n1299), .C(n1298), .ZN(n1301) );
  ND4D0BWP12T30P140 U1804 ( .A1(n1304), .A2(n1303), .A3(n1302), .A4(n1301), 
        .ZN(n1330) );
  OAI22D0BWP12T30P140 U1805 ( .A1(n1322), .A2(ck_last_clock[12]), .B1(n1306), 
        .B2(ck_last_clock[0]), .ZN(n1305) );
  AOI221D0BWP12T30P140 U1806 ( .A1(n1322), .A2(ck_last_clock[12]), .B1(
        ck_last_clock[0]), .B2(n1306), .C(n1305), .ZN(n1319) );
  OAI22D0BWP12T30P140 U1807 ( .A1(n1309), .A2(ck_last_clock[11]), .B1(n1308), 
        .B2(ck_last_clock[13]), .ZN(n1307) );
  AOI221D0BWP12T30P140 U1808 ( .A1(n1309), .A2(ck_last_clock[11]), .B1(
        ck_last_clock[13]), .B2(n1308), .C(n1307), .ZN(n1318) );
  OAI22D0BWP12T30P140 U1809 ( .A1(n1312), .A2(ck_last_clock[15]), .B1(n1311), 
        .B2(ck_last_clock[16]), .ZN(n1310) );
  AOI221D0BWP12T30P140 U1810 ( .A1(n1312), .A2(ck_last_clock[15]), .B1(
        ck_last_clock[16]), .B2(n1311), .C(n1310), .ZN(n1317) );
  OAI22D0BWP12T30P140 U1811 ( .A1(n1315), .A2(ck_last_clock[2]), .B1(n1314), 
        .B2(ck_last_clock[17]), .ZN(n1313) );
  AOI221D0BWP12T30P140 U1812 ( .A1(n1315), .A2(ck_last_clock[2]), .B1(
        ck_last_clock[17]), .B2(n1314), .C(n1313), .ZN(n1316) );
  ND4D0BWP12T30P140 U1813 ( .A1(n1319), .A2(n1318), .A3(n1317), .A4(n1316), 
        .ZN(n1329) );
  OAI22D0BWP12T30P140 U1814 ( .A1(n1420), .A2(alarm_time[8]), .B1(n1437), .B2(
        alarm_time[4]), .ZN(n1320) );
  AOI221D0BWP12T30P140 U1815 ( .A1(n1420), .A2(alarm_time[8]), .B1(
        alarm_time[4]), .B2(n1437), .C(n1320), .ZN(n1326) );
  OAI22D0BWP12T30P140 U1816 ( .A1(n1432), .A2(alarm_time[1]), .B1(n1322), .B2(
        clock[12]), .ZN(n1321) );
  AOI221D0BWP12T30P140 U1817 ( .A1(n1432), .A2(alarm_time[1]), .B1(clock[12]), 
        .B2(n1322), .C(n1321), .ZN(n1325) );
  AOI22D0BWP12T30P140 U1818 ( .A1(clock[10]), .A2(n1323), .B1(alarm_time[10]), 
        .B2(n1372), .ZN(n1324) );
  ND4D0BWP12T30P140 U1819 ( .A1(al_enabled), .A2(n1326), .A3(n1325), .A4(n1324), .ZN(n1327) );
  AOI221D0BWP12T30P140 U1820 ( .A1(clock[19]), .A2(n1345), .B1(n1768), .B2(
        alarm_time[19]), .C(n1327), .ZN(n1328) );
  OAI31D0BWP12T30P140 U1821 ( .A1(n1331), .A2(n1330), .A3(n1329), .B(n1328), 
        .ZN(n1332) );
  NR3D0BWP12T30P140 U1822 ( .A1(n1334), .A2(n1333), .A3(n1332), .ZN(N675) );
  OAI21D0BWP12T30P140 U1823 ( .A1(i_wb_data[25]), .A2(n1523), .B(n1335), .ZN(
        n1336) );
  AO21D0BWP12T30P140 U1824 ( .A1(al_tripped), .A2(n1336), .B(N675), .Z(n901)
         );
  MAOI22D0BWP12T30P140 U1825 ( .A1(i_hack), .A2(n1337), .B1(hack_counter[0]), 
        .B2(i_hack), .ZN(n714) );
  AOI211D0BWP12T30P140 U1826 ( .A1(n1340), .A2(n1339), .B(n1338), .C(n1706), 
        .ZN(n1341) );
  AO211D0BWP12T30P140 U1827 ( .A1(n1343), .A2(tm_start[15]), .B(n1342), .C(
        n1341), .Z(n821) );
  INVD0BWP12T30P140 U1828 ( .I(i_wb_data[19]), .ZN(n1550) );
  AOI22D0BWP12T30P140 U1829 ( .A1(n1346), .A2(n1550), .B1(n1345), .B2(n1344), 
        .ZN(n951) );
  OAI22D0BWP12T30P140 U1830 ( .A1(n1522), .A2(n1402), .B1(n1347), .B2(n1403), 
        .ZN(n873) );
  AO21D0BWP12T30P140 U1831 ( .A1(tm_start[17]), .A2(n1635), .B(n1348), .Z(n851) );
  MAOI22D0BWP12T30P140 U1832 ( .A1(n1769), .A2(n1350), .B1(n1349), .B2(
        hack_time[28]), .ZN(n712) );
  NR3D0BWP12T30P140 U1833 ( .A1(n1353), .A2(n1352), .A3(n1351), .ZN(n1716) );
  AOI22D0BWP12T30P140 U1834 ( .A1(n1610), .A2(hack_counter[37]), .B1(n1716), 
        .B2(hack_counter[5]), .ZN(n1355) );
  AOI22D0BWP12T30P140 U1835 ( .A1(n1717), .A2(ckspeed[29]), .B1(n1649), .B2(
        hack_time[29]), .ZN(n1354) );
  OAI211D0BWP12T30P140 U1836 ( .A1(n1549), .A2(n1356), .B(n1355), .C(n1354), 
        .ZN(N868) );
  CKBD0BWP12T30P140 U1837 ( .I(n1625), .Z(n1588) );
  MAOI22D0BWP12T30P140 U1838 ( .A1(n1588), .A2(n1357), .B1(ckspeed[12]), .B2(
        n1625), .ZN(n766) );
  MAOI22D0BWP12T30P140 U1839 ( .A1(n1588), .A2(n1358), .B1(ckspeed[11]), .B2(
        n1625), .ZN(n765) );
  MAOI22D0BWP12T30P140 U1840 ( .A1(n1588), .A2(n1359), .B1(ckspeed[10]), .B2(
        n1625), .ZN(n764) );
  MAOI22D0BWP12T30P140 U1841 ( .A1(n1588), .A2(n1418), .B1(ckspeed[9]), .B2(
        n1627), .ZN(n763) );
  MAOI22D0BWP12T30P140 U1842 ( .A1(n1588), .A2(n1360), .B1(ckspeed[8]), .B2(
        n1588), .ZN(n762) );
  MAOI22D0BWP12T30P140 U1843 ( .A1(n1588), .A2(n1385), .B1(ckspeed[7]), .B2(
        n1625), .ZN(n761) );
  MAOI22D0BWP12T30P140 U1844 ( .A1(n1627), .A2(n1361), .B1(ckspeed[6]), .B2(
        n1625), .ZN(n760) );
  MAOI22D0BWP12T30P140 U1845 ( .A1(n1627), .A2(n1442), .B1(ckspeed[5]), .B2(
        n1625), .ZN(n759) );
  AN2D0BWP12T30P140 U1846 ( .A1(w_sseg_1), .A2(n1765), .Z(N744) );
  MAOI22D0BWP12T30P140 U1847 ( .A1(n1627), .A2(n1362), .B1(ckspeed[4]), .B2(
        n1625), .ZN(n758) );
  MAOI22D0BWP12T30P140 U1848 ( .A1(n1627), .A2(n1391), .B1(ckspeed[3]), .B2(
        n1625), .ZN(n757) );
  AN2D0BWP12T30P140 U1849 ( .A1(w_sseg_2), .A2(n1765), .Z(N745) );
  MAOI22D0BWP12T30P140 U1850 ( .A1(n1627), .A2(n1363), .B1(ckspeed[2]), .B2(
        n1625), .ZN(n756) );
  MAOI22D0BWP12T30P140 U1851 ( .A1(n1627), .A2(n1364), .B1(ckspeed[1]), .B2(
        n1625), .ZN(n755) );
  AN2D0BWP12T30P140 U1852 ( .A1(w_sseg_3), .A2(n1765), .Z(N746) );
  CKMUX2D0BWP12T30P140 U1853 ( .I0(i_wb_data[31]), .I1(ckspeed[31]), .S(n1365), 
        .Z(n785) );
  CKMUX2D0BWP12T30P140 U1854 ( .I0(i_wb_data[30]), .I1(ckspeed[30]), .S(n1365), 
        .Z(n784) );
  AN2D0BWP12T30P140 U1855 ( .A1(w_sseg_4), .A2(n1765), .Z(N747) );
  CKMUX2D0BWP12T30P140 U1856 ( .I0(i_wb_data[29]), .I1(ckspeed[29]), .S(n1365), 
        .Z(n783) );
  CKMUX2D0BWP12T30P140 U1857 ( .I0(i_wb_data[28]), .I1(ckspeed[28]), .S(n1365), 
        .Z(n782) );
  AN2D0BWP12T30P140 U1858 ( .A1(w_sseg_5), .A2(n1765), .Z(N748) );
  CKMUX2D0BWP12T30P140 U1859 ( .I0(i_wb_data[27]), .I1(ckspeed[27]), .S(n1365), 
        .Z(n781) );
  CKMUX2D0BWP12T30P140 U1860 ( .I0(i_wb_data[26]), .I1(ckspeed[26]), .S(n1365), 
        .Z(n780) );
  AN2D0BWP12T30P140 U1861 ( .A1(w_sseg_6), .A2(n1765), .Z(N749) );
  INVD0BWP12T30P140 U1862 ( .I(n1662), .ZN(n1552) );
  ND2D0BWP12T30P140 U1863 ( .A1(n1367), .A2(n1366), .ZN(n1368) );
  AOI211D0BWP12T30P140 U1864 ( .A1(stopwatch[20]), .A2(stopwatch[22]), .B(
        n1369), .C(n1368), .ZN(n1661) );
  INVD0BWP12T30P140 U1865 ( .I(stopwatch[20]), .ZN(n1553) );
  ND2D0BWP12T30P140 U1866 ( .A1(n1661), .A2(n1553), .ZN(n1551) );
  ND2D0BWP12T30P140 U1867 ( .A1(stopwatch[20]), .A2(n1661), .ZN(n1665) );
  INVD0BWP12T30P140 U1868 ( .I(stopwatch[21]), .ZN(n1664) );
  AOI32D0BWP12T30P140 U1869 ( .A1(n1552), .A2(stopwatch[21]), .A3(n1551), .B1(
        n1665), .B2(n1664), .ZN(n879) );
  NR2D0BWP12T30P140 U1870 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .ZN(n1371)
         );
  INVD0BWP12T30P140 U1871 ( .I(stopwatch[9]), .ZN(n1750) );
  OAI22D0BWP12T30P140 U1872 ( .A1(n1371), .A2(n1370), .B1(n1429), .B2(n1750), 
        .ZN(n891) );
  AN2D0BWP12T30P140 U1873 ( .A1(w_sseg_7), .A2(n1765), .Z(N750) );
  AOI31D0BWP12T30P140 U1874 ( .A1(n1421), .A2(n1420), .A3(n1372), .B(n1527), 
        .ZN(n1387) );
  OAI21D0BWP12T30P140 U1875 ( .A1(n1472), .A2(n1376), .B(n1401), .ZN(n1375) );
  INVD0BWP12T30P140 U1876 ( .I(n1471), .ZN(n1459) );
  AOI211D0BWP12T30P140 U1877 ( .A1(clock[14]), .A2(clock[12]), .B(n1526), .C(
        n1386), .ZN(n1374) );
  IND3D1BWP12T30P140 U1878 ( .A1(n1375), .B1(n1387), .B2(n1374), .ZN(n1456) );
  NR2D0BWP12T30P140 U1879 ( .A1(n1458), .A2(n1456), .ZN(n1469) );
  AOI22D0BWP12T30P140 U1880 ( .A1(i_wb_data[14]), .A2(n1526), .B1(clock[13]), 
        .B2(n1469), .ZN(n1377) );
  AOI32D0BWP12T30P140 U1881 ( .A1(n1459), .A2(n1377), .A3(n1456), .B1(n1376), 
        .B2(n1377), .ZN(n909) );
  NR2D0BWP12T30P140 U1882 ( .A1(n1379), .A2(n1378), .ZN(n1554) );
  AOI21D0BWP12T30P140 U1883 ( .A1(n1390), .A2(ck_pph), .B(n1554), .ZN(n1409)
         );
  INVD0BWP12T30P140 U1884 ( .I(n1409), .ZN(n1417) );
  ND2D0BWP12T30P140 U1885 ( .A1(clock[17]), .A2(clock[16]), .ZN(n1773) );
  AN4D0BWP12T30P140 U1886 ( .A1(n1773), .A2(n1767), .A3(n1768), .A4(n1769), 
        .Z(n1381) );
  INVD0BWP12T30P140 U1887 ( .I(n1554), .ZN(n1555) );
  OAI31D0BWP12T30P140 U1888 ( .A1(clock[17]), .A2(clock[16]), .A3(clock[18]), 
        .B(clock[19]), .ZN(n1380) );
  OAI211D0BWP12T30P140 U1889 ( .A1(n1381), .A2(n1772), .B(n1555), .C(n1380), 
        .ZN(n1408) );
  ND2D0BWP12T30P140 U1890 ( .A1(n1417), .A2(n1408), .ZN(n1556) );
  INVD0BWP12T30P140 U1891 ( .I(n1556), .ZN(n1558) );
  AOI32D0BWP12T30P140 U1892 ( .A1(n1772), .A2(n1555), .A3(n1769), .B1(
        i_wb_data[20]), .B2(n1554), .ZN(n1382) );
  AOI22D0BWP12T30P140 U1893 ( .A1(n1558), .A2(n1382), .B1(n1769), .B2(n1556), 
        .ZN(n903) );
  AOI21D0BWP12T30P140 U1894 ( .A1(clock[5]), .A2(clock[6]), .B(clock[7]), .ZN(
        n1434) );
  OAI31D0BWP12T30P140 U1895 ( .A1(clock[2]), .A2(clock[1]), .A3(clock[0]), .B(
        clock[3]), .ZN(n1433) );
  ND2D0BWP12T30P140 U1896 ( .A1(n1434), .A2(n1433), .ZN(n1383) );
  INVD0BWP12T30P140 U1897 ( .I(n1449), .ZN(n1461) );
  AOI21D0BWP12T30P140 U1898 ( .A1(n1383), .A2(n1390), .B(n1461), .ZN(n1439) );
  INVD0BWP12T30P140 U1899 ( .I(n1439), .ZN(n1465) );
  OAI22D0BWP12T30P140 U1900 ( .A1(n1385), .A2(n1449), .B1(n1384), .B2(n1465), 
        .ZN(n916) );
  ND2D0BWP12T30P140 U1901 ( .A1(n1386), .A2(n1474), .ZN(n1530) );
  NR3D0BWP12T30P140 U1902 ( .A1(n1526), .A2(n1387), .A3(n1386), .ZN(n1466) );
  AOI22D0BWP12T30P140 U1903 ( .A1(i_wb_data[8]), .A2(n1526), .B1(n1466), .B2(
        n1420), .ZN(n1388) );
  OAI21D0BWP12T30P140 U1904 ( .A1(n1530), .A2(n1420), .B(n1388), .ZN(n915) );
  ND3D0BWP12T30P140 U1905 ( .A1(n1449), .A2(n1433), .A3(n1390), .ZN(n1452) );
  NR2D0BWP12T30P140 U1906 ( .A1(n1389), .A2(n1452), .ZN(n1430) );
  ND2D0BWP12T30P140 U1907 ( .A1(clock[1]), .A2(n1430), .ZN(n1455) );
  NR2D0BWP12T30P140 U1908 ( .A1(n1390), .A2(n1461), .ZN(n1447) );
  INR2D1BWP12T30P140 U1909 ( .A1(n1452), .B1(n1447), .ZN(n1392) );
  OAI222D0BWP12T30P140 U1910 ( .A1(n1455), .A2(n1394), .B1(n1393), .B2(n1392), 
        .C1(n1391), .C2(n1449), .ZN(n920) );
  MAOI22D0BWP12T30P140 U1911 ( .A1(n1395), .A2(n1523), .B1(clock[24]), .B2(
        n1395), .ZN(n790) );
  INVD0BWP12T30P140 U1912 ( .I(stopwatch[12]), .ZN(n1400) );
  ND2D0BWP12T30P140 U1913 ( .A1(n1397), .A2(n1396), .ZN(n1398) );
  AOI211D0BWP12T30P140 U1914 ( .A1(stopwatch[12]), .A2(stopwatch[14]), .B(
        n1399), .C(n1398), .ZN(n1405) );
  ND2D0BWP12T30P140 U1915 ( .A1(n1405), .A2(n1400), .ZN(n1501) );
  OAI21D0BWP12T30P140 U1916 ( .A1(n1400), .A2(n1502), .B(n1501), .ZN(n888) );
  OAI22D0BWP12T30P140 U1917 ( .A1(n1508), .A2(n1474), .B1(n1401), .B2(n1459), 
        .ZN(n908) );
  INVD0BWP12T30P140 U1918 ( .I(stopwatch[24]), .ZN(n1404) );
  AOI22D0BWP12T30P140 U1919 ( .A1(n1404), .A2(n1403), .B1(n1402), .B2(
        stopwatch[24]), .ZN(n876) );
  ND2D0BWP12T30P140 U1920 ( .A1(stopwatch[12]), .A2(n1405), .ZN(n1500) );
  INVD0BWP12T30P140 U1921 ( .I(stopwatch[13]), .ZN(n1753) );
  INVD0BWP12T30P140 U1922 ( .I(n1502), .ZN(n1406) );
  OAI21D0BWP12T30P140 U1923 ( .A1(n1406), .A2(n1405), .B(stopwatch[14]), .ZN(
        n1407) );
  OAI21D0BWP12T30P140 U1924 ( .A1(n1500), .A2(n1753), .B(n1407), .ZN(n886) );
  NR2D0BWP12T30P140 U1925 ( .A1(n1409), .A2(n1408), .ZN(n1414) );
  ND2D0BWP12T30P140 U1926 ( .A1(n1414), .A2(n1773), .ZN(n1411) );
  AN2D0BWP12T30P140 U1927 ( .A1(n1411), .A2(n1417), .Z(n1413) );
  OAI222D0BWP12T30P140 U1928 ( .A1(n1411), .A2(n1416), .B1(n1410), .B2(n1413), 
        .C1(n1531), .C2(n1555), .ZN(n906) );
  INR2D1BWP12T30P140 U1929 ( .A1(n1414), .B1(n1773), .ZN(n1443) );
  AOI22D0BWP12T30P140 U1930 ( .A1(i_wb_data[18]), .A2(n1554), .B1(n1443), .B2(
        n1767), .ZN(n1412) );
  OAI21D0BWP12T30P140 U1931 ( .A1(n1413), .A2(n1767), .B(n1412), .ZN(n905) );
  AOI22D0BWP12T30P140 U1932 ( .A1(i_wb_data[16]), .A2(n1554), .B1(n1414), .B2(
        n1416), .ZN(n1415) );
  OAI21D0BWP12T30P140 U1933 ( .A1(n1417), .A2(n1416), .B(n1415), .ZN(n907) );
  ND2D0BWP12T30P140 U1934 ( .A1(clock[9]), .A2(clock[8]), .ZN(n1524) );
  ND2D0BWP12T30P140 U1935 ( .A1(n1466), .A2(n1524), .ZN(n1419) );
  ND2D0BWP12T30P140 U1936 ( .A1(n1530), .A2(n1419), .ZN(n1467) );
  INVD0BWP12T30P140 U1937 ( .I(n1467), .ZN(n1422) );
  OAI222D0BWP12T30P140 U1938 ( .A1(n1422), .A2(n1421), .B1(n1420), .B2(n1419), 
        .C1(n1418), .C2(n1474), .ZN(n914) );
  ND2D0BWP12T30P140 U1939 ( .A1(clock[24]), .A2(clock[25]), .ZN(n1425) );
  INVD0BWP12T30P140 U1940 ( .I(n1425), .ZN(n1738) );
  INVD0BWP12T30P140 U1941 ( .I(n1423), .ZN(n1740) );
  AO222D0BWP12T30P140 U1942 ( .A1(n1738), .A2(ck_last_clock[15]), .B1(n1740), 
        .B2(timer[15]), .C1(stopwatch[19]), .C2(n1762), .Z(n970) );
  ND2D0BWP12T30P140 U1943 ( .A1(dmask[2]), .A2(n1765), .ZN(n1764) );
  ND3D0BWP12T30P140 U1944 ( .A1(N743), .A2(dmask[2]), .A3(n1739), .ZN(n1424)
         );
  OAI21D0BWP12T30P140 U1945 ( .A1(n1425), .A2(n1764), .B(n1424), .ZN(N759) );
  NR2D0BWP12T30P140 U1946 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .ZN(n1427)
         );
  ND2D0BWP12T30P140 U1947 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .ZN(n1426)
         );
  ND2D0BWP12T30P140 U1948 ( .A1(n1445), .A2(n1426), .ZN(n1659) );
  MOAI22D0BWP12T30P140 U1949 ( .A1(n1427), .A2(n1659), .B1(n1444), .B2(
        stopwatch[17]), .ZN(n883) );
  MAOI22D0BWP12T30P140 U1950 ( .A1(stopwatch[8]), .A2(n1429), .B1(n1428), .B2(
        stopwatch[8]), .ZN(n892) );
  MAOI22D0BWP12T30P140 U1951 ( .A1(n1588), .A2(n1475), .B1(ckspeed[13]), .B2(
        n1625), .ZN(n767) );
  NR2D0BWP12T30P140 U1952 ( .A1(clock[0]), .A2(n1452), .ZN(n1446) );
  NR2D0BWP12T30P140 U1953 ( .A1(n1447), .A2(n1446), .ZN(n1451) );
  AOI22D0BWP12T30P140 U1954 ( .A1(i_wb_data[1]), .A2(n1461), .B1(n1430), .B2(
        n1432), .ZN(n1431) );
  OAI21D0BWP12T30P140 U1955 ( .A1(n1451), .A2(n1432), .B(n1431), .ZN(n922) );
  AOI211D0BWP12T30P140 U1956 ( .A1(clock[6]), .A2(clock[4]), .B(n1433), .C(
        n1743), .ZN(n1435) );
  ND3D0BWP12T30P140 U1957 ( .A1(n1449), .A2(n1435), .A3(n1434), .ZN(n1463) );
  NR2D0BWP12T30P140 U1958 ( .A1(clock[4]), .A2(n1463), .ZN(n1438) );
  AOI21D0BWP12T30P140 U1959 ( .A1(n1461), .A2(i_wb_data[4]), .B(n1438), .ZN(
        n1436) );
  OAI21D0BWP12T30P140 U1960 ( .A1(n1465), .A2(n1437), .B(n1436), .ZN(n919) );
  NR2D0BWP12T30P140 U1961 ( .A1(n1437), .A2(n1463), .ZN(n1460) );
  OAI32D0BWP12T30P140 U1962 ( .A1(n1440), .A2(n1439), .A3(n1438), .B1(n1460), 
        .B2(clock[5]), .ZN(n1441) );
  OAI21D0BWP12T30P140 U1963 ( .A1(n1442), .A2(n1449), .B(n1441), .ZN(n918) );
  AO222D0BWP12T30P140 U1964 ( .A1(n1556), .A2(clock[19]), .B1(clock[18]), .B2(
        n1443), .C1(i_wb_data[19]), .C2(n1554), .Z(n904) );
  INVD0BWP12T30P140 U1965 ( .I(n1444), .ZN(n1660) );
  MAOI22D0BWP12T30P140 U1966 ( .A1(stopwatch[16]), .A2(n1660), .B1(n1445), 
        .B2(stopwatch[16]), .ZN(n884) );
  AOI21D0BWP12T30P140 U1967 ( .A1(n1447), .A2(clock[0]), .B(n1446), .ZN(n1448)
         );
  OAI21D0BWP12T30P140 U1968 ( .A1(n1450), .A2(n1449), .B(n1448), .ZN(n923) );
  OAI21D0BWP12T30P140 U1969 ( .A1(clock[1]), .A2(n1452), .B(n1451), .ZN(n1453)
         );
  AOI22D0BWP12T30P140 U1970 ( .A1(i_wb_data[2]), .A2(n1461), .B1(clock[2]), 
        .B2(n1453), .ZN(n1454) );
  OAI21D0BWP12T30P140 U1971 ( .A1(clock[2]), .A2(n1455), .B(n1454), .ZN(n921)
         );
  NR2D0BWP12T30P140 U1972 ( .A1(clock[12]), .A2(n1456), .ZN(n1470) );
  AOI21D0BWP12T30P140 U1973 ( .A1(n1526), .A2(i_wb_data[12]), .B(n1470), .ZN(
        n1457) );
  OAI21D0BWP12T30P140 U1974 ( .A1(n1459), .A2(n1458), .B(n1457), .ZN(n911) );
  AOI22D0BWP12T30P140 U1975 ( .A1(i_wb_data[6]), .A2(n1461), .B1(clock[5]), 
        .B2(n1460), .ZN(n1464) );
  AOI32D0BWP12T30P140 U1976 ( .A1(n1465), .A2(n1464), .A3(n1463), .B1(n1462), 
        .B2(n1464), .ZN(n917) );
  INVD0BWP12T30P140 U1977 ( .I(n1466), .ZN(n1528) );
  AOI22D0BWP12T30P140 U1978 ( .A1(i_wb_data[10]), .A2(n1526), .B1(clock[10]), 
        .B2(n1467), .ZN(n1468) );
  OAI31D0BWP12T30P140 U1979 ( .A1(clock[10]), .A2(n1528), .A3(n1524), .B(n1468), .ZN(n913) );
  OAI32D0BWP12T30P140 U1980 ( .A1(n1472), .A2(n1471), .A3(n1470), .B1(n1469), 
        .B2(clock[13]), .ZN(n1473) );
  OAI21D0BWP12T30P140 U1981 ( .A1(n1475), .A2(n1474), .B(n1473), .ZN(n910) );
  OA21D0BWP12T30P140 U1982 ( .A1(ck_counter[34]), .A2(n1476), .B(n1479), .Z(
        N102) );
  OA21D0BWP12T30P140 U1983 ( .A1(ck_counter[36]), .A2(n1478), .B(n1482), .Z(
        N104) );
  OA21D0BWP12T30P140 U1984 ( .A1(ck_counter[38]), .A2(n1481), .B(n1477), .Z(
        N106) );
  AOI21D0BWP12T30P140 U1985 ( .A1(n1480), .A2(n1479), .B(n1478), .ZN(N103) );
  AOI21D0BWP12T30P140 U1986 ( .A1(n1483), .A2(n1482), .B(n1481), .ZN(N105) );
  FA1D0BWP12T30P140 U1987 ( .A(ck_counter[31]), .B(ckspeed[31]), .CI(n1484), 
        .CO(n1194), .S(N99) );
  FA1D0BWP12T30P140 U1988 ( .A(ck_counter[30]), .B(ckspeed[30]), .CI(n1485), 
        .CO(n1484), .S(N98) );
  FA1D0BWP12T30P140 U1989 ( .A(ck_counter[29]), .B(ckspeed[29]), .CI(n1486), 
        .CO(n1485), .S(N97) );
  FA1D0BWP12T30P140 U1990 ( .A(ck_counter[28]), .B(ckspeed[28]), .CI(n1487), 
        .CO(n1486), .S(N96) );
  FA1D0BWP12T30P140 U1991 ( .A(ck_counter[27]), .B(ckspeed[27]), .CI(n1488), 
        .CO(n1487), .S(N95) );
  FA1D0BWP12T30P140 U1992 ( .A(ck_counter[26]), .B(ckspeed[26]), .CI(n1489), 
        .CO(n1488), .S(N94) );
  FA1D0BWP12T30P140 U1993 ( .A(ck_counter[25]), .B(ckspeed[25]), .CI(n1490), 
        .CO(n1489), .S(N93) );
  FA1D0BWP12T30P140 U1994 ( .A(ck_counter[24]), .B(ckspeed[24]), .CI(n1491), 
        .CO(n1490), .S(N92) );
  FA1D0BWP12T30P140 U1995 ( .A(ck_counter[23]), .B(ckspeed[23]), .CI(n1492), 
        .CO(n1491), .S(N91) );
  FA1D0BWP12T30P140 U1996 ( .A(ck_counter[22]), .B(ckspeed[22]), .CI(n1493), 
        .CO(n1492), .S(N90) );
  FA1D0BWP12T30P140 U1997 ( .A(ck_counter[21]), .B(ckspeed[21]), .CI(n1494), 
        .CO(n1493), .S(N89) );
  FA1D0BWP12T30P140 U1998 ( .A(ck_counter[20]), .B(ckspeed[20]), .CI(n1495), 
        .CO(n1494), .S(N88) );
  FA1D0BWP12T30P140 U1999 ( .A(ck_counter[19]), .B(ckspeed[19]), .CI(n1496), 
        .CO(n1495), .S(N87) );
  FA1D0BWP12T30P140 U2000 ( .A(ck_counter[18]), .B(ckspeed[18]), .CI(n1497), 
        .CO(n1496), .S(N86) );
  FA1D0BWP12T30P140 U2001 ( .A(ck_counter[17]), .B(ckspeed[17]), .CI(n1498), 
        .CO(n1497), .S(N85) );
  FA1D0BWP12T30P140 U2002 ( .A(ck_counter[16]), .B(ckspeed[16]), .CI(n1499), 
        .CO(n1498), .S(N84) );
  AOI32D0BWP12T30P140 U2003 ( .A1(n1502), .A2(stopwatch[13]), .A3(n1501), .B1(
        n1500), .B2(n1753), .ZN(n887) );
  MAOI22D0BWP12T30P140 U2004 ( .A1(n1588), .A2(n1503), .B1(ckspeed[14]), .B2(
        n1588), .ZN(n768) );
  FA1D0BWP12T30P140 U2005 ( .A(ck_counter[15]), .B(ckspeed[15]), .CI(n1504), 
        .CO(n1499), .S(N83) );
  AOI22D0BWP12T30P140 U2006 ( .A1(n1610), .A2(hack_counter[36]), .B1(n1716), 
        .B2(hack_counter[4]), .ZN(n1506) );
  AOI22D0BWP12T30P140 U2007 ( .A1(n1717), .A2(ckspeed[28]), .B1(n1649), .B2(
        hack_time[28]), .ZN(n1505) );
  OAI211D0BWP12T30P140 U2008 ( .A1(n1549), .A2(n1507), .B(n1506), .C(n1505), 
        .ZN(N867) );
  MAOI22D0BWP12T30P140 U2009 ( .A1(n1588), .A2(n1508), .B1(ckspeed[15]), .B2(
        n1627), .ZN(n769) );
  AOI22D0BWP12T30P140 U2010 ( .A1(n1642), .A2(timer[7]), .B1(n1717), .B2(
        ckspeed[7]), .ZN(n1512) );
  AOI22D0BWP12T30P140 U2011 ( .A1(n1610), .A2(hack_counter[15]), .B1(n1649), 
        .B2(hack_time[7]), .ZN(n1511) );
  AOI22D0BWP12T30P140 U2012 ( .A1(n1715), .A2(stopwatch[7]), .B1(n1598), .B2(
        alarm_time[7]), .ZN(n1510) );
  ND2D0BWP12T30P140 U2013 ( .A1(n1620), .A2(ck_last_clock[7]), .ZN(n1509) );
  ND4D0BWP12T30P140 U2014 ( .A1(n1512), .A2(n1511), .A3(n1510), .A4(n1509), 
        .ZN(N846) );
  AOI22D0BWP12T30P140 U2015 ( .A1(n1642), .A2(timer[10]), .B1(n1647), .B2(
        ckspeed[10]), .ZN(n1516) );
  AOI22D0BWP12T30P140 U2016 ( .A1(n1714), .A2(hack_counter[18]), .B1(n1619), 
        .B2(hack_time[10]), .ZN(n1515) );
  AOI22D0BWP12T30P140 U2017 ( .A1(n1651), .A2(stopwatch[10]), .B1(n1650), .B2(
        alarm_time[10]), .ZN(n1514) );
  ND2D0BWP12T30P140 U2018 ( .A1(n1620), .A2(ck_last_clock[10]), .ZN(n1513) );
  ND4D0BWP12T30P140 U2019 ( .A1(n1516), .A2(n1515), .A3(n1514), .A4(n1513), 
        .ZN(N849) );
  MAOI22D0BWP12T30P140 U2020 ( .A1(n1627), .A2(n1517), .B1(ckspeed[23]), .B2(
        n1625), .ZN(n777) );
  FA1D0BWP12T30P140 U2021 ( .A(ck_counter[14]), .B(ckspeed[14]), .CI(n1518), 
        .CO(n1504), .S(N82) );
  MAOI22D0BWP12T30P140 U2022 ( .A1(n1588), .A2(n1519), .B1(ckspeed[16]), .B2(
        n1625), .ZN(n770) );
  AOI22D0BWP12T30P140 U2023 ( .A1(n1714), .A2(hack_counter[35]), .B1(n1716), 
        .B2(hack_counter[3]), .ZN(n1521) );
  AOI22D0BWP12T30P140 U2024 ( .A1(n1717), .A2(ckspeed[27]), .B1(n1649), .B2(
        hack_time[27]), .ZN(n1520) );
  OAI211D0BWP12T30P140 U2025 ( .A1(n1549), .A2(n1522), .B(n1521), .C(n1520), 
        .ZN(N866) );
  MAOI22D0BWP12T30P140 U2026 ( .A1(n1627), .A2(n1523), .B1(ckspeed[24]), .B2(
        n1588), .ZN(n778) );
  NR2D0BWP12T30P140 U2027 ( .A1(n1528), .A2(n1524), .ZN(n1525) );
  AOI22D0BWP12T30P140 U2028 ( .A1(i_wb_data[11]), .A2(n1526), .B1(clock[10]), 
        .B2(n1525), .ZN(n1529) );
  AOI32D0BWP12T30P140 U2029 ( .A1(n1530), .A2(n1529), .A3(n1528), .B1(n1527), 
        .B2(n1529), .ZN(n912) );
  MAOI22D0BWP12T30P140 U2030 ( .A1(n1588), .A2(n1531), .B1(ckspeed[17]), .B2(
        n1588), .ZN(n771) );
  AOI22D0BWP12T30P140 U2031 ( .A1(n1642), .A2(timer[17]), .B1(n1647), .B2(
        ckspeed[17]), .ZN(n1535) );
  AOI22D0BWP12T30P140 U2032 ( .A1(n1714), .A2(hack_counter[25]), .B1(n1649), 
        .B2(hack_time[17]), .ZN(n1534) );
  AOI22D0BWP12T30P140 U2033 ( .A1(n1651), .A2(stopwatch[17]), .B1(n1598), .B2(
        alarm_time[17]), .ZN(n1533) );
  ND2D0BWP12T30P140 U2034 ( .A1(n1652), .A2(ck_last_clock[17]), .ZN(n1532) );
  ND4D0BWP12T30P140 U2035 ( .A1(n1535), .A2(n1534), .A3(n1533), .A4(n1532), 
        .ZN(N856) );
  FA1D0BWP12T30P140 U2036 ( .A(ck_counter[13]), .B(ckspeed[13]), .CI(n1536), 
        .CO(n1518), .S(N81) );
  MAOI22D0BWP12T30P140 U2037 ( .A1(n1627), .A2(n1537), .B1(ckspeed[18]), .B2(
        n1627), .ZN(n772) );
  AOI22D0BWP12T30P140 U2038 ( .A1(n1642), .A2(timer[8]), .B1(n1647), .B2(
        ckspeed[8]), .ZN(n1541) );
  AOI22D0BWP12T30P140 U2039 ( .A1(n1610), .A2(hack_counter[16]), .B1(n1619), 
        .B2(hack_time[8]), .ZN(n1540) );
  AOI22D0BWP12T30P140 U2040 ( .A1(n1651), .A2(stopwatch[8]), .B1(n1650), .B2(
        alarm_time[8]), .ZN(n1539) );
  ND2D0BWP12T30P140 U2041 ( .A1(n1620), .A2(ck_last_clock[8]), .ZN(n1538) );
  ND4D0BWP12T30P140 U2042 ( .A1(n1541), .A2(n1540), .A3(n1539), .A4(n1538), 
        .ZN(N847) );
  AOI22D0BWP12T30P140 U2043 ( .A1(n1717), .A2(ckspeed[23]), .B1(n1610), .B2(
        hack_counter[31]), .ZN(n1544) );
  AOI22D0BWP12T30P140 U2044 ( .A1(n1642), .A2(timer[23]), .B1(n1649), .B2(
        hack_time[23]), .ZN(n1543) );
  AOI22D0BWP12T30P140 U2045 ( .A1(n1651), .A2(stopwatch[23]), .B1(n1652), .B2(
        clock[23]), .ZN(n1542) );
  ND3D0BWP12T30P140 U2046 ( .A1(n1544), .A2(n1543), .A3(n1542), .ZN(N862) );
  FA1D0BWP12T30P140 U2047 ( .A(ck_counter[12]), .B(ckspeed[12]), .CI(n1545), 
        .CO(n1536), .S(N80) );
  AOI22D0BWP12T30P140 U2048 ( .A1(n1610), .A2(hack_counter[34]), .B1(n1716), 
        .B2(hack_counter[2]), .ZN(n1547) );
  AOI22D0BWP12T30P140 U2049 ( .A1(n1717), .A2(ckspeed[26]), .B1(n1649), .B2(
        hack_time[26]), .ZN(n1546) );
  OAI211D0BWP12T30P140 U2050 ( .A1(n1549), .A2(n1548), .B(n1547), .C(n1546), 
        .ZN(N865) );
  MAOI22D0BWP12T30P140 U2051 ( .A1(n1588), .A2(n1550), .B1(ckspeed[19]), .B2(
        n1627), .ZN(n773) );
  OAI21D0BWP12T30P140 U2052 ( .A1(n1553), .A2(n1552), .B(n1551), .ZN(n880) );
  AOI32D0BWP12T30P140 U2053 ( .A1(clock[20]), .A2(n1555), .A3(n1772), .B1(
        i_wb_data[21]), .B2(n1554), .ZN(n1557) );
  AOI22D0BWP12T30P140 U2054 ( .A1(n1558), .A2(n1557), .B1(n1772), .B2(n1556), 
        .ZN(n902) );
  AOI22D0BWP12T30P140 U2055 ( .A1(n1648), .A2(timer[15]), .B1(n1647), .B2(
        ckspeed[15]), .ZN(n1562) );
  AOI22D0BWP12T30P140 U2056 ( .A1(n1610), .A2(hack_counter[23]), .B1(n1649), 
        .B2(hack_time[15]), .ZN(n1561) );
  AOI22D0BWP12T30P140 U2057 ( .A1(n1651), .A2(stopwatch[15]), .B1(n1598), .B2(
        alarm_time[15]), .ZN(n1560) );
  ND2D0BWP12T30P140 U2058 ( .A1(n1652), .A2(ck_last_clock[15]), .ZN(n1559) );
  ND4D0BWP12T30P140 U2059 ( .A1(n1562), .A2(n1561), .A3(n1560), .A4(n1559), 
        .ZN(N854) );
  FA1D0BWP12T30P140 U2060 ( .A(ck_counter[11]), .B(ckspeed[11]), .CI(n1563), 
        .CO(n1545), .S(N79) );
  AOI22D0BWP12T30P140 U2061 ( .A1(n1648), .A2(timer[16]), .B1(n1647), .B2(
        ckspeed[16]), .ZN(n1567) );
  AOI22D0BWP12T30P140 U2062 ( .A1(n1714), .A2(hack_counter[24]), .B1(n1619), 
        .B2(hack_time[16]), .ZN(n1566) );
  AOI22D0BWP12T30P140 U2063 ( .A1(n1715), .A2(stopwatch[16]), .B1(n1650), .B2(
        alarm_time[16]), .ZN(n1565) );
  ND2D0BWP12T30P140 U2064 ( .A1(n1652), .A2(ck_last_clock[16]), .ZN(n1564) );
  ND4D0BWP12T30P140 U2065 ( .A1(n1567), .A2(n1566), .A3(n1565), .A4(n1564), 
        .ZN(N855) );
  MAOI22D0BWP12T30P140 U2066 ( .A1(n1588), .A2(n1568), .B1(ckspeed[20]), .B2(
        n1625), .ZN(n774) );
  AOI22D0BWP12T30P140 U2067 ( .A1(n1642), .A2(timer[9]), .B1(n1717), .B2(
        ckspeed[9]), .ZN(n1572) );
  AOI22D0BWP12T30P140 U2068 ( .A1(n1714), .A2(hack_counter[17]), .B1(n1649), 
        .B2(hack_time[9]), .ZN(n1571) );
  AOI22D0BWP12T30P140 U2069 ( .A1(n1715), .A2(stopwatch[9]), .B1(n1650), .B2(
        alarm_time[9]), .ZN(n1570) );
  ND2D0BWP12T30P140 U2070 ( .A1(n1620), .A2(ck_last_clock[9]), .ZN(n1569) );
  ND4D0BWP12T30P140 U2071 ( .A1(n1572), .A2(n1571), .A3(n1570), .A4(n1569), 
        .ZN(N848) );
  AOI22D0BWP12T30P140 U2072 ( .A1(n1717), .A2(ckspeed[25]), .B1(n1716), .B2(
        hack_counter[1]), .ZN(n1576) );
  AOI22D0BWP12T30P140 U2073 ( .A1(n1648), .A2(timer[25]), .B1(n1610), .B2(
        hack_counter[33]), .ZN(n1575) );
  AOI22D0BWP12T30P140 U2074 ( .A1(n1598), .A2(al_tripped), .B1(n1619), .B2(
        hack_time[25]), .ZN(n1574) );
  AOI22D0BWP12T30P140 U2075 ( .A1(n1715), .A2(stopwatch[25]), .B1(n1652), .B2(
        clock[25]), .ZN(n1573) );
  ND4D0BWP12T30P140 U2076 ( .A1(n1576), .A2(n1575), .A3(n1574), .A4(n1573), 
        .ZN(N864) );
  FA1D0BWP12T30P140 U2077 ( .A(ck_counter[10]), .B(ckspeed[10]), .CI(n1577), 
        .CO(n1563), .S(N78) );
  MAOI22D0BWP12T30P140 U2078 ( .A1(n1627), .A2(n1578), .B1(ckspeed[21]), .B2(
        n1627), .ZN(n775) );
  ND2D0BWP12T30P140 U2079 ( .A1(n1579), .A2(n1745), .ZN(n1582) );
  INVD0BWP12T30P140 U2080 ( .I(tm_sub[0]), .ZN(n1580) );
  AOI22D0BWP12T30P140 U2081 ( .A1(tm_sub[0]), .A2(n1582), .B1(n1581), .B2(
        n1580), .ZN(n844) );
  AOI22D0BWP12T30P140 U2082 ( .A1(n1648), .A2(timer[18]), .B1(n1647), .B2(
        ckspeed[18]), .ZN(n1586) );
  AOI22D0BWP12T30P140 U2083 ( .A1(n1610), .A2(hack_counter[26]), .B1(n1619), 
        .B2(hack_time[18]), .ZN(n1585) );
  AOI22D0BWP12T30P140 U2084 ( .A1(n1715), .A2(stopwatch[18]), .B1(n1650), .B2(
        alarm_time[18]), .ZN(n1584) );
  ND2D0BWP12T30P140 U2085 ( .A1(n1652), .A2(ck_last_clock[18]), .ZN(n1583) );
  ND4D0BWP12T30P140 U2086 ( .A1(n1586), .A2(n1585), .A3(n1584), .A4(n1583), 
        .ZN(N857) );
  FA1D0BWP12T30P140 U2087 ( .A(ck_counter[9]), .B(ckspeed[9]), .CI(n1587), 
        .CO(n1577), .S(N77) );
  MAOI22D0BWP12T30P140 U2088 ( .A1(n1627), .A2(n1589), .B1(ckspeed[22]), .B2(
        n1588), .ZN(n776) );
  AOI22D0BWP12T30P140 U2089 ( .A1(n1717), .A2(ckspeed[24]), .B1(
        hack_counter[0]), .B2(n1716), .ZN(n1593) );
  AOI22D0BWP12T30P140 U2090 ( .A1(timer[24]), .A2(n1648), .B1(n1714), .B2(
        hack_counter[32]), .ZN(n1592) );
  AOI22D0BWP12T30P140 U2091 ( .A1(n1598), .A2(al_enabled), .B1(n1619), .B2(
        hack_time[24]), .ZN(n1591) );
  AOI22D0BWP12T30P140 U2092 ( .A1(n1715), .A2(stopwatch[24]), .B1(n1652), .B2(
        clock[24]), .ZN(n1590) );
  ND4D0BWP12T30P140 U2093 ( .A1(n1593), .A2(n1592), .A3(n1591), .A4(n1590), 
        .ZN(N863) );
  AOI22D0BWP12T30P140 U2094 ( .A1(n1642), .A2(timer[11]), .B1(n1647), .B2(
        ckspeed[11]), .ZN(n1597) );
  AOI22D0BWP12T30P140 U2095 ( .A1(n1610), .A2(hack_counter[19]), .B1(n1649), 
        .B2(hack_time[11]), .ZN(n1596) );
  AOI22D0BWP12T30P140 U2096 ( .A1(n1651), .A2(stopwatch[11]), .B1(n1650), .B2(
        alarm_time[11]), .ZN(n1595) );
  ND2D0BWP12T30P140 U2097 ( .A1(n1620), .A2(ck_last_clock[11]), .ZN(n1594) );
  ND4D0BWP12T30P140 U2098 ( .A1(n1597), .A2(n1596), .A3(n1595), .A4(n1594), 
        .ZN(N850) );
  AOI22D0BWP12T30P140 U2099 ( .A1(n1648), .A2(timer[20]), .B1(n1647), .B2(
        ckspeed[20]), .ZN(n1602) );
  AOI22D0BWP12T30P140 U2100 ( .A1(n1610), .A2(hack_counter[28]), .B1(n1619), 
        .B2(hack_time[20]), .ZN(n1601) );
  AOI22D0BWP12T30P140 U2101 ( .A1(n1715), .A2(stopwatch[20]), .B1(n1598), .B2(
        alarm_time[20]), .ZN(n1600) );
  ND2D0BWP12T30P140 U2102 ( .A1(n1652), .A2(ck_last_clock[20]), .ZN(n1599) );
  ND4D0BWP12T30P140 U2103 ( .A1(n1602), .A2(n1601), .A3(n1600), .A4(n1599), 
        .ZN(N859) );
  AOI22D0BWP12T30P140 U2104 ( .A1(n1647), .A2(ckspeed[22]), .B1(n1714), .B2(
        hack_counter[30]), .ZN(n1605) );
  AOI22D0BWP12T30P140 U2105 ( .A1(timer[22]), .A2(n1648), .B1(n1619), .B2(
        hack_time[22]), .ZN(n1604) );
  AOI22D0BWP12T30P140 U2106 ( .A1(n1715), .A2(stopwatch[22]), .B1(n1652), .B2(
        clock[22]), .ZN(n1603) );
  ND3D0BWP12T30P140 U2107 ( .A1(n1605), .A2(n1604), .A3(n1603), .ZN(N861) );
  FA1D0BWP12T30P140 U2108 ( .A(ck_counter[8]), .B(ckspeed[8]), .CI(n1606), 
        .CO(n1587), .S(N76) );
  AOI22D0BWP12T30P140 U2109 ( .A1(ck_sub[0]), .A2(n1609), .B1(n1608), .B2(
        n1607), .ZN(n931) );
  AOI22D0BWP12T30P140 U2110 ( .A1(n1648), .A2(timer[13]), .B1(n1647), .B2(
        ckspeed[13]), .ZN(n1614) );
  AOI22D0BWP12T30P140 U2111 ( .A1(n1610), .A2(hack_counter[21]), .B1(n1649), 
        .B2(hack_time[13]), .ZN(n1613) );
  AOI22D0BWP12T30P140 U2112 ( .A1(n1651), .A2(stopwatch[13]), .B1(n1650), .B2(
        alarm_time[13]), .ZN(n1612) );
  ND2D0BWP12T30P140 U2113 ( .A1(n1652), .A2(ck_last_clock[13]), .ZN(n1611) );
  ND4D0BWP12T30P140 U2114 ( .A1(n1614), .A2(n1613), .A3(n1612), .A4(n1611), 
        .ZN(N852) );
  AOI22D0BWP12T30P140 U2115 ( .A1(n1648), .A2(timer[14]), .B1(n1647), .B2(
        ckspeed[14]), .ZN(n1618) );
  AOI22D0BWP12T30P140 U2116 ( .A1(n1714), .A2(hack_counter[22]), .B1(n1619), 
        .B2(hack_time[14]), .ZN(n1617) );
  AOI22D0BWP12T30P140 U2117 ( .A1(n1715), .A2(stopwatch[14]), .B1(n1650), .B2(
        alarm_time[14]), .ZN(n1616) );
  ND2D0BWP12T30P140 U2118 ( .A1(n1652), .A2(ck_last_clock[14]), .ZN(n1615) );
  ND4D0BWP12T30P140 U2119 ( .A1(n1618), .A2(n1617), .A3(n1616), .A4(n1615), 
        .ZN(N853) );
  AO222D0BWP12T30P140 U2120 ( .A1(n1738), .A2(ck_last_clock[14]), .B1(n1740), 
        .B2(timer[14]), .C1(stopwatch[18]), .C2(n1762), .Z(n969) );
  AOI22D0BWP12T30P140 U2121 ( .A1(n1648), .A2(timer[12]), .B1(n1647), .B2(
        ckspeed[12]), .ZN(n1624) );
  AOI22D0BWP12T30P140 U2122 ( .A1(n1714), .A2(hack_counter[20]), .B1(n1619), 
        .B2(hack_time[12]), .ZN(n1623) );
  AOI22D0BWP12T30P140 U2123 ( .A1(n1715), .A2(stopwatch[12]), .B1(n1650), .B2(
        alarm_time[12]), .ZN(n1622) );
  ND2D0BWP12T30P140 U2124 ( .A1(n1620), .A2(ck_last_clock[12]), .ZN(n1621) );
  ND4D0BWP12T30P140 U2125 ( .A1(n1624), .A2(n1623), .A3(n1622), .A4(n1621), 
        .ZN(N851) );
  MAOI22D0BWP12T30P140 U2126 ( .A1(n1627), .A2(n1626), .B1(ckspeed[25]), .B2(
        n1625), .ZN(n779) );
  FA1D0BWP12T30P140 U2127 ( .A(ck_counter[7]), .B(ckspeed[7]), .CI(n1628), 
        .CO(n1606), .S(N75) );
  FA1D0BWP12T30P140 U2128 ( .A(ck_counter[6]), .B(ckspeed[6]), .CI(n1629), 
        .CO(n1628), .S(N74) );
  FA1D0BWP12T30P140 U2129 ( .A(ck_counter[5]), .B(ckspeed[5]), .CI(n1630), 
        .CO(n1629), .S(N73) );
  FA1D0BWP12T30P140 U2130 ( .A(ck_counter[4]), .B(ckspeed[4]), .CI(n1631), 
        .CO(n1630), .S(N72) );
  FA1D0BWP12T30P140 U2131 ( .A(ck_counter[3]), .B(ckspeed[3]), .CI(n1632), 
        .CO(n1631), .S(N71) );
  FA1D0BWP12T30P140 U2132 ( .A(ck_counter[2]), .B(ckspeed[2]), .CI(n1633), 
        .CO(n1632), .S(N70) );
  FA1D0BWP12T30P140 U2133 ( .A(ck_counter[1]), .B(ckspeed[1]), .CI(n1634), 
        .CO(n1633), .S(N69) );
  AOI22D0BWP12T30P140 U2134 ( .A1(i_wb_data[13]), .A2(n975), .B1(n1708), .B2(
        tm_start[13]), .ZN(n1636) );
  OAI31D0BWP12T30P140 U2135 ( .A1(timer[13]), .A2(n1638), .A3(n1637), .B(n1636), .ZN(n1639) );
  AO22D0BWP12T30P140 U2136 ( .A1(timer[13]), .A2(n1641), .B1(n1640), .B2(n1639), .Z(n823) );
  AOI22D0BWP12T30P140 U2137 ( .A1(n1642), .A2(timer[19]), .B1(n1647), .B2(
        ckspeed[19]), .ZN(n1646) );
  AOI22D0BWP12T30P140 U2138 ( .A1(n1714), .A2(hack_counter[27]), .B1(n1649), 
        .B2(hack_time[19]), .ZN(n1645) );
  AOI22D0BWP12T30P140 U2139 ( .A1(n1651), .A2(stopwatch[19]), .B1(n1650), .B2(
        alarm_time[19]), .ZN(n1644) );
  ND2D0BWP12T30P140 U2140 ( .A1(n1652), .A2(ck_last_clock[19]), .ZN(n1643) );
  ND4D0BWP12T30P140 U2141 ( .A1(n1646), .A2(n1645), .A3(n1644), .A4(n1643), 
        .ZN(N858) );
  AOI22D0BWP12T30P140 U2142 ( .A1(timer[21]), .A2(n1648), .B1(n1647), .B2(
        ckspeed[21]), .ZN(n1656) );
  AOI22D0BWP12T30P140 U2143 ( .A1(n1714), .A2(hack_counter[29]), .B1(n1649), 
        .B2(hack_time[21]), .ZN(n1655) );
  AOI22D0BWP12T30P140 U2144 ( .A1(n1651), .A2(stopwatch[21]), .B1(n1650), .B2(
        alarm_time[21]), .ZN(n1654) );
  ND2D0BWP12T30P140 U2145 ( .A1(n1652), .A2(ck_last_clock[21]), .ZN(n1653) );
  ND4D0BWP12T30P140 U2146 ( .A1(n1656), .A2(n1655), .A3(n1654), .A4(n1653), 
        .ZN(N860) );
  AOI32D0BWP12T30P140 U2147 ( .A1(n1660), .A2(stopwatch[18]), .A3(n1659), .B1(
        n1658), .B2(n1657), .ZN(n882) );
  OAI21D0BWP12T30P140 U2148 ( .A1(n1662), .A2(n1661), .B(stopwatch[22]), .ZN(
        n1663) );
  OAI21D0BWP12T30P140 U2149 ( .A1(n1665), .A2(n1664), .B(n1663), .ZN(n878) );
  CKBD0BWP12T30P140 U2150 ( .I(i_clk), .Z(n1789) );
  CKBD0BWP12T30P140 U2151 ( .I(i_clk), .Z(n1666) );
  CKBD0BWP12T30P140 U2152 ( .I(n1666), .Z(n1784) );
  CKBD0BWP12T30P140 U2153 ( .I(i_clk), .Z(n1790) );
  CKBD0BWP12T30P140 U2154 ( .I(i_clk), .Z(n1799) );
  CKBD0BWP12T30P140 U2155 ( .I(i_clk), .Z(n1802) );
  CKBD0BWP12T30P140 U2156 ( .I(n1666), .Z(n1783) );
  CKBD0BWP12T30P140 U2157 ( .I(i_clk), .Z(n1801) );
  CKBD0BWP12T30P140 U2158 ( .I(i_clk), .Z(n1788) );
  CKBD0BWP12T30P140 U2159 ( .I(i_clk), .Z(n1803) );
  CKBD0BWP12T30P140 U2160 ( .I(n1803), .Z(n1782) );
  CKBD0BWP12T30P140 U2161 ( .I(i_clk), .Z(n1787) );
  CKBD0BWP12T30P140 U2162 ( .I(i_clk), .Z(n1800) );
  CKBD0BWP12T30P140 U2163 ( .I(i_clk), .Z(n1667) );
  CKBD0BWP12T30P140 U2164 ( .I(n1667), .Z(n1785) );
  CKBD0BWP12T30P140 U2165 ( .I(i_clk), .Z(n1791) );
  CKBD0BWP12T30P140 U2166 ( .I(i_clk), .Z(n1792) );
  CKBD0BWP12T30P140 U2167 ( .I(i_clk), .Z(n1793) );
  CKBD0BWP12T30P140 U2168 ( .I(i_clk), .Z(n1795) );
  CKBD0BWP12T30P140 U2169 ( .I(i_clk), .Z(n1797) );
  CKBD0BWP12T30P140 U2170 ( .I(n1667), .Z(n1786) );
  CKBD0BWP12T30P140 U2171 ( .I(i_clk), .Z(n1794) );
  CKBD0BWP12T30P140 U2172 ( .I(i_clk), .Z(n1798) );
  CKBD0BWP12T30P140 U2173 ( .I(i_clk), .Z(n1796) );
  OR2D0BWP12T30P140 U2174 ( .A1(tm_int), .A2(al_int), .Z(o_interrupt) );
  ND2D0BWP12T30P140 U2175 ( .A1(n1668), .A2(i_wb_data[23]), .ZN(n1710) );
  IOA21D0BWP12T30P140 U2176 ( .A1(tm_start[23]), .A2(n1704), .B(n1710), .ZN(
        n845) );
  IOA21D0BWP12T30P140 U2177 ( .A1(tm_start[22]), .A2(n1704), .B(n1669), .ZN(
        n846) );
  IOA21D0BWP12T30P140 U2178 ( .A1(tm_start[19]), .A2(n1704), .B(n1670), .ZN(
        n849) );
  IOA21D0BWP12T30P140 U2179 ( .A1(tm_start[11]), .A2(n1704), .B(n1671), .ZN(
        n857) );
  IOA21D0BWP12T30P140 U2180 ( .A1(tm_start[14]), .A2(n1704), .B(n1672), .ZN(
        n854) );
  IOA21D0BWP12T30P140 U2181 ( .A1(tm_start[3]), .A2(n1704), .B(n1673), .ZN(
        n865) );
  IOA21D0BWP12T30P140 U2182 ( .A1(tm_start[9]), .A2(n1704), .B(n1674), .ZN(
        n859) );
  IOA21D0BWP12T30P140 U2183 ( .A1(tm_start[20]), .A2(n1704), .B(n1675), .ZN(
        n848) );
  IOA21D0BWP12T30P140 U2184 ( .A1(tm_start[4]), .A2(n1704), .B(n1676), .ZN(
        n864) );
  IOA21D0BWP12T30P140 U2185 ( .A1(tm_start[0]), .A2(n1704), .B(n1677), .ZN(
        n868) );
  ND2D0BWP12T30P140 U2186 ( .A1(n1679), .A2(n1678), .ZN(n972) );
  AOI22D0BWP12T30P140 U2187 ( .A1(stopwatch[16]), .A2(n1762), .B1(
        ck_last_clock[12]), .B2(n1738), .ZN(n1681) );
  AOI22D0BWP12T30P140 U2188 ( .A1(timer[12]), .A2(n1740), .B1(
        ck_last_clock[20]), .B2(n1739), .ZN(n1680) );
  ND2D0BWP12T30P140 U2189 ( .A1(n1681), .A2(n1680), .ZN(n967) );
  AOI22D0BWP12T30P140 U2190 ( .A1(stopwatch[12]), .A2(n1762), .B1(
        ck_last_clock[8]), .B2(n1738), .ZN(n1683) );
  AOI22D0BWP12T30P140 U2191 ( .A1(timer[8]), .A2(n1740), .B1(ck_last_clock[16]), .B2(n1739), .ZN(n1682) );
  ND2D0BWP12T30P140 U2192 ( .A1(n1683), .A2(n1682), .ZN(n963) );
  AOI22D0BWP12T30P140 U2193 ( .A1(stopwatch[8]), .A2(n1762), .B1(
        ck_last_clock[4]), .B2(n1738), .ZN(n1685) );
  AOI22D0BWP12T30P140 U2194 ( .A1(timer[4]), .A2(n1740), .B1(ck_last_clock[12]), .B2(n1739), .ZN(n1684) );
  ND2D0BWP12T30P140 U2195 ( .A1(n1685), .A2(n1684), .ZN(n959) );
  AOI22D0BWP12T30P140 U2196 ( .A1(ck_last_clock[0]), .A2(n1738), .B1(n1762), 
        .B2(stopwatch[4]), .ZN(n1687) );
  AOI22D0BWP12T30P140 U2197 ( .A1(timer[0]), .A2(n1740), .B1(ck_last_clock[8]), 
        .B2(n1739), .ZN(n1686) );
  ND2D0BWP12T30P140 U2198 ( .A1(n1687), .A2(n1686), .ZN(n955) );
  OAI211D0BWP12T30P140 U2199 ( .A1(ledreg[5]), .A2(n1689), .B(n1701), .C(n1688), .ZN(n1690) );
  IOA21D0BWP12T30P140 U2200 ( .A1(n1745), .A2(ledreg[5]), .B(n1690), .ZN(n804)
         );
  OAI211D0BWP12T30P140 U2201 ( .A1(n1692), .A2(ledreg[9]), .B(n1701), .C(n1691), .ZN(n1693) );
  IOA21D0BWP12T30P140 U2202 ( .A1(n1745), .A2(ledreg[9]), .B(n1693), .ZN(n800)
         );
  OAI211D0BWP12T30P140 U2203 ( .A1(n1695), .A2(ledreg[7]), .B(n1701), .C(n1694), .ZN(n1696) );
  IOA21D0BWP12T30P140 U2204 ( .A1(n1745), .A2(ledreg[7]), .B(n1696), .ZN(n802)
         );
  OAI211D0BWP12T30P140 U2205 ( .A1(n1698), .A2(ledreg[3]), .B(n1701), .C(n1697), .ZN(n1699) );
  IOA21D0BWP12T30P140 U2206 ( .A1(n1745), .A2(ledreg[3]), .B(n1699), .ZN(n806)
         );
  OAI211D0BWP12T30P140 U2207 ( .A1(ledreg[0]), .A2(ledreg[1]), .B(n1701), .C(
        n1700), .ZN(n1702) );
  IOA21D0BWP12T30P140 U2208 ( .A1(n1745), .A2(ledreg[1]), .B(n1702), .ZN(n808)
         );
  IOA21D0BWP12T30P140 U2209 ( .A1(tm_start[2]), .A2(n1704), .B(n1703), .ZN(
        n866) );
  OAI21D0BWP12T30P140 U2210 ( .A1(n1707), .A2(n1706), .B(n1705), .ZN(n1709) );
  AOI22D0BWP12T30P140 U2211 ( .A1(timer[23]), .A2(n1709), .B1(n1708), .B2(
        tm_start[23]), .ZN(n1711) );
  ND2D0BWP12T30P140 U2212 ( .A1(n1711), .A2(n1710), .ZN(n813) );
  AOI22D0BWP12T30P140 U2213 ( .A1(n1715), .A2(stopwatch[30]), .B1(n1714), .B2(
        hack_counter[38]), .ZN(n1713) );
  AOI22D0BWP12T30P140 U2214 ( .A1(n1717), .A2(ckspeed[30]), .B1(n1716), .B2(
        hack_counter[6]), .ZN(n1712) );
  ND2D0BWP12T30P140 U2215 ( .A1(n1713), .A2(n1712), .ZN(N869) );
  AOI22D0BWP12T30P140 U2216 ( .A1(n1715), .A2(stopwatch[31]), .B1(n1714), .B2(
        hack_counter[39]), .ZN(n1719) );
  AOI22D0BWP12T30P140 U2217 ( .A1(n1717), .A2(ckspeed[31]), .B1(n1716), .B2(
        hack_counter[7]), .ZN(n1718) );
  ND2D0BWP12T30P140 U2218 ( .A1(n1719), .A2(n1718), .ZN(N870) );
  AOI22D0BWP12T30P140 U2219 ( .A1(stopwatch[15]), .A2(n1762), .B1(
        ck_last_clock[11]), .B2(n1738), .ZN(n1721) );
  AOI22D0BWP12T30P140 U2220 ( .A1(timer[11]), .A2(n1740), .B1(
        ck_last_clock[19]), .B2(n1739), .ZN(n1720) );
  ND2D0BWP12T30P140 U2221 ( .A1(n1721), .A2(n1720), .ZN(n966) );
  AOI22D0BWP12T30P140 U2222 ( .A1(stopwatch[11]), .A2(n1762), .B1(
        ck_last_clock[7]), .B2(n1738), .ZN(n1723) );
  AOI22D0BWP12T30P140 U2223 ( .A1(timer[7]), .A2(n1740), .B1(ck_last_clock[15]), .B2(n1739), .ZN(n1722) );
  ND2D0BWP12T30P140 U2224 ( .A1(n1723), .A2(n1722), .ZN(n962) );
  AOI22D0BWP12T30P140 U2225 ( .A1(ck_last_clock[3]), .A2(n1738), .B1(n1762), 
        .B2(stopwatch[7]), .ZN(n1725) );
  AOI22D0BWP12T30P140 U2226 ( .A1(timer[3]), .A2(n1740), .B1(ck_last_clock[11]), .B2(n1739), .ZN(n1724) );
  ND2D0BWP12T30P140 U2227 ( .A1(n1725), .A2(n1724), .ZN(n958) );
  AOI22D0BWP12T30P140 U2228 ( .A1(ck_last_clock[1]), .A2(n1738), .B1(n1762), 
        .B2(stopwatch[5]), .ZN(n1727) );
  AOI22D0BWP12T30P140 U2229 ( .A1(timer[1]), .A2(n1740), .B1(ck_last_clock[9]), 
        .B2(n1739), .ZN(n1726) );
  ND2D0BWP12T30P140 U2230 ( .A1(n1727), .A2(n1726), .ZN(n956) );
  AOI22D0BWP12T30P140 U2231 ( .A1(stopwatch[9]), .A2(n1762), .B1(
        ck_last_clock[5]), .B2(n1738), .ZN(n1729) );
  AOI22D0BWP12T30P140 U2232 ( .A1(timer[5]), .A2(n1740), .B1(ck_last_clock[13]), .B2(n1739), .ZN(n1728) );
  ND2D0BWP12T30P140 U2233 ( .A1(n1729), .A2(n1728), .ZN(n960) );
  AOI22D0BWP12T30P140 U2234 ( .A1(stopwatch[13]), .A2(n1762), .B1(
        ck_last_clock[9]), .B2(n1738), .ZN(n1731) );
  AOI22D0BWP12T30P140 U2235 ( .A1(timer[9]), .A2(n1740), .B1(ck_last_clock[17]), .B2(n1739), .ZN(n1730) );
  ND2D0BWP12T30P140 U2236 ( .A1(n1731), .A2(n1730), .ZN(n964) );
  AOI22D0BWP12T30P140 U2237 ( .A1(stopwatch[17]), .A2(n1762), .B1(
        ck_last_clock[13]), .B2(n1738), .ZN(n1733) );
  AOI22D0BWP12T30P140 U2238 ( .A1(timer[13]), .A2(n1740), .B1(
        ck_last_clock[21]), .B2(n1739), .ZN(n1732) );
  ND2D0BWP12T30P140 U2239 ( .A1(n1733), .A2(n1732), .ZN(n968) );
  AOI22D0BWP12T30P140 U2240 ( .A1(stopwatch[10]), .A2(n1762), .B1(
        ck_last_clock[6]), .B2(n1738), .ZN(n1735) );
  AOI22D0BWP12T30P140 U2241 ( .A1(timer[6]), .A2(n1740), .B1(ck_last_clock[14]), .B2(n1739), .ZN(n1734) );
  ND2D0BWP12T30P140 U2242 ( .A1(n1735), .A2(n1734), .ZN(n961) );
  AOI22D0BWP12T30P140 U2243 ( .A1(ck_last_clock[2]), .A2(n1738), .B1(n1762), 
        .B2(stopwatch[6]), .ZN(n1737) );
  AOI22D0BWP12T30P140 U2244 ( .A1(timer[2]), .A2(n1740), .B1(ck_last_clock[10]), .B2(n1739), .ZN(n1736) );
  ND2D0BWP12T30P140 U2245 ( .A1(n1737), .A2(n1736), .ZN(n957) );
  AOI22D0BWP12T30P140 U2246 ( .A1(stopwatch[14]), .A2(n1762), .B1(
        ck_last_clock[10]), .B2(n1738), .ZN(n1742) );
  AOI22D0BWP12T30P140 U2247 ( .A1(timer[10]), .A2(n1740), .B1(
        ck_last_clock[18]), .B2(n1739), .ZN(n1741) );
  ND2D0BWP12T30P140 U2248 ( .A1(n1742), .A2(n1741), .ZN(n965) );
  INR2D1BWP12T30P140 U2249 ( .A1(ck_ppd), .B1(n1743), .ZN(o_ppd) );
  INR3D1BWP12T30P140 U2250 ( .A1(tm_sub[7]), .B1(n1745), .B2(n1744), .ZN(N291)
         );
  INR4D0BWP12T30P140 U2251 ( .A1(stopwatch[16]), .B1(stopwatch[18]), .B2(
        stopwatch[17]), .B3(stopwatch[23]), .ZN(n1746) );
  ND4D0BWP12T30P140 U2252 ( .A1(sw_ppm), .A2(stopwatch[22]), .A3(stopwatch[20]), .A4(n1746), .ZN(n1747) );
  NR4D0BWP12T30P140 U2253 ( .A1(n1749), .A2(stopwatch[21]), .A3(n1748), .A4(
        n1747), .ZN(N661) );
  ND4D0BWP12T30P140 U2254 ( .A1(stopwatch[8]), .A2(stopwatch[11]), .A3(n1751), 
        .A4(n1750), .ZN(n1756) );
  ND4D0BWP12T30P140 U2255 ( .A1(stopwatch[12]), .A2(n1754), .A3(n1753), .A4(
        n1752), .ZN(n1755) );
  INR4D0BWP12T30P140 U2256 ( .A1(stopwatch[14]), .B1(n1757), .B2(n1756), .B3(
        n1755), .ZN(N660) );
  ND4D0BWP12T30P140 U2257 ( .A1(ck_carry), .A2(stopwatch[0]), .A3(n1758), .A4(
        N618), .ZN(n1759) );
  NR3D0BWP12T30P140 U2258 ( .A1(n1761), .A2(n1760), .A3(n1759), .ZN(N659) );
  ND2D0BWP12T30P140 U2259 ( .A1(dmask[1]), .A2(n1765), .ZN(n1763) );
  INR2D1BWP12T30P140 U2260 ( .A1(n1762), .B1(n1763), .ZN(N751) );
  INR2D1BWP12T30P140 U2261 ( .A1(w_sseg[9]), .B1(n1763), .ZN(N752) );
  INR2D1BWP12T30P140 U2262 ( .A1(w_sseg[10]), .B1(n1763), .ZN(N753) );
  INR2D1BWP12T30P140 U2263 ( .A1(w_sseg[11]), .B1(n1763), .ZN(N754) );
  INR2D1BWP12T30P140 U2264 ( .A1(w_sseg[12]), .B1(n1763), .ZN(N755) );
  INR2D1BWP12T30P140 U2265 ( .A1(w_sseg[13]), .B1(n1763), .ZN(N756) );
  INR2D1BWP12T30P140 U2266 ( .A1(w_sseg[14]), .B1(n1763), .ZN(N757) );
  INR2D1BWP12T30P140 U2267 ( .A1(w_sseg[15]), .B1(n1763), .ZN(N758) );
  INR2D1BWP12T30P140 U2268 ( .A1(w_sseg[17]), .B1(n1764), .ZN(N760) );
  INR2D1BWP12T30P140 U2269 ( .A1(w_sseg[18]), .B1(n1764), .ZN(N761) );
  INR2D1BWP12T30P140 U2270 ( .A1(w_sseg[19]), .B1(n1764), .ZN(N762) );
  INR2D1BWP12T30P140 U2271 ( .A1(w_sseg[20]), .B1(n1764), .ZN(N763) );
  INR2D1BWP12T30P140 U2272 ( .A1(w_sseg[21]), .B1(n1764), .ZN(N764) );
  INR2D1BWP12T30P140 U2273 ( .A1(w_sseg[22]), .B1(n1764), .ZN(N765) );
  INR2D1BWP12T30P140 U2274 ( .A1(w_sseg[23]), .B1(n1764), .ZN(N766) );
  ND2D0BWP12T30P140 U2275 ( .A1(dmask[3]), .A2(n1765), .ZN(n1766) );
  INR2D1BWP12T30P140 U2276 ( .A1(w_sseg_25), .B1(n1766), .ZN(N767) );
  INR2D1BWP12T30P140 U2277 ( .A1(w_sseg_26), .B1(n1766), .ZN(N768) );
  INR2D1BWP12T30P140 U2278 ( .A1(w_sseg_27), .B1(n1766), .ZN(N769) );
  INR2D1BWP12T30P140 U2279 ( .A1(w_sseg_28), .B1(n1766), .ZN(N770) );
  INR2D1BWP12T30P140 U2280 ( .A1(w_sseg_29), .B1(n1766), .ZN(N771) );
  INR2D1BWP12T30P140 U2281 ( .A1(w_sseg_30), .B1(n1766), .ZN(N772) );
  INR2D1BWP12T30P140 U2282 ( .A1(w_sseg_31), .B1(n1766), .ZN(N773) );
  ND3D0BWP12T30P140 U2283 ( .A1(n1769), .A2(n1768), .A3(n1767), .ZN(n1771) );
  NR4D0BWP12T30P140 U2284 ( .A1(n1773), .A2(n1772), .A3(n1771), .A4(n1770), 
        .ZN(n973) );
endmodule

