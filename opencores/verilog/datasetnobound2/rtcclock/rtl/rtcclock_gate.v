/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:00:30 2026
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
         N770, N771, N772, N773, N857, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374,
         n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464,
         n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474,
         n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484,
         n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494,
         n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504,
         n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514,
         n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524,
         n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534,
         n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544,
         n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554,
         n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564,
         n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574,
         n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584,
         n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594,
         n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604,
         n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614,
         n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624,
         n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634,
         n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644,
         n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654,
         n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664,
         n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674,
         n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684,
         n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694,
         n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704,
         n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714,
         n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724,
         n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734,
         n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744,
         n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754,
         n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764,
         n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774,
         n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784,
         n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794,
         n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1810, n1811, n1812,
         n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822,
         n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831;
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

  hexmap_3 ha ( .i_clk(n1831), .i_hex(h_sseg[3:0]), .o_map({w_sseg_7, w_sseg_6, 
        w_sseg_5, w_sseg_4, w_sseg_3, w_sseg_2, w_sseg_1}) );
  hexmap_2 hb ( .i_clk(n1810), .i_hex(h_sseg[7:4]), .o_map(w_sseg[15:9]) );
  hexmap_1 hc ( .i_clk(n1810), .i_hex(h_sseg[11:8]), .o_map(w_sseg[23:17]) );
  hexmap_0 hd ( .i_clk(n1831), .i_hex(h_sseg[15:12]), .o_map({w_sseg_31, 
        w_sseg_30, w_sseg_29, w_sseg_28, w_sseg_27, w_sseg_26, w_sseg_25}) );
  DFQD2BWP12T30P140 ck_counter_reg_39_ ( .D(N107), .CP(n1830), .Q(
        ck_counter[39]) );
  DFQD2BWP12T30P140 ck_counter_reg_37_ ( .D(N105), .CP(n1830), .Q(
        ck_counter[37]) );
  DFQD2BWP12T30P140 ck_counter_reg_35_ ( .D(N103), .CP(n1830), .Q(
        ck_counter[35]) );
  DFQD2BWP12T30P140 ck_counter_reg_38_ ( .D(N106), .CP(n1830), .Q(
        ck_counter[38]) );
  DFQD2BWP12T30P140 ck_counter_reg_36_ ( .D(N104), .CP(n1830), .Q(
        ck_counter[36]) );
  DFQD2BWP12T30P140 ck_counter_reg_34_ ( .D(N102), .CP(n1830), .Q(
        ck_counter[34]) );
  DFQD2BWP12T30P140 o_sseg_reg_24_ ( .D(n681), .CP(n1810), .Q(o_sseg[24]) );
  DFQD2BWP12T30P140 o_sseg_reg_31_ ( .D(N773), .CP(n1818), .Q(o_sseg[31]) );
  DFQD2BWP12T30P140 o_sseg_reg_30_ ( .D(N772), .CP(n1818), .Q(o_sseg[30]) );
  DFQD2BWP12T30P140 o_sseg_reg_29_ ( .D(N771), .CP(n1818), .Q(o_sseg[29]) );
  DFQD2BWP12T30P140 o_sseg_reg_28_ ( .D(N770), .CP(n1818), .Q(o_sseg[28]) );
  DFQD2BWP12T30P140 o_sseg_reg_27_ ( .D(N769), .CP(n1817), .Q(o_sseg[27]) );
  DFQD2BWP12T30P140 o_sseg_reg_26_ ( .D(N768), .CP(n1817), .Q(o_sseg[26]) );
  DFQD2BWP12T30P140 o_sseg_reg_25_ ( .D(N767), .CP(n1817), .Q(o_sseg[25]) );
  DFQD2BWP12T30P140 o_sseg_reg_22_ ( .D(N765), .CP(n1817), .Q(o_sseg[22]) );
  DFQD2BWP12T30P140 o_sseg_reg_21_ ( .D(N764), .CP(n1817), .Q(o_sseg[21]) );
  DFQD2BWP12T30P140 o_sseg_reg_20_ ( .D(N763), .CP(n1817), .Q(o_sseg[20]) );
  DFQD2BWP12T30P140 o_sseg_reg_19_ ( .D(N762), .CP(n1817), .Q(o_sseg[19]) );
  DFQD2BWP12T30P140 o_sseg_reg_18_ ( .D(N761), .CP(n1817), .Q(o_sseg[18]) );
  DFQD2BWP12T30P140 o_sseg_reg_17_ ( .D(N760), .CP(n1817), .Q(o_sseg[17]) );
  DFQD2BWP12T30P140 o_sseg_reg_16_ ( .D(N759), .CP(n1817), .Q(o_sseg[16]) );
  DFQD2BWP12T30P140 o_sseg_reg_15_ ( .D(N758), .CP(n1817), .Q(o_sseg[15]) );
  DFQD2BWP12T30P140 o_sseg_reg_14_ ( .D(N757), .CP(n1817), .Q(o_sseg[14]) );
  DFQD2BWP12T30P140 o_sseg_reg_13_ ( .D(N756), .CP(n1817), .Q(o_sseg[13]) );
  DFQD2BWP12T30P140 o_sseg_reg_12_ ( .D(N755), .CP(n1817), .Q(o_sseg[12]) );
  DFQD2BWP12T30P140 o_sseg_reg_11_ ( .D(N754), .CP(n1817), .Q(o_sseg[11]) );
  DFQD2BWP12T30P140 o_sseg_reg_10_ ( .D(N753), .CP(n1817), .Q(o_sseg[10]) );
  DFQD2BWP12T30P140 o_sseg_reg_9_ ( .D(N752), .CP(n1817), .Q(o_sseg[9]) );
  DFQD2BWP12T30P140 o_sseg_reg_7_ ( .D(N750), .CP(n1817), .Q(o_sseg[7]) );
  DFQD2BWP12T30P140 o_sseg_reg_6_ ( .D(N749), .CP(n1816), .Q(o_sseg[6]) );
  DFQD2BWP12T30P140 o_sseg_reg_5_ ( .D(N748), .CP(n1816), .Q(o_sseg[5]) );
  DFQD2BWP12T30P140 o_sseg_reg_4_ ( .D(N747), .CP(n1816), .Q(o_sseg[4]) );
  DFQD2BWP12T30P140 o_sseg_reg_3_ ( .D(N746), .CP(n1816), .Q(o_sseg[3]) );
  DFQD2BWP12T30P140 o_sseg_reg_2_ ( .D(N745), .CP(n1816), .Q(o_sseg[2]) );
  DFQD2BWP12T30P140 o_sseg_reg_1_ ( .D(N744), .CP(n1816), .Q(o_sseg[1]) );
  DFQD2BWP12T30P140 o_sseg_reg_0_ ( .D(N743), .CP(n1816), .Q(o_sseg[0]) );
  DFQD2BWP12T30P140 o_data_reg_31_ ( .D(n998), .CP(n1815), .Q(o_data[31]) );
  DFQD2BWP12T30P140 o_data_reg_30_ ( .D(n999), .CP(n1815), .Q(o_data[30]) );
  DFQD2BWP12T30P140 o_data_reg_29_ ( .D(n1000), .CP(n1815), .Q(o_data[29]) );
  DFQD2BWP12T30P140 o_data_reg_28_ ( .D(n1001), .CP(n1815), .Q(o_data[28]) );
  DFQD2BWP12T30P140 o_data_reg_27_ ( .D(n1002), .CP(n1815), .Q(o_data[27]) );
  DFQD2BWP12T30P140 o_data_reg_26_ ( .D(n1003), .CP(n1815), .Q(o_data[26]) );
  DFQD2BWP12T30P140 o_data_reg_24_ ( .D(n972), .CP(n1815), .Q(o_data[24]) );
  DFQD2BWP12T30P140 o_data_reg_23_ ( .D(n973), .CP(n1815), .Q(o_data[23]) );
  DFQD2BWP12T30P140 o_data_reg_22_ ( .D(n974), .CP(n1815), .Q(o_data[22]) );
  DFQD2BWP12T30P140 o_data_reg_21_ ( .D(n976), .CP(n1815), .Q(o_data[21]) );
  DFQD2BWP12T30P140 o_data_reg_20_ ( .D(n977), .CP(n1815), .Q(o_data[20]) );
  DFQD2BWP12T30P140 o_data_reg_19_ ( .D(n978), .CP(n1815), .Q(o_data[19]) );
  DFQD2BWP12T30P140 o_data_reg_18_ ( .D(n979), .CP(n1815), .Q(o_data[18]) );
  DFQD2BWP12T30P140 o_data_reg_17_ ( .D(n980), .CP(n1815), .Q(o_data[17]) );
  DFQD2BWP12T30P140 o_data_reg_16_ ( .D(n981), .CP(n1814), .Q(o_data[16]) );
  DFQD2BWP12T30P140 o_data_reg_15_ ( .D(n982), .CP(n1814), .Q(o_data[15]) );
  DFQD2BWP12T30P140 o_data_reg_14_ ( .D(n983), .CP(n1814), .Q(o_data[14]) );
  DFQD2BWP12T30P140 o_data_reg_13_ ( .D(n984), .CP(n1814), .Q(o_data[13]) );
  DFQD2BWP12T30P140 o_data_reg_12_ ( .D(n985), .CP(n1814), .Q(o_data[12]) );
  DFQD2BWP12T30P140 o_data_reg_11_ ( .D(n986), .CP(n1814), .Q(o_data[11]) );
  DFQD2BWP12T30P140 o_data_reg_9_ ( .D(n988), .CP(n1814), .Q(o_data[9]) );
  DFQD2BWP12T30P140 o_data_reg_8_ ( .D(n989), .CP(n1814), .Q(o_data[8]) );
  DFQD2BWP12T30P140 o_data_reg_7_ ( .D(n990), .CP(n1814), .Q(o_data[7]) );
  DFQD2BWP12T30P140 o_data_reg_6_ ( .D(n991), .CP(n1814), .Q(o_data[6]) );
  DFQD2BWP12T30P140 o_data_reg_5_ ( .D(n992), .CP(n1814), .Q(o_data[5]) );
  DFQD2BWP12T30P140 o_data_reg_4_ ( .D(n993), .CP(n1814), .Q(o_data[4]) );
  DFQD2BWP12T30P140 o_data_reg_3_ ( .D(n994), .CP(n1814), .Q(o_data[3]) );
  DFQD2BWP12T30P140 o_data_reg_2_ ( .D(n995), .CP(n1814), .Q(o_data[2]) );
  DFQD2BWP12T30P140 o_data_reg_1_ ( .D(n996), .CP(n1814), .Q(o_data[1]) );
  DFQD2BWP12T30P140 o_data_reg_0_ ( .D(n997), .CP(n1814), .Q(o_data[0]) );
  DFQD2BWP12T30P140 hack_time_reg_1_ ( .D(n683), .CP(n1810), .Q(hack_time[1])
         );
  DFQD2BWP12T30P140 hack_time_reg_3_ ( .D(n685), .CP(n1810), .Q(hack_time[3])
         );
  DFQD2BWP12T30P140 hack_time_reg_2_ ( .D(n684), .CP(n1831), .Q(hack_time[2])
         );
  DFQD2BWP12T30P140 hack_time_reg_4_ ( .D(n686), .CP(n1831), .Q(hack_time[4])
         );
  DFQD2BWP12T30P140 tm_int_reg ( .D(N373), .CP(n1825), .Q(tm_int) );
  DFQD2BWP12T30P140 dmask_reg_3_ ( .D(n952), .CP(n1818), .Q(dmask[3]) );
  DFQD2BWP12T30P140 dmask_reg_1_ ( .D(n971), .CP(n1818), .Q(dmask[1]) );
  DFQD2BWP12T30P140 ck_prepps_reg ( .D(N857), .CP(n1827), .Q(ck_prepps) );
  DFQD2BWP12T30P140 ck_ppm_reg ( .D(N263), .CP(n1827), .Q(ck_ppm) );
  DFQD2BWP12T30P140 ck_pph_reg ( .D(N264), .CP(n1826), .Q(ck_pph) );
  DFQD2BWP12T30P140 stopwatch_reg_1_ ( .D(N613), .CP(n1822), .Q(stopwatch[1])
         );
  DFQD2BWP12T30P140 stopwatch_reg_2_ ( .D(N614), .CP(n1822), .Q(stopwatch[2])
         );
  DFQD2BWP12T30P140 stopwatch_reg_3_ ( .D(N615), .CP(n1822), .Q(stopwatch[3])
         );
  DFQD2BWP12T30P140 r_hack_carry_reg ( .D(n808), .CP(n1819), .Q(r_hack_carry)
         );
  DFQD2BWP12T30P140 ck_counter_reg_33_ ( .D(N101), .CP(n1829), .Q(
        ck_counter[33]) );
  DFQD2BWP12T30P140 ck_counter_reg_0_ ( .D(N68), .CP(n1828), .Q(ck_counter[0])
         );
  DFQD2BWP12T30P140 ck_sub_reg_3_ ( .D(n924), .CP(n1828), .Q(ck_sub[3]) );
  DFQD2BWP12T30P140 tm_start_reg_10_ ( .D(n856), .CP(n1823), .Q(tm_start[10])
         );
  DFQD2BWP12T30P140 timer_reg_16_ ( .D(n818), .CP(n1823), .Q(timer[16]) );
  DFQD2BWP12T30P140 timer_reg_18_ ( .D(n816), .CP(n1822), .Q(timer[18]) );
  DFQD2BWP12T30P140 sw_sub_reg_6_ ( .D(n892), .CP(n1821), .Q(sw_sub[6]) );
  DFQD2BWP12T30P140 alarm_time_reg_13_ ( .D(n943), .CP(n1819), .Q(
        alarm_time[13]) );
  DFQD2BWP12T30P140 alarm_time_reg_12_ ( .D(n942), .CP(n1819), .Q(
        alarm_time[12]) );
  DFQD2BWP12T30P140 ledreg_reg_14_ ( .D(n793), .CP(n1816), .Q(ledreg[14]) );
  DFQD2BWP12T30P140 ledreg_reg_12_ ( .D(n795), .CP(n1816), .Q(ledreg[12]) );
  DFQD2BWP12T30P140 ledreg_reg_10_ ( .D(n797), .CP(n1816), .Q(ledreg[10]) );
  DFQD2BWP12T30P140 ledreg_reg_8_ ( .D(n799), .CP(n1816), .Q(ledreg[8]) );
  DFQD2BWP12T30P140 ledreg_reg_6_ ( .D(n801), .CP(n1816), .Q(ledreg[6]) );
  DFQD2BWP12T30P140 ledreg_reg_2_ ( .D(n805), .CP(n1815), .Q(ledreg[2]) );
  DFQD2BWP12T30P140 al_int_reg ( .D(N675), .CP(n1819), .Q(al_int) );
  DFQD2BWP12T30P140 ck_ppd_reg ( .D(n975), .CP(n1826), .Q(ck_ppd) );
  DFQD2BWP12T30P140 tm_pps_reg ( .D(N291), .CP(n1825), .Q(tm_pps) );
  DFQD2BWP12T30P140 tm_start_reg_20_ ( .D(n846), .CP(n1822), .Q(tm_start[20])
         );
  DFQD2BWP12T30P140 dmask_reg_2_ ( .D(n969), .CP(n1818), .Q(dmask[2]) );
  DFQD2BWP12T30P140 tm_start_reg_5_ ( .D(n861), .CP(n1824), .Q(tm_start[5]) );
  DFQD2BWP12T30P140 tm_start_reg_13_ ( .D(n853), .CP(n1823), .Q(tm_start[13])
         );
  DFQD2BWP12T30P140 tm_start_reg_18_ ( .D(n848), .CP(n1823), .Q(tm_start[18])
         );
  DFQD2BWP12T30P140 tm_start_reg_19_ ( .D(n847), .CP(n1822), .Q(tm_start[19])
         );
  DFQD2BWP12T30P140 tm_start_reg_22_ ( .D(n844), .CP(n1822), .Q(tm_start[22])
         );
  DFQD2BWP12T30P140 tm_start_reg_23_ ( .D(n843), .CP(n1822), .Q(tm_start[23])
         );
  DFQD2BWP12T30P140 stopwatch_reg_28_ ( .D(n870), .CP(n1820), .Q(stopwatch[28]) );
  DFQD2BWP12T30P140 tm_start_reg_7_ ( .D(n859), .CP(n1824), .Q(tm_start[7]) );
  DFQD2BWP12T30P140 tm_start_reg_2_ ( .D(n864), .CP(n1824), .Q(tm_start[2]) );
  DFQD2BWP12T30P140 timer_reg_2_ ( .D(n832), .CP(n1824), .Q(timer[2]) );
  DFQD2BWP12T30P140 timer_reg_7_ ( .D(n827), .CP(n1824), .Q(timer[7]) );
  DFQD2BWP12T30P140 hack_counter_reg_34_ ( .D(n746), .CP(n1702), .Q(
        hack_counter[34]) );
  DFQD2BWP12T30P140 tm_start_reg_6_ ( .D(n860), .CP(n1824), .Q(tm_start[6]) );
  DFQD2BWP12T30P140 tm_start_reg_14_ ( .D(n852), .CP(n1824), .Q(tm_start[14])
         );
  DFQD2BWP12T30P140 tm_start_reg_21_ ( .D(n845), .CP(n1824), .Q(tm_start[21])
         );
  DFQD2BWP12T30P140 tm_start_reg_12_ ( .D(n854), .CP(n1823), .Q(tm_start[12])
         );
  DFQD2BWP12T30P140 tm_start_reg_16_ ( .D(n850), .CP(n1823), .Q(tm_start[16])
         );
  DFQD2BWP12T30P140 tm_start_reg_17_ ( .D(n849), .CP(n1823), .Q(tm_start[17])
         );
  DFQD2BWP12T30P140 hack_time_reg_26_ ( .D(n708), .CP(n1812), .Q(hack_time[26]) );
  DFQD2BWP12T30P140 tm_start_reg_3_ ( .D(n863), .CP(n1824), .Q(tm_start[3]) );
  DFQD2BWP12T30P140 hack_counter_reg_37_ ( .D(n749), .CP(n1830), .Q(
        hack_counter[37]) );
  DFQD2BWP12T30P140 hack_counter_reg_35_ ( .D(n747), .CP(n1702), .Q(
        hack_counter[35]) );
  DFQD2BWP12T30P140 hack_counter_reg_33_ ( .D(n745), .CP(n1830), .Q(
        hack_counter[33]) );
  DFQD2BWP12T30P140 hack_counter_reg_0_ ( .D(n712), .CP(n1812), .Q(
        hack_counter[0]) );
  DFQD2BWP12T30P140 tm_start_reg_1_ ( .D(n865), .CP(n1824), .Q(tm_start[1]) );
  DFQD2BWP12T30P140 tm_start_reg_0_ ( .D(n866), .CP(n1824), .Q(tm_start[0]) );
  DFQD2BWP12T30P140 tm_start_reg_9_ ( .D(n857), .CP(n1823), .Q(tm_start[9]) );
  DFQD2BWP12T30P140 tm_start_reg_11_ ( .D(n855), .CP(n1823), .Q(tm_start[11])
         );
  DFQD2BWP12T30P140 clock_reg_23_ ( .D(n787), .CP(n1814), .Q(clock[23]) );
  DFQD2BWP12T30P140 clock_reg_22_ ( .D(n786), .CP(n1813), .Q(clock[22]) );
  DFQD2BWP12T30P140 hack_counter_reg_39_ ( .D(n751), .CP(n1701), .Q(
        hack_counter[39]) );
  DFQD2BWP12T30P140 hack_time_reg_6_ ( .D(n688), .CP(n1811), .Q(hack_time[6])
         );
  DFQD2BWP12T30P140 stopwatch_reg_6_ ( .D(N618), .CP(n1821), .Q(stopwatch[6])
         );
  DFQD2BWP12T30P140 alarm_time_reg_10_ ( .D(n940), .CP(n1819), .Q(
        alarm_time[10]) );
  DFQD2BWP12T30P140 tm_sub_reg_5_ ( .D(n839), .CP(n1825), .Q(tm_sub[5]) );
  DFQD2BWP12T30P140 sw_sub_reg_4_ ( .D(n894), .CP(n1822), .Q(sw_sub[4]) );
  DFQD2BWP12T30P140 sw_sub_reg_7_ ( .D(n891), .CP(n1821), .Q(sw_sub[7]) );
  DFQD2BWP12T30P140 ledreg_reg_17_ ( .D(n790), .CP(n1816), .Q(ledreg[17]) );
  DFQD2BWP12T30P140 ledreg_reg_16_ ( .D(n791), .CP(n1816), .Q(ledreg[16]) );
  DFQD2BWP12T30P140 hack_counter_reg_2_ ( .D(n714), .CP(n1812), .Q(
        hack_counter[2]) );
  DFQD2BWP12T30P140 stopwatch_reg_4_ ( .D(N616), .CP(n1822), .Q(stopwatch[4])
         );
  DFQD2BWP12T30P140 stopwatch_reg_5_ ( .D(N617), .CP(n1821), .Q(stopwatch[5])
         );
  DFQD2BWP12T30P140 stopwatch_reg_7_ ( .D(N619), .CP(n1821), .Q(stopwatch[7])
         );
  DFQD2BWP12T30P140 hack_counter_reg_36_ ( .D(n748), .CP(n1830), .Q(
        hack_counter[36]) );
  DFQD2BWP12T30P140 hack_counter_reg_32_ ( .D(n744), .CP(n1830), .Q(
        hack_counter[32]) );
  DFQD2BWP12T30P140 alarm_time_reg_6_ ( .D(n936), .CP(n1819), .Q(alarm_time[6]) );
  DFQD2BWP12T30P140 ckspeed_reg_0_ ( .D(n752), .CP(n1830), .Q(ckspeed[0]) );
  DFQD2BWP12T30P140 hack_counter_reg_38_ ( .D(n750), .CP(n1702), .Q(
        hack_counter[38]) );
  DFQD2BWP12T30P140 hack_time_reg_23_ ( .D(n705), .CP(n1811), .Q(hack_time[23]) );
  DFQD2BWP12T30P140 hack_time_reg_22_ ( .D(n704), .CP(n1811), .Q(hack_time[22]) );
  DFQD2BWP12T30P140 hack_time_reg_21_ ( .D(n703), .CP(n1811), .Q(hack_time[21]) );
  DFQD2BWP12T30P140 hack_time_reg_20_ ( .D(n702), .CP(n1811), .Q(hack_time[20]) );
  DFQD2BWP12T30P140 hack_time_reg_19_ ( .D(n701), .CP(n1811), .Q(hack_time[19]) );
  DFQD2BWP12T30P140 hack_time_reg_18_ ( .D(n700), .CP(n1811), .Q(hack_time[18]) );
  DFQD2BWP12T30P140 hack_time_reg_16_ ( .D(n698), .CP(n1811), .Q(hack_time[16]) );
  DFQD2BWP12T30P140 hack_time_reg_15_ ( .D(n697), .CP(n1811), .Q(hack_time[15]) );
  DFQD2BWP12T30P140 hack_time_reg_14_ ( .D(n696), .CP(n1811), .Q(hack_time[14]) );
  DFQD2BWP12T30P140 hack_time_reg_13_ ( .D(n695), .CP(n1811), .Q(hack_time[13]) );
  DFQD2BWP12T30P140 hack_time_reg_12_ ( .D(n694), .CP(n1811), .Q(hack_time[12]) );
  DFQD2BWP12T30P140 hack_time_reg_11_ ( .D(n693), .CP(n1811), .Q(hack_time[11]) );
  DFQD2BWP12T30P140 hack_time_reg_10_ ( .D(n692), .CP(n1811), .Q(hack_time[10]) );
  DFQD2BWP12T30P140 hack_time_reg_9_ ( .D(n691), .CP(n1811), .Q(hack_time[9])
         );
  DFQD2BWP12T30P140 hack_time_reg_8_ ( .D(n690), .CP(n1811), .Q(hack_time[8])
         );
  DFQD2BWP12T30P140 hack_time_reg_7_ ( .D(n689), .CP(n1811), .Q(hack_time[7])
         );
  DFQD2BWP12T30P140 hack_time_reg_5_ ( .D(n687), .CP(n1811), .Q(hack_time[5])
         );
  DFQD2BWP12T30P140 hack_time_reg_29_ ( .D(n711), .CP(n1812), .Q(hack_time[29]) );
  DFQD2BWP12T30P140 hack_time_reg_28_ ( .D(n710), .CP(n1812), .Q(hack_time[28]) );
  DFQD2BWP12T30P140 hack_time_reg_27_ ( .D(n709), .CP(n1812), .Q(hack_time[27]) );
  DFQD2BWP12T30P140 hack_time_reg_24_ ( .D(n706), .CP(n1811), .Q(hack_time[24]) );
  DFQD2BWP12T30P140 hack_counter_reg_7_ ( .D(n719), .CP(n1812), .Q(
        hack_counter[7]) );
  DFQD2BWP12T30P140 hack_counter_reg_6_ ( .D(n718), .CP(n1812), .Q(
        hack_counter[6]) );
  DFQD2BWP12T30P140 hack_counter_reg_5_ ( .D(n717), .CP(n1812), .Q(
        hack_counter[5]) );
  DFQD2BWP12T30P140 hack_counter_reg_4_ ( .D(n716), .CP(n1812), .Q(
        hack_counter[4]) );
  DFQD2BWP12T30P140 hack_counter_reg_3_ ( .D(n715), .CP(n1812), .Q(
        hack_counter[3]) );
  DFQD2BWP12T30P140 hack_counter_reg_1_ ( .D(n713), .CP(n1812), .Q(
        hack_counter[1]) );
  DFQD2BWP12T30P140 hack_counter_reg_31_ ( .D(n743), .CP(n1701), .Q(
        hack_counter[31]) );
  DFQD2BWP12T30P140 hack_counter_reg_30_ ( .D(n742), .CP(n1702), .Q(
        hack_counter[30]) );
  DFQD2BWP12T30P140 hack_counter_reg_29_ ( .D(n741), .CP(n1830), .Q(
        hack_counter[29]) );
  DFQD2BWP12T30P140 hack_counter_reg_28_ ( .D(n740), .CP(n1810), .Q(
        hack_counter[28]) );
  DFQD2BWP12T30P140 hack_counter_reg_27_ ( .D(n739), .CP(n1701), .Q(
        hack_counter[27]) );
  DFQD2BWP12T30P140 hack_counter_reg_26_ ( .D(n738), .CP(n1702), .Q(
        hack_counter[26]) );
  DFQD2BWP12T30P140 hack_counter_reg_25_ ( .D(n737), .CP(n1702), .Q(
        hack_counter[25]) );
  DFQD2BWP12T30P140 hack_counter_reg_23_ ( .D(n735), .CP(n1702), .Q(
        hack_counter[23]) );
  DFQD2BWP12T30P140 hack_counter_reg_22_ ( .D(n734), .CP(n1701), .Q(
        hack_counter[22]) );
  DFQD2BWP12T30P140 hack_counter_reg_21_ ( .D(n733), .CP(n1701), .Q(
        hack_counter[21]) );
  DFQD2BWP12T30P140 hack_counter_reg_20_ ( .D(n732), .CP(n1702), .Q(
        hack_counter[20]) );
  DFQD2BWP12T30P140 hack_counter_reg_19_ ( .D(n731), .CP(n1830), .Q(
        hack_counter[19]) );
  DFQD2BWP12T30P140 hack_counter_reg_18_ ( .D(n730), .CP(n1701), .Q(
        hack_counter[18]) );
  DFQD2BWP12T30P140 hack_counter_reg_17_ ( .D(n729), .CP(n1702), .Q(
        hack_counter[17]) );
  DFQD2BWP12T30P140 hack_counter_reg_16_ ( .D(n728), .CP(n1702), .Q(
        hack_counter[16]) );
  DFQD2BWP12T30P140 hack_counter_reg_15_ ( .D(n727), .CP(n1701), .Q(
        hack_counter[15]) );
  DFQD2BWP12T30P140 hack_counter_reg_14_ ( .D(n726), .CP(n1812), .Q(
        hack_counter[14]) );
  DFQD2BWP12T30P140 hack_counter_reg_13_ ( .D(n725), .CP(n1812), .Q(
        hack_counter[13]) );
  DFQD2BWP12T30P140 hack_counter_reg_12_ ( .D(n724), .CP(n1812), .Q(
        hack_counter[12]) );
  DFQD2BWP12T30P140 hack_counter_reg_11_ ( .D(n723), .CP(n1812), .Q(
        hack_counter[11]) );
  DFQD2BWP12T30P140 hack_counter_reg_10_ ( .D(n722), .CP(n1812), .Q(
        hack_counter[10]) );
  DFQD2BWP12T30P140 hack_counter_reg_8_ ( .D(n720), .CP(n1812), .Q(
        hack_counter[8]) );
  DFQD2BWP12T30P140 timer_reg_10_ ( .D(n824), .CP(n1823), .Q(timer[10]) );
  DFQD2BWP12T30P140 tm_sub_reg_2_ ( .D(n836), .CP(n1824), .Q(tm_sub[2]) );
  DFQD2BWP12T30P140 timer_reg_13_ ( .D(n821), .CP(n1823), .Q(timer[13]) );
  DFQD2BWP12T30P140 ck_counter_reg_32_ ( .D(N100), .CP(n1829), .Q(
        ck_counter[32]) );
  DFQD2BWP12T30P140 al_enabled_reg ( .D(n784), .CP(n1813), .Q(al_enabled) );
  DFQD2BWP12T30P140 timer_reg_24_ ( .D(n810), .CP(n1825), .Q(timer[24]) );
  DFQD2BWP12T30P140 tm_sub_reg_6_ ( .D(n840), .CP(n1825), .Q(tm_sub[6]) );
  DFQD2BWP12T30P140 ledreg_reg_13_ ( .D(n794), .CP(n1816), .Q(ledreg[13]) );
  DFQD2BWP12T30P140 ledreg_reg_11_ ( .D(n796), .CP(n1816), .Q(ledreg[11]) );
  DFQD2BWP12T30P140 sw_sub_reg_2_ ( .D(n896), .CP(n1822), .Q(sw_sub[2]) );
  DFQD2BWP12T30P140 ledreg_reg_5_ ( .D(n802), .CP(n1816), .Q(ledreg[5]) );
  DFQD2BWP12T30P140 timer_reg_11_ ( .D(n823), .CP(n1823), .Q(timer[11]) );
  DFQD2BWP12T30P140 timer_reg_12_ ( .D(n822), .CP(n1823), .Q(timer[12]) );
  DFQD2BWP12T30P140 ck_sub_reg_4_ ( .D(n925), .CP(n1828), .Q(ck_sub[4]) );
  DFQD2BWP12T30P140 sw_pps_reg ( .D(N659), .CP(n1821), .Q(sw_pps) );
  DFQD2BWP12T30P140 tm_sub_reg_4_ ( .D(n838), .CP(n1825), .Q(tm_sub[4]) );
  DFQD2BWP12T30P140 ck_sub_reg_7_ ( .D(n928), .CP(n1828), .Q(ck_sub[7]) );
  DFQD2BWP12T30P140 ledreg_reg_15_ ( .D(n792), .CP(n1816), .Q(ledreg[15]) );
  DFQD2BWP12T30P140 ledreg_reg_9_ ( .D(n798), .CP(n1816), .Q(ledreg[9]) );
  DFQD2BWP12T30P140 ledreg_reg_7_ ( .D(n800), .CP(n1816), .Q(ledreg[7]) );
  DFQD2BWP12T30P140 ledreg_reg_3_ ( .D(n804), .CP(n1815), .Q(ledreg[3]) );
  DFQD2BWP12T30P140 ledreg_reg_1_ ( .D(n806), .CP(n1815), .Q(ledreg[1]) );
  DFQD2BWP12T30P140 timer_reg_25_ ( .D(n809), .CP(n1825), .Q(timer[25]) );
  DFQD2BWP12T30P140 alarm_time_reg_7_ ( .D(n937), .CP(n1819), .Q(alarm_time[7]) );
  DFQD2BWP12T30P140 alarm_time_reg_4_ ( .D(n934), .CP(n1819), .Q(alarm_time[4]) );
  DFQD2BWP12T30P140 alarm_time_reg_20_ ( .D(n950), .CP(n1820), .Q(
        alarm_time[20]) );
  DFQD2BWP12T30P140 alarm_time_reg_18_ ( .D(n948), .CP(n1820), .Q(
        alarm_time[18]) );
  DFQD2BWP12T30P140 alarm_time_reg_11_ ( .D(n941), .CP(n1819), .Q(
        alarm_time[11]) );
  DFQD2BWP12T30P140 alarm_time_reg_8_ ( .D(n938), .CP(n1819), .Q(alarm_time[8]) );
  DFQD2BWP12T30P140 alarm_time_reg_5_ ( .D(n935), .CP(n1819), .Q(alarm_time[5]) );
  DFQD2BWP12T30P140 alarm_time_reg_2_ ( .D(n932), .CP(n1819), .Q(alarm_time[2]) );
  DFQD2BWP12T30P140 alarm_time_reg_1_ ( .D(n931), .CP(n1819), .Q(alarm_time[1]) );
  DFQD2BWP12T30P140 alarm_time_reg_0_ ( .D(n930), .CP(n1819), .Q(alarm_time[0]) );
  DFQD2BWP12T30P140 stopwatch_reg_30_ ( .D(n868), .CP(n1820), .Q(stopwatch[30]) );
  DFQD2BWP12T30P140 tm_sub_reg_7_ ( .D(n841), .CP(n1825), .Q(tm_sub[7]) );
  DFQD2BWP12T30P140 stopwatch_reg_31_ ( .D(n867), .CP(n1820), .Q(stopwatch[31]) );
  DFQD2BWP12T30P140 al_tripped_reg ( .D(n899), .CP(n1819), .Q(al_tripped) );
  DFQD2BWP12T30P140 timer_reg_8_ ( .D(n826), .CP(n1823), .Q(timer[8]) );
  DFQD2BWP12T30P140 alarm_time_reg_19_ ( .D(n949), .CP(n1820), .Q(
        alarm_time[19]) );
  DFQD2BWP12T30P140 timer_reg_20_ ( .D(n814), .CP(n1822), .Q(timer[20]) );
  DFQD2BWP12T30P140 stopwatch_reg_27_ ( .D(n871), .CP(n1820), .Q(stopwatch[27]) );
  DFQD2BWP12T30P140 sw_pph_reg ( .D(N661), .CP(n1820), .Q(sw_pph) );
  DFQD2BWP12T30P140 tm_sub_reg_3_ ( .D(n837), .CP(n1824), .Q(tm_sub[3]) );
  DFQD2BWP12T30P140 ck_sub_reg_2_ ( .D(n923), .CP(n1828), .Q(ck_sub[2]) );
  DFQD2BWP12T30P140 tm_sub_reg_1_ ( .D(n835), .CP(n1824), .Q(tm_sub[1]) );
  DFQD2BWP12T30P140 ledreg_reg_0_ ( .D(n807), .CP(n1815), .Q(ledreg[0]) );
  DFQD2BWP12T30P140 sw_ppm_reg ( .D(N660), .CP(n1821), .Q(sw_ppm) );
  DFQD2BWP12T30P140 sw_sub_reg_5_ ( .D(n893), .CP(n1822), .Q(sw_sub[5]) );
  DFQD2BWP12T30P140 timer_reg_3_ ( .D(n831), .CP(n1824), .Q(timer[3]) );
  DFQD2BWP12T30P140 timer_reg_1_ ( .D(n833), .CP(n1824), .Q(timer[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_1_ ( .D(clock[1]), .CP(n1825), .Q(
        ck_last_clock[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_0_ ( .D(clock[0]), .CP(n1825), .Q(
        ck_last_clock[0]) );
  DFQD2BWP12T30P140 sw_sub_reg_1_ ( .D(n897), .CP(n1822), .Q(sw_sub[1]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_18_ ( .D(clock[18]), .CP(n1826), .Q(
        ck_last_clock[18]) );
  DFQD2BWP12T30P140 stopwatch_reg_0_ ( .D(n785), .CP(n1813), .Q(stopwatch[0])
         );
  DFQD2BWP12T30P140 ck_last_clock_reg_2_ ( .D(clock[2]), .CP(n1825), .Q(
        ck_last_clock[2]) );
  DFQD2BWP12T30P140 ck_sub_reg_6_ ( .D(n927), .CP(n1828), .Q(ck_sub[6]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_19_ ( .D(clock[19]), .CP(n1826), .Q(
        ck_last_clock[19]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_17_ ( .D(clock[17]), .CP(n1826), .Q(
        ck_last_clock[17]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_16_ ( .D(clock[16]), .CP(n1826), .Q(
        ck_last_clock[16]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_7_ ( .D(clock[7]), .CP(n1825), .Q(
        ck_last_clock[7]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_4_ ( .D(clock[4]), .CP(n1825), .Q(
        ck_last_clock[4]) );
  DFQD2BWP12T30P140 timer_reg_15_ ( .D(n819), .CP(n1823), .Q(timer[15]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_6_ ( .D(clock[6]), .CP(n1825), .Q(
        ck_last_clock[6]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_5_ ( .D(clock[5]), .CP(n1825), .Q(
        ck_last_clock[5]) );
  DFQD2BWP12T30P140 alarm_time_reg_21_ ( .D(n951), .CP(n1820), .Q(
        alarm_time[21]) );
  DFQD2BWP12T30P140 alarm_time_reg_15_ ( .D(n945), .CP(n1820), .Q(
        alarm_time[15]) );
  DFQD2BWP12T30P140 alarm_time_reg_14_ ( .D(n944), .CP(n1820), .Q(
        alarm_time[14]) );
  DFQD2BWP12T30P140 alarm_time_reg_9_ ( .D(n939), .CP(n1819), .Q(alarm_time[9]) );
  DFQD2BWP12T30P140 timer_reg_19_ ( .D(n815), .CP(n1822), .Q(timer[19]) );
  DFQD2BWP12T30P140 alarm_time_reg_17_ ( .D(n947), .CP(n1820), .Q(
        alarm_time[17]) );
  DFQD2BWP12T30P140 timer_reg_14_ ( .D(n820), .CP(n1823), .Q(timer[14]) );
  DFQD2BWP12T30P140 sw_sub_reg_3_ ( .D(n895), .CP(n1822), .Q(sw_sub[3]) );
  DFQD2BWP12T30P140 timer_reg_6_ ( .D(n828), .CP(n1823), .Q(timer[6]) );
  DFQD2BWP12T30P140 stopwatch_reg_26_ ( .D(n872), .CP(n1820), .Q(stopwatch[26]) );
  DFQD2BWP12T30P140 timer_reg_22_ ( .D(n812), .CP(n1822), .Q(timer[22]) );
  DFQD2BWP12T30P140 timer_reg_5_ ( .D(n829), .CP(n1824), .Q(timer[5]) );
  DFQD2BWP12T30P140 stopwatch_reg_10_ ( .D(n888), .CP(n1821), .Q(stopwatch[10]) );
  DFQD2BWP12T30P140 timer_reg_0_ ( .D(n834), .CP(n1824), .Q(timer[0]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_20_ ( .D(clock[20]), .CP(n1826), .Q(
        ck_last_clock[20]) );
  DFQD2BWP12T30P140 timer_reg_17_ ( .D(n817), .CP(n1822), .Q(timer[17]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_21_ ( .D(clock[21]), .CP(n1826), .Q(
        ck_last_clock[21]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_13_ ( .D(clock[13]), .CP(n1826), .Q(
        ck_last_clock[13]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_14_ ( .D(clock[14]), .CP(n1826), .Q(
        ck_last_clock[14]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_12_ ( .D(clock[12]), .CP(n1826), .Q(
        ck_last_clock[12]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_11_ ( .D(clock[11]), .CP(n1826), .Q(
        ck_last_clock[11]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_10_ ( .D(clock[10]), .CP(n1826), .Q(
        ck_last_clock[10]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_9_ ( .D(clock[9]), .CP(n1825), .Q(
        ck_last_clock[9]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_8_ ( .D(clock[8]), .CP(n1825), .Q(
        ck_last_clock[8]) );
  DFQD2BWP12T30P140 timer_reg_4_ ( .D(n830), .CP(n1824), .Q(timer[4]) );
  DFQD2BWP12T30P140 clock_reg_25_ ( .D(n789), .CP(n1814), .Q(clock[25]) );
  DFQD2BWP12T30P140 stopwatch_reg_11_ ( .D(n887), .CP(n1821), .Q(stopwatch[11]) );
  DFQD2BWP12T30P140 h_sseg_reg_12_ ( .D(n965), .CP(n1818), .Q(h_sseg[12]) );
  DFQD2BWP12T30P140 h_sseg_reg_8_ ( .D(n961), .CP(n1818), .Q(h_sseg[8]) );
  DFQD2BWP12T30P140 h_sseg_reg_4_ ( .D(n957), .CP(n1818), .Q(h_sseg[4]) );
  DFQD2BWP12T30P140 h_sseg_reg_0_ ( .D(n953), .CP(n1818), .Q(h_sseg[0]) );
  DFQD2BWP12T30P140 ck_last_clock_reg_15_ ( .D(clock[15]), .CP(n1826), .Q(
        ck_last_clock[15]) );
  DFQD2BWP12T30P140 ck_sub_reg_1_ ( .D(n922), .CP(n1827), .Q(ck_sub[1]) );
  DFQD2BWP12T30P140 stopwatch_reg_15_ ( .D(n883), .CP(n1821), .Q(stopwatch[15]) );
  DFQD2BWP12T30P140 stopwatch_reg_23_ ( .D(n875), .CP(n1821), .Q(stopwatch[23]) );
  DFQD2BWP12T30P140 stopwatch_reg_19_ ( .D(n879), .CP(n1821), .Q(stopwatch[19]) );
  DFQD2BWP12T30P140 stopwatch_reg_25_ ( .D(n873), .CP(n1820), .Q(stopwatch[25]) );
  DFQD2BWP12T30P140 ck_counter_reg_31_ ( .D(N99), .CP(n1829), .Q(
        ck_counter[31]) );
  DFQD2BWP12T30P140 ck_counter_reg_30_ ( .D(N98), .CP(n1829), .Q(
        ck_counter[30]) );
  DFQD2BWP12T30P140 ck_counter_reg_29_ ( .D(N97), .CP(n1829), .Q(
        ck_counter[29]) );
  DFQD2BWP12T30P140 ck_counter_reg_28_ ( .D(N96), .CP(n1829), .Q(
        ck_counter[28]) );
  DFQD2BWP12T30P140 ck_counter_reg_27_ ( .D(N95), .CP(n1829), .Q(
        ck_counter[27]) );
  DFQD2BWP12T30P140 ck_counter_reg_26_ ( .D(N94), .CP(n1829), .Q(
        ck_counter[26]) );
  DFQD2BWP12T30P140 ck_counter_reg_25_ ( .D(N93), .CP(n1829), .Q(
        ck_counter[25]) );
  DFQD2BWP12T30P140 ck_counter_reg_24_ ( .D(N92), .CP(n1829), .Q(
        ck_counter[24]) );
  DFQD2BWP12T30P140 ck_counter_reg_23_ ( .D(N91), .CP(n1829), .Q(
        ck_counter[23]) );
  DFQD2BWP12T30P140 ck_counter_reg_21_ ( .D(N89), .CP(n1829), .Q(
        ck_counter[21]) );
  DFQD2BWP12T30P140 ck_counter_reg_20_ ( .D(N88), .CP(n1829), .Q(
        ck_counter[20]) );
  DFQD2BWP12T30P140 ck_counter_reg_19_ ( .D(N87), .CP(n1829), .Q(
        ck_counter[19]) );
  DFQD2BWP12T30P140 ck_counter_reg_18_ ( .D(N86), .CP(n1829), .Q(
        ck_counter[18]) );
  DFQD2BWP12T30P140 ck_counter_reg_17_ ( .D(N85), .CP(n1829), .Q(
        ck_counter[17]) );
  DFQD2BWP12T30P140 ck_counter_reg_16_ ( .D(N84), .CP(n1829), .Q(
        ck_counter[16]) );
  DFQD2BWP12T30P140 ck_counter_reg_15_ ( .D(N83), .CP(n1829), .Q(
        ck_counter[15]) );
  DFQD2BWP12T30P140 ck_counter_reg_14_ ( .D(N82), .CP(n1829), .Q(
        ck_counter[14]) );
  DFQD2BWP12T30P140 ck_counter_reg_13_ ( .D(N81), .CP(n1828), .Q(
        ck_counter[13]) );
  DFQD2BWP12T30P140 ck_counter_reg_12_ ( .D(N80), .CP(n1828), .Q(
        ck_counter[12]) );
  DFQD2BWP12T30P140 ck_counter_reg_11_ ( .D(N79), .CP(n1828), .Q(
        ck_counter[11]) );
  DFQD2BWP12T30P140 ck_counter_reg_10_ ( .D(N78), .CP(n1828), .Q(
        ck_counter[10]) );
  DFQD2BWP12T30P140 ck_counter_reg_9_ ( .D(N77), .CP(n1828), .Q(ck_counter[9])
         );
  DFQD2BWP12T30P140 ck_counter_reg_8_ ( .D(N76), .CP(n1828), .Q(ck_counter[8])
         );
  DFQD2BWP12T30P140 ck_counter_reg_6_ ( .D(N74), .CP(n1828), .Q(ck_counter[6])
         );
  DFQD2BWP12T30P140 ck_counter_reg_5_ ( .D(N73), .CP(n1828), .Q(ck_counter[5])
         );
  DFQD2BWP12T30P140 ck_counter_reg_4_ ( .D(N72), .CP(n1828), .Q(ck_counter[4])
         );
  DFQD2BWP12T30P140 ck_counter_reg_3_ ( .D(N71), .CP(n1828), .Q(ck_counter[3])
         );
  DFQD2BWP12T30P140 ck_counter_reg_2_ ( .D(N70), .CP(n1828), .Q(ck_counter[2])
         );
  DFQD2BWP12T30P140 ck_counter_reg_1_ ( .D(N69), .CP(n1828), .Q(ck_counter[1])
         );
  DFQD2BWP12T30P140 ck_sub_reg_0_ ( .D(n929), .CP(n1827), .Q(ck_sub[0]) );
  DFQD2BWP12T30P140 h_sseg_reg_13_ ( .D(n966), .CP(n1819), .Q(h_sseg[13]) );
  DFQD2BWP12T30P140 h_sseg_reg_9_ ( .D(n962), .CP(n1818), .Q(h_sseg[9]) );
  DFQD2BWP12T30P140 h_sseg_reg_5_ ( .D(n958), .CP(n1818), .Q(h_sseg[5]) );
  DFQD2BWP12T30P140 h_sseg_reg_1_ ( .D(n954), .CP(n1818), .Q(h_sseg[1]) );
  DFQD2BWP12T30P140 clock_reg_11_ ( .D(n910), .CP(n1827), .Q(clock[11]) );
  DFQD2BWP12T30P140 clock_reg_21_ ( .D(n900), .CP(n1826), .Q(clock[21]) );
  DFQD2BWP12T30P140 stopwatch_reg_13_ ( .D(n885), .CP(n1821), .Q(stopwatch[13]) );
  DFQD2BWP12T30P140 h_sseg_reg_14_ ( .D(n967), .CP(n1819), .Q(h_sseg[14]) );
  DFQD2BWP12T30P140 h_sseg_reg_10_ ( .D(n963), .CP(n1818), .Q(h_sseg[10]) );
  DFQD2BWP12T30P140 h_sseg_reg_6_ ( .D(n959), .CP(n1818), .Q(h_sseg[6]) );
  DFQD2BWP12T30P140 h_sseg_reg_2_ ( .D(n955), .CP(n1818), .Q(h_sseg[2]) );
  DFQD2BWP12T30P140 timer_reg_9_ ( .D(n825), .CP(n1823), .Q(timer[9]) );
  DFQD2BWP12T30P140 stopwatch_reg_22_ ( .D(n876), .CP(n1820), .Q(stopwatch[22]) );
  DFQD2BWP12T30P140 stopwatch_reg_20_ ( .D(n878), .CP(n1820), .Q(stopwatch[20]) );
  DFQD2BWP12T30P140 ckspeed_reg_25_ ( .D(n777), .CP(n1813), .Q(ckspeed[25]) );
  DFQD2BWP12T30P140 ckspeed_reg_24_ ( .D(n776), .CP(n1813), .Q(ckspeed[24]) );
  DFQD2BWP12T30P140 ckspeed_reg_23_ ( .D(n775), .CP(n1813), .Q(ckspeed[23]) );
  DFQD2BWP12T30P140 ckspeed_reg_22_ ( .D(n774), .CP(n1813), .Q(ckspeed[22]) );
  DFQD2BWP12T30P140 ckspeed_reg_21_ ( .D(n773), .CP(n1813), .Q(ckspeed[21]) );
  DFQD2BWP12T30P140 ckspeed_reg_20_ ( .D(n772), .CP(n1813), .Q(ckspeed[20]) );
  DFQD2BWP12T30P140 ckspeed_reg_19_ ( .D(n771), .CP(n1813), .Q(ckspeed[19]) );
  DFQD2BWP12T30P140 ckspeed_reg_17_ ( .D(n769), .CP(n1813), .Q(ckspeed[17]) );
  DFQD2BWP12T30P140 ckspeed_reg_16_ ( .D(n768), .CP(n1813), .Q(ckspeed[16]) );
  DFQD2BWP12T30P140 ckspeed_reg_15_ ( .D(n767), .CP(n1813), .Q(ckspeed[15]) );
  DFQD2BWP12T30P140 ckspeed_reg_14_ ( .D(n766), .CP(n1701), .Q(ckspeed[14]) );
  DFQD2BWP12T30P140 ckspeed_reg_13_ ( .D(n765), .CP(n1702), .Q(ckspeed[13]) );
  DFQD2BWP12T30P140 ckspeed_reg_12_ ( .D(n764), .CP(n1830), .Q(ckspeed[12]) );
  DFQD2BWP12T30P140 ckspeed_reg_11_ ( .D(n763), .CP(n1702), .Q(ckspeed[11]) );
  DFQD2BWP12T30P140 ckspeed_reg_10_ ( .D(n762), .CP(n1701), .Q(ckspeed[10]) );
  DFQD2BWP12T30P140 ckspeed_reg_9_ ( .D(n761), .CP(n1701), .Q(ckspeed[9]) );
  DFQD2BWP12T30P140 ckspeed_reg_8_ ( .D(n760), .CP(n1830), .Q(ckspeed[8]) );
  DFQD2BWP12T30P140 ckspeed_reg_7_ ( .D(n759), .CP(n1702), .Q(ckspeed[7]) );
  DFQD2BWP12T30P140 ckspeed_reg_6_ ( .D(n758), .CP(n1701), .Q(ckspeed[6]) );
  DFQD2BWP12T30P140 ckspeed_reg_5_ ( .D(n757), .CP(n1830), .Q(ckspeed[5]) );
  DFQD2BWP12T30P140 ckspeed_reg_4_ ( .D(n756), .CP(n1830), .Q(ckspeed[4]) );
  DFQD2BWP12T30P140 ckspeed_reg_2_ ( .D(n754), .CP(n1702), .Q(ckspeed[2]) );
  DFQD2BWP12T30P140 ckspeed_reg_1_ ( .D(n753), .CP(n1701), .Q(ckspeed[1]) );
  DFQD2BWP12T30P140 stopwatch_reg_18_ ( .D(n880), .CP(n1821), .Q(stopwatch[18]) );
  DFQD2BWP12T30P140 ckspeed_reg_31_ ( .D(n783), .CP(n1813), .Q(ckspeed[31]) );
  DFQD2BWP12T30P140 ckspeed_reg_30_ ( .D(n782), .CP(n1813), .Q(ckspeed[30]) );
  DFQD2BWP12T30P140 ckspeed_reg_29_ ( .D(n781), .CP(n1813), .Q(ckspeed[29]) );
  DFQD2BWP12T30P140 ckspeed_reg_28_ ( .D(n780), .CP(n1813), .Q(ckspeed[28]) );
  DFQD2BWP12T30P140 ckspeed_reg_27_ ( .D(n779), .CP(n1813), .Q(ckspeed[27]) );
  DFQD2BWP12T30P140 ckspeed_reg_26_ ( .D(n778), .CP(n1813), .Q(ckspeed[26]) );
  DFQD2BWP12T30P140 stopwatch_reg_21_ ( .D(n877), .CP(n1820), .Q(stopwatch[21]) );
  DFQD2BWP12T30P140 stopwatch_reg_9_ ( .D(n889), .CP(n1821), .Q(stopwatch[9])
         );
  DFQD2BWP12T30P140 clock_reg_14_ ( .D(n907), .CP(n1827), .Q(clock[14]) );
  DFQD2BWP12T30P140 clock_reg_20_ ( .D(n901), .CP(n1826), .Q(clock[20]) );
  DFQD2BWP12T30P140 clock_reg_7_ ( .D(n914), .CP(n1827), .Q(clock[7]) );
  DFQD2BWP12T30P140 clock_reg_3_ ( .D(n918), .CP(n1827), .Q(clock[3]) );
  DFQD2BWP12T30P140 clock_reg_24_ ( .D(n788), .CP(n1814), .Q(clock[24]) );
  DFQD2BWP12T30P140 stopwatch_reg_12_ ( .D(n886), .CP(n1821), .Q(stopwatch[12]) );
  DFQD2BWP12T30P140 clock_reg_15_ ( .D(n906), .CP(n1827), .Q(clock[15]) );
  DFQD2BWP12T30P140 stopwatch_reg_24_ ( .D(n874), .CP(n1820), .Q(stopwatch[24]) );
  DFQD2BWP12T30P140 stopwatch_reg_14_ ( .D(n884), .CP(n1821), .Q(stopwatch[14]) );
  DFQD2BWP12T30P140 clock_reg_17_ ( .D(n904), .CP(n1826), .Q(clock[17]) );
  DFQD2BWP12T30P140 clock_reg_18_ ( .D(n903), .CP(n1826), .Q(clock[18]) );
  DFQD2BWP12T30P140 clock_reg_16_ ( .D(n905), .CP(n1826), .Q(clock[16]) );
  DFQD2BWP12T30P140 clock_reg_9_ ( .D(n912), .CP(n1827), .Q(clock[9]) );
  DFQD2BWP12T30P140 h_sseg_reg_15_ ( .D(n968), .CP(n1819), .Q(h_sseg[15]) );
  DFQD2BWP12T30P140 h_sseg_reg_11_ ( .D(n964), .CP(n1818), .Q(h_sseg[11]) );
  DFQD2BWP12T30P140 h_sseg_reg_7_ ( .D(n960), .CP(n1818), .Q(h_sseg[7]) );
  DFQD2BWP12T30P140 h_sseg_reg_3_ ( .D(n956), .CP(n1818), .Q(h_sseg[3]) );
  DFQD2BWP12T30P140 stopwatch_reg_8_ ( .D(n890), .CP(n1821), .Q(stopwatch[8])
         );
  DFQD2BWP12T30P140 clock_reg_1_ ( .D(n920), .CP(n1827), .Q(clock[1]) );
  DFQD2BWP12T30P140 clock_reg_4_ ( .D(n917), .CP(n1827), .Q(clock[4]) );
  DFQD2BWP12T30P140 clock_reg_5_ ( .D(n916), .CP(n1827), .Q(clock[5]) );
  DFQD2BWP12T30P140 clock_reg_19_ ( .D(n902), .CP(n1826), .Q(clock[19]) );
  DFQD2BWP12T30P140 stopwatch_reg_16_ ( .D(n882), .CP(n1821), .Q(stopwatch[16]) );
  DFQD2BWP12T30P140 clock_reg_0_ ( .D(n921), .CP(n1827), .Q(clock[0]) );
  DFQD2BWP12T30P140 clock_reg_2_ ( .D(n919), .CP(n1827), .Q(clock[2]) );
  DFQD2BWP12T30P140 clock_reg_12_ ( .D(n909), .CP(n1827), .Q(clock[12]) );
  DFQD2BWP12T30P140 clock_reg_6_ ( .D(n915), .CP(n1827), .Q(clock[6]) );
  DFQD2BWP12T30P140 clock_reg_10_ ( .D(n911), .CP(n1827), .Q(clock[10]) );
  DFQD2BWP12T30P140 clock_reg_13_ ( .D(n908), .CP(n1827), .Q(clock[13]) );
  DFQD2BWP12T30P140 ck_carry_reg ( .D(N108), .CP(n1830), .Q(ck_carry) );
  DFQD1BWP12T30P140 o_sseg_reg_23_ ( .D(N766), .CP(n1817), .Q(o_sseg[23]) );
  DFQD1BWP12T30P140 o_sseg_reg_8_ ( .D(N751), .CP(n1817), .Q(o_sseg[8]) );
  DFQD1BWP12T30P140 o_data_reg_25_ ( .D(n970), .CP(n1815), .Q(o_data[25]) );
  DFQD1BWP12T30P140 o_data_reg_10_ ( .D(n987), .CP(n1814), .Q(o_data[10]) );
  DFQD1BWP12T30P140 hack_time_reg_0_ ( .D(n682), .CP(n1831), .Q(hack_time[0])
         );
  DFQD1BWP12T30P140 tm_start_reg_15_ ( .D(n851), .CP(n1823), .Q(tm_start[15])
         );
  DFQD1BWP12T30P140 tm_start_reg_4_ ( .D(n862), .CP(n1824), .Q(tm_start[4]) );
  DFQD1BWP12T30P140 stopwatch_reg_29_ ( .D(n869), .CP(n1820), .Q(stopwatch[29]) );
  DFQD1BWP12T30P140 tm_start_reg_8_ ( .D(n858), .CP(n1823), .Q(tm_start[8]) );
  DFQD1BWP12T30P140 ledreg_reg_4_ ( .D(n803), .CP(n1815), .Q(ledreg[4]) );
  DFQD1BWP12T30P140 hack_time_reg_17_ ( .D(n699), .CP(n1811), .Q(hack_time[17]) );
  DFQD1BWP12T30P140 hack_time_reg_25_ ( .D(n707), .CP(n1812), .Q(hack_time[25]) );
  DFQD1BWP12T30P140 hack_counter_reg_24_ ( .D(n736), .CP(n1701), .Q(
        hack_counter[24]) );
  DFQD1BWP12T30P140 hack_counter_reg_9_ ( .D(n721), .CP(n1812), .Q(
        hack_counter[9]) );
  DFQD1BWP12T30P140 ck_sub_reg_5_ ( .D(n926), .CP(n1828), .Q(ck_sub[5]) );
  DFQD1BWP12T30P140 alarm_time_reg_16_ ( .D(n946), .CP(n1820), .Q(
        alarm_time[16]) );
  DFQD1BWP12T30P140 timer_reg_23_ ( .D(n811), .CP(n1825), .Q(timer[23]) );
  DFQD1BWP12T30P140 ck_last_clock_reg_3_ ( .D(clock[3]), .CP(n1825), .Q(
        ck_last_clock[3]) );
  DFQD1BWP12T30P140 alarm_time_reg_3_ ( .D(n933), .CP(n1819), .Q(alarm_time[3]) );
  DFQD1BWP12T30P140 sw_sub_reg_0_ ( .D(n898), .CP(n1822), .Q(sw_sub[0]) );
  DFQD1BWP12T30P140 timer_reg_21_ ( .D(n813), .CP(n1822), .Q(timer[21]) );
  DFQD1BWP12T30P140 ck_counter_reg_22_ ( .D(N90), .CP(n1829), .Q(
        ck_counter[22]) );
  DFQD1BWP12T30P140 ck_counter_reg_7_ ( .D(N75), .CP(n1828), .Q(ck_counter[7])
         );
  DFQD1BWP12T30P140 tm_sub_reg_0_ ( .D(n842), .CP(n1825), .Q(tm_sub[0]) );
  DFQD1BWP12T30P140 ckspeed_reg_18_ ( .D(n770), .CP(n1813), .Q(ckspeed[18]) );
  DFQD1BWP12T30P140 ckspeed_reg_3_ ( .D(n755), .CP(n1701), .Q(ckspeed[3]) );
  DFQD1BWP12T30P140 clock_reg_8_ ( .D(n913), .CP(n1827), .Q(clock[8]) );
  DFQD1BWP12T30P140 stopwatch_reg_17_ ( .D(n881), .CP(n1821), .Q(stopwatch[17]) );
  ND2D0BWP12T30P140 U1063 ( .A1(ck_sub[7]), .A2(n1005), .ZN(n1791) );
  AOI32D0BWP12T30P140 U1064 ( .A1(n1127), .A2(n1126), .A3(n1704), .B1(n1125), 
        .B2(n1126), .ZN(n815) );
  OAI32D0BWP12T30P140 U1065 ( .A1(n1198), .A2(n1775), .A3(n1382), .B1(sw_ppm), 
        .B2(n1775), .ZN(n1600) );
  AOI221D0BWP12T30P140 U1066 ( .A1(n1402), .A2(n1388), .B1(n1390), .B2(n1388), 
        .C(n1522), .ZN(n1491) );
  AOI32D0BWP12T30P140 U1067 ( .A1(n1411), .A2(n1780), .A3(n1196), .B1(n1783), 
        .B2(n1780), .ZN(n1544) );
  INVD0BWP12T30P140 U1068 ( .I(timer[25]), .ZN(n1080) );
  INVD0BWP12T30P140 U1069 ( .I(n1275), .ZN(n1004) );
  INVD0BWP12T30P140 U1070 ( .I(i_wb_addr[2]), .ZN(n1366) );
  TIELBWP12T30P140 U1071 ( .ZN(n681) );
  IND2D1BWP12T30P140 U1072 ( .A1(al_tripped), .B1(n1080), .ZN(n1005) );
  INVD0BWP12T30P140 U1073 ( .I(ledreg[10]), .ZN(n1103) );
  OAI21D0BWP12T30P140 U1074 ( .A1(n1005), .A2(n1103), .B(n1791), .ZN(o_led[8])
         );
  CKBD0BWP12T30P140 U1075 ( .I(o_led[8]), .Z(o_led[7]) );
  INVD0BWP12T30P140 U1076 ( .I(ledreg[11]), .ZN(n1303) );
  OAI21D0BWP12T30P140 U1077 ( .A1(n1005), .A2(n1303), .B(n1791), .ZN(o_led[9])
         );
  CKBD0BWP12T30P140 U1078 ( .I(o_led[9]), .Z(o_led[6]) );
  INVD0BWP12T30P140 U1079 ( .I(ledreg[12]), .ZN(n1106) );
  OAI21D0BWP12T30P140 U1080 ( .A1(n1005), .A2(n1106), .B(n1791), .ZN(o_led[10]) );
  CKBD0BWP12T30P140 U1081 ( .I(o_led[10]), .Z(o_led[5]) );
  INVD0BWP12T30P140 U1082 ( .I(ledreg[13]), .ZN(n1299) );
  OAI21D0BWP12T30P140 U1083 ( .A1(n1005), .A2(n1299), .B(n1791), .ZN(o_led[11]) );
  CKBD0BWP12T30P140 U1084 ( .I(o_led[11]), .Z(o_led[4]) );
  INVD0BWP12T30P140 U1085 ( .I(ledreg[14]), .ZN(n1108) );
  OAI21D0BWP12T30P140 U1086 ( .A1(n1005), .A2(n1108), .B(n1791), .ZN(o_led[12]) );
  CKBD0BWP12T30P140 U1087 ( .I(o_led[12]), .Z(o_led[3]) );
  INVD0BWP12T30P140 U1088 ( .I(ledreg[15]), .ZN(n1352) );
  OAI21D0BWP12T30P140 U1089 ( .A1(n1005), .A2(n1352), .B(n1791), .ZN(o_led[13]) );
  CKBD0BWP12T30P140 U1090 ( .I(o_led[13]), .Z(o_led[2]) );
  INVD0BWP12T30P140 U1091 ( .I(ledreg[16]), .ZN(n1246) );
  OAI21D0BWP12T30P140 U1092 ( .A1(n1005), .A2(n1246), .B(n1791), .ZN(o_led[14]) );
  CKBD0BWP12T30P140 U1093 ( .I(o_led[14]), .Z(o_led[1]) );
  INVD0BWP12T30P140 U1094 ( .I(ledreg[17]), .ZN(n1248) );
  OAI21D0BWP12T30P140 U1095 ( .A1(n1005), .A2(n1248), .B(n1791), .ZN(o_led[15]) );
  CKBD0BWP12T30P140 U1096 ( .I(o_led[15]), .Z(o_led[0]) );
  INVD0BWP12T30P140 U1097 ( .I(ck_counter[39]), .ZN(n1267) );
  INVD0BWP12T30P140 U1098 ( .I(ck_counter[37]), .ZN(n1503) );
  INVD0BWP12T30P140 U1099 ( .I(ck_counter[35]), .ZN(n1500) );
  INVD0BWP12T30P140 U1100 ( .I(ck_counter[33]), .ZN(n1269) );
  INVD0BWP12T30P140 U1101 ( .I(ckspeed[0]), .ZN(n1243) );
  INVD0BWP12T30P140 U1102 ( .I(ck_counter[0]), .ZN(n1268) );
  NR2D0BWP12T30P140 U1103 ( .A1(n1243), .A2(n1268), .ZN(n1675) );
  ND2D0BWP12T30P140 U1104 ( .A1(ck_counter[32]), .A2(n1290), .ZN(n1289) );
  NR2D0BWP12T30P140 U1105 ( .A1(n1269), .A2(n1289), .ZN(n1496) );
  ND2D0BWP12T30P140 U1106 ( .A1(ck_counter[34]), .A2(n1496), .ZN(n1499) );
  NR2D0BWP12T30P140 U1107 ( .A1(n1500), .A2(n1499), .ZN(n1498) );
  ND2D0BWP12T30P140 U1108 ( .A1(ck_counter[36]), .A2(n1498), .ZN(n1502) );
  NR2D0BWP12T30P140 U1109 ( .A1(n1503), .A2(n1502), .ZN(n1501) );
  ND2D0BWP12T30P140 U1110 ( .A1(ck_counter[38]), .A2(n1501), .ZN(n1497) );
  NR2D0BWP12T30P140 U1111 ( .A1(n1267), .A2(n1497), .ZN(N108) );
  AOI21D0BWP12T30P140 U1112 ( .A1(n1267), .A2(n1497), .B(N108), .ZN(N107) );
  INVD0BWP12T30P140 U1113 ( .I(i_wb_data[20]), .ZN(n1665) );
  INVD0BWP12T30P140 U1114 ( .I(i_wb_data[21]), .ZN(n1633) );
  ND4D0BWP12T30P140 U1115 ( .A1(i_wb_data[16]), .A2(i_wb_data[17]), .A3(
        i_wb_data[18]), .A4(i_wb_data[19]), .ZN(n1006) );
  NR3D0BWP12T30P140 U1116 ( .A1(n1665), .A2(n1633), .A3(n1006), .ZN(n1394) );
  ND3D0BWP12T30P140 U1117 ( .A1(i_wb_stb), .A2(i_wb_we), .A3(i_wb_cyc), .ZN(
        n1017) );
  INVD0BWP12T30P140 U1118 ( .I(i_wb_addr[0]), .ZN(n1364) );
  INVD0BWP12T30P140 U1119 ( .I(i_wb_addr[1]), .ZN(n1365) );
  NR3D0BWP12T30P140 U1120 ( .A1(i_wb_addr[2]), .A2(n1364), .A3(n1365), .ZN(
        n1644) );
  INVD0BWP12T30P140 U1121 ( .I(n1644), .ZN(n1678) );
  NR2D0BWP12T30P140 U1122 ( .A1(n1017), .A2(n1678), .ZN(n1291) );
  IND2D1BWP12T30P140 U1123 ( .A1(n1394), .B1(n1291), .ZN(n1239) );
  INVD0BWP12T30P140 U1124 ( .I(n1239), .ZN(n1240) );
  INVD0BWP12T30P140 U1125 ( .I(i_wb_data[16]), .ZN(n1691) );
  INVD0BWP12T30P140 U1126 ( .I(alarm_time[16]), .ZN(n1634) );
  AOI22D0BWP12T30P140 U1127 ( .A1(n1240), .A2(n1691), .B1(n1634), .B2(n1239), 
        .ZN(n946) );
  INVD0BWP12T30P140 U1128 ( .I(i_wb_data[9]), .ZN(n1433) );
  INVD0BWP12T30P140 U1129 ( .I(i_wb_data[8]), .ZN(n1372) );
  ND3D0BWP12T30P140 U1130 ( .A1(i_wb_data[12]), .A2(i_wb_data[14]), .A3(
        i_wb_data[11]), .ZN(n1171) );
  NR3D0BWP12T30P140 U1131 ( .A1(n1433), .A2(n1372), .A3(n1171), .ZN(n1007) );
  ND4D0BWP12T30P140 U1132 ( .A1(i_wb_data[10]), .A2(i_wb_data[13]), .A3(
        i_wb_data[15]), .A4(n1007), .ZN(n1164) );
  ND2D0BWP12T30P140 U1133 ( .A1(n1291), .A2(n1164), .ZN(n1263) );
  INVD0BWP12T30P140 U1134 ( .I(n1263), .ZN(n1264) );
  INVD0BWP12T30P140 U1135 ( .I(i_wb_data[11]), .ZN(n1370) );
  INVD0BWP12T30P140 U1136 ( .I(alarm_time[11]), .ZN(n1611) );
  AOI22D0BWP12T30P140 U1137 ( .A1(n1264), .A2(n1370), .B1(n1611), .B2(n1263), 
        .ZN(n941) );
  INVD0BWP12T30P140 U1138 ( .I(alarm_time[8]), .ZN(n1654) );
  AOI22D0BWP12T30P140 U1139 ( .A1(n1264), .A2(n1372), .B1(n1654), .B2(n1263), 
        .ZN(n938) );
  INVD0BWP12T30P140 U1140 ( .I(i_wb_data[7]), .ZN(n1400) );
  INVD0BWP12T30P140 U1141 ( .I(i_wb_data[6]), .ZN(n1373) );
  ND4D0BWP12T30P140 U1142 ( .A1(i_wb_data[5]), .A2(i_wb_data[2]), .A3(
        i_wb_data[3]), .A4(i_wb_data[4]), .ZN(n1008) );
  NR3D0BWP12T30P140 U1143 ( .A1(n1400), .A2(n1373), .A3(n1008), .ZN(n1009) );
  ND3D0BWP12T30P140 U1144 ( .A1(i_wb_data[1]), .A2(i_wb_data[0]), .A3(n1009), 
        .ZN(n1173) );
  ND2D0BWP12T30P140 U1145 ( .A1(n1291), .A2(n1173), .ZN(n1359) );
  INVD0BWP12T30P140 U1146 ( .I(n1359), .ZN(n1361) );
  INVD0BWP12T30P140 U1147 ( .I(i_wb_data[5]), .ZN(n1462) );
  INVD0BWP12T30P140 U1148 ( .I(alarm_time[5]), .ZN(n1229) );
  AOI22D0BWP12T30P140 U1149 ( .A1(n1361), .A2(n1462), .B1(n1229), .B2(n1359), 
        .ZN(n935) );
  INVD0BWP12T30P140 U1150 ( .I(i_wb_data[2]), .ZN(n1375) );
  INVD0BWP12T30P140 U1151 ( .I(alarm_time[2]), .ZN(n1215) );
  AOI22D0BWP12T30P140 U1152 ( .A1(n1361), .A2(n1375), .B1(n1215), .B2(n1359), 
        .ZN(n932) );
  INVD0BWP12T30P140 U1153 ( .I(i_wb_data[1]), .ZN(n1376) );
  INVD0BWP12T30P140 U1154 ( .I(alarm_time[1]), .ZN(n1209) );
  AOI22D0BWP12T30P140 U1155 ( .A1(n1361), .A2(n1376), .B1(n1209), .B2(n1359), 
        .ZN(n931) );
  INVD0BWP12T30P140 U1156 ( .I(i_wb_data[0]), .ZN(n1470) );
  INVD0BWP12T30P140 U1157 ( .I(alarm_time[0]), .ZN(n1203) );
  AOI22D0BWP12T30P140 U1158 ( .A1(n1361), .A2(n1470), .B1(n1203), .B2(n1359), 
        .ZN(n930) );
  INVD0BWP12T30P140 U1159 ( .I(stopwatch[30]), .ZN(n1011) );
  NR3D0BWP12T30P140 U1160 ( .A1(stopwatch[26]), .A2(stopwatch[24]), .A3(
        stopwatch[25]), .ZN(n1022) );
  INVD0BWP12T30P140 U1161 ( .I(stopwatch[27]), .ZN(n1689) );
  NR2D0BWP12T30P140 U1162 ( .A1(n1022), .A2(n1689), .ZN(n1086) );
  ND4D0BWP12T30P140 U1163 ( .A1(stopwatch[28]), .A2(stopwatch[29]), .A3(
        stopwatch[30]), .A4(stopwatch[31]), .ZN(n1010) );
  INVD0BWP12T30P140 U1164 ( .I(stopwatch[0]), .ZN(n1092) );
  ND3D0BWP12T30P140 U1165 ( .A1(n1366), .A2(n1364), .A3(i_wb_addr[1]), .ZN(
        n1700) );
  NR2D0BWP12T30P140 U1166 ( .A1(n1017), .A2(n1700), .ZN(n1105) );
  OAI211D0BWP12T30P140 U1167 ( .A1(n1470), .A2(n1092), .B(i_wb_data[1]), .C(
        n1105), .ZN(n1780) );
  INVD0BWP12T30P140 U1168 ( .I(n1780), .ZN(n1775) );
  AO31D0BWP12T30P140 U1169 ( .A1(n1086), .A2(sw_pph), .A3(n1010), .B(n1775), 
        .Z(n1357) );
  ND2D0BWP12T30P140 U1170 ( .A1(n1780), .A2(n1357), .ZN(n1358) );
  ND2D0BWP12T30P140 U1171 ( .A1(stopwatch[24]), .A2(stopwatch[25]), .ZN(n1201)
         );
  MAOI22D0BWP12T30P140 U1172 ( .A1(stopwatch[26]), .A2(n1201), .B1(n1201), 
        .B2(stopwatch[26]), .ZN(n1141) );
  OAI22D0BWP12T30P140 U1173 ( .A1(n1011), .A2(n1357), .B1(n1358), .B2(n1141), 
        .ZN(n868) );
  NR4D0BWP12T30P140 U1174 ( .A1(i_wb_data[0]), .A2(i_wb_data[3]), .A3(
        i_wb_data[4]), .A4(i_wb_data[6]), .ZN(n1012) );
  NR4D0BWP12T30P140 U1175 ( .A1(i_wb_data[5]), .A2(i_wb_data[7]), .A3(
        i_wb_data[1]), .A4(i_wb_data[2]), .ZN(n1172) );
  ND2D0BWP12T30P140 U1176 ( .A1(n1012), .A2(n1172), .ZN(n1129) );
  NR4D0BWP12T30P140 U1177 ( .A1(i_wb_data[16]), .A2(i_wb_data[17]), .A3(
        i_wb_data[18]), .A4(i_wb_data[19]), .ZN(n1015) );
  NR4D0BWP12T30P140 U1178 ( .A1(i_wb_data[20]), .A2(i_wb_data[21]), .A3(
        i_wb_data[22]), .A4(i_wb_data[23]), .ZN(n1014) );
  NR4D0BWP12T30P140 U1179 ( .A1(i_wb_data[9]), .A2(i_wb_data[10]), .A3(
        i_wb_data[13]), .A4(i_wb_data[15]), .ZN(n1169) );
  NR4D0BWP12T30P140 U1180 ( .A1(i_wb_data[12]), .A2(i_wb_data[14]), .A3(
        i_wb_data[8]), .A4(i_wb_data[11]), .ZN(n1013) );
  ND4D0BWP12T30P140 U1181 ( .A1(n1015), .A2(n1014), .A3(n1169), .A4(n1013), 
        .ZN(n1016) );
  NR2D0BWP12T30P140 U1182 ( .A1(n1129), .A2(n1016), .ZN(n1079) );
  INVD0BWP12T30P140 U1183 ( .I(n1017), .ZN(n1242) );
  NR3D0BWP12T30P140 U1184 ( .A1(i_wb_addr[1]), .A2(i_wb_addr[2]), .A3(n1364), 
        .ZN(n1645) );
  ND2D0BWP12T30P140 U1185 ( .A1(n1242), .A2(n1645), .ZN(n1292) );
  NR2D0BWP12T30P140 U1186 ( .A1(n1292), .A2(timer[24]), .ZN(n1715) );
  INVD0BWP12T30P140 U1187 ( .I(n1715), .ZN(n1356) );
  OR2D0BWP12T30P140 U1188 ( .A1(n1079), .A2(n1356), .Z(n1730) );
  INVD0BWP12T30P140 U1189 ( .I(n1730), .ZN(n1270) );
  NR3D0BWP12T30P140 U1190 ( .A1(timer[22]), .A2(timer[21]), .A3(timer[20]), 
        .ZN(n1712) );
  INVD0BWP12T30P140 U1191 ( .I(timer[16]), .ZN(n1635) );
  INVD0BWP12T30P140 U1192 ( .I(timer[18]), .ZN(n1549) );
  IND3D1BWP12T30P140 U1193 ( .A1(timer[17]), .B1(n1635), .B2(n1549), .ZN(n1124) );
  NR2D0BWP12T30P140 U1194 ( .A1(timer[19]), .A2(n1124), .ZN(n1156) );
  OR3D0BWP12T30P140 U1195 ( .A1(timer[14]), .A2(timer[12]), .A3(timer[13]), 
        .Z(n1133) );
  NR2D0BWP12T30P140 U1196 ( .A1(timer[15]), .A2(n1133), .ZN(n1285) );
  ND2D0BWP12T30P140 U1197 ( .A1(n1156), .A2(n1285), .ZN(n1084) );
  INR3D1BWP12T30P140 U1198 ( .A1(n1712), .B1(timer[23]), .B2(n1084), .ZN(n1024) );
  NR3D0BWP12T30P140 U1199 ( .A1(timer[8]), .A2(timer[10]), .A3(timer[9]), .ZN(
        n1309) );
  INVD0BWP12T30P140 U1200 ( .I(timer[11]), .ZN(n1612) );
  ND2D0BWP12T30P140 U1201 ( .A1(n1309), .A2(n1612), .ZN(n1581) );
  NR3D0BWP12T30P140 U1202 ( .A1(timer[4]), .A2(timer[6]), .A3(timer[5]), .ZN(
        n1329) );
  INVD0BWP12T30P140 U1203 ( .I(timer[7]), .ZN(n1679) );
  ND2D0BWP12T30P140 U1204 ( .A1(n1329), .A2(n1679), .ZN(n1801) );
  NR2D0BWP12T30P140 U1205 ( .A1(n1581), .A2(n1801), .ZN(n1112) );
  NR2D0BWP12T30P140 U1206 ( .A1(timer[1]), .A2(timer[0]), .ZN(n1341) );
  INVD0BWP12T30P140 U1207 ( .I(timer[2]), .ZN(n1344) );
  ND2D0BWP12T30P140 U1208 ( .A1(n1341), .A2(n1344), .ZN(n1340) );
  NR2D0BWP12T30P140 U1209 ( .A1(timer[3]), .A2(n1340), .ZN(n1151) );
  ND3D0BWP12T30P140 U1210 ( .A1(n1024), .A2(n1112), .A3(n1151), .ZN(n1355) );
  NR2D0BWP12T30P140 U1211 ( .A1(n1356), .A2(n1355), .ZN(n1078) );
  OR2D0BWP12T30P140 U1212 ( .A1(n1270), .A2(n1078), .Z(n1711) );
  INVD0BWP12T30P140 U1213 ( .I(n1711), .ZN(n1558) );
  ND2D0BWP12T30P140 U1214 ( .A1(ck_carry), .A2(n1558), .ZN(n1560) );
  INVD0BWP12T30P140 U1215 ( .I(tm_sub[5]), .ZN(n1260) );
  AN3D0BWP12T30P140 U1216 ( .A1(tm_sub[2]), .A2(tm_sub[1]), .A3(tm_sub[0]), 
        .Z(n1331) );
  ND3D0BWP12T30P140 U1217 ( .A1(tm_sub[3]), .A2(n1331), .A3(tm_sub[4]), .ZN(
        n1262) );
  NR2D0BWP12T30P140 U1218 ( .A1(n1260), .A2(n1262), .ZN(n1293) );
  ND2D0BWP12T30P140 U1219 ( .A1(tm_sub[6]), .A2(n1293), .ZN(n1770) );
  NR2D0BWP12T30P140 U1220 ( .A1(tm_sub[6]), .A2(n1560), .ZN(n1294) );
  INVD0BWP12T30P140 U1221 ( .I(ck_carry), .ZN(n1771) );
  OA31D0BWP12T30P140 U1222 ( .A1(n1771), .A2(n1260), .A3(n1262), .B(n1558), 
        .Z(n1295) );
  OAI21D0BWP12T30P140 U1223 ( .A1(n1294), .A2(n1295), .B(tm_sub[7]), .ZN(n1018) );
  OAI31D0BWP12T30P140 U1224 ( .A1(tm_sub[7]), .A2(n1560), .A3(n1770), .B(n1018), .ZN(n841) );
  INVD0BWP12T30P140 U1225 ( .I(stopwatch[31]), .ZN(n1020) );
  INVD0BWP12T30P140 U1226 ( .I(stopwatch[26]), .ZN(n1699) );
  NR2D0BWP12T30P140 U1227 ( .A1(n1699), .A2(n1201), .ZN(n1019) );
  MUX2ND0BWP12T30P140 U1228 ( .I0(stopwatch[27]), .I1(n1689), .S(n1019), .ZN(
        n1087) );
  OAI22D0BWP12T30P140 U1229 ( .A1(n1020), .A2(n1357), .B1(n1358), .B2(n1087), 
        .ZN(n867) );
  NR3D0BWP12T30P140 U1230 ( .A1(stopwatch[18]), .A2(stopwatch[16]), .A3(
        stopwatch[17]), .ZN(n1197) );
  NR4D0BWP12T30P140 U1231 ( .A1(stopwatch[19]), .A2(stopwatch[21]), .A3(
        stopwatch[23]), .A4(stopwatch[27]), .ZN(n1021) );
  ND3D0BWP12T30P140 U1232 ( .A1(n1197), .A2(n1022), .A3(n1021), .ZN(n1023) );
  NR3D0BWP12T30P140 U1233 ( .A1(stopwatch[22]), .A2(stopwatch[20]), .A3(n1023), 
        .ZN(n1188) );
  INVD0BWP12T30P140 U1234 ( .I(clock[25]), .ZN(n1187) );
  NR2D0BWP12T30P140 U1235 ( .A1(clock[24]), .A2(n1187), .ZN(n1788) );
  NR4D0BWP12T30P140 U1236 ( .A1(stopwatch[13]), .A2(stopwatch[15]), .A3(
        stopwatch[14]), .A4(stopwatch[12]), .ZN(n1025) );
  ND2D0BWP12T30P140 U1237 ( .A1(n1024), .A2(n1080), .ZN(n1184) );
  ND2D0BWP12T30P140 U1238 ( .A1(clock[24]), .A2(n1187), .ZN(n1568) );
  NR3D0BWP12T30P140 U1239 ( .A1(n1581), .A2(n1184), .A3(n1568), .ZN(n1800) );
  AOI31D0BWP12T30P140 U1240 ( .A1(n1188), .A2(n1788), .A3(n1025), .B(n1800), 
        .ZN(n969) );
  INVD0BWP12T30P140 U1241 ( .I(clock[11]), .ZN(n1523) );
  INVD0BWP12T30P140 U1242 ( .I(clock[14]), .ZN(n1391) );
  OAI22D0BWP12T30P140 U1243 ( .A1(n1523), .A2(alarm_time[11]), .B1(n1391), 
        .B2(alarm_time[14]), .ZN(n1026) );
  AOI221D0BWP12T30P140 U1244 ( .A1(n1523), .A2(alarm_time[11]), .B1(
        alarm_time[14]), .B2(n1391), .C(n1026), .ZN(n1033) );
  INVD0BWP12T30P140 U1245 ( .I(clock[20]), .ZN(n1795) );
  INVD0BWP12T30P140 U1246 ( .I(clock[3]), .ZN(n1408) );
  OAI22D0BWP12T30P140 U1247 ( .A1(n1795), .A2(alarm_time[20]), .B1(n1408), 
        .B2(alarm_time[3]), .ZN(n1027) );
  AOI221D0BWP12T30P140 U1248 ( .A1(n1795), .A2(alarm_time[20]), .B1(
        alarm_time[3]), .B2(n1408), .C(n1027), .ZN(n1032) );
  INVD0BWP12T30P140 U1249 ( .I(clock[0]), .ZN(n1404) );
  INVD0BWP12T30P140 U1250 ( .I(clock[7]), .ZN(n1399) );
  OAI22D0BWP12T30P140 U1251 ( .A1(n1404), .A2(alarm_time[0]), .B1(n1399), .B2(
        alarm_time[7]), .ZN(n1028) );
  AOI221D0BWP12T30P140 U1252 ( .A1(n1404), .A2(alarm_time[0]), .B1(
        alarm_time[7]), .B2(n1399), .C(n1028), .ZN(n1031) );
  INVD0BWP12T30P140 U1253 ( .I(clock[5]), .ZN(n1460) );
  INVD0BWP12T30P140 U1254 ( .I(alarm_time[6]), .ZN(n1241) );
  OAI22D0BWP12T30P140 U1255 ( .A1(n1460), .A2(alarm_time[5]), .B1(n1241), .B2(
        clock[6]), .ZN(n1029) );
  AOI221D0BWP12T30P140 U1256 ( .A1(n1460), .A2(alarm_time[5]), .B1(clock[6]), 
        .B2(n1241), .C(n1029), .ZN(n1030) );
  ND4D0BWP12T30P140 U1257 ( .A1(n1033), .A2(n1032), .A3(n1031), .A4(n1030), 
        .ZN(n1076) );
  INVD0BWP12T30P140 U1258 ( .I(clock[18]), .ZN(n1793) );
  INVD0BWP12T30P140 U1259 ( .I(clock[9]), .ZN(n1436) );
  OAI22D0BWP12T30P140 U1260 ( .A1(n1793), .A2(alarm_time[18]), .B1(n1436), 
        .B2(alarm_time[9]), .ZN(n1034) );
  AOI221D0BWP12T30P140 U1261 ( .A1(n1793), .A2(alarm_time[18]), .B1(
        alarm_time[9]), .B2(n1436), .C(n1034), .ZN(n1041) );
  INVD0BWP12T30P140 U1262 ( .I(clock[2]), .ZN(n1409) );
  INVD0BWP12T30P140 U1263 ( .I(clock[15]), .ZN(n1416) );
  OAI22D0BWP12T30P140 U1264 ( .A1(n1409), .A2(alarm_time[2]), .B1(n1416), .B2(
        alarm_time[15]), .ZN(n1035) );
  AOI221D0BWP12T30P140 U1265 ( .A1(n1409), .A2(alarm_time[2]), .B1(
        alarm_time[15]), .B2(n1416), .C(n1035), .ZN(n1040) );
  INVD0BWP12T30P140 U1266 ( .I(clock[16]), .ZN(n1431) );
  INVD0BWP12T30P140 U1267 ( .I(alarm_time[13]), .ZN(n1569) );
  OAI22D0BWP12T30P140 U1268 ( .A1(n1431), .A2(alarm_time[16]), .B1(n1569), 
        .B2(clock[13]), .ZN(n1036) );
  AOI221D0BWP12T30P140 U1269 ( .A1(n1431), .A2(alarm_time[16]), .B1(clock[13]), 
        .B2(n1569), .C(n1036), .ZN(n1039) );
  INVD0BWP12T30P140 U1270 ( .I(clock[17]), .ZN(n1425) );
  INVD0BWP12T30P140 U1271 ( .I(clock[21]), .ZN(n1798) );
  OAI22D0BWP12T30P140 U1272 ( .A1(n1425), .A2(alarm_time[17]), .B1(n1798), 
        .B2(alarm_time[21]), .ZN(n1037) );
  AOI221D0BWP12T30P140 U1273 ( .A1(n1425), .A2(alarm_time[17]), .B1(
        alarm_time[21]), .B2(n1798), .C(n1037), .ZN(n1038) );
  ND4D0BWP12T30P140 U1274 ( .A1(n1041), .A2(n1040), .A3(n1039), .A4(n1038), 
        .ZN(n1075) );
  OAI22D0BWP12T30P140 U1275 ( .A1(n1654), .A2(ck_last_clock[8]), .B1(n1209), 
        .B2(ck_last_clock[1]), .ZN(n1042) );
  AOI221D0BWP12T30P140 U1276 ( .A1(n1654), .A2(ck_last_clock[8]), .B1(
        ck_last_clock[1]), .B2(n1209), .C(n1042), .ZN(n1047) );
  INVD0BWP12T30P140 U1277 ( .I(alarm_time[3]), .ZN(n1123) );
  INVD0BWP12T30P140 U1278 ( .I(alarm_time[21]), .ZN(n1116) );
  OAI22D0BWP12T30P140 U1279 ( .A1(n1123), .A2(ck_last_clock[3]), .B1(n1116), 
        .B2(ck_last_clock[21]), .ZN(n1043) );
  AOI221D0BWP12T30P140 U1280 ( .A1(n1123), .A2(ck_last_clock[3]), .B1(
        ck_last_clock[21]), .B2(n1116), .C(n1043), .ZN(n1046) );
  INVD0BWP12T30P140 U1281 ( .I(alarm_time[19]), .ZN(n1083) );
  INVD0BWP12T30P140 U1282 ( .I(alarm_time[20]), .ZN(n1575) );
  OAI22D0BWP12T30P140 U1283 ( .A1(n1083), .A2(ck_last_clock[19]), .B1(n1575), 
        .B2(ck_last_clock[20]), .ZN(n1044) );
  AOI221D0BWP12T30P140 U1284 ( .A1(n1083), .A2(ck_last_clock[19]), .B1(
        ck_last_clock[20]), .B2(n1575), .C(n1044), .ZN(n1045) );
  ND3D0BWP12T30P140 U1285 ( .A1(n1047), .A2(n1046), .A3(n1045), .ZN(n1073) );
  INVD0BWP12T30P140 U1286 ( .I(alarm_time[10]), .ZN(n1623) );
  INVD0BWP12T30P140 U1287 ( .I(alarm_time[18]), .ZN(n1548) );
  OAI22D0BWP12T30P140 U1288 ( .A1(n1623), .A2(ck_last_clock[10]), .B1(n1548), 
        .B2(ck_last_clock[18]), .ZN(n1048) );
  AOI221D0BWP12T30P140 U1289 ( .A1(n1623), .A2(ck_last_clock[10]), .B1(
        ck_last_clock[18]), .B2(n1548), .C(n1048), .ZN(n1055) );
  INVD0BWP12T30P140 U1290 ( .I(alarm_time[4]), .ZN(n1360) );
  OAI22D0BWP12T30P140 U1291 ( .A1(n1241), .A2(ck_last_clock[6]), .B1(n1360), 
        .B2(ck_last_clock[4]), .ZN(n1049) );
  AOI221D0BWP12T30P140 U1292 ( .A1(n1241), .A2(ck_last_clock[6]), .B1(
        ck_last_clock[4]), .B2(n1360), .C(n1049), .ZN(n1054) );
  INVD0BWP12T30P140 U1293 ( .I(alarm_time[7]), .ZN(n1677) );
  OAI22D0BWP12T30P140 U1294 ( .A1(n1229), .A2(ck_last_clock[5]), .B1(n1677), 
        .B2(ck_last_clock[7]), .ZN(n1050) );
  AOI221D0BWP12T30P140 U1295 ( .A1(n1229), .A2(ck_last_clock[5]), .B1(
        ck_last_clock[7]), .B2(n1677), .C(n1050), .ZN(n1053) );
  INVD0BWP12T30P140 U1296 ( .I(alarm_time[9]), .ZN(n1122) );
  INVD0BWP12T30P140 U1297 ( .I(alarm_time[14]), .ZN(n1119) );
  OAI22D0BWP12T30P140 U1298 ( .A1(n1122), .A2(ck_last_clock[9]), .B1(n1119), 
        .B2(ck_last_clock[14]), .ZN(n1051) );
  AOI221D0BWP12T30P140 U1299 ( .A1(n1122), .A2(ck_last_clock[9]), .B1(
        ck_last_clock[14]), .B2(n1119), .C(n1051), .ZN(n1052) );
  ND4D0BWP12T30P140 U1300 ( .A1(n1055), .A2(n1054), .A3(n1053), .A4(n1052), 
        .ZN(n1072) );
  INVD0BWP12T30P140 U1301 ( .I(alarm_time[12]), .ZN(n1589) );
  OAI22D0BWP12T30P140 U1302 ( .A1(n1589), .A2(ck_last_clock[12]), .B1(n1203), 
        .B2(ck_last_clock[0]), .ZN(n1056) );
  AOI221D0BWP12T30P140 U1303 ( .A1(n1589), .A2(ck_last_clock[12]), .B1(
        ck_last_clock[0]), .B2(n1203), .C(n1056), .ZN(n1063) );
  OAI22D0BWP12T30P140 U1304 ( .A1(n1611), .A2(ck_last_clock[11]), .B1(n1569), 
        .B2(ck_last_clock[13]), .ZN(n1057) );
  AOI221D0BWP12T30P140 U1305 ( .A1(n1611), .A2(ck_last_clock[11]), .B1(
        ck_last_clock[13]), .B2(n1569), .C(n1057), .ZN(n1062) );
  INVD0BWP12T30P140 U1306 ( .I(alarm_time[15]), .ZN(n1118) );
  OAI22D0BWP12T30P140 U1307 ( .A1(n1118), .A2(ck_last_clock[15]), .B1(n1634), 
        .B2(ck_last_clock[16]), .ZN(n1058) );
  AOI221D0BWP12T30P140 U1308 ( .A1(n1118), .A2(ck_last_clock[15]), .B1(
        ck_last_clock[16]), .B2(n1634), .C(n1058), .ZN(n1061) );
  INVD0BWP12T30P140 U1309 ( .I(alarm_time[17]), .ZN(n1128) );
  OAI22D0BWP12T30P140 U1310 ( .A1(n1215), .A2(ck_last_clock[2]), .B1(n1128), 
        .B2(ck_last_clock[17]), .ZN(n1059) );
  AOI221D0BWP12T30P140 U1311 ( .A1(n1215), .A2(ck_last_clock[2]), .B1(
        ck_last_clock[17]), .B2(n1128), .C(n1059), .ZN(n1060) );
  ND4D0BWP12T30P140 U1312 ( .A1(n1063), .A2(n1062), .A3(n1061), .A4(n1060), 
        .ZN(n1071) );
  INVD0BWP12T30P140 U1313 ( .I(clock[19]), .ZN(n1794) );
  INVD0BWP12T30P140 U1314 ( .I(clock[8]), .ZN(n1435) );
  INVD0BWP12T30P140 U1315 ( .I(clock[4]), .ZN(n1457) );
  OAI22D0BWP12T30P140 U1316 ( .A1(n1435), .A2(alarm_time[8]), .B1(n1457), .B2(
        alarm_time[4]), .ZN(n1064) );
  AOI221D0BWP12T30P140 U1317 ( .A1(n1435), .A2(alarm_time[8]), .B1(
        alarm_time[4]), .B2(n1457), .C(n1064), .ZN(n1068) );
  INVD0BWP12T30P140 U1318 ( .I(clock[1]), .ZN(n1452) );
  OAI22D0BWP12T30P140 U1319 ( .A1(n1452), .A2(alarm_time[1]), .B1(n1589), .B2(
        clock[12]), .ZN(n1065) );
  AOI221D0BWP12T30P140 U1320 ( .A1(n1452), .A2(alarm_time[1]), .B1(clock[12]), 
        .B2(n1589), .C(n1065), .ZN(n1067) );
  INVD0BWP12T30P140 U1321 ( .I(clock[10]), .ZN(n1387) );
  AOI22D0BWP12T30P140 U1322 ( .A1(clock[10]), .A2(n1623), .B1(alarm_time[10]), 
        .B2(n1387), .ZN(n1066) );
  ND4D0BWP12T30P140 U1323 ( .A1(al_enabled), .A2(n1068), .A3(n1067), .A4(n1066), .ZN(n1069) );
  AOI221D0BWP12T30P140 U1324 ( .A1(clock[19]), .A2(n1083), .B1(n1794), .B2(
        alarm_time[19]), .C(n1069), .ZN(n1070) );
  OAI31D0BWP12T30P140 U1325 ( .A1(n1073), .A2(n1072), .A3(n1071), .B(n1070), 
        .ZN(n1074) );
  NR3D0BWP12T30P140 U1326 ( .A1(n1076), .A2(n1075), .A3(n1074), .ZN(N675) );
  INVD0BWP12T30P140 U1327 ( .I(i_wb_data[24]), .ZN(n1617) );
  OAI21D0BWP12T30P140 U1328 ( .A1(i_wb_data[25]), .A2(n1617), .B(n1291), .ZN(
        n1077) );
  AO21D0BWP12T30P140 U1329 ( .A1(al_tripped), .A2(n1077), .B(N675), .Z(n899)
         );
  CKBD0BWP12T30P140 U1330 ( .I(n1730), .Z(n1741) );
  INVD0BWP12T30P140 U1331 ( .I(n1741), .ZN(n1582) );
  ND2D0BWP12T30P140 U1332 ( .A1(n1079), .A2(n1078), .ZN(n1275) );
  INVD0BWP12T30P140 U1333 ( .I(n1275), .ZN(n1713) );
  AOI22D0BWP12T30P140 U1334 ( .A1(i_wb_data[8]), .A2(n1582), .B1(n1713), .B2(
        tm_start[8]), .ZN(n1082) );
  INVD0BWP12T30P140 U1335 ( .I(n1711), .ZN(n1277) );
  ND2D0BWP12T30P140 U1336 ( .A1(n1080), .A2(timer[24]), .ZN(n1354) );
  IND2D1BWP12T30P140 U1337 ( .A1(n1354), .B1(tm_pps), .ZN(n1098) );
  ND2D0BWP12T30P140 U1338 ( .A1(n1151), .A2(n1355), .ZN(n1081) );
  NR2D0BWP12T30P140 U1339 ( .A1(n1098), .A2(n1081), .ZN(n1328) );
  NR2D0BWP12T30P140 U1340 ( .A1(n1328), .A2(n1711), .ZN(n1178) );
  AOI21D0BWP12T30P140 U1341 ( .A1(n1277), .A2(n1801), .B(n1178), .ZN(n1587) );
  INVD0BWP12T30P140 U1342 ( .I(timer[8]), .ZN(n1655) );
  ND2D0BWP12T30P140 U1343 ( .A1(n1558), .A2(n1655), .ZN(n1584) );
  INVD0BWP12T30P140 U1344 ( .I(n1587), .ZN(n1278) );
  AOI32D0BWP12T30P140 U1345 ( .A1(n1082), .A2(n1587), .A3(n1584), .B1(n1655), 
        .B2(n1278), .ZN(n826) );
  INVD0BWP12T30P140 U1346 ( .I(i_wb_data[19]), .ZN(n1694) );
  AOI22D0BWP12T30P140 U1347 ( .A1(n1240), .A2(n1694), .B1(n1083), .B2(n1239), 
        .ZN(n949) );
  INVD0BWP12T30P140 U1348 ( .I(timer[20]), .ZN(n1576) );
  AOI22D0BWP12T30P140 U1349 ( .A1(tm_start[20]), .A2(n1713), .B1(n1277), .B2(
        n1576), .ZN(n1085) );
  ND2D0BWP12T30P140 U1350 ( .A1(n1112), .A2(n1328), .ZN(n1131) );
  OAI21D0BWP12T30P140 U1351 ( .A1(n1084), .A2(n1131), .B(n1558), .ZN(n1710) );
  ND2D0BWP12T30P140 U1352 ( .A1(n1715), .A2(i_wb_data[20]), .ZN(n1708) );
  INVD0BWP12T30P140 U1353 ( .I(n1710), .ZN(n1142) );
  AOI32D0BWP12T30P140 U1354 ( .A1(n1085), .A2(n1710), .A3(n1708), .B1(n1142), 
        .B2(n1576), .ZN(n814) );
  IND2D1BWP12T30P140 U1355 ( .A1(sw_pph), .B1(n1780), .ZN(n1417) );
  IND3D1BWP12T30P140 U1356 ( .A1(n1086), .B1(sw_pph), .B2(n1780), .ZN(n1418)
         );
  OAI22D0BWP12T30P140 U1357 ( .A1(n1689), .A2(n1417), .B1(n1087), .B2(n1418), 
        .ZN(n871) );
  AOI21D0BWP12T30P140 U1358 ( .A1(ck_carry), .A2(n1331), .B(n1711), .ZN(n1332)
         );
  NR2D0BWP12T30P140 U1359 ( .A1(tm_sub[3]), .A2(n1560), .ZN(n1333) );
  AO22D0BWP12T30P140 U1360 ( .A1(tm_sub[3]), .A2(n1332), .B1(n1331), .B2(n1333), .Z(n837) );
  NR3D0BWP12T30P140 U1361 ( .A1(i_wb_addr[2]), .A2(i_wb_addr[1]), .A3(
        i_wb_addr[0]), .ZN(n1646) );
  ND2D0BWP12T30P140 U1362 ( .A1(n1242), .A2(n1646), .ZN(n1393) );
  OAI21D0BWP12T30P140 U1363 ( .A1(n1129), .A2(n1393), .B(ck_carry), .ZN(n1546)
         );
  ND2D0BWP12T30P140 U1364 ( .A1(ck_sub[0]), .A2(ck_sub[1]), .ZN(n1089) );
  NR2D0BWP12T30P140 U1365 ( .A1(ck_sub[1]), .A2(n1546), .ZN(n1195) );
  OAI21D0BWP12T30P140 U1366 ( .A1(n1129), .A2(n1393), .B(n1771), .ZN(n1547) );
  OAI21D0BWP12T30P140 U1367 ( .A1(ck_sub[0]), .A2(n1546), .B(n1547), .ZN(n1194) );
  OAI21D0BWP12T30P140 U1368 ( .A1(n1195), .A2(n1194), .B(ck_sub[2]), .ZN(n1088) );
  OAI31D0BWP12T30P140 U1369 ( .A1(ck_sub[2]), .A2(n1546), .A3(n1089), .B(n1088), .ZN(n923) );
  AOI21D0BWP12T30P140 U1370 ( .A1(ck_carry), .A2(tm_sub[0]), .B(n1711), .ZN(
        n1281) );
  NR2D0BWP12T30P140 U1371 ( .A1(tm_sub[1]), .A2(n1560), .ZN(n1282) );
  AO22D0BWP12T30P140 U1372 ( .A1(tm_sub[1]), .A2(n1281), .B1(tm_sub[0]), .B2(
        n1282), .Z(n835) );
  ND2D0BWP12T30P140 U1373 ( .A1(ck_carry), .A2(ck_prepps), .ZN(n1769) );
  INVD0BWP12T30P140 U1374 ( .I(n1769), .ZN(n1405) );
  ND2D0BWP12T30P140 U1375 ( .A1(n1405), .A2(ck_ppm), .ZN(n1401) );
  INVD0BWP12T30P140 U1376 ( .I(n1401), .ZN(n1388) );
  NR2D0BWP12T30P140 U1377 ( .A1(n1771), .A2(n1388), .ZN(n1738) );
  MAOI22D0BWP12T30P140 U1378 ( .A1(ledreg[0]), .A2(ck_carry), .B1(n1738), .B2(
        ledreg[0]), .ZN(n807) );
  ND2D0BWP12T30P140 U1379 ( .A1(ledreg[0]), .A2(ledreg[1]), .ZN(n1737) );
  INVD0BWP12T30P140 U1380 ( .I(ledreg[2]), .ZN(n1090) );
  NR2D0BWP12T30P140 U1381 ( .A1(n1737), .A2(n1090), .ZN(n1735) );
  INVD0BWP12T30P140 U1382 ( .I(n1738), .ZN(n1351) );
  AO21D0BWP12T30P140 U1383 ( .A1(n1737), .A2(n1090), .B(n1351), .Z(n1091) );
  OAI22D0BWP12T30P140 U1384 ( .A1(n1735), .A2(n1091), .B1(ck_carry), .B2(n1090), .ZN(n805) );
  OAI21D0BWP12T30P140 U1385 ( .A1(n1092), .A2(n1771), .B(n1780), .ZN(n1163) );
  ND2D0BWP12T30P140 U1386 ( .A1(n1780), .A2(n1163), .ZN(n1307) );
  INVD0BWP12T30P140 U1387 ( .I(sw_sub[4]), .ZN(n1257) );
  INVD0BWP12T30P140 U1388 ( .I(sw_sub[1]), .ZN(n1161) );
  INVD0BWP12T30P140 U1389 ( .I(sw_sub[0]), .ZN(n1162) );
  INVD0BWP12T30P140 U1390 ( .I(sw_sub[2]), .ZN(n1160) );
  NR3D0BWP12T30P140 U1391 ( .A1(n1161), .A2(n1162), .A3(n1160), .ZN(n1137) );
  ND2D0BWP12T30P140 U1392 ( .A1(n1137), .A2(sw_sub[3]), .ZN(n1259) );
  NR2D0BWP12T30P140 U1393 ( .A1(n1257), .A2(n1259), .ZN(n1784) );
  INVD0BWP12T30P140 U1394 ( .I(n1784), .ZN(n1093) );
  OA21D0BWP12T30P140 U1395 ( .A1(n1775), .A2(n1784), .B(n1163), .Z(n1110) );
  INVD0BWP12T30P140 U1396 ( .I(sw_sub[5]), .ZN(n1787) );
  OAI32D0BWP12T30P140 U1397 ( .A1(sw_sub[5]), .A2(n1307), .A3(n1093), .B1(
        n1110), .B2(n1787), .ZN(n893) );
  INVD0BWP12T30P140 U1398 ( .I(i_wb_data[3]), .ZN(n1406) );
  AOI21D0BWP12T30P140 U1399 ( .A1(n1713), .A2(tm_start[3]), .B(n1328), .ZN(
        n1095) );
  OAI211D0BWP12T30P140 U1400 ( .A1(n1340), .A2(n1098), .B(timer[3]), .C(n1277), 
        .ZN(n1094) );
  OAI211D0BWP12T30P140 U1401 ( .A1(n1741), .A2(n1406), .B(n1095), .C(n1094), 
        .ZN(n831) );
  ND2D0BWP12T30P140 U1402 ( .A1(n1735), .A2(ledreg[3]), .ZN(n1734) );
  IND2D1BWP12T30P140 U1403 ( .A1(ledreg[4]), .B1(n1734), .ZN(n1724) );
  ND2D0BWP12T30P140 U1404 ( .A1(ledreg[5]), .A2(n1724), .ZN(n1723) );
  INVD0BWP12T30P140 U1405 ( .I(ledreg[6]), .ZN(n1096) );
  NR2D0BWP12T30P140 U1406 ( .A1(n1723), .A2(n1096), .ZN(n1732) );
  IOA21D0BWP12T30P140 U1407 ( .A1(n1723), .A2(n1096), .B(n1738), .ZN(n1097) );
  OAI22D0BWP12T30P140 U1408 ( .A1(n1732), .A2(n1097), .B1(ck_carry), .B2(n1096), .ZN(n801) );
  AOI22D0BWP12T30P140 U1409 ( .A1(i_wb_data[1]), .A2(n1582), .B1(n1713), .B2(
        tm_start[1]), .ZN(n1100) );
  ND2D0BWP12T30P140 U1410 ( .A1(n1558), .A2(n1098), .ZN(n1346) );
  NR2D0BWP12T30P140 U1411 ( .A1(n1270), .A2(n1151), .ZN(n1343) );
  AOI32D0BWP12T30P140 U1412 ( .A1(timer[1]), .A2(n1343), .A3(timer[0]), .B1(
        n1341), .B2(n1343), .ZN(n1099) );
  INVD0BWP12T30P140 U1413 ( .I(n1346), .ZN(n1345) );
  INVD0BWP12T30P140 U1414 ( .I(timer[1]), .ZN(n1210) );
  AOI32D0BWP12T30P140 U1415 ( .A1(n1100), .A2(n1346), .A3(n1099), .B1(n1345), 
        .B2(n1210), .ZN(n833) );
  ND2D0BWP12T30P140 U1416 ( .A1(n1732), .A2(ledreg[7]), .ZN(n1731) );
  INVD0BWP12T30P140 U1417 ( .I(ledreg[8]), .ZN(n1101) );
  NR2D0BWP12T30P140 U1418 ( .A1(n1731), .A2(n1101), .ZN(n1727) );
  IOA21D0BWP12T30P140 U1419 ( .A1(n1731), .A2(n1101), .B(n1738), .ZN(n1102) );
  OAI22D0BWP12T30P140 U1420 ( .A1(n1727), .A2(n1102), .B1(ck_carry), .B2(n1101), .ZN(n799) );
  OAI21D0BWP12T30P140 U1421 ( .A1(n1775), .A2(sw_sub[0]), .B(n1163), .ZN(n1304) );
  NR2D0BWP12T30P140 U1422 ( .A1(sw_sub[1]), .A2(n1307), .ZN(n1305) );
  AO22D0BWP12T30P140 U1423 ( .A1(sw_sub[1]), .A2(n1304), .B1(sw_sub[0]), .B2(
        n1305), .Z(n897) );
  ND2D0BWP12T30P140 U1424 ( .A1(n1727), .A2(ledreg[9]), .ZN(n1726) );
  NR2D0BWP12T30P140 U1425 ( .A1(n1726), .A2(n1103), .ZN(n1301) );
  IOA21D0BWP12T30P140 U1426 ( .A1(n1726), .A2(n1103), .B(n1738), .ZN(n1104) );
  OAI22D0BWP12T30P140 U1427 ( .A1(n1301), .A2(n1104), .B1(ck_carry), .B2(n1103), .ZN(n797) );
  MAOI22D0BWP12T30P140 U1428 ( .A1(n1105), .A2(n1470), .B1(stopwatch[0]), .B2(
        n1105), .ZN(n785) );
  ND2D0BWP12T30P140 U1429 ( .A1(n1301), .A2(ledreg[11]), .ZN(n1300) );
  NR2D0BWP12T30P140 U1430 ( .A1(n1300), .A2(n1106), .ZN(n1297) );
  IOA21D0BWP12T30P140 U1431 ( .A1(n1300), .A2(n1106), .B(n1738), .ZN(n1107) );
  OAI22D0BWP12T30P140 U1432 ( .A1(n1297), .A2(n1107), .B1(ck_carry), .B2(n1106), .ZN(n795) );
  ND2D0BWP12T30P140 U1433 ( .A1(n1297), .A2(ledreg[13]), .ZN(n1296) );
  NR2D0BWP12T30P140 U1434 ( .A1(n1296), .A2(n1108), .ZN(n1349) );
  IOA21D0BWP12T30P140 U1435 ( .A1(n1296), .A2(n1108), .B(n1738), .ZN(n1109) );
  OAI22D0BWP12T30P140 U1436 ( .A1(n1349), .A2(n1109), .B1(ck_carry), .B2(n1108), .ZN(n793) );
  INVD0BWP12T30P140 U1437 ( .I(ck_sub[3]), .ZN(n1200) );
  ND3D0BWP12T30P140 U1438 ( .A1(ck_sub[2]), .A2(ck_sub[0]), .A3(ck_sub[1]), 
        .ZN(n1130) );
  NR2D0BWP12T30P140 U1439 ( .A1(n1200), .A2(n1130), .ZN(n1321) );
  ND2D0BWP12T30P140 U1440 ( .A1(ck_sub[4]), .A2(n1321), .ZN(n1320) );
  OAI22D0BWP12T30P140 U1441 ( .A1(n1771), .A2(n1320), .B1(n1129), .B2(n1393), 
        .ZN(n1319) );
  OAI21D0BWP12T30P140 U1442 ( .A1(ck_sub[5]), .A2(n1546), .B(n1319), .ZN(n1336) );
  NR2D0BWP12T30P140 U1443 ( .A1(ck_sub[6]), .A2(n1546), .ZN(n1337) );
  INVD0BWP12T30P140 U1444 ( .I(ck_sub[5]), .ZN(n1318) );
  NR2D0BWP12T30P140 U1445 ( .A1(n1318), .A2(n1320), .ZN(n1177) );
  AO22D0BWP12T30P140 U1446 ( .A1(ck_sub[6]), .A2(n1336), .B1(n1337), .B2(n1177), .Z(n927) );
  INVD0BWP12T30P140 U1447 ( .I(i_wb_data[12]), .ZN(n1363) );
  AOI22D0BWP12T30P140 U1448 ( .A1(n1264), .A2(n1363), .B1(n1589), .B2(n1263), 
        .ZN(n942) );
  INVD0BWP12T30P140 U1449 ( .I(i_wb_data[13]), .ZN(n1495) );
  AOI22D0BWP12T30P140 U1450 ( .A1(n1264), .A2(n1495), .B1(n1569), .B2(n1263), 
        .ZN(n943) );
  INVD0BWP12T30P140 U1451 ( .I(n1307), .ZN(n1256) );
  ND3D0BWP12T30P140 U1452 ( .A1(n1256), .A2(sw_sub[5]), .A3(n1784), .ZN(n1253)
         );
  INVD0BWP12T30P140 U1453 ( .I(sw_sub[6]), .ZN(n1327) );
  OAI21D0BWP12T30P140 U1454 ( .A1(sw_sub[5]), .A2(n1307), .B(n1110), .ZN(n1251) );
  MAOI22D0BWP12T30P140 U1455 ( .A1(n1253), .A2(n1327), .B1(n1327), .B2(n1251), 
        .ZN(n892) );
  INVD0BWP12T30P140 U1456 ( .I(tm_start[15]), .ZN(n1121) );
  ND2D0BWP12T30P140 U1457 ( .A1(i_wb_data[15]), .A2(n1582), .ZN(n1120) );
  OAI211D0BWP12T30P140 U1458 ( .A1(n1133), .A2(n1131), .B(timer[15]), .C(n1277), .ZN(n1111) );
  OAI211D0BWP12T30P140 U1459 ( .A1(n1275), .A2(n1121), .B(n1120), .C(n1111), 
        .ZN(n819) );
  AOI31D0BWP12T30P140 U1460 ( .A1(n1285), .A2(n1112), .A3(n1328), .B(n1711), 
        .ZN(n1125) );
  ND2D0BWP12T30P140 U1461 ( .A1(n1715), .A2(i_wb_data[18]), .ZN(n1705) );
  OAI31D0BWP12T30P140 U1462 ( .A1(n1156), .A2(n1124), .A3(n1711), .B(n1705), 
        .ZN(n1113) );
  AOI21D0BWP12T30P140 U1463 ( .A1(n1713), .A2(tm_start[18]), .B(n1113), .ZN(
        n1115) );
  INVD0BWP12T30P140 U1464 ( .I(n1125), .ZN(n1158) );
  OAI21D0BWP12T30P140 U1465 ( .A1(n1711), .A2(n1635), .B(n1158), .ZN(n1159) );
  AOI21D0BWP12T30P140 U1466 ( .A1(timer[17]), .A2(n1277), .B(n1159), .ZN(n1114) );
  OAI22D0BWP12T30P140 U1467 ( .A1(n1125), .A2(n1115), .B1(n1114), .B2(n1549), 
        .ZN(n816) );
  AOI22D0BWP12T30P140 U1468 ( .A1(n1240), .A2(n1633), .B1(n1116), .B2(n1239), 
        .ZN(n951) );
  AOI22D0BWP12T30P140 U1469 ( .A1(n1715), .A2(i_wb_data[16]), .B1(n1713), .B2(
        tm_start[16]), .ZN(n1117) );
  ND2D0BWP12T30P140 U1470 ( .A1(n1558), .A2(n1635), .ZN(n1155) );
  AOI32D0BWP12T30P140 U1471 ( .A1(n1117), .A2(n1158), .A3(n1155), .B1(n1125), 
        .B2(n1635), .ZN(n818) );
  INVD0BWP12T30P140 U1472 ( .I(i_wb_data[15]), .ZN(n1692) );
  AOI22D0BWP12T30P140 U1473 ( .A1(n1264), .A2(n1692), .B1(n1118), .B2(n1263), 
        .ZN(n945) );
  INVD0BWP12T30P140 U1474 ( .I(i_wb_data[14]), .ZN(n1653) );
  AOI22D0BWP12T30P140 U1475 ( .A1(n1264), .A2(n1653), .B1(n1119), .B2(n1263), 
        .ZN(n944) );
  OAI21D0BWP12T30P140 U1476 ( .A1(n1270), .A2(n1121), .B(n1120), .ZN(n851) );
  AOI22D0BWP12T30P140 U1477 ( .A1(n1264), .A2(n1433), .B1(n1122), .B2(n1263), 
        .ZN(n939) );
  AOI22D0BWP12T30P140 U1478 ( .A1(n1361), .A2(n1406), .B1(n1123), .B2(n1359), 
        .ZN(n933) );
  INVD0BWP12T30P140 U1479 ( .I(i_wb_data[10]), .ZN(n1371) );
  INVD0BWP12T30P140 U1480 ( .I(tm_start[10]), .ZN(n1274) );
  AOI22D0BWP12T30P140 U1481 ( .A1(n1270), .A2(n1371), .B1(n1274), .B2(n1741), 
        .ZN(n856) );
  AOI22D0BWP12T30P140 U1482 ( .A1(n1156), .A2(n1558), .B1(n1713), .B2(
        tm_start[19]), .ZN(n1127) );
  AOI32D0BWP12T30P140 U1483 ( .A1(n1277), .A2(timer[19]), .A3(n1124), .B1(
        n1125), .B2(timer[19]), .ZN(n1126) );
  ND2D0BWP12T30P140 U1484 ( .A1(n1715), .A2(i_wb_data[19]), .ZN(n1704) );
  INVD0BWP12T30P140 U1485 ( .I(i_wb_data[17]), .ZN(n1652) );
  AOI22D0BWP12T30P140 U1486 ( .A1(n1240), .A2(n1652), .B1(n1128), .B2(n1239), 
        .ZN(n947) );
  OAI22D0BWP12T30P140 U1487 ( .A1(n1771), .A2(n1130), .B1(n1129), .B2(n1393), 
        .ZN(n1326) );
  INVD0BWP12T30P140 U1488 ( .I(n1546), .ZN(n1322) );
  ND2D0BWP12T30P140 U1489 ( .A1(n1322), .A2(n1200), .ZN(n1325) );
  OAI22D0BWP12T30P140 U1490 ( .A1(n1326), .A2(n1200), .B1(n1130), .B2(n1325), 
        .ZN(n924) );
  INVD0BWP12T30P140 U1491 ( .I(timer[13]), .ZN(n1570) );
  OAI21D0BWP12T30P140 U1492 ( .A1(timer[12]), .A2(n1131), .B(n1558), .ZN(n1287) );
  OAI21D0BWP12T30P140 U1493 ( .A1(n1570), .A2(n1711), .B(n1287), .ZN(n1135) );
  ND2D0BWP12T30P140 U1494 ( .A1(n1558), .A2(n1131), .ZN(n1316) );
  AOI22D0BWP12T30P140 U1495 ( .A1(n1715), .A2(i_wb_data[14]), .B1(n1713), .B2(
        tm_start[14]), .ZN(n1132) );
  OAI21D0BWP12T30P140 U1496 ( .A1(n1133), .A2(n1711), .B(n1132), .ZN(n1134) );
  AO22D0BWP12T30P140 U1497 ( .A1(timer[14]), .A2(n1135), .B1(n1316), .B2(n1134), .Z(n820) );
  INVD0BWP12T30P140 U1498 ( .I(i_wb_data[18]), .ZN(n1651) );
  AOI22D0BWP12T30P140 U1499 ( .A1(n1240), .A2(n1651), .B1(n1548), .B2(n1239), 
        .ZN(n948) );
  NR2D0BWP12T30P140 U1500 ( .A1(sw_sub[3]), .A2(n1307), .ZN(n1136) );
  OAI21D0BWP12T30P140 U1501 ( .A1(n1775), .A2(n1137), .B(n1163), .ZN(n1254) );
  AO22D0BWP12T30P140 U1502 ( .A1(n1137), .A2(n1136), .B1(sw_sub[3]), .B2(n1254), .Z(n895) );
  AOI21D0BWP12T30P140 U1503 ( .A1(n1243), .A2(n1268), .B(n1675), .ZN(N68) );
  INVD0BWP12T30P140 U1504 ( .I(timer[5]), .ZN(n1230) );
  AOI21D0BWP12T30P140 U1505 ( .A1(n1277), .A2(timer[4]), .B(n1178), .ZN(n1147)
         );
  OAI21D0BWP12T30P140 U1506 ( .A1(n1230), .A2(n1711), .B(n1147), .ZN(n1140) );
  INVD0BWP12T30P140 U1507 ( .I(n1178), .ZN(n1179) );
  AOI22D0BWP12T30P140 U1508 ( .A1(n1329), .A2(n1277), .B1(n1713), .B2(
        tm_start[6]), .ZN(n1138) );
  OAI21D0BWP12T30P140 U1509 ( .A1(n1356), .A2(n1373), .B(n1138), .ZN(n1139) );
  AO22D0BWP12T30P140 U1510 ( .A1(timer[6]), .A2(n1140), .B1(n1179), .B2(n1139), 
        .Z(n828) );
  OAI22D0BWP12T30P140 U1511 ( .A1(n1699), .A2(n1417), .B1(n1141), .B2(n1418), 
        .ZN(n872) );
  AOI21D0BWP12T30P140 U1512 ( .A1(n1269), .A2(n1289), .B(n1496), .ZN(N101) );
  AOI22D0BWP12T30P140 U1513 ( .A1(n1712), .A2(n1558), .B1(n1713), .B2(
        tm_start[22]), .ZN(n1144) );
  OAI21D0BWP12T30P140 U1514 ( .A1(n1711), .A2(n1576), .B(n1710), .ZN(n1193) );
  AOI32D0BWP12T30P140 U1515 ( .A1(timer[21]), .A2(timer[22]), .A3(n1277), .B1(
        n1193), .B2(timer[22]), .ZN(n1143) );
  ND2D0BWP12T30P140 U1516 ( .A1(n1715), .A2(i_wb_data[22]), .ZN(n1703) );
  AOI32D0BWP12T30P140 U1517 ( .A1(n1144), .A2(n1143), .A3(n1703), .B1(n1142), 
        .B2(n1143), .ZN(n812) );
  ND2D0BWP12T30P140 U1518 ( .A1(n1558), .A2(n1801), .ZN(n1145) );
  ND2D0BWP12T30P140 U1519 ( .A1(i_wb_data[5]), .A2(n1582), .ZN(n1707) );
  OAI31D0BWP12T30P140 U1520 ( .A1(timer[4]), .A2(timer[5]), .A3(n1145), .B(
        n1707), .ZN(n1146) );
  AOI21D0BWP12T30P140 U1521 ( .A1(n1713), .A2(tm_start[5]), .B(n1146), .ZN(
        n1148) );
  OAI22D0BWP12T30P140 U1522 ( .A1(n1178), .A2(n1148), .B1(n1147), .B2(n1230), 
        .ZN(n829) );
  INVD0BWP12T30P140 U1523 ( .I(i_hack), .ZN(n1273) );
  CKBD0BWP12T30P140 U1524 ( .I(n1273), .Z(n1362) );
  NR2D0BWP12T30P140 U1525 ( .A1(n1771), .A2(n1362), .ZN(n808) );
  NR2D0BWP12T30P140 U1526 ( .A1(n1775), .A2(sw_pps), .ZN(n1181) );
  INVD0BWP12T30P140 U1527 ( .I(n1181), .ZN(n1449) );
  OAI31D0BWP12T30P140 U1528 ( .A1(stopwatch[10]), .A2(stopwatch[9]), .A3(
        stopwatch[8]), .B(stopwatch[11]), .ZN(n1196) );
  INVD0BWP12T30P140 U1529 ( .I(n1196), .ZN(n1412) );
  ND2D0BWP12T30P140 U1530 ( .A1(sw_pps), .A2(n1780), .ZN(n1414) );
  NR2D0BWP12T30P140 U1531 ( .A1(n1412), .A2(n1414), .ZN(n1448) );
  ND2D0BWP12T30P140 U1532 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .ZN(n1149)
         );
  ND2D0BWP12T30P140 U1533 ( .A1(n1448), .A2(n1149), .ZN(n1385) );
  ND3D0BWP12T30P140 U1534 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .A3(n1448), 
        .ZN(n1183) );
  INVD0BWP12T30P140 U1535 ( .I(stopwatch[10]), .ZN(n1777) );
  AOI32D0BWP12T30P140 U1536 ( .A1(n1449), .A2(stopwatch[10]), .A3(n1385), .B1(
        n1183), .B2(n1777), .ZN(n888) );
  INVD0BWP12T30P140 U1537 ( .I(timer[0]), .ZN(n1204) );
  AOI22D0BWP12T30P140 U1538 ( .A1(i_wb_data[0]), .A2(n1582), .B1(n1713), .B2(
        tm_start[0]), .ZN(n1150) );
  OAI31D0BWP12T30P140 U1539 ( .A1(n1270), .A2(timer[0]), .A3(n1151), .B(n1150), 
        .ZN(n1152) );
  AOI21D0BWP12T30P140 U1540 ( .A1(n1346), .A2(n1152), .B(n1328), .ZN(n1153) );
  OAI21D0BWP12T30P140 U1541 ( .A1(n1346), .A2(n1204), .B(n1153), .ZN(n834) );
  INVD0BWP12T30P140 U1542 ( .I(sw_sub[3]), .ZN(n1255) );
  NR2D0BWP12T30P140 U1543 ( .A1(n1775), .A2(n1255), .ZN(N615) );
  AOI22D0BWP12T30P140 U1544 ( .A1(n1715), .A2(i_wb_data[17]), .B1(n1713), .B2(
        tm_start[17]), .ZN(n1154) );
  OAI31D0BWP12T30P140 U1545 ( .A1(timer[17]), .A2(n1156), .A3(n1155), .B(n1154), .ZN(n1157) );
  AO22D0BWP12T30P140 U1546 ( .A1(timer[17]), .A2(n1159), .B1(n1158), .B2(n1157), .Z(n817) );
  NR2D0BWP12T30P140 U1547 ( .A1(n1775), .A2(n1160), .ZN(N614) );
  NR2D0BWP12T30P140 U1548 ( .A1(n1775), .A2(n1161), .ZN(N613) );
  AOI22D0BWP12T30P140 U1549 ( .A1(sw_sub[0]), .A2(n1163), .B1(n1307), .B2(
        n1162), .ZN(n898) );
  INVD0BWP12T30P140 U1550 ( .I(n1393), .ZN(n1410) );
  ND2D0BWP12T30P140 U1551 ( .A1(n1410), .A2(n1164), .ZN(n1494) );
  INVD0BWP12T30P140 U1552 ( .I(n1494), .ZN(n1522) );
  ND2D0BWP12T30P140 U1553 ( .A1(clock[6]), .A2(clock[4]), .ZN(n1166) );
  ND4D0BWP12T30P140 U1554 ( .A1(clock[0]), .A2(n1452), .A3(n1460), .A4(n1399), 
        .ZN(n1165) );
  NR4D0BWP12T30P140 U1555 ( .A1(clock[2]), .A2(n1408), .A3(n1166), .A4(n1165), 
        .ZN(n1174) );
  INVD0BWP12T30P140 U1556 ( .I(clock[12]), .ZN(n1478) );
  NR4D0BWP12T30P140 U1557 ( .A1(clock[9]), .A2(n1435), .A3(n1391), .A4(n1478), 
        .ZN(n1168) );
  NR4D0BWP12T30P140 U1558 ( .A1(clock[13]), .A2(clock[10]), .A3(clock[15]), 
        .A4(n1523), .ZN(n1167) );
  ND3D0BWP12T30P140 U1559 ( .A1(n1174), .A2(n1168), .A3(n1167), .ZN(n1796) );
  ND3D0BWP12T30P140 U1560 ( .A1(n1169), .A2(i_wb_data[8]), .A3(n1410), .ZN(
        n1170) );
  OAI22D0BWP12T30P140 U1561 ( .A1(n1522), .A2(n1796), .B1(n1171), .B2(n1170), 
        .ZN(N264) );
  ND4D0BWP12T30P140 U1562 ( .A1(i_wb_data[4]), .A2(i_wb_data[6]), .A3(n1172), 
        .A4(n1410), .ZN(n1176) );
  ND2D0BWP12T30P140 U1563 ( .A1(n1410), .A2(n1173), .ZN(n1469) );
  ND2D0BWP12T30P140 U1564 ( .A1(n1174), .A2(n1469), .ZN(n1175) );
  OAI31D0BWP12T30P140 U1565 ( .A1(n1406), .A2(n1470), .A3(n1176), .B(n1175), 
        .ZN(N263) );
  INVD0BWP12T30P140 U1566 ( .I(ck_sub[7]), .ZN(N743) );
  ND2D0BWP12T30P140 U1567 ( .A1(ck_sub[6]), .A2(n1177), .ZN(n1339) );
  NR2D0BWP12T30P140 U1568 ( .A1(N743), .A2(n1339), .ZN(N857) );
  INVD0BWP12T30P140 U1569 ( .I(timer[4]), .ZN(n1224) );
  AOI22D0BWP12T30P140 U1570 ( .A1(tm_start[4]), .A2(n1713), .B1(n1277), .B2(
        n1224), .ZN(n1180) );
  ND2D0BWP12T30P140 U1571 ( .A1(n1715), .A2(i_wb_data[4]), .ZN(n1709) );
  AOI32D0BWP12T30P140 U1572 ( .A1(n1180), .A2(n1179), .A3(n1709), .B1(n1178), 
        .B2(n1224), .ZN(n830) );
  INVD0BWP12T30P140 U1573 ( .I(i_wb_data[25]), .ZN(n1610) );
  AOI22D0BWP12T30P140 U1574 ( .A1(n1410), .A2(n1610), .B1(n1187), .B2(n1393), 
        .ZN(n789) );
  OAI21D0BWP12T30P140 U1575 ( .A1(n1181), .A2(n1448), .B(stopwatch[11]), .ZN(
        n1182) );
  OAI21D0BWP12T30P140 U1576 ( .A1(n1183), .A2(n1777), .B(n1182), .ZN(n887) );
  OAI21D0BWP12T30P140 U1577 ( .A1(clock[25]), .A2(n1184), .B(clock[24]), .ZN(
        n1186) );
  NR2D0BWP12T30P140 U1578 ( .A1(clock[24]), .A2(clock[25]), .ZN(n1765) );
  OAI21D0BWP12T30P140 U1579 ( .A1(ck_last_clock[20]), .A2(ck_last_clock[21]), 
        .B(n1765), .ZN(n1185) );
  OAI211D0BWP12T30P140 U1580 ( .A1(n1188), .A2(n1187), .B(n1186), .C(n1185), 
        .ZN(n952) );
  INVD0BWP12T30P140 U1581 ( .I(timer[12]), .ZN(n1590) );
  ND2D0BWP12T30P140 U1582 ( .A1(clock[24]), .A2(clock[25]), .ZN(n1441) );
  INVD0BWP12T30P140 U1583 ( .I(n1441), .ZN(n1764) );
  AOI22D0BWP12T30P140 U1584 ( .A1(stopwatch[16]), .A2(n1788), .B1(
        ck_last_clock[12]), .B2(n1764), .ZN(n1190) );
  ND2D0BWP12T30P140 U1585 ( .A1(ck_last_clock[20]), .A2(n1765), .ZN(n1189) );
  OAI211D0BWP12T30P140 U1586 ( .A1(n1568), .A2(n1590), .B(n1190), .C(n1189), 
        .ZN(n965) );
  INVD0BWP12T30P140 U1587 ( .I(ck_sub[0]), .ZN(n1545) );
  NR2D0BWP12T30P140 U1588 ( .A1(r_hack_carry), .A2(i_hack), .ZN(n1265) );
  INVD0BWP12T30P140 U1589 ( .I(n1265), .ZN(n1272) );
  CKBD0BWP12T30P140 U1590 ( .I(n1272), .Z(n1271) );
  MAOI22D0BWP12T30P140 U1591 ( .A1(n1545), .A2(n1271), .B1(n1271), .B2(
        hack_time[0]), .ZN(n682) );
  AOI22D0BWP12T30P140 U1592 ( .A1(n1715), .A2(i_wb_data[21]), .B1(n1713), .B2(
        tm_start[21]), .ZN(n1191) );
  OAI31D0BWP12T30P140 U1593 ( .A1(timer[21]), .A2(timer[20]), .A3(n1711), .B(
        n1191), .ZN(n1192) );
  AO22D0BWP12T30P140 U1594 ( .A1(timer[21]), .A2(n1193), .B1(n1710), .B2(n1192), .Z(n813) );
  INVD0BWP12T30P140 U1595 ( .I(ck_sub[4]), .ZN(n1323) );
  CKBD0BWP12T30P140 U1596 ( .I(n1272), .Z(n1266) );
  MAOI22D0BWP12T30P140 U1597 ( .A1(n1323), .A2(n1266), .B1(n1266), .B2(
        hack_time[4]), .ZN(n686) );
  AO22D0BWP12T30P140 U1598 ( .A1(ck_sub[0]), .A2(n1195), .B1(ck_sub[1]), .B2(
        n1194), .Z(n922) );
  INVD0BWP12T30P140 U1599 ( .I(stopwatch[15]), .ZN(n1778) );
  AOI21D0BWP12T30P140 U1600 ( .A1(stopwatch[13]), .A2(stopwatch[14]), .B(
        stopwatch[15]), .ZN(n1411) );
  INVD0BWP12T30P140 U1601 ( .I(sw_pps), .ZN(n1783) );
  NR2D0BWP12T30P140 U1602 ( .A1(n1778), .A2(n1544), .ZN(n883) );
  OA22D0BWP12T30P140 U1603 ( .A1(n1266), .A2(hack_time[2]), .B1(ck_sub[2]), 
        .B2(n1265), .Z(n684) );
  AOI21D0BWP12T30P140 U1604 ( .A1(stopwatch[21]), .A2(stopwatch[22]), .B(
        stopwatch[23]), .ZN(n1381) );
  INVD0BWP12T30P140 U1605 ( .I(n1381), .ZN(n1198) );
  INVD0BWP12T30P140 U1606 ( .I(stopwatch[19]), .ZN(n1774) );
  NR2D0BWP12T30P140 U1607 ( .A1(n1197), .A2(n1774), .ZN(n1382) );
  AN2D0BWP12T30P140 U1608 ( .A1(stopwatch[23]), .A2(n1600), .Z(n875) );
  ND2D0BWP12T30P140 U1609 ( .A1(sw_ppm), .A2(n1780), .ZN(n1384) );
  NR2D0BWP12T30P140 U1610 ( .A1(n1382), .A2(n1384), .ZN(n1464) );
  ND3D0BWP12T30P140 U1611 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .A3(n1464), 
        .ZN(n1379) );
  INVD0BWP12T30P140 U1612 ( .I(stopwatch[18]), .ZN(n1378) );
  NR2D0BWP12T30P140 U1613 ( .A1(n1775), .A2(sw_ppm), .ZN(n1442) );
  OAI21D0BWP12T30P140 U1614 ( .A1(n1442), .A2(n1464), .B(stopwatch[19]), .ZN(
        n1199) );
  OAI21D0BWP12T30P140 U1615 ( .A1(n1379), .A2(n1378), .B(n1199), .ZN(n879) );
  MAOI22D0BWP12T30P140 U1616 ( .A1(n1200), .A2(n1266), .B1(n1272), .B2(
        hack_time[3]), .ZN(n685) );
  INVD0BWP12T30P140 U1617 ( .I(stopwatch[25]), .ZN(n1202) );
  OAI21D0BWP12T30P140 U1618 ( .A1(stopwatch[24]), .A2(stopwatch[25]), .B(n1201), .ZN(n1313) );
  OAI22D0BWP12T30P140 U1619 ( .A1(n1202), .A2(n1417), .B1(n1313), .B2(n1418), 
        .ZN(n873) );
  OA22D0BWP12T30P140 U1620 ( .A1(n1266), .A2(hack_time[1]), .B1(ck_sub[1]), 
        .B2(n1265), .Z(n683) );
  NR3D0BWP12T30P140 U1621 ( .A1(i_wb_addr[1]), .A2(n1366), .A3(n1364), .ZN(
        n1696) );
  CKBD0BWP12T30P140 U1622 ( .I(n1696), .Z(n1686) );
  NR3D0BWP12T30P140 U1623 ( .A1(i_wb_addr[0]), .A2(n1365), .A3(n1366), .ZN(
        n1748) );
  AOI22D0BWP12T30P140 U1624 ( .A1(n1686), .A2(hack_time[0]), .B1(n1748), .B2(
        hack_counter[8]), .ZN(n1208) );
  NR3D0BWP12T30P140 U1625 ( .A1(i_wb_addr[1]), .A2(i_wb_addr[0]), .A3(n1366), 
        .ZN(n1742) );
  AOI22D0BWP12T30P140 U1626 ( .A1(n1646), .A2(ck_last_clock[0]), .B1(n1742), 
        .B2(ckspeed[0]), .ZN(n1207) );
  INVD0BWP12T30P140 U1627 ( .I(n1700), .ZN(n1682) );
  CKBD0BWP12T30P140 U1628 ( .I(n1682), .Z(n1747) );
  INVD0BWP12T30P140 U1629 ( .I(n1645), .ZN(n1680) );
  OAI22D0BWP12T30P140 U1630 ( .A1(n1680), .A2(n1204), .B1(n1678), .B2(n1203), 
        .ZN(n1205) );
  AOI21D0BWP12T30P140 U1631 ( .A1(n1747), .A2(stopwatch[0]), .B(n1205), .ZN(
        n1206) );
  ND3D0BWP12T30P140 U1632 ( .A1(n1208), .A2(n1207), .A3(n1206), .ZN(n997) );
  CKBD0BWP12T30P140 U1633 ( .I(n1748), .Z(n1743) );
  AOI22D0BWP12T30P140 U1634 ( .A1(n1686), .A2(hack_time[1]), .B1(n1743), .B2(
        hack_counter[9]), .ZN(n1214) );
  CKBD0BWP12T30P140 U1635 ( .I(n1646), .Z(n1676) );
  CKBD0BWP12T30P140 U1636 ( .I(n1742), .Z(n1746) );
  AOI22D0BWP12T30P140 U1637 ( .A1(n1676), .A2(ck_last_clock[1]), .B1(n1746), 
        .B2(ckspeed[1]), .ZN(n1213) );
  OAI22D0BWP12T30P140 U1638 ( .A1(n1680), .A2(n1210), .B1(n1678), .B2(n1209), 
        .ZN(n1211) );
  AOI21D0BWP12T30P140 U1639 ( .A1(n1682), .A2(stopwatch[1]), .B(n1211), .ZN(
        n1212) );
  ND3D0BWP12T30P140 U1640 ( .A1(n1214), .A2(n1213), .A3(n1212), .ZN(n996) );
  AOI22D0BWP12T30P140 U1641 ( .A1(n1686), .A2(hack_time[2]), .B1(n1748), .B2(
        hack_counter[10]), .ZN(n1219) );
  AOI22D0BWP12T30P140 U1642 ( .A1(n1676), .A2(ck_last_clock[2]), .B1(n1742), 
        .B2(ckspeed[2]), .ZN(n1218) );
  OAI22D0BWP12T30P140 U1643 ( .A1(n1680), .A2(n1344), .B1(n1678), .B2(n1215), 
        .ZN(n1216) );
  AOI21D0BWP12T30P140 U1644 ( .A1(n1682), .A2(stopwatch[2]), .B(n1216), .ZN(
        n1217) );
  ND3D0BWP12T30P140 U1645 ( .A1(n1219), .A2(n1218), .A3(n1217), .ZN(n995) );
  AOI22D0BWP12T30P140 U1646 ( .A1(n1645), .A2(timer[3]), .B1(n1644), .B2(
        alarm_time[3]), .ZN(n1223) );
  AOI22D0BWP12T30P140 U1647 ( .A1(n1686), .A2(hack_time[3]), .B1(n1743), .B2(
        hack_counter[11]), .ZN(n1222) );
  AOI22D0BWP12T30P140 U1648 ( .A1(n1676), .A2(ck_last_clock[3]), .B1(n1746), 
        .B2(ckspeed[3]), .ZN(n1221) );
  ND2D0BWP12T30P140 U1649 ( .A1(n1747), .A2(stopwatch[3]), .ZN(n1220) );
  ND4D0BWP12T30P140 U1650 ( .A1(n1223), .A2(n1222), .A3(n1221), .A4(n1220), 
        .ZN(n994) );
  AOI22D0BWP12T30P140 U1651 ( .A1(n1696), .A2(hack_time[4]), .B1(n1748), .B2(
        hack_counter[12]), .ZN(n1228) );
  AOI22D0BWP12T30P140 U1652 ( .A1(n1676), .A2(ck_last_clock[4]), .B1(n1742), 
        .B2(ckspeed[4]), .ZN(n1227) );
  OAI22D0BWP12T30P140 U1653 ( .A1(n1680), .A2(n1224), .B1(n1678), .B2(n1360), 
        .ZN(n1225) );
  AOI21D0BWP12T30P140 U1654 ( .A1(n1682), .A2(stopwatch[4]), .B(n1225), .ZN(
        n1226) );
  ND3D0BWP12T30P140 U1655 ( .A1(n1228), .A2(n1227), .A3(n1226), .ZN(n993) );
  AOI22D0BWP12T30P140 U1656 ( .A1(n1686), .A2(hack_time[5]), .B1(n1743), .B2(
        hack_counter[13]), .ZN(n1234) );
  AOI22D0BWP12T30P140 U1657 ( .A1(n1646), .A2(ck_last_clock[5]), .B1(n1746), 
        .B2(ckspeed[5]), .ZN(n1233) );
  OAI22D0BWP12T30P140 U1658 ( .A1(n1680), .A2(n1230), .B1(n1678), .B2(n1229), 
        .ZN(n1231) );
  AOI21D0BWP12T30P140 U1659 ( .A1(n1682), .A2(stopwatch[5]), .B(n1231), .ZN(
        n1232) );
  ND3D0BWP12T30P140 U1660 ( .A1(n1234), .A2(n1233), .A3(n1232), .ZN(n992) );
  AOI22D0BWP12T30P140 U1661 ( .A1(n1645), .A2(timer[6]), .B1(n1644), .B2(
        alarm_time[6]), .ZN(n1238) );
  AOI22D0BWP12T30P140 U1662 ( .A1(n1696), .A2(hack_time[6]), .B1(n1748), .B2(
        hack_counter[14]), .ZN(n1237) );
  AOI22D0BWP12T30P140 U1663 ( .A1(n1676), .A2(ck_last_clock[6]), .B1(n1742), 
        .B2(ckspeed[6]), .ZN(n1236) );
  ND2D0BWP12T30P140 U1664 ( .A1(n1747), .A2(stopwatch[6]), .ZN(n1235) );
  ND4D0BWP12T30P140 U1665 ( .A1(n1238), .A2(n1237), .A3(n1236), .A4(n1235), 
        .ZN(n991) );
  AOI22D0BWP12T30P140 U1666 ( .A1(n1240), .A2(n1665), .B1(n1575), .B2(n1239), 
        .ZN(n950) );
  AOI22D0BWP12T30P140 U1667 ( .A1(n1361), .A2(n1373), .B1(n1241), .B2(n1359), 
        .ZN(n936) );
  ND2D0BWP12T30P140 U1668 ( .A1(n1242), .A2(n1746), .ZN(n1380) );
  INVD0BWP12T30P140 U1669 ( .I(n1380), .ZN(n1690) );
  CKBD0BWP12T30P140 U1670 ( .I(n1690), .Z(n1693) );
  AOI22D0BWP12T30P140 U1671 ( .A1(n1693), .A2(n1470), .B1(n1243), .B2(n1380), 
        .ZN(n752) );
  INVD0BWP12T30P140 U1672 ( .I(sw_sub[7]), .ZN(n1786) );
  NR2D0BWP12T30P140 U1673 ( .A1(n1775), .A2(n1786), .ZN(N619) );
  OA22D0BWP12T30P140 U1674 ( .A1(n1362), .A2(ck_counter[38]), .B1(
        hack_counter[38]), .B2(i_hack), .Z(n750) );
  MAOI22D0BWP12T30P140 U1675 ( .A1(n1416), .A2(n1266), .B1(n1271), .B2(
        hack_time[23]), .ZN(n705) );
  NR2D0BWP12T30P140 U1676 ( .A1(n1775), .A2(n1787), .ZN(N617) );
  MAOI22D0BWP12T30P140 U1677 ( .A1(n1391), .A2(n1272), .B1(n1271), .B2(
        hack_time[22]), .ZN(n704) );
  INVD0BWP12T30P140 U1678 ( .I(clock[13]), .ZN(n1492) );
  MAOI22D0BWP12T30P140 U1679 ( .A1(n1492), .A2(n1272), .B1(n1271), .B2(
        hack_time[21]), .ZN(n703) );
  NR2D0BWP12T30P140 U1680 ( .A1(n1775), .A2(n1257), .ZN(N616) );
  MAOI22D0BWP12T30P140 U1681 ( .A1(n1478), .A2(n1272), .B1(n1271), .B2(
        hack_time[20]), .ZN(n702) );
  MAOI22D0BWP12T30P140 U1682 ( .A1(n1523), .A2(n1271), .B1(n1271), .B2(
        hack_time[19]), .ZN(n701) );
  OAI21D0BWP12T30P140 U1683 ( .A1(n1388), .A2(n1734), .B(ck_carry), .ZN(n1244)
         );
  MOAI22D0BWP12T30P140 U1684 ( .A1(n1724), .A2(n1351), .B1(ledreg[4]), .B2(
        n1244), .ZN(n803) );
  MAOI22D0BWP12T30P140 U1685 ( .A1(n1387), .A2(n1272), .B1(n1271), .B2(
        hack_time[18]), .ZN(n700) );
  MAOI22D0BWP12T30P140 U1686 ( .A1(n1436), .A2(n1272), .B1(n1271), .B2(
        hack_time[17]), .ZN(n699) );
  CKMUX2D0BWP12T30P140 U1687 ( .I0(ck_counter[2]), .I1(hack_counter[2]), .S(
        n1273), .Z(n714) );
  MAOI22D0BWP12T30P140 U1688 ( .A1(n1435), .A2(n1271), .B1(n1271), .B2(
        hack_time[16]), .ZN(n698) );
  MAOI22D0BWP12T30P140 U1689 ( .A1(n1399), .A2(n1266), .B1(n1271), .B2(
        hack_time[15]), .ZN(n697) );
  ND2D0BWP12T30P140 U1690 ( .A1(n1349), .A2(ledreg[15]), .ZN(n1348) );
  NR2D0BWP12T30P140 U1691 ( .A1(n1348), .A2(n1246), .ZN(n1247) );
  NR2D0BWP12T30P140 U1692 ( .A1(n1247), .A2(n1351), .ZN(n1245) );
  NR2D0BWP12T30P140 U1693 ( .A1(n1245), .A2(n1771), .ZN(n1249) );
  OAI32D0BWP12T30P140 U1694 ( .A1(ledreg[16]), .A2(n1348), .A3(n1351), .B1(
        n1249), .B2(n1246), .ZN(n791) );
  INVD0BWP12T30P140 U1695 ( .I(clock[6]), .ZN(n1482) );
  MAOI22D0BWP12T30P140 U1696 ( .A1(n1482), .A2(n1272), .B1(n1271), .B2(
        hack_time[14]), .ZN(n696) );
  MAOI22D0BWP12T30P140 U1697 ( .A1(n1460), .A2(n1272), .B1(n1272), .B2(
        hack_time[13]), .ZN(n695) );
  INVD0BWP12T30P140 U1698 ( .I(n1247), .ZN(n1250) );
  OAI32D0BWP12T30P140 U1699 ( .A1(ledreg[17]), .A2(n1250), .A3(n1351), .B1(
        n1249), .B2(n1248), .ZN(n790) );
  MAOI22D0BWP12T30P140 U1700 ( .A1(n1457), .A2(n1266), .B1(n1271), .B2(
        hack_time[12]), .ZN(n694) );
  MAOI22D0BWP12T30P140 U1701 ( .A1(n1408), .A2(n1266), .B1(n1272), .B2(
        hack_time[11]), .ZN(n693) );
  AOI21D0BWP12T30P140 U1702 ( .A1(n1256), .A2(n1327), .B(n1251), .ZN(n1252) );
  OAI32D0BWP12T30P140 U1703 ( .A1(sw_sub[7]), .A2(n1327), .A3(n1253), .B1(
        n1252), .B2(n1786), .ZN(n891) );
  MAOI22D0BWP12T30P140 U1704 ( .A1(n1409), .A2(n1272), .B1(n1271), .B2(
        hack_time[10]), .ZN(n692) );
  MAOI22D0BWP12T30P140 U1705 ( .A1(n1452), .A2(n1266), .B1(n1266), .B2(
        hack_time[9]), .ZN(n691) );
  AOI21D0BWP12T30P140 U1706 ( .A1(n1256), .A2(n1255), .B(n1254), .ZN(n1258) );
  OAI32D0BWP12T30P140 U1707 ( .A1(sw_sub[4]), .A2(n1307), .A3(n1259), .B1(
        n1258), .B2(n1257), .ZN(n894) );
  MAOI22D0BWP12T30P140 U1708 ( .A1(n1404), .A2(n1266), .B1(n1266), .B2(
        hack_time[8]), .ZN(n690) );
  MAOI22D0BWP12T30P140 U1709 ( .A1(N743), .A2(n1266), .B1(n1272), .B2(
        hack_time[7]), .ZN(n689) );
  OAI21D0BWP12T30P140 U1710 ( .A1(n1771), .A2(n1262), .B(n1558), .ZN(n1261) );
  OAI32D0BWP12T30P140 U1711 ( .A1(tm_sub[5]), .A2(n1560), .A3(n1262), .B1(
        n1261), .B2(n1260), .ZN(n839) );
  MAOI22D0BWP12T30P140 U1712 ( .A1(n1318), .A2(n1272), .B1(n1271), .B2(
        hack_time[5]), .ZN(n687) );
  MAOI22D0BWP12T30P140 U1713 ( .A1(n1798), .A2(n1272), .B1(n1266), .B2(
        hack_time[29]), .ZN(n711) );
  AOI22D0BWP12T30P140 U1714 ( .A1(n1264), .A2(n1371), .B1(n1623), .B2(n1263), 
        .ZN(n940) );
  MAOI22D0BWP12T30P140 U1715 ( .A1(n1795), .A2(n1272), .B1(n1266), .B2(
        hack_time[28]), .ZN(n710) );
  MAOI22D0BWP12T30P140 U1716 ( .A1(n1794), .A2(n1266), .B1(n1266), .B2(
        hack_time[27]), .ZN(n709) );
  MAOI22D0BWP12T30P140 U1717 ( .A1(n1425), .A2(n1272), .B1(n1271), .B2(
        hack_time[25]), .ZN(n707) );
  MAOI22D0BWP12T30P140 U1718 ( .A1(n1431), .A2(n1266), .B1(n1271), .B2(
        hack_time[24]), .ZN(n706) );
  OA22D0BWP12T30P140 U1719 ( .A1(n1266), .A2(hack_time[6]), .B1(ck_sub[6]), 
        .B2(n1265), .Z(n688) );
  CKMUX2D0BWP12T30P140 U1720 ( .I0(ck_counter[7]), .I1(hack_counter[7]), .S(
        n1362), .Z(n719) );
  CKMUX2D0BWP12T30P140 U1721 ( .I0(ck_counter[6]), .I1(hack_counter[6]), .S(
        n1273), .Z(n718) );
  MAOI22D0BWP12T30P140 U1722 ( .A1(i_hack), .A2(n1267), .B1(hack_counter[39]), 
        .B2(i_hack), .ZN(n751) );
  CKMUX2D0BWP12T30P140 U1723 ( .I0(ck_counter[5]), .I1(hack_counter[5]), .S(
        n1362), .Z(n717) );
  CKMUX2D0BWP12T30P140 U1724 ( .I0(ck_counter[4]), .I1(hack_counter[4]), .S(
        n1273), .Z(n716) );
  INVD0BWP12T30P140 U1725 ( .I(i_wb_data[22]), .ZN(n1622) );
  MAOI22D0BWP12T30P140 U1726 ( .A1(n1410), .A2(n1622), .B1(clock[22]), .B2(
        n1410), .ZN(n786) );
  CKMUX2D0BWP12T30P140 U1727 ( .I0(ck_counter[3]), .I1(hack_counter[3]), .S(
        n1362), .Z(n715) );
  CKMUX2D0BWP12T30P140 U1728 ( .I0(ck_counter[1]), .I1(hack_counter[1]), .S(
        n1273), .Z(n713) );
  INVD0BWP12T30P140 U1729 ( .I(i_wb_data[23]), .ZN(n1621) );
  MAOI22D0BWP12T30P140 U1730 ( .A1(n1410), .A2(n1621), .B1(clock[23]), .B2(
        n1410), .ZN(n787) );
  CKMUX2D0BWP12T30P140 U1731 ( .I0(ck_counter[31]), .I1(hack_counter[31]), .S(
        n1362), .Z(n743) );
  CKMUX2D0BWP12T30P140 U1732 ( .I0(ck_counter[30]), .I1(hack_counter[30]), .S(
        n1362), .Z(n742) );
  MAOI22D0BWP12T30P140 U1733 ( .A1(n1270), .A2(n1370), .B1(tm_start[11]), .B2(
        n1582), .ZN(n855) );
  CKMUX2D0BWP12T30P140 U1734 ( .I0(ck_counter[29]), .I1(hack_counter[29]), .S(
        n1362), .Z(n741) );
  CKMUX2D0BWP12T30P140 U1735 ( .I0(ck_counter[28]), .I1(hack_counter[28]), .S(
        n1362), .Z(n740) );
  MAOI22D0BWP12T30P140 U1736 ( .A1(n1270), .A2(n1433), .B1(tm_start[9]), .B2(
        n1582), .ZN(n857) );
  CKMUX2D0BWP12T30P140 U1737 ( .I0(ck_counter[27]), .I1(hack_counter[27]), .S(
        n1362), .Z(n739) );
  CKMUX2D0BWP12T30P140 U1738 ( .I0(ck_counter[26]), .I1(hack_counter[26]), .S(
        n1362), .Z(n738) );
  MAOI22D0BWP12T30P140 U1739 ( .A1(n1270), .A2(n1372), .B1(tm_start[8]), .B2(
        n1582), .ZN(n858) );
  CKMUX2D0BWP12T30P140 U1740 ( .I0(ck_counter[25]), .I1(hack_counter[25]), .S(
        n1273), .Z(n737) );
  CKMUX2D0BWP12T30P140 U1741 ( .I0(ck_counter[24]), .I1(hack_counter[24]), .S(
        n1362), .Z(n736) );
  MAOI22D0BWP12T30P140 U1742 ( .A1(n1270), .A2(n1470), .B1(tm_start[0]), .B2(
        n1582), .ZN(n866) );
  CKMUX2D0BWP12T30P140 U1743 ( .I0(ck_counter[23]), .I1(hack_counter[23]), .S(
        n1273), .Z(n735) );
  CKMUX2D0BWP12T30P140 U1744 ( .I0(ck_counter[22]), .I1(hack_counter[22]), .S(
        n1362), .Z(n734) );
  OA22D0BWP12T30P140 U1745 ( .A1(n1362), .A2(ck_counter[36]), .B1(
        hack_counter[36]), .B2(i_hack), .Z(n748) );
  MAOI22D0BWP12T30P140 U1746 ( .A1(n1270), .A2(n1376), .B1(tm_start[1]), .B2(
        n1582), .ZN(n865) );
  CKMUX2D0BWP12T30P140 U1747 ( .I0(ck_counter[21]), .I1(hack_counter[21]), .S(
        n1273), .Z(n733) );
  CKMUX2D0BWP12T30P140 U1748 ( .I0(ck_counter[20]), .I1(hack_counter[20]), .S(
        n1362), .Z(n732) );
  MAOI22D0BWP12T30P140 U1749 ( .A1(i_hack), .A2(n1268), .B1(hack_counter[0]), 
        .B2(i_hack), .ZN(n712) );
  CKMUX2D0BWP12T30P140 U1750 ( .I0(ck_counter[19]), .I1(hack_counter[19]), .S(
        n1362), .Z(n731) );
  CKMUX2D0BWP12T30P140 U1751 ( .I0(ck_counter[18]), .I1(hack_counter[18]), .S(
        n1273), .Z(n730) );
  MAOI22D0BWP12T30P140 U1752 ( .A1(i_hack), .A2(n1269), .B1(hack_counter[33]), 
        .B2(i_hack), .ZN(n745) );
  CKMUX2D0BWP12T30P140 U1753 ( .I0(ck_counter[17]), .I1(hack_counter[17]), .S(
        n1362), .Z(n729) );
  CKMUX2D0BWP12T30P140 U1754 ( .I0(ck_counter[16]), .I1(hack_counter[16]), .S(
        n1273), .Z(n728) );
  MAOI22D0BWP12T30P140 U1755 ( .A1(i_hack), .A2(n1500), .B1(hack_counter[35]), 
        .B2(i_hack), .ZN(n747) );
  CKMUX2D0BWP12T30P140 U1756 ( .I0(ck_counter[15]), .I1(hack_counter[15]), .S(
        n1362), .Z(n727) );
  CKMUX2D0BWP12T30P140 U1757 ( .I0(ck_counter[14]), .I1(hack_counter[14]), .S(
        n1273), .Z(n726) );
  MAOI22D0BWP12T30P140 U1758 ( .A1(i_hack), .A2(n1503), .B1(hack_counter[37]), 
        .B2(i_hack), .ZN(n749) );
  CKMUX2D0BWP12T30P140 U1759 ( .I0(ck_counter[13]), .I1(hack_counter[13]), .S(
        n1273), .Z(n725) );
  CKMUX2D0BWP12T30P140 U1760 ( .I0(ck_counter[12]), .I1(hack_counter[12]), .S(
        n1273), .Z(n724) );
  MAOI22D0BWP12T30P140 U1761 ( .A1(n1270), .A2(n1406), .B1(tm_start[3]), .B2(
        n1582), .ZN(n863) );
  CKMUX2D0BWP12T30P140 U1762 ( .I0(ck_counter[11]), .I1(hack_counter[11]), .S(
        n1273), .Z(n723) );
  CKMUX2D0BWP12T30P140 U1763 ( .I0(ck_counter[10]), .I1(hack_counter[10]), .S(
        n1273), .Z(n722) );
  MAOI22D0BWP12T30P140 U1764 ( .A1(n1793), .A2(n1272), .B1(n1271), .B2(
        hack_time[26]), .ZN(n708) );
  CKMUX2D0BWP12T30P140 U1765 ( .I0(ck_counter[9]), .I1(hack_counter[9]), .S(
        n1273), .Z(n721) );
  CKMUX2D0BWP12T30P140 U1766 ( .I0(ck_counter[8]), .I1(hack_counter[8]), .S(
        n1273), .Z(n720) );
  MOAI22D0BWP12T30P140 U1767 ( .A1(n1356), .A2(n1652), .B1(tm_start[17]), .B2(
        n1741), .ZN(n849) );
  OAI21D0BWP12T30P140 U1768 ( .A1(n1655), .A2(n1711), .B(n1587), .ZN(n1588) );
  AOI21D0BWP12T30P140 U1769 ( .A1(timer[9]), .A2(n1277), .B(n1588), .ZN(n1280)
         );
  INVD0BWP12T30P140 U1770 ( .I(timer[10]), .ZN(n1624) );
  OAI22D0BWP12T30P140 U1771 ( .A1(n1371), .A2(n1730), .B1(n1275), .B2(n1274), 
        .ZN(n1276) );
  AOI31D0BWP12T30P140 U1772 ( .A1(timer[11]), .A2(n1309), .A3(n1277), .B(n1276), .ZN(n1279) );
  OAI22D0BWP12T30P140 U1773 ( .A1(n1280), .A2(n1624), .B1(n1279), .B2(n1278), 
        .ZN(n824) );
  ND2D0BWP12T30P140 U1774 ( .A1(tm_sub[1]), .A2(tm_sub[0]), .ZN(n1284) );
  OAI21D0BWP12T30P140 U1775 ( .A1(n1282), .A2(n1281), .B(tm_sub[2]), .ZN(n1283) );
  OAI31D0BWP12T30P140 U1776 ( .A1(tm_sub[2]), .A2(n1560), .A3(n1284), .B(n1283), .ZN(n836) );
  MOAI22D0BWP12T30P140 U1777 ( .A1(n1356), .A2(n1691), .B1(tm_start[16]), .B2(
        n1741), .ZN(n850) );
  INVD0BWP12T30P140 U1778 ( .I(n1316), .ZN(n1314) );
  ND2D0BWP12T30P140 U1779 ( .A1(n1558), .A2(n1590), .ZN(n1315) );
  ND2D0BWP12T30P140 U1780 ( .A1(i_wb_data[13]), .A2(n1582), .ZN(n1706) );
  OAI31D0BWP12T30P140 U1781 ( .A1(timer[13]), .A2(n1285), .A3(n1315), .B(n1706), .ZN(n1286) );
  AOI21D0BWP12T30P140 U1782 ( .A1(n1004), .A2(tm_start[13]), .B(n1286), .ZN(
        n1288) );
  OAI22D0BWP12T30P140 U1783 ( .A1(n1314), .A2(n1288), .B1(n1287), .B2(n1570), 
        .ZN(n821) );
  OA21D0BWP12T30P140 U1784 ( .A1(ck_counter[32]), .A2(n1290), .B(n1289), .Z(
        N100) );
  MOAI22D0BWP12T30P140 U1785 ( .A1(n1356), .A2(n1363), .B1(tm_start[12]), .B2(
        n1741), .ZN(n854) );
  MAOI22D0BWP12T30P140 U1786 ( .A1(n1291), .A2(n1617), .B1(al_enabled), .B2(
        n1291), .ZN(n784) );
  MAOI22D0BWP12T30P140 U1787 ( .A1(n1354), .A2(n1292), .B1(n1292), .B2(
        i_wb_data[24]), .ZN(n810) );
  MOAI22D0BWP12T30P140 U1788 ( .A1(n1356), .A2(n1633), .B1(tm_start[21]), .B2(
        n1730), .ZN(n845) );
  AO22D0BWP12T30P140 U1789 ( .A1(tm_sub[6]), .A2(n1295), .B1(n1294), .B2(n1293), .Z(n840) );
  OAI211D0BWP12T30P140 U1790 ( .A1(n1297), .A2(ledreg[13]), .B(n1738), .C(
        n1296), .ZN(n1298) );
  OAI21D0BWP12T30P140 U1791 ( .A1(ck_carry), .A2(n1299), .B(n1298), .ZN(n794)
         );
  MOAI22D0BWP12T30P140 U1792 ( .A1(n1356), .A2(n1653), .B1(tm_start[14]), .B2(
        n1730), .ZN(n852) );
  OAI211D0BWP12T30P140 U1793 ( .A1(n1301), .A2(ledreg[11]), .B(n1738), .C(
        n1300), .ZN(n1302) );
  OAI21D0BWP12T30P140 U1794 ( .A1(ck_carry), .A2(n1303), .B(n1302), .ZN(n796)
         );
  ND2D0BWP12T30P140 U1795 ( .A1(sw_sub[1]), .A2(sw_sub[0]), .ZN(n1308) );
  OAI21D0BWP12T30P140 U1796 ( .A1(n1305), .A2(n1304), .B(sw_sub[2]), .ZN(n1306) );
  OAI31D0BWP12T30P140 U1797 ( .A1(sw_sub[2]), .A2(n1308), .A3(n1307), .B(n1306), .ZN(n896) );
  MOAI22D0BWP12T30P140 U1798 ( .A1(n1356), .A2(n1373), .B1(tm_start[6]), .B2(
        n1730), .ZN(n860) );
  OAI21D0BWP12T30P140 U1799 ( .A1(n1309), .A2(n1711), .B(n1587), .ZN(n1312) );
  AOI22D0BWP12T30P140 U1800 ( .A1(i_wb_data[11]), .A2(n1582), .B1(n1713), .B2(
        tm_start[11]), .ZN(n1310) );
  OAI21D0BWP12T30P140 U1801 ( .A1(n1581), .A2(n1711), .B(n1310), .ZN(n1311) );
  AO22D0BWP12T30P140 U1802 ( .A1(timer[11]), .A2(n1312), .B1(n1587), .B2(n1311), .Z(n823) );
  INVD0BWP12T30P140 U1803 ( .I(stopwatch[29]), .ZN(n1369) );
  OAI22D0BWP12T30P140 U1804 ( .A1(n1369), .A2(n1357), .B1(n1358), .B2(n1313), 
        .ZN(n869) );
  AOI22D0BWP12T30P140 U1805 ( .A1(n1715), .A2(i_wb_data[12]), .B1(n1713), .B2(
        tm_start[12]), .ZN(n1317) );
  AOI32D0BWP12T30P140 U1806 ( .A1(n1317), .A2(n1316), .A3(n1315), .B1(n1314), 
        .B2(n1590), .ZN(n822) );
  OAI32D0BWP12T30P140 U1807 ( .A1(ck_sub[5]), .A2(n1546), .A3(n1320), .B1(
        n1319), .B2(n1318), .ZN(n926) );
  OA22D0BWP12T30P140 U1808 ( .A1(n1362), .A2(ck_counter[34]), .B1(
        hack_counter[34]), .B2(i_hack), .Z(n746) );
  ND2D0BWP12T30P140 U1809 ( .A1(n1322), .A2(n1321), .ZN(n1324) );
  AOI32D0BWP12T30P140 U1810 ( .A1(n1326), .A2(ck_sub[4]), .A3(n1325), .B1(
        n1324), .B2(n1323), .ZN(n925) );
  NR2D0BWP12T30P140 U1811 ( .A1(n1775), .A2(n1327), .ZN(N618) );
  NR2D0BWP12T30P140 U1812 ( .A1(n1400), .A2(n1741), .ZN(n1353) );
  AOI211D0BWP12T30P140 U1813 ( .A1(n1329), .A2(n1328), .B(n1679), .C(n1711), 
        .ZN(n1330) );
  AO211D0BWP12T30P140 U1814 ( .A1(n1004), .A2(tm_start[7]), .B(n1353), .C(
        n1330), .Z(n827) );
  ND2D0BWP12T30P140 U1815 ( .A1(tm_sub[3]), .A2(n1331), .ZN(n1335) );
  OAI21D0BWP12T30P140 U1816 ( .A1(n1333), .A2(n1332), .B(tm_sub[4]), .ZN(n1334) );
  OAI31D0BWP12T30P140 U1817 ( .A1(tm_sub[4]), .A2(n1560), .A3(n1335), .B(n1334), .ZN(n838) );
  NR2D0BWP12T30P140 U1818 ( .A1(n1337), .A2(n1336), .ZN(n1338) );
  OAI32D0BWP12T30P140 U1819 ( .A1(ck_sub[7]), .A2(n1546), .A3(n1339), .B1(
        n1338), .B2(N743), .ZN(n928) );
  OAI21D0BWP12T30P140 U1820 ( .A1(n1341), .A2(n1344), .B(n1340), .ZN(n1342) );
  AOI22D0BWP12T30P140 U1821 ( .A1(n1713), .A2(tm_start[2]), .B1(n1343), .B2(
        n1342), .ZN(n1347) );
  ND2D0BWP12T30P140 U1822 ( .A1(i_wb_data[2]), .A2(n1582), .ZN(n1729) );
  AOI32D0BWP12T30P140 U1823 ( .A1(n1347), .A2(n1346), .A3(n1729), .B1(n1345), 
        .B2(n1344), .ZN(n832) );
  OAI21D0BWP12T30P140 U1824 ( .A1(n1349), .A2(ledreg[15]), .B(n1348), .ZN(
        n1350) );
  OAI22D0BWP12T30P140 U1825 ( .A1(ck_carry), .A2(n1352), .B1(n1351), .B2(n1350), .ZN(n792) );
  AO21D0BWP12T30P140 U1826 ( .A1(tm_start[7]), .A2(n1741), .B(n1353), .Z(n859)
         );
  NR2D0BWP12T30P140 U1827 ( .A1(n1355), .A2(n1354), .ZN(N373) );
  AO21D0BWP12T30P140 U1828 ( .A1(timer[25]), .A2(n1356), .B(N373), .Z(n809) );
  INVD0BWP12T30P140 U1829 ( .I(stopwatch[28]), .ZN(n1447) );
  OAI22D0BWP12T30P140 U1830 ( .A1(stopwatch[24]), .A2(n1358), .B1(n1357), .B2(
        n1447), .ZN(n870) );
  AOI22D0BWP12T30P140 U1831 ( .A1(n1361), .A2(n1400), .B1(n1677), .B2(n1359), 
        .ZN(n937) );
  INVD0BWP12T30P140 U1832 ( .I(i_wb_data[4]), .ZN(n1374) );
  AOI22D0BWP12T30P140 U1833 ( .A1(n1361), .A2(n1374), .B1(n1360), .B2(n1359), 
        .ZN(n934) );
  OA22D0BWP12T30P140 U1834 ( .A1(n1362), .A2(ck_counter[32]), .B1(
        hack_counter[32]), .B2(i_hack), .Z(n744) );
  CKBD0BWP12T30P140 U1835 ( .I(n1690), .Z(n1695) );
  MAOI22D0BWP12T30P140 U1836 ( .A1(n1695), .A2(n1495), .B1(ckspeed[13]), .B2(
        n1690), .ZN(n765) );
  MAOI22D0BWP12T30P140 U1837 ( .A1(n1695), .A2(n1363), .B1(ckspeed[12]), .B2(
        n1690), .ZN(n764) );
  AOI22D0BWP12T30P140 U1838 ( .A1(n1743), .A2(hack_counter[37]), .B1(n1746), 
        .B2(ckspeed[29]), .ZN(n1368) );
  NR3D0BWP12T30P140 U1839 ( .A1(n1366), .A2(n1365), .A3(n1364), .ZN(n1749) );
  AOI22D0BWP12T30P140 U1840 ( .A1(n1749), .A2(hack_counter[5]), .B1(n1686), 
        .B2(hack_time[29]), .ZN(n1367) );
  OAI211D0BWP12T30P140 U1841 ( .A1(n1700), .A2(n1369), .B(n1368), .C(n1367), 
        .ZN(n1000) );
  MAOI22D0BWP12T30P140 U1842 ( .A1(n1695), .A2(n1370), .B1(ckspeed[11]), .B2(
        n1690), .ZN(n763) );
  MAOI22D0BWP12T30P140 U1843 ( .A1(n1695), .A2(n1371), .B1(ckspeed[10]), .B2(
        n1690), .ZN(n762) );
  MAOI22D0BWP12T30P140 U1844 ( .A1(n1695), .A2(n1433), .B1(ckspeed[9]), .B2(
        n1693), .ZN(n761) );
  MAOI22D0BWP12T30P140 U1845 ( .A1(n1695), .A2(n1372), .B1(ckspeed[8]), .B2(
        n1695), .ZN(n760) );
  MAOI22D0BWP12T30P140 U1846 ( .A1(n1695), .A2(n1400), .B1(ckspeed[7]), .B2(
        n1690), .ZN(n759) );
  MAOI22D0BWP12T30P140 U1847 ( .A1(n1693), .A2(n1373), .B1(ckspeed[6]), .B2(
        n1690), .ZN(n758) );
  MAOI22D0BWP12T30P140 U1848 ( .A1(n1693), .A2(n1462), .B1(ckspeed[5]), .B2(
        n1690), .ZN(n757) );
  MAOI22D0BWP12T30P140 U1849 ( .A1(n1693), .A2(n1374), .B1(ckspeed[4]), .B2(
        n1690), .ZN(n756) );
  AN2D0BWP12T30P140 U1850 ( .A1(w_sseg_1), .A2(n1791), .Z(N744) );
  MAOI22D0BWP12T30P140 U1851 ( .A1(n1693), .A2(n1406), .B1(ckspeed[3]), .B2(
        n1690), .ZN(n755) );
  MAOI22D0BWP12T30P140 U1852 ( .A1(n1693), .A2(n1375), .B1(ckspeed[2]), .B2(
        n1690), .ZN(n754) );
  AN2D0BWP12T30P140 U1853 ( .A1(w_sseg_2), .A2(n1791), .Z(N745) );
  MAOI22D0BWP12T30P140 U1854 ( .A1(n1693), .A2(n1376), .B1(ckspeed[1]), .B2(
        n1690), .ZN(n753) );
  INVD0BWP12T30P140 U1855 ( .I(n1442), .ZN(n1465) );
  ND2D0BWP12T30P140 U1856 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .ZN(n1377)
         );
  ND2D0BWP12T30P140 U1857 ( .A1(n1464), .A2(n1377), .ZN(n1443) );
  AOI32D0BWP12T30P140 U1858 ( .A1(n1465), .A2(stopwatch[18]), .A3(n1443), .B1(
        n1379), .B2(n1378), .ZN(n880) );
  AN2D0BWP12T30P140 U1859 ( .A1(w_sseg_3), .A2(n1791), .Z(N746) );
  CKMUX2D0BWP12T30P140 U1860 ( .I0(i_wb_data[31]), .I1(ckspeed[31]), .S(n1380), 
        .Z(n783) );
  CKMUX2D0BWP12T30P140 U1861 ( .I0(i_wb_data[30]), .I1(ckspeed[30]), .S(n1380), 
        .Z(n782) );
  AN2D0BWP12T30P140 U1862 ( .A1(w_sseg_4), .A2(n1791), .Z(N747) );
  CKMUX2D0BWP12T30P140 U1863 ( .I0(i_wb_data[29]), .I1(ckspeed[29]), .S(n1380), 
        .Z(n781) );
  CKMUX2D0BWP12T30P140 U1864 ( .I0(i_wb_data[28]), .I1(ckspeed[28]), .S(n1380), 
        .Z(n780) );
  AN2D0BWP12T30P140 U1865 ( .A1(w_sseg_5), .A2(n1791), .Z(N748) );
  CKMUX2D0BWP12T30P140 U1866 ( .I0(i_wb_data[27]), .I1(ckspeed[27]), .S(n1380), 
        .Z(n779) );
  CKMUX2D0BWP12T30P140 U1867 ( .I0(i_wb_data[26]), .I1(ckspeed[26]), .S(n1380), 
        .Z(n778) );
  AN2D0BWP12T30P140 U1868 ( .A1(w_sseg_6), .A2(n1791), .Z(N749) );
  INVD0BWP12T30P140 U1869 ( .I(n1600), .ZN(n1605) );
  ND2D0BWP12T30P140 U1870 ( .A1(n1382), .A2(n1381), .ZN(n1383) );
  AOI211D0BWP12T30P140 U1871 ( .A1(stopwatch[20]), .A2(stopwatch[22]), .B(
        n1384), .C(n1383), .ZN(n1599) );
  INVD0BWP12T30P140 U1872 ( .I(stopwatch[20]), .ZN(n1606) );
  ND2D0BWP12T30P140 U1873 ( .A1(n1599), .A2(n1606), .ZN(n1604) );
  ND2D0BWP12T30P140 U1874 ( .A1(stopwatch[20]), .A2(n1599), .ZN(n1603) );
  INVD0BWP12T30P140 U1875 ( .I(stopwatch[21]), .ZN(n1602) );
  AOI32D0BWP12T30P140 U1876 ( .A1(n1605), .A2(stopwatch[21]), .A3(n1604), .B1(
        n1603), .B2(n1602), .ZN(n877) );
  NR2D0BWP12T30P140 U1877 ( .A1(stopwatch[9]), .A2(stopwatch[8]), .ZN(n1386)
         );
  INVD0BWP12T30P140 U1878 ( .I(stopwatch[9]), .ZN(n1776) );
  OAI22D0BWP12T30P140 U1879 ( .A1(n1386), .A2(n1385), .B1(n1449), .B2(n1776), 
        .ZN(n889) );
  AN2D0BWP12T30P140 U1880 ( .A1(w_sseg_7), .A2(n1791), .Z(N750) );
  AOI31D0BWP12T30P140 U1881 ( .A1(n1436), .A2(n1435), .A3(n1387), .B(n1523), 
        .ZN(n1402) );
  OAI21D0BWP12T30P140 U1882 ( .A1(n1492), .A2(n1391), .B(n1416), .ZN(n1390) );
  INVD0BWP12T30P140 U1883 ( .I(n1491), .ZN(n1479) );
  AOI211D0BWP12T30P140 U1884 ( .A1(clock[14]), .A2(clock[12]), .B(n1522), .C(
        n1401), .ZN(n1389) );
  IND3D1BWP12T30P140 U1885 ( .A1(n1390), .B1(n1402), .B2(n1389), .ZN(n1476) );
  NR2D0BWP12T30P140 U1886 ( .A1(n1478), .A2(n1476), .ZN(n1489) );
  AOI22D0BWP12T30P140 U1887 ( .A1(i_wb_data[14]), .A2(n1522), .B1(clock[13]), 
        .B2(n1489), .ZN(n1392) );
  AOI32D0BWP12T30P140 U1888 ( .A1(n1479), .A2(n1392), .A3(n1476), .B1(n1391), 
        .B2(n1392), .ZN(n907) );
  NR2D0BWP12T30P140 U1889 ( .A1(n1394), .A2(n1393), .ZN(n1535) );
  AOI21D0BWP12T30P140 U1890 ( .A1(n1405), .A2(ck_pph), .B(n1535), .ZN(n1424)
         );
  INVD0BWP12T30P140 U1891 ( .I(n1424), .ZN(n1432) );
  ND2D0BWP12T30P140 U1892 ( .A1(clock[17]), .A2(clock[16]), .ZN(n1799) );
  AN4D0BWP12T30P140 U1893 ( .A1(n1799), .A2(n1793), .A3(n1794), .A4(n1795), 
        .Z(n1396) );
  INVD0BWP12T30P140 U1894 ( .I(n1535), .ZN(n1536) );
  OAI31D0BWP12T30P140 U1895 ( .A1(clock[17]), .A2(clock[16]), .A3(clock[18]), 
        .B(clock[19]), .ZN(n1395) );
  OAI211D0BWP12T30P140 U1896 ( .A1(n1396), .A2(n1798), .B(n1536), .C(n1395), 
        .ZN(n1423) );
  ND2D0BWP12T30P140 U1897 ( .A1(n1432), .A2(n1423), .ZN(n1537) );
  INVD0BWP12T30P140 U1898 ( .I(n1537), .ZN(n1539) );
  AOI32D0BWP12T30P140 U1899 ( .A1(n1798), .A2(n1536), .A3(n1795), .B1(
        i_wb_data[20]), .B2(n1535), .ZN(n1397) );
  AOI22D0BWP12T30P140 U1900 ( .A1(n1539), .A2(n1397), .B1(n1795), .B2(n1537), 
        .ZN(n901) );
  AOI21D0BWP12T30P140 U1901 ( .A1(clock[5]), .A2(clock[6]), .B(clock[7]), .ZN(
        n1454) );
  OAI31D0BWP12T30P140 U1902 ( .A1(clock[2]), .A2(clock[1]), .A3(clock[0]), .B(
        clock[3]), .ZN(n1453) );
  ND2D0BWP12T30P140 U1903 ( .A1(n1454), .A2(n1453), .ZN(n1398) );
  INVD0BWP12T30P140 U1904 ( .I(n1469), .ZN(n1481) );
  AOI21D0BWP12T30P140 U1905 ( .A1(n1398), .A2(n1405), .B(n1481), .ZN(n1459) );
  INVD0BWP12T30P140 U1906 ( .I(n1459), .ZN(n1485) );
  OAI22D0BWP12T30P140 U1907 ( .A1(n1400), .A2(n1469), .B1(n1399), .B2(n1485), 
        .ZN(n914) );
  ND2D0BWP12T30P140 U1908 ( .A1(n1401), .A2(n1494), .ZN(n1526) );
  NR3D0BWP12T30P140 U1909 ( .A1(n1522), .A2(n1402), .A3(n1401), .ZN(n1486) );
  AOI22D0BWP12T30P140 U1910 ( .A1(i_wb_data[8]), .A2(n1522), .B1(n1486), .B2(
        n1435), .ZN(n1403) );
  OAI21D0BWP12T30P140 U1911 ( .A1(n1526), .A2(n1435), .B(n1403), .ZN(n913) );
  ND3D0BWP12T30P140 U1912 ( .A1(n1469), .A2(n1453), .A3(n1405), .ZN(n1472) );
  NR2D0BWP12T30P140 U1913 ( .A1(n1404), .A2(n1472), .ZN(n1450) );
  ND2D0BWP12T30P140 U1914 ( .A1(clock[1]), .A2(n1450), .ZN(n1475) );
  NR2D0BWP12T30P140 U1915 ( .A1(n1405), .A2(n1481), .ZN(n1467) );
  INR2D1BWP12T30P140 U1916 ( .A1(n1472), .B1(n1467), .ZN(n1407) );
  OAI222D0BWP12T30P140 U1917 ( .A1(n1475), .A2(n1409), .B1(n1408), .B2(n1407), 
        .C1(n1406), .C2(n1469), .ZN(n918) );
  MAOI22D0BWP12T30P140 U1918 ( .A1(n1410), .A2(n1617), .B1(clock[24]), .B2(
        n1410), .ZN(n788) );
  INVD0BWP12T30P140 U1919 ( .I(stopwatch[12]), .ZN(n1415) );
  ND2D0BWP12T30P140 U1920 ( .A1(n1412), .A2(n1411), .ZN(n1413) );
  AOI211D0BWP12T30P140 U1921 ( .A1(stopwatch[12]), .A2(stopwatch[14]), .B(
        n1414), .C(n1413), .ZN(n1420) );
  ND2D0BWP12T30P140 U1922 ( .A1(n1420), .A2(n1415), .ZN(n1543) );
  OAI21D0BWP12T30P140 U1923 ( .A1(n1415), .A2(n1544), .B(n1543), .ZN(n886) );
  OAI22D0BWP12T30P140 U1924 ( .A1(n1692), .A2(n1494), .B1(n1416), .B2(n1479), 
        .ZN(n906) );
  INVD0BWP12T30P140 U1925 ( .I(stopwatch[24]), .ZN(n1419) );
  AOI22D0BWP12T30P140 U1926 ( .A1(n1419), .A2(n1418), .B1(n1417), .B2(
        stopwatch[24]), .ZN(n874) );
  ND2D0BWP12T30P140 U1927 ( .A1(stopwatch[12]), .A2(n1420), .ZN(n1542) );
  INVD0BWP12T30P140 U1928 ( .I(stopwatch[13]), .ZN(n1779) );
  INVD0BWP12T30P140 U1929 ( .I(n1544), .ZN(n1421) );
  OAI21D0BWP12T30P140 U1930 ( .A1(n1421), .A2(n1420), .B(stopwatch[14]), .ZN(
        n1422) );
  OAI21D0BWP12T30P140 U1931 ( .A1(n1542), .A2(n1779), .B(n1422), .ZN(n884) );
  NR2D0BWP12T30P140 U1932 ( .A1(n1424), .A2(n1423), .ZN(n1429) );
  ND2D0BWP12T30P140 U1933 ( .A1(n1429), .A2(n1799), .ZN(n1426) );
  AN2D0BWP12T30P140 U1934 ( .A1(n1426), .A2(n1432), .Z(n1428) );
  OAI222D0BWP12T30P140 U1935 ( .A1(n1426), .A2(n1431), .B1(n1425), .B2(n1428), 
        .C1(n1652), .C2(n1536), .ZN(n904) );
  INR2D1BWP12T30P140 U1936 ( .A1(n1429), .B1(n1799), .ZN(n1463) );
  AOI22D0BWP12T30P140 U1937 ( .A1(i_wb_data[18]), .A2(n1535), .B1(n1463), .B2(
        n1793), .ZN(n1427) );
  OAI21D0BWP12T30P140 U1938 ( .A1(n1428), .A2(n1793), .B(n1427), .ZN(n903) );
  AOI22D0BWP12T30P140 U1939 ( .A1(i_wb_data[16]), .A2(n1535), .B1(n1429), .B2(
        n1431), .ZN(n1430) );
  OAI21D0BWP12T30P140 U1940 ( .A1(n1432), .A2(n1431), .B(n1430), .ZN(n905) );
  ND2D0BWP12T30P140 U1941 ( .A1(clock[9]), .A2(clock[8]), .ZN(n1520) );
  ND2D0BWP12T30P140 U1942 ( .A1(n1486), .A2(n1520), .ZN(n1434) );
  ND2D0BWP12T30P140 U1943 ( .A1(n1526), .A2(n1434), .ZN(n1487) );
  INVD0BWP12T30P140 U1944 ( .I(n1487), .ZN(n1437) );
  OAI222D0BWP12T30P140 U1945 ( .A1(n1437), .A2(n1436), .B1(n1435), .B2(n1434), 
        .C1(n1433), .C2(n1494), .ZN(n912) );
  INVD0BWP12T30P140 U1946 ( .I(n1568), .ZN(n1766) );
  AO222D0BWP12T30P140 U1947 ( .A1(n1764), .A2(ck_last_clock[15]), .B1(n1766), 
        .B2(timer[15]), .C1(n1788), .C2(stopwatch[19]), .Z(n968) );
  AOI22D0BWP12T30P140 U1948 ( .A1(stopwatch[15]), .A2(n1788), .B1(
        ck_last_clock[11]), .B2(n1764), .ZN(n1439) );
  ND2D0BWP12T30P140 U1949 ( .A1(ck_last_clock[19]), .A2(n1765), .ZN(n1438) );
  OAI211D0BWP12T30P140 U1950 ( .A1(n1568), .A2(n1612), .B(n1439), .C(n1438), 
        .ZN(n964) );
  ND2D0BWP12T30P140 U1951 ( .A1(dmask[2]), .A2(n1791), .ZN(n1790) );
  ND3D0BWP12T30P140 U1952 ( .A1(N743), .A2(dmask[2]), .A3(n1765), .ZN(n1440)
         );
  OAI21D0BWP12T30P140 U1953 ( .A1(n1441), .A2(n1790), .B(n1440), .ZN(N759) );
  NR2D0BWP12T30P140 U1954 ( .A1(stopwatch[16]), .A2(stopwatch[17]), .ZN(n1444)
         );
  MOAI22D0BWP12T30P140 U1955 ( .A1(n1444), .A2(n1443), .B1(n1442), .B2(
        stopwatch[17]), .ZN(n881) );
  AOI22D0BWP12T30P140 U1956 ( .A1(n1743), .A2(hack_counter[36]), .B1(n1742), 
        .B2(ckspeed[28]), .ZN(n1446) );
  AOI22D0BWP12T30P140 U1957 ( .A1(n1749), .A2(hack_counter[4]), .B1(n1696), 
        .B2(hack_time[28]), .ZN(n1445) );
  OAI211D0BWP12T30P140 U1958 ( .A1(n1700), .A2(n1447), .B(n1446), .C(n1445), 
        .ZN(n1001) );
  MAOI22D0BWP12T30P140 U1959 ( .A1(stopwatch[8]), .A2(n1449), .B1(n1448), .B2(
        stopwatch[8]), .ZN(n890) );
  NR2D0BWP12T30P140 U1960 ( .A1(clock[0]), .A2(n1472), .ZN(n1466) );
  NR2D0BWP12T30P140 U1961 ( .A1(n1467), .A2(n1466), .ZN(n1471) );
  AOI22D0BWP12T30P140 U1962 ( .A1(i_wb_data[1]), .A2(n1481), .B1(n1450), .B2(
        n1452), .ZN(n1451) );
  OAI21D0BWP12T30P140 U1963 ( .A1(n1471), .A2(n1452), .B(n1451), .ZN(n920) );
  AOI211D0BWP12T30P140 U1964 ( .A1(clock[6]), .A2(clock[4]), .B(n1453), .C(
        n1769), .ZN(n1455) );
  ND3D0BWP12T30P140 U1965 ( .A1(n1469), .A2(n1455), .A3(n1454), .ZN(n1483) );
  NR2D0BWP12T30P140 U1966 ( .A1(clock[4]), .A2(n1483), .ZN(n1458) );
  AOI21D0BWP12T30P140 U1967 ( .A1(n1481), .A2(i_wb_data[4]), .B(n1458), .ZN(
        n1456) );
  OAI21D0BWP12T30P140 U1968 ( .A1(n1485), .A2(n1457), .B(n1456), .ZN(n917) );
  NR2D0BWP12T30P140 U1969 ( .A1(n1457), .A2(n1483), .ZN(n1480) );
  OAI32D0BWP12T30P140 U1970 ( .A1(n1460), .A2(n1459), .A3(n1458), .B1(n1480), 
        .B2(clock[5]), .ZN(n1461) );
  OAI21D0BWP12T30P140 U1971 ( .A1(n1462), .A2(n1469), .B(n1461), .ZN(n916) );
  AO222D0BWP12T30P140 U1972 ( .A1(n1537), .A2(clock[19]), .B1(clock[18]), .B2(
        n1463), .C1(i_wb_data[19]), .C2(n1535), .Z(n902) );
  MAOI22D0BWP12T30P140 U1973 ( .A1(stopwatch[16]), .A2(n1465), .B1(n1464), 
        .B2(stopwatch[16]), .ZN(n882) );
  AOI21D0BWP12T30P140 U1974 ( .A1(n1467), .A2(clock[0]), .B(n1466), .ZN(n1468)
         );
  OAI21D0BWP12T30P140 U1975 ( .A1(n1470), .A2(n1469), .B(n1468), .ZN(n921) );
  OAI21D0BWP12T30P140 U1976 ( .A1(clock[1]), .A2(n1472), .B(n1471), .ZN(n1473)
         );
  AOI22D0BWP12T30P140 U1977 ( .A1(i_wb_data[2]), .A2(n1481), .B1(clock[2]), 
        .B2(n1473), .ZN(n1474) );
  OAI21D0BWP12T30P140 U1978 ( .A1(clock[2]), .A2(n1475), .B(n1474), .ZN(n919)
         );
  NR2D0BWP12T30P140 U1979 ( .A1(clock[12]), .A2(n1476), .ZN(n1490) );
  AOI21D0BWP12T30P140 U1980 ( .A1(n1522), .A2(i_wb_data[12]), .B(n1490), .ZN(
        n1477) );
  OAI21D0BWP12T30P140 U1981 ( .A1(n1479), .A2(n1478), .B(n1477), .ZN(n909) );
  AOI22D0BWP12T30P140 U1982 ( .A1(i_wb_data[6]), .A2(n1481), .B1(clock[5]), 
        .B2(n1480), .ZN(n1484) );
  AOI32D0BWP12T30P140 U1983 ( .A1(n1485), .A2(n1484), .A3(n1483), .B1(n1482), 
        .B2(n1484), .ZN(n915) );
  INVD0BWP12T30P140 U1984 ( .I(n1486), .ZN(n1524) );
  AOI22D0BWP12T30P140 U1985 ( .A1(i_wb_data[10]), .A2(n1522), .B1(clock[10]), 
        .B2(n1487), .ZN(n1488) );
  OAI31D0BWP12T30P140 U1986 ( .A1(clock[10]), .A2(n1524), .A3(n1520), .B(n1488), .ZN(n911) );
  OAI32D0BWP12T30P140 U1987 ( .A1(n1492), .A2(n1491), .A3(n1490), .B1(n1489), 
        .B2(clock[13]), .ZN(n1493) );
  OAI21D0BWP12T30P140 U1988 ( .A1(n1495), .A2(n1494), .B(n1493), .ZN(n908) );
  OA21D0BWP12T30P140 U1989 ( .A1(ck_counter[34]), .A2(n1496), .B(n1499), .Z(
        N102) );
  OA21D0BWP12T30P140 U1990 ( .A1(ck_counter[36]), .A2(n1498), .B(n1502), .Z(
        N104) );
  OA21D0BWP12T30P140 U1991 ( .A1(ck_counter[38]), .A2(n1501), .B(n1497), .Z(
        N106) );
  AOI21D0BWP12T30P140 U1992 ( .A1(n1500), .A2(n1499), .B(n1498), .ZN(N103) );
  AOI21D0BWP12T30P140 U1993 ( .A1(n1503), .A2(n1502), .B(n1501), .ZN(N105) );
  FA1D0BWP12T30P140 U1994 ( .A(ck_counter[31]), .B(ckspeed[31]), .CI(n1504), 
        .CO(n1290), .S(N99) );
  FA1D0BWP12T30P140 U1995 ( .A(ck_counter[30]), .B(ckspeed[30]), .CI(n1505), 
        .CO(n1504), .S(N98) );
  FA1D0BWP12T30P140 U1996 ( .A(ck_counter[29]), .B(ckspeed[29]), .CI(n1506), 
        .CO(n1505), .S(N97) );
  FA1D0BWP12T30P140 U1997 ( .A(ck_counter[28]), .B(ckspeed[28]), .CI(n1507), 
        .CO(n1506), .S(N96) );
  FA1D0BWP12T30P140 U1998 ( .A(ck_counter[27]), .B(ckspeed[27]), .CI(n1508), 
        .CO(n1507), .S(N95) );
  FA1D0BWP12T30P140 U1999 ( .A(ck_counter[26]), .B(ckspeed[26]), .CI(n1509), 
        .CO(n1508), .S(N94) );
  FA1D0BWP12T30P140 U2000 ( .A(ck_counter[25]), .B(ckspeed[25]), .CI(n1510), 
        .CO(n1509), .S(N93) );
  FA1D0BWP12T30P140 U2001 ( .A(ck_counter[24]), .B(ckspeed[24]), .CI(n1511), 
        .CO(n1510), .S(N92) );
  FA1D0BWP12T30P140 U2002 ( .A(ck_counter[23]), .B(ckspeed[23]), .CI(n1512), 
        .CO(n1511), .S(N91) );
  FA1D0BWP12T30P140 U2003 ( .A(ck_counter[22]), .B(ckspeed[22]), .CI(n1513), 
        .CO(n1512), .S(N90) );
  FA1D0BWP12T30P140 U2004 ( .A(ck_counter[21]), .B(ckspeed[21]), .CI(n1514), 
        .CO(n1513), .S(N89) );
  FA1D0BWP12T30P140 U2005 ( .A(ck_counter[20]), .B(ckspeed[20]), .CI(n1515), 
        .CO(n1514), .S(N88) );
  FA1D0BWP12T30P140 U2006 ( .A(ck_counter[19]), .B(ckspeed[19]), .CI(n1516), 
        .CO(n1515), .S(N87) );
  FA1D0BWP12T30P140 U2007 ( .A(ck_counter[18]), .B(ckspeed[18]), .CI(n1517), 
        .CO(n1516), .S(N86) );
  FA1D0BWP12T30P140 U2008 ( .A(ck_counter[17]), .B(ckspeed[17]), .CI(n1518), 
        .CO(n1517), .S(N85) );
  FA1D0BWP12T30P140 U2009 ( .A(ck_counter[16]), .B(ckspeed[16]), .CI(n1519), 
        .CO(n1518), .S(N84) );
  NR2D0BWP12T30P140 U2010 ( .A1(n1524), .A2(n1520), .ZN(n1521) );
  AOI22D0BWP12T30P140 U2011 ( .A1(i_wb_data[11]), .A2(n1522), .B1(clock[10]), 
        .B2(n1521), .ZN(n1525) );
  AOI32D0BWP12T30P140 U2012 ( .A1(n1526), .A2(n1525), .A3(n1524), .B1(n1523), 
        .B2(n1525), .ZN(n910) );
  AOI22D0BWP12T30P140 U2013 ( .A1(n1645), .A2(timer[17]), .B1(n1644), .B2(
        alarm_time[17]), .ZN(n1530) );
  AOI22D0BWP12T30P140 U2014 ( .A1(n1696), .A2(hack_time[17]), .B1(n1743), .B2(
        hack_counter[25]), .ZN(n1529) );
  AOI22D0BWP12T30P140 U2015 ( .A1(n1676), .A2(ck_last_clock[17]), .B1(n1742), 
        .B2(ckspeed[17]), .ZN(n1528) );
  ND2D0BWP12T30P140 U2016 ( .A1(n1747), .A2(stopwatch[17]), .ZN(n1527) );
  ND4D0BWP12T30P140 U2017 ( .A1(n1530), .A2(n1529), .A3(n1528), .A4(n1527), 
        .ZN(n980) );
  AOI22D0BWP12T30P140 U2018 ( .A1(n1645), .A2(timer[15]), .B1(n1644), .B2(
        alarm_time[15]), .ZN(n1534) );
  AOI22D0BWP12T30P140 U2019 ( .A1(n1696), .A2(hack_time[15]), .B1(n1748), .B2(
        hack_counter[23]), .ZN(n1533) );
  AOI22D0BWP12T30P140 U2020 ( .A1(n1646), .A2(ck_last_clock[15]), .B1(n1742), 
        .B2(ckspeed[15]), .ZN(n1532) );
  ND2D0BWP12T30P140 U2021 ( .A1(n1747), .A2(stopwatch[15]), .ZN(n1531) );
  ND4D0BWP12T30P140 U2022 ( .A1(n1534), .A2(n1533), .A3(n1532), .A4(n1531), 
        .ZN(n982) );
  AOI32D0BWP12T30P140 U2023 ( .A1(clock[20]), .A2(n1536), .A3(n1798), .B1(
        i_wb_data[21]), .B2(n1535), .ZN(n1538) );
  AOI22D0BWP12T30P140 U2024 ( .A1(n1539), .A2(n1538), .B1(n1798), .B2(n1537), 
        .ZN(n900) );
  AOI22D0BWP12T30P140 U2025 ( .A1(stopwatch[17]), .A2(n1788), .B1(
        ck_last_clock[13]), .B2(n1764), .ZN(n1541) );
  ND2D0BWP12T30P140 U2026 ( .A1(ck_last_clock[21]), .A2(n1765), .ZN(n1540) );
  OAI211D0BWP12T30P140 U2027 ( .A1(n1568), .A2(n1570), .B(n1541), .C(n1540), 
        .ZN(n966) );
  AOI32D0BWP12T30P140 U2028 ( .A1(n1544), .A2(stopwatch[13]), .A3(n1543), .B1(
        n1542), .B2(n1779), .ZN(n885) );
  AOI22D0BWP12T30P140 U2029 ( .A1(ck_sub[0]), .A2(n1547), .B1(n1546), .B2(
        n1545), .ZN(n929) );
  AOI22D0BWP12T30P140 U2030 ( .A1(n1686), .A2(hack_time[18]), .B1(n1748), .B2(
        hack_counter[26]), .ZN(n1553) );
  AOI22D0BWP12T30P140 U2031 ( .A1(n1646), .A2(ck_last_clock[18]), .B1(n1746), 
        .B2(ckspeed[18]), .ZN(n1552) );
  OAI22D0BWP12T30P140 U2032 ( .A1(n1680), .A2(n1549), .B1(n1678), .B2(n1548), 
        .ZN(n1550) );
  AOI21D0BWP12T30P140 U2033 ( .A1(n1682), .A2(stopwatch[18]), .B(n1550), .ZN(
        n1551) );
  ND3D0BWP12T30P140 U2034 ( .A1(n1553), .A2(n1552), .A3(n1551), .ZN(n979) );
  AOI22D0BWP12T30P140 U2035 ( .A1(n1645), .A2(timer[14]), .B1(n1644), .B2(
        alarm_time[14]), .ZN(n1557) );
  AOI22D0BWP12T30P140 U2036 ( .A1(n1686), .A2(hack_time[14]), .B1(n1743), .B2(
        hack_counter[22]), .ZN(n1556) );
  AOI22D0BWP12T30P140 U2037 ( .A1(n1646), .A2(ck_last_clock[14]), .B1(n1746), 
        .B2(ckspeed[14]), .ZN(n1555) );
  ND2D0BWP12T30P140 U2038 ( .A1(n1747), .A2(stopwatch[14]), .ZN(n1554) );
  ND4D0BWP12T30P140 U2039 ( .A1(n1557), .A2(n1556), .A3(n1555), .A4(n1554), 
        .ZN(n983) );
  ND2D0BWP12T30P140 U2040 ( .A1(n1558), .A2(n1771), .ZN(n1561) );
  INVD0BWP12T30P140 U2041 ( .I(tm_sub[0]), .ZN(n1559) );
  AOI22D0BWP12T30P140 U2042 ( .A1(tm_sub[0]), .A2(n1561), .B1(n1560), .B2(
        n1559), .ZN(n842) );
  AO222D0BWP12T30P140 U2043 ( .A1(n1764), .A2(ck_last_clock[14]), .B1(n1766), 
        .B2(timer[14]), .C1(n1788), .C2(stopwatch[18]), .Z(n967) );
  AOI22D0BWP12T30P140 U2044 ( .A1(n1645), .A2(timer[19]), .B1(n1644), .B2(
        alarm_time[19]), .ZN(n1565) );
  AOI22D0BWP12T30P140 U2045 ( .A1(n1686), .A2(hack_time[19]), .B1(n1743), .B2(
        hack_counter[27]), .ZN(n1564) );
  AOI22D0BWP12T30P140 U2046 ( .A1(n1676), .A2(ck_last_clock[19]), .B1(n1742), 
        .B2(ckspeed[19]), .ZN(n1563) );
  ND2D0BWP12T30P140 U2047 ( .A1(n1747), .A2(stopwatch[19]), .ZN(n1562) );
  ND4D0BWP12T30P140 U2048 ( .A1(n1565), .A2(n1564), .A3(n1563), .A4(n1562), 
        .ZN(n978) );
  AOI22D0BWP12T30P140 U2049 ( .A1(stopwatch[14]), .A2(n1788), .B1(
        ck_last_clock[10]), .B2(n1764), .ZN(n1567) );
  ND2D0BWP12T30P140 U2050 ( .A1(ck_last_clock[18]), .A2(n1765), .ZN(n1566) );
  OAI211D0BWP12T30P140 U2051 ( .A1(n1568), .A2(n1624), .B(n1567), .C(n1566), 
        .ZN(n963) );
  AOI22D0BWP12T30P140 U2052 ( .A1(n1696), .A2(hack_time[13]), .B1(n1748), .B2(
        hack_counter[21]), .ZN(n1574) );
  AOI22D0BWP12T30P140 U2053 ( .A1(n1646), .A2(ck_last_clock[13]), .B1(n1742), 
        .B2(ckspeed[13]), .ZN(n1573) );
  OAI22D0BWP12T30P140 U2054 ( .A1(n1680), .A2(n1570), .B1(n1678), .B2(n1569), 
        .ZN(n1571) );
  AOI21D0BWP12T30P140 U2055 ( .A1(n1682), .A2(stopwatch[13]), .B(n1571), .ZN(
        n1572) );
  ND3D0BWP12T30P140 U2056 ( .A1(n1574), .A2(n1573), .A3(n1572), .ZN(n984) );
  AOI22D0BWP12T30P140 U2057 ( .A1(n1686), .A2(hack_time[20]), .B1(n1748), .B2(
        hack_counter[28]), .ZN(n1580) );
  AOI22D0BWP12T30P140 U2058 ( .A1(n1646), .A2(ck_last_clock[20]), .B1(n1746), 
        .B2(ckspeed[20]), .ZN(n1579) );
  OAI22D0BWP12T30P140 U2059 ( .A1(n1680), .A2(n1576), .B1(n1678), .B2(n1575), 
        .ZN(n1577) );
  AOI21D0BWP12T30P140 U2060 ( .A1(n1682), .A2(stopwatch[20]), .B(n1577), .ZN(
        n1578) );
  ND3D0BWP12T30P140 U2061 ( .A1(n1580), .A2(n1579), .A3(n1578), .ZN(n977) );
  INVD0BWP12T30P140 U2062 ( .I(n1581), .ZN(n1585) );
  AOI22D0BWP12T30P140 U2063 ( .A1(i_wb_data[9]), .A2(n1582), .B1(n1713), .B2(
        tm_start[9]), .ZN(n1583) );
  OAI31D0BWP12T30P140 U2064 ( .A1(timer[9]), .A2(n1585), .A3(n1584), .B(n1583), 
        .ZN(n1586) );
  AO22D0BWP12T30P140 U2065 ( .A1(timer[9]), .A2(n1588), .B1(n1587), .B2(n1586), 
        .Z(n825) );
  AOI22D0BWP12T30P140 U2066 ( .A1(n1696), .A2(hack_time[12]), .B1(n1748), .B2(
        hack_counter[20]), .ZN(n1594) );
  AOI22D0BWP12T30P140 U2067 ( .A1(n1676), .A2(ck_last_clock[12]), .B1(n1746), 
        .B2(ckspeed[12]), .ZN(n1593) );
  OAI22D0BWP12T30P140 U2068 ( .A1(n1680), .A2(n1590), .B1(n1678), .B2(n1589), 
        .ZN(n1591) );
  AOI21D0BWP12T30P140 U2069 ( .A1(n1682), .A2(stopwatch[12]), .B(n1591), .ZN(
        n1592) );
  ND3D0BWP12T30P140 U2070 ( .A1(n1594), .A2(n1593), .A3(n1592), .ZN(n985) );
  AOI22D0BWP12T30P140 U2071 ( .A1(n1645), .A2(timer[21]), .B1(n1644), .B2(
        alarm_time[21]), .ZN(n1598) );
  AOI22D0BWP12T30P140 U2072 ( .A1(n1696), .A2(hack_time[21]), .B1(n1743), .B2(
        hack_counter[29]), .ZN(n1597) );
  AOI22D0BWP12T30P140 U2073 ( .A1(n1676), .A2(ck_last_clock[21]), .B1(n1742), 
        .B2(ckspeed[21]), .ZN(n1596) );
  ND2D0BWP12T30P140 U2074 ( .A1(n1747), .A2(stopwatch[21]), .ZN(n1595) );
  ND4D0BWP12T30P140 U2075 ( .A1(n1598), .A2(n1597), .A3(n1596), .A4(n1595), 
        .ZN(n976) );
  OAI21D0BWP12T30P140 U2076 ( .A1(n1600), .A2(n1599), .B(stopwatch[22]), .ZN(
        n1601) );
  OAI21D0BWP12T30P140 U2077 ( .A1(n1603), .A2(n1602), .B(n1601), .ZN(n876) );
  OAI21D0BWP12T30P140 U2078 ( .A1(n1606), .A2(n1605), .B(n1604), .ZN(n878) );
  AOI22D0BWP12T30P140 U2079 ( .A1(n1645), .A2(timer[22]), .B1(n1748), .B2(
        hack_counter[30]), .ZN(n1609) );
  AOI22D0BWP12T30P140 U2080 ( .A1(n1696), .A2(hack_time[22]), .B1(n1746), .B2(
        ckspeed[22]), .ZN(n1608) );
  AOI22D0BWP12T30P140 U2081 ( .A1(n1747), .A2(stopwatch[22]), .B1(n1646), .B2(
        clock[22]), .ZN(n1607) );
  ND3D0BWP12T30P140 U2082 ( .A1(n1609), .A2(n1608), .A3(n1607), .ZN(n974) );
  MAOI22D0BWP12T30P140 U2083 ( .A1(n1693), .A2(n1610), .B1(ckspeed[25]), .B2(
        n1690), .ZN(n777) );
  AOI22D0BWP12T30P140 U2084 ( .A1(n1686), .A2(hack_time[11]), .B1(n1748), .B2(
        hack_counter[19]), .ZN(n1616) );
  AOI22D0BWP12T30P140 U2085 ( .A1(n1676), .A2(ck_last_clock[11]), .B1(n1746), 
        .B2(ckspeed[11]), .ZN(n1615) );
  OAI22D0BWP12T30P140 U2086 ( .A1(n1680), .A2(n1612), .B1(n1678), .B2(n1611), 
        .ZN(n1613) );
  AOI21D0BWP12T30P140 U2087 ( .A1(n1682), .A2(stopwatch[11]), .B(n1613), .ZN(
        n1614) );
  ND3D0BWP12T30P140 U2088 ( .A1(n1616), .A2(n1615), .A3(n1614), .ZN(n986) );
  MAOI22D0BWP12T30P140 U2089 ( .A1(n1693), .A2(n1617), .B1(ckspeed[24]), .B2(
        n1695), .ZN(n776) );
  AOI22D0BWP12T30P140 U2090 ( .A1(n1645), .A2(timer[23]), .B1(n1743), .B2(
        hack_counter[31]), .ZN(n1620) );
  AOI22D0BWP12T30P140 U2091 ( .A1(n1696), .A2(hack_time[23]), .B1(n1742), .B2(
        ckspeed[23]), .ZN(n1619) );
  AOI22D0BWP12T30P140 U2092 ( .A1(n1747), .A2(stopwatch[23]), .B1(n1646), .B2(
        clock[23]), .ZN(n1618) );
  ND3D0BWP12T30P140 U2093 ( .A1(n1620), .A2(n1619), .A3(n1618), .ZN(n973) );
  MAOI22D0BWP12T30P140 U2094 ( .A1(n1693), .A2(n1621), .B1(ckspeed[23]), .B2(
        n1690), .ZN(n775) );
  MAOI22D0BWP12T30P140 U2095 ( .A1(n1693), .A2(n1622), .B1(ckspeed[22]), .B2(
        n1695), .ZN(n774) );
  AOI22D0BWP12T30P140 U2096 ( .A1(n1696), .A2(hack_time[10]), .B1(n1743), .B2(
        hack_counter[18]), .ZN(n1628) );
  AOI22D0BWP12T30P140 U2097 ( .A1(n1676), .A2(ck_last_clock[10]), .B1(n1742), 
        .B2(ckspeed[10]), .ZN(n1627) );
  OAI22D0BWP12T30P140 U2098 ( .A1(n1680), .A2(n1624), .B1(n1678), .B2(n1623), 
        .ZN(n1625) );
  AOI21D0BWP12T30P140 U2099 ( .A1(n1682), .A2(stopwatch[10]), .B(n1625), .ZN(
        n1626) );
  ND3D0BWP12T30P140 U2100 ( .A1(n1628), .A2(n1627), .A3(n1626), .ZN(n987) );
  AOI22D0BWP12T30P140 U2101 ( .A1(timer[24]), .A2(n1645), .B1(n1644), .B2(
        al_enabled), .ZN(n1632) );
  AOI22D0BWP12T30P140 U2102 ( .A1(n1749), .A2(hack_counter[0]), .B1(n1686), 
        .B2(hack_time[24]), .ZN(n1631) );
  AOI22D0BWP12T30P140 U2103 ( .A1(n1743), .A2(hack_counter[32]), .B1(n1746), 
        .B2(ckspeed[24]), .ZN(n1630) );
  AOI22D0BWP12T30P140 U2104 ( .A1(n1682), .A2(stopwatch[24]), .B1(n1646), .B2(
        clock[24]), .ZN(n1629) );
  ND4D0BWP12T30P140 U2105 ( .A1(n1632), .A2(n1631), .A3(n1630), .A4(n1629), 
        .ZN(n972) );
  MAOI22D0BWP12T30P140 U2106 ( .A1(n1693), .A2(n1633), .B1(ckspeed[21]), .B2(
        n1693), .ZN(n773) );
  AOI22D0BWP12T30P140 U2107 ( .A1(n1686), .A2(hack_time[16]), .B1(n1743), .B2(
        hack_counter[24]), .ZN(n1639) );
  AOI22D0BWP12T30P140 U2108 ( .A1(n1646), .A2(ck_last_clock[16]), .B1(n1746), 
        .B2(ckspeed[16]), .ZN(n1638) );
  OAI22D0BWP12T30P140 U2109 ( .A1(n1680), .A2(n1635), .B1(n1678), .B2(n1634), 
        .ZN(n1636) );
  AOI21D0BWP12T30P140 U2110 ( .A1(n1682), .A2(stopwatch[16]), .B(n1636), .ZN(
        n1637) );
  ND3D0BWP12T30P140 U2111 ( .A1(n1639), .A2(n1638), .A3(n1637), .ZN(n981) );
  AOI22D0BWP12T30P140 U2112 ( .A1(n1645), .A2(timer[9]), .B1(n1644), .B2(
        alarm_time[9]), .ZN(n1643) );
  AOI22D0BWP12T30P140 U2113 ( .A1(n1686), .A2(hack_time[9]), .B1(n1748), .B2(
        hack_counter[17]), .ZN(n1642) );
  AOI22D0BWP12T30P140 U2114 ( .A1(n1676), .A2(ck_last_clock[9]), .B1(n1746), 
        .B2(ckspeed[9]), .ZN(n1641) );
  ND2D0BWP12T30P140 U2115 ( .A1(n1747), .A2(stopwatch[9]), .ZN(n1640) );
  ND4D0BWP12T30P140 U2116 ( .A1(n1643), .A2(n1642), .A3(n1641), .A4(n1640), 
        .ZN(n988) );
  AOI22D0BWP12T30P140 U2117 ( .A1(n1645), .A2(timer[25]), .B1(n1644), .B2(
        al_tripped), .ZN(n1650) );
  AOI22D0BWP12T30P140 U2118 ( .A1(n1749), .A2(hack_counter[1]), .B1(n1696), 
        .B2(hack_time[25]), .ZN(n1649) );
  AOI22D0BWP12T30P140 U2119 ( .A1(n1743), .A2(hack_counter[33]), .B1(n1742), 
        .B2(ckspeed[25]), .ZN(n1648) );
  AOI22D0BWP12T30P140 U2120 ( .A1(n1747), .A2(stopwatch[25]), .B1(n1646), .B2(
        clock[25]), .ZN(n1647) );
  ND4D0BWP12T30P140 U2121 ( .A1(n1650), .A2(n1649), .A3(n1648), .A4(n1647), 
        .ZN(n970) );
  MAOI22D0BWP12T30P140 U2122 ( .A1(n1693), .A2(n1651), .B1(ckspeed[18]), .B2(
        n1693), .ZN(n770) );
  MAOI22D0BWP12T30P140 U2123 ( .A1(n1695), .A2(n1652), .B1(ckspeed[17]), .B2(
        n1695), .ZN(n769) );
  MAOI22D0BWP12T30P140 U2124 ( .A1(n1695), .A2(n1653), .B1(ckspeed[14]), .B2(
        n1695), .ZN(n766) );
  AOI22D0BWP12T30P140 U2125 ( .A1(n1696), .A2(hack_time[8]), .B1(n1748), .B2(
        hack_counter[16]), .ZN(n1659) );
  AOI22D0BWP12T30P140 U2126 ( .A1(n1676), .A2(ck_last_clock[8]), .B1(n1742), 
        .B2(ckspeed[8]), .ZN(n1658) );
  OAI22D0BWP12T30P140 U2127 ( .A1(n1680), .A2(n1655), .B1(n1678), .B2(n1654), 
        .ZN(n1656) );
  AOI21D0BWP12T30P140 U2128 ( .A1(n1682), .A2(stopwatch[8]), .B(n1656), .ZN(
        n1657) );
  ND3D0BWP12T30P140 U2129 ( .A1(n1659), .A2(n1658), .A3(n1657), .ZN(n989) );
  FA1D0BWP12T30P140 U2130 ( .A(ck_counter[15]), .B(ckspeed[15]), .CI(n1660), 
        .CO(n1519), .S(N83) );
  FA1D0BWP12T30P140 U2131 ( .A(ck_counter[14]), .B(ckspeed[14]), .CI(n1661), 
        .CO(n1660), .S(N82) );
  FA1D0BWP12T30P140 U2132 ( .A(ck_counter[13]), .B(ckspeed[13]), .CI(n1662), 
        .CO(n1661), .S(N81) );
  FA1D0BWP12T30P140 U2133 ( .A(ck_counter[12]), .B(ckspeed[12]), .CI(n1663), 
        .CO(n1662), .S(N80) );
  FA1D0BWP12T30P140 U2134 ( .A(ck_counter[11]), .B(ckspeed[11]), .CI(n1664), 
        .CO(n1663), .S(N79) );
  MAOI22D0BWP12T30P140 U2135 ( .A1(n1695), .A2(n1665), .B1(ckspeed[20]), .B2(
        n1690), .ZN(n772) );
  FA1D0BWP12T30P140 U2136 ( .A(ck_counter[10]), .B(ckspeed[10]), .CI(n1666), 
        .CO(n1664), .S(N78) );
  FA1D0BWP12T30P140 U2137 ( .A(ck_counter[9]), .B(ckspeed[9]), .CI(n1667), 
        .CO(n1666), .S(N77) );
  FA1D0BWP12T30P140 U2138 ( .A(ck_counter[8]), .B(ckspeed[8]), .CI(n1668), 
        .CO(n1667), .S(N76) );
  FA1D0BWP12T30P140 U2139 ( .A(ck_counter[7]), .B(ckspeed[7]), .CI(n1669), 
        .CO(n1668), .S(N75) );
  FA1D0BWP12T30P140 U2140 ( .A(ck_counter[6]), .B(ckspeed[6]), .CI(n1670), 
        .CO(n1669), .S(N74) );
  FA1D0BWP12T30P140 U2141 ( .A(ck_counter[5]), .B(ckspeed[5]), .CI(n1671), 
        .CO(n1670), .S(N73) );
  FA1D0BWP12T30P140 U2142 ( .A(ck_counter[4]), .B(ckspeed[4]), .CI(n1672), 
        .CO(n1671), .S(N72) );
  FA1D0BWP12T30P140 U2143 ( .A(ck_counter[3]), .B(ckspeed[3]), .CI(n1673), 
        .CO(n1672), .S(N71) );
  FA1D0BWP12T30P140 U2144 ( .A(ck_counter[2]), .B(ckspeed[2]), .CI(n1674), 
        .CO(n1673), .S(N70) );
  FA1D0BWP12T30P140 U2145 ( .A(ck_counter[1]), .B(ckspeed[1]), .CI(n1675), 
        .CO(n1674), .S(N69) );
  AOI22D0BWP12T30P140 U2146 ( .A1(n1686), .A2(hack_time[7]), .B1(n1743), .B2(
        hack_counter[15]), .ZN(n1685) );
  AOI22D0BWP12T30P140 U2147 ( .A1(n1676), .A2(ck_last_clock[7]), .B1(n1746), 
        .B2(ckspeed[7]), .ZN(n1684) );
  OAI22D0BWP12T30P140 U2148 ( .A1(n1680), .A2(n1679), .B1(n1678), .B2(n1677), 
        .ZN(n1681) );
  AOI21D0BWP12T30P140 U2149 ( .A1(n1682), .A2(stopwatch[7]), .B(n1681), .ZN(
        n1683) );
  ND3D0BWP12T30P140 U2150 ( .A1(n1685), .A2(n1684), .A3(n1683), .ZN(n990) );
  AOI22D0BWP12T30P140 U2151 ( .A1(n1743), .A2(hack_counter[35]), .B1(n1742), 
        .B2(ckspeed[27]), .ZN(n1688) );
  AOI22D0BWP12T30P140 U2152 ( .A1(n1749), .A2(hack_counter[3]), .B1(n1686), 
        .B2(hack_time[27]), .ZN(n1687) );
  OAI211D0BWP12T30P140 U2153 ( .A1(n1700), .A2(n1689), .B(n1688), .C(n1687), 
        .ZN(n1002) );
  MAOI22D0BWP12T30P140 U2154 ( .A1(n1695), .A2(n1691), .B1(ckspeed[16]), .B2(
        n1690), .ZN(n768) );
  MAOI22D0BWP12T30P140 U2155 ( .A1(n1695), .A2(n1692), .B1(ckspeed[15]), .B2(
        n1693), .ZN(n767) );
  MAOI22D0BWP12T30P140 U2156 ( .A1(n1695), .A2(n1694), .B1(ckspeed[19]), .B2(
        n1693), .ZN(n771) );
  AOI22D0BWP12T30P140 U2157 ( .A1(hack_counter[34]), .A2(n1748), .B1(n1746), 
        .B2(ckspeed[26]), .ZN(n1698) );
  AOI22D0BWP12T30P140 U2158 ( .A1(hack_counter[2]), .A2(n1749), .B1(
        hack_time[26]), .B2(n1696), .ZN(n1697) );
  OAI211D0BWP12T30P140 U2159 ( .A1(n1700), .A2(n1699), .B(n1698), .C(n1697), 
        .ZN(n1003) );
  CKBD0BWP12T30P140 U2160 ( .I(i_clk), .Z(n1817) );
  CKBD0BWP12T30P140 U2161 ( .I(i_clk), .Z(n1702) );
  CKBD0BWP12T30P140 U2162 ( .I(n1702), .Z(n1814) );
  CKBD0BWP12T30P140 U2163 ( .I(i_clk), .Z(n1818) );
  CKBD0BWP12T30P140 U2164 ( .I(i_clk), .Z(n1827) );
  CKBD0BWP12T30P140 U2165 ( .I(i_clk), .Z(n1830) );
  CKBD0BWP12T30P140 U2166 ( .I(i_clk), .Z(n1701) );
  CKBD0BWP12T30P140 U2167 ( .I(n1701), .Z(n1811) );
  CKBD0BWP12T30P140 U2168 ( .I(n1701), .Z(n1812) );
  CKBD0BWP12T30P140 U2169 ( .I(i_clk), .Z(n1829) );
  CKBD0BWP12T30P140 U2170 ( .I(i_clk), .Z(n1831) );
  CKBD0BWP12T30P140 U2171 ( .I(n1831), .Z(n1810) );
  CKBD0BWP12T30P140 U2172 ( .I(i_clk), .Z(n1816) );
  CKBD0BWP12T30P140 U2173 ( .I(i_clk), .Z(n1815) );
  CKBD0BWP12T30P140 U2174 ( .I(n1702), .Z(n1813) );
  CKBD0BWP12T30P140 U2175 ( .I(i_clk), .Z(n1828) );
  CKBD0BWP12T30P140 U2176 ( .I(i_clk), .Z(n1819) );
  CKBD0BWP12T30P140 U2177 ( .I(i_clk), .Z(n1823) );
  CKBD0BWP12T30P140 U2178 ( .I(i_clk), .Z(n1820) );
  CKBD0BWP12T30P140 U2179 ( .I(i_clk), .Z(n1821) );
  CKBD0BWP12T30P140 U2180 ( .I(i_clk), .Z(n1824) );
  CKBD0BWP12T30P140 U2181 ( .I(i_clk), .Z(n1822) );
  CKBD0BWP12T30P140 U2182 ( .I(i_clk), .Z(n1826) );
  CKBD0BWP12T30P140 U2183 ( .I(i_clk), .Z(n1825) );
  OR2D0BWP12T30P140 U2184 ( .A1(tm_int), .A2(al_int), .Z(o_interrupt) );
  IOA21D0BWP12T30P140 U2185 ( .A1(tm_start[22]), .A2(n1730), .B(n1703), .ZN(
        n844) );
  IOA21D0BWP12T30P140 U2186 ( .A1(tm_start[19]), .A2(n1730), .B(n1704), .ZN(
        n847) );
  IOA21D0BWP12T30P140 U2187 ( .A1(tm_start[18]), .A2(n1730), .B(n1705), .ZN(
        n848) );
  IOA21D0BWP12T30P140 U2188 ( .A1(tm_start[13]), .A2(n1741), .B(n1706), .ZN(
        n853) );
  IOA21D0BWP12T30P140 U2189 ( .A1(tm_start[5]), .A2(n1730), .B(n1707), .ZN(
        n861) );
  IOA21D0BWP12T30P140 U2190 ( .A1(tm_start[20]), .A2(n1741), .B(n1708), .ZN(
        n846) );
  IOA21D0BWP12T30P140 U2191 ( .A1(tm_start[4]), .A2(n1741), .B(n1709), .ZN(
        n862) );
  OAI21D0BWP12T30P140 U2192 ( .A1(n1712), .A2(n1711), .B(n1710), .ZN(n1714) );
  AOI22D0BWP12T30P140 U2193 ( .A1(timer[23]), .A2(n1714), .B1(n1713), .B2(
        tm_start[23]), .ZN(n1716) );
  ND2D0BWP12T30P140 U2194 ( .A1(n1715), .A2(i_wb_data[23]), .ZN(n1740) );
  ND2D0BWP12T30P140 U2195 ( .A1(n1716), .A2(n1740), .ZN(n811) );
  AOI22D0BWP12T30P140 U2196 ( .A1(stopwatch[12]), .A2(n1788), .B1(
        ck_last_clock[8]), .B2(n1764), .ZN(n1718) );
  AOI22D0BWP12T30P140 U2197 ( .A1(timer[8]), .A2(n1766), .B1(ck_last_clock[16]), .B2(n1765), .ZN(n1717) );
  ND2D0BWP12T30P140 U2198 ( .A1(n1718), .A2(n1717), .ZN(n961) );
  AOI22D0BWP12T30P140 U2199 ( .A1(stopwatch[8]), .A2(n1788), .B1(
        ck_last_clock[4]), .B2(n1764), .ZN(n1720) );
  AOI22D0BWP12T30P140 U2200 ( .A1(timer[4]), .A2(n1766), .B1(ck_last_clock[12]), .B2(n1765), .ZN(n1719) );
  ND2D0BWP12T30P140 U2201 ( .A1(n1720), .A2(n1719), .ZN(n957) );
  AOI22D0BWP12T30P140 U2202 ( .A1(ck_last_clock[0]), .A2(n1764), .B1(n1788), 
        .B2(stopwatch[4]), .ZN(n1722) );
  AOI22D0BWP12T30P140 U2203 ( .A1(timer[0]), .A2(n1766), .B1(ck_last_clock[8]), 
        .B2(n1765), .ZN(n1721) );
  ND2D0BWP12T30P140 U2204 ( .A1(n1722), .A2(n1721), .ZN(n953) );
  OAI211D0BWP12T30P140 U2205 ( .A1(ledreg[5]), .A2(n1724), .B(n1738), .C(n1723), .ZN(n1725) );
  IOA21D0BWP12T30P140 U2206 ( .A1(n1771), .A2(ledreg[5]), .B(n1725), .ZN(n802)
         );
  OAI211D0BWP12T30P140 U2207 ( .A1(n1727), .A2(ledreg[9]), .B(n1738), .C(n1726), .ZN(n1728) );
  IOA21D0BWP12T30P140 U2208 ( .A1(n1771), .A2(ledreg[9]), .B(n1728), .ZN(n798)
         );
  IOA21D0BWP12T30P140 U2209 ( .A1(tm_start[2]), .A2(n1730), .B(n1729), .ZN(
        n864) );
  OAI211D0BWP12T30P140 U2210 ( .A1(n1732), .A2(ledreg[7]), .B(n1738), .C(n1731), .ZN(n1733) );
  IOA21D0BWP12T30P140 U2211 ( .A1(n1771), .A2(ledreg[7]), .B(n1733), .ZN(n800)
         );
  OAI211D0BWP12T30P140 U2212 ( .A1(n1735), .A2(ledreg[3]), .B(n1738), .C(n1734), .ZN(n1736) );
  IOA21D0BWP12T30P140 U2213 ( .A1(n1771), .A2(ledreg[3]), .B(n1736), .ZN(n804)
         );
  OAI211D0BWP12T30P140 U2214 ( .A1(ledreg[0]), .A2(ledreg[1]), .B(n1738), .C(
        n1737), .ZN(n1739) );
  IOA21D0BWP12T30P140 U2215 ( .A1(n1771), .A2(ledreg[1]), .B(n1739), .ZN(n806)
         );
  IOA21D0BWP12T30P140 U2216 ( .A1(tm_start[23]), .A2(n1741), .B(n1740), .ZN(
        n843) );
  AOI22D0BWP12T30P140 U2217 ( .A1(n1747), .A2(stopwatch[30]), .B1(n1742), .B2(
        ckspeed[30]), .ZN(n1745) );
  AOI22D0BWP12T30P140 U2218 ( .A1(n1749), .A2(hack_counter[6]), .B1(n1743), 
        .B2(hack_counter[38]), .ZN(n1744) );
  ND2D0BWP12T30P140 U2219 ( .A1(n1745), .A2(n1744), .ZN(n999) );
  AOI22D0BWP12T30P140 U2220 ( .A1(n1747), .A2(stopwatch[31]), .B1(n1746), .B2(
        ckspeed[31]), .ZN(n1751) );
  AOI22D0BWP12T30P140 U2221 ( .A1(n1749), .A2(hack_counter[7]), .B1(n1748), 
        .B2(hack_counter[39]), .ZN(n1750) );
  ND2D0BWP12T30P140 U2222 ( .A1(n1751), .A2(n1750), .ZN(n998) );
  AOI22D0BWP12T30P140 U2223 ( .A1(stopwatch[11]), .A2(n1788), .B1(
        ck_last_clock[7]), .B2(n1764), .ZN(n1753) );
  AOI22D0BWP12T30P140 U2224 ( .A1(timer[7]), .A2(n1766), .B1(ck_last_clock[15]), .B2(n1765), .ZN(n1752) );
  ND2D0BWP12T30P140 U2225 ( .A1(n1753), .A2(n1752), .ZN(n960) );
  AOI22D0BWP12T30P140 U2226 ( .A1(ck_last_clock[3]), .A2(n1764), .B1(n1788), 
        .B2(stopwatch[7]), .ZN(n1755) );
  AOI22D0BWP12T30P140 U2227 ( .A1(timer[3]), .A2(n1766), .B1(ck_last_clock[11]), .B2(n1765), .ZN(n1754) );
  ND2D0BWP12T30P140 U2228 ( .A1(n1755), .A2(n1754), .ZN(n956) );
  AOI22D0BWP12T30P140 U2229 ( .A1(stopwatch[9]), .A2(n1788), .B1(
        ck_last_clock[5]), .B2(n1764), .ZN(n1757) );
  AOI22D0BWP12T30P140 U2230 ( .A1(timer[5]), .A2(n1766), .B1(ck_last_clock[13]), .B2(n1765), .ZN(n1756) );
  ND2D0BWP12T30P140 U2231 ( .A1(n1757), .A2(n1756), .ZN(n958) );
  AOI22D0BWP12T30P140 U2232 ( .A1(ck_last_clock[1]), .A2(n1764), .B1(n1788), 
        .B2(stopwatch[5]), .ZN(n1759) );
  AOI22D0BWP12T30P140 U2233 ( .A1(timer[1]), .A2(n1766), .B1(ck_last_clock[9]), 
        .B2(n1765), .ZN(n1758) );
  ND2D0BWP12T30P140 U2234 ( .A1(n1759), .A2(n1758), .ZN(n954) );
  AOI22D0BWP12T30P140 U2235 ( .A1(stopwatch[13]), .A2(n1788), .B1(
        ck_last_clock[9]), .B2(n1764), .ZN(n1761) );
  AOI22D0BWP12T30P140 U2236 ( .A1(timer[9]), .A2(n1766), .B1(ck_last_clock[17]), .B2(n1765), .ZN(n1760) );
  ND2D0BWP12T30P140 U2237 ( .A1(n1761), .A2(n1760), .ZN(n962) );
  AOI22D0BWP12T30P140 U2238 ( .A1(stopwatch[10]), .A2(n1788), .B1(
        ck_last_clock[6]), .B2(n1764), .ZN(n1763) );
  AOI22D0BWP12T30P140 U2239 ( .A1(timer[6]), .A2(n1766), .B1(ck_last_clock[14]), .B2(n1765), .ZN(n1762) );
  ND2D0BWP12T30P140 U2240 ( .A1(n1763), .A2(n1762), .ZN(n959) );
  AOI22D0BWP12T30P140 U2241 ( .A1(ck_last_clock[2]), .A2(n1764), .B1(n1788), 
        .B2(stopwatch[6]), .ZN(n1768) );
  AOI22D0BWP12T30P140 U2242 ( .A1(timer[2]), .A2(n1766), .B1(ck_last_clock[10]), .B2(n1765), .ZN(n1767) );
  ND2D0BWP12T30P140 U2243 ( .A1(n1768), .A2(n1767), .ZN(n955) );
  INR2D1BWP12T30P140 U2244 ( .A1(ck_ppd), .B1(n1769), .ZN(o_ppd) );
  INR3D1BWP12T30P140 U2245 ( .A1(tm_sub[7]), .B1(n1771), .B2(n1770), .ZN(N291)
         );
  INR4D0BWP12T30P140 U2246 ( .A1(stopwatch[16]), .B1(stopwatch[18]), .B2(
        stopwatch[17]), .B3(stopwatch[23]), .ZN(n1772) );
  ND4D0BWP12T30P140 U2247 ( .A1(sw_ppm), .A2(stopwatch[22]), .A3(stopwatch[20]), .A4(n1772), .ZN(n1773) );
  NR4D0BWP12T30P140 U2248 ( .A1(n1775), .A2(stopwatch[21]), .A3(n1774), .A4(
        n1773), .ZN(N661) );
  ND4D0BWP12T30P140 U2249 ( .A1(stopwatch[8]), .A2(stopwatch[11]), .A3(n1777), 
        .A4(n1776), .ZN(n1782) );
  ND4D0BWP12T30P140 U2250 ( .A1(stopwatch[12]), .A2(n1780), .A3(n1779), .A4(
        n1778), .ZN(n1781) );
  INR4D0BWP12T30P140 U2251 ( .A1(stopwatch[14]), .B1(n1783), .B2(n1782), .B3(
        n1781), .ZN(N660) );
  ND4D0BWP12T30P140 U2252 ( .A1(ck_carry), .A2(stopwatch[0]), .A3(n1784), .A4(
        N618), .ZN(n1785) );
  NR3D0BWP12T30P140 U2253 ( .A1(n1787), .A2(n1786), .A3(n1785), .ZN(N659) );
  ND2D0BWP12T30P140 U2254 ( .A1(dmask[1]), .A2(n1791), .ZN(n1789) );
  INR2D1BWP12T30P140 U2255 ( .A1(n1788), .B1(n1789), .ZN(N751) );
  INR2D1BWP12T30P140 U2256 ( .A1(w_sseg[9]), .B1(n1789), .ZN(N752) );
  INR2D1BWP12T30P140 U2257 ( .A1(w_sseg[10]), .B1(n1789), .ZN(N753) );
  INR2D1BWP12T30P140 U2258 ( .A1(w_sseg[11]), .B1(n1789), .ZN(N754) );
  INR2D1BWP12T30P140 U2259 ( .A1(w_sseg[12]), .B1(n1789), .ZN(N755) );
  INR2D1BWP12T30P140 U2260 ( .A1(w_sseg[13]), .B1(n1789), .ZN(N756) );
  INR2D1BWP12T30P140 U2261 ( .A1(w_sseg[14]), .B1(n1789), .ZN(N757) );
  INR2D1BWP12T30P140 U2262 ( .A1(w_sseg[15]), .B1(n1789), .ZN(N758) );
  INR2D1BWP12T30P140 U2263 ( .A1(w_sseg[17]), .B1(n1790), .ZN(N760) );
  INR2D1BWP12T30P140 U2264 ( .A1(w_sseg[18]), .B1(n1790), .ZN(N761) );
  INR2D1BWP12T30P140 U2265 ( .A1(w_sseg[19]), .B1(n1790), .ZN(N762) );
  INR2D1BWP12T30P140 U2266 ( .A1(w_sseg[20]), .B1(n1790), .ZN(N763) );
  INR2D1BWP12T30P140 U2267 ( .A1(w_sseg[21]), .B1(n1790), .ZN(N764) );
  INR2D1BWP12T30P140 U2268 ( .A1(w_sseg[22]), .B1(n1790), .ZN(N765) );
  INR2D1BWP12T30P140 U2269 ( .A1(w_sseg[23]), .B1(n1790), .ZN(N766) );
  ND2D0BWP12T30P140 U2270 ( .A1(dmask[3]), .A2(n1791), .ZN(n1792) );
  INR2D1BWP12T30P140 U2271 ( .A1(w_sseg_25), .B1(n1792), .ZN(N767) );
  INR2D1BWP12T30P140 U2272 ( .A1(w_sseg_26), .B1(n1792), .ZN(N768) );
  INR2D1BWP12T30P140 U2273 ( .A1(w_sseg_27), .B1(n1792), .ZN(N769) );
  INR2D1BWP12T30P140 U2274 ( .A1(w_sseg_28), .B1(n1792), .ZN(N770) );
  INR2D1BWP12T30P140 U2275 ( .A1(w_sseg_29), .B1(n1792), .ZN(N771) );
  INR2D1BWP12T30P140 U2276 ( .A1(w_sseg_30), .B1(n1792), .ZN(N772) );
  INR2D1BWP12T30P140 U2277 ( .A1(w_sseg_31), .B1(n1792), .ZN(N773) );
  ND3D0BWP12T30P140 U2278 ( .A1(n1795), .A2(n1794), .A3(n1793), .ZN(n1797) );
  NR4D0BWP12T30P140 U2279 ( .A1(n1799), .A2(n1798), .A3(n1797), .A4(n1796), 
        .ZN(n975) );
  IND2D1BWP12T30P140 U2280 ( .A1(n1801), .B1(n1800), .ZN(n971) );
endmodule

