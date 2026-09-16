/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:02:43 2026
/////////////////////////////////////////////////////////////


module minimac_ctlif_0 ( sys_clk, sys_rst, csr_a, csr_we, csr_di, csr_do, 
        irq_rx, irq_tx, rx_rst, tx_rst, rx_valid, rx_adr, rx_resetcount, 
        rx_incrcount, rx_endframe, fifo_full, tx_valid, tx_adr, tx_bytecount, 
        tx_next, phy_mii_clk, phy_mii_data );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  output [29:0] rx_adr;
  output [29:0] tx_adr;
  output [1:0] tx_bytecount;
  input sys_clk, sys_rst, csr_we, rx_resetcount, rx_incrcount, rx_endframe,
         fifo_full, tx_next;
  output irq_rx, irq_tx, rx_rst, tx_rst, rx_valid, tx_valid, phy_mii_clk;
  inout phy_mii_data;
  wire   mii_data_oe, mii_data_do, mii_data_di, mii_data_di1, N506, N507, N508,
         N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519,
         N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530,
         N531, N532, N533, N534, N535, N536, N537, tx_valid_r, N686, N687,
         N688, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
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
         n564, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
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
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937;
  wire   [1:0] slot0_state;
  wire   [1:0] slot1_state;
  wire   [1:0] slot2_state;
  wire   [1:0] slot3_state;
  wire   [29:0] slot0_adr;
  wire   [29:0] slot1_adr;
  wire   [29:0] slot2_adr;
  wire   [29:0] slot3_adr;
  wire   [10:0] tx_remaining;
  wire   [10:0] slot0_count;
  wire   [10:0] slot1_count;
  wire   [10:0] slot2_count;
  wire   [10:0] slot3_count;

  DFQD2BWP12T30P140 slot0_state_reg_0_ ( .D(n359), .CP(n9), .Q(slot0_state[0])
         );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N507), .CP(n10), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N506), .CP(n8), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 csr_do_reg_31_ ( .D(N537), .CP(n4), .Q(csr_do[31]) );
  DFQD2BWP12T30P140 csr_do_reg_30_ ( .D(N536), .CP(n12), .Q(csr_do[30]) );
  DFQD2BWP12T30P140 csr_do_reg_29_ ( .D(N535), .CP(n11), .Q(csr_do[29]) );
  DFQD2BWP12T30P140 csr_do_reg_28_ ( .D(N534), .CP(n7), .Q(csr_do[28]) );
  DFQD2BWP12T30P140 csr_do_reg_27_ ( .D(N533), .CP(n3), .Q(csr_do[27]) );
  DFQD2BWP12T30P140 csr_do_reg_26_ ( .D(N532), .CP(n11), .Q(csr_do[26]) );
  DFQD2BWP12T30P140 csr_do_reg_25_ ( .D(N531), .CP(n12), .Q(csr_do[25]) );
  DFQD2BWP12T30P140 csr_do_reg_24_ ( .D(N530), .CP(n6), .Q(csr_do[24]) );
  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N529), .CP(n2), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N528), .CP(n10), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N527), .CP(n5), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N525), .CP(n1), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N524), .CP(n9), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N523), .CP(n6), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(N522), .CP(n8), .Q(csr_do[16]) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N521), .CP(n4), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N520), .CP(n12), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N519), .CP(n7), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 csr_do_reg_12_ ( .D(N518), .CP(n7), .Q(csr_do[12]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N517), .CP(n3), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N516), .CP(n11), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N515), .CP(n8), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N514), .CP(n6), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N513), .CP(n2), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N512), .CP(n10), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N510), .CP(n5), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N509), .CP(n1), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N508), .CP(n9), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 irq_rx_reg ( .D(N686), .CP(n2), .Q(irq_rx) );
  DFQD2BWP12T30P140 irq_tx_reg ( .D(N688), .CP(n8), .Q(irq_tx) );
  BUFTD4BWP12T30P140 phy_mii_data_tri ( .I(mii_data_do), .OE(mii_data_oe), .Z(
        phy_mii_data) );
  DFQD2BWP12T30P140 mii_data_di_reg ( .D(mii_data_di1), .CP(n4), .Q(
        mii_data_di) );
  DFQD2BWP12T30P140 tx_valid_r_reg ( .D(N687), .CP(n12), .Q(tx_valid_r) );
  DFQD2BWP12T30P140 slot3_state_reg_0_ ( .D(n510), .CP(n3), .Q(slot3_state[0])
         );
  DFQD2BWP12T30P140 slot2_count_reg_9_ ( .D(n499), .CP(n7), .Q(slot2_count[9])
         );
  DFQD2BWP12T30P140 slot2_count_reg_10_ ( .D(n498), .CP(n3), .Q(
        slot2_count[10]) );
  DFQD2BWP12T30P140 tx_remaining_reg_10_ ( .D(n522), .CP(n11), .Q(
        tx_remaining[10]) );
  DFQD2BWP12T30P140 slot3_state_reg_1_ ( .D(n509), .CP(n4), .Q(slot3_state[1])
         );
  DFQD2BWP12T30P140 phy_mii_clk_reg ( .D(n357), .CP(n6), .Q(phy_mii_clk) );
  DFQD2BWP12T30P140 tx_adr_reg_12_ ( .D(n550), .CP(n2), .Q(tx_adr[12]) );
  DFQD2BWP12T30P140 tx_adr_reg_20_ ( .D(n542), .CP(sys_clk), .Q(tx_adr[20]) );
  DFQD2BWP12T30P140 tx_adr_reg_24_ ( .D(n538), .CP(n5), .Q(tx_adr[24]) );
  DFQD2BWP12T30P140 slot3_count_reg_9_ ( .D(n512), .CP(n1), .Q(slot3_count[9])
         );
  DFQD2BWP12T30P140 tx_adr_reg_11_ ( .D(n551), .CP(n9), .Q(tx_adr[11]) );
  DFQD2BWP12T30P140 tx_adr_reg_15_ ( .D(n547), .CP(n9), .Q(tx_adr[15]) );
  DFQD2BWP12T30P140 tx_adr_reg_19_ ( .D(n543), .CP(n8), .Q(tx_adr[19]) );
  DFQD2BWP12T30P140 tx_adr_reg_23_ ( .D(n539), .CP(n4), .Q(tx_adr[23]) );
  DFQD2BWP12T30P140 tx_adr_reg_28_ ( .D(n534), .CP(n12), .Q(tx_adr[28]) );
  DFQD2BWP12T30P140 slot3_count_reg_10_ ( .D(n511), .CP(n10), .Q(
        slot3_count[10]) );
  DFQD2BWP12T30P140 tx_adr_reg_27_ ( .D(n535), .CP(n7), .Q(tx_adr[27]) );
  DFQD2BWP12T30P140 tx_adr_reg_4_ ( .D(n558), .CP(n3), .Q(tx_adr[4]) );
  DFQD2BWP12T30P140 tx_adr_reg_8_ ( .D(n554), .CP(n11), .Q(tx_adr[8]) );
  DFQD2BWP12T30P140 tx_adr_reg_29_ ( .D(n533), .CP(n11), .Q(tx_adr[29]) );
  DFQD2BWP12T30P140 slot3_adr_reg_0_ ( .D(n350), .CP(n6), .Q(slot3_adr[0]) );
  DFQD2BWP12T30P140 slot0_count_reg_9_ ( .D(n473), .CP(n10), .Q(slot0_count[9]) );
  DFQD2BWP12T30P140 slot2_count_reg_4_ ( .D(n504), .CP(n12), .Q(slot2_count[4]) );
  DFQD2BWP12T30P140 slot2_count_reg_6_ ( .D(n502), .CP(n5), .Q(slot2_count[6])
         );
  DFQD2BWP12T30P140 slot2_count_reg_8_ ( .D(n500), .CP(n1), .Q(slot2_count[8])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_0_ ( .D(n348), .CP(n9), .Q(slot1_adr[0]) );
  DFQD2BWP12T30P140 slot1_count_reg_10_ ( .D(n485), .CP(n5), .Q(
        slot1_count[10]) );
  DFQD2BWP12T30P140 slot0_count_reg_10_ ( .D(n472), .CP(n8), .Q(
        slot0_count[10]) );
  DFQD2BWP12T30P140 slot0_adr_reg_27_ ( .D(n371), .CP(n4), .Q(slot0_adr[27])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_26_ ( .D(n375), .CP(n12), .Q(slot0_adr[26])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_25_ ( .D(n379), .CP(n6), .Q(slot0_adr[25])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_24_ ( .D(n383), .CP(n7), .Q(slot0_adr[24])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_23_ ( .D(n387), .CP(n3), .Q(slot0_adr[23])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_22_ ( .D(n391), .CP(n11), .Q(slot0_adr[22])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_21_ ( .D(n395), .CP(n7), .Q(slot0_adr[21])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_19_ ( .D(n403), .CP(n2), .Q(slot0_adr[19])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_18_ ( .D(n407), .CP(n10), .Q(slot0_adr[18])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_17_ ( .D(n411), .CP(n8), .Q(slot0_adr[17])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_16_ ( .D(n415), .CP(n5), .Q(slot0_adr[16])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_15_ ( .D(n419), .CP(n1), .Q(slot0_adr[15])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_14_ ( .D(n423), .CP(n9), .Q(slot0_adr[14])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_13_ ( .D(n427), .CP(n1), .Q(slot0_adr[13])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_12_ ( .D(n431), .CP(n8), .Q(slot0_adr[12])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_11_ ( .D(n435), .CP(n4), .Q(slot0_adr[11])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_10_ ( .D(n439), .CP(n12), .Q(slot0_adr[10])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_9_ ( .D(n443), .CP(n2), .Q(slot0_adr[9]) );
  DFQD2BWP12T30P140 slot3_adr_reg_29_ ( .D(n362), .CP(n7), .Q(slot3_adr[29])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_28_ ( .D(n366), .CP(n3), .Q(slot3_adr[28])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_8_ ( .D(n446), .CP(n11), .Q(slot3_adr[8]) );
  DFQD2BWP12T30P140 slot3_adr_reg_6_ ( .D(n454), .CP(n6), .Q(slot3_adr[6]) );
  DFQD2BWP12T30P140 slot3_adr_reg_5_ ( .D(n458), .CP(n2), .Q(slot3_adr[5]) );
  DFQD2BWP12T30P140 slot3_adr_reg_4_ ( .D(n462), .CP(n10), .Q(slot3_adr[4]) );
  DFQD2BWP12T30P140 slot3_adr_reg_3_ ( .D(n466), .CP(n4), .Q(slot3_adr[3]) );
  DFQD2BWP12T30P140 slot3_adr_reg_2_ ( .D(n470), .CP(n5), .Q(slot3_adr[2]) );
  DFQD2BWP12T30P140 slot1_adr_reg_29_ ( .D(n360), .CP(n1), .Q(slot1_adr[29])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_28_ ( .D(n364), .CP(n9), .Q(slot1_adr[28])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_27_ ( .D(n368), .CP(sys_clk), .Q(
        slot1_adr[27]) );
  DFQD2BWP12T30P140 slot1_adr_reg_26_ ( .D(n372), .CP(n8), .Q(slot1_adr[26])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_25_ ( .D(n376), .CP(n4), .Q(slot1_adr[25])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_24_ ( .D(n380), .CP(n12), .Q(slot1_adr[24])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_23_ ( .D(n384), .CP(n9), .Q(slot1_adr[23])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_22_ ( .D(n388), .CP(n7), .Q(slot1_adr[22])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_21_ ( .D(n392), .CP(n3), .Q(slot1_adr[21])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_19_ ( .D(n400), .CP(n10), .Q(slot1_adr[19])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_18_ ( .D(n404), .CP(n6), .Q(slot1_adr[18])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_17_ ( .D(n408), .CP(n2), .Q(slot1_adr[17])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_16_ ( .D(n412), .CP(n10), .Q(slot1_adr[16])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_15_ ( .D(n416), .CP(n11), .Q(slot1_adr[15])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_14_ ( .D(n420), .CP(n5), .Q(slot1_adr[14])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_13_ ( .D(n424), .CP(n1), .Q(slot1_adr[13])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_12_ ( .D(n428), .CP(n9), .Q(slot1_adr[12])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_11_ ( .D(n432), .CP(n12), .Q(slot1_adr[11])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_10_ ( .D(n436), .CP(n8), .Q(slot1_adr[10])
         );
  DFQD2BWP12T30P140 slot1_adr_reg_9_ ( .D(n440), .CP(n4), .Q(slot1_adr[9]) );
  DFQD2BWP12T30P140 slot1_adr_reg_8_ ( .D(n444), .CP(n12), .Q(slot1_adr[8]) );
  DFQD2BWP12T30P140 slot1_adr_reg_7_ ( .D(n448), .CP(n5), .Q(slot1_adr[7]) );
  DFQD2BWP12T30P140 slot1_adr_reg_6_ ( .D(n452), .CP(n7), .Q(slot1_adr[6]) );
  DFQD2BWP12T30P140 slot1_adr_reg_4_ ( .D(n460), .CP(n11), .Q(slot1_adr[4]) );
  DFQD2BWP12T30P140 slot1_adr_reg_3_ ( .D(n464), .CP(n6), .Q(slot1_adr[3]) );
  DFQD2BWP12T30P140 slot1_adr_reg_2_ ( .D(n468), .CP(n6), .Q(slot1_adr[2]) );
  DFQD2BWP12T30P140 slot0_adr_reg_29_ ( .D(n363), .CP(n2), .Q(slot0_adr[29])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_28_ ( .D(n367), .CP(n10), .Q(slot0_adr[28])
         );
  DFQD2BWP12T30P140 slot0_adr_reg_8_ ( .D(n447), .CP(n7), .Q(slot0_adr[8]) );
  DFQD2BWP12T30P140 slot0_adr_reg_7_ ( .D(n451), .CP(n5), .Q(slot0_adr[7]) );
  DFQD2BWP12T30P140 slot0_adr_reg_6_ ( .D(n455), .CP(n1), .Q(slot0_adr[6]) );
  DFQD2BWP12T30P140 slot0_adr_reg_5_ ( .D(n459), .CP(n9), .Q(slot0_adr[5]) );
  DFQD2BWP12T30P140 slot0_adr_reg_4_ ( .D(n463), .CP(n8), .Q(slot0_adr[4]) );
  DFQD2BWP12T30P140 slot0_adr_reg_3_ ( .D(n467), .CP(n8), .Q(slot0_adr[3]) );
  DFQD2BWP12T30P140 slot0_adr_reg_2_ ( .D(n471), .CP(n4), .Q(slot0_adr[2]) );
  DFQD2BWP12T30P140 slot0_adr_reg_0_ ( .D(n347), .CP(n12), .Q(slot0_adr[0]) );
  DFQD2BWP12T30P140 slot3_adr_reg_27_ ( .D(n370), .CP(n1), .Q(slot3_adr[27])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_25_ ( .D(n378), .CP(n3), .Q(slot3_adr[25])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_24_ ( .D(n382), .CP(n11), .Q(slot3_adr[24])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_23_ ( .D(n386), .CP(n2), .Q(slot3_adr[23])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_22_ ( .D(n390), .CP(n6), .Q(slot3_adr[22])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_21_ ( .D(n394), .CP(n2), .Q(slot3_adr[21])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_20_ ( .D(n398), .CP(n10), .Q(slot3_adr[20])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_19_ ( .D(n402), .CP(n3), .Q(slot3_adr[19])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_18_ ( .D(n406), .CP(n5), .Q(slot3_adr[18])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_17_ ( .D(n410), .CP(n1), .Q(slot3_adr[17])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_16_ ( .D(n414), .CP(n9), .Q(slot3_adr[16])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_15_ ( .D(n418), .CP(n4), .Q(slot3_adr[15])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_14_ ( .D(n422), .CP(n8), .Q(slot3_adr[14])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_13_ ( .D(n426), .CP(n4), .Q(slot3_adr[13])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_12_ ( .D(n430), .CP(n12), .Q(slot3_adr[12])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_10_ ( .D(n438), .CP(n7), .Q(slot3_adr[10])
         );
  DFQD2BWP12T30P140 slot3_adr_reg_9_ ( .D(n442), .CP(n3), .Q(slot3_adr[9]) );
  DFQD2BWP12T30P140 slot3_adr_reg_1_ ( .D(n356), .CP(n11), .Q(slot3_adr[1]) );
  DFQD2BWP12T30P140 slot1_adr_reg_1_ ( .D(n354), .CP(n10), .Q(slot1_adr[1]) );
  DFQD2BWP12T30P140 slot0_adr_reg_1_ ( .D(n353), .CP(n6), .Q(slot0_adr[1]) );
  DFQD2BWP12T30P140 slot2_adr_reg_29_ ( .D(n361), .CP(n2), .Q(slot2_adr[29])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_28_ ( .D(n365), .CP(n10), .Q(slot2_adr[28])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_27_ ( .D(n369), .CP(n11), .Q(slot2_adr[27])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_26_ ( .D(n373), .CP(n5), .Q(slot2_adr[26])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_25_ ( .D(n377), .CP(n1), .Q(slot2_adr[25])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_24_ ( .D(n381), .CP(n9), .Q(slot2_adr[24])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_23_ ( .D(n385), .CP(n12), .Q(slot2_adr[23])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_22_ ( .D(n389), .CP(n8), .Q(slot2_adr[22])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_21_ ( .D(n393), .CP(n4), .Q(slot2_adr[21])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_19_ ( .D(n401), .CP(n5), .Q(slot2_adr[19])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_18_ ( .D(n405), .CP(n7), .Q(slot2_adr[18])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_17_ ( .D(n409), .CP(n3), .Q(slot2_adr[17])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_16_ ( .D(n413), .CP(n11), .Q(slot2_adr[16])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_15_ ( .D(n417), .CP(n6), .Q(slot2_adr[15])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_14_ ( .D(n421), .CP(n6), .Q(slot2_adr[14])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_13_ ( .D(n425), .CP(n2), .Q(slot2_adr[13])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_12_ ( .D(n429), .CP(n10), .Q(slot2_adr[12])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_11_ ( .D(n433), .CP(n7), .Q(slot2_adr[11])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_10_ ( .D(n437), .CP(n5), .Q(slot2_adr[10])
         );
  DFQD2BWP12T30P140 slot2_adr_reg_9_ ( .D(n441), .CP(n1), .Q(slot2_adr[9]) );
  DFQD2BWP12T30P140 slot2_adr_reg_8_ ( .D(n445), .CP(n9), .Q(slot2_adr[8]) );
  DFQD2BWP12T30P140 slot2_adr_reg_7_ ( .D(n449), .CP(n8), .Q(slot2_adr[7]) );
  DFQD2BWP12T30P140 slot2_adr_reg_6_ ( .D(n453), .CP(n8), .Q(slot2_adr[6]) );
  DFQD2BWP12T30P140 slot2_adr_reg_4_ ( .D(n461), .CP(n12), .Q(slot2_adr[4]) );
  DFQD2BWP12T30P140 slot2_adr_reg_3_ ( .D(n465), .CP(n1), .Q(slot2_adr[3]) );
  DFQD2BWP12T30P140 slot2_adr_reg_2_ ( .D(n469), .CP(n7), .Q(slot2_adr[2]) );
  DFQD2BWP12T30P140 slot2_adr_reg_0_ ( .D(n349), .CP(n3), .Q(slot2_adr[0]) );
  DFQD2BWP12T30P140 slot2_adr_reg_1_ ( .D(n355), .CP(n11), .Q(slot2_adr[1]) );
  DFQD2BWP12T30P140 slot2_state_reg_1_ ( .D(n496), .CP(n2), .Q(slot2_state[1])
         );
  DFQD2BWP12T30P140 slot0_state_reg_1_ ( .D(n358), .CP(n6), .Q(slot0_state[1])
         );
  DFQD2BWP12T30P140 slot1_state_reg_1_ ( .D(n483), .CP(n2), .Q(slot1_state[1])
         );
  DFQD2BWP12T30P140 tx_adr_reg_6_ ( .D(n556), .CP(n10), .Q(tx_adr[6]) );
  DFQD2BWP12T30P140 tx_adr_reg_10_ ( .D(n552), .CP(n3), .Q(tx_adr[10]) );
  DFQD2BWP12T30P140 slot1_count_reg_1_ ( .D(n494), .CP(n5), .Q(slot1_count[1])
         );
  DFQD2BWP12T30P140 slot2_count_reg_3_ ( .D(n505), .CP(n1), .Q(slot2_count[3])
         );
  DFQD2BWP12T30P140 slot3_count_reg_7_ ( .D(n514), .CP(n9), .Q(slot3_count[7])
         );
  DFQD2BWP12T30P140 slot3_count_reg_5_ ( .D(n516), .CP(n4), .Q(slot3_count[5])
         );
  DFQD2BWP12T30P140 slot3_count_reg_1_ ( .D(n520), .CP(n4), .Q(slot3_count[1])
         );
  DFQD2BWP12T30P140 tx_adr_reg_14_ ( .D(n548), .CP(n12), .Q(tx_adr[14]) );
  DFQD2BWP12T30P140 tx_adr_reg_18_ ( .D(n544), .CP(sys_clk), .Q(tx_adr[18]) );
  DFQD2BWP12T30P140 tx_adr_reg_22_ ( .D(n540), .CP(n7), .Q(tx_adr[22]) );
  DFQD2BWP12T30P140 tx_adr_reg_26_ ( .D(n536), .CP(n3), .Q(tx_adr[26]) );
  DFQD2BWP12T30P140 tx_adr_reg_7_ ( .D(n555), .CP(n11), .Q(tx_adr[7]) );
  DFQD2BWP12T30P140 tx_adr_reg_1_ ( .D(n561), .CP(sys_clk), .Q(tx_adr[1]) );
  DFQD2BWP12T30P140 tx_adr_reg_2_ ( .D(n560), .CP(n6), .Q(tx_adr[2]) );
  DFQD2BWP12T30P140 slot1_count_reg_3_ ( .D(n492), .CP(n2), .Q(slot1_count[3])
         );
  DFQD2BWP12T30P140 slot1_count_reg_5_ ( .D(n490), .CP(n10), .Q(slot1_count[5]) );
  DFQD2BWP12T30P140 slot1_count_reg_7_ ( .D(n488), .CP(sys_clk), .Q(
        slot1_count[7]) );
  DFQD2BWP12T30P140 slot0_count_reg_1_ ( .D(n481), .CP(n5), .Q(slot0_count[1])
         );
  DFQD2BWP12T30P140 slot0_count_reg_3_ ( .D(n479), .CP(n1), .Q(slot0_count[3])
         );
  DFQD2BWP12T30P140 slot0_count_reg_5_ ( .D(n477), .CP(n9), .Q(slot0_count[5])
         );
  DFQD2BWP12T30P140 tx_adr_reg_3_ ( .D(n559), .CP(n8), .Q(tx_adr[3]) );
  DFQD2BWP12T30P140 slot2_count_reg_5_ ( .D(n503), .CP(n4), .Q(slot2_count[5])
         );
  DFQD2BWP12T30P140 slot2_count_reg_7_ ( .D(n501), .CP(n12), .Q(slot2_count[7]) );
  DFQD2BWP12T30P140 slot2_count_reg_1_ ( .D(n507), .CP(sys_clk), .Q(
        slot2_count[1]) );
  DFQD2BWP12T30P140 slot2_count_reg_2_ ( .D(n506), .CP(n7), .Q(slot2_count[2])
         );
  DFQD2BWP12T30P140 slot3_count_reg_6_ ( .D(n515), .CP(n3), .Q(slot3_count[6])
         );
  DFQD2BWP12T30P140 slot3_count_reg_4_ ( .D(n517), .CP(n11), .Q(slot3_count[4]) );
  DFQD2BWP12T30P140 slot3_count_reg_2_ ( .D(n519), .CP(sys_clk), .Q(
        slot3_count[2]) );
  DFQD2BWP12T30P140 slot1_count_reg_2_ ( .D(n493), .CP(n6), .Q(slot1_count[2])
         );
  DFQD2BWP12T30P140 slot1_count_reg_4_ ( .D(n491), .CP(n2), .Q(slot1_count[4])
         );
  DFQD2BWP12T30P140 slot1_count_reg_6_ ( .D(n489), .CP(n10), .Q(slot1_count[6]) );
  DFQD2BWP12T30P140 slot0_count_reg_2_ ( .D(n480), .CP(sys_clk), .Q(
        slot0_count[2]) );
  DFQD2BWP12T30P140 slot0_count_reg_4_ ( .D(n478), .CP(n5), .Q(slot0_count[4])
         );
  DFQD2BWP12T30P140 slot0_count_reg_6_ ( .D(n476), .CP(n1), .Q(slot0_count[6])
         );
  DFQD2BWP12T30P140 tx_remaining_reg_3_ ( .D(n529), .CP(sys_clk), .Q(
        tx_remaining[3]) );
  DFQD2BWP12T30P140 slot3_count_reg_8_ ( .D(n513), .CP(n8), .Q(slot3_count[8])
         );
  DFQD2BWP12T30P140 slot1_count_reg_8_ ( .D(n487), .CP(n4), .Q(slot1_count[8])
         );
  DFQD2BWP12T30P140 slot0_count_reg_8_ ( .D(n474), .CP(n12), .Q(slot0_count[8]) );
  DFQD2BWP12T30P140 tx_remaining_reg_7_ ( .D(n525), .CP(sys_clk), .Q(
        tx_remaining[7]) );
  DFQD2BWP12T30P140 tx_remaining_reg_5_ ( .D(n527), .CP(n7), .Q(
        tx_remaining[5]) );
  DFQD2BWP12T30P140 slot2_state_reg_0_ ( .D(n497), .CP(n3), .Q(slot2_state[0])
         );
  DFQD2BWP12T30P140 tx_adr_reg_0_ ( .D(n562), .CP(n11), .Q(tx_adr[0]) );
  DFQD2BWP12T30P140 tx_adr_reg_9_ ( .D(n553), .CP(sys_clk), .Q(tx_adr[9]) );
  DFQD2BWP12T30P140 tx_adr_reg_13_ ( .D(n549), .CP(n6), .Q(tx_adr[13]) );
  DFQD2BWP12T30P140 tx_adr_reg_17_ ( .D(n545), .CP(n2), .Q(tx_adr[17]) );
  DFQD2BWP12T30P140 tx_adr_reg_21_ ( .D(n541), .CP(n10), .Q(tx_adr[21]) );
  DFQD2BWP12T30P140 tx_adr_reg_25_ ( .D(n537), .CP(sys_clk), .Q(tx_adr[25]) );
  DFQD2BWP12T30P140 tx_remaining_reg_8_ ( .D(n524), .CP(n5), .Q(
        tx_remaining[8]) );
  DFQD2BWP12T30P140 slot3_count_reg_0_ ( .D(n521), .CP(n9), .Q(slot3_count[0])
         );
  DFQD2BWP12T30P140 tx_remaining_reg_9_ ( .D(n523), .CP(sys_clk), .Q(
        tx_remaining[9]) );
  DFQD2BWP12T30P140 mii_data_di1_reg ( .D(phy_mii_data), .CP(n8), .Q(
        mii_data_di1) );
  DFQD2BWP12T30P140 tx_remaining_reg_2_ ( .D(n530), .CP(n4), .Q(
        tx_remaining[2]) );
  DFQD2BWP12T30P140 tx_remaining_reg_6_ ( .D(n526), .CP(n12), .Q(
        tx_remaining[6]) );
  DFQD2BWP12T30P140 tx_remaining_reg_4_ ( .D(n528), .CP(sys_clk), .Q(
        tx_remaining[4]) );
  DFQD2BWP12T30P140 tx_adr_reg_5_ ( .D(n557), .CP(n7), .Q(tx_adr[5]) );
  DFQD2BWP12T30P140 slot1_count_reg_0_ ( .D(n495), .CP(n3), .Q(slot1_count[0])
         );
  DFQD2BWP12T30P140 slot0_count_reg_0_ ( .D(n482), .CP(n11), .Q(slot0_count[0]) );
  DFQD2BWP12T30P140 slot1_state_reg_0_ ( .D(n484), .CP(sys_clk), .Q(
        slot1_state[0]) );
  DFQD2BWP12T30P140 tx_remaining_reg_0_ ( .D(n532), .CP(n6), .Q(
        tx_remaining[0]) );
  DFQD2BWP12T30P140 tx_rst_reg ( .D(n346), .CP(n2), .Q(tx_rst) );
  DFQD2BWP12T30P140 tx_bytecount_reg_0_ ( .D(n564), .CP(n10), .Q(
        tx_bytecount[0]) );
  DFQD2BWP12T30P140 mii_data_oe_reg ( .D(n351), .CP(sys_clk), .Q(mii_data_oe)
         );
  DFQD2BWP12T30P140 mii_data_do_reg ( .D(n352), .CP(n1), .Q(mii_data_do) );
  DFQD2BWP12T30P140 rx_rst_reg ( .D(n345), .CP(n9), .Q(rx_rst) );
  DFQD1BWP12T30P140 csr_do_reg_20_ ( .D(N526), .CP(n5), .Q(csr_do[20]) );
  DFQD1BWP12T30P140 csr_do_reg_5_ ( .D(N511), .CP(n1), .Q(csr_do[5]) );
  DFQD1BWP12T30P140 tx_adr_reg_16_ ( .D(n546), .CP(n10), .Q(tx_adr[16]) );
  DFQD1BWP12T30P140 slot1_count_reg_9_ ( .D(n486), .CP(n2), .Q(slot1_count[9])
         );
  DFQD1BWP12T30P140 slot0_adr_reg_20_ ( .D(n399), .CP(n6), .Q(slot0_adr[20])
         );
  DFQD1BWP12T30P140 slot3_adr_reg_7_ ( .D(n450), .CP(n3), .Q(slot3_adr[7]) );
  DFQD1BWP12T30P140 slot1_adr_reg_20_ ( .D(n396), .CP(n11), .Q(slot1_adr[20])
         );
  DFQD1BWP12T30P140 slot1_adr_reg_5_ ( .D(n456), .CP(n3), .Q(slot1_adr[5]) );
  DFQD1BWP12T30P140 slot3_adr_reg_26_ ( .D(n374), .CP(n7), .Q(slot3_adr[26])
         );
  DFQD1BWP12T30P140 slot3_adr_reg_11_ ( .D(n434), .CP(sys_clk), .Q(
        slot3_adr[11]) );
  DFQD1BWP12T30P140 slot2_adr_reg_20_ ( .D(n397), .CP(n12), .Q(slot2_adr[20])
         );
  DFQD1BWP12T30P140 slot2_adr_reg_5_ ( .D(n457), .CP(n4), .Q(slot2_adr[5]) );
  DFQD1BWP12T30P140 slot3_count_reg_3_ ( .D(n518), .CP(n8), .Q(slot3_count[3])
         );
  DFQD1BWP12T30P140 slot0_count_reg_7_ ( .D(n475), .CP(sys_clk), .Q(
        slot0_count[7]) );
  DFQD1BWP12T30P140 tx_remaining_reg_1_ ( .D(n531), .CP(n9), .Q(
        tx_remaining[1]) );
  DFQD1BWP12T30P140 slot2_count_reg_0_ ( .D(n508), .CP(n1), .Q(slot2_count[0])
         );
  DFQD1BWP12T30P140 tx_bytecount_reg_1_ ( .D(n563), .CP(n5), .Q(
        tx_bytecount[1]) );
  INVD0BWP12T30P140 U3 ( .I(n13), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n13), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(n13), .ZN(n3) );
  INVD0BWP12T30P140 U6 ( .I(n13), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(n13), .ZN(n5) );
  INVD0BWP12T30P140 U8 ( .I(n13), .ZN(n6) );
  INVD0BWP12T30P140 U9 ( .I(n13), .ZN(n7) );
  INVD0BWP12T30P140 U10 ( .I(n13), .ZN(n8) );
  INVD0BWP12T30P140 U11 ( .I(n13), .ZN(n9) );
  INVD0BWP12T30P140 U12 ( .I(n13), .ZN(n10) );
  INVD0BWP12T30P140 U13 ( .I(n13), .ZN(n11) );
  INVD0BWP12T30P140 U14 ( .I(n13), .ZN(n12) );
  INVD0BWP12T30P140 U15 ( .I(sys_clk), .ZN(n13) );
  INVD0BWP12T30P140 U16 ( .I(n283), .ZN(n14) );
  AN2D0BWP12T30P140 U17 ( .A1(n933), .A2(rx_endframe), .Z(n15) );
  AN2D0BWP12T30P140 U18 ( .A1(n930), .A2(rx_endframe), .Z(n16) );
  AN2D0BWP12T30P140 U19 ( .A1(n931), .A2(rx_endframe), .Z(n17) );
  AN2D0BWP12T30P140 U20 ( .A1(n932), .A2(rx_endframe), .Z(n18) );
  INVD0BWP12T30P140 U21 ( .I(csr_a[1]), .ZN(n152) );
  INVD0BWP12T30P140 U22 ( .I(sys_rst), .ZN(n899) );
  NR4D0BWP12T30P140 U23 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .ZN(n160) );
  ND2D0BWP12T30P140 U24 ( .A1(n160), .A2(csr_we), .ZN(n99) );
  INVD0BWP12T30P140 U25 ( .I(n99), .ZN(n895) );
  NR2D0BWP12T30P140 U26 ( .A1(csr_a[0]), .A2(n152), .ZN(n149) );
  INVD0BWP12T30P140 U27 ( .I(n149), .ZN(n167) );
  NR3D0BWP12T30P140 U28 ( .A1(csr_a[2]), .A2(csr_a[3]), .A3(n167), .ZN(n581)
         );
  AOI21D0BWP12T30P140 U29 ( .A1(n895), .A2(n581), .B(sys_rst), .ZN(n129) );
  INVD0BWP12T30P140 U30 ( .I(slot0_state[0]), .ZN(n130) );
  INVD0BWP12T30P140 U31 ( .I(n129), .ZN(n94) );
  ND2D0BWP12T30P140 U32 ( .A1(csr_di[0]), .A2(n899), .ZN(n844) );
  INVD0BWP12T30P140 U33 ( .I(n130), .ZN(n931) );
  AOI221D0BWP12T30P140 U34 ( .A1(n129), .A2(n130), .B1(n94), .B2(n844), .C(n17), .ZN(n359) );
  INVD0BWP12T30P140 U35 ( .I(csr_di[15]), .ZN(n650) );
  INVD0BWP12T30P140 U36 ( .I(csr_a[3]), .ZN(n150) );
  ND2D0BWP12T30P140 U37 ( .A1(csr_a[2]), .A2(n150), .ZN(n166) );
  OAI31D0BWP12T30P140 U38 ( .A1(n99), .A2(n167), .A3(n166), .B(n899), .ZN(n684) );
  CKBD0BWP12T30P140 U39 ( .I(n684), .Z(n713) );
  ND2D0BWP12T30P140 U40 ( .A1(n899), .A2(n713), .ZN(n715) );
  INVD0BWP12T30P140 U41 ( .I(slot1_adr[13]), .ZN(n19) );
  OAI22D0BWP12T30P140 U42 ( .A1(n650), .A2(n715), .B1(n19), .B2(n684), .ZN(
        n424) );
  INVD0BWP12T30P140 U43 ( .I(csr_di[14]), .ZN(n652) );
  CKBD0BWP12T30P140 U44 ( .I(n715), .Z(n705) );
  INVD0BWP12T30P140 U45 ( .I(slot1_adr[12]), .ZN(n20) );
  OAI22D0BWP12T30P140 U46 ( .A1(n652), .A2(n705), .B1(n20), .B2(n684), .ZN(
        n428) );
  INVD0BWP12T30P140 U47 ( .I(csr_di[13]), .ZN(n654) );
  INVD0BWP12T30P140 U48 ( .I(slot1_adr[11]), .ZN(n21) );
  OAI22D0BWP12T30P140 U49 ( .A1(n654), .A2(n715), .B1(n21), .B2(n684), .ZN(
        n432) );
  INVD0BWP12T30P140 U50 ( .I(csr_di[12]), .ZN(n658) );
  INVD0BWP12T30P140 U51 ( .I(slot1_adr[10]), .ZN(n22) );
  OAI22D0BWP12T30P140 U52 ( .A1(n658), .A2(n705), .B1(n22), .B2(n684), .ZN(
        n436) );
  INVD0BWP12T30P140 U53 ( .I(csr_di[11]), .ZN(n662) );
  INVD0BWP12T30P140 U54 ( .I(slot1_adr[9]), .ZN(n23) );
  OAI22D0BWP12T30P140 U55 ( .A1(n662), .A2(n715), .B1(n23), .B2(n713), .ZN(
        n440) );
  INVD0BWP12T30P140 U56 ( .I(csr_di[10]), .ZN(n666) );
  INVD0BWP12T30P140 U57 ( .I(slot1_adr[8]), .ZN(n24) );
  OAI22D0BWP12T30P140 U58 ( .A1(n666), .A2(n705), .B1(n24), .B2(n684), .ZN(
        n444) );
  INVD0BWP12T30P140 U59 ( .I(csr_di[9]), .ZN(n668) );
  INVD0BWP12T30P140 U60 ( .I(slot1_adr[7]), .ZN(n25) );
  OAI22D0BWP12T30P140 U61 ( .A1(n668), .A2(n715), .B1(n25), .B2(n684), .ZN(
        n448) );
  INVD0BWP12T30P140 U62 ( .I(csr_di[8]), .ZN(n670) );
  INVD0BWP12T30P140 U63 ( .I(slot1_adr[6]), .ZN(n26) );
  OAI22D0BWP12T30P140 U64 ( .A1(n670), .A2(n705), .B1(n26), .B2(n684), .ZN(
        n452) );
  INVD0BWP12T30P140 U65 ( .I(csr_di[7]), .ZN(n761) );
  INVD0BWP12T30P140 U66 ( .I(slot1_adr[5]), .ZN(n27) );
  OAI22D0BWP12T30P140 U67 ( .A1(n761), .A2(n715), .B1(n27), .B2(n684), .ZN(
        n456) );
  INVD0BWP12T30P140 U68 ( .I(csr_di[6]), .ZN(n674) );
  INVD0BWP12T30P140 U69 ( .I(slot1_adr[4]), .ZN(n28) );
  OAI22D0BWP12T30P140 U70 ( .A1(n674), .A2(n705), .B1(n28), .B2(n684), .ZN(
        n460) );
  INVD0BWP12T30P140 U71 ( .I(csr_di[5]), .ZN(n766) );
  INVD0BWP12T30P140 U72 ( .I(slot1_adr[3]), .ZN(n29) );
  OAI22D0BWP12T30P140 U73 ( .A1(n766), .A2(n715), .B1(n29), .B2(n684), .ZN(
        n464) );
  INVD0BWP12T30P140 U74 ( .I(csr_di[4]), .ZN(n680) );
  INVD0BWP12T30P140 U75 ( .I(slot1_adr[2]), .ZN(n30) );
  OAI22D0BWP12T30P140 U76 ( .A1(n680), .A2(n705), .B1(n30), .B2(n713), .ZN(
        n468) );
  INVD0BWP12T30P140 U77 ( .I(csr_di[31]), .ZN(n682) );
  INVD0BWP12T30P140 U78 ( .I(csr_a[2]), .ZN(n151) );
  ND2D0BWP12T30P140 U79 ( .A1(n151), .A2(csr_a[0]), .ZN(n165) );
  OR2D0BWP12T30P140 U80 ( .A1(n165), .A2(n152), .Z(n163) );
  OAI31D0BWP12T30P140 U81 ( .A1(csr_a[3]), .A2(n99), .A3(n163), .B(n899), .ZN(
        n655) );
  CKBD0BWP12T30P140 U82 ( .I(n655), .Z(n659) );
  ND2D0BWP12T30P140 U83 ( .A1(n899), .A2(n659), .ZN(n661) );
  CKBD0BWP12T30P140 U84 ( .I(n661), .Z(n657) );
  INVD0BWP12T30P140 U85 ( .I(slot0_adr[29]), .ZN(n31) );
  OAI22D0BWP12T30P140 U86 ( .A1(n682), .A2(n657), .B1(n655), .B2(n31), .ZN(
        n363) );
  INVD0BWP12T30P140 U87 ( .I(csr_di[30]), .ZN(n685) );
  INVD0BWP12T30P140 U88 ( .I(slot0_adr[28]), .ZN(n32) );
  OAI22D0BWP12T30P140 U89 ( .A1(n685), .A2(n657), .B1(n655), .B2(n32), .ZN(
        n367) );
  INVD0BWP12T30P140 U90 ( .I(slot0_adr[8]), .ZN(n33) );
  OAI22D0BWP12T30P140 U91 ( .A1(n666), .A2(n657), .B1(n33), .B2(n655), .ZN(
        n447) );
  INVD0BWP12T30P140 U92 ( .I(slot0_adr[7]), .ZN(n34) );
  OAI22D0BWP12T30P140 U93 ( .A1(n668), .A2(n661), .B1(n34), .B2(n655), .ZN(
        n451) );
  INVD0BWP12T30P140 U94 ( .I(slot0_adr[6]), .ZN(n35) );
  OAI22D0BWP12T30P140 U95 ( .A1(n670), .A2(n657), .B1(n35), .B2(n655), .ZN(
        n455) );
  INVD0BWP12T30P140 U96 ( .I(slot0_adr[5]), .ZN(n36) );
  OAI22D0BWP12T30P140 U97 ( .A1(n761), .A2(n661), .B1(n36), .B2(n655), .ZN(
        n459) );
  INVD0BWP12T30P140 U98 ( .I(slot0_adr[4]), .ZN(n37) );
  OAI22D0BWP12T30P140 U99 ( .A1(n674), .A2(n657), .B1(n37), .B2(n655), .ZN(
        n463) );
  INVD0BWP12T30P140 U100 ( .I(slot0_adr[3]), .ZN(n38) );
  OAI22D0BWP12T30P140 U101 ( .A1(n766), .A2(n661), .B1(n38), .B2(n655), .ZN(
        n467) );
  INVD0BWP12T30P140 U102 ( .I(slot0_adr[2]), .ZN(n39) );
  OAI22D0BWP12T30P140 U103 ( .A1(n680), .A2(n657), .B1(n39), .B2(n659), .ZN(
        n471) );
  ND2D0BWP12T30P140 U104 ( .A1(csr_di[2]), .A2(n899), .ZN(n837) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n837), .A2(n655), .B1(n655), .B2(
        slot0_adr[0]), .ZN(n347) );
  INVD0BWP12T30P140 U106 ( .I(csr_di[29]), .ZN(n687) );
  ND2D0BWP12T30P140 U107 ( .A1(csr_a[3]), .A2(n152), .ZN(n164) );
  NR2D0BWP12T30P140 U108 ( .A1(n151), .A2(n164), .ZN(n148) );
  INVD0BWP12T30P140 U109 ( .I(csr_a[0]), .ZN(n153) );
  ND2D0BWP12T30P140 U110 ( .A1(n148), .A2(n153), .ZN(n168) );
  OAI21D0BWP12T30P140 U111 ( .A1(n99), .A2(n168), .B(n899), .ZN(n677) );
  CKBD0BWP12T30P140 U112 ( .I(n677), .Z(n671) );
  ND2D0BWP12T30P140 U113 ( .A1(n899), .A2(n671), .ZN(n676) );
  INVD0BWP12T30P140 U114 ( .I(slot3_adr[27]), .ZN(n40) );
  OAI22D0BWP12T30P140 U115 ( .A1(n687), .A2(n676), .B1(n40), .B2(n671), .ZN(
        n370) );
  INVD0BWP12T30P140 U116 ( .I(csr_di[28]), .ZN(n689) );
  INVD0BWP12T30P140 U117 ( .I(slot3_adr[26]), .ZN(n41) );
  OAI22D0BWP12T30P140 U118 ( .A1(n689), .A2(n676), .B1(n41), .B2(n677), .ZN(
        n374) );
  INVD0BWP12T30P140 U119 ( .I(csr_di[27]), .ZN(n691) );
  CKBD0BWP12T30P140 U120 ( .I(n676), .Z(n679) );
  INVD0BWP12T30P140 U121 ( .I(slot3_adr[25]), .ZN(n42) );
  OAI22D0BWP12T30P140 U122 ( .A1(n691), .A2(n679), .B1(n42), .B2(n671), .ZN(
        n378) );
  INVD0BWP12T30P140 U123 ( .I(csr_di[26]), .ZN(n693) );
  INVD0BWP12T30P140 U124 ( .I(slot3_adr[24]), .ZN(n43) );
  OAI22D0BWP12T30P140 U125 ( .A1(n693), .A2(n676), .B1(n43), .B2(n677), .ZN(
        n382) );
  INVD0BWP12T30P140 U126 ( .I(csr_di[25]), .ZN(n695) );
  INVD0BWP12T30P140 U127 ( .I(slot3_adr[23]), .ZN(n44) );
  OAI22D0BWP12T30P140 U128 ( .A1(n695), .A2(n679), .B1(n44), .B2(n671), .ZN(
        n386) );
  INVD0BWP12T30P140 U129 ( .I(csr_di[24]), .ZN(n716) );
  INVD0BWP12T30P140 U130 ( .I(slot3_adr[22]), .ZN(n45) );
  OAI22D0BWP12T30P140 U131 ( .A1(n716), .A2(n676), .B1(n45), .B2(n677), .ZN(
        n390) );
  INVD0BWP12T30P140 U132 ( .I(csr_di[23]), .ZN(n697) );
  INVD0BWP12T30P140 U133 ( .I(slot3_adr[21]), .ZN(n46) );
  OAI22D0BWP12T30P140 U134 ( .A1(n697), .A2(n679), .B1(n46), .B2(n671), .ZN(
        n394) );
  INVD0BWP12T30P140 U135 ( .I(csr_di[22]), .ZN(n699) );
  INVD0BWP12T30P140 U136 ( .I(slot3_adr[20]), .ZN(n47) );
  OAI22D0BWP12T30P140 U137 ( .A1(n699), .A2(n676), .B1(n47), .B2(n677), .ZN(
        n398) );
  INVD0BWP12T30P140 U138 ( .I(csr_di[21]), .ZN(n701) );
  INVD0BWP12T30P140 U139 ( .I(slot3_adr[19]), .ZN(n48) );
  OAI22D0BWP12T30P140 U140 ( .A1(n701), .A2(n679), .B1(n48), .B2(n671), .ZN(
        n402) );
  INVD0BWP12T30P140 U141 ( .I(csr_di[20]), .ZN(n703) );
  INVD0BWP12T30P140 U142 ( .I(slot3_adr[18]), .ZN(n49) );
  OAI22D0BWP12T30P140 U143 ( .A1(n703), .A2(n676), .B1(n49), .B2(n677), .ZN(
        n406) );
  INVD0BWP12T30P140 U144 ( .I(csr_di[19]), .ZN(n706) );
  INVD0BWP12T30P140 U145 ( .I(slot3_adr[17]), .ZN(n50) );
  OAI22D0BWP12T30P140 U146 ( .A1(n706), .A2(n679), .B1(n50), .B2(n671), .ZN(
        n410) );
  INVD0BWP12T30P140 U147 ( .I(csr_di[18]), .ZN(n708) );
  INVD0BWP12T30P140 U148 ( .I(slot3_adr[16]), .ZN(n51) );
  OAI22D0BWP12T30P140 U149 ( .A1(n708), .A2(n676), .B1(n51), .B2(n677), .ZN(
        n414) );
  INVD0BWP12T30P140 U150 ( .I(csr_di[17]), .ZN(n646) );
  INVD0BWP12T30P140 U151 ( .I(slot3_adr[15]), .ZN(n52) );
  OAI22D0BWP12T30P140 U152 ( .A1(n646), .A2(n679), .B1(n52), .B2(n677), .ZN(
        n418) );
  INVD0BWP12T30P140 U153 ( .I(csr_di[16]), .ZN(n648) );
  INVD0BWP12T30P140 U154 ( .I(slot3_adr[14]), .ZN(n53) );
  OAI22D0BWP12T30P140 U155 ( .A1(n648), .A2(n679), .B1(n53), .B2(n671), .ZN(
        n422) );
  INVD0BWP12T30P140 U156 ( .I(slot3_adr[13]), .ZN(n54) );
  OAI22D0BWP12T30P140 U157 ( .A1(n650), .A2(n676), .B1(n54), .B2(n677), .ZN(
        n426) );
  INVD0BWP12T30P140 U158 ( .I(slot3_adr[12]), .ZN(n55) );
  OAI22D0BWP12T30P140 U159 ( .A1(n652), .A2(n679), .B1(n55), .B2(n671), .ZN(
        n430) );
  INVD0BWP12T30P140 U160 ( .I(slot3_adr[11]), .ZN(n56) );
  OAI22D0BWP12T30P140 U161 ( .A1(n654), .A2(n676), .B1(n56), .B2(n677), .ZN(
        n434) );
  INVD0BWP12T30P140 U162 ( .I(slot3_adr[10]), .ZN(n57) );
  OAI22D0BWP12T30P140 U163 ( .A1(n658), .A2(n679), .B1(n57), .B2(n671), .ZN(
        n438) );
  INVD0BWP12T30P140 U164 ( .I(slot3_adr[9]), .ZN(n58) );
  OAI22D0BWP12T30P140 U165 ( .A1(n662), .A2(n676), .B1(n58), .B2(n671), .ZN(
        n442) );
  ND2D0BWP12T30P140 U166 ( .A1(csr_di[3]), .A2(n899), .ZN(n745) );
  MAOI22D0BWP12T30P140 U167 ( .A1(n745), .A2(n671), .B1(n671), .B2(
        slot3_adr[1]), .ZN(n356) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n745), .A2(n713), .B1(n684), .B2(
        slot1_adr[1]), .ZN(n354) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n745), .A2(n659), .B1(n655), .B2(
        slot0_adr[1]), .ZN(n353) );
  OAI31D0BWP12T30P140 U170 ( .A1(n99), .A2(n165), .A3(n164), .B(n899), .ZN(n90) );
  CKBD0BWP12T30P140 U171 ( .I(n90), .Z(n91) );
  ND2D0BWP12T30P140 U172 ( .A1(n899), .A2(n91), .ZN(n87) );
  CKBD0BWP12T30P140 U173 ( .I(n87), .Z(n89) );
  INVD0BWP12T30P140 U174 ( .I(slot2_adr[29]), .ZN(n59) );
  OAI22D0BWP12T30P140 U175 ( .A1(n682), .A2(n89), .B1(n90), .B2(n59), .ZN(n361) );
  INVD0BWP12T30P140 U176 ( .I(slot2_adr[28]), .ZN(n60) );
  OAI22D0BWP12T30P140 U177 ( .A1(n685), .A2(n89), .B1(n90), .B2(n60), .ZN(n365) );
  INVD0BWP12T30P140 U178 ( .I(slot2_adr[27]), .ZN(n61) );
  OAI22D0BWP12T30P140 U179 ( .A1(n687), .A2(n87), .B1(n61), .B2(n91), .ZN(n369) );
  INVD0BWP12T30P140 U180 ( .I(slot2_adr[26]), .ZN(n62) );
  OAI22D0BWP12T30P140 U181 ( .A1(n689), .A2(n87), .B1(n62), .B2(n91), .ZN(n373) );
  INVD0BWP12T30P140 U182 ( .I(slot2_adr[25]), .ZN(n63) );
  OAI22D0BWP12T30P140 U183 ( .A1(n691), .A2(n89), .B1(n63), .B2(n91), .ZN(n377) );
  INVD0BWP12T30P140 U184 ( .I(slot2_adr[24]), .ZN(n64) );
  OAI22D0BWP12T30P140 U185 ( .A1(n693), .A2(n87), .B1(n64), .B2(n91), .ZN(n381) );
  INVD0BWP12T30P140 U186 ( .I(slot2_adr[23]), .ZN(n65) );
  OAI22D0BWP12T30P140 U187 ( .A1(n695), .A2(n89), .B1(n65), .B2(n91), .ZN(n385) );
  INVD0BWP12T30P140 U188 ( .I(slot2_adr[22]), .ZN(n66) );
  OAI22D0BWP12T30P140 U189 ( .A1(n716), .A2(n87), .B1(n66), .B2(n91), .ZN(n389) );
  INVD0BWP12T30P140 U190 ( .I(slot2_adr[21]), .ZN(n67) );
  OAI22D0BWP12T30P140 U191 ( .A1(n697), .A2(n89), .B1(n67), .B2(n91), .ZN(n393) );
  INVD0BWP12T30P140 U192 ( .I(slot1_adr[14]), .ZN(n68) );
  OAI22D0BWP12T30P140 U193 ( .A1(n648), .A2(n705), .B1(n68), .B2(n713), .ZN(
        n420) );
  INVD0BWP12T30P140 U194 ( .I(slot2_adr[20]), .ZN(n69) );
  OAI22D0BWP12T30P140 U195 ( .A1(n699), .A2(n87), .B1(n69), .B2(n91), .ZN(n397) );
  INVD0BWP12T30P140 U196 ( .I(slot2_adr[19]), .ZN(n70) );
  OAI22D0BWP12T30P140 U197 ( .A1(n701), .A2(n89), .B1(n70), .B2(n91), .ZN(n401) );
  INVD0BWP12T30P140 U198 ( .I(slot2_adr[18]), .ZN(n71) );
  OAI22D0BWP12T30P140 U199 ( .A1(n703), .A2(n87), .B1(n71), .B2(n91), .ZN(n405) );
  INVD0BWP12T30P140 U200 ( .I(slot2_adr[17]), .ZN(n72) );
  OAI22D0BWP12T30P140 U201 ( .A1(n706), .A2(n89), .B1(n72), .B2(n91), .ZN(n409) );
  INVD0BWP12T30P140 U202 ( .I(slot2_adr[16]), .ZN(n73) );
  OAI22D0BWP12T30P140 U203 ( .A1(n708), .A2(n87), .B1(n73), .B2(n91), .ZN(n413) );
  INVD0BWP12T30P140 U204 ( .I(slot2_adr[15]), .ZN(n74) );
  OAI22D0BWP12T30P140 U205 ( .A1(n646), .A2(n89), .B1(n74), .B2(n90), .ZN(n417) );
  INVD0BWP12T30P140 U206 ( .I(slot2_adr[14]), .ZN(n75) );
  OAI22D0BWP12T30P140 U207 ( .A1(n648), .A2(n89), .B1(n75), .B2(n91), .ZN(n421) );
  INVD0BWP12T30P140 U208 ( .I(slot2_adr[13]), .ZN(n76) );
  OAI22D0BWP12T30P140 U209 ( .A1(n650), .A2(n87), .B1(n76), .B2(n90), .ZN(n425) );
  INVD0BWP12T30P140 U210 ( .I(slot2_adr[12]), .ZN(n77) );
  OAI22D0BWP12T30P140 U211 ( .A1(n652), .A2(n89), .B1(n77), .B2(n90), .ZN(n429) );
  INVD0BWP12T30P140 U212 ( .I(slot2_adr[11]), .ZN(n78) );
  OAI22D0BWP12T30P140 U213 ( .A1(n654), .A2(n87), .B1(n78), .B2(n90), .ZN(n433) );
  INVD0BWP12T30P140 U214 ( .I(slot2_adr[10]), .ZN(n79) );
  OAI22D0BWP12T30P140 U215 ( .A1(n658), .A2(n89), .B1(n79), .B2(n90), .ZN(n437) );
  INVD0BWP12T30P140 U216 ( .I(slot2_adr[9]), .ZN(n80) );
  OAI22D0BWP12T30P140 U217 ( .A1(n662), .A2(n87), .B1(n80), .B2(n91), .ZN(n441) );
  INVD0BWP12T30P140 U218 ( .I(slot2_adr[8]), .ZN(n81) );
  OAI22D0BWP12T30P140 U219 ( .A1(n666), .A2(n89), .B1(n81), .B2(n90), .ZN(n445) );
  INVD0BWP12T30P140 U220 ( .I(slot2_adr[7]), .ZN(n82) );
  OAI22D0BWP12T30P140 U221 ( .A1(n668), .A2(n87), .B1(n82), .B2(n90), .ZN(n449) );
  INVD0BWP12T30P140 U222 ( .I(slot2_adr[6]), .ZN(n83) );
  OAI22D0BWP12T30P140 U223 ( .A1(n670), .A2(n89), .B1(n83), .B2(n90), .ZN(n453) );
  INVD0BWP12T30P140 U224 ( .I(slot2_adr[5]), .ZN(n84) );
  OAI22D0BWP12T30P140 U225 ( .A1(n761), .A2(n87), .B1(n84), .B2(n90), .ZN(n457) );
  INVD0BWP12T30P140 U226 ( .I(slot2_adr[4]), .ZN(n85) );
  OAI22D0BWP12T30P140 U227 ( .A1(n674), .A2(n89), .B1(n85), .B2(n90), .ZN(n461) );
  INVD0BWP12T30P140 U228 ( .I(slot2_adr[3]), .ZN(n86) );
  OAI22D0BWP12T30P140 U229 ( .A1(n766), .A2(n87), .B1(n86), .B2(n90), .ZN(n465) );
  INVD0BWP12T30P140 U230 ( .I(slot2_adr[2]), .ZN(n88) );
  OAI22D0BWP12T30P140 U231 ( .A1(n680), .A2(n89), .B1(n88), .B2(n91), .ZN(n469) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n837), .A2(n90), .B1(n90), .B2(slot2_adr[0]), 
        .ZN(n349) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n745), .A2(n91), .B1(n90), .B2(slot2_adr[1]), 
        .ZN(n355) );
  NR3D0BWP12T30P140 U234 ( .A1(csr_a[0]), .A2(csr_a[2]), .A3(n164), .ZN(n589)
         );
  AOI21D0BWP12T30P140 U235 ( .A1(n895), .A2(n589), .B(sys_rst), .ZN(n769) );
  INVD0BWP12T30P140 U236 ( .I(n769), .ZN(n767) );
  INVD0BWP12T30P140 U237 ( .I(slot2_state[0]), .ZN(n768) );
  OR3D0BWP12T30P140 U238 ( .A1(slot0_state[0]), .A2(slot1_state[0]), .A3(n768), 
        .Z(n863) );
  INVD0BWP12T30P140 U239 ( .I(n863), .ZN(n932) );
  AOI21D0BWP12T30P140 U240 ( .A1(csr_di[1]), .A2(n767), .B(n18), .ZN(n93) );
  INVD0BWP12T30P140 U241 ( .I(slot2_state[1]), .ZN(n92) );
  OAI22D0BWP12T30P140 U242 ( .A1(sys_rst), .A2(n93), .B1(n767), .B2(n92), .ZN(
        n496) );
  AOI21D0BWP12T30P140 U243 ( .A1(csr_di[1]), .A2(n94), .B(n17), .ZN(n96) );
  INVD0BWP12T30P140 U244 ( .I(slot0_state[1]), .ZN(n95) );
  OAI22D0BWP12T30P140 U245 ( .A1(sys_rst), .A2(n96), .B1(n94), .B2(n95), .ZN(
        n358) );
  NR3D0BWP12T30P140 U246 ( .A1(csr_a[1]), .A2(n153), .A3(n166), .ZN(n582) );
  AOI21D0BWP12T30P140 U247 ( .A1(n895), .A2(n582), .B(sys_rst), .ZN(n831) );
  INVD0BWP12T30P140 U248 ( .I(n831), .ZN(n829) );
  INVD0BWP12T30P140 U249 ( .I(slot1_state[0]), .ZN(n830) );
  OR2D0BWP12T30P140 U250 ( .A1(n931), .A2(n830), .Z(n861) );
  INVD0BWP12T30P140 U251 ( .I(n861), .ZN(n930) );
  AOI21D0BWP12T30P140 U252 ( .A1(csr_di[1]), .A2(n829), .B(n16), .ZN(n98) );
  INVD0BWP12T30P140 U253 ( .I(slot1_state[1]), .ZN(n97) );
  OAI22D0BWP12T30P140 U254 ( .A1(sys_rst), .A2(n98), .B1(n829), .B2(n97), .ZN(
        n483) );
  INVD0BWP12T30P140 U255 ( .I(tx_adr[5]), .ZN(n103) );
  ND2D0BWP12T30P140 U256 ( .A1(n899), .A2(tx_next), .ZN(n835) );
  INVD0BWP12T30P140 U257 ( .I(n835), .ZN(n838) );
  AN3D0BWP12T30P140 U258 ( .A1(n838), .A2(tx_bytecount[0]), .A3(
        tx_bytecount[1]), .Z(n771) );
  ND3D0BWP12T30P140 U259 ( .A1(tx_adr[1]), .A2(tx_adr[0]), .A3(tx_adr[2]), 
        .ZN(n134) );
  INVD0BWP12T30P140 U260 ( .I(tx_adr[4]), .ZN(n572) );
  INVD0BWP12T30P140 U261 ( .I(tx_adr[3]), .ZN(n136) );
  NR3D0BWP12T30P140 U262 ( .A1(n134), .A2(n572), .A3(n136), .ZN(n820) );
  ND2D0BWP12T30P140 U263 ( .A1(n771), .A2(n820), .ZN(n824) );
  ND3D0BWP12T30P140 U264 ( .A1(n149), .A2(csr_a[2]), .A3(csr_a[3]), .ZN(n161)
         );
  ND3D0BWP12T30P140 U265 ( .A1(tx_next), .A2(tx_bytecount[0]), .A3(
        tx_bytecount[1]), .ZN(n100) );
  OAI211D0BWP12T30P140 U266 ( .A1(n99), .A2(n161), .B(n899), .C(n100), .ZN(
        n818) );
  INVD0BWP12T30P140 U267 ( .I(n771), .ZN(n819) );
  AOI32D0BWP12T30P140 U268 ( .A1(n820), .A2(n818), .A3(tx_adr[5]), .B1(n819), 
        .B2(n818), .ZN(n101) );
  ND2D0BWP12T30P140 U269 ( .A1(n100), .A2(n818), .ZN(n774) );
  OR2D0BWP12T30P140 U270 ( .A1(sys_rst), .A2(n774), .Z(n599) );
  INVD0BWP12T30P140 U271 ( .I(n599), .ZN(n821) );
  AOI22D0BWP12T30P140 U272 ( .A1(tx_adr[6]), .A2(n101), .B1(n821), .B2(
        csr_di[8]), .ZN(n102) );
  OAI31D0BWP12T30P140 U273 ( .A1(tx_adr[6]), .A2(n103), .A3(n824), .B(n102), 
        .ZN(n556) );
  INVD0BWP12T30P140 U274 ( .I(tx_adr[9]), .ZN(n106) );
  ND3D0BWP12T30P140 U275 ( .A1(n820), .A2(tx_adr[6]), .A3(tx_adr[5]), .ZN(n118) );
  INVD0BWP12T30P140 U276 ( .I(tx_adr[8]), .ZN(n597) );
  INVD0BWP12T30P140 U277 ( .I(tx_adr[7]), .ZN(n120) );
  NR3D0BWP12T30P140 U278 ( .A1(n118), .A2(n597), .A3(n120), .ZN(n109) );
  ND2D0BWP12T30P140 U279 ( .A1(n771), .A2(n109), .ZN(n777) );
  INVD0BWP12T30P140 U280 ( .I(n771), .ZN(n790) );
  OAI21D0BWP12T30P140 U281 ( .A1(n109), .A2(n790), .B(n818), .ZN(n775) );
  AO21D0BWP12T30P140 U282 ( .A1(n106), .A2(n771), .B(n775), .Z(n104) );
  AOI22D0BWP12T30P140 U283 ( .A1(tx_adr[10]), .A2(n104), .B1(n821), .B2(
        csr_di[12]), .ZN(n105) );
  OAI31D0BWP12T30P140 U284 ( .A1(tx_adr[10]), .A2(n106), .A3(n777), .B(n105), 
        .ZN(n552) );
  AN2D0BWP12T30P140 U285 ( .A1(rx_incrcount), .A2(n899), .Z(n128) );
  ND2D0BWP12T30P140 U286 ( .A1(n128), .A2(n930), .ZN(n754) );
  NR2D0BWP12T30P140 U287 ( .A1(rx_incrcount), .A2(rx_resetcount), .ZN(n131) );
  OAI21D0BWP12T30P140 U288 ( .A1(n131), .A2(n861), .B(n831), .ZN(n826) );
  OAI21D0BWP12T30P140 U289 ( .A1(slot1_count[0]), .A2(n754), .B(n826), .ZN(
        n717) );
  NR2D0BWP12T30P140 U290 ( .A1(slot1_count[1]), .A2(n754), .ZN(n718) );
  AO22D0BWP12T30P140 U291 ( .A1(slot1_count[1]), .A2(n717), .B1(n718), .B2(
        slot1_count[0]), .Z(n494) );
  ND2D0BWP12T30P140 U292 ( .A1(slot2_count[1]), .A2(slot2_count[0]), .ZN(n142)
         );
  INR2D1BWP12T30P140 U293 ( .A1(slot2_count[2]), .B1(n142), .ZN(n137) );
  ND2D0BWP12T30P140 U294 ( .A1(n128), .A2(n932), .ZN(n800) );
  OAI21D0BWP12T30P140 U295 ( .A1(n131), .A2(n863), .B(n769), .ZN(n801) );
  OAI21D0BWP12T30P140 U296 ( .A1(n137), .A2(n800), .B(n801), .ZN(n611) );
  NR2D0BWP12T30P140 U297 ( .A1(slot2_count[3]), .A2(n800), .ZN(n612) );
  AO22D0BWP12T30P140 U298 ( .A1(slot2_count[3]), .A2(n611), .B1(n612), .B2(
        n137), .Z(n505) );
  ND2D0BWP12T30P140 U299 ( .A1(slot3_count[1]), .A2(slot3_count[0]), .ZN(n848)
         );
  INR2D1BWP12T30P140 U300 ( .A1(slot3_count[2]), .B1(n848), .ZN(n108) );
  ND2D0BWP12T30P140 U301 ( .A1(slot3_count[3]), .A2(n108), .ZN(n712) );
  INR2D1BWP12T30P140 U302 ( .A1(slot3_count[4]), .B1(n712), .ZN(n107) );
  ND2D0BWP12T30P140 U303 ( .A1(slot3_count[5]), .A2(n107), .ZN(n146) );
  INR2D1BWP12T30P140 U304 ( .A1(slot3_count[6]), .B1(n146), .ZN(n318) );
  INVD0BWP12T30P140 U305 ( .I(slot3_state[0]), .ZN(n936) );
  OR4D0BWP12T30P140 U306 ( .A1(n931), .A2(slot1_state[0]), .A3(slot2_state[0]), 
        .A4(n936), .Z(n862) );
  INVD0BWP12T30P140 U307 ( .I(n862), .ZN(n933) );
  ND2D0BWP12T30P140 U308 ( .A1(n128), .A2(n933), .ZN(n849) );
  NR2D0BWP12T30P140 U309 ( .A1(n150), .A2(n163), .ZN(n578) );
  AOI21D0BWP12T30P140 U310 ( .A1(n895), .A2(n578), .B(sys_rst), .ZN(n303) );
  OAI21D0BWP12T30P140 U311 ( .A1(n131), .A2(n862), .B(n303), .ZN(n803) );
  OAI21D0BWP12T30P140 U312 ( .A1(n318), .A2(n849), .B(n803), .ZN(n746) );
  NR2D0BWP12T30P140 U313 ( .A1(slot3_count[7]), .A2(n849), .ZN(n747) );
  AO22D0BWP12T30P140 U314 ( .A1(slot3_count[7]), .A2(n746), .B1(n747), .B2(
        n318), .Z(n514) );
  OAI21D0BWP12T30P140 U315 ( .A1(n107), .A2(n849), .B(n803), .ZN(n143) );
  NR2D0BWP12T30P140 U316 ( .A1(slot3_count[5]), .A2(n849), .ZN(n144) );
  AO22D0BWP12T30P140 U317 ( .A1(slot3_count[5]), .A2(n143), .B1(n144), .B2(
        n107), .Z(n516) );
  OAI21D0BWP12T30P140 U318 ( .A1(n108), .A2(n849), .B(n803), .ZN(n709) );
  NR2D0BWP12T30P140 U319 ( .A1(slot3_count[3]), .A2(n849), .ZN(n710) );
  AO22D0BWP12T30P140 U320 ( .A1(slot3_count[3]), .A2(n709), .B1(n710), .B2(
        n108), .Z(n518) );
  OAI21D0BWP12T30P140 U321 ( .A1(slot3_count[0]), .A2(n849), .B(n803), .ZN(
        n845) );
  NR2D0BWP12T30P140 U322 ( .A1(slot3_count[1]), .A2(n849), .ZN(n846) );
  AO22D0BWP12T30P140 U323 ( .A1(slot3_count[1]), .A2(n845), .B1(n846), .B2(
        slot3_count[0]), .Z(n520) );
  INVD0BWP12T30P140 U324 ( .I(tx_adr[13]), .ZN(n214) );
  ND3D0BWP12T30P140 U325 ( .A1(n109), .A2(tx_adr[10]), .A3(tx_adr[9]), .ZN(
        n306) );
  INVD0BWP12T30P140 U326 ( .I(tx_adr[12]), .ZN(n217) );
  INVD0BWP12T30P140 U327 ( .I(tx_adr[11]), .ZN(n323) );
  NR3D0BWP12T30P140 U328 ( .A1(n306), .A2(n217), .A3(n323), .ZN(n778) );
  ND2D0BWP12T30P140 U329 ( .A1(n771), .A2(n778), .ZN(n781) );
  AOI32D0BWP12T30P140 U330 ( .A1(n778), .A2(n818), .A3(tx_adr[13]), .B1(n819), 
        .B2(n818), .ZN(n110) );
  AOI22D0BWP12T30P140 U331 ( .A1(tx_adr[14]), .A2(n110), .B1(n821), .B2(
        csr_di[16]), .ZN(n111) );
  OAI31D0BWP12T30P140 U332 ( .A1(tx_adr[14]), .A2(n214), .A3(n781), .B(n111), 
        .ZN(n548) );
  INVD0BWP12T30P140 U333 ( .I(tx_adr[17]), .ZN(n203) );
  ND3D0BWP12T30P140 U334 ( .A1(n778), .A2(tx_adr[14]), .A3(tx_adr[13]), .ZN(
        n309) );
  INVD0BWP12T30P140 U335 ( .I(tx_adr[16]), .ZN(n206) );
  INVD0BWP12T30P140 U336 ( .I(tx_adr[15]), .ZN(n327) );
  NR3D0BWP12T30P140 U337 ( .A1(n309), .A2(n206), .A3(n327), .ZN(n782) );
  ND2D0BWP12T30P140 U338 ( .A1(n771), .A2(n782), .ZN(n785) );
  AOI32D0BWP12T30P140 U339 ( .A1(n782), .A2(n818), .A3(tx_adr[17]), .B1(n819), 
        .B2(n818), .ZN(n112) );
  INVD0BWP12T30P140 U340 ( .I(n599), .ZN(n792) );
  AOI22D0BWP12T30P140 U341 ( .A1(tx_adr[18]), .A2(n112), .B1(n792), .B2(
        csr_di[20]), .ZN(n113) );
  OAI31D0BWP12T30P140 U342 ( .A1(tx_adr[18]), .A2(n203), .A3(n785), .B(n113), 
        .ZN(n544) );
  INVD0BWP12T30P140 U343 ( .I(tx_adr[21]), .ZN(n192) );
  ND3D0BWP12T30P140 U344 ( .A1(n782), .A2(tx_adr[18]), .A3(tx_adr[17]), .ZN(
        n312) );
  INVD0BWP12T30P140 U345 ( .I(tx_adr[20]), .ZN(n195) );
  INVD0BWP12T30P140 U346 ( .I(tx_adr[19]), .ZN(n331) );
  NR3D0BWP12T30P140 U347 ( .A1(n312), .A2(n195), .A3(n331), .ZN(n786) );
  ND2D0BWP12T30P140 U348 ( .A1(n771), .A2(n786), .ZN(n789) );
  AOI32D0BWP12T30P140 U349 ( .A1(n786), .A2(n818), .A3(tx_adr[21]), .B1(n819), 
        .B2(n818), .ZN(n114) );
  AOI22D0BWP12T30P140 U350 ( .A1(tx_adr[22]), .A2(n114), .B1(n792), .B2(
        csr_di[24]), .ZN(n115) );
  OAI31D0BWP12T30P140 U351 ( .A1(tx_adr[22]), .A2(n192), .A3(n789), .B(n115), 
        .ZN(n540) );
  INVD0BWP12T30P140 U352 ( .I(tx_adr[25]), .ZN(n181) );
  ND3D0BWP12T30P140 U353 ( .A1(n786), .A2(tx_adr[22]), .A3(tx_adr[21]), .ZN(
        n315) );
  INVD0BWP12T30P140 U354 ( .I(tx_adr[24]), .ZN(n184) );
  INVD0BWP12T30P140 U355 ( .I(tx_adr[23]), .ZN(n335) );
  NR3D0BWP12T30P140 U356 ( .A1(n315), .A2(n184), .A3(n335), .ZN(n791) );
  ND2D0BWP12T30P140 U357 ( .A1(n771), .A2(n791), .ZN(n795) );
  AOI32D0BWP12T30P140 U358 ( .A1(n791), .A2(n818), .A3(tx_adr[25]), .B1(n819), 
        .B2(n818), .ZN(n116) );
  AOI22D0BWP12T30P140 U359 ( .A1(tx_adr[26]), .A2(n116), .B1(n792), .B2(
        csr_di[28]), .ZN(n117) );
  OAI31D0BWP12T30P140 U360 ( .A1(tx_adr[26]), .A2(n181), .A3(n795), .B(n117), 
        .ZN(n536) );
  INVD0BWP12T30P140 U361 ( .I(n818), .ZN(n772) );
  AOI21D0BWP12T30P140 U362 ( .A1(n771), .A2(n118), .B(n772), .ZN(n594) );
  NR2D0BWP12T30P140 U363 ( .A1(n819), .A2(n118), .ZN(n596) );
  AOI22D0BWP12T30P140 U364 ( .A1(csr_di[9]), .A2(n792), .B1(n596), .B2(n120), 
        .ZN(n119) );
  OAI21D0BWP12T30P140 U365 ( .A1(n594), .A2(n120), .B(n119), .ZN(n555) );
  INVD0BWP12T30P140 U366 ( .I(tx_adr[1]), .ZN(n591) );
  INVD0BWP12T30P140 U367 ( .I(tx_adr[0]), .ZN(n770) );
  AOI21D0BWP12T30P140 U368 ( .A1(n771), .A2(n770), .B(n772), .ZN(n122) );
  ND2D0BWP12T30P140 U369 ( .A1(n771), .A2(n591), .ZN(n121) );
  OAI222D0BWP12T30P140 U370 ( .A1(n745), .A2(n774), .B1(n591), .B2(n122), .C1(
        n770), .C2(n121), .ZN(n561) );
  ND2D0BWP12T30P140 U371 ( .A1(tx_adr[1]), .A2(tx_adr[0]), .ZN(n125) );
  AOI32D0BWP12T30P140 U372 ( .A1(tx_adr[1]), .A2(n818), .A3(tx_adr[0]), .B1(
        n819), .B2(n818), .ZN(n123) );
  AOI22D0BWP12T30P140 U373 ( .A1(tx_adr[2]), .A2(n123), .B1(n792), .B2(
        csr_di[4]), .ZN(n124) );
  OAI31D0BWP12T30P140 U374 ( .A1(tx_adr[2]), .A2(n819), .A3(n125), .B(n124), 
        .ZN(n560) );
  ND2D0BWP12T30P140 U375 ( .A1(slot1_count[1]), .A2(slot1_count[0]), .ZN(n720)
         );
  INR2D1BWP12T30P140 U376 ( .A1(slot1_count[2]), .B1(n720), .ZN(n126) );
  OAI21D0BWP12T30P140 U377 ( .A1(n126), .A2(n754), .B(n826), .ZN(n721) );
  NR2D0BWP12T30P140 U378 ( .A1(slot1_count[3]), .A2(n754), .ZN(n722) );
  AO22D0BWP12T30P140 U379 ( .A1(slot1_count[3]), .A2(n721), .B1(n722), .B2(
        n126), .Z(n492) );
  ND2D0BWP12T30P140 U380 ( .A1(slot1_count[3]), .A2(n126), .ZN(n724) );
  INR2D1BWP12T30P140 U381 ( .A1(slot1_count[4]), .B1(n724), .ZN(n127) );
  OAI21D0BWP12T30P140 U382 ( .A1(n127), .A2(n754), .B(n826), .ZN(n725) );
  NR2D0BWP12T30P140 U383 ( .A1(slot1_count[5]), .A2(n754), .ZN(n726) );
  AO22D0BWP12T30P140 U384 ( .A1(slot1_count[5]), .A2(n725), .B1(n726), .B2(
        n127), .Z(n490) );
  ND2D0BWP12T30P140 U385 ( .A1(slot1_count[5]), .A2(n127), .ZN(n728) );
  INR2D1BWP12T30P140 U386 ( .A1(slot1_count[6]), .B1(n728), .ZN(n605) );
  OAI21D0BWP12T30P140 U387 ( .A1(n605), .A2(n754), .B(n826), .ZN(n750) );
  NR2D0BWP12T30P140 U388 ( .A1(slot1_count[7]), .A2(n754), .ZN(n751) );
  AO22D0BWP12T30P140 U389 ( .A1(slot1_count[7]), .A2(n750), .B1(n751), .B2(
        n605), .Z(n488) );
  ND2D0BWP12T30P140 U390 ( .A1(n128), .A2(slot0_state[0]), .ZN(n759) );
  OAI21D0BWP12T30P140 U391 ( .A1(n131), .A2(n130), .B(n129), .ZN(n828) );
  OAI21D0BWP12T30P140 U392 ( .A1(slot0_count[0]), .A2(n759), .B(n828), .ZN(
        n729) );
  NR2D0BWP12T30P140 U393 ( .A1(slot0_count[1]), .A2(n759), .ZN(n730) );
  AO22D0BWP12T30P140 U394 ( .A1(slot0_count[1]), .A2(n729), .B1(n730), .B2(
        slot0_count[0]), .Z(n481) );
  ND2D0BWP12T30P140 U395 ( .A1(slot0_count[1]), .A2(slot0_count[0]), .ZN(n732)
         );
  INR2D1BWP12T30P140 U396 ( .A1(slot0_count[2]), .B1(n732), .ZN(n132) );
  OAI21D0BWP12T30P140 U397 ( .A1(n132), .A2(n759), .B(n828), .ZN(n733) );
  NR2D0BWP12T30P140 U398 ( .A1(slot0_count[3]), .A2(n759), .ZN(n734) );
  AO22D0BWP12T30P140 U399 ( .A1(slot0_count[3]), .A2(n733), .B1(n734), .B2(
        n132), .Z(n479) );
  ND2D0BWP12T30P140 U400 ( .A1(slot0_count[3]), .A2(n132), .ZN(n736) );
  INR2D1BWP12T30P140 U401 ( .A1(slot0_count[4]), .B1(n736), .ZN(n133) );
  OAI21D0BWP12T30P140 U402 ( .A1(n133), .A2(n759), .B(n828), .ZN(n737) );
  NR2D0BWP12T30P140 U403 ( .A1(slot0_count[5]), .A2(n759), .ZN(n738) );
  AO22D0BWP12T30P140 U404 ( .A1(slot0_count[5]), .A2(n737), .B1(n738), .B2(
        n133), .Z(n477) );
  ND2D0BWP12T30P140 U405 ( .A1(slot0_count[5]), .A2(n133), .ZN(n740) );
  INR2D1BWP12T30P140 U406 ( .A1(slot0_count[6]), .B1(n740), .ZN(n608) );
  OAI21D0BWP12T30P140 U407 ( .A1(n608), .A2(n759), .B(n828), .ZN(n755) );
  NR2D0BWP12T30P140 U408 ( .A1(slot0_count[7]), .A2(n759), .ZN(n756) );
  AO22D0BWP12T30P140 U409 ( .A1(slot0_count[7]), .A2(n755), .B1(n756), .B2(
        n608), .Z(n475) );
  AOI21D0BWP12T30P140 U410 ( .A1(n771), .A2(n134), .B(n772), .ZN(n569) );
  NR2D0BWP12T30P140 U411 ( .A1(n819), .A2(n134), .ZN(n571) );
  AOI22D0BWP12T30P140 U412 ( .A1(csr_di[5]), .A2(n792), .B1(n571), .B2(n136), 
        .ZN(n135) );
  OAI21D0BWP12T30P140 U413 ( .A1(n569), .A2(n136), .B(n135), .ZN(n559) );
  INVD0BWP12T30P140 U414 ( .I(slot2_count[4]), .ZN(n262) );
  ND2D0BWP12T30P140 U415 ( .A1(slot2_count[3]), .A2(n137), .ZN(n614) );
  NR2D0BWP12T30P140 U416 ( .A1(n262), .A2(n614), .ZN(n138) );
  OAI21D0BWP12T30P140 U417 ( .A1(n138), .A2(n800), .B(n801), .ZN(n615) );
  NR2D0BWP12T30P140 U418 ( .A1(slot2_count[5]), .A2(n800), .ZN(n616) );
  AO22D0BWP12T30P140 U419 ( .A1(slot2_count[5]), .A2(n615), .B1(n616), .B2(
        n138), .Z(n503) );
  INVD0BWP12T30P140 U420 ( .I(slot2_count[6]), .ZN(n248) );
  ND2D0BWP12T30P140 U421 ( .A1(slot2_count[5]), .A2(n138), .ZN(n618) );
  NR2D0BWP12T30P140 U422 ( .A1(n248), .A2(n618), .ZN(n289) );
  OAI21D0BWP12T30P140 U423 ( .A1(n289), .A2(n800), .B(n801), .ZN(n619) );
  NR2D0BWP12T30P140 U424 ( .A1(slot2_count[7]), .A2(n800), .ZN(n620) );
  AO22D0BWP12T30P140 U425 ( .A1(slot2_count[7]), .A2(n619), .B1(n620), .B2(
        n289), .Z(n501) );
  OAI21D0BWP12T30P140 U426 ( .A1(slot2_count[0]), .A2(n800), .B(n801), .ZN(
        n139) );
  NR2D0BWP12T30P140 U427 ( .A1(slot2_count[1]), .A2(n800), .ZN(n140) );
  AO22D0BWP12T30P140 U428 ( .A1(slot2_count[1]), .A2(n139), .B1(n140), .B2(
        slot2_count[0]), .Z(n507) );
  OAI21D0BWP12T30P140 U429 ( .A1(n140), .A2(n139), .B(slot2_count[2]), .ZN(
        n141) );
  OAI31D0BWP12T30P140 U430 ( .A1(slot2_count[2]), .A2(n800), .A3(n142), .B(
        n141), .ZN(n506) );
  OAI21D0BWP12T30P140 U431 ( .A1(n144), .A2(n143), .B(slot3_count[6]), .ZN(
        n145) );
  OAI31D0BWP12T30P140 U432 ( .A1(slot3_count[6]), .A2(n849), .A3(n146), .B(
        n145), .ZN(n515) );
  INVD0BWP12T30P140 U433 ( .I(slot1_adr[15]), .ZN(n147) );
  OAI22D0BWP12T30P140 U434 ( .A1(n646), .A2(n705), .B1(n147), .B2(n684), .ZN(
        n416) );
  INVD0BWP12T30P140 U435 ( .I(slot3_count[0]), .ZN(n802) );
  ND2D0BWP12T30P140 U436 ( .A1(csr_a[0]), .A2(n148), .ZN(n220) );
  INVD0BWP12T30P140 U437 ( .I(slot2_count[0]), .ZN(n799) );
  ND3D0BWP12T30P140 U438 ( .A1(n151), .A2(csr_a[3]), .A3(n149), .ZN(n268) );
  OAI22D0BWP12T30P140 U439 ( .A1(n802), .A2(n220), .B1(n799), .B2(n268), .ZN(
        n159) );
  NR4D0BWP12T30P140 U440 ( .A1(n153), .A2(n152), .A3(n151), .A4(n150), .ZN(
        n576) );
  NR4D0BWP12T30P140 U441 ( .A1(csr_a[0]), .A2(csr_a[1]), .A3(csr_a[2]), .A4(
        csr_a[3]), .ZN(n894) );
  AOI22D0BWP12T30P140 U442 ( .A1(tx_remaining[0]), .A2(n576), .B1(rx_rst), 
        .B2(n894), .ZN(n157) );
  NR3D0BWP12T30P140 U443 ( .A1(csr_a[0]), .A2(csr_a[1]), .A3(n166), .ZN(n577)
         );
  AOI22D0BWP12T30P140 U444 ( .A1(slot3_state[0]), .A2(n578), .B1(
        slot0_count[0]), .B2(n577), .ZN(n156) );
  NR3D0BWP12T30P140 U445 ( .A1(n153), .A2(n152), .A3(n166), .ZN(n580) );
  NR3D0BWP12T30P140 U446 ( .A1(csr_a[1]), .A2(csr_a[3]), .A3(n165), .ZN(n579)
         );
  AOI22D0BWP12T30P140 U447 ( .A1(slot1_count[0]), .A2(n580), .B1(n579), .B2(
        mii_data_do), .ZN(n155) );
  AOI22D0BWP12T30P140 U448 ( .A1(slot0_state[0]), .A2(n581), .B1(
        slot1_state[0]), .B2(n582), .ZN(n154) );
  ND4D0BWP12T30P140 U449 ( .A1(n157), .A2(n156), .A3(n155), .A4(n154), .ZN(
        n158) );
  AOI211D0BWP12T30P140 U450 ( .A1(slot2_state[0]), .A2(n589), .B(n159), .C(
        n158), .ZN(n162) );
  ND2D0BWP12T30P140 U451 ( .A1(n160), .A2(n899), .ZN(n592) );
  NR2D0BWP12T30P140 U452 ( .A1(n161), .A2(n592), .ZN(n283) );
  INVD0BWP12T30P140 U453 ( .I(n283), .ZN(n590) );
  OAI22D0BWP12T30P140 U454 ( .A1(n162), .A2(n592), .B1(n770), .B2(n14), .ZN(
        N506) );
  INVD0BWP12T30P140 U455 ( .I(tx_adr[29]), .ZN(n171) );
  NR3D0BWP12T30P140 U456 ( .A1(csr_a[3]), .A2(n163), .A3(n592), .ZN(n850) );
  NR3D0BWP12T30P140 U457 ( .A1(n165), .A2(n164), .A3(n592), .ZN(n277) );
  CKBD0BWP12T30P140 U458 ( .I(n277), .Z(n853) );
  AOI22D0BWP12T30P140 U459 ( .A1(n850), .A2(slot0_adr[27]), .B1(n853), .B2(
        slot2_adr[27]), .ZN(n170) );
  NR3D0BWP12T30P140 U460 ( .A1(n167), .A2(n166), .A3(n592), .ZN(n276) );
  CKBD0BWP12T30P140 U461 ( .I(n276), .Z(n856) );
  NR2D0BWP12T30P140 U462 ( .A1(n592), .A2(n168), .ZN(n278) );
  CKBD0BWP12T30P140 U463 ( .I(n278), .Z(n854) );
  AOI22D0BWP12T30P140 U464 ( .A1(n856), .A2(slot1_adr[27]), .B1(n854), .B2(
        slot3_adr[27]), .ZN(n169) );
  OAI211D0BWP12T30P140 U465 ( .A1(n171), .A2(n590), .B(n170), .C(n169), .ZN(
        N535) );
  INVD0BWP12T30P140 U466 ( .I(tx_adr[28]), .ZN(n604) );
  CKBD0BWP12T30P140 U467 ( .I(n850), .Z(n855) );
  AOI22D0BWP12T30P140 U468 ( .A1(n855), .A2(slot0_adr[26]), .B1(n853), .B2(
        slot2_adr[26]), .ZN(n173) );
  AOI22D0BWP12T30P140 U469 ( .A1(n856), .A2(slot1_adr[26]), .B1(n278), .B2(
        slot3_adr[26]), .ZN(n172) );
  OAI211D0BWP12T30P140 U470 ( .A1(n604), .A2(n590), .B(n173), .C(n172), .ZN(
        N534) );
  INVD0BWP12T30P140 U471 ( .I(tx_adr[27]), .ZN(n565) );
  AOI22D0BWP12T30P140 U472 ( .A1(n855), .A2(slot0_adr[25]), .B1(n277), .B2(
        slot2_adr[25]), .ZN(n175) );
  AOI22D0BWP12T30P140 U473 ( .A1(n276), .A2(slot1_adr[25]), .B1(n854), .B2(
        slot3_adr[25]), .ZN(n174) );
  OAI211D0BWP12T30P140 U474 ( .A1(n565), .A2(n590), .B(n175), .C(n174), .ZN(
        N533) );
  INVD0BWP12T30P140 U475 ( .I(tx_adr[26]), .ZN(n178) );
  AOI22D0BWP12T30P140 U476 ( .A1(n850), .A2(slot0_adr[24]), .B1(n277), .B2(
        slot2_adr[24]), .ZN(n177) );
  AOI22D0BWP12T30P140 U477 ( .A1(n276), .A2(slot1_adr[24]), .B1(n278), .B2(
        slot3_adr[24]), .ZN(n176) );
  OAI211D0BWP12T30P140 U478 ( .A1(n178), .A2(n590), .B(n177), .C(n176), .ZN(
        N532) );
  AOI22D0BWP12T30P140 U479 ( .A1(n855), .A2(slot0_adr[23]), .B1(n853), .B2(
        slot2_adr[23]), .ZN(n180) );
  AOI22D0BWP12T30P140 U480 ( .A1(n856), .A2(slot1_adr[23]), .B1(n854), .B2(
        slot3_adr[23]), .ZN(n179) );
  OAI211D0BWP12T30P140 U481 ( .A1(n181), .A2(n590), .B(n180), .C(n179), .ZN(
        N531) );
  AOI22D0BWP12T30P140 U482 ( .A1(n850), .A2(slot0_adr[22]), .B1(n277), .B2(
        slot2_adr[22]), .ZN(n183) );
  AOI22D0BWP12T30P140 U483 ( .A1(n276), .A2(slot1_adr[22]), .B1(n278), .B2(
        slot3_adr[22]), .ZN(n182) );
  OAI211D0BWP12T30P140 U484 ( .A1(n184), .A2(n590), .B(n183), .C(n182), .ZN(
        N530) );
  AOI22D0BWP12T30P140 U485 ( .A1(n855), .A2(slot0_adr[21]), .B1(n853), .B2(
        slot2_adr[21]), .ZN(n186) );
  AOI22D0BWP12T30P140 U486 ( .A1(n856), .A2(slot1_adr[21]), .B1(n854), .B2(
        slot3_adr[21]), .ZN(n185) );
  OAI211D0BWP12T30P140 U487 ( .A1(n335), .A2(n590), .B(n186), .C(n185), .ZN(
        N529) );
  INVD0BWP12T30P140 U488 ( .I(tx_adr[22]), .ZN(n189) );
  AOI22D0BWP12T30P140 U489 ( .A1(n850), .A2(slot0_adr[20]), .B1(n277), .B2(
        slot2_adr[20]), .ZN(n188) );
  AOI22D0BWP12T30P140 U490 ( .A1(n276), .A2(slot1_adr[20]), .B1(n278), .B2(
        slot3_adr[20]), .ZN(n187) );
  OAI211D0BWP12T30P140 U491 ( .A1(n189), .A2(n590), .B(n188), .C(n187), .ZN(
        N528) );
  AOI22D0BWP12T30P140 U492 ( .A1(n850), .A2(slot0_adr[19]), .B1(n853), .B2(
        slot2_adr[19]), .ZN(n191) );
  AOI22D0BWP12T30P140 U493 ( .A1(n856), .A2(slot1_adr[19]), .B1(n854), .B2(
        slot3_adr[19]), .ZN(n190) );
  OAI211D0BWP12T30P140 U494 ( .A1(n192), .A2(n590), .B(n191), .C(n190), .ZN(
        N527) );
  AOI22D0BWP12T30P140 U495 ( .A1(n855), .A2(slot0_adr[18]), .B1(n277), .B2(
        slot2_adr[18]), .ZN(n194) );
  AOI22D0BWP12T30P140 U496 ( .A1(n276), .A2(slot1_adr[18]), .B1(n278), .B2(
        slot3_adr[18]), .ZN(n193) );
  OAI211D0BWP12T30P140 U497 ( .A1(n195), .A2(n590), .B(n194), .C(n193), .ZN(
        N526) );
  AOI22D0BWP12T30P140 U498 ( .A1(n850), .A2(slot0_adr[17]), .B1(n853), .B2(
        slot2_adr[17]), .ZN(n197) );
  AOI22D0BWP12T30P140 U499 ( .A1(n856), .A2(slot1_adr[17]), .B1(n854), .B2(
        slot3_adr[17]), .ZN(n196) );
  OAI211D0BWP12T30P140 U500 ( .A1(n331), .A2(n590), .B(n197), .C(n196), .ZN(
        N525) );
  INVD0BWP12T30P140 U501 ( .I(tx_adr[18]), .ZN(n200) );
  AOI22D0BWP12T30P140 U502 ( .A1(n855), .A2(slot0_adr[16]), .B1(n277), .B2(
        slot2_adr[16]), .ZN(n199) );
  AOI22D0BWP12T30P140 U503 ( .A1(n276), .A2(slot1_adr[16]), .B1(n278), .B2(
        slot3_adr[16]), .ZN(n198) );
  OAI211D0BWP12T30P140 U504 ( .A1(n200), .A2(n590), .B(n199), .C(n198), .ZN(
        N524) );
  AOI22D0BWP12T30P140 U505 ( .A1(n850), .A2(slot0_adr[15]), .B1(n853), .B2(
        slot2_adr[15]), .ZN(n202) );
  AOI22D0BWP12T30P140 U506 ( .A1(n856), .A2(slot1_adr[15]), .B1(n854), .B2(
        slot3_adr[15]), .ZN(n201) );
  OAI211D0BWP12T30P140 U507 ( .A1(n203), .A2(n590), .B(n202), .C(n201), .ZN(
        N523) );
  AOI22D0BWP12T30P140 U508 ( .A1(n855), .A2(slot0_adr[14]), .B1(n277), .B2(
        slot2_adr[14]), .ZN(n205) );
  AOI22D0BWP12T30P140 U509 ( .A1(n276), .A2(slot1_adr[14]), .B1(n278), .B2(
        slot3_adr[14]), .ZN(n204) );
  OAI211D0BWP12T30P140 U510 ( .A1(n206), .A2(n590), .B(n205), .C(n204), .ZN(
        N522) );
  AOI22D0BWP12T30P140 U511 ( .A1(n850), .A2(slot0_adr[13]), .B1(n853), .B2(
        slot2_adr[13]), .ZN(n208) );
  AOI22D0BWP12T30P140 U512 ( .A1(n856), .A2(slot1_adr[13]), .B1(n278), .B2(
        slot3_adr[13]), .ZN(n207) );
  OAI211D0BWP12T30P140 U513 ( .A1(n327), .A2(n590), .B(n208), .C(n207), .ZN(
        N521) );
  INVD0BWP12T30P140 U514 ( .I(tx_adr[14]), .ZN(n211) );
  AOI22D0BWP12T30P140 U515 ( .A1(n855), .A2(slot0_adr[12]), .B1(n277), .B2(
        slot2_adr[12]), .ZN(n210) );
  AOI22D0BWP12T30P140 U516 ( .A1(n276), .A2(slot1_adr[12]), .B1(n854), .B2(
        slot3_adr[12]), .ZN(n209) );
  OAI211D0BWP12T30P140 U517 ( .A1(n211), .A2(n590), .B(n210), .C(n209), .ZN(
        N520) );
  AOI22D0BWP12T30P140 U518 ( .A1(n855), .A2(slot0_adr[11]), .B1(n853), .B2(
        slot2_adr[11]), .ZN(n213) );
  AOI22D0BWP12T30P140 U519 ( .A1(n856), .A2(slot1_adr[11]), .B1(n278), .B2(
        slot3_adr[11]), .ZN(n212) );
  OAI211D0BWP12T30P140 U520 ( .A1(n214), .A2(n590), .B(n213), .C(n212), .ZN(
        N519) );
  AOI22D0BWP12T30P140 U521 ( .A1(n855), .A2(slot0_adr[10]), .B1(n277), .B2(
        slot2_adr[10]), .ZN(n216) );
  AOI22D0BWP12T30P140 U522 ( .A1(n276), .A2(slot1_adr[10]), .B1(n854), .B2(
        slot3_adr[10]), .ZN(n215) );
  OAI211D0BWP12T30P140 U523 ( .A1(n217), .A2(n590), .B(n216), .C(n215), .ZN(
        N518) );
  AOI22D0BWP12T30P140 U524 ( .A1(n855), .A2(slot0_adr[9]), .B1(n853), .B2(
        slot2_adr[9]), .ZN(n219) );
  AOI22D0BWP12T30P140 U525 ( .A1(n856), .A2(slot1_adr[9]), .B1(n278), .B2(
        slot3_adr[9]), .ZN(n218) );
  OAI211D0BWP12T30P140 U526 ( .A1(n323), .A2(n590), .B(n219), .C(n218), .ZN(
        N517) );
  AOI22D0BWP12T30P140 U527 ( .A1(n276), .A2(slot1_adr[8]), .B1(n855), .B2(
        slot0_adr[8]), .ZN(n226) );
  AOI22D0BWP12T30P140 U528 ( .A1(n278), .A2(slot3_adr[8]), .B1(n277), .B2(
        slot2_adr[8]), .ZN(n225) );
  INVD0BWP12T30P140 U529 ( .I(n592), .ZN(n264) );
  INVD0BWP12T30P140 U530 ( .I(slot2_count[10]), .ZN(n295) );
  AOI22D0BWP12T30P140 U531 ( .A1(n576), .A2(tx_remaining[10]), .B1(
        slot1_count[10]), .B2(n580), .ZN(n222) );
  INVD0BWP12T30P140 U532 ( .I(n220), .ZN(n575) );
  AOI22D0BWP12T30P140 U533 ( .A1(slot3_count[10]), .A2(n575), .B1(
        slot0_count[10]), .B2(n577), .ZN(n221) );
  OAI211D0BWP12T30P140 U534 ( .A1(n295), .A2(n268), .B(n222), .C(n221), .ZN(
        n223) );
  AOI22D0BWP12T30P140 U535 ( .A1(tx_adr[10]), .A2(n283), .B1(n264), .B2(n223), 
        .ZN(n224) );
  ND3D0BWP12T30P140 U536 ( .A1(n226), .A2(n225), .A3(n224), .ZN(N516) );
  AOI22D0BWP12T30P140 U537 ( .A1(n856), .A2(slot1_adr[7]), .B1(n850), .B2(
        slot0_adr[7]), .ZN(n232) );
  AOI22D0BWP12T30P140 U538 ( .A1(n854), .A2(slot3_adr[7]), .B1(n853), .B2(
        slot2_adr[7]), .ZN(n231) );
  INVD0BWP12T30P140 U539 ( .I(slot2_count[9]), .ZN(n292) );
  AOI22D0BWP12T30P140 U540 ( .A1(n576), .A2(tx_remaining[9]), .B1(
        slot1_count[9]), .B2(n580), .ZN(n228) );
  AOI22D0BWP12T30P140 U541 ( .A1(slot3_count[9]), .A2(n575), .B1(
        slot0_count[9]), .B2(n577), .ZN(n227) );
  OAI211D0BWP12T30P140 U542 ( .A1(n292), .A2(n268), .B(n228), .C(n227), .ZN(
        n229) );
  AOI22D0BWP12T30P140 U543 ( .A1(tx_adr[9]), .A2(n283), .B1(n264), .B2(n229), 
        .ZN(n230) );
  ND3D0BWP12T30P140 U544 ( .A1(n232), .A2(n231), .A3(n230), .ZN(N515) );
  AOI22D0BWP12T30P140 U545 ( .A1(n276), .A2(slot1_adr[6]), .B1(n855), .B2(
        slot0_adr[6]), .ZN(n238) );
  AOI22D0BWP12T30P140 U546 ( .A1(n278), .A2(slot3_adr[6]), .B1(n277), .B2(
        slot2_adr[6]), .ZN(n237) );
  INVD0BWP12T30P140 U547 ( .I(slot2_count[8]), .ZN(n290) );
  AOI22D0BWP12T30P140 U548 ( .A1(n576), .A2(tx_remaining[8]), .B1(
        slot1_count[8]), .B2(n580), .ZN(n234) );
  AOI22D0BWP12T30P140 U549 ( .A1(slot3_count[8]), .A2(n575), .B1(
        slot0_count[8]), .B2(n577), .ZN(n233) );
  OAI211D0BWP12T30P140 U550 ( .A1(n290), .A2(n268), .B(n234), .C(n233), .ZN(
        n235) );
  AOI22D0BWP12T30P140 U551 ( .A1(tx_adr[8]), .A2(n283), .B1(n264), .B2(n235), 
        .ZN(n236) );
  ND3D0BWP12T30P140 U552 ( .A1(n238), .A2(n237), .A3(n236), .ZN(N514) );
  AOI22D0BWP12T30P140 U553 ( .A1(n856), .A2(slot1_adr[5]), .B1(n850), .B2(
        slot0_adr[5]), .ZN(n245) );
  AOI22D0BWP12T30P140 U554 ( .A1(n854), .A2(slot3_adr[5]), .B1(n853), .B2(
        slot2_adr[5]), .ZN(n244) );
  INVD0BWP12T30P140 U555 ( .I(slot2_count[7]), .ZN(n241) );
  AOI22D0BWP12T30P140 U556 ( .A1(n576), .A2(tx_remaining[7]), .B1(
        slot1_count[7]), .B2(n580), .ZN(n240) );
  AOI22D0BWP12T30P140 U557 ( .A1(slot3_count[7]), .A2(n575), .B1(
        slot0_count[7]), .B2(n577), .ZN(n239) );
  OAI211D0BWP12T30P140 U558 ( .A1(n241), .A2(n268), .B(n240), .C(n239), .ZN(
        n242) );
  AOI22D0BWP12T30P140 U559 ( .A1(tx_adr[7]), .A2(n283), .B1(n264), .B2(n242), 
        .ZN(n243) );
  ND3D0BWP12T30P140 U560 ( .A1(n245), .A2(n244), .A3(n243), .ZN(N513) );
  AOI22D0BWP12T30P140 U561 ( .A1(n276), .A2(slot1_adr[4]), .B1(n855), .B2(
        slot0_adr[4]), .ZN(n252) );
  AOI22D0BWP12T30P140 U562 ( .A1(n278), .A2(slot3_adr[4]), .B1(n277), .B2(
        slot2_adr[4]), .ZN(n251) );
  AOI22D0BWP12T30P140 U563 ( .A1(n576), .A2(tx_remaining[6]), .B1(
        slot1_count[6]), .B2(n580), .ZN(n247) );
  AOI22D0BWP12T30P140 U564 ( .A1(slot3_count[6]), .A2(n575), .B1(
        slot0_count[6]), .B2(n577), .ZN(n246) );
  OAI211D0BWP12T30P140 U565 ( .A1(n248), .A2(n268), .B(n247), .C(n246), .ZN(
        n249) );
  AOI22D0BWP12T30P140 U566 ( .A1(tx_adr[6]), .A2(n283), .B1(n264), .B2(n249), 
        .ZN(n250) );
  ND3D0BWP12T30P140 U567 ( .A1(n252), .A2(n251), .A3(n250), .ZN(N512) );
  AOI22D0BWP12T30P140 U568 ( .A1(n856), .A2(slot1_adr[3]), .B1(n850), .B2(
        slot0_adr[3]), .ZN(n259) );
  AOI22D0BWP12T30P140 U569 ( .A1(n854), .A2(slot3_adr[3]), .B1(n853), .B2(
        slot2_adr[3]), .ZN(n258) );
  INVD0BWP12T30P140 U570 ( .I(slot2_count[5]), .ZN(n255) );
  AOI22D0BWP12T30P140 U571 ( .A1(n576), .A2(tx_remaining[5]), .B1(
        slot1_count[5]), .B2(n580), .ZN(n254) );
  AOI22D0BWP12T30P140 U572 ( .A1(slot3_count[5]), .A2(n575), .B1(
        slot0_count[5]), .B2(n577), .ZN(n253) );
  OAI211D0BWP12T30P140 U573 ( .A1(n255), .A2(n268), .B(n254), .C(n253), .ZN(
        n256) );
  AOI22D0BWP12T30P140 U574 ( .A1(tx_adr[5]), .A2(n283), .B1(n264), .B2(n256), 
        .ZN(n257) );
  ND3D0BWP12T30P140 U575 ( .A1(n259), .A2(n258), .A3(n257), .ZN(N511) );
  AOI22D0BWP12T30P140 U576 ( .A1(n276), .A2(slot1_adr[2]), .B1(n855), .B2(
        slot0_adr[2]), .ZN(n267) );
  AOI22D0BWP12T30P140 U577 ( .A1(n854), .A2(slot3_adr[2]), .B1(n277), .B2(
        slot2_adr[2]), .ZN(n266) );
  AOI22D0BWP12T30P140 U578 ( .A1(n576), .A2(tx_remaining[4]), .B1(
        slot1_count[4]), .B2(n580), .ZN(n261) );
  AOI22D0BWP12T30P140 U579 ( .A1(slot3_count[4]), .A2(n575), .B1(
        slot0_count[4]), .B2(n577), .ZN(n260) );
  OAI211D0BWP12T30P140 U580 ( .A1(n262), .A2(n268), .B(n261), .C(n260), .ZN(
        n263) );
  AOI22D0BWP12T30P140 U581 ( .A1(tx_adr[4]), .A2(n283), .B1(n264), .B2(n263), 
        .ZN(n265) );
  ND3D0BWP12T30P140 U582 ( .A1(n267), .A2(n266), .A3(n265), .ZN(N510) );
  AOI22D0BWP12T30P140 U583 ( .A1(n856), .A2(slot1_adr[1]), .B1(n850), .B2(
        slot0_adr[1]), .ZN(n275) );
  AOI22D0BWP12T30P140 U584 ( .A1(n854), .A2(slot3_adr[1]), .B1(n853), .B2(
        slot2_adr[1]), .ZN(n274) );
  AOI22D0BWP12T30P140 U585 ( .A1(tx_remaining[3]), .A2(n576), .B1(
        slot0_count[3]), .B2(n577), .ZN(n271) );
  INVD0BWP12T30P140 U586 ( .I(n268), .ZN(n574) );
  AOI22D0BWP12T30P140 U587 ( .A1(slot2_count[3]), .A2(n574), .B1(n579), .B2(
        phy_mii_clk), .ZN(n270) );
  AOI22D0BWP12T30P140 U588 ( .A1(slot3_count[3]), .A2(n575), .B1(
        slot1_count[3]), .B2(n580), .ZN(n269) );
  AOI31D0BWP12T30P140 U589 ( .A1(n271), .A2(n270), .A3(n269), .B(n592), .ZN(
        n272) );
  AOI21D0BWP12T30P140 U590 ( .A1(n283), .A2(tx_adr[3]), .B(n272), .ZN(n273) );
  ND3D0BWP12T30P140 U591 ( .A1(n275), .A2(n274), .A3(n273), .ZN(N509) );
  AOI22D0BWP12T30P140 U592 ( .A1(slot1_adr[0]), .A2(n276), .B1(slot0_adr[0]), 
        .B2(n850), .ZN(n286) );
  AOI22D0BWP12T30P140 U593 ( .A1(slot3_adr[0]), .A2(n278), .B1(slot2_adr[0]), 
        .B2(n277), .ZN(n285) );
  AOI22D0BWP12T30P140 U594 ( .A1(tx_remaining[2]), .A2(n576), .B1(
        slot0_count[2]), .B2(n577), .ZN(n281) );
  AOI22D0BWP12T30P140 U595 ( .A1(slot2_count[2]), .A2(n574), .B1(n579), .B2(
        mii_data_oe), .ZN(n280) );
  AOI22D0BWP12T30P140 U596 ( .A1(slot3_count[2]), .A2(n575), .B1(
        slot1_count[2]), .B2(n580), .ZN(n279) );
  AOI31D0BWP12T30P140 U597 ( .A1(n281), .A2(n280), .A3(n279), .B(n592), .ZN(
        n282) );
  AOI21D0BWP12T30P140 U598 ( .A1(n283), .A2(tx_adr[2]), .B(n282), .ZN(n284) );
  ND3D0BWP12T30P140 U599 ( .A1(n286), .A2(n285), .A3(n284), .ZN(N508) );
  NR4D0BWP12T30P140 U600 ( .A1(rx_rst), .A2(slot2_state[1]), .A3(
        slot0_state[1]), .A4(slot1_state[1]), .ZN(n287) );
  INVD0BWP12T30P140 U601 ( .I(slot3_state[1]), .ZN(n304) );
  AOI21D0BWP12T30P140 U602 ( .A1(n287), .A2(n304), .B(sys_rst), .ZN(N686) );
  NR4D0BWP12T30P140 U603 ( .A1(tx_remaining[1]), .A2(tx_remaining[0]), .A3(
        tx_remaining[2]), .A4(tx_remaining[3]), .ZN(n763) );
  INR3D1BWP12T30P140 U604 ( .A1(n763), .B1(tx_remaining[5]), .B2(
        tx_remaining[4]), .ZN(n762) );
  INR3D1BWP12T30P140 U605 ( .A1(n762), .B1(tx_remaining[7]), .B2(
        tx_remaining[6]), .ZN(n796) );
  INVD0BWP12T30P140 U606 ( .I(tx_remaining[8]), .ZN(n299) );
  INVD0BWP12T30P140 U607 ( .I(tx_remaining[10]), .ZN(n301) );
  IND4D1BWP12T30P140 U608 ( .A1(tx_remaining[9]), .B1(n796), .B2(n299), .B3(
        n301), .ZN(tx_valid) );
  INVD0BWP12T30P140 U609 ( .I(tx_valid), .ZN(n288) );
  NR2D0BWP12T30P140 U610 ( .A1(sys_rst), .A2(n288), .ZN(N687) );
  INVD0BWP12T30P140 U611 ( .I(n303), .ZN(n302) );
  AOI221D0BWP12T30P140 U612 ( .A1(n303), .A2(n936), .B1(n302), .B2(n844), .C(
        n15), .ZN(n510) );
  ND2D0BWP12T30P140 U613 ( .A1(slot2_count[7]), .A2(n289), .ZN(n622) );
  NR2D0BWP12T30P140 U614 ( .A1(n622), .A2(n290), .ZN(n293) );
  OA21D0BWP12T30P140 U615 ( .A1(n800), .A2(n293), .B(n801), .Z(n298) );
  INVD0BWP12T30P140 U616 ( .I(n800), .ZN(n294) );
  ND2D0BWP12T30P140 U617 ( .A1(n294), .A2(n292), .ZN(n297) );
  INVD0BWP12T30P140 U618 ( .I(n293), .ZN(n291) );
  OAI22D0BWP12T30P140 U619 ( .A1(n298), .A2(n292), .B1(n297), .B2(n291), .ZN(
        n499) );
  ND3D0BWP12T30P140 U620 ( .A1(n294), .A2(slot2_count[9]), .A3(n293), .ZN(n296) );
  AOI32D0BWP12T30P140 U621 ( .A1(n298), .A2(slot2_count[10]), .A3(n297), .B1(
        n296), .B2(n295), .ZN(n498) );
  AOI211D0BWP12T30P140 U622 ( .A1(n895), .A2(n576), .B(sys_rst), .C(tx_next), 
        .ZN(n833) );
  INVD0BWP12T30P140 U623 ( .I(n833), .ZN(n842) );
  IND2D1BWP12T30P140 U624 ( .A1(tx_next), .B1(n842), .ZN(n811) );
  NR2D0BWP12T30P140 U625 ( .A1(n811), .A2(sys_rst), .ZN(n832) );
  INVD0BWP12T30P140 U626 ( .I(n832), .ZN(n765) );
  AOI32D0BWP12T30P140 U627 ( .A1(n796), .A2(n842), .A3(n299), .B1(n835), .B2(
        n842), .ZN(n804) );
  AOI21D0BWP12T30P140 U628 ( .A1(n838), .A2(tx_remaining[9]), .B(n804), .ZN(
        n300) );
  OAI222D0BWP12T30P140 U629 ( .A1(n765), .A2(n666), .B1(n301), .B2(n300), .C1(
        n835), .C2(tx_valid), .ZN(n522) );
  AOI21D0BWP12T30P140 U630 ( .A1(csr_di[1]), .A2(n302), .B(n15), .ZN(n305) );
  OAI22D0BWP12T30P140 U631 ( .A1(sys_rst), .A2(n305), .B1(n302), .B2(n304), 
        .ZN(n509) );
  IOA21D0BWP12T30P140 U632 ( .A1(n895), .A2(n579), .B(n899), .ZN(n843) );
  MAOI22D0BWP12T30P140 U633 ( .A1(n745), .A2(n843), .B1(n843), .B2(phy_mii_clk), .ZN(n357) );
  OR2D0BWP12T30P140 U634 ( .A1(n306), .A2(n790), .Z(n321) );
  AOI21D0BWP12T30P140 U635 ( .A1(n771), .A2(n306), .B(n772), .ZN(n324) );
  OAI21D0BWP12T30P140 U636 ( .A1(tx_adr[11]), .A2(n790), .B(n324), .ZN(n307)
         );
  AOI22D0BWP12T30P140 U637 ( .A1(tx_adr[12]), .A2(n307), .B1(n821), .B2(
        csr_di[14]), .ZN(n308) );
  OAI31D0BWP12T30P140 U638 ( .A1(tx_adr[12]), .A2(n323), .A3(n321), .B(n308), 
        .ZN(n550) );
  OR2D0BWP12T30P140 U639 ( .A1(n309), .A2(n790), .Z(n325) );
  AOI21D0BWP12T30P140 U640 ( .A1(n771), .A2(n309), .B(n772), .ZN(n328) );
  OAI21D0BWP12T30P140 U641 ( .A1(tx_adr[15]), .A2(n790), .B(n328), .ZN(n310)
         );
  AOI22D0BWP12T30P140 U642 ( .A1(tx_adr[16]), .A2(n310), .B1(n792), .B2(
        csr_di[18]), .ZN(n311) );
  OAI31D0BWP12T30P140 U643 ( .A1(tx_adr[16]), .A2(n327), .A3(n325), .B(n311), 
        .ZN(n546) );
  OR2D0BWP12T30P140 U644 ( .A1(n312), .A2(n790), .Z(n329) );
  AOI21D0BWP12T30P140 U645 ( .A1(n771), .A2(n312), .B(n772), .ZN(n332) );
  OAI21D0BWP12T30P140 U646 ( .A1(tx_adr[19]), .A2(n790), .B(n332), .ZN(n313)
         );
  AOI22D0BWP12T30P140 U647 ( .A1(tx_adr[20]), .A2(n313), .B1(n792), .B2(
        csr_di[22]), .ZN(n314) );
  OAI31D0BWP12T30P140 U648 ( .A1(tx_adr[20]), .A2(n331), .A3(n329), .B(n314), 
        .ZN(n542) );
  OR2D0BWP12T30P140 U649 ( .A1(n315), .A2(n790), .Z(n333) );
  AOI21D0BWP12T30P140 U650 ( .A1(n771), .A2(n315), .B(n772), .ZN(n336) );
  OAI21D0BWP12T30P140 U651 ( .A1(tx_adr[23]), .A2(n790), .B(n336), .ZN(n316)
         );
  AOI22D0BWP12T30P140 U652 ( .A1(tx_adr[24]), .A2(n316), .B1(n792), .B2(
        csr_di[26]), .ZN(n317) );
  OAI31D0BWP12T30P140 U653 ( .A1(tx_adr[24]), .A2(n335), .A3(n333), .B(n317), 
        .ZN(n538) );
  ND2D0BWP12T30P140 U654 ( .A1(slot3_count[7]), .A2(n318), .ZN(n749) );
  IND2D1BWP12T30P140 U655 ( .A1(n749), .B1(slot3_count[8]), .ZN(n319) );
  INVD0BWP12T30P140 U656 ( .I(n319), .ZN(n339) );
  OA21D0BWP12T30P140 U657 ( .A1(n849), .A2(n339), .B(n803), .Z(n344) );
  INVD0BWP12T30P140 U658 ( .I(slot3_count[9]), .ZN(n320) );
  INVD0BWP12T30P140 U659 ( .I(n849), .ZN(n340) );
  ND2D0BWP12T30P140 U660 ( .A1(n340), .A2(n320), .ZN(n343) );
  OAI22D0BWP12T30P140 U661 ( .A1(n344), .A2(n320), .B1(n343), .B2(n319), .ZN(
        n512) );
  MAOI22D0BWP12T30P140 U662 ( .A1(csr_di[13]), .A2(n821), .B1(tx_adr[11]), 
        .B2(n321), .ZN(n322) );
  OAI21D0BWP12T30P140 U663 ( .A1(n324), .A2(n323), .B(n322), .ZN(n551) );
  MAOI22D0BWP12T30P140 U664 ( .A1(csr_di[17]), .A2(n821), .B1(tx_adr[15]), 
        .B2(n325), .ZN(n326) );
  OAI21D0BWP12T30P140 U665 ( .A1(n328), .A2(n327), .B(n326), .ZN(n547) );
  MAOI22D0BWP12T30P140 U666 ( .A1(csr_di[21]), .A2(n821), .B1(tx_adr[19]), 
        .B2(n329), .ZN(n330) );
  OAI21D0BWP12T30P140 U667 ( .A1(n332), .A2(n331), .B(n330), .ZN(n543) );
  MAOI22D0BWP12T30P140 U668 ( .A1(csr_di[25]), .A2(n821), .B1(tx_adr[23]), 
        .B2(n333), .ZN(n334) );
  OAI21D0BWP12T30P140 U669 ( .A1(n336), .A2(n335), .B(n334), .ZN(n539) );
  ND3D0BWP12T30P140 U670 ( .A1(n791), .A2(tx_adr[26]), .A3(tx_adr[25]), .ZN(
        n337) );
  AO21D0BWP12T30P140 U671 ( .A1(n337), .A2(n771), .B(n772), .Z(n567) );
  AOI21D0BWP12T30P140 U672 ( .A1(n771), .A2(n565), .B(n567), .ZN(n600) );
  NR2D0BWP12T30P140 U673 ( .A1(n819), .A2(n337), .ZN(n566) );
  ND2D0BWP12T30P140 U674 ( .A1(tx_adr[27]), .A2(n566), .ZN(n603) );
  MAOI22D0BWP12T30P140 U675 ( .A1(csr_di[30]), .A2(n821), .B1(tx_adr[28]), 
        .B2(n603), .ZN(n338) );
  OAI21D0BWP12T30P140 U676 ( .A1(n600), .A2(n604), .B(n338), .ZN(n534) );
  ND3D0BWP12T30P140 U677 ( .A1(n340), .A2(slot3_count[9]), .A3(n339), .ZN(n342) );
  INVD0BWP12T30P140 U678 ( .I(slot3_count[10]), .ZN(n341) );
  AOI32D0BWP12T30P140 U679 ( .A1(n344), .A2(slot3_count[10]), .A3(n343), .B1(
        n342), .B2(n341), .ZN(n511) );
  AOI22D0BWP12T30P140 U680 ( .A1(tx_adr[27]), .A2(n567), .B1(n566), .B2(n565), 
        .ZN(n568) );
  OAI21D0BWP12T30P140 U681 ( .A1(n599), .A2(n687), .B(n568), .ZN(n535) );
  OAI21D0BWP12T30P140 U682 ( .A1(tx_adr[3]), .A2(n819), .B(n569), .ZN(n570) );
  AOI32D0BWP12T30P140 U683 ( .A1(tx_adr[3]), .A2(n572), .A3(n571), .B1(
        tx_adr[4]), .B2(n570), .ZN(n573) );
  OAI21D0BWP12T30P140 U684 ( .A1(n599), .A2(n674), .B(n573), .ZN(n558) );
  AO22D0BWP12T30P140 U685 ( .A1(slot3_count[1]), .A2(n575), .B1(slot2_count[1]), .B2(n574), .Z(n588) );
  AOI22D0BWP12T30P140 U686 ( .A1(tx_remaining[1]), .A2(n576), .B1(n894), .B2(
        tx_rst), .ZN(n586) );
  AOI22D0BWP12T30P140 U687 ( .A1(n578), .A2(slot3_state[1]), .B1(
        slot0_count[1]), .B2(n577), .ZN(n585) );
  AOI22D0BWP12T30P140 U688 ( .A1(slot1_count[1]), .A2(n580), .B1(n579), .B2(
        mii_data_di), .ZN(n584) );
  AOI22D0BWP12T30P140 U689 ( .A1(n582), .A2(slot1_state[1]), .B1(n581), .B2(
        slot0_state[1]), .ZN(n583) );
  ND4D0BWP12T30P140 U690 ( .A1(n586), .A2(n585), .A3(n584), .A4(n583), .ZN(
        n587) );
  AOI211D0BWP12T30P140 U691 ( .A1(n589), .A2(slot2_state[1]), .B(n588), .C(
        n587), .ZN(n593) );
  OAI22D0BWP12T30P140 U692 ( .A1(n593), .A2(n592), .B1(n591), .B2(n590), .ZN(
        N507) );
  OAI21D0BWP12T30P140 U693 ( .A1(tx_adr[7]), .A2(n819), .B(n594), .ZN(n595) );
  AOI32D0BWP12T30P140 U694 ( .A1(tx_adr[7]), .A2(n597), .A3(n596), .B1(
        tx_adr[8]), .B2(n595), .ZN(n598) );
  OAI21D0BWP12T30P140 U695 ( .A1(n599), .A2(n666), .B(n598), .ZN(n554) );
  OAI21D0BWP12T30P140 U696 ( .A1(tx_adr[28]), .A2(n819), .B(n600), .ZN(n601)
         );
  AOI22D0BWP12T30P140 U697 ( .A1(n821), .A2(csr_di[31]), .B1(tx_adr[29]), .B2(
        n601), .ZN(n602) );
  OAI31D0BWP12T30P140 U698 ( .A1(tx_adr[29]), .A2(n604), .A3(n603), .B(n602), 
        .ZN(n533) );
  MAOI22D0BWP12T30P140 U699 ( .A1(n837), .A2(n677), .B1(n671), .B2(
        slot3_adr[0]), .ZN(n350) );
  ND2D0BWP12T30P140 U700 ( .A1(slot1_count[7]), .A2(n605), .ZN(n753) );
  IND2D1BWP12T30P140 U701 ( .A1(n753), .B1(slot1_count[8]), .ZN(n606) );
  INVD0BWP12T30P140 U702 ( .I(n606), .ZN(n623) );
  OA21D0BWP12T30P140 U703 ( .A1(n754), .A2(n623), .B(n826), .Z(n627) );
  INVD0BWP12T30P140 U704 ( .I(slot1_count[9]), .ZN(n607) );
  INVD0BWP12T30P140 U705 ( .I(n754), .ZN(n825) );
  ND2D0BWP12T30P140 U706 ( .A1(n825), .A2(n607), .ZN(n626) );
  OAI22D0BWP12T30P140 U707 ( .A1(n627), .A2(n607), .B1(n626), .B2(n606), .ZN(
        n486) );
  ND2D0BWP12T30P140 U708 ( .A1(slot0_count[7]), .A2(n608), .ZN(n758) );
  IND2D1BWP12T30P140 U709 ( .A1(n758), .B1(slot0_count[8]), .ZN(n609) );
  INVD0BWP12T30P140 U710 ( .I(n609), .ZN(n628) );
  OA21D0BWP12T30P140 U711 ( .A1(n759), .A2(n628), .B(n828), .Z(n632) );
  INVD0BWP12T30P140 U712 ( .I(slot0_count[9]), .ZN(n610) );
  INVD0BWP12T30P140 U713 ( .I(n759), .ZN(n827) );
  ND2D0BWP12T30P140 U714 ( .A1(n827), .A2(n610), .ZN(n631) );
  OAI22D0BWP12T30P140 U715 ( .A1(n632), .A2(n610), .B1(n631), .B2(n609), .ZN(
        n473) );
  OAI21D0BWP12T30P140 U716 ( .A1(n612), .A2(n611), .B(slot2_count[4]), .ZN(
        n613) );
  OAI31D0BWP12T30P140 U717 ( .A1(slot2_count[4]), .A2(n800), .A3(n614), .B(
        n613), .ZN(n504) );
  OAI21D0BWP12T30P140 U718 ( .A1(n616), .A2(n615), .B(slot2_count[6]), .ZN(
        n617) );
  OAI31D0BWP12T30P140 U719 ( .A1(slot2_count[6]), .A2(n800), .A3(n618), .B(
        n617), .ZN(n502) );
  OAI21D0BWP12T30P140 U720 ( .A1(n620), .A2(n619), .B(slot2_count[8]), .ZN(
        n621) );
  OAI31D0BWP12T30P140 U721 ( .A1(slot2_count[8]), .A2(n800), .A3(n622), .B(
        n621), .ZN(n500) );
  MAOI22D0BWP12T30P140 U722 ( .A1(n837), .A2(n684), .B1(n684), .B2(
        slot1_adr[0]), .ZN(n348) );
  ND3D0BWP12T30P140 U723 ( .A1(n825), .A2(slot1_count[9]), .A3(n623), .ZN(n625) );
  INVD0BWP12T30P140 U724 ( .I(slot1_count[10]), .ZN(n624) );
  AOI32D0BWP12T30P140 U725 ( .A1(n627), .A2(slot1_count[10]), .A3(n626), .B1(
        n625), .B2(n624), .ZN(n485) );
  ND3D0BWP12T30P140 U726 ( .A1(n827), .A2(slot0_count[9]), .A3(n628), .ZN(n630) );
  INVD0BWP12T30P140 U727 ( .I(slot0_count[10]), .ZN(n629) );
  AOI32D0BWP12T30P140 U728 ( .A1(n632), .A2(slot0_count[10]), .A3(n631), .B1(
        n630), .B2(n629), .ZN(n472) );
  INVD0BWP12T30P140 U729 ( .I(slot0_adr[27]), .ZN(n633) );
  OAI22D0BWP12T30P140 U730 ( .A1(n687), .A2(n661), .B1(n633), .B2(n659), .ZN(
        n371) );
  INVD0BWP12T30P140 U731 ( .I(slot0_adr[26]), .ZN(n634) );
  OAI22D0BWP12T30P140 U732 ( .A1(n689), .A2(n661), .B1(n634), .B2(n659), .ZN(
        n375) );
  INVD0BWP12T30P140 U733 ( .I(slot0_adr[25]), .ZN(n635) );
  OAI22D0BWP12T30P140 U734 ( .A1(n691), .A2(n657), .B1(n635), .B2(n659), .ZN(
        n379) );
  INVD0BWP12T30P140 U735 ( .I(slot0_adr[24]), .ZN(n636) );
  OAI22D0BWP12T30P140 U736 ( .A1(n693), .A2(n661), .B1(n636), .B2(n659), .ZN(
        n383) );
  INVD0BWP12T30P140 U737 ( .I(slot0_adr[23]), .ZN(n637) );
  OAI22D0BWP12T30P140 U738 ( .A1(n695), .A2(n657), .B1(n637), .B2(n659), .ZN(
        n387) );
  INVD0BWP12T30P140 U739 ( .I(slot0_adr[22]), .ZN(n638) );
  OAI22D0BWP12T30P140 U740 ( .A1(n716), .A2(n661), .B1(n638), .B2(n659), .ZN(
        n391) );
  INVD0BWP12T30P140 U741 ( .I(slot0_adr[21]), .ZN(n639) );
  OAI22D0BWP12T30P140 U742 ( .A1(n697), .A2(n657), .B1(n639), .B2(n659), .ZN(
        n395) );
  INVD0BWP12T30P140 U743 ( .I(slot0_adr[20]), .ZN(n640) );
  OAI22D0BWP12T30P140 U744 ( .A1(n699), .A2(n661), .B1(n640), .B2(n659), .ZN(
        n399) );
  INVD0BWP12T30P140 U745 ( .I(slot0_adr[19]), .ZN(n641) );
  OAI22D0BWP12T30P140 U746 ( .A1(n701), .A2(n657), .B1(n641), .B2(n659), .ZN(
        n403) );
  INVD0BWP12T30P140 U747 ( .I(slot0_adr[18]), .ZN(n642) );
  OAI22D0BWP12T30P140 U748 ( .A1(n703), .A2(n661), .B1(n642), .B2(n659), .ZN(
        n407) );
  INVD0BWP12T30P140 U749 ( .I(slot0_adr[17]), .ZN(n643) );
  OAI22D0BWP12T30P140 U750 ( .A1(n706), .A2(n657), .B1(n643), .B2(n659), .ZN(
        n411) );
  INVD0BWP12T30P140 U751 ( .I(slot0_adr[16]), .ZN(n644) );
  OAI22D0BWP12T30P140 U752 ( .A1(n708), .A2(n661), .B1(n644), .B2(n659), .ZN(
        n415) );
  INVD0BWP12T30P140 U753 ( .I(slot0_adr[15]), .ZN(n645) );
  OAI22D0BWP12T30P140 U754 ( .A1(n646), .A2(n657), .B1(n645), .B2(n655), .ZN(
        n419) );
  INVD0BWP12T30P140 U755 ( .I(slot0_adr[14]), .ZN(n647) );
  OAI22D0BWP12T30P140 U756 ( .A1(n648), .A2(n657), .B1(n647), .B2(n659), .ZN(
        n423) );
  INVD0BWP12T30P140 U757 ( .I(slot0_adr[13]), .ZN(n649) );
  OAI22D0BWP12T30P140 U758 ( .A1(n650), .A2(n661), .B1(n649), .B2(n655), .ZN(
        n427) );
  INVD0BWP12T30P140 U759 ( .I(slot0_adr[12]), .ZN(n651) );
  OAI22D0BWP12T30P140 U760 ( .A1(n652), .A2(n657), .B1(n651), .B2(n655), .ZN(
        n431) );
  INVD0BWP12T30P140 U761 ( .I(slot0_adr[11]), .ZN(n653) );
  OAI22D0BWP12T30P140 U762 ( .A1(n654), .A2(n661), .B1(n653), .B2(n655), .ZN(
        n435) );
  INVD0BWP12T30P140 U763 ( .I(slot0_adr[10]), .ZN(n656) );
  OAI22D0BWP12T30P140 U764 ( .A1(n658), .A2(n657), .B1(n656), .B2(n655), .ZN(
        n439) );
  INVD0BWP12T30P140 U765 ( .I(slot0_adr[9]), .ZN(n660) );
  OAI22D0BWP12T30P140 U766 ( .A1(n662), .A2(n661), .B1(n660), .B2(n659), .ZN(
        n443) );
  INVD0BWP12T30P140 U767 ( .I(slot3_adr[29]), .ZN(n663) );
  OAI22D0BWP12T30P140 U768 ( .A1(n682), .A2(n679), .B1(n671), .B2(n663), .ZN(
        n362) );
  INVD0BWP12T30P140 U769 ( .I(slot3_adr[28]), .ZN(n664) );
  OAI22D0BWP12T30P140 U770 ( .A1(n685), .A2(n679), .B1(n677), .B2(n664), .ZN(
        n366) );
  INVD0BWP12T30P140 U771 ( .I(slot3_adr[8]), .ZN(n665) );
  OAI22D0BWP12T30P140 U772 ( .A1(n666), .A2(n679), .B1(n665), .B2(n677), .ZN(
        n446) );
  INVD0BWP12T30P140 U773 ( .I(slot3_adr[7]), .ZN(n667) );
  OAI22D0BWP12T30P140 U774 ( .A1(n668), .A2(n676), .B1(n667), .B2(n671), .ZN(
        n450) );
  INVD0BWP12T30P140 U775 ( .I(slot3_adr[6]), .ZN(n669) );
  OAI22D0BWP12T30P140 U776 ( .A1(n670), .A2(n679), .B1(n669), .B2(n677), .ZN(
        n454) );
  INVD0BWP12T30P140 U777 ( .I(slot3_adr[5]), .ZN(n672) );
  OAI22D0BWP12T30P140 U778 ( .A1(n761), .A2(n676), .B1(n672), .B2(n671), .ZN(
        n458) );
  INVD0BWP12T30P140 U779 ( .I(slot3_adr[4]), .ZN(n673) );
  OAI22D0BWP12T30P140 U780 ( .A1(n674), .A2(n679), .B1(n673), .B2(n677), .ZN(
        n462) );
  INVD0BWP12T30P140 U781 ( .I(slot3_adr[3]), .ZN(n675) );
  OAI22D0BWP12T30P140 U782 ( .A1(n766), .A2(n676), .B1(n675), .B2(n677), .ZN(
        n466) );
  INVD0BWP12T30P140 U783 ( .I(slot3_adr[2]), .ZN(n678) );
  OAI22D0BWP12T30P140 U784 ( .A1(n680), .A2(n679), .B1(n678), .B2(n677), .ZN(
        n470) );
  INVD0BWP12T30P140 U785 ( .I(slot1_adr[29]), .ZN(n681) );
  OAI22D0BWP12T30P140 U786 ( .A1(n682), .A2(n705), .B1(n684), .B2(n681), .ZN(
        n360) );
  INVD0BWP12T30P140 U787 ( .I(slot1_adr[28]), .ZN(n683) );
  OAI22D0BWP12T30P140 U788 ( .A1(n685), .A2(n705), .B1(n684), .B2(n683), .ZN(
        n364) );
  INVD0BWP12T30P140 U789 ( .I(slot1_adr[27]), .ZN(n686) );
  OAI22D0BWP12T30P140 U790 ( .A1(n687), .A2(n715), .B1(n686), .B2(n713), .ZN(
        n368) );
  INVD0BWP12T30P140 U791 ( .I(slot1_adr[26]), .ZN(n688) );
  OAI22D0BWP12T30P140 U792 ( .A1(n689), .A2(n715), .B1(n688), .B2(n713), .ZN(
        n372) );
  INVD0BWP12T30P140 U793 ( .I(slot1_adr[25]), .ZN(n690) );
  OAI22D0BWP12T30P140 U794 ( .A1(n691), .A2(n705), .B1(n690), .B2(n713), .ZN(
        n376) );
  INVD0BWP12T30P140 U795 ( .I(slot1_adr[24]), .ZN(n692) );
  OAI22D0BWP12T30P140 U796 ( .A1(n693), .A2(n715), .B1(n692), .B2(n713), .ZN(
        n380) );
  INVD0BWP12T30P140 U797 ( .I(slot1_adr[23]), .ZN(n694) );
  OAI22D0BWP12T30P140 U798 ( .A1(n695), .A2(n705), .B1(n694), .B2(n713), .ZN(
        n384) );
  INVD0BWP12T30P140 U799 ( .I(slot1_adr[21]), .ZN(n696) );
  OAI22D0BWP12T30P140 U800 ( .A1(n697), .A2(n705), .B1(n696), .B2(n713), .ZN(
        n392) );
  INVD0BWP12T30P140 U801 ( .I(slot1_adr[20]), .ZN(n698) );
  OAI22D0BWP12T30P140 U802 ( .A1(n699), .A2(n715), .B1(n698), .B2(n713), .ZN(
        n396) );
  INVD0BWP12T30P140 U803 ( .I(slot1_adr[19]), .ZN(n700) );
  OAI22D0BWP12T30P140 U804 ( .A1(n701), .A2(n705), .B1(n700), .B2(n713), .ZN(
        n400) );
  INVD0BWP12T30P140 U805 ( .I(slot1_adr[18]), .ZN(n702) );
  OAI22D0BWP12T30P140 U806 ( .A1(n703), .A2(n715), .B1(n702), .B2(n713), .ZN(
        n404) );
  INVD0BWP12T30P140 U807 ( .I(slot1_adr[17]), .ZN(n704) );
  OAI22D0BWP12T30P140 U808 ( .A1(n706), .A2(n705), .B1(n704), .B2(n713), .ZN(
        n408) );
  INVD0BWP12T30P140 U809 ( .I(slot1_adr[16]), .ZN(n707) );
  OAI22D0BWP12T30P140 U810 ( .A1(n708), .A2(n715), .B1(n707), .B2(n713), .ZN(
        n412) );
  OAI21D0BWP12T30P140 U811 ( .A1(n710), .A2(n709), .B(slot3_count[4]), .ZN(
        n711) );
  OAI31D0BWP12T30P140 U812 ( .A1(slot3_count[4]), .A2(n849), .A3(n712), .B(
        n711), .ZN(n517) );
  INVD0BWP12T30P140 U813 ( .I(slot1_adr[22]), .ZN(n714) );
  OAI22D0BWP12T30P140 U814 ( .A1(n716), .A2(n715), .B1(n714), .B2(n713), .ZN(
        n388) );
  OAI21D0BWP12T30P140 U815 ( .A1(n718), .A2(n717), .B(slot1_count[2]), .ZN(
        n719) );
  OAI31D0BWP12T30P140 U816 ( .A1(slot1_count[2]), .A2(n754), .A3(n720), .B(
        n719), .ZN(n493) );
  OAI21D0BWP12T30P140 U817 ( .A1(n722), .A2(n721), .B(slot1_count[4]), .ZN(
        n723) );
  OAI31D0BWP12T30P140 U818 ( .A1(slot1_count[4]), .A2(n754), .A3(n724), .B(
        n723), .ZN(n491) );
  OAI21D0BWP12T30P140 U819 ( .A1(n726), .A2(n725), .B(slot1_count[6]), .ZN(
        n727) );
  OAI31D0BWP12T30P140 U820 ( .A1(slot1_count[6]), .A2(n754), .A3(n728), .B(
        n727), .ZN(n489) );
  OAI21D0BWP12T30P140 U821 ( .A1(n730), .A2(n729), .B(slot0_count[2]), .ZN(
        n731) );
  OAI31D0BWP12T30P140 U822 ( .A1(slot0_count[2]), .A2(n759), .A3(n732), .B(
        n731), .ZN(n480) );
  OAI21D0BWP12T30P140 U823 ( .A1(n734), .A2(n733), .B(slot0_count[4]), .ZN(
        n735) );
  OAI31D0BWP12T30P140 U824 ( .A1(slot0_count[4]), .A2(n759), .A3(n736), .B(
        n735), .ZN(n478) );
  OAI21D0BWP12T30P140 U825 ( .A1(n738), .A2(n737), .B(slot0_count[6]), .ZN(
        n739) );
  OAI31D0BWP12T30P140 U826 ( .A1(slot0_count[6]), .A2(n759), .A3(n740), .B(
        n739), .ZN(n476) );
  AOI21D0BWP12T30P140 U827 ( .A1(tx_remaining[0]), .A2(n838), .B(n833), .ZN(
        n742) );
  INVD0BWP12T30P140 U828 ( .I(tx_remaining[1]), .ZN(n743) );
  NR3D0BWP12T30P140 U829 ( .A1(tx_remaining[1]), .A2(tx_remaining[0]), .A3(
        n835), .ZN(n808) );
  AOI21D0BWP12T30P140 U830 ( .A1(n832), .A2(csr_di[1]), .B(n808), .ZN(n741) );
  OAI21D0BWP12T30P140 U831 ( .A1(n742), .A2(n743), .B(n741), .ZN(n531) );
  ND2D0BWP12T30P140 U832 ( .A1(n838), .A2(n763), .ZN(n817) );
  OAI21D0BWP12T30P140 U833 ( .A1(n835), .A2(n743), .B(n742), .ZN(n809) );
  AOI32D0BWP12T30P140 U834 ( .A1(tx_remaining[2]), .A2(tx_remaining[3]), .A3(
        n838), .B1(n809), .B2(tx_remaining[3]), .ZN(n744) );
  OAI211D0BWP12T30P140 U835 ( .A1(n745), .A2(n811), .B(n817), .C(n744), .ZN(
        n529) );
  OAI21D0BWP12T30P140 U836 ( .A1(n747), .A2(n746), .B(slot3_count[8]), .ZN(
        n748) );
  OAI31D0BWP12T30P140 U837 ( .A1(slot3_count[8]), .A2(n849), .A3(n749), .B(
        n748), .ZN(n513) );
  OAI21D0BWP12T30P140 U838 ( .A1(n751), .A2(n750), .B(slot1_count[8]), .ZN(
        n752) );
  OAI31D0BWP12T30P140 U839 ( .A1(slot1_count[8]), .A2(n754), .A3(n753), .B(
        n752), .ZN(n487) );
  OAI21D0BWP12T30P140 U840 ( .A1(n756), .A2(n755), .B(slot0_count[8]), .ZN(
        n757) );
  OAI31D0BWP12T30P140 U841 ( .A1(slot0_count[8]), .A2(n759), .A3(n758), .B(
        n757), .ZN(n474) );
  ND2D0BWP12T30P140 U842 ( .A1(n838), .A2(n796), .ZN(n806) );
  OAI21D0BWP12T30P140 U843 ( .A1(n762), .A2(n835), .B(n842), .ZN(n812) );
  AOI32D0BWP12T30P140 U844 ( .A1(n838), .A2(tx_remaining[7]), .A3(
        tx_remaining[6]), .B1(n812), .B2(tx_remaining[7]), .ZN(n760) );
  OAI211D0BWP12T30P140 U845 ( .A1(n765), .A2(n761), .B(n806), .C(n760), .ZN(
        n525) );
  ND2D0BWP12T30P140 U846 ( .A1(n838), .A2(n762), .ZN(n814) );
  OAI21D0BWP12T30P140 U847 ( .A1(n763), .A2(n835), .B(n842), .ZN(n815) );
  AOI32D0BWP12T30P140 U848 ( .A1(n838), .A2(tx_remaining[5]), .A3(
        tx_remaining[4]), .B1(n815), .B2(tx_remaining[5]), .ZN(n764) );
  OAI211D0BWP12T30P140 U849 ( .A1(n766), .A2(n765), .B(n814), .C(n764), .ZN(
        n527) );
  AOI221D0BWP12T30P140 U850 ( .A1(n769), .A2(n768), .B1(n767), .B2(n844), .C(
        n18), .ZN(n497) );
  AOI22D0BWP12T30P140 U851 ( .A1(tx_adr[0]), .A2(n772), .B1(n771), .B2(n770), 
        .ZN(n773) );
  OAI21D0BWP12T30P140 U852 ( .A1(n774), .A2(n837), .B(n773), .ZN(n562) );
  AOI22D0BWP12T30P140 U853 ( .A1(tx_adr[9]), .A2(n775), .B1(n821), .B2(
        csr_di[11]), .ZN(n776) );
  OAI21D0BWP12T30P140 U854 ( .A1(tx_adr[9]), .A2(n777), .B(n776), .ZN(n553) );
  OAI21D0BWP12T30P140 U855 ( .A1(n778), .A2(n790), .B(n818), .ZN(n779) );
  AOI22D0BWP12T30P140 U856 ( .A1(tx_adr[13]), .A2(n779), .B1(n792), .B2(
        csr_di[15]), .ZN(n780) );
  OAI21D0BWP12T30P140 U857 ( .A1(tx_adr[13]), .A2(n781), .B(n780), .ZN(n549)
         );
  OAI21D0BWP12T30P140 U858 ( .A1(n782), .A2(n790), .B(n818), .ZN(n783) );
  AOI22D0BWP12T30P140 U859 ( .A1(tx_adr[17]), .A2(n783), .B1(n792), .B2(
        csr_di[19]), .ZN(n784) );
  OAI21D0BWP12T30P140 U860 ( .A1(tx_adr[17]), .A2(n785), .B(n784), .ZN(n545)
         );
  OAI21D0BWP12T30P140 U861 ( .A1(n786), .A2(n790), .B(n818), .ZN(n787) );
  AOI22D0BWP12T30P140 U862 ( .A1(tx_adr[21]), .A2(n787), .B1(n792), .B2(
        csr_di[23]), .ZN(n788) );
  OAI21D0BWP12T30P140 U863 ( .A1(tx_adr[21]), .A2(n789), .B(n788), .ZN(n541)
         );
  OAI21D0BWP12T30P140 U864 ( .A1(n791), .A2(n790), .B(n818), .ZN(n793) );
  AOI22D0BWP12T30P140 U865 ( .A1(tx_adr[25]), .A2(n793), .B1(n792), .B2(
        csr_di[27]), .ZN(n794) );
  OAI21D0BWP12T30P140 U866 ( .A1(tx_adr[25]), .A2(n795), .B(n794), .ZN(n537)
         );
  OAI21D0BWP12T30P140 U867 ( .A1(n796), .A2(n835), .B(n842), .ZN(n797) );
  AOI22D0BWP12T30P140 U868 ( .A1(csr_di[8]), .A2(n832), .B1(tx_remaining[8]), 
        .B2(n797), .ZN(n798) );
  OAI21D0BWP12T30P140 U869 ( .A1(tx_remaining[8]), .A2(n806), .B(n798), .ZN(
        n524) );
  AOI22D0BWP12T30P140 U870 ( .A1(slot2_count[0]), .A2(n801), .B1(n800), .B2(
        n799), .ZN(n508) );
  AOI22D0BWP12T30P140 U871 ( .A1(slot3_count[0]), .A2(n803), .B1(n849), .B2(
        n802), .ZN(n521) );
  AOI22D0BWP12T30P140 U872 ( .A1(n832), .A2(csr_di[9]), .B1(tx_remaining[9]), 
        .B2(n804), .ZN(n805) );
  OAI31D0BWP12T30P140 U873 ( .A1(tx_remaining[9]), .A2(tx_remaining[8]), .A3(
        n806), .B(n805), .ZN(n523) );
  INVD0BWP12T30P140 U874 ( .I(tx_remaining[2]), .ZN(n807) );
  AOI22D0BWP12T30P140 U875 ( .A1(tx_remaining[2]), .A2(n809), .B1(n808), .B2(
        n807), .ZN(n810) );
  OAI21D0BWP12T30P140 U876 ( .A1(n811), .A2(n837), .B(n810), .ZN(n530) );
  AOI22D0BWP12T30P140 U877 ( .A1(csr_di[6]), .A2(n832), .B1(tx_remaining[6]), 
        .B2(n812), .ZN(n813) );
  OAI21D0BWP12T30P140 U878 ( .A1(tx_remaining[6]), .A2(n814), .B(n813), .ZN(
        n526) );
  AOI22D0BWP12T30P140 U879 ( .A1(csr_di[4]), .A2(n832), .B1(tx_remaining[4]), 
        .B2(n815), .ZN(n816) );
  OAI21D0BWP12T30P140 U880 ( .A1(tx_remaining[4]), .A2(n817), .B(n816), .ZN(
        n528) );
  OAI21D0BWP12T30P140 U881 ( .A1(n820), .A2(n819), .B(n818), .ZN(n822) );
  AOI22D0BWP12T30P140 U882 ( .A1(tx_adr[5]), .A2(n822), .B1(n821), .B2(
        csr_di[7]), .ZN(n823) );
  OAI21D0BWP12T30P140 U883 ( .A1(tx_adr[5]), .A2(n824), .B(n823), .ZN(n557) );
  MAOI22D0BWP12T30P140 U884 ( .A1(slot1_count[0]), .A2(n826), .B1(n825), .B2(
        slot1_count[0]), .ZN(n495) );
  MAOI22D0BWP12T30P140 U885 ( .A1(slot0_count[0]), .A2(n828), .B1(n827), .B2(
        slot0_count[0]), .ZN(n482) );
  AOI221D0BWP12T30P140 U886 ( .A1(n831), .A2(n830), .B1(n829), .B2(n844), .C(
        n16), .ZN(n484) );
  AOI22D0BWP12T30P140 U887 ( .A1(tx_remaining[0]), .A2(n833), .B1(n832), .B2(
        csr_di[0]), .ZN(n834) );
  OAI21D0BWP12T30P140 U888 ( .A1(tx_remaining[0]), .A2(n835), .B(n834), .ZN(
        n532) );
  INVD0BWP12T30P140 U889 ( .I(tx_bytecount[0]), .ZN(n836) );
  ND2D0BWP12T30P140 U890 ( .A1(n838), .A2(n836), .ZN(n841) );
  OAI21D0BWP12T30P140 U891 ( .A1(n842), .A2(n836), .B(n841), .ZN(n564) );
  MAOI22D0BWP12T30P140 U892 ( .A1(n837), .A2(n843), .B1(n843), .B2(mii_data_oe), .ZN(n351) );
  ND2D0BWP12T30P140 U893 ( .A1(n838), .A2(tx_bytecount[0]), .ZN(n840) );
  INVD0BWP12T30P140 U894 ( .I(tx_bytecount[1]), .ZN(n839) );
  AOI32D0BWP12T30P140 U895 ( .A1(n842), .A2(tx_bytecount[1]), .A3(n841), .B1(
        n840), .B2(n839), .ZN(n563) );
  MAOI22D0BWP12T30P140 U896 ( .A1(n844), .A2(n843), .B1(n843), .B2(mii_data_do), .ZN(n352) );
  OAI21D0BWP12T30P140 U897 ( .A1(n846), .A2(n845), .B(slot3_count[2]), .ZN(
        n847) );
  OAI31D0BWP12T30P140 U898 ( .A1(slot3_count[2]), .A2(n849), .A3(n848), .B(
        n847), .ZN(n519) );
  AOI22D0BWP12T30P140 U899 ( .A1(n854), .A2(slot3_adr[29]), .B1(n853), .B2(
        slot2_adr[29]), .ZN(n852) );
  AOI22D0BWP12T30P140 U900 ( .A1(n856), .A2(slot1_adr[29]), .B1(n850), .B2(
        slot0_adr[29]), .ZN(n851) );
  ND2D0BWP12T30P140 U901 ( .A1(n852), .A2(n851), .ZN(N537) );
  AOI22D0BWP12T30P140 U902 ( .A1(n854), .A2(slot3_adr[28]), .B1(n853), .B2(
        slot2_adr[28]), .ZN(n858) );
  AOI22D0BWP12T30P140 U903 ( .A1(n856), .A2(slot1_adr[28]), .B1(n855), .B2(
        slot0_adr[28]), .ZN(n857) );
  ND2D0BWP12T30P140 U904 ( .A1(n858), .A2(n857), .ZN(N536) );
  AOI22D0BWP12T30P140 U905 ( .A1(n931), .A2(slot0_adr[0]), .B1(n930), .B2(
        slot1_adr[0]), .ZN(n860) );
  AOI22D0BWP12T30P140 U906 ( .A1(n933), .A2(slot3_adr[0]), .B1(n932), .B2(
        slot2_adr[0]), .ZN(n859) );
  ND2D0BWP12T30P140 U907 ( .A1(n860), .A2(n859), .ZN(rx_adr[0]) );
  INVD0BWP12T30P140 U908 ( .I(n861), .ZN(n919) );
  AOI22D0BWP12T30P140 U909 ( .A1(n931), .A2(slot0_adr[25]), .B1(n919), .B2(
        slot1_adr[25]), .ZN(n865) );
  INVD0BWP12T30P140 U910 ( .I(n862), .ZN(n921) );
  INVD0BWP12T30P140 U911 ( .I(n863), .ZN(n920) );
  AOI22D0BWP12T30P140 U912 ( .A1(n921), .A2(slot3_adr[25]), .B1(n920), .B2(
        slot2_adr[25]), .ZN(n864) );
  ND2D0BWP12T30P140 U913 ( .A1(n865), .A2(n864), .ZN(rx_adr[25]) );
  AOI22D0BWP12T30P140 U914 ( .A1(n931), .A2(slot0_adr[21]), .B1(n919), .B2(
        slot1_adr[21]), .ZN(n867) );
  AOI22D0BWP12T30P140 U915 ( .A1(n921), .A2(slot3_adr[21]), .B1(n920), .B2(
        slot2_adr[21]), .ZN(n866) );
  ND2D0BWP12T30P140 U916 ( .A1(n867), .A2(n866), .ZN(rx_adr[21]) );
  AOI22D0BWP12T30P140 U917 ( .A1(n931), .A2(slot0_adr[17]), .B1(n919), .B2(
        slot1_adr[17]), .ZN(n869) );
  AOI22D0BWP12T30P140 U918 ( .A1(n921), .A2(slot3_adr[17]), .B1(n920), .B2(
        slot2_adr[17]), .ZN(n868) );
  ND2D0BWP12T30P140 U919 ( .A1(n869), .A2(n868), .ZN(rx_adr[17]) );
  AOI22D0BWP12T30P140 U920 ( .A1(n931), .A2(slot0_adr[13]), .B1(n930), .B2(
        slot1_adr[13]), .ZN(n871) );
  AOI22D0BWP12T30P140 U921 ( .A1(n933), .A2(slot3_adr[13]), .B1(n932), .B2(
        slot2_adr[13]), .ZN(n870) );
  ND2D0BWP12T30P140 U922 ( .A1(n871), .A2(n870), .ZN(rx_adr[13]) );
  AOI22D0BWP12T30P140 U923 ( .A1(slot0_state[0]), .A2(slot0_adr[9]), .B1(n930), 
        .B2(slot1_adr[9]), .ZN(n873) );
  AOI22D0BWP12T30P140 U924 ( .A1(n933), .A2(slot3_adr[9]), .B1(n932), .B2(
        slot2_adr[9]), .ZN(n872) );
  ND2D0BWP12T30P140 U925 ( .A1(n873), .A2(n872), .ZN(rx_adr[9]) );
  AOI22D0BWP12T30P140 U926 ( .A1(slot0_state[0]), .A2(slot0_adr[1]), .B1(n930), 
        .B2(slot1_adr[1]), .ZN(n875) );
  AOI22D0BWP12T30P140 U927 ( .A1(n933), .A2(slot3_adr[1]), .B1(n932), .B2(
        slot2_adr[1]), .ZN(n874) );
  ND2D0BWP12T30P140 U928 ( .A1(n875), .A2(n874), .ZN(rx_adr[1]) );
  AOI22D0BWP12T30P140 U929 ( .A1(slot0_state[0]), .A2(slot0_adr[5]), .B1(n930), 
        .B2(slot1_adr[5]), .ZN(n877) );
  AOI22D0BWP12T30P140 U930 ( .A1(n933), .A2(slot3_adr[5]), .B1(n932), .B2(
        slot2_adr[5]), .ZN(n876) );
  ND2D0BWP12T30P140 U931 ( .A1(n877), .A2(n876), .ZN(rx_adr[5]) );
  AOI22D0BWP12T30P140 U932 ( .A1(slot0_state[0]), .A2(slot0_adr[24]), .B1(n919), .B2(slot1_adr[24]), .ZN(n879) );
  AOI22D0BWP12T30P140 U933 ( .A1(n921), .A2(slot3_adr[24]), .B1(n920), .B2(
        slot2_adr[24]), .ZN(n878) );
  ND2D0BWP12T30P140 U934 ( .A1(n879), .A2(n878), .ZN(rx_adr[24]) );
  AOI22D0BWP12T30P140 U935 ( .A1(slot0_state[0]), .A2(slot0_adr[20]), .B1(n919), .B2(slot1_adr[20]), .ZN(n881) );
  AOI22D0BWP12T30P140 U936 ( .A1(n921), .A2(slot3_adr[20]), .B1(n920), .B2(
        slot2_adr[20]), .ZN(n880) );
  ND2D0BWP12T30P140 U937 ( .A1(n881), .A2(n880), .ZN(rx_adr[20]) );
  AOI22D0BWP12T30P140 U938 ( .A1(slot0_state[0]), .A2(slot0_adr[16]), .B1(n919), .B2(slot1_adr[16]), .ZN(n883) );
  AOI22D0BWP12T30P140 U939 ( .A1(n921), .A2(slot3_adr[16]), .B1(n920), .B2(
        slot2_adr[16]), .ZN(n882) );
  ND2D0BWP12T30P140 U940 ( .A1(n883), .A2(n882), .ZN(rx_adr[16]) );
  AOI22D0BWP12T30P140 U941 ( .A1(n931), .A2(slot0_adr[12]), .B1(n930), .B2(
        slot1_adr[12]), .ZN(n885) );
  AOI22D0BWP12T30P140 U942 ( .A1(n933), .A2(slot3_adr[12]), .B1(n932), .B2(
        slot2_adr[12]), .ZN(n884) );
  ND2D0BWP12T30P140 U943 ( .A1(n885), .A2(n884), .ZN(rx_adr[12]) );
  AOI22D0BWP12T30P140 U944 ( .A1(n931), .A2(slot0_adr[27]), .B1(n919), .B2(
        slot1_adr[27]), .ZN(n887) );
  AOI22D0BWP12T30P140 U945 ( .A1(n921), .A2(slot3_adr[27]), .B1(n920), .B2(
        slot2_adr[27]), .ZN(n886) );
  ND2D0BWP12T30P140 U946 ( .A1(n887), .A2(n886), .ZN(rx_adr[27]) );
  AOI22D0BWP12T30P140 U947 ( .A1(n931), .A2(slot0_adr[28]), .B1(n919), .B2(
        slot1_adr[28]), .ZN(n889) );
  AOI22D0BWP12T30P140 U948 ( .A1(n921), .A2(slot3_adr[28]), .B1(n920), .B2(
        slot2_adr[28]), .ZN(n888) );
  ND2D0BWP12T30P140 U949 ( .A1(n889), .A2(n888), .ZN(rx_adr[28]) );
  AOI22D0BWP12T30P140 U950 ( .A1(slot0_state[0]), .A2(slot0_adr[23]), .B1(n919), .B2(slot1_adr[23]), .ZN(n891) );
  AOI22D0BWP12T30P140 U951 ( .A1(n921), .A2(slot3_adr[23]), .B1(n920), .B2(
        slot2_adr[23]), .ZN(n890) );
  ND2D0BWP12T30P140 U952 ( .A1(n891), .A2(n890), .ZN(rx_adr[23]) );
  AOI22D0BWP12T30P140 U953 ( .A1(n931), .A2(slot0_adr[19]), .B1(n919), .B2(
        slot1_adr[19]), .ZN(n893) );
  AOI22D0BWP12T30P140 U954 ( .A1(n921), .A2(slot3_adr[19]), .B1(n920), .B2(
        slot2_adr[19]), .ZN(n892) );
  ND2D0BWP12T30P140 U955 ( .A1(n893), .A2(n892), .ZN(rx_adr[19]) );
  ND2D0BWP12T30P140 U956 ( .A1(n895), .A2(n894), .ZN(n897) );
  INVD0BWP12T30P140 U957 ( .I(n897), .ZN(n898) );
  AOI21D0BWP12T30P140 U958 ( .A1(tx_rst), .A2(n897), .B(sys_rst), .ZN(n896) );
  IOA21D0BWP12T30P140 U959 ( .A1(csr_di[1]), .A2(n898), .B(n896), .ZN(n346) );
  AOI221D0BWP12T30P140 U960 ( .A1(csr_di[0]), .A2(n898), .B1(rx_rst), .B2(n897), .C(fifo_full), .ZN(n900) );
  ND2D0BWP12T30P140 U961 ( .A1(n900), .A2(n899), .ZN(n345) );
  AOI22D0BWP12T30P140 U962 ( .A1(n931), .A2(slot0_adr[15]), .B1(n919), .B2(
        slot1_adr[15]), .ZN(n902) );
  AOI22D0BWP12T30P140 U963 ( .A1(n921), .A2(slot3_adr[15]), .B1(n920), .B2(
        slot2_adr[15]), .ZN(n901) );
  ND2D0BWP12T30P140 U964 ( .A1(n902), .A2(n901), .ZN(rx_adr[15]) );
  AOI22D0BWP12T30P140 U965 ( .A1(n931), .A2(slot0_adr[26]), .B1(n919), .B2(
        slot1_adr[26]), .ZN(n904) );
  AOI22D0BWP12T30P140 U966 ( .A1(n921), .A2(slot3_adr[26]), .B1(n920), .B2(
        slot2_adr[26]), .ZN(n903) );
  ND2D0BWP12T30P140 U967 ( .A1(n904), .A2(n903), .ZN(rx_adr[26]) );
  AOI22D0BWP12T30P140 U968 ( .A1(n931), .A2(slot0_adr[29]), .B1(n930), .B2(
        slot1_adr[29]), .ZN(n906) );
  AOI22D0BWP12T30P140 U969 ( .A1(n933), .A2(slot3_adr[29]), .B1(n932), .B2(
        slot2_adr[29]), .ZN(n905) );
  ND2D0BWP12T30P140 U970 ( .A1(n906), .A2(n905), .ZN(rx_adr[29]) );
  AOI22D0BWP12T30P140 U971 ( .A1(n931), .A2(slot0_adr[4]), .B1(n930), .B2(
        slot1_adr[4]), .ZN(n908) );
  AOI22D0BWP12T30P140 U972 ( .A1(n933), .A2(slot3_adr[4]), .B1(n932), .B2(
        slot2_adr[4]), .ZN(n907) );
  ND2D0BWP12T30P140 U973 ( .A1(n908), .A2(n907), .ZN(rx_adr[4]) );
  AOI22D0BWP12T30P140 U974 ( .A1(slot0_state[0]), .A2(slot0_adr[8]), .B1(n930), 
        .B2(slot1_adr[8]), .ZN(n910) );
  AOI22D0BWP12T30P140 U975 ( .A1(n933), .A2(slot3_adr[8]), .B1(n932), .B2(
        slot2_adr[8]), .ZN(n909) );
  ND2D0BWP12T30P140 U976 ( .A1(n910), .A2(n909), .ZN(rx_adr[8]) );
  AOI22D0BWP12T30P140 U977 ( .A1(slot0_state[0]), .A2(slot0_adr[6]), .B1(n919), 
        .B2(slot1_adr[6]), .ZN(n912) );
  AOI22D0BWP12T30P140 U978 ( .A1(n921), .A2(slot3_adr[6]), .B1(n920), .B2(
        slot2_adr[6]), .ZN(n911) );
  ND2D0BWP12T30P140 U979 ( .A1(n912), .A2(n911), .ZN(rx_adr[6]) );
  AOI22D0BWP12T30P140 U980 ( .A1(n931), .A2(slot0_adr[10]), .B1(n930), .B2(
        slot1_adr[10]), .ZN(n914) );
  AOI22D0BWP12T30P140 U981 ( .A1(n933), .A2(slot3_adr[10]), .B1(n932), .B2(
        slot2_adr[10]), .ZN(n913) );
  ND2D0BWP12T30P140 U982 ( .A1(n914), .A2(n913), .ZN(rx_adr[10]) );
  AOI22D0BWP12T30P140 U983 ( .A1(slot0_state[0]), .A2(slot0_adr[14]), .B1(n919), .B2(slot1_adr[14]), .ZN(n916) );
  AOI22D0BWP12T30P140 U984 ( .A1(n921), .A2(slot3_adr[14]), .B1(n920), .B2(
        slot2_adr[14]), .ZN(n915) );
  ND2D0BWP12T30P140 U985 ( .A1(n916), .A2(n915), .ZN(rx_adr[14]) );
  AOI22D0BWP12T30P140 U986 ( .A1(slot0_state[0]), .A2(slot0_adr[18]), .B1(n919), .B2(slot1_adr[18]), .ZN(n918) );
  AOI22D0BWP12T30P140 U987 ( .A1(n921), .A2(slot3_adr[18]), .B1(n920), .B2(
        slot2_adr[18]), .ZN(n917) );
  ND2D0BWP12T30P140 U988 ( .A1(n918), .A2(n917), .ZN(rx_adr[18]) );
  AOI22D0BWP12T30P140 U989 ( .A1(slot0_state[0]), .A2(slot0_adr[22]), .B1(n919), .B2(slot1_adr[22]), .ZN(n923) );
  AOI22D0BWP12T30P140 U990 ( .A1(n921), .A2(slot3_adr[22]), .B1(n920), .B2(
        slot2_adr[22]), .ZN(n922) );
  ND2D0BWP12T30P140 U991 ( .A1(n923), .A2(n922), .ZN(rx_adr[22]) );
  AOI22D0BWP12T30P140 U992 ( .A1(slot0_state[0]), .A2(slot0_adr[11]), .B1(n930), .B2(slot1_adr[11]), .ZN(n925) );
  AOI22D0BWP12T30P140 U993 ( .A1(n933), .A2(slot3_adr[11]), .B1(n932), .B2(
        slot2_adr[11]), .ZN(n924) );
  ND2D0BWP12T30P140 U994 ( .A1(n925), .A2(n924), .ZN(rx_adr[11]) );
  AOI22D0BWP12T30P140 U995 ( .A1(slot0_state[0]), .A2(slot0_adr[3]), .B1(n930), 
        .B2(slot1_adr[3]), .ZN(n927) );
  AOI22D0BWP12T30P140 U996 ( .A1(n933), .A2(slot3_adr[3]), .B1(n932), .B2(
        slot2_adr[3]), .ZN(n926) );
  ND2D0BWP12T30P140 U997 ( .A1(n927), .A2(n926), .ZN(rx_adr[3]) );
  AOI22D0BWP12T30P140 U998 ( .A1(n931), .A2(slot0_adr[7]), .B1(n930), .B2(
        slot1_adr[7]), .ZN(n929) );
  AOI22D0BWP12T30P140 U999 ( .A1(n933), .A2(slot3_adr[7]), .B1(n932), .B2(
        slot2_adr[7]), .ZN(n928) );
  ND2D0BWP12T30P140 U1000 ( .A1(n929), .A2(n928), .ZN(rx_adr[7]) );
  AOI22D0BWP12T30P140 U1001 ( .A1(n931), .A2(slot0_adr[2]), .B1(n930), .B2(
        slot1_adr[2]), .ZN(n935) );
  AOI22D0BWP12T30P140 U1002 ( .A1(n933), .A2(slot3_adr[2]), .B1(n932), .B2(
        slot2_adr[2]), .ZN(n934) );
  ND2D0BWP12T30P140 U1003 ( .A1(n935), .A2(n934), .ZN(rx_adr[2]) );
  NR3D0BWP12T30P140 U1004 ( .A1(slot0_state[0]), .A2(slot1_state[0]), .A3(
        slot2_state[0]), .ZN(n937) );
  ND2D0BWP12T30P140 U1005 ( .A1(n937), .A2(n936), .ZN(rx_valid) );
  INR3D1BWP12T30P140 U1006 ( .A1(tx_valid_r), .B1(sys_rst), .B2(tx_valid), 
        .ZN(N688) );
endmodule


module minimac_rxfifo ( sys_clk, rx_rst, phy_rx_clk, phy_rx_data, phy_dv, 
        phy_rx_er, empty, ack, eof, data, fifo_full );
  input [3:0] phy_rx_data;
  output [7:0] data;
  input sys_clk, rx_rst, phy_rx_clk, phy_dv, phy_rx_er, ack;
  output empty, eof, fifo_full;
  wire   full, fifo_we, fifo_full1, rx_rst2, rx_rst1, hi_nibble, abort,
         phy_dv_r, N48, N49, N50, N51, N52, N53, N54, N55, N56, N61, n1, n2,
         n3, n4, n5, n6, n7, n8, n21, n22, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n23;
  wire   [8:0] fifo_in;

  asfifo fifo ( .data_out({eof, data}), .empty(empty), .read_en(ack), 
        .clk_read(sys_clk), .data_in(fifo_in), .full(full), .write_en(fifo_we), 
        .clk_write(phy_rx_clk), .rst(rx_rst) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(fifo_in[0]), .I1(N56), .S(N55), .Z(n8) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(fifo_in[1]), .I1(N52), .S(N55), .Z(n7) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(fifo_in[2]), .I1(N53), .S(N55), .Z(n6) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(fifo_in[3]), .I1(N54), .S(N55), .Z(n5) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(fifo_in[4]), .I1(N51), .S(N50), .Z(n4) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(fifo_in[5]), .I1(N52), .S(N50), .Z(n3) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(fifo_in[6]), .I1(N53), .S(N50), .Z(n2) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(fifo_in[7]), .I1(N54), .S(N50), .Z(n1) );
  DFQD2BWP12T30P140 fifo_eof_reg ( .D(N49), .CP(phy_rx_clk), .Q(fifo_in[8]) );
  DFQD2BWP12T30P140 fifo_we_reg ( .D(N48), .CP(phy_rx_clk), .Q(fifo_we) );
  DFQD2BWP12T30P140 fifo_full_reg ( .D(fifo_full1), .CP(sys_clk), .Q(fifo_full) );
  DFQD2BWP12T30P140 fifo_lo_reg_0_ ( .D(n8), .CP(phy_rx_clk), .Q(fifo_in[0])
         );
  DFQD2BWP12T30P140 fifo_lo_reg_1_ ( .D(n7), .CP(phy_rx_clk), .Q(fifo_in[1])
         );
  DFQD2BWP12T30P140 fifo_lo_reg_2_ ( .D(n6), .CP(phy_rx_clk), .Q(fifo_in[2])
         );
  DFQD2BWP12T30P140 fifo_lo_reg_3_ ( .D(n5), .CP(phy_rx_clk), .Q(fifo_in[3])
         );
  DFQD2BWP12T30P140 fifo_hi_reg_0_ ( .D(n4), .CP(phy_rx_clk), .Q(fifo_in[4])
         );
  DFQD2BWP12T30P140 fifo_hi_reg_1_ ( .D(n3), .CP(phy_rx_clk), .Q(fifo_in[5])
         );
  DFQD2BWP12T30P140 fifo_hi_reg_2_ ( .D(n2), .CP(phy_rx_clk), .Q(fifo_in[6])
         );
  DFQD2BWP12T30P140 abort_reg ( .D(n21), .CP(phy_rx_clk), .Q(abort) );
  DFQD2BWP12T30P140 phy_dv_r_reg ( .D(N61), .CP(phy_rx_clk), .Q(phy_dv_r) );
  DFQD2BWP12T30P140 hi_nibble_reg ( .D(n22), .CP(phy_rx_clk), .Q(hi_nibble) );
  DFQD2BWP12T30P140 rx_rst1_reg ( .D(rx_rst), .CP(phy_rx_clk), .Q(rx_rst1) );
  DFQD2BWP12T30P140 fifo_full1_reg ( .D(full), .CP(sys_clk), .Q(fifo_full1) );
  DFQD2BWP12T30P140 rx_rst2_reg ( .D(rx_rst1), .CP(phy_rx_clk), .Q(rx_rst2) );
  DFQD1BWP12T30P140 fifo_hi_reg_3_ ( .D(n1), .CP(phy_rx_clk), .Q(fifo_in[7])
         );
  ND2D0BWP12T30P140 U11 ( .A1(phy_dv), .A2(phy_rx_er), .ZN(n13) );
  INVD0BWP12T30P140 U12 ( .I(abort), .ZN(n17) );
  INVD0BWP12T30P140 U13 ( .I(phy_dv), .ZN(n10) );
  ND3D0BWP12T30P140 U14 ( .A1(n17), .A2(n10), .A3(phy_dv_r), .ZN(n9) );
  ND2D0BWP12T30P140 U15 ( .A1(n13), .A2(n9), .ZN(n14) );
  NR2D0BWP12T30P140 U16 ( .A1(rx_rst2), .A2(n14), .ZN(n16) );
  OAI21D0BWP12T30P140 U17 ( .A1(abort), .A2(hi_nibble), .B(n16), .ZN(N55) );
  INVD0BWP12T30P140 U18 ( .I(n13), .ZN(n20) );
  INVD0BWP12T30P140 U19 ( .I(rx_rst2), .ZN(n12) );
  OA211D0BWP12T30P140 U20 ( .A1(n20), .A2(phy_rx_data[0]), .B(n12), .C(n9), 
        .Z(N56) );
  AN2D0BWP12T30P140 U21 ( .A1(n16), .A2(phy_rx_data[0]), .Z(N51) );
  AN2D0BWP12T30P140 U22 ( .A1(n16), .A2(phy_rx_data[1]), .Z(N52) );
  AN2D0BWP12T30P140 U23 ( .A1(n16), .A2(phy_rx_data[2]), .Z(N53) );
  AN2D0BWP12T30P140 U24 ( .A1(n16), .A2(phy_rx_data[3]), .Z(N54) );
  NR2D0BWP12T30P140 U25 ( .A1(rx_rst2), .A2(n10), .ZN(N61) );
  ND2D0BWP12T30P140 U26 ( .A1(phy_dv_r), .A2(n10), .ZN(n11) );
  ND2D0BWP12T30P140 U27 ( .A1(n12), .A2(n11), .ZN(n18) );
  AOI21D0BWP12T30P140 U28 ( .A1(n13), .A2(n17), .B(n18), .ZN(n21) );
  INVD0BWP12T30P140 U29 ( .I(n14), .ZN(n15) );
  ND2D0BWP12T30P140 U30 ( .A1(hi_nibble), .A2(n17), .ZN(n23) );
  AOI21D0BWP12T30P140 U31 ( .A1(n15), .A2(n23), .B(rx_rst2), .ZN(N48) );
  NR2D0BWP12T30P140 U32 ( .A1(n15), .A2(rx_rst2), .ZN(N49) );
  ND2D0BWP12T30P140 U33 ( .A1(n16), .A2(n23), .ZN(N50) );
  AOI21D0BWP12T30P140 U34 ( .A1(phy_dv), .A2(n17), .B(hi_nibble), .ZN(n19) );
  INR4D0BWP12T30P140 U35 ( .A1(n23), .B1(n20), .B2(n19), .B3(n18), .ZN(n22) );
endmodule


module minimac_rx ( sys_clk, sys_rst, rx_rst, wbm_adr_o, wbm_cyc_o, wbm_stb_o, 
        wbm_ack_i, wbm_dat_o, rx_valid, rx_adr, rx_resetcount, rx_incrcount, 
        rx_endframe, fifo_full, phy_rx_clk, phy_rx_data, phy_dv, phy_rx_er );
  output [31:0] wbm_adr_o;
  output [31:0] wbm_dat_o;
  input [29:0] rx_adr;
  input [3:0] phy_rx_data;
  input sys_clk, sys_rst, rx_rst, wbm_ack_i, rx_valid, phy_rx_clk, phy_dv,
         phy_rx_er;
  output wbm_cyc_o, wbm_stb_o, rx_resetcount, rx_incrcount, rx_endframe,
         fifo_full;
  wire   fifo_empty, fifo_ack, fifo_eof, in_frame, n56, n57, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n58, n59, n60, n61, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272;
  wire   [7:0] fifo_data;
  wire   [1:0] loadbyte_counter;
  wire   [10:0] maxcount;
  wire   [2:0] state;

  minimac_rxfifo rxfifo ( .sys_clk(sys_clk), .rx_rst(rx_rst), .phy_rx_clk(
        phy_rx_clk), .phy_rx_data(phy_rx_data), .phy_dv(phy_dv), .phy_rx_er(
        phy_rx_er), .empty(fifo_empty), .ack(fifo_ack), .eof(fifo_eof), .data(
        fifo_data), .fifo_full(fifo_full) );
  AO21D0BWP12T30P140 U145 ( .A1(n57), .A2(n56), .B(rx_incrcount), .Z(fifo_ack)
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_0_ ( .D(n123), .CP(n4), .Q(wbm_dat_o[0]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_1_ ( .D(n119), .CP(n3), .Q(wbm_dat_o[1]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_2_ ( .D(n115), .CP(n2), .Q(wbm_dat_o[2]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_3_ ( .D(n111), .CP(n5), .Q(wbm_dat_o[3]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_4_ ( .D(n107), .CP(n4), .Q(wbm_dat_o[4]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_5_ ( .D(n103), .CP(n3), .Q(wbm_dat_o[5]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_6_ ( .D(n99), .CP(n2), .Q(wbm_dat_o[6]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_7_ ( .D(n95), .CP(n5), .Q(wbm_dat_o[7]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_16_ ( .D(n121), .CP(n4), .Q(wbm_dat_o[16])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_17_ ( .D(n117), .CP(n3), .Q(wbm_dat_o[17])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_18_ ( .D(n113), .CP(n2), .Q(wbm_dat_o[18])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_19_ ( .D(n109), .CP(n5), .Q(wbm_dat_o[19])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_21_ ( .D(n101), .CP(n3), .Q(wbm_dat_o[21])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_22_ ( .D(n97), .CP(n2), .Q(wbm_dat_o[22]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_23_ ( .D(n93), .CP(n5), .Q(wbm_dat_o[23]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_8_ ( .D(n122), .CP(n4), .Q(wbm_dat_o[8]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_9_ ( .D(n118), .CP(n3), .Q(wbm_dat_o[9]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_10_ ( .D(n114), .CP(n2), .Q(wbm_dat_o[10])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_11_ ( .D(n110), .CP(n5), .Q(wbm_dat_o[11])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_12_ ( .D(n106), .CP(n4), .Q(wbm_dat_o[12])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_13_ ( .D(n102), .CP(n3), .Q(wbm_dat_o[13])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_14_ ( .D(n98), .CP(n2), .Q(wbm_dat_o[14]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_15_ ( .D(n94), .CP(n5), .Q(wbm_dat_o[15]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_24_ ( .D(n120), .CP(n4), .Q(wbm_dat_o[24])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_25_ ( .D(n116), .CP(n3), .Q(wbm_dat_o[25])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_26_ ( .D(n112), .CP(n2), .Q(wbm_dat_o[26])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_28_ ( .D(n104), .CP(n4), .Q(wbm_dat_o[28])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_29_ ( .D(n100), .CP(n3), .Q(wbm_dat_o[29])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_30_ ( .D(n96), .CP(n2), .Q(wbm_dat_o[30]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_31_ ( .D(n92), .CP(n5), .Q(wbm_dat_o[31]) );
  DFQD2BWP12T30P140 maxcount_reg_8_ ( .D(n128), .CP(n4), .Q(maxcount[8]) );
  DFQD2BWP12T30P140 adr_reg_29_ ( .D(n62), .CP(n3), .Q(wbm_adr_o[31]) );
  DFQD2BWP12T30P140 adr_reg_4_ ( .D(n87), .CP(n2), .Q(wbm_adr_o[6]) );
  DFQD2BWP12T30P140 adr_reg_8_ ( .D(n83), .CP(n5), .Q(wbm_adr_o[10]) );
  DFQD2BWP12T30P140 maxcount_reg_7_ ( .D(n129), .CP(n4), .Q(maxcount[7]) );
  DFQD2BWP12T30P140 maxcount_reg_3_ ( .D(n133), .CP(n3), .Q(maxcount[3]) );
  DFQD2BWP12T30P140 maxcount_reg_5_ ( .D(n131), .CP(n2), .Q(maxcount[5]) );
  DFQD2BWP12T30P140 adr_reg_6_ ( .D(n85), .CP(n5), .Q(wbm_adr_o[8]) );
  DFQD2BWP12T30P140 adr_reg_10_ ( .D(n81), .CP(n4), .Q(wbm_adr_o[12]) );
  DFQD2BWP12T30P140 adr_reg_14_ ( .D(n77), .CP(n3), .Q(wbm_adr_o[16]) );
  DFQD2BWP12T30P140 adr_reg_22_ ( .D(n69), .CP(n5), .Q(wbm_adr_o[24]) );
  DFQD2BWP12T30P140 adr_reg_26_ ( .D(n65), .CP(n4), .Q(wbm_adr_o[28]) );
  DFQD2BWP12T30P140 adr_reg_3_ ( .D(n88), .CP(n3), .Q(wbm_adr_o[5]) );
  DFQD2BWP12T30P140 adr_reg_7_ ( .D(n84), .CP(n2), .Q(wbm_adr_o[9]) );
  DFQD2BWP12T30P140 adr_reg_2_ ( .D(n89), .CP(n5), .Q(wbm_adr_o[4]) );
  DFQD2BWP12T30P140 adr_reg_11_ ( .D(n80), .CP(n4), .Q(wbm_adr_o[13]) );
  DFQD2BWP12T30P140 adr_reg_15_ ( .D(n76), .CP(n3), .Q(wbm_adr_o[17]) );
  DFQD2BWP12T30P140 adr_reg_19_ ( .D(n72), .CP(n2), .Q(wbm_adr_o[21]) );
  DFQD2BWP12T30P140 adr_reg_23_ ( .D(n68), .CP(n5), .Q(wbm_adr_o[25]) );
  DFQD2BWP12T30P140 adr_reg_28_ ( .D(n63), .CP(n4), .Q(wbm_adr_o[30]) );
  DFQD2BWP12T30P140 adr_reg_27_ ( .D(n64), .CP(n3), .Q(wbm_adr_o[29]) );
  DFQD2BWP12T30P140 loadbyte_counter_reg_1_ ( .D(n137), .CP(n2), .Q(
        loadbyte_counter[1]) );
  DFQD2BWP12T30P140 adr_reg_12_ ( .D(n79), .CP(n5), .Q(wbm_adr_o[14]) );
  DFQD2BWP12T30P140 adr_reg_16_ ( .D(n75), .CP(n4), .Q(wbm_adr_o[18]) );
  DFQD2BWP12T30P140 adr_reg_24_ ( .D(n67), .CP(n2), .Q(wbm_adr_o[26]) );
  DFQD2BWP12T30P140 loadbyte_counter_reg_0_ ( .D(n138), .CP(n5), .Q(
        loadbyte_counter[0]) );
  DFQD2BWP12T30P140 maxcount_reg_1_ ( .D(n136), .CP(n4), .Q(maxcount[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n140), .CP(n3), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n124), .CP(n2), .Q(state[1]) );
  DFQD2BWP12T30P140 maxcount_reg_10_ ( .D(n126), .CP(n5), .Q(maxcount[10]) );
  DFQD2BWP12T30P140 maxcount_reg_2_ ( .D(n134), .CP(n4), .Q(maxcount[2]) );
  DFQD2BWP12T30P140 adr_reg_5_ ( .D(n86), .CP(n3), .Q(wbm_adr_o[7]) );
  DFQD2BWP12T30P140 maxcount_reg_9_ ( .D(n127), .CP(n2), .Q(maxcount[9]) );
  DFQD2BWP12T30P140 maxcount_reg_6_ ( .D(n130), .CP(n5), .Q(maxcount[6]) );
  DFQD2BWP12T30P140 maxcount_reg_4_ ( .D(n132), .CP(n4), .Q(maxcount[4]) );
  DFQD2BWP12T30P140 in_frame_reg ( .D(n139), .CP(n3), .Q(in_frame) );
  DFQD2BWP12T30P140 adr_reg_1_ ( .D(n90), .CP(n2), .Q(wbm_adr_o[3]) );
  DFQD2BWP12T30P140 adr_reg_9_ ( .D(n82), .CP(n5), .Q(wbm_adr_o[11]) );
  DFQD2BWP12T30P140 adr_reg_17_ ( .D(n74), .CP(n3), .Q(wbm_adr_o[19]) );
  DFQD2BWP12T30P140 adr_reg_21_ ( .D(n70), .CP(n2), .Q(wbm_adr_o[23]) );
  DFQD2BWP12T30P140 adr_reg_25_ ( .D(n66), .CP(n5), .Q(wbm_adr_o[27]) );
  DFQD2BWP12T30P140 adr_reg_0_ ( .D(n91), .CP(n4), .Q(wbm_adr_o[2]) );
  DFQD2BWP12T30P140 maxcount_reg_0_ ( .D(n135), .CP(n3), .Q(maxcount[0]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n125), .CP(n2), .Q(state[2]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_20_ ( .D(n105), .CP(n4), .Q(wbm_dat_o[20])
         );
  DFQD1BWP12T30P140 wbm_dat_o_reg_27_ ( .D(n108), .CP(n5), .Q(wbm_dat_o[27])
         );
  DFQD1BWP12T30P140 adr_reg_18_ ( .D(n73), .CP(n2), .Q(wbm_adr_o[20]) );
  DFQD1BWP12T30P140 adr_reg_20_ ( .D(n71), .CP(n3), .Q(wbm_adr_o[22]) );
  DFQD1BWP12T30P140 adr_reg_13_ ( .D(n78), .CP(n4), .Q(wbm_adr_o[15]) );
  INVD0BWP12T30P140 U3 ( .I(sys_clk), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n1), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(n1), .ZN(n3) );
  INVD0BWP12T30P140 U6 ( .I(n1), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(n5) );
  INVD0BWP12T30P140 U8 ( .I(state[1]), .ZN(n56) );
  NR2D0BWP12T30P140 U9 ( .A1(state[2]), .A2(n56), .ZN(wbm_cyc_o) );
  CKBD0BWP12T30P140 U10 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  INVD0BWP12T30P140 U11 ( .I(sys_rst), .ZN(n7) );
  ND2D0BWP12T30P140 U12 ( .A1(n7), .A2(state[2]), .ZN(n37) );
  INVD0BWP12T30P140 U13 ( .I(n37), .ZN(n125) );
  INVD0BWP12T30P140 U14 ( .I(state[0]), .ZN(n166) );
  NR3D0BWP12T30P140 U15 ( .A1(state[2]), .A2(state[1]), .A3(n166), .ZN(
        rx_incrcount) );
  ND2D0BWP12T30P140 U16 ( .A1(n166), .A2(n56), .ZN(n46) );
  INR2D1BWP12T30P140 U17 ( .A1(rx_valid), .B1(fifo_empty), .ZN(n38) );
  INVD0BWP12T30P140 U18 ( .I(fifo_eof), .ZN(n41) );
  ND2D0BWP12T30P140 U19 ( .A1(n38), .A2(n41), .ZN(n49) );
  NR4D0BWP12T30P140 U20 ( .A1(state[2]), .A2(in_frame), .A3(n46), .A4(n49), 
        .ZN(n24) );
  INVD0BWP12T30P140 U21 ( .I(n7), .ZN(n52) );
  NR2D0BWP12T30P140 U22 ( .A1(n52), .A2(rx_rst), .ZN(n23) );
  IND2D1BWP12T30P140 U23 ( .A1(n24), .B1(n23), .ZN(n27) );
  NR2D0BWP12T30P140 U24 ( .A1(rx_incrcount), .A2(n27), .ZN(n209) );
  INVD0BWP12T30P140 U25 ( .I(n209), .ZN(n59) );
  ND2D0BWP12T30P140 U26 ( .A1(n23), .A2(rx_incrcount), .ZN(n219) );
  INVD0BWP12T30P140 U27 ( .I(n219), .ZN(n35) );
  MAOI22D0BWP12T30P140 U28 ( .A1(maxcount[0]), .A2(n59), .B1(n35), .B2(
        maxcount[0]), .ZN(n135) );
  ND2D0BWP12T30P140 U29 ( .A1(wbm_cyc_o), .A2(wbm_ack_i), .ZN(n165) );
  OR2D0BWP12T30P140 U30 ( .A1(n165), .A2(state[0]), .Z(n6) );
  NR2D0BWP12T30P140 U31 ( .A1(n6), .A2(n52), .ZN(n221) );
  INVD0BWP12T30P140 U32 ( .I(n221), .ZN(n258) );
  ND2D0BWP12T30P140 U33 ( .A1(n7), .A2(n6), .ZN(n8) );
  NR2D0BWP12T30P140 U34 ( .A1(n24), .A2(n8), .ZN(n148) );
  NR2D0BWP12T30P140 U35 ( .A1(n148), .A2(n8), .ZN(n270) );
  CKBD0BWP12T30P140 U36 ( .I(n270), .Z(n251) );
  AOI22D0BWP12T30P140 U37 ( .A1(n148), .A2(wbm_adr_o[2]), .B1(n251), .B2(
        rx_adr[0]), .ZN(n9) );
  OAI21D0BWP12T30P140 U38 ( .A1(wbm_adr_o[2]), .A2(n258), .B(n9), .ZN(n91) );
  ND3D0BWP12T30P140 U39 ( .A1(wbm_adr_o[3]), .A2(wbm_adr_o[2]), .A3(
        wbm_adr_o[4]), .ZN(n254) );
  INVD0BWP12T30P140 U40 ( .I(wbm_adr_o[6]), .ZN(n198) );
  INVD0BWP12T30P140 U41 ( .I(wbm_adr_o[5]), .ZN(n201) );
  NR3D0BWP12T30P140 U42 ( .A1(n254), .A2(n198), .A3(n201), .ZN(n31) );
  ND3D0BWP12T30P140 U43 ( .A1(n31), .A2(wbm_adr_o[8]), .A3(wbm_adr_o[7]), .ZN(
        n257) );
  INVD0BWP12T30P140 U44 ( .I(wbm_adr_o[10]), .ZN(n204) );
  INVD0BWP12T30P140 U45 ( .I(wbm_adr_o[9]), .ZN(n207) );
  NR3D0BWP12T30P140 U46 ( .A1(n257), .A2(n204), .A3(n207), .ZN(n226) );
  ND3D0BWP12T30P140 U47 ( .A1(n226), .A2(wbm_adr_o[12]), .A3(wbm_adr_o[11]), 
        .ZN(n149) );
  INVD0BWP12T30P140 U48 ( .I(wbm_adr_o[13]), .ZN(n249) );
  INR3D1BWP12T30P140 U49 ( .A1(wbm_adr_o[14]), .B1(n149), .B2(n249), .ZN(n231)
         );
  ND3D0BWP12T30P140 U50 ( .A1(n231), .A2(wbm_adr_o[16]), .A3(wbm_adr_o[15]), 
        .ZN(n145) );
  INVD0BWP12T30P140 U51 ( .I(wbm_adr_o[17]), .ZN(n170) );
  INR3D1BWP12T30P140 U52 ( .A1(wbm_adr_o[18]), .B1(n145), .B2(n170), .ZN(n236)
         );
  ND3D0BWP12T30P140 U53 ( .A1(n236), .A2(wbm_adr_o[20]), .A3(wbm_adr_o[19]), 
        .ZN(n142) );
  INVD0BWP12T30P140 U54 ( .I(wbm_adr_o[21]), .ZN(n162) );
  INR3D1BWP12T30P140 U55 ( .A1(wbm_adr_o[22]), .B1(n142), .B2(n162), .ZN(n242)
         );
  ND3D0BWP12T30P140 U56 ( .A1(n242), .A2(wbm_adr_o[24]), .A3(wbm_adr_o[23]), 
        .ZN(n60) );
  INVD0BWP12T30P140 U57 ( .I(wbm_adr_o[25]), .ZN(n158) );
  INR3D1BWP12T30P140 U58 ( .A1(wbm_adr_o[26]), .B1(n60), .B2(n158), .ZN(n176)
         );
  ND2D0BWP12T30P140 U59 ( .A1(n221), .A2(n176), .ZN(n179) );
  INVD0BWP12T30P140 U60 ( .I(n148), .ZN(n241) );
  OAI21D0BWP12T30P140 U61 ( .A1(n176), .A2(n258), .B(n241), .ZN(n10) );
  AOI22D0BWP12T30P140 U62 ( .A1(wbm_adr_o[27]), .A2(n10), .B1(n270), .B2(
        rx_adr[25]), .ZN(n11) );
  OAI21D0BWP12T30P140 U63 ( .A1(wbm_adr_o[27]), .A2(n179), .B(n11), .ZN(n66)
         );
  ND2D0BWP12T30P140 U64 ( .A1(n221), .A2(n242), .ZN(n245) );
  OAI21D0BWP12T30P140 U65 ( .A1(n242), .A2(n258), .B(n241), .ZN(n12) );
  AOI22D0BWP12T30P140 U66 ( .A1(wbm_adr_o[23]), .A2(n12), .B1(n251), .B2(
        rx_adr[21]), .ZN(n13) );
  OAI21D0BWP12T30P140 U67 ( .A1(wbm_adr_o[23]), .A2(n245), .B(n13), .ZN(n70)
         );
  ND2D0BWP12T30P140 U68 ( .A1(n221), .A2(n236), .ZN(n239) );
  CKBD0BWP12T30P140 U69 ( .I(n258), .Z(n263) );
  OAI21D0BWP12T30P140 U70 ( .A1(n236), .A2(n263), .B(n241), .ZN(n14) );
  AOI22D0BWP12T30P140 U71 ( .A1(wbm_adr_o[19]), .A2(n14), .B1(n270), .B2(
        rx_adr[17]), .ZN(n15) );
  OAI21D0BWP12T30P140 U72 ( .A1(wbm_adr_o[19]), .A2(n239), .B(n15), .ZN(n74)
         );
  ND2D0BWP12T30P140 U73 ( .A1(n221), .A2(n231), .ZN(n234) );
  OAI21D0BWP12T30P140 U74 ( .A1(n231), .A2(n258), .B(n241), .ZN(n16) );
  AOI22D0BWP12T30P140 U75 ( .A1(wbm_adr_o[15]), .A2(n16), .B1(n251), .B2(
        rx_adr[13]), .ZN(n17) );
  OAI21D0BWP12T30P140 U76 ( .A1(wbm_adr_o[15]), .A2(n234), .B(n17), .ZN(n78)
         );
  ND2D0BWP12T30P140 U77 ( .A1(n221), .A2(n226), .ZN(n229) );
  OAI21D0BWP12T30P140 U78 ( .A1(n226), .A2(n258), .B(n241), .ZN(n18) );
  AOI22D0BWP12T30P140 U79 ( .A1(wbm_adr_o[11]), .A2(n18), .B1(n270), .B2(
        rx_adr[9]), .ZN(n19) );
  OAI21D0BWP12T30P140 U80 ( .A1(wbm_adr_o[11]), .A2(n229), .B(n19), .ZN(n82)
         );
  INVD0BWP12T30P140 U81 ( .I(wbm_adr_o[2]), .ZN(n22) );
  AOI21D0BWP12T30P140 U82 ( .A1(n22), .A2(n221), .B(n148), .ZN(n259) );
  INVD0BWP12T30P140 U83 ( .I(n259), .ZN(n20) );
  AOI22D0BWP12T30P140 U84 ( .A1(wbm_adr_o[3]), .A2(n20), .B1(n251), .B2(
        rx_adr[1]), .ZN(n21) );
  OAI31D0BWP12T30P140 U85 ( .A1(wbm_adr_o[3]), .A2(n263), .A3(n22), .B(n21), 
        .ZN(n90) );
  INR3D1BWP12T30P140 U86 ( .A1(n38), .B1(state[2]), .B2(n41), .ZN(n57) );
  IND3D1BWP12T30P140 U87 ( .A1(n46), .B1(in_frame), .B2(n57), .ZN(n264) );
  OA211D0BWP12T30P140 U88 ( .A1(in_frame), .A2(n24), .B(n264), .C(n23), .Z(
        n139) );
  NR4D0BWP12T30P140 U89 ( .A1(maxcount[1]), .A2(maxcount[0]), .A3(maxcount[2]), 
        .A4(maxcount[3]), .ZN(n26) );
  ND2D0BWP12T30P140 U90 ( .A1(n35), .A2(n26), .ZN(n213) );
  ND2D0BWP12T30P140 U91 ( .A1(n26), .A2(n59), .ZN(n215) );
  AOI21D0BWP12T30P140 U92 ( .A1(maxcount[4]), .A2(n215), .B(n27), .ZN(n25) );
  OAI21D0BWP12T30P140 U93 ( .A1(maxcount[4]), .A2(n213), .B(n25), .ZN(n132) );
  INR3D1BWP12T30P140 U94 ( .A1(n26), .B1(maxcount[5]), .B2(maxcount[4]), .ZN(
        n28) );
  ND2D0BWP12T30P140 U95 ( .A1(n35), .A2(n28), .ZN(n30) );
  INVD0BWP12T30P140 U96 ( .I(n27), .ZN(n217) );
  INVD0BWP12T30P140 U97 ( .I(n28), .ZN(n218) );
  OAI21D0BWP12T30P140 U98 ( .A1(n209), .A2(n218), .B(maxcount[6]), .ZN(n29) );
  OAI211D0BWP12T30P140 U99 ( .A1(maxcount[6]), .A2(n30), .B(n217), .C(n29), 
        .ZN(n130) );
  ND2D0BWP12T30P140 U100 ( .A1(n221), .A2(n31), .ZN(n224) );
  OAI21D0BWP12T30P140 U101 ( .A1(n31), .A2(n258), .B(n241), .ZN(n220) );
  AOI22D0BWP12T30P140 U102 ( .A1(wbm_adr_o[7]), .A2(n220), .B1(n270), .B2(
        rx_adr[5]), .ZN(n32) );
  OAI21D0BWP12T30P140 U103 ( .A1(wbm_adr_o[7]), .A2(n224), .B(n32), .ZN(n86)
         );
  NR2D0BWP12T30P140 U104 ( .A1(maxcount[1]), .A2(maxcount[0]), .ZN(n33) );
  ND2D0BWP12T30P140 U105 ( .A1(n35), .A2(n33), .ZN(n54) );
  INVD0BWP12T30P140 U106 ( .I(maxcount[2]), .ZN(n34) );
  INVD0BWP12T30P140 U107 ( .I(maxcount[1]), .ZN(n55) );
  AOI21D0BWP12T30P140 U108 ( .A1(maxcount[0]), .A2(n35), .B(n209), .ZN(n58) );
  OAI21D0BWP12T30P140 U109 ( .A1(n219), .A2(n55), .B(n58), .ZN(n212) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n54), .A2(n34), .B1(n34), .B2(n212), .ZN(
        n134) );
  NR3D0BWP12T30P140 U111 ( .A1(maxcount[7]), .A2(maxcount[6]), .A3(n218), .ZN(
        n39) );
  ND2D0BWP12T30P140 U112 ( .A1(n35), .A2(n39), .ZN(n210) );
  INVD0BWP12T30P140 U113 ( .I(maxcount[8]), .ZN(n190) );
  IND2D1BWP12T30P140 U114 ( .A1(n210), .B1(n190), .ZN(n189) );
  OR2D0BWP12T30P140 U115 ( .A1(maxcount[9]), .A2(n189), .Z(n266) );
  OA21D0BWP12T30P140 U116 ( .A1(n219), .A2(n39), .B(n59), .Z(n191) );
  OAI21D0BWP12T30P140 U117 ( .A1(n219), .A2(n190), .B(n191), .ZN(n267) );
  OAI21D0BWP12T30P140 U118 ( .A1(maxcount[9]), .A2(n267), .B(maxcount[10]), 
        .ZN(n36) );
  OAI211D0BWP12T30P140 U119 ( .A1(maxcount[10]), .A2(n266), .B(n217), .C(n36), 
        .ZN(n126) );
  OAI31D0BWP12T30P140 U120 ( .A1(n56), .A2(n52), .A3(wbm_ack_i), .B(n37), .ZN(
        n45) );
  NR2D0BWP12T30P140 U121 ( .A1(state[1]), .A2(n166), .ZN(n43) );
  INVD0BWP12T30P140 U122 ( .I(loadbyte_counter[0]), .ZN(n152) );
  INVD0BWP12T30P140 U123 ( .I(loadbyte_counter[1]), .ZN(n153) );
  NR2D0BWP12T30P140 U124 ( .A1(n152), .A2(n153), .ZN(n167) );
  ND2D0BWP12T30P140 U125 ( .A1(n152), .A2(n153), .ZN(n175) );
  INVD0BWP12T30P140 U126 ( .I(fifo_data[0]), .ZN(n265) );
  ND4D0BWP12T30P140 U127 ( .A1(in_frame), .A2(n38), .A3(n175), .A4(n265), .ZN(
        n47) );
  NR4D0BWP12T30P140 U128 ( .A1(state[0]), .A2(maxcount[10]), .A3(maxcount[9]), 
        .A4(n56), .ZN(n40) );
  ND3D0BWP12T30P140 U129 ( .A1(n190), .A2(n40), .A3(n39), .ZN(n48) );
  OAI31D0BWP12T30P140 U130 ( .A1(n46), .A2(n41), .A3(n47), .B(n48), .ZN(n42)
         );
  AOI31D0BWP12T30P140 U131 ( .A1(rx_valid), .A2(n43), .A3(n167), .B(n42), .ZN(
        n44) );
  INVD0BWP12T30P140 U132 ( .I(n45), .ZN(n51) );
  OAI32D0BWP12T30P140 U133 ( .A1(n45), .A2(n52), .A3(n44), .B1(n51), .B2(n56), 
        .ZN(n124) );
  AOI32D0BWP12T30P140 U134 ( .A1(n49), .A2(n48), .A3(n47), .B1(n46), .B2(n48), 
        .ZN(n50) );
  ND2D0BWP12T30P140 U135 ( .A1(n51), .A2(n50), .ZN(n53) );
  OAI22D0BWP12T30P140 U136 ( .A1(n53), .A2(n52), .B1(n166), .B2(n51), .ZN(n140) );
  OAI211D0BWP12T30P140 U137 ( .A1(n58), .A2(n55), .B(n217), .C(n54), .ZN(n136)
         );
  AOI22D0BWP12T30P140 U138 ( .A1(loadbyte_counter[0]), .A2(n59), .B1(n219), 
        .B2(n152), .ZN(n138) );
  OR2D0BWP12T30P140 U139 ( .A1(n60), .A2(n258), .Z(n156) );
  AOI21D0BWP12T30P140 U140 ( .A1(n221), .A2(n60), .B(n148), .ZN(n159) );
  OAI21D0BWP12T30P140 U141 ( .A1(wbm_adr_o[25]), .A2(n263), .B(n159), .ZN(n61)
         );
  AOI22D0BWP12T30P140 U142 ( .A1(wbm_adr_o[26]), .A2(n61), .B1(n251), .B2(
        rx_adr[24]), .ZN(n141) );
  OAI31D0BWP12T30P140 U143 ( .A1(wbm_adr_o[26]), .A2(n158), .A3(n156), .B(n141), .ZN(n67) );
  OR2D0BWP12T30P140 U144 ( .A1(n142), .A2(n263), .Z(n160) );
  AOI21D0BWP12T30P140 U146 ( .A1(n221), .A2(n142), .B(n148), .ZN(n163) );
  OAI21D0BWP12T30P140 U147 ( .A1(wbm_adr_o[21]), .A2(n263), .B(n163), .ZN(n143) );
  AOI22D0BWP12T30P140 U148 ( .A1(wbm_adr_o[22]), .A2(n143), .B1(n270), .B2(
        rx_adr[20]), .ZN(n144) );
  OAI31D0BWP12T30P140 U149 ( .A1(wbm_adr_o[22]), .A2(n162), .A3(n160), .B(n144), .ZN(n71) );
  OR2D0BWP12T30P140 U150 ( .A1(n145), .A2(n263), .Z(n168) );
  AOI21D0BWP12T30P140 U151 ( .A1(n221), .A2(n145), .B(n148), .ZN(n171) );
  OAI21D0BWP12T30P140 U152 ( .A1(wbm_adr_o[17]), .A2(n258), .B(n171), .ZN(n146) );
  AOI22D0BWP12T30P140 U153 ( .A1(wbm_adr_o[18]), .A2(n146), .B1(n251), .B2(
        rx_adr[16]), .ZN(n147) );
  OAI31D0BWP12T30P140 U154 ( .A1(wbm_adr_o[18]), .A2(n170), .A3(n168), .B(n147), .ZN(n75) );
  OR2D0BWP12T30P140 U155 ( .A1(n149), .A2(n258), .Z(n247) );
  AOI21D0BWP12T30P140 U156 ( .A1(n221), .A2(n149), .B(n148), .ZN(n250) );
  OAI21D0BWP12T30P140 U157 ( .A1(wbm_adr_o[13]), .A2(n263), .B(n250), .ZN(n150) );
  AOI22D0BWP12T30P140 U158 ( .A1(wbm_adr_o[14]), .A2(n150), .B1(n251), .B2(
        rx_adr[12]), .ZN(n151) );
  OAI31D0BWP12T30P140 U159 ( .A1(wbm_adr_o[14]), .A2(n249), .A3(n247), .B(n151), .ZN(n79) );
  NR3D0BWP12T30P140 U160 ( .A1(loadbyte_counter[1]), .A2(n219), .A3(n152), 
        .ZN(n173) );
  NR3D0BWP12T30P140 U161 ( .A1(loadbyte_counter[0]), .A2(n153), .A3(n219), 
        .ZN(n174) );
  AO211D0BWP12T30P140 U162 ( .A1(loadbyte_counter[1]), .A2(n209), .B(n173), 
        .C(n174), .Z(n137) );
  INVD0BWP12T30P140 U163 ( .I(wbm_adr_o[29]), .ZN(n268) );
  ND3D0BWP12T30P140 U164 ( .A1(n176), .A2(wbm_adr_o[28]), .A3(wbm_adr_o[27]), 
        .ZN(n154) );
  IOA21D0BWP12T30P140 U165 ( .A1(n154), .A2(n221), .B(n241), .ZN(n272) );
  AOI21D0BWP12T30P140 U166 ( .A1(n221), .A2(n268), .B(n272), .ZN(n192) );
  INVD0BWP12T30P140 U167 ( .I(wbm_adr_o[30]), .ZN(n196) );
  NR2D0BWP12T30P140 U168 ( .A1(n263), .A2(n154), .ZN(n269) );
  ND2D0BWP12T30P140 U169 ( .A1(wbm_adr_o[29]), .A2(n269), .ZN(n195) );
  MAOI22D0BWP12T30P140 U170 ( .A1(rx_adr[28]), .A2(n251), .B1(wbm_adr_o[30]), 
        .B2(n195), .ZN(n155) );
  OAI21D0BWP12T30P140 U171 ( .A1(n192), .A2(n196), .B(n155), .ZN(n63) );
  MAOI22D0BWP12T30P140 U172 ( .A1(rx_adr[23]), .A2(n251), .B1(wbm_adr_o[25]), 
        .B2(n156), .ZN(n157) );
  OAI21D0BWP12T30P140 U173 ( .A1(n159), .A2(n158), .B(n157), .ZN(n68) );
  MAOI22D0BWP12T30P140 U174 ( .A1(rx_adr[19]), .A2(n270), .B1(wbm_adr_o[21]), 
        .B2(n160), .ZN(n161) );
  OAI21D0BWP12T30P140 U175 ( .A1(n163), .A2(n162), .B(n161), .ZN(n72) );
  IND2D1BWP12T30P140 U176 ( .A1(n264), .B1(n265), .ZN(n164) );
  OAI22D0BWP12T30P140 U177 ( .A1(n166), .A2(n165), .B1(n175), .B2(n164), .ZN(
        rx_endframe) );
  INR2D1BWP12T30P140 U178 ( .A1(n167), .B1(n219), .ZN(n172) );
  MAOI22D0BWP12T30P140 U179 ( .A1(n172), .A2(n265), .B1(wbm_dat_o[0]), .B2(
        n172), .ZN(n123) );
  INVD0BWP12T30P140 U180 ( .I(fifo_data[1]), .ZN(n181) );
  MAOI22D0BWP12T30P140 U181 ( .A1(n172), .A2(n181), .B1(wbm_dat_o[1]), .B2(
        n172), .ZN(n119) );
  INVD0BWP12T30P140 U182 ( .I(fifo_data[2]), .ZN(n182) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n172), .A2(n182), .B1(wbm_dat_o[2]), .B2(
        n172), .ZN(n115) );
  INVD0BWP12T30P140 U184 ( .I(fifo_data[3]), .ZN(n183) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n172), .A2(n183), .B1(wbm_dat_o[3]), .B2(
        n172), .ZN(n111) );
  INVD0BWP12T30P140 U186 ( .I(fifo_data[4]), .ZN(n184) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n172), .A2(n184), .B1(wbm_dat_o[4]), .B2(
        n172), .ZN(n107) );
  INVD0BWP12T30P140 U188 ( .I(fifo_data[5]), .ZN(n185) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n172), .A2(n185), .B1(wbm_dat_o[5]), .B2(
        n172), .ZN(n103) );
  INVD0BWP12T30P140 U190 ( .I(fifo_data[6]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n172), .A2(n186), .B1(wbm_dat_o[6]), .B2(
        n172), .ZN(n99) );
  MAOI22D0BWP12T30P140 U192 ( .A1(rx_adr[15]), .A2(n251), .B1(wbm_adr_o[17]), 
        .B2(n168), .ZN(n169) );
  OAI21D0BWP12T30P140 U193 ( .A1(n171), .A2(n170), .B(n169), .ZN(n76) );
  INVD0BWP12T30P140 U194 ( .I(fifo_data[7]), .ZN(n187) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n172), .A2(n187), .B1(wbm_dat_o[7]), .B2(
        n172), .ZN(n95) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n173), .A2(n265), .B1(wbm_dat_o[16]), .B2(
        n173), .ZN(n121) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n173), .A2(n181), .B1(wbm_dat_o[17]), .B2(
        n173), .ZN(n117) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n173), .A2(n182), .B1(wbm_dat_o[18]), .B2(
        n173), .ZN(n113) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n173), .A2(n183), .B1(wbm_dat_o[19]), .B2(
        n173), .ZN(n109) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n173), .A2(n184), .B1(wbm_dat_o[20]), .B2(
        n173), .ZN(n105) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n173), .A2(n185), .B1(wbm_dat_o[21]), .B2(
        n173), .ZN(n101) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n173), .A2(n186), .B1(wbm_dat_o[22]), .B2(
        n173), .ZN(n97) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n173), .A2(n187), .B1(wbm_dat_o[23]), .B2(
        n173), .ZN(n93) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n174), .A2(n265), .B1(wbm_dat_o[8]), .B2(
        n174), .ZN(n122) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n174), .A2(n181), .B1(wbm_dat_o[9]), .B2(
        n174), .ZN(n118) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n174), .A2(n182), .B1(wbm_dat_o[10]), .B2(
        n174), .ZN(n114) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n174), .A2(n183), .B1(wbm_dat_o[11]), .B2(
        n174), .ZN(n110) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n174), .A2(n184), .B1(wbm_dat_o[12]), .B2(
        n174), .ZN(n106) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n174), .A2(n185), .B1(wbm_dat_o[13]), .B2(
        n174), .ZN(n102) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n174), .A2(n186), .B1(wbm_dat_o[14]), .B2(
        n174), .ZN(n98) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n174), .A2(n187), .B1(wbm_dat_o[15]), .B2(
        n174), .ZN(n94) );
  NR2D0BWP12T30P140 U212 ( .A1(n219), .A2(n175), .ZN(n188) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n188), .A2(n265), .B1(wbm_dat_o[24]), .B2(
        n188), .ZN(n120) );
  INVD0BWP12T30P140 U214 ( .I(wbm_adr_o[27]), .ZN(n180) );
  AOI32D0BWP12T30P140 U215 ( .A1(n176), .A2(n241), .A3(wbm_adr_o[27]), .B1(
        n258), .B2(n241), .ZN(n177) );
  AOI22D0BWP12T30P140 U216 ( .A1(wbm_adr_o[28]), .A2(n177), .B1(n270), .B2(
        rx_adr[26]), .ZN(n178) );
  OAI31D0BWP12T30P140 U217 ( .A1(wbm_adr_o[28]), .A2(n180), .A3(n179), .B(n178), .ZN(n65) );
  MAOI22D0BWP12T30P140 U218 ( .A1(n188), .A2(n181), .B1(wbm_dat_o[25]), .B2(
        n188), .ZN(n116) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n188), .A2(n182), .B1(wbm_dat_o[26]), .B2(
        n188), .ZN(n112) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n188), .A2(n183), .B1(wbm_dat_o[27]), .B2(
        n188), .ZN(n108) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n188), .A2(n184), .B1(wbm_dat_o[28]), .B2(
        n188), .ZN(n104) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n188), .A2(n185), .B1(wbm_dat_o[29]), .B2(
        n188), .ZN(n100) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n188), .A2(n186), .B1(wbm_dat_o[30]), .B2(
        n188), .ZN(n96) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n188), .A2(n187), .B1(wbm_dat_o[31]), .B2(
        n188), .ZN(n92) );
  OAI211D0BWP12T30P140 U225 ( .A1(n191), .A2(n190), .B(n217), .C(n189), .ZN(
        n128) );
  OAI21D0BWP12T30P140 U226 ( .A1(wbm_adr_o[30]), .A2(n263), .B(n192), .ZN(n193) );
  AOI22D0BWP12T30P140 U227 ( .A1(rx_adr[29]), .A2(n270), .B1(wbm_adr_o[31]), 
        .B2(n193), .ZN(n194) );
  OAI31D0BWP12T30P140 U228 ( .A1(wbm_adr_o[31]), .A2(n196), .A3(n195), .B(n194), .ZN(n62) );
  INVD0BWP12T30P140 U229 ( .I(n254), .ZN(n197) );
  ND2D0BWP12T30P140 U230 ( .A1(n221), .A2(n197), .ZN(n200) );
  OAI21D0BWP12T30P140 U231 ( .A1(n197), .A2(n258), .B(n241), .ZN(n252) );
  AOI21D0BWP12T30P140 U232 ( .A1(n221), .A2(n201), .B(n252), .ZN(n199) );
  OAI32D0BWP12T30P140 U233 ( .A1(wbm_adr_o[6]), .A2(n201), .A3(n200), .B1(n199), .B2(n198), .ZN(n202) );
  AO21D0BWP12T30P140 U234 ( .A1(n251), .A2(rx_adr[4]), .B(n202), .Z(n87) );
  INVD0BWP12T30P140 U235 ( .I(n257), .ZN(n203) );
  ND2D0BWP12T30P140 U236 ( .A1(n221), .A2(n203), .ZN(n206) );
  OAI21D0BWP12T30P140 U237 ( .A1(n203), .A2(n263), .B(n241), .ZN(n255) );
  AOI21D0BWP12T30P140 U238 ( .A1(n221), .A2(n207), .B(n255), .ZN(n205) );
  OAI32D0BWP12T30P140 U239 ( .A1(wbm_adr_o[10]), .A2(n207), .A3(n206), .B1(
        n205), .B2(n204), .ZN(n208) );
  AO21D0BWP12T30P140 U240 ( .A1(n251), .A2(rx_adr[8]), .B(n208), .Z(n83) );
  OAI31D0BWP12T30P140 U241 ( .A1(n209), .A2(maxcount[6]), .A3(n218), .B(
        maxcount[7]), .ZN(n211) );
  ND3D0BWP12T30P140 U242 ( .A1(n211), .A2(n210), .A3(n217), .ZN(n129) );
  OAI21D0BWP12T30P140 U243 ( .A1(maxcount[2]), .A2(n212), .B(maxcount[3]), 
        .ZN(n214) );
  ND3D0BWP12T30P140 U244 ( .A1(n214), .A2(n213), .A3(n217), .ZN(n133) );
  OAI21D0BWP12T30P140 U245 ( .A1(maxcount[4]), .A2(n215), .B(maxcount[5]), 
        .ZN(n216) );
  OAI211D0BWP12T30P140 U246 ( .A1(n219), .A2(n218), .B(n217), .C(n216), .ZN(
        n131) );
  INVD0BWP12T30P140 U247 ( .I(wbm_adr_o[7]), .ZN(n225) );
  AO21D0BWP12T30P140 U248 ( .A1(n225), .A2(n221), .B(n220), .Z(n222) );
  AOI22D0BWP12T30P140 U249 ( .A1(wbm_adr_o[8]), .A2(n222), .B1(n270), .B2(
        rx_adr[6]), .ZN(n223) );
  OAI31D0BWP12T30P140 U250 ( .A1(wbm_adr_o[8]), .A2(n225), .A3(n224), .B(n223), 
        .ZN(n85) );
  INVD0BWP12T30P140 U251 ( .I(wbm_adr_o[11]), .ZN(n230) );
  AOI32D0BWP12T30P140 U252 ( .A1(n226), .A2(n241), .A3(wbm_adr_o[11]), .B1(
        n263), .B2(n241), .ZN(n227) );
  AOI22D0BWP12T30P140 U253 ( .A1(wbm_adr_o[12]), .A2(n227), .B1(n251), .B2(
        rx_adr[10]), .ZN(n228) );
  OAI31D0BWP12T30P140 U254 ( .A1(wbm_adr_o[12]), .A2(n230), .A3(n229), .B(n228), .ZN(n81) );
  INVD0BWP12T30P140 U255 ( .I(wbm_adr_o[15]), .ZN(n235) );
  AOI32D0BWP12T30P140 U256 ( .A1(n231), .A2(n241), .A3(wbm_adr_o[15]), .B1(
        n258), .B2(n241), .ZN(n232) );
  AOI22D0BWP12T30P140 U257 ( .A1(wbm_adr_o[16]), .A2(n232), .B1(n270), .B2(
        rx_adr[14]), .ZN(n233) );
  OAI31D0BWP12T30P140 U258 ( .A1(wbm_adr_o[16]), .A2(n235), .A3(n234), .B(n233), .ZN(n77) );
  INVD0BWP12T30P140 U259 ( .I(wbm_adr_o[19]), .ZN(n240) );
  AOI32D0BWP12T30P140 U260 ( .A1(n236), .A2(n241), .A3(wbm_adr_o[19]), .B1(
        n258), .B2(n241), .ZN(n237) );
  AOI22D0BWP12T30P140 U261 ( .A1(wbm_adr_o[20]), .A2(n237), .B1(n251), .B2(
        rx_adr[18]), .ZN(n238) );
  OAI31D0BWP12T30P140 U262 ( .A1(wbm_adr_o[20]), .A2(n240), .A3(n239), .B(n238), .ZN(n73) );
  INVD0BWP12T30P140 U263 ( .I(wbm_adr_o[23]), .ZN(n246) );
  AOI32D0BWP12T30P140 U264 ( .A1(n242), .A2(n241), .A3(wbm_adr_o[23]), .B1(
        n263), .B2(n241), .ZN(n243) );
  AOI22D0BWP12T30P140 U265 ( .A1(wbm_adr_o[24]), .A2(n243), .B1(n270), .B2(
        rx_adr[22]), .ZN(n244) );
  OAI31D0BWP12T30P140 U266 ( .A1(wbm_adr_o[24]), .A2(n246), .A3(n245), .B(n244), .ZN(n69) );
  MAOI22D0BWP12T30P140 U267 ( .A1(rx_adr[11]), .A2(n251), .B1(wbm_adr_o[13]), 
        .B2(n247), .ZN(n248) );
  OAI21D0BWP12T30P140 U268 ( .A1(n250), .A2(n249), .B(n248), .ZN(n80) );
  AOI22D0BWP12T30P140 U269 ( .A1(wbm_adr_o[5]), .A2(n252), .B1(n251), .B2(
        rx_adr[3]), .ZN(n253) );
  OAI31D0BWP12T30P140 U270 ( .A1(wbm_adr_o[5]), .A2(n263), .A3(n254), .B(n253), 
        .ZN(n88) );
  AOI22D0BWP12T30P140 U271 ( .A1(wbm_adr_o[9]), .A2(n255), .B1(n270), .B2(
        rx_adr[7]), .ZN(n256) );
  OAI31D0BWP12T30P140 U272 ( .A1(wbm_adr_o[9]), .A2(n258), .A3(n257), .B(n256), 
        .ZN(n84) );
  ND2D0BWP12T30P140 U273 ( .A1(wbm_adr_o[3]), .A2(wbm_adr_o[2]), .ZN(n262) );
  OAI21D0BWP12T30P140 U274 ( .A1(wbm_adr_o[3]), .A2(n263), .B(n259), .ZN(n260)
         );
  AOI22D0BWP12T30P140 U275 ( .A1(wbm_adr_o[4]), .A2(n260), .B1(n270), .B2(
        rx_adr[2]), .ZN(n261) );
  OAI31D0BWP12T30P140 U276 ( .A1(wbm_adr_o[4]), .A2(n263), .A3(n262), .B(n261), 
        .ZN(n89) );
  NR2D0BWP12T30P140 U277 ( .A1(n265), .A2(n264), .ZN(rx_resetcount) );
  IOA21D0BWP12T30P140 U278 ( .A1(maxcount[9]), .A2(n267), .B(n266), .ZN(n127)
         );
  AOI22D0BWP12T30P140 U279 ( .A1(rx_adr[27]), .A2(n270), .B1(n269), .B2(n268), 
        .ZN(n271) );
  IOA21D0BWP12T30P140 U280 ( .A1(wbm_adr_o[29]), .A2(n272), .B(n271), .ZN(n64)
         );
endmodule


module minimac_txfifo ( sys_clk, tx_rst, stb, data, full, can_tx, empty, 
        phy_tx_clk, phy_tx_en, phy_tx_data );
  input [7:0] data;
  output [3:0] phy_tx_data;
  input sys_clk, tx_rst, stb, can_tx, phy_tx_clk;
  output full, empty, phy_tx_en;
  wire   fifo_empty, empty2, fifo_read, can_tx2, can_tx1, tx_rst2, tx_rst1,
         transmitting, transmitting_r, hi_nibble, N33, N34, N35, n1, n3, n4,
         n5, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n2, n6, n7, n8,
         n9, n20, n21, n22, n23, n24;
  wire   [7:0] fifo_out;
  wire   [4:0] interframe_counter;

  asfifo fifo ( .data_out(fifo_out), .empty(fifo_empty), .read_en(fifo_read), 
        .clk_read(phy_tx_clk), .data_in(data), .full(full), .write_en(stb), 
        .clk_write(sys_clk), .rst(tx_rst) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(fifo_read), .I1(N33), .S(n19), .Z(n1) );
  INR3D1BWP12T30P140 U6 ( .A1(can_tx2), .B1(fifo_empty), .B2(n5), .ZN(
        transmitting) );
  DFQD2BWP12T30P140 phy_tx_en_reg ( .D(N35), .CP(phy_tx_clk), .Q(phy_tx_en) );
  DFQD2BWP12T30P140 phy_tx_data_reg_0_ ( .D(n13), .CP(phy_tx_clk), .Q(
        phy_tx_data[0]) );
  DFQD2BWP12T30P140 phy_tx_data_reg_1_ ( .D(n12), .CP(phy_tx_clk), .Q(
        phy_tx_data[1]) );
  DFQD2BWP12T30P140 phy_tx_data_reg_2_ ( .D(n11), .CP(phy_tx_clk), .Q(
        phy_tx_data[2]) );
  DFQD2BWP12T30P140 phy_tx_data_reg_3_ ( .D(n10), .CP(phy_tx_clk), .Q(
        phy_tx_data[3]) );
  DFQD2BWP12T30P140 tx_rst2_reg ( .D(tx_rst1), .CP(phy_tx_clk), .Q(tx_rst2) );
  DFQD2BWP12T30P140 interframe_counter_reg_2_ ( .D(n16), .CP(phy_tx_clk), .Q(
        interframe_counter[2]) );
  DFQD2BWP12T30P140 interframe_counter_reg_4_ ( .D(n14), .CP(phy_tx_clk), .Q(
        interframe_counter[4]) );
  DFQD2BWP12T30P140 fifo_read_reg ( .D(n1), .CP(phy_tx_clk), .Q(fifo_read) );
  DFQD2BWP12T30P140 empty_reg ( .D(empty2), .CP(sys_clk), .Q(empty) );
  DFQD2BWP12T30P140 interframe_counter_reg_1_ ( .D(n18), .CP(phy_tx_clk), .Q(
        interframe_counter[1]) );
  DFQD2BWP12T30P140 interframe_counter_reg_3_ ( .D(n15), .CP(phy_tx_clk), .Q(
        interframe_counter[3]) );
  DFQD2BWP12T30P140 transmitting_r_reg ( .D(transmitting), .CP(phy_tx_clk), 
        .Q(transmitting_r) );
  DFQD2BWP12T30P140 hi_nibble_reg ( .D(N34), .CP(phy_tx_clk), .Q(hi_nibble) );
  DFQD2BWP12T30P140 interframe_counter_reg_0_ ( .D(n17), .CP(phy_tx_clk), .Q(
        interframe_counter[0]) );
  DFQD2BWP12T30P140 can_tx1_reg ( .D(can_tx), .CP(phy_tx_clk), .Q(can_tx1) );
  DFQD2BWP12T30P140 tx_rst1_reg ( .D(tx_rst), .CP(phy_tx_clk), .Q(tx_rst1) );
  AO222D0BWP12T30P140 U15 ( .A1(n4), .A2(phy_tx_data[0]), .B1(n3), .B2(
        fifo_out[4]), .C1(fifo_out[0]), .C2(N34), .Z(n13) );
  AO222D0BWP12T30P140 U14 ( .A1(n4), .A2(phy_tx_data[1]), .B1(n3), .B2(
        fifo_out[5]), .C1(fifo_out[1]), .C2(N34), .Z(n12) );
  AO222D0BWP12T30P140 U13 ( .A1(n4), .A2(phy_tx_data[2]), .B1(n3), .B2(
        fifo_out[6]), .C1(fifo_out[2]), .C2(N34), .Z(n11) );
  AO222D0BWP12T30P140 U12 ( .A1(n4), .A2(phy_tx_data[3]), .B1(N34), .B2(
        fifo_out[3]), .C1(n3), .C2(fifo_out[7]), .Z(n10) );
  DFQD1BWP12T30P140 can_tx2_reg ( .D(can_tx1), .CP(phy_tx_clk), .Q(can_tx2) );
  DFQD1BWP12T30P140 empty2_reg ( .D(fifo_empty), .CP(sys_clk), .Q(empty2) );
  INVD0BWP12T30P140 U4 ( .I(transmitting), .ZN(n2) );
  NR2D0BWP12T30P140 U5 ( .A1(hi_nibble), .A2(n2), .ZN(N33) );
  INVD0BWP12T30P140 U7 ( .I(tx_rst2), .ZN(n19) );
  INVD0BWP12T30P140 U8 ( .I(interframe_counter[4]), .ZN(n9) );
  INVD0BWP12T30P140 U9 ( .I(interframe_counter[2]), .ZN(n22) );
  NR2D0BWP12T30P140 U10 ( .A1(interframe_counter[1]), .A2(
        interframe_counter[0]), .ZN(n24) );
  ND2D0BWP12T30P140 U11 ( .A1(n22), .A2(n24), .ZN(n23) );
  NR2D0BWP12T30P140 U16 ( .A1(interframe_counter[3]), .A2(n23), .ZN(n20) );
  ND2D0BWP12T30P140 U17 ( .A1(n9), .A2(n20), .ZN(n5) );
  IND3D1BWP12T30P140 U18 ( .A1(transmitting_r), .B1(n19), .B2(n5), .ZN(n21) );
  NR2D0BWP12T30P140 U19 ( .A1(interframe_counter[0]), .A2(n21), .ZN(n17) );
  AOI21D0BWP12T30P140 U20 ( .A1(interframe_counter[3]), .A2(n23), .B(n20), 
        .ZN(n6) );
  ND3D0BWP12T30P140 U21 ( .A1(n2), .A2(n19), .A3(transmitting_r), .ZN(n8) );
  OAI21D0BWP12T30P140 U22 ( .A1(n6), .A2(n21), .B(n8), .ZN(n15) );
  AOI21D0BWP12T30P140 U23 ( .A1(interframe_counter[1]), .A2(
        interframe_counter[0]), .B(n24), .ZN(n7) );
  NR2D0BWP12T30P140 U24 ( .A1(n21), .A2(n7), .ZN(n18) );
  OAI31D0BWP12T30P140 U25 ( .A1(n20), .A2(n9), .A3(n21), .B(n8), .ZN(n14) );
  AOI221D0BWP12T30P140 U26 ( .A1(n24), .A2(n23), .B1(n22), .B2(n23), .C(n21), 
        .ZN(n16) );
  ND2D0BWP12T30P140 U27 ( .A1(n19), .A2(transmitting), .ZN(n4) );
  NR2D0BWP12T30P140 U28 ( .A1(hi_nibble), .A2(n4), .ZN(N34) );
  INVD0BWP12T30P140 U29 ( .I(n4), .ZN(N35) );
  AN2D0BWP12T30P140 U30 ( .A1(hi_nibble), .A2(N35), .Z(n3) );
endmodule


module minimac_tx ( sys_clk, sys_rst, tx_rst, tx_valid, tx_adr, tx_bytecount, 
        tx_next, wbtx_adr_o, wbtx_cyc_o, wbtx_stb_o, wbtx_ack_i, wbtx_dat_i, 
        phy_tx_clk, phy_tx_en, phy_tx_data );
  input [29:0] tx_adr;
  input [1:0] tx_bytecount;
  output [31:0] wbtx_adr_o;
  input [31:0] wbtx_dat_i;
  output [3:0] phy_tx_data;
  input sys_clk, sys_rst, tx_rst, tx_valid, wbtx_ack_i, phy_tx_clk;
  output tx_next, wbtx_cyc_o, wbtx_stb_o, phy_tx_en;
  wire   full, empty, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n36, n37, n38, n39, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113;
  wire   [31:0] input_reg;
  wire   [1:0] state;
  wire   [6:0] byte_counter;
  wire   [1:0] fstate;

  minimac_txfifo txfifo ( .sys_clk(sys_clk), .tx_rst(tx_rst), .stb(tx_next), 
        .data({n85, n86, n87, n88, n89, n90, n91, n92}), .full(full), .can_tx(
        fstate[1]), .empty(empty), .phy_tx_clk(phy_tx_clk), .phy_tx_en(
        phy_tx_en), .phy_tx_data(phy_tx_data) );
  ND2D0BWP12T30P140 U75 ( .A1(n23), .A2(n22), .ZN(n85) );
  ND2D0BWP12T30P140 U78 ( .A1(n25), .A2(n24), .ZN(n86) );
  ND2D0BWP12T30P140 U81 ( .A1(n27), .A2(n26), .ZN(n87) );
  ND2D0BWP12T30P140 U84 ( .A1(n29), .A2(n28), .ZN(n88) );
  ND2D0BWP12T30P140 U87 ( .A1(n31), .A2(n30), .ZN(n89) );
  ND2D0BWP12T30P140 U90 ( .A1(n33), .A2(n32), .ZN(n90) );
  ND2D0BWP12T30P140 U93 ( .A1(n35), .A2(n34), .ZN(n91) );
  ND2D0BWP12T30P140 U96 ( .A1(n41), .A2(n40), .ZN(n92) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n82), .CP(n2), .Q(state[1]) );
  DFQD2BWP12T30P140 input_reg_reg_0_ ( .D(n73), .CP(n4), .Q(input_reg[0]) );
  DFQD2BWP12T30P140 input_reg_reg_31_ ( .D(n72), .CP(n3), .Q(input_reg[31]) );
  DFQD2BWP12T30P140 input_reg_reg_30_ ( .D(n71), .CP(n2), .Q(input_reg[30]) );
  DFQD2BWP12T30P140 input_reg_reg_29_ ( .D(n70), .CP(n4), .Q(input_reg[29]) );
  DFQD2BWP12T30P140 input_reg_reg_28_ ( .D(n69), .CP(n3), .Q(input_reg[28]) );
  DFQD2BWP12T30P140 input_reg_reg_27_ ( .D(n68), .CP(n2), .Q(input_reg[27]) );
  DFQD2BWP12T30P140 input_reg_reg_26_ ( .D(n67), .CP(n4), .Q(input_reg[26]) );
  DFQD2BWP12T30P140 input_reg_reg_24_ ( .D(n65), .CP(n2), .Q(input_reg[24]) );
  DFQD2BWP12T30P140 input_reg_reg_16_ ( .D(n57), .CP(n4), .Q(input_reg[16]) );
  DFQD2BWP12T30P140 input_reg_reg_8_ ( .D(n49), .CP(n3), .Q(input_reg[8]) );
  DFQD2BWP12T30P140 input_reg_reg_7_ ( .D(n48), .CP(n2), .Q(input_reg[7]) );
  DFQD2BWP12T30P140 input_reg_reg_6_ ( .D(n47), .CP(n4), .Q(input_reg[6]) );
  DFQD2BWP12T30P140 input_reg_reg_5_ ( .D(n46), .CP(n3), .Q(input_reg[5]) );
  DFQD2BWP12T30P140 input_reg_reg_4_ ( .D(n45), .CP(n2), .Q(input_reg[4]) );
  DFQD2BWP12T30P140 input_reg_reg_3_ ( .D(n44), .CP(n4), .Q(input_reg[3]) );
  DFQD2BWP12T30P140 input_reg_reg_2_ ( .D(n43), .CP(n3), .Q(input_reg[2]) );
  DFQD2BWP12T30P140 input_reg_reg_1_ ( .D(n42), .CP(n2), .Q(input_reg[1]) );
  DFQD2BWP12T30P140 input_reg_reg_23_ ( .D(n64), .CP(n4), .Q(input_reg[23]) );
  DFQD2BWP12T30P140 input_reg_reg_22_ ( .D(n63), .CP(n3), .Q(input_reg[22]) );
  DFQD2BWP12T30P140 input_reg_reg_21_ ( .D(n62), .CP(n2), .Q(input_reg[21]) );
  DFQD2BWP12T30P140 input_reg_reg_20_ ( .D(n61), .CP(n4), .Q(input_reg[20]) );
  DFQD2BWP12T30P140 input_reg_reg_18_ ( .D(n59), .CP(n2), .Q(input_reg[18]) );
  DFQD2BWP12T30P140 input_reg_reg_17_ ( .D(n58), .CP(n4), .Q(input_reg[17]) );
  DFQD2BWP12T30P140 input_reg_reg_15_ ( .D(n56), .CP(n3), .Q(input_reg[15]) );
  DFQD2BWP12T30P140 input_reg_reg_14_ ( .D(n55), .CP(n2), .Q(input_reg[14]) );
  DFQD2BWP12T30P140 input_reg_reg_13_ ( .D(n54), .CP(n4), .Q(input_reg[13]) );
  DFQD2BWP12T30P140 input_reg_reg_12_ ( .D(n53), .CP(n3), .Q(input_reg[12]) );
  DFQD2BWP12T30P140 input_reg_reg_11_ ( .D(n52), .CP(n2), .Q(input_reg[11]) );
  DFQD2BWP12T30P140 input_reg_reg_10_ ( .D(n51), .CP(n4), .Q(input_reg[10]) );
  DFQD2BWP12T30P140 input_reg_reg_9_ ( .D(n50), .CP(n3), .Q(input_reg[9]) );
  DFQD2BWP12T30P140 byte_counter_reg_5_ ( .D(n75), .CP(n2), .Q(byte_counter[5]) );
  DFQD2BWP12T30P140 byte_counter_reg_1_ ( .D(n79), .CP(n4), .Q(byte_counter[1]) );
  DFQD2BWP12T30P140 byte_counter_reg_3_ ( .D(n77), .CP(n3), .Q(byte_counter[3]) );
  DFQD2BWP12T30P140 byte_counter_reg_6_ ( .D(n74), .CP(n2), .Q(byte_counter[6]) );
  DFQD2BWP12T30P140 byte_counter_reg_2_ ( .D(n78), .CP(n4), .Q(byte_counter[2]) );
  DFQD2BWP12T30P140 byte_counter_reg_4_ ( .D(n76), .CP(n2), .Q(byte_counter[4]) );
  DFQD2BWP12T30P140 byte_counter_reg_0_ ( .D(n80), .CP(n4), .Q(byte_counter[0]) );
  DFQD2BWP12T30P140 fstate_reg_0_ ( .D(n84), .CP(n3), .Q(fstate[0]) );
  DFQD2BWP12T30P140 fstate_reg_1_ ( .D(n83), .CP(n2), .Q(fstate[1]) );
  DFQD1BWP12T30P140 input_reg_reg_25_ ( .D(n66), .CP(n3), .Q(input_reg[25]) );
  DFQD1BWP12T30P140 input_reg_reg_19_ ( .D(n60), .CP(n3), .Q(input_reg[19]) );
  DFQD1BWP12T30P140 state_reg_0_ ( .D(n81), .CP(n3), .Q(state[0]) );
  NR2D0BWP12T30P140 U3 ( .A1(state[1]), .A2(n105), .ZN(n104) );
  ND2D0BWP12T30P140 U4 ( .A1(tx_valid), .A2(n13), .ZN(n15) );
  INVD0BWP12T30P140 U5 ( .I(state[0]), .ZN(n105) );
  INVD0BWP12T30P140 U6 ( .I(sys_clk), .ZN(n1) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(n2) );
  INVD0BWP12T30P140 U8 ( .I(n1), .ZN(n3) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  AO31D0BWP12T30P140 U10 ( .A1(fstate[1]), .A2(tx_valid), .A3(n6), .B(n11), 
        .Z(n5) );
  BUFFD1BWP12T30P140 U11 ( .I(n104), .Z(wbtx_cyc_o) );
  CKBD0BWP12T30P140 U12 ( .I(wbtx_cyc_o), .Z(wbtx_stb_o) );
  CKBD0BWP12T30P140 U13 ( .I(tx_adr[0]), .Z(wbtx_adr_o[2]) );
  CKBD0BWP12T30P140 U14 ( .I(tx_adr[1]), .Z(wbtx_adr_o[3]) );
  CKBD0BWP12T30P140 U15 ( .I(tx_adr[2]), .Z(wbtx_adr_o[4]) );
  CKBD0BWP12T30P140 U16 ( .I(tx_adr[3]), .Z(wbtx_adr_o[5]) );
  CKBD0BWP12T30P140 U17 ( .I(tx_adr[4]), .Z(wbtx_adr_o[6]) );
  CKBD0BWP12T30P140 U18 ( .I(tx_adr[5]), .Z(wbtx_adr_o[7]) );
  CKBD0BWP12T30P140 U19 ( .I(tx_adr[6]), .Z(wbtx_adr_o[8]) );
  CKBD0BWP12T30P140 U20 ( .I(tx_adr[7]), .Z(wbtx_adr_o[9]) );
  CKBD0BWP12T30P140 U21 ( .I(tx_adr[8]), .Z(wbtx_adr_o[10]) );
  CKBD0BWP12T30P140 U22 ( .I(tx_adr[9]), .Z(wbtx_adr_o[11]) );
  CKBD0BWP12T30P140 U23 ( .I(tx_adr[10]), .Z(wbtx_adr_o[12]) );
  CKBD0BWP12T30P140 U24 ( .I(tx_adr[11]), .Z(wbtx_adr_o[13]) );
  CKBD0BWP12T30P140 U25 ( .I(tx_adr[12]), .Z(wbtx_adr_o[14]) );
  CKBD0BWP12T30P140 U26 ( .I(tx_adr[13]), .Z(wbtx_adr_o[15]) );
  CKBD0BWP12T30P140 U27 ( .I(tx_adr[14]), .Z(wbtx_adr_o[16]) );
  CKBD0BWP12T30P140 U28 ( .I(tx_adr[15]), .Z(wbtx_adr_o[17]) );
  CKBD0BWP12T30P140 U29 ( .I(tx_adr[16]), .Z(wbtx_adr_o[18]) );
  CKBD0BWP12T30P140 U30 ( .I(tx_adr[17]), .Z(wbtx_adr_o[19]) );
  CKBD0BWP12T30P140 U31 ( .I(tx_adr[18]), .Z(wbtx_adr_o[20]) );
  CKBD0BWP12T30P140 U32 ( .I(tx_adr[19]), .Z(wbtx_adr_o[21]) );
  CKBD0BWP12T30P140 U33 ( .I(tx_adr[20]), .Z(wbtx_adr_o[22]) );
  CKBD0BWP12T30P140 U34 ( .I(tx_adr[21]), .Z(wbtx_adr_o[23]) );
  CKBD0BWP12T30P140 U35 ( .I(tx_adr[22]), .Z(wbtx_adr_o[24]) );
  CKBD0BWP12T30P140 U36 ( .I(tx_adr[23]), .Z(wbtx_adr_o[25]) );
  CKBD0BWP12T30P140 U37 ( .I(tx_adr[24]), .Z(wbtx_adr_o[26]) );
  CKBD0BWP12T30P140 U38 ( .I(tx_adr[25]), .Z(wbtx_adr_o[27]) );
  CKBD0BWP12T30P140 U39 ( .I(tx_adr[26]), .Z(wbtx_adr_o[28]) );
  CKBD0BWP12T30P140 U40 ( .I(tx_adr[27]), .Z(wbtx_adr_o[29]) );
  CKBD0BWP12T30P140 U41 ( .I(tx_adr[28]), .Z(wbtx_adr_o[30]) );
  CKBD0BWP12T30P140 U42 ( .I(tx_adr[29]), .Z(wbtx_adr_o[31]) );
  INVD0BWP12T30P140 U43 ( .I(fstate[0]), .ZN(n6) );
  AOI221D0BWP12T30P140 U44 ( .A1(byte_counter[6]), .A2(fstate[0]), .B1(
        tx_valid), .B2(n6), .C(fstate[1]), .ZN(n11) );
  NR3D0BWP12T30P140 U45 ( .A1(fstate[1]), .A2(sys_rst), .A3(n6), .ZN(n37) );
  INVD0BWP12T30P140 U46 ( .I(n37), .ZN(n8) );
  INVD0BWP12T30P140 U47 ( .I(fstate[1]), .ZN(n9) );
  AO211D0BWP12T30P140 U48 ( .A1(fstate[0]), .A2(empty), .B(sys_rst), .C(n9), 
        .Z(n7) );
  OAI21D0BWP12T30P140 U49 ( .A1(n5), .A2(n8), .B(n7), .ZN(n83) );
  AOI221D0BWP12T30P140 U50 ( .A1(empty), .A2(fstate[0]), .B1(n9), .B2(
        fstate[0]), .C(n5), .ZN(n10) );
  AOI21D0BWP12T30P140 U51 ( .A1(n11), .A2(fstate[0]), .B(n10), .ZN(n12) );
  NR2D0BWP12T30P140 U52 ( .A1(sys_rst), .A2(n12), .ZN(n84) );
  NR2D0BWP12T30P140 U53 ( .A1(tx_bytecount[1]), .A2(tx_bytecount[0]), .ZN(n109) );
  INVD0BWP12T30P140 U54 ( .I(state[1]), .ZN(n107) );
  AOI21D0BWP12T30P140 U55 ( .A1(fstate[0]), .A2(fstate[1]), .B(full), .ZN(n13)
         );
  AOI221D0BWP12T30P140 U56 ( .A1(n109), .A2(n107), .B1(n15), .B2(n107), .C(
        state[0]), .ZN(tx_next) );
  INVD0BWP12T30P140 U57 ( .I(tx_next), .ZN(n38) );
  ND2D0BWP12T30P140 U58 ( .A1(n37), .A2(n38), .ZN(n18) );
  ND2D0BWP12T30P140 U59 ( .A1(n37), .A2(tx_next), .ZN(n21) );
  INVD0BWP12T30P140 U60 ( .I(n21), .ZN(n39) );
  MAOI22D0BWP12T30P140 U61 ( .A1(byte_counter[0]), .A2(n18), .B1(n39), .B2(
        byte_counter[0]), .ZN(n80) );
  ND2D0BWP12T30P140 U62 ( .A1(byte_counter[1]), .A2(byte_counter[0]), .ZN(n20)
         );
  INR2D1BWP12T30P140 U63 ( .A1(byte_counter[2]), .B1(n20), .ZN(n95) );
  ND2D0BWP12T30P140 U64 ( .A1(byte_counter[3]), .A2(n95), .ZN(n36) );
  NR2D0BWP12T30P140 U65 ( .A1(byte_counter[3]), .A2(n21), .ZN(n96) );
  OAI21D0BWP12T30P140 U66 ( .A1(n95), .A2(n21), .B(n18), .ZN(n97) );
  OAI21D0BWP12T30P140 U67 ( .A1(n96), .A2(n97), .B(byte_counter[4]), .ZN(n14)
         );
  OAI31D0BWP12T30P140 U68 ( .A1(byte_counter[4]), .A2(n21), .A3(n36), .B(n14), 
        .ZN(n76) );
  INVD0BWP12T30P140 U69 ( .I(n15), .ZN(n16) );
  AOI31D0BWP12T30P140 U70 ( .A1(n109), .A2(n16), .A3(n107), .B(state[0]), .ZN(
        n17) );
  AOI211D0BWP12T30P140 U71 ( .A1(wbtx_cyc_o), .A2(wbtx_ack_i), .B(sys_rst), 
        .C(n17), .ZN(n81) );
  NR2D0BWP12T30P140 U72 ( .A1(byte_counter[1]), .A2(n21), .ZN(n98) );
  OAI21D0BWP12T30P140 U73 ( .A1(byte_counter[0]), .A2(n21), .B(n18), .ZN(n99)
         );
  OAI21D0BWP12T30P140 U74 ( .A1(n98), .A2(n99), .B(byte_counter[2]), .ZN(n19)
         );
  OAI31D0BWP12T30P140 U76 ( .A1(byte_counter[2]), .A2(n21), .A3(n20), .B(n19), 
        .ZN(n78) );
  IND2D1BWP12T30P140 U77 ( .A1(n36), .B1(byte_counter[4]), .ZN(n100) );
  OAI21D0BWP12T30P140 U79 ( .A1(n38), .A2(n100), .B(n37), .ZN(n103) );
  INVD0BWP12T30P140 U80 ( .I(byte_counter[5]), .ZN(n102) );
  ND2D0BWP12T30P140 U82 ( .A1(n39), .A2(n102), .ZN(n101) );
  IND3D1BWP12T30P140 U83 ( .A1(n100), .B1(n39), .B2(byte_counter[5]), .ZN(n94)
         );
  INVD0BWP12T30P140 U85 ( .I(byte_counter[6]), .ZN(n93) );
  AOI32D0BWP12T30P140 U86 ( .A1(n103), .A2(byte_counter[6]), .A3(n101), .B1(
        n94), .B2(n93), .ZN(n74) );
  AO22D0BWP12T30P140 U88 ( .A1(byte_counter[3]), .A2(n97), .B1(n96), .B2(n95), 
        .Z(n77) );
  AO22D0BWP12T30P140 U89 ( .A1(byte_counter[1]), .A2(n99), .B1(n98), .B2(
        byte_counter[0]), .Z(n79) );
  OAI22D0BWP12T30P140 U91 ( .A1(n103), .A2(n102), .B1(n101), .B2(n100), .ZN(
        n75) );
  CKMUX2D0BWP12T30P140 U92 ( .I0(input_reg[9]), .I1(wbtx_dat_i[9]), .S(n104), 
        .Z(n50) );
  CKMUX2D0BWP12T30P140 U94 ( .I0(input_reg[10]), .I1(wbtx_dat_i[10]), .S(n104), 
        .Z(n51) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(input_reg[11]), .I1(wbtx_dat_i[11]), .S(n104), 
        .Z(n52) );
  CKMUX2D0BWP12T30P140 U97 ( .I0(input_reg[12]), .I1(wbtx_dat_i[12]), .S(n104), 
        .Z(n53) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(input_reg[13]), .I1(wbtx_dat_i[13]), .S(n104), 
        .Z(n54) );
  CKMUX2D0BWP12T30P140 U99 ( .I0(input_reg[14]), .I1(wbtx_dat_i[14]), .S(n104), 
        .Z(n55) );
  CKMUX2D0BWP12T30P140 U100 ( .I0(input_reg[15]), .I1(wbtx_dat_i[15]), .S(
        wbtx_cyc_o), .Z(n56) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(input_reg[17]), .I1(wbtx_dat_i[17]), .S(
        wbtx_cyc_o), .Z(n58) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(input_reg[18]), .I1(wbtx_dat_i[18]), .S(n104), .Z(n59) );
  CKMUX2D0BWP12T30P140 U103 ( .I0(input_reg[19]), .I1(wbtx_dat_i[19]), .S(
        wbtx_cyc_o), .Z(n60) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(input_reg[20]), .I1(wbtx_dat_i[20]), .S(n104), .Z(n61) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(input_reg[21]), .I1(wbtx_dat_i[21]), .S(
        wbtx_cyc_o), .Z(n62) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(input_reg[22]), .I1(wbtx_dat_i[22]), .S(n104), .Z(n63) );
  CKMUX2D0BWP12T30P140 U107 ( .I0(input_reg[23]), .I1(wbtx_dat_i[23]), .S(
        wbtx_cyc_o), .Z(n64) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(input_reg[1]), .I1(wbtx_dat_i[1]), .S(
        wbtx_cyc_o), .Z(n42) );
  CKMUX2D0BWP12T30P140 U109 ( .I0(input_reg[2]), .I1(wbtx_dat_i[2]), .S(n104), 
        .Z(n43) );
  CKMUX2D0BWP12T30P140 U110 ( .I0(input_reg[3]), .I1(wbtx_dat_i[3]), .S(
        wbtx_cyc_o), .Z(n44) );
  CKMUX2D0BWP12T30P140 U111 ( .I0(input_reg[4]), .I1(wbtx_dat_i[4]), .S(n104), 
        .Z(n45) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(input_reg[5]), .I1(wbtx_dat_i[5]), .S(
        wbtx_cyc_o), .Z(n46) );
  CKMUX2D0BWP12T30P140 U113 ( .I0(input_reg[6]), .I1(wbtx_dat_i[6]), .S(n104), 
        .Z(n47) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(input_reg[7]), .I1(wbtx_dat_i[7]), .S(
        wbtx_cyc_o), .Z(n48) );
  CKMUX2D0BWP12T30P140 U115 ( .I0(input_reg[8]), .I1(wbtx_dat_i[8]), .S(n104), 
        .Z(n49) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(input_reg[16]), .I1(wbtx_dat_i[16]), .S(n104), .Z(n57) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(input_reg[24]), .I1(wbtx_dat_i[24]), .S(n104), .Z(n65) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(input_reg[25]), .I1(wbtx_dat_i[25]), .S(
        wbtx_cyc_o), .Z(n66) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(input_reg[26]), .I1(wbtx_dat_i[26]), .S(n104), .Z(n67) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(input_reg[27]), .I1(wbtx_dat_i[27]), .S(
        wbtx_cyc_o), .Z(n68) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(input_reg[28]), .I1(wbtx_dat_i[28]), .S(
        wbtx_cyc_o), .Z(n69) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(input_reg[29]), .I1(wbtx_dat_i[29]), .S(
        wbtx_cyc_o), .Z(n70) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(input_reg[30]), .I1(wbtx_dat_i[30]), .S(
        wbtx_cyc_o), .Z(n71) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(input_reg[31]), .I1(wbtx_dat_i[31]), .S(
        wbtx_cyc_o), .Z(n72) );
  CKMUX2D0BWP12T30P140 U125 ( .I0(input_reg[0]), .I1(wbtx_dat_i[0]), .S(
        wbtx_cyc_o), .Z(n73) );
  INVD0BWP12T30P140 U126 ( .I(wbtx_ack_i), .ZN(n106) );
  AOI211D0BWP12T30P140 U127 ( .A1(n107), .A2(n106), .B(sys_rst), .C(n105), 
        .ZN(n82) );
  INVD0BWP12T30P140 U128 ( .I(tx_bytecount[1]), .ZN(n110) );
  NR2D0BWP12T30P140 U129 ( .A1(tx_bytecount[0]), .A2(n110), .ZN(n108) );
  AOI22D0BWP12T30P140 U130 ( .A1(n109), .A2(input_reg[28]), .B1(n108), .B2(
        input_reg[12]), .ZN(n28) );
  AOI22D0BWP12T30P140 U131 ( .A1(n109), .A2(input_reg[26]), .B1(n108), .B2(
        input_reg[10]), .ZN(n32) );
  AOI22D0BWP12T30P140 U132 ( .A1(n109), .A2(input_reg[31]), .B1(n108), .B2(
        input_reg[15]), .ZN(n22) );
  AOI22D0BWP12T30P140 U133 ( .A1(n109), .A2(input_reg[25]), .B1(n108), .B2(
        input_reg[9]), .ZN(n34) );
  AOI22D0BWP12T30P140 U134 ( .A1(n109), .A2(input_reg[29]), .B1(n108), .B2(
        input_reg[13]), .ZN(n26) );
  AOI22D0BWP12T30P140 U135 ( .A1(n109), .A2(input_reg[24]), .B1(input_reg[8]), 
        .B2(n108), .ZN(n40) );
  AOI22D0BWP12T30P140 U136 ( .A1(n109), .A2(input_reg[27]), .B1(n108), .B2(
        input_reg[11]), .ZN(n30) );
  AOI22D0BWP12T30P140 U137 ( .A1(n109), .A2(input_reg[30]), .B1(n108), .B2(
        input_reg[14]), .ZN(n24) );
  INVD0BWP12T30P140 U138 ( .I(tx_bytecount[0]), .ZN(n111) );
  NR2D0BWP12T30P140 U139 ( .A1(n110), .A2(n111), .ZN(n113) );
  NR2D0BWP12T30P140 U140 ( .A1(tx_bytecount[1]), .A2(n111), .ZN(n112) );
  AOI22D0BWP12T30P140 U141 ( .A1(input_reg[0]), .A2(n113), .B1(input_reg[16]), 
        .B2(n112), .ZN(n41) );
  AOI22D0BWP12T30P140 U142 ( .A1(n113), .A2(input_reg[4]), .B1(n112), .B2(
        input_reg[20]), .ZN(n29) );
  AOI22D0BWP12T30P140 U143 ( .A1(n113), .A2(input_reg[3]), .B1(n112), .B2(
        input_reg[19]), .ZN(n31) );
  AOI22D0BWP12T30P140 U144 ( .A1(n113), .A2(input_reg[7]), .B1(n112), .B2(
        input_reg[23]), .ZN(n23) );
  AOI22D0BWP12T30P140 U145 ( .A1(n113), .A2(input_reg[2]), .B1(n112), .B2(
        input_reg[18]), .ZN(n33) );
  AOI22D0BWP12T30P140 U146 ( .A1(n113), .A2(input_reg[6]), .B1(n112), .B2(
        input_reg[22]), .ZN(n25) );
  AOI22D0BWP12T30P140 U147 ( .A1(n113), .A2(input_reg[1]), .B1(n112), .B2(
        input_reg[17]), .ZN(n35) );
  AOI22D0BWP12T30P140 U148 ( .A1(n113), .A2(input_reg[5]), .B1(n112), .B2(
        input_reg[21]), .ZN(n27) );
endmodule


module minimac ( sys_clk, sys_rst, csr_a, csr_we, csr_di, csr_do, irq_rx, 
        irq_tx, wbrx_adr_o, wbrx_cti_o, wbrx_cyc_o, wbrx_stb_o, wbrx_ack_i, 
        wbrx_dat_o, wbtx_adr_o, wbtx_cti_o, wbtx_cyc_o, wbtx_stb_o, wbtx_ack_i, 
        wbtx_dat_i, phy_tx_clk, phy_tx_data, phy_tx_en, phy_tx_er, phy_rx_clk, 
        phy_rx_data, phy_dv, phy_rx_er, phy_col, phy_crs, phy_mii_clk, 
        phy_mii_data );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  output [31:0] wbrx_adr_o;
  output [2:0] wbrx_cti_o;
  output [31:0] wbrx_dat_o;
  output [31:0] wbtx_adr_o;
  output [2:0] wbtx_cti_o;
  input [31:0] wbtx_dat_i;
  output [3:0] phy_tx_data;
  input [3:0] phy_rx_data;
  input sys_clk, sys_rst, csr_we, wbrx_ack_i, wbtx_ack_i, phy_tx_clk,
         phy_rx_clk, phy_dv, phy_rx_er, phy_col, phy_crs;
  output irq_rx, irq_tx, wbrx_cyc_o, wbrx_stb_o, wbtx_cyc_o, wbtx_stb_o,
         phy_tx_en, phy_tx_er, phy_mii_clk;
  inout phy_mii_data;
  wire   rx_rst, tx_rst, rx_valid, rx_resetcount, rx_incrcount, rx_endframe,
         fifo_full, tx_valid, tx_next, n12, n13, n14, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [29:0] rx_adr;
  wire   [29:0] tx_adr;
  wire   [1:0] tx_bytecount;

  minimac_ctlif_0 ctlif ( .sys_clk(n13), .sys_rst(n14), .csr_a(csr_a), 
        .csr_we(csr_we), .csr_di(csr_di), .csr_do(csr_do), .irq_rx(irq_rx), 
        .irq_tx(irq_tx), .rx_rst(rx_rst), .tx_rst(tx_rst), .rx_valid(rx_valid), 
        .rx_adr(rx_adr), .rx_resetcount(rx_resetcount), .rx_incrcount(
        rx_incrcount), .rx_endframe(rx_endframe), .fifo_full(fifo_full), 
        .tx_valid(tx_valid), .tx_adr(tx_adr), .tx_bytecount(tx_bytecount), 
        .tx_next(tx_next), .phy_mii_clk(phy_mii_clk), .phy_mii_data(
        phy_mii_data) );
  minimac_rx rx ( .sys_clk(sys_clk), .sys_rst(n14), .rx_rst(rx_rst), 
        .wbm_adr_o({wbrx_adr_o[31:2], SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}), .wbm_cyc_o(wbrx_cyc_o), .wbm_stb_o(
        wbrx_stb_o), .wbm_ack_i(wbrx_ack_i), .wbm_dat_o(wbrx_dat_o), 
        .rx_valid(rx_valid), .rx_adr(rx_adr), .rx_resetcount(rx_resetcount), 
        .rx_incrcount(rx_incrcount), .rx_endframe(rx_endframe), .fifo_full(
        fifo_full), .phy_rx_clk(phy_rx_clk), .phy_rx_data(phy_rx_data), 
        .phy_dv(phy_dv), .phy_rx_er(phy_rx_er) );
  minimac_tx tx ( .sys_clk(sys_clk), .sys_rst(sys_rst), .tx_rst(tx_rst), 
        .tx_valid(tx_valid), .tx_adr(tx_adr), .tx_bytecount(tx_bytecount), 
        .tx_next(tx_next), .wbtx_adr_o({wbtx_adr_o[31:2], 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .wbtx_cyc_o(
        wbtx_cyc_o), .wbtx_stb_o(wbtx_stb_o), .wbtx_ack_i(wbtx_ack_i), 
        .wbtx_dat_i(wbtx_dat_i), .phy_tx_clk(phy_tx_clk), .phy_tx_en(phy_tx_en), .phy_tx_data(phy_tx_data) );
  TIEHBWP12T30P140 U3 ( .Z(n12) );
  INVD0BWP12T30P140 U4 ( .I(n12), .ZN(phy_tx_er) );
  INVD0BWP12T30P140 U5 ( .I(n12), .ZN(wbtx_cti_o[0]) );
  INVD0BWP12T30P140 U6 ( .I(n12), .ZN(wbtx_cti_o[1]) );
  INVD0BWP12T30P140 U7 ( .I(n12), .ZN(wbtx_cti_o[2]) );
  INVD0BWP12T30P140 U8 ( .I(n12), .ZN(wbtx_adr_o[0]) );
  INVD0BWP12T30P140 U9 ( .I(n12), .ZN(wbtx_adr_o[1]) );
  INVD0BWP12T30P140 U10 ( .I(n12), .ZN(wbrx_cti_o[0]) );
  INVD0BWP12T30P140 U11 ( .I(n12), .ZN(wbrx_cti_o[1]) );
  INVD0BWP12T30P140 U12 ( .I(n12), .ZN(wbrx_cti_o[2]) );
  INVD0BWP12T30P140 U13 ( .I(n12), .ZN(wbrx_adr_o[0]) );
  INVD0BWP12T30P140 U14 ( .I(n12), .ZN(wbrx_adr_o[1]) );
  CKBD0BWP12T30P140 U15 ( .I(sys_clk), .Z(n13) );
  CKBD0BWP12T30P140 U16 ( .I(sys_rst), .Z(n14) );
endmodule

