/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:30:21 2026
/////////////////////////////////////////////////////////////


module minimac_ctlif_0 ( sys_clk, sys_rst, csr_a, csr_do, irq_rx, irq_tx, 
        rx_rst, tx_rst, rx_valid, rx_adr, rx_resetcount, rx_incrcount, 
        rx_endframe, fifo_full, tx_valid, tx_adr, tx_bytecount, tx_next, 
        phy_mii_clk, phy_mii_data );
  input [13:0] csr_a;
  output [31:0] csr_do;
  output [29:0] rx_adr;
  output [29:0] tx_adr;
  output [1:0] tx_bytecount;
  input sys_clk, sys_rst, rx_resetcount, rx_incrcount, rx_endframe, fifo_full,
         tx_next;
  output irq_rx, irq_tx, rx_rst, tx_rst, rx_valid, tx_valid, phy_mii_clk;
  inout phy_mii_data;
  wire   mii_data_di, mii_data_di1, N349, N350, N351, N352, N353, N354, N355,
         N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366,
         N367, N368, N369, N370, N371, N372, N373, N374, N375, N376, N377,
         N378, N380, tx_valid_r, N482, N483, N484, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486;
  wire   [1:0] slot0_state;
  wire   [1:0] slot1_state;
  wire   [1:0] slot2_state;
  wire   [1:0] slot3_state;
  wire   [10:0] tx_remaining;
  wire   [10:0] slot3_count;
  wire   [10:0] slot2_count;
  wire   [10:0] slot1_count;
  wire   [10:0] slot0_count;

  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N360), .CP(n2), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_12_ ( .D(N361), .CP(sys_clk), .Q(csr_do[12]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N362), .CP(n2), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N363), .CP(n6), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N364), .CP(n5), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(N365), .CP(n2), .Q(csr_do[16]) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N366), .CP(n4), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N367), .CP(n7), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N368), .CP(n1), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_20_ ( .D(N369), .CP(n6), .Q(csr_do[20]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N370), .CP(n1), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N371), .CP(n5), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N372), .CP(sys_clk), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_24_ ( .D(N373), .CP(sys_clk), .Q(csr_do[24]) );
  DFQD2BWP12T30P140 csr_do_reg_26_ ( .D(N375), .CP(n6), .Q(csr_do[26]) );
  DFQD2BWP12T30P140 csr_do_reg_27_ ( .D(N376), .CP(n7), .Q(csr_do[27]) );
  DFQD2BWP12T30P140 csr_do_reg_28_ ( .D(N377), .CP(n2), .Q(csr_do[28]) );
  DFQD2BWP12T30P140 csr_do_reg_29_ ( .D(N378), .CP(n4), .Q(csr_do[29]) );
  DFQD2BWP12T30P140 csr_do_reg_30_ ( .D(N380), .CP(n7), .Q(csr_do[30]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N359), .CP(n4), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N358), .CP(sys_clk), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N357), .CP(n2), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N356), .CP(n5), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N355), .CP(n1), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N354), .CP(n7), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N353), .CP(sys_clk), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N352), .CP(n4), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N351), .CP(n2), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N349), .CP(n6), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 irq_rx_reg ( .D(N482), .CP(n6), .Q(irq_rx) );
  DFQD2BWP12T30P140 irq_tx_reg ( .D(N484), .CP(n5), .Q(irq_tx) );
  BUFTD4BWP12T30P140 phy_mii_data_tri ( .I(phy_mii_clk), .OE(phy_mii_clk), .Z(
        phy_mii_data) );
  DFQD2BWP12T30P140 mii_data_di_reg ( .D(mii_data_di1), .CP(n4), .Q(
        mii_data_di) );
  DFQD2BWP12T30P140 tx_adr_reg_28_ ( .D(n225), .CP(n2), .Q(tx_adr[28]) );
  DFQD2BWP12T30P140 slot0_count_reg_3_ ( .D(n142), .CP(n1), .Q(slot0_count[3])
         );
  DFQD2BWP12T30P140 slot0_count_reg_5_ ( .D(n140), .CP(n7), .Q(slot0_count[5])
         );
  DFQD2BWP12T30P140 slot0_count_reg_7_ ( .D(n138), .CP(n2), .Q(slot0_count[7])
         );
  DFQD2BWP12T30P140 tx_valid_r_reg ( .D(N483), .CP(n5), .Q(tx_valid_r) );
  DFQD2BWP12T30P140 tx_remaining_reg_10_ ( .D(n187), .CP(n7), .Q(
        tx_remaining[10]) );
  DFQD2BWP12T30P140 tx_remaining_reg_5_ ( .D(n192), .CP(n6), .Q(
        tx_remaining[5]) );
  DFQD2BWP12T30P140 slot3_count_reg_3_ ( .D(n181), .CP(sys_clk), .Q(
        slot3_count[3]) );
  DFQD2BWP12T30P140 slot3_count_reg_5_ ( .D(n179), .CP(n1), .Q(slot3_count[5])
         );
  DFQD2BWP12T30P140 slot3_count_reg_7_ ( .D(n177), .CP(n6), .Q(slot3_count[7])
         );
  DFQD2BWP12T30P140 slot3_state_reg_1_ ( .D(n172), .CP(n7), .Q(slot3_state[1])
         );
  DFQD2BWP12T30P140 slot0_count_reg_10_ ( .D(n135), .CP(sys_clk), .Q(
        slot0_count[10]) );
  DFQD2BWP12T30P140 slot2_count_reg_3_ ( .D(n168), .CP(n1), .Q(slot2_count[3])
         );
  DFQD2BWP12T30P140 slot2_count_reg_5_ ( .D(n166), .CP(n5), .Q(slot2_count[5])
         );
  DFQD2BWP12T30P140 slot2_count_reg_7_ ( .D(n164), .CP(n6), .Q(slot2_count[7])
         );
  DFQD2BWP12T30P140 slot2_count_reg_9_ ( .D(n162), .CP(n7), .Q(slot2_count[9])
         );
  DFQD2BWP12T30P140 slot1_count_reg_9_ ( .D(n149), .CP(n1), .Q(slot1_count[9])
         );
  DFQD2BWP12T30P140 slot1_count_reg_7_ ( .D(n151), .CP(sys_clk), .Q(
        slot1_count[7]) );
  DFQD2BWP12T30P140 slot1_count_reg_5_ ( .D(n153), .CP(n7), .Q(slot1_count[5])
         );
  DFQD2BWP12T30P140 slot1_count_reg_3_ ( .D(n155), .CP(n7), .Q(slot1_count[3])
         );
  DFQD2BWP12T30P140 tx_adr_reg_29_ ( .D(n226), .CP(n4), .Q(tx_adr[29]) );
  DFQD2BWP12T30P140 tx_adr_reg_26_ ( .D(n223), .CP(n2), .Q(tx_adr[26]) );
  DFQD2BWP12T30P140 tx_adr_reg_24_ ( .D(n221), .CP(n5), .Q(tx_adr[24]) );
  DFQD2BWP12T30P140 tx_adr_reg_22_ ( .D(n219), .CP(sys_clk), .Q(tx_adr[22]) );
  DFQD2BWP12T30P140 tx_adr_reg_18_ ( .D(n215), .CP(n6), .Q(tx_adr[18]) );
  DFQD2BWP12T30P140 tx_adr_reg_16_ ( .D(n213), .CP(n1), .Q(tx_adr[16]) );
  DFQD2BWP12T30P140 tx_adr_reg_14_ ( .D(n211), .CP(n2), .Q(tx_adr[14]) );
  DFQD2BWP12T30P140 tx_adr_reg_12_ ( .D(n209), .CP(sys_clk), .Q(tx_adr[12]) );
  DFQD2BWP12T30P140 tx_adr_reg_10_ ( .D(n207), .CP(n4), .Q(tx_adr[10]) );
  DFQD2BWP12T30P140 tx_adr_reg_8_ ( .D(n205), .CP(n7), .Q(tx_adr[8]) );
  DFQD2BWP12T30P140 tx_adr_reg_6_ ( .D(n203), .CP(n5), .Q(tx_adr[6]) );
  DFQD2BWP12T30P140 tx_adr_reg_4_ ( .D(n201), .CP(n4), .Q(tx_adr[4]) );
  DFQD2BWP12T30P140 tx_adr_reg_2_ ( .D(n199), .CP(n5), .Q(tx_adr[2]) );
  DFQD2BWP12T30P140 slot0_count_reg_9_ ( .D(n136), .CP(n6), .Q(slot0_count[9])
         );
  DFQD2BWP12T30P140 slot0_count_reg_1_ ( .D(n144), .CP(n7), .Q(slot0_count[1])
         );
  DFQD2BWP12T30P140 slot3_count_reg_10_ ( .D(n174), .CP(n2), .Q(
        slot3_count[10]) );
  DFQD2BWP12T30P140 tx_adr_reg_0_ ( .D(n227), .CP(n4), .Q(tx_adr[0]) );
  DFQD2BWP12T30P140 slot0_count_reg_4_ ( .D(n141), .CP(n4), .Q(slot0_count[4])
         );
  DFQD2BWP12T30P140 slot0_count_reg_8_ ( .D(n137), .CP(sys_clk), .Q(
        slot0_count[8]) );
  DFQD2BWP12T30P140 slot2_count_reg_10_ ( .D(n161), .CP(n7), .Q(
        slot2_count[10]) );
  DFQD2BWP12T30P140 slot1_count_reg_10_ ( .D(n148), .CP(n6), .Q(
        slot1_count[10]) );
  DFQD2BWP12T30P140 tx_adr_reg_1_ ( .D(n198), .CP(sys_clk), .Q(tx_adr[1]) );
  DFQD2BWP12T30P140 tx_remaining_reg_7_ ( .D(n190), .CP(n2), .Q(
        tx_remaining[7]) );
  DFQD2BWP12T30P140 slot0_count_reg_2_ ( .D(n143), .CP(sys_clk), .Q(
        slot0_count[2]) );
  DFQD2BWP12T30P140 slot2_state_reg_1_ ( .D(n159), .CP(n1), .Q(slot2_state[1])
         );
  DFQD2BWP12T30P140 slot0_state_reg_1_ ( .D(n133), .CP(n7), .Q(slot0_state[1])
         );
  DFQD2BWP12T30P140 tx_remaining_reg_3_ ( .D(n194), .CP(n1), .Q(
        tx_remaining[3]) );
  DFQD2BWP12T30P140 slot1_state_reg_1_ ( .D(n146), .CP(n4), .Q(slot1_state[1])
         );
  DFQD2BWP12T30P140 tx_remaining_reg_8_ ( .D(n189), .CP(n5), .Q(
        tx_remaining[8]) );
  DFQD2BWP12T30P140 tx_remaining_reg_4_ ( .D(n193), .CP(sys_clk), .Q(
        tx_remaining[4]) );
  DFQD2BWP12T30P140 slot3_count_reg_4_ ( .D(n180), .CP(n5), .Q(slot3_count[4])
         );
  DFQD2BWP12T30P140 slot3_count_reg_6_ ( .D(n178), .CP(n5), .Q(slot3_count[6])
         );
  DFQD2BWP12T30P140 tx_adr_reg_27_ ( .D(n224), .CP(n2), .Q(tx_adr[27]) );
  DFQD2BWP12T30P140 tx_adr_reg_25_ ( .D(n222), .CP(n1), .Q(tx_adr[25]) );
  DFQD2BWP12T30P140 tx_adr_reg_23_ ( .D(n220), .CP(n2), .Q(tx_adr[23]) );
  DFQD2BWP12T30P140 tx_adr_reg_21_ ( .D(n218), .CP(n4), .Q(tx_adr[21]) );
  DFQD2BWP12T30P140 tx_adr_reg_19_ ( .D(n216), .CP(n6), .Q(tx_adr[19]) );
  DFQD2BWP12T30P140 tx_adr_reg_17_ ( .D(n214), .CP(sys_clk), .Q(tx_adr[17]) );
  DFQD2BWP12T30P140 tx_adr_reg_15_ ( .D(n212), .CP(n6), .Q(tx_adr[15]) );
  DFQD2BWP12T30P140 tx_adr_reg_13_ ( .D(n210), .CP(n1), .Q(tx_adr[13]) );
  DFQD2BWP12T30P140 tx_adr_reg_11_ ( .D(n208), .CP(n4), .Q(tx_adr[11]) );
  DFQD2BWP12T30P140 tx_adr_reg_9_ ( .D(n206), .CP(n7), .Q(tx_adr[9]) );
  DFQD2BWP12T30P140 tx_adr_reg_7_ ( .D(n204), .CP(n6), .Q(tx_adr[7]) );
  DFQD2BWP12T30P140 tx_adr_reg_5_ ( .D(n202), .CP(n4), .Q(tx_adr[5]) );
  DFQD2BWP12T30P140 tx_adr_reg_3_ ( .D(n200), .CP(n2), .Q(tx_adr[3]) );
  DFQD2BWP12T30P140 slot3_count_reg_2_ ( .D(n182), .CP(n5), .Q(slot3_count[2])
         );
  DFQD2BWP12T30P140 slot2_count_reg_4_ ( .D(n167), .CP(n2), .Q(slot2_count[4])
         );
  DFQD2BWP12T30P140 slot2_count_reg_6_ ( .D(n165), .CP(n6), .Q(slot2_count[6])
         );
  DFQD2BWP12T30P140 slot2_count_reg_8_ ( .D(n163), .CP(n5), .Q(slot2_count[8])
         );
  DFQD2BWP12T30P140 slot1_count_reg_8_ ( .D(n150), .CP(n5), .Q(slot1_count[8])
         );
  DFQD2BWP12T30P140 slot1_count_reg_6_ ( .D(n152), .CP(n4), .Q(slot1_count[6])
         );
  DFQD2BWP12T30P140 slot1_count_reg_4_ ( .D(n154), .CP(n7), .Q(slot1_count[4])
         );
  DFQD2BWP12T30P140 slot2_count_reg_2_ ( .D(n169), .CP(n2), .Q(slot2_count[2])
         );
  DFQD2BWP12T30P140 slot1_count_reg_2_ ( .D(n156), .CP(n1), .Q(slot1_count[2])
         );
  DFQD2BWP12T30P140 slot3_state_reg_0_ ( .D(n173), .CP(n4), .Q(slot3_state[0])
         );
  DFQD2BWP12T30P140 tx_remaining_reg_2_ ( .D(n195), .CP(sys_clk), .Q(
        tx_remaining[2]) );
  DFQD2BWP12T30P140 slot2_state_reg_0_ ( .D(n160), .CP(n5), .Q(slot2_state[0])
         );
  DFQD2BWP12T30P140 slot3_count_reg_1_ ( .D(n183), .CP(sys_clk), .Q(
        slot3_count[1]) );
  DFQD2BWP12T30P140 slot2_count_reg_1_ ( .D(n170), .CP(n1), .Q(slot2_count[1])
         );
  DFQD2BWP12T30P140 slot1_count_reg_1_ ( .D(n157), .CP(n4), .Q(slot1_count[1])
         );
  DFQD2BWP12T30P140 mii_data_di1_reg ( .D(phy_mii_data), .CP(n7), .Q(
        mii_data_di1) );
  DFQD2BWP12T30P140 tx_remaining_reg_6_ ( .D(n191), .CP(n5), .Q(
        tx_remaining[6]) );
  DFQD2BWP12T30P140 tx_bytecount_reg_1_ ( .D(n185), .CP(n5), .Q(
        tx_bytecount[1]) );
  DFQD2BWP12T30P140 tx_remaining_reg_1_ ( .D(n196), .CP(n6), .Q(
        tx_remaining[1]) );
  DFQD2BWP12T30P140 slot1_state_reg_0_ ( .D(n147), .CP(n4), .Q(slot1_state[0])
         );
  DFQD2BWP12T30P140 slot0_state_reg_0_ ( .D(n134), .CP(n1), .Q(slot0_state[0])
         );
  DFQD2BWP12T30P140 slot3_count_reg_0_ ( .D(n184), .CP(n5), .Q(slot3_count[0])
         );
  DFQD2BWP12T30P140 slot2_count_reg_0_ ( .D(n171), .CP(n1), .Q(slot2_count[0])
         );
  DFQD2BWP12T30P140 slot1_count_reg_0_ ( .D(n158), .CP(n6), .Q(slot1_count[0])
         );
  DFQD2BWP12T30P140 tx_bytecount_reg_0_ ( .D(n186), .CP(sys_clk), .Q(
        tx_bytecount[0]) );
  DFQD2BWP12T30P140 tx_remaining_reg_0_ ( .D(n197), .CP(n4), .Q(
        tx_remaining[0]) );
  DFQD2BWP12T30P140 rx_rst_reg ( .D(n132), .CP(n2), .Q(rx_rst) );
  DFQD2BWP12T30P140 mii_data_do_reg ( .D(n228), .CP(n1), .Q(phy_mii_clk) );
  DFQD1BWP12T30P140 csr_do_reg_25_ ( .D(N374), .CP(n1), .Q(csr_do[25]) );
  DFQD1BWP12T30P140 csr_do_reg_1_ ( .D(N350), .CP(sys_clk), .Q(csr_do[1]) );
  DFQD1BWP12T30P140 slot3_count_reg_9_ ( .D(n175), .CP(n1), .Q(slot3_count[9])
         );
  DFQD1BWP12T30P140 tx_adr_reg_20_ ( .D(n217), .CP(n2), .Q(tx_adr[20]) );
  DFQD1BWP12T30P140 slot0_count_reg_6_ ( .D(n139), .CP(n6), .Q(slot0_count[6])
         );
  DFQD1BWP12T30P140 slot3_count_reg_8_ ( .D(n176), .CP(n6), .Q(slot3_count[8])
         );
  DFQD1BWP12T30P140 tx_remaining_reg_9_ ( .D(n188), .CP(n7), .Q(
        tx_remaining[9]) );
  DFQD1BWP12T30P140 slot0_count_reg_0_ ( .D(n145), .CP(n7), .Q(slot0_count[0])
         );
  INVD0BWP12T30P140 U3 ( .I(n3), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n3), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(sys_clk), .ZN(n3) );
  INVD0BWP12T30P140 U6 ( .I(n3), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(n3), .ZN(n5) );
  INVD0BWP12T30P140 U8 ( .I(n3), .ZN(n6) );
  INVD0BWP12T30P140 U9 ( .I(n3), .ZN(n7) );
  INVD0BWP12T30P140 U10 ( .I(sys_rst), .ZN(n486) );
  NR3D0BWP12T30P140 U11 ( .A1(slot0_state[0]), .A2(slot1_state[0]), .A3(
        slot2_state[0]), .ZN(n17) );
  IND2D1BWP12T30P140 U12 ( .A1(slot3_state[0]), .B1(n17), .ZN(rx_valid) );
  AN2D0BWP12T30P140 U13 ( .A1(rx_valid), .A2(phy_mii_clk), .Z(n10) );
  CKBD0BWP12T30P140 U14 ( .I(n10), .Z(rx_adr[25]) );
  INVD0BWP12T30P140 U15 ( .I(rx_adr[25]), .ZN(n8) );
  INVD0BWP12T30P140 U16 ( .I(n8), .ZN(rx_adr[24]) );
  INVD0BWP12T30P140 U17 ( .I(n8), .ZN(rx_adr[22]) );
  INVD0BWP12T30P140 U18 ( .I(n8), .ZN(rx_adr[21]) );
  INVD0BWP12T30P140 U19 ( .I(n8), .ZN(rx_adr[20]) );
  INVD0BWP12T30P140 U20 ( .I(n8), .ZN(rx_adr[18]) );
  INVD0BWP12T30P140 U21 ( .I(n8), .ZN(rx_adr[17]) );
  INVD0BWP12T30P140 U22 ( .I(n8), .ZN(rx_adr[16]) );
  INVD0BWP12T30P140 U23 ( .I(n8), .ZN(rx_adr[14]) );
  INVD0BWP12T30P140 U24 ( .I(n8), .ZN(rx_adr[13]) );
  INVD0BWP12T30P140 U25 ( .I(n8), .ZN(rx_adr[12]) );
  INVD0BWP12T30P140 U26 ( .I(n8), .ZN(rx_adr[0]) );
  INVD0BWP12T30P140 U27 ( .I(n8), .ZN(rx_adr[26]) );
  CKBD0BWP12T30P140 U28 ( .I(n10), .Z(rx_adr[9]) );
  INVD0BWP12T30P140 U29 ( .I(rx_adr[9]), .ZN(n9) );
  INVD0BWP12T30P140 U30 ( .I(n9), .ZN(rx_adr[6]) );
  INVD0BWP12T30P140 U31 ( .I(n9), .ZN(rx_adr[7]) );
  INVD0BWP12T30P140 U32 ( .I(n9), .ZN(rx_adr[1]) );
  INVD0BWP12T30P140 U33 ( .I(n9), .ZN(rx_adr[5]) );
  INVD0BWP12T30P140 U34 ( .I(n9), .ZN(rx_adr[3]) );
  INVD0BWP12T30P140 U35 ( .I(n9), .ZN(rx_adr[2]) );
  INVD0BWP12T30P140 U36 ( .I(n9), .ZN(rx_adr[11]) );
  INVD0BWP12T30P140 U37 ( .I(n9), .ZN(rx_adr[15]) );
  INVD0BWP12T30P140 U38 ( .I(n9), .ZN(rx_adr[19]) );
  INVD0BWP12T30P140 U39 ( .I(n9), .ZN(rx_adr[23]) );
  INVD0BWP12T30P140 U40 ( .I(n9), .ZN(rx_adr[28]) );
  INVD0BWP12T30P140 U41 ( .I(n9), .ZN(rx_adr[10]) );
  CKBD0BWP12T30P140 U42 ( .I(n10), .Z(rx_adr[27]) );
  INVD0BWP12T30P140 U43 ( .I(n9), .ZN(rx_adr[8]) );
  INVD0BWP12T30P140 U44 ( .I(n8), .ZN(rx_adr[4]) );
  INVD0BWP12T30P140 U45 ( .I(n9), .ZN(rx_adr[29]) );
  CKBD0BWP12T30P140 U46 ( .I(csr_do[30]), .Z(csr_do[31]) );
  INVD0BWP12T30P140 U47 ( .I(phy_mii_clk), .ZN(tx_rst) );
  NR2D0BWP12T30P140 U48 ( .A1(csr_a[0]), .A2(csr_a[2]), .ZN(n14) );
  INVD0BWP12T30P140 U49 ( .I(csr_a[1]), .ZN(n379) );
  AN2D0BWP12T30P140 U50 ( .A1(csr_a[3]), .A2(n379), .Z(n380) );
  NR2D0BWP12T30P140 U51 ( .A1(csr_a[3]), .A2(n379), .ZN(n12) );
  INVD0BWP12T30P140 U52 ( .I(n486), .ZN(n484) );
  OR4D0BWP12T30P140 U53 ( .A1(n484), .A2(csr_a[11]), .A3(csr_a[13]), .A4(
        csr_a[12]), .Z(n11) );
  NR2D0BWP12T30P140 U54 ( .A1(csr_a[10]), .A2(n11), .ZN(n452) );
  INVD0BWP12T30P140 U55 ( .I(n452), .ZN(n393) );
  NR2D0BWP12T30P140 U56 ( .A1(tx_rst), .A2(n393), .ZN(n376) );
  ND2D0BWP12T30P140 U57 ( .A1(csr_a[0]), .A2(csr_a[2]), .ZN(n363) );
  OAI211D0BWP12T30P140 U58 ( .A1(n380), .A2(n12), .B(n376), .C(n363), .ZN(n13)
         );
  NR2D0BWP12T30P140 U59 ( .A1(n14), .A2(n13), .ZN(N380) );
  ND2D0BWP12T30P140 U60 ( .A1(csr_a[1]), .A2(csr_a[3]), .ZN(n368) );
  INVD0BWP12T30P140 U61 ( .I(n368), .ZN(n386) );
  INVD0BWP12T30P140 U62 ( .I(csr_a[0]), .ZN(n381) );
  ND4D0BWP12T30P140 U63 ( .A1(n452), .A2(csr_a[2]), .A3(n386), .A4(n381), .ZN(
        n469) );
  CKBD0BWP12T30P140 U64 ( .I(n469), .Z(n475) );
  INVD0BWP12T30P140 U65 ( .I(tx_adr[11]), .ZN(n255) );
  INVD0BWP12T30P140 U66 ( .I(N380), .ZN(n473) );
  OAI21D0BWP12T30P140 U67 ( .A1(n475), .A2(n255), .B(n473), .ZN(N360) );
  INVD0BWP12T30P140 U68 ( .I(tx_next), .ZN(n339) );
  ND2D0BWP12T30P140 U69 ( .A1(n486), .A2(n339), .ZN(n100) );
  NR2D0BWP12T30P140 U70 ( .A1(n484), .A2(n339), .ZN(n346) );
  MAOI22D0BWP12T30P140 U71 ( .A1(tx_remaining[0]), .A2(n100), .B1(n346), .B2(
        tx_remaining[0]), .ZN(n197) );
  MAOI22D0BWP12T30P140 U72 ( .A1(tx_bytecount[0]), .A2(n100), .B1(n346), .B2(
        tx_bytecount[0]), .ZN(n186) );
  INVD0BWP12T30P140 U73 ( .I(slot1_state[0]), .ZN(n20) );
  NR2D0BWP12T30P140 U74 ( .A1(rx_incrcount), .A2(rx_resetcount), .ZN(n27) );
  OAI31D0BWP12T30P140 U75 ( .A1(n20), .A2(slot0_state[0]), .A3(n27), .B(n486), 
        .ZN(n42) );
  ND2D0BWP12T30P140 U76 ( .A1(rx_incrcount), .A2(n486), .ZN(n28) );
  NR3D0BWP12T30P140 U77 ( .A1(slot0_state[0]), .A2(n28), .A3(n20), .ZN(n119)
         );
  MAOI22D0BWP12T30P140 U78 ( .A1(slot1_count[0]), .A2(n42), .B1(n119), .B2(
        slot1_count[0]), .ZN(n158) );
  INVD0BWP12T30P140 U79 ( .I(n486), .ZN(n86) );
  NR2D0BWP12T30P140 U80 ( .A1(slot0_state[0]), .A2(slot1_state[0]), .ZN(n15)
         );
  ND2D0BWP12T30P140 U81 ( .A1(n15), .A2(slot2_state[0]), .ZN(n16) );
  INVD0BWP12T30P140 U82 ( .I(n16), .ZN(n31) );
  ND2D0BWP12T30P140 U83 ( .A1(n27), .A2(n486), .ZN(n18) );
  OAI21D0BWP12T30P140 U84 ( .A1(n86), .A2(n31), .B(n18), .ZN(n124) );
  INVD0BWP12T30P140 U85 ( .I(n124), .ZN(n29) );
  NR2D0BWP12T30P140 U86 ( .A1(n28), .A2(n16), .ZN(n125) );
  MAOI22D0BWP12T30P140 U87 ( .A1(slot2_count[0]), .A2(n29), .B1(n125), .B2(
        slot2_count[0]), .ZN(n171) );
  ND2D0BWP12T30P140 U88 ( .A1(slot3_state[0]), .A2(n17), .ZN(n19) );
  INVD0BWP12T30P140 U89 ( .I(n19), .ZN(n33) );
  OAI21D0BWP12T30P140 U90 ( .A1(n86), .A2(n33), .B(n18), .ZN(n233) );
  INVD0BWP12T30P140 U91 ( .I(n233), .ZN(n30) );
  NR2D0BWP12T30P140 U92 ( .A1(n28), .A2(n19), .ZN(n234) );
  MAOI22D0BWP12T30P140 U93 ( .A1(slot3_count[0]), .A2(n30), .B1(n234), .B2(
        slot3_count[0]), .ZN(n184) );
  INVD0BWP12T30P140 U94 ( .I(slot0_state[0]), .ZN(n483) );
  AOI211D0BWP12T30P140 U95 ( .A1(rx_endframe), .A2(n483), .B(n484), .C(n20), 
        .ZN(n147) );
  OAI21D0BWP12T30P140 U96 ( .A1(tx_remaining[0]), .A2(n339), .B(n486), .ZN(n23) );
  INVD0BWP12T30P140 U97 ( .I(tx_remaining[1]), .ZN(n22) );
  NR2D0BWP12T30P140 U98 ( .A1(tx_remaining[1]), .A2(tx_remaining[0]), .ZN(n21)
         );
  ND2D0BWP12T30P140 U99 ( .A1(n346), .A2(n21), .ZN(n32) );
  OAI21D0BWP12T30P140 U100 ( .A1(n23), .A2(n22), .B(n32), .ZN(n196) );
  AOI31D0BWP12T30P140 U101 ( .A1(tx_bytecount[0]), .A2(tx_bytecount[1]), .A3(
        tx_next), .B(n484), .ZN(n476) );
  INVD0BWP12T30P140 U102 ( .I(n476), .ZN(n231) );
  AOI21D0BWP12T30P140 U103 ( .A1(tx_next), .A2(tx_bytecount[0]), .B(
        tx_bytecount[1]), .ZN(n24) );
  NR2D0BWP12T30P140 U104 ( .A1(n231), .A2(n24), .ZN(n185) );
  INVD0BWP12T30P140 U105 ( .I(n346), .ZN(n347) );
  INVD0BWP12T30P140 U106 ( .I(tx_remaining[4]), .ZN(n98) );
  INVD0BWP12T30P140 U107 ( .I(tx_remaining[5]), .ZN(n341) );
  NR4D0BWP12T30P140 U108 ( .A1(tx_remaining[1]), .A2(tx_remaining[0]), .A3(
        tx_remaining[2]), .A4(tx_remaining[3]), .ZN(n107) );
  ND3D0BWP12T30P140 U109 ( .A1(n98), .A2(n341), .A3(n107), .ZN(n340) );
  OAI21D0BWP12T30P140 U110 ( .A1(n339), .A2(n340), .B(n486), .ZN(n26) );
  INVD0BWP12T30P140 U111 ( .I(tx_remaining[6]), .ZN(n25) );
  OAI32D0BWP12T30P140 U112 ( .A1(tx_remaining[6]), .A2(n347), .A3(n340), .B1(
        n26), .B2(n25), .ZN(n191) );
  OAI21D0BWP12T30P140 U113 ( .A1(n483), .A2(n27), .B(n486), .ZN(n111) );
  NR2D0BWP12T30P140 U114 ( .A1(n28), .A2(n483), .ZN(n316) );
  MAOI22D0BWP12T30P140 U115 ( .A1(slot0_count[0]), .A2(n111), .B1(n316), .B2(
        slot0_count[0]), .ZN(n145) );
  INVD0BWP12T30P140 U116 ( .I(n119), .ZN(n120) );
  OAI21D0BWP12T30P140 U117 ( .A1(slot1_count[0]), .A2(n120), .B(n42), .ZN(n34)
         );
  NR2D0BWP12T30P140 U118 ( .A1(slot1_count[1]), .A2(n120), .ZN(n35) );
  AO22D0BWP12T30P140 U119 ( .A1(slot1_count[1]), .A2(n34), .B1(slot1_count[0]), 
        .B2(n35), .Z(n157) );
  INVD0BWP12T30P140 U120 ( .I(n125), .ZN(n126) );
  OAI21D0BWP12T30P140 U121 ( .A1(slot2_count[0]), .A2(n126), .B(n29), .ZN(n38)
         );
  NR2D0BWP12T30P140 U122 ( .A1(slot2_count[1]), .A2(n126), .ZN(n39) );
  AO22D0BWP12T30P140 U123 ( .A1(slot2_count[1]), .A2(n38), .B1(slot2_count[0]), 
        .B2(n39), .Z(n170) );
  INVD0BWP12T30P140 U124 ( .I(n234), .ZN(n235) );
  OAI21D0BWP12T30P140 U125 ( .A1(slot3_count[0]), .A2(n235), .B(n30), .ZN(n60)
         );
  NR2D0BWP12T30P140 U126 ( .A1(slot3_count[1]), .A2(n235), .ZN(n61) );
  AO22D0BWP12T30P140 U127 ( .A1(slot3_count[1]), .A2(n60), .B1(slot3_count[0]), 
        .B2(n61), .Z(n183) );
  ND2D0BWP12T30P140 U128 ( .A1(n31), .A2(rx_endframe), .ZN(n109) );
  AN3D0BWP12T30P140 U129 ( .A1(slot2_state[0]), .A2(n486), .A3(n109), .Z(n160)
         );
  OAI31D0BWP12T30P140 U130 ( .A1(tx_remaining[1]), .A2(tx_remaining[0]), .A3(
        n339), .B(n486), .ZN(n104) );
  INVD0BWP12T30P140 U131 ( .I(tx_remaining[2]), .ZN(n105) );
  AOI22D0BWP12T30P140 U132 ( .A1(tx_remaining[2]), .A2(n104), .B1(n32), .B2(
        n105), .ZN(n195) );
  ND2D0BWP12T30P140 U133 ( .A1(n33), .A2(rx_endframe), .ZN(n321) );
  AN3D0BWP12T30P140 U134 ( .A1(n321), .A2(slot3_state[0]), .A3(n486), .Z(n173)
         );
  ND2D0BWP12T30P140 U135 ( .A1(slot1_count[1]), .A2(slot1_count[0]), .ZN(n37)
         );
  OAI21D0BWP12T30P140 U136 ( .A1(n35), .A2(n34), .B(slot1_count[2]), .ZN(n36)
         );
  OAI31D0BWP12T30P140 U137 ( .A1(slot1_count[2]), .A2(n37), .A3(n120), .B(n36), 
        .ZN(n156) );
  ND2D0BWP12T30P140 U138 ( .A1(slot2_count[1]), .A2(slot2_count[0]), .ZN(n41)
         );
  OAI21D0BWP12T30P140 U139 ( .A1(n39), .A2(n38), .B(slot2_count[2]), .ZN(n40)
         );
  OAI31D0BWP12T30P140 U140 ( .A1(slot2_count[2]), .A2(n41), .A3(n126), .B(n40), 
        .ZN(n169) );
  ND3D0BWP12T30P140 U141 ( .A1(slot1_count[1]), .A2(slot1_count[0]), .A3(
        slot1_count[2]), .ZN(n285) );
  INVD0BWP12T30P140 U142 ( .I(n42), .ZN(n118) );
  AOI21D0BWP12T30P140 U143 ( .A1(n119), .A2(n285), .B(n118), .ZN(n287) );
  INVD0BWP12T30P140 U144 ( .I(slot1_count[3]), .ZN(n286) );
  ND2D0BWP12T30P140 U145 ( .A1(n119), .A2(n286), .ZN(n284) );
  NR2D0BWP12T30P140 U146 ( .A1(n285), .A2(n286), .ZN(n45) );
  ND2D0BWP12T30P140 U147 ( .A1(n119), .A2(n45), .ZN(n44) );
  INVD0BWP12T30P140 U148 ( .I(slot1_count[4]), .ZN(n43) );
  AOI32D0BWP12T30P140 U149 ( .A1(n287), .A2(slot1_count[4]), .A3(n284), .B1(
        n44), .B2(n43), .ZN(n154) );
  ND2D0BWP12T30P140 U150 ( .A1(slot1_count[4]), .A2(n45), .ZN(n289) );
  AOI21D0BWP12T30P140 U151 ( .A1(n119), .A2(n289), .B(n118), .ZN(n291) );
  INVD0BWP12T30P140 U152 ( .I(slot1_count[5]), .ZN(n290) );
  ND2D0BWP12T30P140 U153 ( .A1(n119), .A2(n290), .ZN(n288) );
  NR2D0BWP12T30P140 U154 ( .A1(n289), .A2(n290), .ZN(n48) );
  ND2D0BWP12T30P140 U155 ( .A1(n119), .A2(n48), .ZN(n47) );
  INVD0BWP12T30P140 U156 ( .I(slot1_count[6]), .ZN(n46) );
  AOI32D0BWP12T30P140 U157 ( .A1(n291), .A2(slot1_count[6]), .A3(n288), .B1(
        n47), .B2(n46), .ZN(n152) );
  ND2D0BWP12T30P140 U158 ( .A1(slot1_count[6]), .A2(n48), .ZN(n293) );
  AOI21D0BWP12T30P140 U159 ( .A1(n119), .A2(n293), .B(n118), .ZN(n295) );
  INVD0BWP12T30P140 U160 ( .I(slot1_count[7]), .ZN(n294) );
  ND2D0BWP12T30P140 U161 ( .A1(n119), .A2(n294), .ZN(n292) );
  NR2D0BWP12T30P140 U162 ( .A1(n293), .A2(n294), .ZN(n117) );
  ND2D0BWP12T30P140 U163 ( .A1(n119), .A2(n117), .ZN(n50) );
  INVD0BWP12T30P140 U164 ( .I(slot1_count[8]), .ZN(n49) );
  AOI32D0BWP12T30P140 U165 ( .A1(n295), .A2(slot1_count[8]), .A3(n292), .B1(
        n50), .B2(n49), .ZN(n150) );
  ND3D0BWP12T30P140 U166 ( .A1(slot2_count[1]), .A2(slot2_count[0]), .A3(
        slot2_count[2]), .ZN(n313) );
  INVD0BWP12T30P140 U167 ( .I(slot2_count[3]), .ZN(n314) );
  NR2D0BWP12T30P140 U168 ( .A1(n313), .A2(n314), .ZN(n56) );
  ND2D0BWP12T30P140 U169 ( .A1(slot2_count[4]), .A2(n56), .ZN(n309) );
  INVD0BWP12T30P140 U170 ( .I(slot2_count[5]), .ZN(n310) );
  NR2D0BWP12T30P140 U171 ( .A1(n309), .A2(n310), .ZN(n53) );
  ND2D0BWP12T30P140 U172 ( .A1(slot2_count[6]), .A2(n53), .ZN(n305) );
  AOI21D0BWP12T30P140 U173 ( .A1(n125), .A2(n305), .B(n124), .ZN(n307) );
  INVD0BWP12T30P140 U174 ( .I(slot2_count[7]), .ZN(n306) );
  ND2D0BWP12T30P140 U175 ( .A1(n125), .A2(n306), .ZN(n304) );
  NR2D0BWP12T30P140 U176 ( .A1(n305), .A2(n306), .ZN(n123) );
  ND2D0BWP12T30P140 U177 ( .A1(n125), .A2(n123), .ZN(n52) );
  INVD0BWP12T30P140 U178 ( .I(slot2_count[8]), .ZN(n51) );
  AOI32D0BWP12T30P140 U179 ( .A1(n307), .A2(slot2_count[8]), .A3(n304), .B1(
        n52), .B2(n51), .ZN(n163) );
  AOI21D0BWP12T30P140 U180 ( .A1(n125), .A2(n309), .B(n124), .ZN(n311) );
  ND2D0BWP12T30P140 U181 ( .A1(n125), .A2(n310), .ZN(n308) );
  ND2D0BWP12T30P140 U182 ( .A1(n125), .A2(n53), .ZN(n55) );
  INVD0BWP12T30P140 U183 ( .I(slot2_count[6]), .ZN(n54) );
  AOI32D0BWP12T30P140 U184 ( .A1(n311), .A2(slot2_count[6]), .A3(n308), .B1(
        n55), .B2(n54), .ZN(n165) );
  AOI21D0BWP12T30P140 U185 ( .A1(n125), .A2(n313), .B(n124), .ZN(n315) );
  ND2D0BWP12T30P140 U186 ( .A1(n125), .A2(n314), .ZN(n312) );
  ND2D0BWP12T30P140 U187 ( .A1(n125), .A2(n56), .ZN(n58) );
  INVD0BWP12T30P140 U188 ( .I(slot2_count[4]), .ZN(n57) );
  AOI32D0BWP12T30P140 U189 ( .A1(n315), .A2(slot2_count[4]), .A3(n312), .B1(
        n58), .B2(n57), .ZN(n167) );
  NR2D0BWP12T30P140 U190 ( .A1(tx_remaining[9]), .A2(tx_remaining[8]), .ZN(
        n344) );
  NR3D0BWP12T30P140 U191 ( .A1(tx_remaining[7]), .A2(tx_remaining[6]), .A3(
        n340), .ZN(n343) );
  ND2D0BWP12T30P140 U192 ( .A1(n346), .A2(n343), .ZN(n113) );
  INVD0BWP12T30P140 U193 ( .I(n113), .ZN(n59) );
  INVD0BWP12T30P140 U194 ( .I(tx_remaining[8]), .ZN(n101) );
  AOI31D0BWP12T30P140 U195 ( .A1(tx_next), .A2(n343), .A3(n101), .B(n484), 
        .ZN(n345) );
  AO22D0BWP12T30P140 U196 ( .A1(n344), .A2(n59), .B1(tx_remaining[9]), .B2(
        n345), .Z(n188) );
  ND2D0BWP12T30P140 U197 ( .A1(slot3_count[1]), .A2(slot3_count[0]), .ZN(n63)
         );
  OAI21D0BWP12T30P140 U198 ( .A1(n61), .A2(n60), .B(slot3_count[2]), .ZN(n62)
         );
  OAI31D0BWP12T30P140 U199 ( .A1(slot3_count[2]), .A2(n63), .A3(n235), .B(n62), 
        .ZN(n182) );
  INVD0BWP12T30P140 U200 ( .I(tx_adr[2]), .ZN(n479) );
  ND2D0BWP12T30P140 U201 ( .A1(tx_adr[1]), .A2(tx_adr[0]), .ZN(n481) );
  NR2D0BWP12T30P140 U202 ( .A1(n479), .A2(n481), .ZN(n65) );
  OAI21D0BWP12T30P140 U203 ( .A1(n86), .A2(n65), .B(n231), .ZN(n242) );
  NR2D0BWP12T30P140 U204 ( .A1(n484), .A2(n476), .ZN(n282) );
  INVD0BWP12T30P140 U205 ( .I(n282), .ZN(n482) );
  CKBD0BWP12T30P140 U206 ( .I(n482), .Z(n279) );
  NR2D0BWP12T30P140 U207 ( .A1(tx_adr[3]), .A2(n279), .ZN(n64) );
  AO22D0BWP12T30P140 U208 ( .A1(tx_adr[3]), .A2(n242), .B1(n65), .B2(n64), .Z(
        n200) );
  INVD0BWP12T30P140 U209 ( .I(tx_adr[4]), .ZN(n412) );
  ND2D0BWP12T30P140 U210 ( .A1(tx_adr[3]), .A2(n65), .ZN(n244) );
  NR2D0BWP12T30P140 U211 ( .A1(n412), .A2(n244), .ZN(n67) );
  OAI21D0BWP12T30P140 U212 ( .A1(n86), .A2(n67), .B(n231), .ZN(n245) );
  NR2D0BWP12T30P140 U213 ( .A1(tx_adr[5]), .A2(n482), .ZN(n66) );
  AO22D0BWP12T30P140 U214 ( .A1(tx_adr[5]), .A2(n245), .B1(n67), .B2(n66), .Z(
        n202) );
  INVD0BWP12T30P140 U215 ( .I(tx_adr[6]), .ZN(n424) );
  ND2D0BWP12T30P140 U216 ( .A1(tx_adr[5]), .A2(n67), .ZN(n247) );
  NR2D0BWP12T30P140 U217 ( .A1(n424), .A2(n247), .ZN(n69) );
  OAI21D0BWP12T30P140 U218 ( .A1(n86), .A2(n69), .B(n231), .ZN(n248) );
  NR2D0BWP12T30P140 U219 ( .A1(tx_adr[7]), .A2(n482), .ZN(n68) );
  AO22D0BWP12T30P140 U220 ( .A1(tx_adr[7]), .A2(n248), .B1(n69), .B2(n68), .Z(
        n204) );
  INVD0BWP12T30P140 U221 ( .I(tx_adr[8]), .ZN(n436) );
  ND2D0BWP12T30P140 U222 ( .A1(tx_adr[7]), .A2(n69), .ZN(n250) );
  NR2D0BWP12T30P140 U223 ( .A1(n436), .A2(n250), .ZN(n71) );
  OAI21D0BWP12T30P140 U224 ( .A1(n484), .A2(n71), .B(n231), .ZN(n251) );
  NR2D0BWP12T30P140 U225 ( .A1(tx_adr[9]), .A2(n482), .ZN(n70) );
  AO22D0BWP12T30P140 U226 ( .A1(tx_adr[9]), .A2(n251), .B1(n71), .B2(n70), .Z(
        n206) );
  INVD0BWP12T30P140 U227 ( .I(tx_adr[10]), .ZN(n454) );
  ND2D0BWP12T30P140 U228 ( .A1(tx_adr[9]), .A2(n71), .ZN(n253) );
  NR2D0BWP12T30P140 U229 ( .A1(n454), .A2(n253), .ZN(n73) );
  OAI21D0BWP12T30P140 U230 ( .A1(n86), .A2(n73), .B(n231), .ZN(n254) );
  NR2D0BWP12T30P140 U231 ( .A1(tx_adr[11]), .A2(n279), .ZN(n72) );
  AO22D0BWP12T30P140 U232 ( .A1(tx_adr[11]), .A2(n254), .B1(n73), .B2(n72), 
        .Z(n208) );
  INVD0BWP12T30P140 U233 ( .I(tx_adr[12]), .ZN(n474) );
  ND2D0BWP12T30P140 U234 ( .A1(tx_adr[11]), .A2(n73), .ZN(n257) );
  NR2D0BWP12T30P140 U235 ( .A1(n474), .A2(n257), .ZN(n75) );
  OAI21D0BWP12T30P140 U236 ( .A1(n484), .A2(n75), .B(n231), .ZN(n258) );
  NR2D0BWP12T30P140 U237 ( .A1(tx_adr[13]), .A2(n482), .ZN(n74) );
  AO22D0BWP12T30P140 U238 ( .A1(tx_adr[13]), .A2(n258), .B1(n75), .B2(n74), 
        .Z(n210) );
  INVD0BWP12T30P140 U239 ( .I(tx_adr[14]), .ZN(n471) );
  ND2D0BWP12T30P140 U240 ( .A1(tx_adr[13]), .A2(n75), .ZN(n260) );
  NR2D0BWP12T30P140 U241 ( .A1(n471), .A2(n260), .ZN(n77) );
  OAI21D0BWP12T30P140 U242 ( .A1(n86), .A2(n77), .B(n231), .ZN(n261) );
  NR2D0BWP12T30P140 U243 ( .A1(tx_adr[15]), .A2(n279), .ZN(n76) );
  AO22D0BWP12T30P140 U244 ( .A1(tx_adr[15]), .A2(n261), .B1(n77), .B2(n76), 
        .Z(n212) );
  INVD0BWP12T30P140 U245 ( .I(tx_adr[16]), .ZN(n468) );
  ND2D0BWP12T30P140 U246 ( .A1(tx_adr[15]), .A2(n77), .ZN(n263) );
  NR2D0BWP12T30P140 U247 ( .A1(n468), .A2(n263), .ZN(n79) );
  OAI21D0BWP12T30P140 U248 ( .A1(n86), .A2(n79), .B(n231), .ZN(n264) );
  NR2D0BWP12T30P140 U249 ( .A1(tx_adr[17]), .A2(n482), .ZN(n78) );
  AO22D0BWP12T30P140 U250 ( .A1(tx_adr[17]), .A2(n264), .B1(n79), .B2(n78), 
        .Z(n214) );
  INVD0BWP12T30P140 U251 ( .I(tx_adr[18]), .ZN(n466) );
  ND2D0BWP12T30P140 U252 ( .A1(tx_adr[17]), .A2(n79), .ZN(n266) );
  NR2D0BWP12T30P140 U253 ( .A1(n466), .A2(n266), .ZN(n81) );
  OAI21D0BWP12T30P140 U254 ( .A1(n86), .A2(n81), .B(n231), .ZN(n267) );
  NR2D0BWP12T30P140 U255 ( .A1(tx_adr[19]), .A2(n482), .ZN(n80) );
  AO22D0BWP12T30P140 U256 ( .A1(tx_adr[19]), .A2(n267), .B1(n81), .B2(n80), 
        .Z(n216) );
  INVD0BWP12T30P140 U257 ( .I(tx_adr[20]), .ZN(n464) );
  ND2D0BWP12T30P140 U258 ( .A1(tx_adr[19]), .A2(n81), .ZN(n269) );
  NR2D0BWP12T30P140 U259 ( .A1(n464), .A2(n269), .ZN(n83) );
  OAI21D0BWP12T30P140 U260 ( .A1(n86), .A2(n83), .B(n231), .ZN(n270) );
  NR2D0BWP12T30P140 U261 ( .A1(tx_adr[21]), .A2(n279), .ZN(n82) );
  AO22D0BWP12T30P140 U262 ( .A1(tx_adr[21]), .A2(n270), .B1(n83), .B2(n82), 
        .Z(n218) );
  INVD0BWP12T30P140 U263 ( .I(tx_adr[22]), .ZN(n462) );
  ND2D0BWP12T30P140 U264 ( .A1(tx_adr[21]), .A2(n83), .ZN(n272) );
  NR2D0BWP12T30P140 U265 ( .A1(n462), .A2(n272), .ZN(n85) );
  OAI21D0BWP12T30P140 U266 ( .A1(n86), .A2(n85), .B(n231), .ZN(n273) );
  NR2D0BWP12T30P140 U267 ( .A1(tx_adr[23]), .A2(n279), .ZN(n84) );
  AO22D0BWP12T30P140 U268 ( .A1(tx_adr[23]), .A2(n273), .B1(n85), .B2(n84), 
        .Z(n220) );
  INVD0BWP12T30P140 U269 ( .I(tx_adr[24]), .ZN(n460) );
  ND2D0BWP12T30P140 U270 ( .A1(tx_adr[23]), .A2(n85), .ZN(n275) );
  NR2D0BWP12T30P140 U271 ( .A1(n460), .A2(n275), .ZN(n88) );
  OAI21D0BWP12T30P140 U272 ( .A1(n86), .A2(n88), .B(n231), .ZN(n276) );
  NR2D0BWP12T30P140 U273 ( .A1(tx_adr[25]), .A2(n482), .ZN(n87) );
  AO22D0BWP12T30P140 U274 ( .A1(tx_adr[25]), .A2(n276), .B1(n88), .B2(n87), 
        .Z(n222) );
  INVD0BWP12T30P140 U275 ( .I(tx_adr[26]), .ZN(n458) );
  ND2D0BWP12T30P140 U276 ( .A1(tx_adr[25]), .A2(n88), .ZN(n278) );
  NR2D0BWP12T30P140 U277 ( .A1(n458), .A2(n278), .ZN(n280) );
  INVD0BWP12T30P140 U278 ( .I(n280), .ZN(n89) );
  AOI21D0BWP12T30P140 U279 ( .A1(n282), .A2(n89), .B(n476), .ZN(n281) );
  INVD0BWP12T30P140 U280 ( .I(tx_adr[27]), .ZN(n457) );
  OAI32D0BWP12T30P140 U281 ( .A1(tx_adr[27]), .A2(n482), .A3(n89), .B1(n281), 
        .B2(n457), .ZN(n224) );
  ND3D0BWP12T30P140 U282 ( .A1(slot3_count[1]), .A2(slot3_count[0]), .A3(
        slot3_count[2]), .ZN(n335) );
  INVD0BWP12T30P140 U283 ( .I(slot3_count[3]), .ZN(n336) );
  NR2D0BWP12T30P140 U284 ( .A1(n335), .A2(n336), .ZN(n95) );
  ND2D0BWP12T30P140 U285 ( .A1(slot3_count[4]), .A2(n95), .ZN(n331) );
  INVD0BWP12T30P140 U286 ( .I(slot3_count[5]), .ZN(n332) );
  NR2D0BWP12T30P140 U287 ( .A1(n331), .A2(n332), .ZN(n92) );
  ND2D0BWP12T30P140 U288 ( .A1(slot3_count[6]), .A2(n92), .ZN(n327) );
  AOI21D0BWP12T30P140 U289 ( .A1(n234), .A2(n327), .B(n233), .ZN(n329) );
  INVD0BWP12T30P140 U290 ( .I(slot3_count[7]), .ZN(n328) );
  ND2D0BWP12T30P140 U291 ( .A1(n234), .A2(n328), .ZN(n326) );
  NR2D0BWP12T30P140 U292 ( .A1(n327), .A2(n328), .ZN(n232) );
  ND2D0BWP12T30P140 U293 ( .A1(n234), .A2(n232), .ZN(n91) );
  INVD0BWP12T30P140 U294 ( .I(slot3_count[8]), .ZN(n90) );
  AOI32D0BWP12T30P140 U295 ( .A1(n329), .A2(slot3_count[8]), .A3(n326), .B1(
        n91), .B2(n90), .ZN(n176) );
  AOI21D0BWP12T30P140 U296 ( .A1(n234), .A2(n331), .B(n233), .ZN(n333) );
  ND2D0BWP12T30P140 U297 ( .A1(n234), .A2(n332), .ZN(n330) );
  ND2D0BWP12T30P140 U298 ( .A1(n234), .A2(n92), .ZN(n94) );
  INVD0BWP12T30P140 U299 ( .I(slot3_count[6]), .ZN(n93) );
  AOI32D0BWP12T30P140 U300 ( .A1(n333), .A2(slot3_count[6]), .A3(n330), .B1(
        n94), .B2(n93), .ZN(n178) );
  AOI21D0BWP12T30P140 U301 ( .A1(n234), .A2(n335), .B(n233), .ZN(n337) );
  ND2D0BWP12T30P140 U302 ( .A1(n234), .A2(n336), .ZN(n334) );
  ND2D0BWP12T30P140 U303 ( .A1(n234), .A2(n95), .ZN(n97) );
  INVD0BWP12T30P140 U304 ( .I(slot3_count[4]), .ZN(n96) );
  AOI32D0BWP12T30P140 U305 ( .A1(n337), .A2(slot3_count[4]), .A3(n334), .B1(
        n97), .B2(n96), .ZN(n180) );
  INVD0BWP12T30P140 U306 ( .I(n107), .ZN(n338) );
  OAI21D0BWP12T30P140 U307 ( .A1(n339), .A2(n338), .B(n486), .ZN(n99) );
  OAI32D0BWP12T30P140 U308 ( .A1(tx_remaining[4]), .A2(n347), .A3(n338), .B1(
        n99), .B2(n98), .ZN(n193) );
  OA21D0BWP12T30P140 U309 ( .A1(n347), .A2(n343), .B(n100), .Z(n102) );
  AOI22D0BWP12T30P140 U310 ( .A1(tx_remaining[8]), .A2(n102), .B1(n113), .B2(
        n101), .ZN(n189) );
  AOI31D0BWP12T30P140 U311 ( .A1(slot1_state[0]), .A2(rx_endframe), .A3(n483), 
        .B(slot1_state[1]), .ZN(n103) );
  NR2D0BWP12T30P140 U312 ( .A1(n484), .A2(n103), .ZN(n146) );
  OAI21D0BWP12T30P140 U313 ( .A1(n347), .A2(n105), .B(n104), .ZN(n106) );
  AO22D0BWP12T30P140 U314 ( .A1(n346), .A2(n107), .B1(tx_remaining[3]), .B2(
        n106), .Z(n194) );
  AOI21D0BWP12T30P140 U315 ( .A1(rx_endframe), .A2(slot0_state[0]), .B(
        slot0_state[1]), .ZN(n108) );
  NR2D0BWP12T30P140 U316 ( .A1(n484), .A2(n108), .ZN(n133) );
  INVD0BWP12T30P140 U317 ( .I(slot2_state[1]), .ZN(n110) );
  AOI21D0BWP12T30P140 U318 ( .A1(n110), .A2(n109), .B(n484), .ZN(n159) );
  INVD0BWP12T30P140 U319 ( .I(slot0_count[0]), .ZN(n366) );
  INVD0BWP12T30P140 U320 ( .I(n111), .ZN(n241) );
  AOI21D0BWP12T30P140 U321 ( .A1(n316), .A2(n366), .B(n241), .ZN(n239) );
  INVD0BWP12T30P140 U322 ( .I(slot0_count[1]), .ZN(n387) );
  ND2D0BWP12T30P140 U323 ( .A1(n316), .A2(n387), .ZN(n238) );
  ND3D0BWP12T30P140 U324 ( .A1(n316), .A2(slot0_count[1]), .A3(slot0_count[0]), 
        .ZN(n112) );
  INVD0BWP12T30P140 U325 ( .I(slot0_count[2]), .ZN(n397) );
  AOI32D0BWP12T30P140 U326 ( .A1(n239), .A2(slot0_count[2]), .A3(n238), .B1(
        n112), .B2(n397), .ZN(n143) );
  OAI31D0BWP12T30P140 U327 ( .A1(tx_remaining[6]), .A2(n339), .A3(n340), .B(
        n486), .ZN(n115) );
  INVD0BWP12T30P140 U328 ( .I(tx_remaining[7]), .ZN(n114) );
  OAI21D0BWP12T30P140 U329 ( .A1(n115), .A2(n114), .B(n113), .ZN(n190) );
  INVD0BWP12T30P140 U330 ( .I(tx_adr[0]), .ZN(n477) );
  AOI21D0BWP12T30P140 U331 ( .A1(n486), .A2(n477), .B(n476), .ZN(n116) );
  INVD0BWP12T30P140 U332 ( .I(tx_adr[1]), .ZN(n478) );
  OAI32D0BWP12T30P140 U333 ( .A1(tx_adr[1]), .A2(n279), .A3(n477), .B1(n116), 
        .B2(n478), .ZN(n198) );
  ND2D0BWP12T30P140 U334 ( .A1(slot1_count[8]), .A2(n117), .ZN(n296) );
  AOI21D0BWP12T30P140 U335 ( .A1(n119), .A2(n296), .B(n118), .ZN(n299) );
  INVD0BWP12T30P140 U336 ( .I(slot1_count[9]), .ZN(n298) );
  ND2D0BWP12T30P140 U337 ( .A1(n119), .A2(n298), .ZN(n297) );
  OR3D0BWP12T30P140 U338 ( .A1(n296), .A2(n120), .A3(n298), .Z(n122) );
  INVD0BWP12T30P140 U339 ( .I(slot1_count[10]), .ZN(n121) );
  AOI32D0BWP12T30P140 U340 ( .A1(n299), .A2(slot1_count[10]), .A3(n297), .B1(
        n122), .B2(n121), .ZN(n148) );
  ND2D0BWP12T30P140 U341 ( .A1(slot2_count[8]), .A2(n123), .ZN(n300) );
  AOI21D0BWP12T30P140 U342 ( .A1(n125), .A2(n300), .B(n124), .ZN(n303) );
  INVD0BWP12T30P140 U343 ( .I(slot2_count[9]), .ZN(n302) );
  ND2D0BWP12T30P140 U344 ( .A1(n125), .A2(n302), .ZN(n301) );
  OR3D0BWP12T30P140 U345 ( .A1(n300), .A2(n126), .A3(n302), .Z(n128) );
  INVD0BWP12T30P140 U346 ( .I(slot2_count[10]), .ZN(n127) );
  AOI32D0BWP12T30P140 U347 ( .A1(n303), .A2(slot2_count[10]), .A3(n301), .B1(
        n128), .B2(n127), .ZN(n161) );
  ND3D0BWP12T30P140 U348 ( .A1(slot0_count[1]), .A2(slot0_count[0]), .A3(
        slot0_count[2]), .ZN(n357) );
  INVD0BWP12T30P140 U349 ( .I(slot0_count[3]), .ZN(n402) );
  NR2D0BWP12T30P140 U350 ( .A1(n357), .A2(n402), .ZN(n229) );
  ND2D0BWP12T30P140 U351 ( .A1(slot0_count[4]), .A2(n229), .ZN(n354) );
  INVD0BWP12T30P140 U352 ( .I(slot0_count[5]), .ZN(n415) );
  NR2D0BWP12T30P140 U353 ( .A1(n354), .A2(n415), .ZN(n130) );
  ND2D0BWP12T30P140 U354 ( .A1(slot0_count[6]), .A2(n130), .ZN(n351) );
  AOI21D0BWP12T30P140 U355 ( .A1(n316), .A2(n351), .B(n241), .ZN(n352) );
  INVD0BWP12T30P140 U356 ( .I(slot0_count[7]), .ZN(n427) );
  ND2D0BWP12T30P140 U357 ( .A1(n316), .A2(n427), .ZN(n350) );
  NR2D0BWP12T30P140 U358 ( .A1(n351), .A2(n427), .ZN(n240) );
  ND2D0BWP12T30P140 U359 ( .A1(n316), .A2(n240), .ZN(n129) );
  INVD0BWP12T30P140 U360 ( .I(slot0_count[8]), .ZN(n433) );
  AOI32D0BWP12T30P140 U361 ( .A1(n352), .A2(slot0_count[8]), .A3(n350), .B1(
        n129), .B2(n433), .ZN(n137) );
  AOI21D0BWP12T30P140 U362 ( .A1(n316), .A2(n354), .B(n241), .ZN(n355) );
  ND2D0BWP12T30P140 U363 ( .A1(n316), .A2(n415), .ZN(n353) );
  ND2D0BWP12T30P140 U364 ( .A1(n316), .A2(n130), .ZN(n131) );
  INVD0BWP12T30P140 U365 ( .I(slot0_count[6]), .ZN(n421) );
  AOI32D0BWP12T30P140 U366 ( .A1(n355), .A2(slot0_count[6]), .A3(n353), .B1(
        n131), .B2(n421), .ZN(n139) );
  AOI21D0BWP12T30P140 U367 ( .A1(n316), .A2(n357), .B(n241), .ZN(n358) );
  ND2D0BWP12T30P140 U368 ( .A1(n316), .A2(n402), .ZN(n356) );
  ND2D0BWP12T30P140 U369 ( .A1(n316), .A2(n229), .ZN(n230) );
  INVD0BWP12T30P140 U370 ( .I(slot0_count[4]), .ZN(n409) );
  AOI32D0BWP12T30P140 U371 ( .A1(n358), .A2(slot0_count[4]), .A3(n356), .B1(
        n230), .B2(n409), .ZN(n141) );
  AOI22D0BWP12T30P140 U372 ( .A1(tx_adr[0]), .A2(n231), .B1(n279), .B2(n477), 
        .ZN(n227) );
  ND2D0BWP12T30P140 U373 ( .A1(slot3_count[8]), .A2(n232), .ZN(n322) );
  AOI21D0BWP12T30P140 U374 ( .A1(n234), .A2(n322), .B(n233), .ZN(n325) );
  INVD0BWP12T30P140 U375 ( .I(slot3_count[9]), .ZN(n324) );
  ND2D0BWP12T30P140 U376 ( .A1(n234), .A2(n324), .ZN(n323) );
  OR3D0BWP12T30P140 U377 ( .A1(n322), .A2(n235), .A3(n324), .Z(n237) );
  INVD0BWP12T30P140 U378 ( .I(slot3_count[10]), .ZN(n236) );
  AOI32D0BWP12T30P140 U379 ( .A1(n325), .A2(slot3_count[10]), .A3(n323), .B1(
        n237), .B2(n236), .ZN(n174) );
  OAI22D0BWP12T30P140 U380 ( .A1(n239), .A2(n387), .B1(n366), .B2(n238), .ZN(
        n144) );
  ND2D0BWP12T30P140 U381 ( .A1(slot0_count[8]), .A2(n240), .ZN(n317) );
  AOI21D0BWP12T30P140 U382 ( .A1(n316), .A2(n317), .B(n241), .ZN(n320) );
  INVD0BWP12T30P140 U383 ( .I(slot0_count[9]), .ZN(n439) );
  ND2D0BWP12T30P140 U384 ( .A1(n316), .A2(n439), .ZN(n319) );
  OAI22D0BWP12T30P140 U385 ( .A1(n320), .A2(n439), .B1(n319), .B2(n317), .ZN(
        n136) );
  INVD0BWP12T30P140 U386 ( .I(tx_adr[3]), .ZN(n406) );
  AOI21D0BWP12T30P140 U387 ( .A1(n282), .A2(n406), .B(n242), .ZN(n243) );
  OAI32D0BWP12T30P140 U388 ( .A1(tx_adr[4]), .A2(n482), .A3(n244), .B1(n243), 
        .B2(n412), .ZN(n201) );
  INVD0BWP12T30P140 U389 ( .I(tx_adr[5]), .ZN(n418) );
  AOI21D0BWP12T30P140 U390 ( .A1(n282), .A2(n418), .B(n245), .ZN(n246) );
  OAI32D0BWP12T30P140 U391 ( .A1(tx_adr[6]), .A2(n279), .A3(n247), .B1(n246), 
        .B2(n424), .ZN(n203) );
  INVD0BWP12T30P140 U392 ( .I(tx_adr[7]), .ZN(n430) );
  AOI21D0BWP12T30P140 U393 ( .A1(n282), .A2(n430), .B(n248), .ZN(n249) );
  OAI32D0BWP12T30P140 U394 ( .A1(tx_adr[8]), .A2(n279), .A3(n250), .B1(n249), 
        .B2(n436), .ZN(n205) );
  INVD0BWP12T30P140 U395 ( .I(tx_adr[9]), .ZN(n442) );
  AOI21D0BWP12T30P140 U396 ( .A1(n282), .A2(n442), .B(n251), .ZN(n252) );
  OAI32D0BWP12T30P140 U397 ( .A1(tx_adr[10]), .A2(n482), .A3(n253), .B1(n252), 
        .B2(n454), .ZN(n207) );
  AOI21D0BWP12T30P140 U398 ( .A1(n282), .A2(n255), .B(n254), .ZN(n256) );
  OAI32D0BWP12T30P140 U399 ( .A1(tx_adr[12]), .A2(n279), .A3(n257), .B1(n256), 
        .B2(n474), .ZN(n209) );
  INVD0BWP12T30P140 U400 ( .I(tx_adr[13]), .ZN(n472) );
  AOI21D0BWP12T30P140 U401 ( .A1(n282), .A2(n472), .B(n258), .ZN(n259) );
  OAI32D0BWP12T30P140 U402 ( .A1(tx_adr[14]), .A2(n482), .A3(n260), .B1(n259), 
        .B2(n471), .ZN(n211) );
  INVD0BWP12T30P140 U403 ( .I(tx_adr[15]), .ZN(n470) );
  AOI21D0BWP12T30P140 U404 ( .A1(n282), .A2(n470), .B(n261), .ZN(n262) );
  OAI32D0BWP12T30P140 U405 ( .A1(tx_adr[16]), .A2(n279), .A3(n263), .B1(n262), 
        .B2(n468), .ZN(n213) );
  INVD0BWP12T30P140 U406 ( .I(tx_adr[17]), .ZN(n467) );
  AOI21D0BWP12T30P140 U407 ( .A1(n282), .A2(n467), .B(n264), .ZN(n265) );
  OAI32D0BWP12T30P140 U408 ( .A1(tx_adr[18]), .A2(n482), .A3(n266), .B1(n265), 
        .B2(n466), .ZN(n215) );
  INVD0BWP12T30P140 U409 ( .I(tx_adr[19]), .ZN(n465) );
  AOI21D0BWP12T30P140 U410 ( .A1(n282), .A2(n465), .B(n267), .ZN(n268) );
  OAI32D0BWP12T30P140 U411 ( .A1(tx_adr[20]), .A2(n279), .A3(n269), .B1(n268), 
        .B2(n464), .ZN(n217) );
  INVD0BWP12T30P140 U412 ( .I(tx_adr[21]), .ZN(n463) );
  AOI21D0BWP12T30P140 U413 ( .A1(n282), .A2(n463), .B(n270), .ZN(n271) );
  OAI32D0BWP12T30P140 U414 ( .A1(tx_adr[22]), .A2(n279), .A3(n272), .B1(n271), 
        .B2(n462), .ZN(n219) );
  INVD0BWP12T30P140 U415 ( .I(tx_adr[23]), .ZN(n461) );
  AOI21D0BWP12T30P140 U416 ( .A1(n282), .A2(n461), .B(n273), .ZN(n274) );
  OAI32D0BWP12T30P140 U417 ( .A1(tx_adr[24]), .A2(n279), .A3(n275), .B1(n274), 
        .B2(n460), .ZN(n221) );
  INVD0BWP12T30P140 U418 ( .I(tx_adr[25]), .ZN(n459) );
  AOI21D0BWP12T30P140 U419 ( .A1(n282), .A2(n459), .B(n276), .ZN(n277) );
  OAI32D0BWP12T30P140 U420 ( .A1(tx_adr[26]), .A2(n279), .A3(n278), .B1(n277), 
        .B2(n458), .ZN(n223) );
  INVD0BWP12T30P140 U421 ( .I(tx_adr[28]), .ZN(n456) );
  ND3D0BWP12T30P140 U422 ( .A1(n282), .A2(tx_adr[27]), .A3(n280), .ZN(n360) );
  OAI21D0BWP12T30P140 U423 ( .A1(tx_adr[27]), .A2(n482), .B(n281), .ZN(n359)
         );
  AOI21D0BWP12T30P140 U424 ( .A1(n282), .A2(n456), .B(n359), .ZN(n283) );
  INVD0BWP12T30P140 U425 ( .I(tx_adr[29]), .ZN(n455) );
  OAI32D0BWP12T30P140 U426 ( .A1(tx_adr[29]), .A2(n456), .A3(n360), .B1(n283), 
        .B2(n455), .ZN(n226) );
  OAI22D0BWP12T30P140 U427 ( .A1(n287), .A2(n286), .B1(n285), .B2(n284), .ZN(
        n155) );
  OAI22D0BWP12T30P140 U428 ( .A1(n291), .A2(n290), .B1(n289), .B2(n288), .ZN(
        n153) );
  OAI22D0BWP12T30P140 U429 ( .A1(n295), .A2(n294), .B1(n293), .B2(n292), .ZN(
        n151) );
  OAI22D0BWP12T30P140 U430 ( .A1(n299), .A2(n298), .B1(n297), .B2(n296), .ZN(
        n149) );
  OAI22D0BWP12T30P140 U431 ( .A1(n303), .A2(n302), .B1(n301), .B2(n300), .ZN(
        n162) );
  OAI22D0BWP12T30P140 U432 ( .A1(n307), .A2(n306), .B1(n305), .B2(n304), .ZN(
        n164) );
  OAI22D0BWP12T30P140 U433 ( .A1(n311), .A2(n310), .B1(n309), .B2(n308), .ZN(
        n166) );
  OAI22D0BWP12T30P140 U434 ( .A1(n315), .A2(n314), .B1(n313), .B2(n312), .ZN(
        n168) );
  IND3D1BWP12T30P140 U435 ( .A1(n317), .B1(n316), .B2(slot0_count[9]), .ZN(
        n318) );
  INVD0BWP12T30P140 U436 ( .I(slot0_count[10]), .ZN(n450) );
  AOI32D0BWP12T30P140 U437 ( .A1(n320), .A2(slot0_count[10]), .A3(n319), .B1(
        n318), .B2(n450), .ZN(n135) );
  INVD0BWP12T30P140 U438 ( .I(slot3_state[1]), .ZN(n361) );
  AOI21D0BWP12T30P140 U439 ( .A1(n361), .A2(n321), .B(n484), .ZN(n172) );
  OAI22D0BWP12T30P140 U440 ( .A1(n325), .A2(n324), .B1(n323), .B2(n322), .ZN(
        n175) );
  OAI22D0BWP12T30P140 U441 ( .A1(n329), .A2(n328), .B1(n327), .B2(n326), .ZN(
        n177) );
  OAI22D0BWP12T30P140 U442 ( .A1(n333), .A2(n332), .B1(n331), .B2(n330), .ZN(
        n179) );
  OAI22D0BWP12T30P140 U443 ( .A1(n337), .A2(n336), .B1(n335), .B2(n334), .ZN(
        n181) );
  OAI31D0BWP12T30P140 U444 ( .A1(tx_remaining[4]), .A2(n339), .A3(n338), .B(
        n486), .ZN(n342) );
  OAI22D0BWP12T30P140 U445 ( .A1(n342), .A2(n341), .B1(n347), .B2(n340), .ZN(
        n192) );
  INVD0BWP12T30P140 U446 ( .I(tx_remaining[10]), .ZN(n348) );
  ND3D0BWP12T30P140 U447 ( .A1(n348), .A2(n344), .A3(n343), .ZN(tx_valid) );
  AOI21D0BWP12T30P140 U448 ( .A1(n346), .A2(tx_remaining[9]), .B(n345), .ZN(
        n349) );
  OAI22D0BWP12T30P140 U449 ( .A1(n349), .A2(n348), .B1(n347), .B2(tx_valid), 
        .ZN(n187) );
  OAI22D0BWP12T30P140 U450 ( .A1(n352), .A2(n427), .B1(n351), .B2(n350), .ZN(
        n138) );
  OAI22D0BWP12T30P140 U451 ( .A1(n355), .A2(n415), .B1(n354), .B2(n353), .ZN(
        n140) );
  OAI22D0BWP12T30P140 U452 ( .A1(n358), .A2(n402), .B1(n357), .B2(n356), .ZN(
        n142) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n360), .A2(n456), .B1(n456), .B2(n359), .ZN(
        n225) );
  NR4D0BWP12T30P140 U454 ( .A1(rx_rst), .A2(slot2_state[1]), .A3(
        slot0_state[1]), .A4(slot1_state[1]), .ZN(n362) );
  AOI21D0BWP12T30P140 U455 ( .A1(n362), .A2(n361), .B(n484), .ZN(N482) );
  INVD0BWP12T30P140 U456 ( .I(csr_a[2]), .ZN(n374) );
  NR3D0BWP12T30P140 U457 ( .A1(csr_a[1]), .A2(csr_a[3]), .A3(n374), .ZN(n378)
         );
  ND2D0BWP12T30P140 U458 ( .A1(n378), .A2(n381), .ZN(n449) );
  INR2D1BWP12T30P140 U459 ( .A1(n380), .B1(n363), .ZN(n446) );
  NR3D0BWP12T30P140 U460 ( .A1(csr_a[0]), .A2(csr_a[2]), .A3(n368), .ZN(n445)
         );
  AOI22D0BWP12T30P140 U461 ( .A1(slot3_count[0]), .A2(n446), .B1(
        slot2_count[0]), .B2(n445), .ZN(n365) );
  NR2D0BWP12T30P140 U462 ( .A1(n368), .A2(n363), .ZN(n444) );
  NR3D0BWP12T30P140 U463 ( .A1(csr_a[3]), .A2(n379), .A3(n363), .ZN(n443) );
  AOI22D0BWP12T30P140 U464 ( .A1(tx_remaining[0]), .A2(n444), .B1(
        slot1_count[0]), .B2(n443), .ZN(n364) );
  OAI211D0BWP12T30P140 U465 ( .A1(n366), .A2(n449), .B(n365), .C(n364), .ZN(
        n373) );
  INVD0BWP12T30P140 U466 ( .I(rx_rst), .ZN(n485) );
  AOI221D0BWP12T30P140 U467 ( .A1(csr_a[1]), .A2(n483), .B1(n379), .B2(n485), 
        .C(csr_a[3]), .ZN(n367) );
  AOI21D0BWP12T30P140 U468 ( .A1(slot2_state[0]), .A2(n380), .B(n367), .ZN(
        n371) );
  NR2D0BWP12T30P140 U469 ( .A1(csr_a[2]), .A2(n368), .ZN(n369) );
  AOI22D0BWP12T30P140 U470 ( .A1(slot1_state[0]), .A2(n378), .B1(
        slot3_state[0]), .B2(n369), .ZN(n370) );
  OAI32D0BWP12T30P140 U471 ( .A1(csr_a[0]), .A2(csr_a[2]), .A3(n371), .B1(n370), .B2(n381), .ZN(n372) );
  OAI21D0BWP12T30P140 U472 ( .A1(n373), .A2(n372), .B(n452), .ZN(n377) );
  NR2D0BWP12T30P140 U473 ( .A1(csr_a[1]), .A2(csr_a[3]), .ZN(n375) );
  ND4D0BWP12T30P140 U474 ( .A1(csr_a[0]), .A2(n376), .A3(n375), .A4(n374), 
        .ZN(n404) );
  OAI211D0BWP12T30P140 U475 ( .A1(n477), .A2(n475), .B(n377), .C(n404), .ZN(
        N349) );
  AN3D0BWP12T30P140 U476 ( .A1(csr_a[0]), .A2(n378), .A3(slot1_state[1]), .Z(
        n392) );
  AOI21D0BWP12T30P140 U477 ( .A1(slot0_state[1]), .A2(n381), .B(n379), .ZN(
        n384) );
  AOI221D0BWP12T30P140 U478 ( .A1(mii_data_di), .A2(csr_a[0]), .B1(tx_rst), 
        .B2(n381), .C(csr_a[1]), .ZN(n383) );
  ND3D0BWP12T30P140 U479 ( .A1(n381), .A2(slot2_state[1]), .A3(n380), .ZN(n382) );
  OAI31D0BWP12T30P140 U480 ( .A1(csr_a[3]), .A2(n384), .A3(n383), .B(n382), 
        .ZN(n385) );
  AOI31D0BWP12T30P140 U481 ( .A1(csr_a[0]), .A2(n386), .A3(slot3_state[1]), 
        .B(n385), .ZN(n390) );
  AOI22D0BWP12T30P140 U482 ( .A1(slot3_count[1]), .A2(n446), .B1(
        slot1_count[1]), .B2(n443), .ZN(n389) );
  MAOI22D0BWP12T30P140 U483 ( .A1(slot2_count[1]), .A2(n445), .B1(n387), .B2(
        n449), .ZN(n388) );
  OAI211D0BWP12T30P140 U484 ( .A1(csr_a[2]), .A2(n390), .B(n389), .C(n388), 
        .ZN(n391) );
  AOI211D0BWP12T30P140 U485 ( .A1(n444), .A2(tx_remaining[1]), .B(n392), .C(
        n391), .ZN(n394) );
  OAI22D0BWP12T30P140 U486 ( .A1(n394), .A2(n393), .B1(n478), .B2(n469), .ZN(
        N350) );
  AOI22D0BWP12T30P140 U487 ( .A1(tx_remaining[2]), .A2(n444), .B1(
        slot1_count[2]), .B2(n443), .ZN(n396) );
  AOI22D0BWP12T30P140 U488 ( .A1(slot3_count[2]), .A2(n446), .B1(
        slot2_count[2]), .B2(n445), .ZN(n395) );
  OAI211D0BWP12T30P140 U489 ( .A1(n397), .A2(n449), .B(n396), .C(n395), .ZN(
        n398) );
  AOI21D0BWP12T30P140 U490 ( .A1(n452), .A2(n398), .B(N380), .ZN(n399) );
  OAI211D0BWP12T30P140 U491 ( .A1(n479), .A2(n469), .B(n399), .C(n404), .ZN(
        N351) );
  AOI22D0BWP12T30P140 U492 ( .A1(tx_remaining[3]), .A2(n444), .B1(
        slot1_count[3]), .B2(n443), .ZN(n401) );
  AOI22D0BWP12T30P140 U493 ( .A1(slot3_count[3]), .A2(n446), .B1(
        slot2_count[3]), .B2(n445), .ZN(n400) );
  OAI211D0BWP12T30P140 U494 ( .A1(n402), .A2(n449), .B(n401), .C(n400), .ZN(
        n403) );
  AOI21D0BWP12T30P140 U495 ( .A1(n452), .A2(n403), .B(N380), .ZN(n405) );
  OAI211D0BWP12T30P140 U496 ( .A1(n406), .A2(n475), .B(n405), .C(n404), .ZN(
        N352) );
  AOI22D0BWP12T30P140 U497 ( .A1(tx_remaining[4]), .A2(n444), .B1(
        slot1_count[4]), .B2(n443), .ZN(n408) );
  AOI22D0BWP12T30P140 U498 ( .A1(slot3_count[4]), .A2(n446), .B1(
        slot2_count[4]), .B2(n445), .ZN(n407) );
  OAI211D0BWP12T30P140 U499 ( .A1(n409), .A2(n449), .B(n408), .C(n407), .ZN(
        n410) );
  AOI21D0BWP12T30P140 U500 ( .A1(n452), .A2(n410), .B(N380), .ZN(n411) );
  OAI21D0BWP12T30P140 U501 ( .A1(n412), .A2(n469), .B(n411), .ZN(N353) );
  AOI22D0BWP12T30P140 U502 ( .A1(tx_remaining[5]), .A2(n444), .B1(
        slot1_count[5]), .B2(n443), .ZN(n414) );
  AOI22D0BWP12T30P140 U503 ( .A1(slot3_count[5]), .A2(n446), .B1(
        slot2_count[5]), .B2(n445), .ZN(n413) );
  OAI211D0BWP12T30P140 U504 ( .A1(n415), .A2(n449), .B(n414), .C(n413), .ZN(
        n416) );
  AOI21D0BWP12T30P140 U505 ( .A1(n452), .A2(n416), .B(N380), .ZN(n417) );
  OAI21D0BWP12T30P140 U506 ( .A1(n418), .A2(n475), .B(n417), .ZN(N354) );
  AOI22D0BWP12T30P140 U507 ( .A1(tx_remaining[6]), .A2(n444), .B1(
        slot1_count[6]), .B2(n443), .ZN(n420) );
  AOI22D0BWP12T30P140 U508 ( .A1(slot3_count[6]), .A2(n446), .B1(
        slot2_count[6]), .B2(n445), .ZN(n419) );
  OAI211D0BWP12T30P140 U509 ( .A1(n421), .A2(n449), .B(n420), .C(n419), .ZN(
        n422) );
  AOI21D0BWP12T30P140 U510 ( .A1(n452), .A2(n422), .B(N380), .ZN(n423) );
  OAI21D0BWP12T30P140 U511 ( .A1(n424), .A2(n469), .B(n423), .ZN(N355) );
  AOI22D0BWP12T30P140 U512 ( .A1(tx_remaining[7]), .A2(n444), .B1(
        slot1_count[7]), .B2(n443), .ZN(n426) );
  AOI22D0BWP12T30P140 U513 ( .A1(slot3_count[7]), .A2(n446), .B1(
        slot2_count[7]), .B2(n445), .ZN(n425) );
  OAI211D0BWP12T30P140 U514 ( .A1(n427), .A2(n449), .B(n426), .C(n425), .ZN(
        n428) );
  AOI21D0BWP12T30P140 U515 ( .A1(n452), .A2(n428), .B(N380), .ZN(n429) );
  OAI21D0BWP12T30P140 U516 ( .A1(n430), .A2(n475), .B(n429), .ZN(N356) );
  AOI22D0BWP12T30P140 U517 ( .A1(tx_remaining[8]), .A2(n444), .B1(
        slot1_count[8]), .B2(n443), .ZN(n432) );
  AOI22D0BWP12T30P140 U518 ( .A1(slot3_count[8]), .A2(n446), .B1(
        slot2_count[8]), .B2(n445), .ZN(n431) );
  OAI211D0BWP12T30P140 U519 ( .A1(n433), .A2(n449), .B(n432), .C(n431), .ZN(
        n434) );
  AOI21D0BWP12T30P140 U520 ( .A1(n452), .A2(n434), .B(N380), .ZN(n435) );
  OAI21D0BWP12T30P140 U521 ( .A1(n436), .A2(n469), .B(n435), .ZN(N357) );
  AOI22D0BWP12T30P140 U522 ( .A1(tx_remaining[9]), .A2(n444), .B1(
        slot1_count[9]), .B2(n443), .ZN(n438) );
  AOI22D0BWP12T30P140 U523 ( .A1(slot3_count[9]), .A2(n446), .B1(
        slot2_count[9]), .B2(n445), .ZN(n437) );
  OAI211D0BWP12T30P140 U524 ( .A1(n439), .A2(n449), .B(n438), .C(n437), .ZN(
        n440) );
  AOI21D0BWP12T30P140 U525 ( .A1(n452), .A2(n440), .B(N380), .ZN(n441) );
  OAI21D0BWP12T30P140 U526 ( .A1(n442), .A2(n475), .B(n441), .ZN(N358) );
  AOI22D0BWP12T30P140 U527 ( .A1(tx_remaining[10]), .A2(n444), .B1(
        slot1_count[10]), .B2(n443), .ZN(n448) );
  AOI22D0BWP12T30P140 U528 ( .A1(slot3_count[10]), .A2(n446), .B1(
        slot2_count[10]), .B2(n445), .ZN(n447) );
  OAI211D0BWP12T30P140 U529 ( .A1(n450), .A2(n449), .B(n448), .C(n447), .ZN(
        n451) );
  AOI21D0BWP12T30P140 U530 ( .A1(n452), .A2(n451), .B(N380), .ZN(n453) );
  OAI21D0BWP12T30P140 U531 ( .A1(n454), .A2(n469), .B(n453), .ZN(N359) );
  OAI21D0BWP12T30P140 U532 ( .A1(n469), .A2(n455), .B(n473), .ZN(N378) );
  OAI21D0BWP12T30P140 U533 ( .A1(n469), .A2(n456), .B(n473), .ZN(N377) );
  OAI21D0BWP12T30P140 U534 ( .A1(n475), .A2(n457), .B(n473), .ZN(N376) );
  OAI21D0BWP12T30P140 U535 ( .A1(n469), .A2(n458), .B(n473), .ZN(N375) );
  OAI21D0BWP12T30P140 U536 ( .A1(n475), .A2(n459), .B(n473), .ZN(N374) );
  OAI21D0BWP12T30P140 U537 ( .A1(n469), .A2(n460), .B(n473), .ZN(N373) );
  OAI21D0BWP12T30P140 U538 ( .A1(n475), .A2(n461), .B(n473), .ZN(N372) );
  OAI21D0BWP12T30P140 U539 ( .A1(n469), .A2(n462), .B(n473), .ZN(N371) );
  OAI21D0BWP12T30P140 U540 ( .A1(n475), .A2(n463), .B(n473), .ZN(N370) );
  OAI21D0BWP12T30P140 U541 ( .A1(n475), .A2(n464), .B(n473), .ZN(N369) );
  OAI21D0BWP12T30P140 U542 ( .A1(n469), .A2(n465), .B(n473), .ZN(N368) );
  OAI21D0BWP12T30P140 U543 ( .A1(n475), .A2(n466), .B(n473), .ZN(N367) );
  OAI21D0BWP12T30P140 U544 ( .A1(n469), .A2(n467), .B(n473), .ZN(N366) );
  OAI21D0BWP12T30P140 U545 ( .A1(n469), .A2(n468), .B(n473), .ZN(N365) );
  OAI21D0BWP12T30P140 U546 ( .A1(n475), .A2(n470), .B(n473), .ZN(N364) );
  OAI21D0BWP12T30P140 U547 ( .A1(n475), .A2(n471), .B(n473), .ZN(N363) );
  OAI21D0BWP12T30P140 U548 ( .A1(n475), .A2(n472), .B(n473), .ZN(N362) );
  OAI21D0BWP12T30P140 U549 ( .A1(n475), .A2(n474), .B(n473), .ZN(N361) );
  AOI221D0BWP12T30P140 U550 ( .A1(n478), .A2(n486), .B1(n477), .B2(n486), .C(
        n476), .ZN(n480) );
  OAI32D0BWP12T30P140 U551 ( .A1(tx_adr[2]), .A2(n482), .A3(n481), .B1(n480), 
        .B2(n479), .ZN(n199) );
  INR3D1BWP12T30P140 U552 ( .A1(tx_valid_r), .B1(n484), .B2(tx_valid), .ZN(
        N484) );
  INR2D1BWP12T30P140 U553 ( .A1(tx_valid), .B1(n484), .ZN(N483) );
  NR2D0BWP12T30P140 U554 ( .A1(n484), .A2(tx_rst), .ZN(n228) );
  NR3D0BWP12T30P140 U555 ( .A1(n484), .A2(rx_endframe), .A3(n483), .ZN(n134)
         );
  IND3D1BWP12T30P140 U556 ( .A1(fifo_full), .B1(n486), .B2(n485), .ZN(n132) );
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
  DFQD2BWP12T30P140 fifo_hi_reg_3_ ( .D(n1), .CP(phy_rx_clk), .Q(fifo_in[7])
         );
  DFQD2BWP12T30P140 abort_reg ( .D(n21), .CP(phy_rx_clk), .Q(abort) );
  DFQD2BWP12T30P140 hi_nibble_reg ( .D(n22), .CP(phy_rx_clk), .Q(hi_nibble) );
  DFQD2BWP12T30P140 rx_rst1_reg ( .D(rx_rst), .CP(phy_rx_clk), .Q(rx_rst1) );
  DFQD2BWP12T30P140 fifo_full1_reg ( .D(full), .CP(sys_clk), .Q(fifo_full1) );
  DFQD2BWP12T30P140 rx_rst2_reg ( .D(rx_rst1), .CP(phy_rx_clk), .Q(rx_rst2) );
  DFQD1BWP12T30P140 phy_dv_r_reg ( .D(N61), .CP(phy_rx_clk), .Q(phy_dv_r) );
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
  AN2D0BWP12T30P140 U22 ( .A1(n16), .A2(phy_rx_data[2]), .Z(N53) );
  AN2D0BWP12T30P140 U23 ( .A1(n16), .A2(phy_rx_data[1]), .Z(N52) );
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
         n270, n271;
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
  DFQD2BWP12T30P140 wbm_dat_o_reg_20_ ( .D(n105), .CP(n4), .Q(wbm_dat_o[20])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_21_ ( .D(n101), .CP(n3), .Q(wbm_dat_o[21])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_22_ ( .D(n97), .CP(n2), .Q(wbm_dat_o[22]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_23_ ( .D(n93), .CP(n5), .Q(wbm_dat_o[23]) );
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
  DFQD2BWP12T30P140 wbm_dat_o_reg_27_ ( .D(n108), .CP(n5), .Q(wbm_dat_o[27])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_28_ ( .D(n104), .CP(n4), .Q(wbm_dat_o[28])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_29_ ( .D(n100), .CP(n3), .Q(wbm_dat_o[29])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_30_ ( .D(n96), .CP(n2), .Q(wbm_dat_o[30]) );
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
  DFQD2BWP12T30P140 adr_reg_18_ ( .D(n73), .CP(n2), .Q(wbm_adr_o[20]) );
  DFQD2BWP12T30P140 adr_reg_22_ ( .D(n69), .CP(n5), .Q(wbm_adr_o[24]) );
  DFQD2BWP12T30P140 adr_reg_26_ ( .D(n65), .CP(n4), .Q(wbm_adr_o[28]) );
  DFQD2BWP12T30P140 adr_reg_3_ ( .D(n88), .CP(n3), .Q(wbm_adr_o[5]) );
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
  DFQD2BWP12T30P140 adr_reg_20_ ( .D(n71), .CP(n3), .Q(wbm_adr_o[22]) );
  DFQD2BWP12T30P140 adr_reg_24_ ( .D(n67), .CP(n2), .Q(wbm_adr_o[26]) );
  DFQD2BWP12T30P140 loadbyte_counter_reg_0_ ( .D(n138), .CP(n5), .Q(
        loadbyte_counter[0]) );
  DFQD2BWP12T30P140 maxcount_reg_1_ ( .D(n136), .CP(n4), .Q(maxcount[1]) );
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
  DFQD2BWP12T30P140 adr_reg_13_ ( .D(n78), .CP(n4), .Q(wbm_adr_o[15]) );
  DFQD2BWP12T30P140 adr_reg_17_ ( .D(n74), .CP(n3), .Q(wbm_adr_o[19]) );
  DFQD2BWP12T30P140 adr_reg_21_ ( .D(n70), .CP(n2), .Q(wbm_adr_o[23]) );
  DFQD2BWP12T30P140 adr_reg_25_ ( .D(n66), .CP(n5), .Q(wbm_adr_o[27]) );
  DFQD2BWP12T30P140 maxcount_reg_0_ ( .D(n135), .CP(n3), .Q(maxcount[0]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n125), .CP(n2), .Q(state[2]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_1_ ( .D(n119), .CP(n3), .Q(wbm_dat_o[1]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_8_ ( .D(n122), .CP(n4), .Q(wbm_dat_o[8]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_31_ ( .D(n92), .CP(n5), .Q(wbm_dat_o[31]) );
  DFQD1BWP12T30P140 adr_reg_7_ ( .D(n84), .CP(n2), .Q(wbm_adr_o[9]) );
  DFQD1BWP12T30P140 state_reg_0_ ( .D(n140), .CP(n3), .Q(state[0]) );
  DFQD1BWP12T30P140 adr_reg_0_ ( .D(n91), .CP(n4), .Q(wbm_adr_o[2]) );
  INVD0BWP12T30P140 U3 ( .I(sys_clk), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n1), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(n1), .ZN(n3) );
  INVD0BWP12T30P140 U6 ( .I(n1), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(n5) );
  INVD0BWP12T30P140 U8 ( .I(state[1]), .ZN(n56) );
  NR2D0BWP12T30P140 U9 ( .A1(state[2]), .A2(n56), .ZN(wbm_cyc_o) );
  CKBD0BWP12T30P140 U10 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  INVD0BWP12T30P140 U11 ( .I(state[0]), .ZN(n201) );
  NR3D0BWP12T30P140 U12 ( .A1(state[2]), .A2(state[1]), .A3(n201), .ZN(
        rx_incrcount) );
  INVD0BWP12T30P140 U13 ( .I(loadbyte_counter[1]), .ZN(n7) );
  NR2D0BWP12T30P140 U14 ( .A1(sys_rst), .A2(rx_rst), .ZN(n233) );
  ND2D0BWP12T30P140 U15 ( .A1(n233), .A2(rx_incrcount), .ZN(n215) );
  NR3D0BWP12T30P140 U16 ( .A1(loadbyte_counter[0]), .A2(n7), .A3(n215), .ZN(
        n162) );
  INVD0BWP12T30P140 U17 ( .I(fifo_data[3]), .ZN(n11) );
  MAOI22D0BWP12T30P140 U18 ( .A1(n162), .A2(n11), .B1(wbm_dat_o[11]), .B2(n162), .ZN(n110) );
  INVD0BWP12T30P140 U19 ( .I(fifo_data[2]), .ZN(n10) );
  MAOI22D0BWP12T30P140 U20 ( .A1(n162), .A2(n10), .B1(wbm_dat_o[10]), .B2(n162), .ZN(n114) );
  INVD0BWP12T30P140 U21 ( .I(fifo_data[1]), .ZN(n9) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n162), .A2(n9), .B1(wbm_dat_o[9]), .B2(n162), 
        .ZN(n118) );
  INVD0BWP12T30P140 U23 ( .I(fifo_data[0]), .ZN(n195) );
  MAOI22D0BWP12T30P140 U24 ( .A1(n162), .A2(n195), .B1(wbm_dat_o[8]), .B2(n162), .ZN(n122) );
  INVD0BWP12T30P140 U25 ( .I(loadbyte_counter[0]), .ZN(n188) );
  NR3D0BWP12T30P140 U26 ( .A1(loadbyte_counter[1]), .A2(n215), .A3(n188), .ZN(
        n163) );
  INVD0BWP12T30P140 U27 ( .I(fifo_data[7]), .ZN(n14) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n163), .A2(n14), .B1(wbm_dat_o[23]), .B2(n163), .ZN(n93) );
  INVD0BWP12T30P140 U29 ( .I(fifo_data[6]), .ZN(n13) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n163), .A2(n13), .B1(wbm_dat_o[22]), .B2(n163), .ZN(n97) );
  INVD0BWP12T30P140 U31 ( .I(fifo_data[5]), .ZN(n157) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n163), .A2(n157), .B1(wbm_dat_o[21]), .B2(
        n163), .ZN(n101) );
  INVD0BWP12T30P140 U33 ( .I(fifo_data[4]), .ZN(n12) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n163), .A2(n12), .B1(wbm_dat_o[20]), .B2(n163), .ZN(n105) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n163), .A2(n11), .B1(wbm_dat_o[19]), .B2(n163), .ZN(n109) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n163), .A2(n10), .B1(wbm_dat_o[18]), .B2(n163), .ZN(n113) );
  MAOI22D0BWP12T30P140 U37 ( .A1(n163), .A2(n9), .B1(wbm_dat_o[17]), .B2(n163), 
        .ZN(n117) );
  MAOI22D0BWP12T30P140 U38 ( .A1(n163), .A2(n195), .B1(wbm_dat_o[16]), .B2(
        n163), .ZN(n121) );
  NR2D0BWP12T30P140 U39 ( .A1(n188), .A2(n7), .ZN(n207) );
  INR2D1BWP12T30P140 U40 ( .A1(n207), .B1(n215), .ZN(n6) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n6), .A2(n14), .B1(wbm_dat_o[7]), .B2(n6), 
        .ZN(n95) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n6), .A2(n13), .B1(wbm_dat_o[6]), .B2(n6), 
        .ZN(n99) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n6), .A2(n157), .B1(wbm_dat_o[5]), .B2(n6), 
        .ZN(n103) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n6), .A2(n12), .B1(wbm_dat_o[4]), .B2(n6), 
        .ZN(n107) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n6), .A2(n11), .B1(wbm_dat_o[3]), .B2(n6), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n6), .A2(n10), .B1(wbm_dat_o[2]), .B2(n6), 
        .ZN(n115) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n6), .A2(n9), .B1(wbm_dat_o[1]), .B2(n6), 
        .ZN(n119) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n6), .A2(n195), .B1(wbm_dat_o[0]), .B2(n6), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n162), .A2(n12), .B1(wbm_dat_o[12]), .B2(n162), .ZN(n106) );
  INR2D1BWP12T30P140 U50 ( .A1(rx_valid), .B1(fifo_empty), .ZN(n197) );
  INVD0BWP12T30P140 U51 ( .I(fifo_eof), .ZN(n204) );
  INR3D1BWP12T30P140 U52 ( .A1(n197), .B1(state[2]), .B2(n204), .ZN(n57) );
  ND2D0BWP12T30P140 U53 ( .A1(wbm_cyc_o), .A2(wbm_ack_i), .ZN(n16) );
  ND2D0BWP12T30P140 U54 ( .A1(n188), .A2(n7), .ZN(n196) );
  ND2D0BWP12T30P140 U55 ( .A1(n201), .A2(n56), .ZN(n205) );
  IND3D1BWP12T30P140 U56 ( .A1(n205), .B1(in_frame), .B2(n57), .ZN(n234) );
  IND2D1BWP12T30P140 U57 ( .A1(n234), .B1(n195), .ZN(n8) );
  OAI22D0BWP12T30P140 U58 ( .A1(n201), .A2(n16), .B1(n196), .B2(n8), .ZN(
        rx_endframe) );
  NR2D0BWP12T30P140 U59 ( .A1(n195), .A2(n234), .ZN(rx_resetcount) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n162), .A2(n13), .B1(wbm_dat_o[14]), .B2(n162), .ZN(n98) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n162), .A2(n14), .B1(wbm_dat_o[15]), .B2(n162), .ZN(n94) );
  NR2D0BWP12T30P140 U62 ( .A1(n215), .A2(n196), .ZN(n15) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n15), .A2(n195), .B1(wbm_dat_o[24]), .B2(n15), 
        .ZN(n120) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n15), .A2(n9), .B1(wbm_dat_o[25]), .B2(n15), 
        .ZN(n116) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n15), .A2(n10), .B1(wbm_dat_o[26]), .B2(n15), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n15), .A2(n11), .B1(wbm_dat_o[27]), .B2(n15), 
        .ZN(n108) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n15), .A2(n12), .B1(wbm_dat_o[28]), .B2(n15), 
        .ZN(n104) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n15), .A2(n157), .B1(wbm_dat_o[29]), .B2(n15), 
        .ZN(n100) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n15), .A2(n13), .B1(wbm_dat_o[30]), .B2(n15), 
        .ZN(n96) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n15), .A2(n14), .B1(wbm_dat_o[31]), .B2(n15), 
        .ZN(n92) );
  NR4D0BWP12T30P140 U71 ( .A1(maxcount[1]), .A2(maxcount[0]), .A3(maxcount[2]), 
        .A4(maxcount[3]), .ZN(n37) );
  INR3D1BWP12T30P140 U72 ( .A1(n37), .B1(maxcount[5]), .B2(maxcount[4]), .ZN(
        n223) );
  INVD0BWP12T30P140 U73 ( .I(n223), .ZN(n224) );
  NR3D0BWP12T30P140 U74 ( .A1(maxcount[7]), .A2(maxcount[6]), .A3(n224), .ZN(
        n193) );
  ND2D0BWP12T30P140 U75 ( .A1(n197), .A2(n204), .ZN(n198) );
  NR4D0BWP12T30P140 U76 ( .A1(state[2]), .A2(in_frame), .A3(n205), .A4(n198), 
        .ZN(n235) );
  IND2D1BWP12T30P140 U77 ( .A1(n235), .B1(n233), .ZN(n229) );
  NR2D0BWP12T30P140 U78 ( .A1(rx_incrcount), .A2(n229), .ZN(n225) );
  INVD0BWP12T30P140 U79 ( .I(n225), .ZN(n263) );
  OA21D0BWP12T30P140 U80 ( .A1(n215), .A2(n193), .B(n263), .Z(n213) );
  INVD0BWP12T30P140 U81 ( .I(maxcount[8]), .ZN(n214) );
  INVD0BWP12T30P140 U82 ( .I(n229), .ZN(n227) );
  INVD0BWP12T30P140 U83 ( .I(n215), .ZN(n262) );
  ND2D0BWP12T30P140 U84 ( .A1(n262), .A2(n193), .ZN(n34) );
  IND2D1BWP12T30P140 U85 ( .A1(n34), .B1(n214), .ZN(n212) );
  OAI211D0BWP12T30P140 U86 ( .A1(n213), .A2(n214), .B(n227), .C(n212), .ZN(
        n128) );
  INVD0BWP12T30P140 U87 ( .I(wbm_adr_o[30]), .ZN(n160) );
  OR2D0BWP12T30P140 U88 ( .A1(n16), .A2(state[0]), .Z(n17) );
  NR2D0BWP12T30P140 U89 ( .A1(n17), .A2(sys_rst), .ZN(n154) );
  INVD0BWP12T30P140 U90 ( .I(n154), .ZN(n261) );
  CKBD0BWP12T30P140 U91 ( .I(n261), .Z(n240) );
  ND3D0BWP12T30P140 U92 ( .A1(wbm_adr_o[3]), .A2(wbm_adr_o[2]), .A3(
        wbm_adr_o[4]), .ZN(n141) );
  INVD0BWP12T30P140 U93 ( .I(wbm_adr_o[6]), .ZN(n23) );
  INVD0BWP12T30P140 U94 ( .I(wbm_adr_o[5]), .ZN(n26) );
  NR3D0BWP12T30P140 U95 ( .A1(n141), .A2(n23), .A3(n26), .ZN(n39) );
  ND3D0BWP12T30P140 U96 ( .A1(n39), .A2(wbm_adr_o[8]), .A3(wbm_adr_o[7]), .ZN(
        n144) );
  INVD0BWP12T30P140 U97 ( .I(wbm_adr_o[10]), .ZN(n29) );
  INVD0BWP12T30P140 U98 ( .I(wbm_adr_o[9]), .ZN(n32) );
  NR3D0BWP12T30P140 U99 ( .A1(n144), .A2(n29), .A3(n32), .ZN(n241) );
  ND3D0BWP12T30P140 U100 ( .A1(n241), .A2(wbm_adr_o[12]), .A3(wbm_adr_o[11]), 
        .ZN(n148) );
  INVD0BWP12T30P140 U101 ( .I(wbm_adr_o[13]), .ZN(n168) );
  INR3D1BWP12T30P140 U102 ( .A1(wbm_adr_o[14]), .B1(n148), .B2(n168), .ZN(n245) );
  ND3D0BWP12T30P140 U103 ( .A1(n245), .A2(wbm_adr_o[16]), .A3(wbm_adr_o[15]), 
        .ZN(n150) );
  INVD0BWP12T30P140 U104 ( .I(wbm_adr_o[17]), .ZN(n173) );
  INR3D1BWP12T30P140 U105 ( .A1(wbm_adr_o[18]), .B1(n150), .B2(n173), .ZN(n184) );
  ND3D0BWP12T30P140 U106 ( .A1(n184), .A2(wbm_adr_o[20]), .A3(wbm_adr_o[19]), 
        .ZN(n152) );
  INVD0BWP12T30P140 U107 ( .I(wbm_adr_o[21]), .ZN(n178) );
  INR3D1BWP12T30P140 U108 ( .A1(wbm_adr_o[22]), .B1(n152), .B2(n178), .ZN(n249) );
  ND3D0BWP12T30P140 U109 ( .A1(n249), .A2(wbm_adr_o[24]), .A3(wbm_adr_o[23]), 
        .ZN(n155) );
  INVD0BWP12T30P140 U110 ( .I(wbm_adr_o[25]), .ZN(n183) );
  INR3D1BWP12T30P140 U111 ( .A1(wbm_adr_o[26]), .B1(n155), .B2(n183), .ZN(n254) );
  ND3D0BWP12T30P140 U112 ( .A1(n254), .A2(wbm_adr_o[28]), .A3(wbm_adr_o[27]), 
        .ZN(n19) );
  NR2D0BWP12T30P140 U113 ( .A1(n240), .A2(n19), .ZN(n266) );
  ND2D0BWP12T30P140 U114 ( .A1(wbm_adr_o[29]), .A2(n266), .ZN(n158) );
  INVD0BWP12T30P140 U115 ( .I(sys_rst), .ZN(n192) );
  ND2D0BWP12T30P140 U116 ( .A1(n192), .A2(n17), .ZN(n18) );
  NR2D0BWP12T30P140 U117 ( .A1(n235), .A2(n18), .ZN(n259) );
  NR2D0BWP12T30P140 U118 ( .A1(n259), .A2(n18), .ZN(n267) );
  INVD0BWP12T30P140 U119 ( .I(wbm_adr_o[29]), .ZN(n265) );
  INVD0BWP12T30P140 U120 ( .I(n259), .ZN(n253) );
  IOA21D0BWP12T30P140 U121 ( .A1(n19), .A2(n154), .B(n253), .ZN(n269) );
  AOI21D0BWP12T30P140 U122 ( .A1(n154), .A2(n265), .B(n269), .ZN(n161) );
  OAI21D0BWP12T30P140 U123 ( .A1(wbm_adr_o[30]), .A2(n240), .B(n161), .ZN(n20)
         );
  AOI22D0BWP12T30P140 U124 ( .A1(rx_adr[29]), .A2(n267), .B1(wbm_adr_o[31]), 
        .B2(n20), .ZN(n21) );
  OAI31D0BWP12T30P140 U125 ( .A1(wbm_adr_o[31]), .A2(n160), .A3(n158), .B(n21), 
        .ZN(n62) );
  CKBD0BWP12T30P140 U126 ( .I(n267), .Z(n258) );
  INVD0BWP12T30P140 U127 ( .I(n141), .ZN(n22) );
  ND2D0BWP12T30P140 U128 ( .A1(n154), .A2(n22), .ZN(n25) );
  OAI21D0BWP12T30P140 U129 ( .A1(n22), .A2(n261), .B(n253), .ZN(n60) );
  AOI21D0BWP12T30P140 U130 ( .A1(n154), .A2(n26), .B(n60), .ZN(n24) );
  OAI32D0BWP12T30P140 U131 ( .A1(wbm_adr_o[6]), .A2(n26), .A3(n25), .B1(n24), 
        .B2(n23), .ZN(n27) );
  AO21D0BWP12T30P140 U132 ( .A1(n258), .A2(rx_adr[4]), .B(n27), .Z(n87) );
  INVD0BWP12T30P140 U133 ( .I(n144), .ZN(n28) );
  ND2D0BWP12T30P140 U134 ( .A1(n154), .A2(n28), .ZN(n31) );
  OAI21D0BWP12T30P140 U135 ( .A1(n28), .A2(n240), .B(n253), .ZN(n142) );
  AOI21D0BWP12T30P140 U136 ( .A1(n154), .A2(n32), .B(n142), .ZN(n30) );
  OAI32D0BWP12T30P140 U137 ( .A1(wbm_adr_o[10]), .A2(n32), .A3(n31), .B1(n30), 
        .B2(n29), .ZN(n33) );
  AO21D0BWP12T30P140 U138 ( .A1(n258), .A2(rx_adr[8]), .B(n33), .Z(n83) );
  OAI31D0BWP12T30P140 U139 ( .A1(n225), .A2(maxcount[6]), .A3(n224), .B(
        maxcount[7]), .ZN(n35) );
  ND3D0BWP12T30P140 U140 ( .A1(n35), .A2(n34), .A3(n227), .ZN(n129) );
  INVD0BWP12T30P140 U141 ( .I(maxcount[1]), .ZN(n190) );
  AOI21D0BWP12T30P140 U142 ( .A1(maxcount[0]), .A2(n262), .B(n225), .ZN(n191)
         );
  OAI21D0BWP12T30P140 U143 ( .A1(n215), .A2(n190), .B(n191), .ZN(n217) );
  OAI21D0BWP12T30P140 U144 ( .A1(maxcount[2]), .A2(n217), .B(maxcount[3]), 
        .ZN(n36) );
  ND2D0BWP12T30P140 U146 ( .A1(n262), .A2(n37), .ZN(n232) );
  ND3D0BWP12T30P140 U147 ( .A1(n36), .A2(n232), .A3(n227), .ZN(n133) );
  ND2D0BWP12T30P140 U148 ( .A1(n37), .A2(n263), .ZN(n230) );
  OAI21D0BWP12T30P140 U149 ( .A1(maxcount[4]), .A2(n230), .B(maxcount[5]), 
        .ZN(n38) );
  OAI211D0BWP12T30P140 U150 ( .A1(n215), .A2(n224), .B(n227), .C(n38), .ZN(
        n131) );
  INVD0BWP12T30P140 U151 ( .I(wbm_adr_o[7]), .ZN(n42) );
  ND2D0BWP12T30P140 U152 ( .A1(n154), .A2(n39), .ZN(n222) );
  OAI21D0BWP12T30P140 U153 ( .A1(n39), .A2(n261), .B(n253), .ZN(n220) );
  AO21D0BWP12T30P140 U154 ( .A1(n42), .A2(n154), .B(n220), .Z(n40) );
  AOI22D0BWP12T30P140 U155 ( .A1(wbm_adr_o[8]), .A2(n40), .B1(n267), .B2(
        rx_adr[6]), .ZN(n41) );
  OAI31D0BWP12T30P140 U156 ( .A1(wbm_adr_o[8]), .A2(n42), .A3(n222), .B(n41), 
        .ZN(n85) );
  INVD0BWP12T30P140 U157 ( .I(wbm_adr_o[11]), .ZN(n45) );
  ND2D0BWP12T30P140 U158 ( .A1(n154), .A2(n241), .ZN(n244) );
  AOI32D0BWP12T30P140 U159 ( .A1(n241), .A2(n253), .A3(wbm_adr_o[11]), .B1(
        n240), .B2(n253), .ZN(n43) );
  AOI22D0BWP12T30P140 U160 ( .A1(wbm_adr_o[12]), .A2(n43), .B1(n258), .B2(
        rx_adr[10]), .ZN(n44) );
  OAI31D0BWP12T30P140 U161 ( .A1(wbm_adr_o[12]), .A2(n45), .A3(n244), .B(n44), 
        .ZN(n81) );
  INVD0BWP12T30P140 U162 ( .I(wbm_adr_o[15]), .ZN(n48) );
  ND2D0BWP12T30P140 U163 ( .A1(n154), .A2(n245), .ZN(n248) );
  AOI32D0BWP12T30P140 U164 ( .A1(n245), .A2(n253), .A3(wbm_adr_o[15]), .B1(
        n261), .B2(n253), .ZN(n46) );
  AOI22D0BWP12T30P140 U165 ( .A1(wbm_adr_o[16]), .A2(n46), .B1(n267), .B2(
        rx_adr[14]), .ZN(n47) );
  OAI31D0BWP12T30P140 U166 ( .A1(wbm_adr_o[16]), .A2(n48), .A3(n248), .B(n47), 
        .ZN(n77) );
  INVD0BWP12T30P140 U167 ( .I(wbm_adr_o[19]), .ZN(n51) );
  ND2D0BWP12T30P140 U168 ( .A1(n154), .A2(n184), .ZN(n187) );
  AOI32D0BWP12T30P140 U169 ( .A1(n184), .A2(n253), .A3(wbm_adr_o[19]), .B1(
        n261), .B2(n253), .ZN(n49) );
  AOI22D0BWP12T30P140 U170 ( .A1(wbm_adr_o[20]), .A2(n49), .B1(n258), .B2(
        rx_adr[18]), .ZN(n50) );
  OAI31D0BWP12T30P140 U171 ( .A1(wbm_adr_o[20]), .A2(n51), .A3(n187), .B(n50), 
        .ZN(n73) );
  INVD0BWP12T30P140 U172 ( .I(wbm_adr_o[23]), .ZN(n54) );
  ND2D0BWP12T30P140 U173 ( .A1(n154), .A2(n249), .ZN(n252) );
  AOI32D0BWP12T30P140 U174 ( .A1(n249), .A2(n253), .A3(wbm_adr_o[23]), .B1(
        n240), .B2(n253), .ZN(n52) );
  AOI22D0BWP12T30P140 U175 ( .A1(wbm_adr_o[24]), .A2(n52), .B1(n267), .B2(
        rx_adr[22]), .ZN(n53) );
  OAI31D0BWP12T30P140 U176 ( .A1(wbm_adr_o[24]), .A2(n54), .A3(n252), .B(n53), 
        .ZN(n69) );
  INVD0BWP12T30P140 U177 ( .I(wbm_adr_o[27]), .ZN(n59) );
  ND2D0BWP12T30P140 U178 ( .A1(n154), .A2(n254), .ZN(n257) );
  AOI32D0BWP12T30P140 U179 ( .A1(n254), .A2(n253), .A3(wbm_adr_o[27]), .B1(
        n261), .B2(n253), .ZN(n55) );
  AOI22D0BWP12T30P140 U180 ( .A1(wbm_adr_o[28]), .A2(n55), .B1(n267), .B2(
        rx_adr[26]), .ZN(n58) );
  OAI31D0BWP12T30P140 U181 ( .A1(wbm_adr_o[28]), .A2(n59), .A3(n257), .B(n58), 
        .ZN(n65) );
  AOI22D0BWP12T30P140 U182 ( .A1(wbm_adr_o[5]), .A2(n60), .B1(n258), .B2(
        rx_adr[3]), .ZN(n61) );
  OAI31D0BWP12T30P140 U183 ( .A1(wbm_adr_o[5]), .A2(n240), .A3(n141), .B(n61), 
        .ZN(n88) );
  AOI22D0BWP12T30P140 U184 ( .A1(wbm_adr_o[9]), .A2(n142), .B1(n267), .B2(
        rx_adr[7]), .ZN(n143) );
  OAI31D0BWP12T30P140 U185 ( .A1(wbm_adr_o[9]), .A2(n261), .A3(n144), .B(n143), 
        .ZN(n84) );
  ND2D0BWP12T30P140 U186 ( .A1(wbm_adr_o[3]), .A2(wbm_adr_o[2]), .ZN(n147) );
  INVD0BWP12T30P140 U187 ( .I(wbm_adr_o[2]), .ZN(n239) );
  AOI21D0BWP12T30P140 U188 ( .A1(n239), .A2(n154), .B(n259), .ZN(n236) );
  OAI21D0BWP12T30P140 U189 ( .A1(wbm_adr_o[3]), .A2(n240), .B(n236), .ZN(n145)
         );
  AOI22D0BWP12T30P140 U190 ( .A1(wbm_adr_o[4]), .A2(n145), .B1(n267), .B2(
        rx_adr[2]), .ZN(n146) );
  OAI31D0BWP12T30P140 U191 ( .A1(wbm_adr_o[4]), .A2(n240), .A3(n147), .B(n146), 
        .ZN(n89) );
  AOI21D0BWP12T30P140 U192 ( .A1(n154), .A2(n148), .B(n259), .ZN(n164) );
  OR2D0BWP12T30P140 U193 ( .A1(n148), .A2(n261), .Z(n167) );
  MAOI22D0BWP12T30P140 U194 ( .A1(rx_adr[11]), .A2(n258), .B1(wbm_adr_o[13]), 
        .B2(n167), .ZN(n149) );
  OAI21D0BWP12T30P140 U195 ( .A1(n164), .A2(n168), .B(n149), .ZN(n80) );
  AOI21D0BWP12T30P140 U196 ( .A1(n154), .A2(n150), .B(n259), .ZN(n169) );
  OR2D0BWP12T30P140 U197 ( .A1(n150), .A2(n240), .Z(n172) );
  MAOI22D0BWP12T30P140 U198 ( .A1(rx_adr[15]), .A2(n258), .B1(wbm_adr_o[17]), 
        .B2(n172), .ZN(n151) );
  OAI21D0BWP12T30P140 U199 ( .A1(n169), .A2(n173), .B(n151), .ZN(n76) );
  AOI21D0BWP12T30P140 U200 ( .A1(n154), .A2(n152), .B(n259), .ZN(n174) );
  OR2D0BWP12T30P140 U201 ( .A1(n152), .A2(n240), .Z(n177) );
  MAOI22D0BWP12T30P140 U202 ( .A1(rx_adr[19]), .A2(n267), .B1(wbm_adr_o[21]), 
        .B2(n177), .ZN(n153) );
  OAI21D0BWP12T30P140 U203 ( .A1(n174), .A2(n178), .B(n153), .ZN(n72) );
  AOI21D0BWP12T30P140 U204 ( .A1(n154), .A2(n155), .B(n259), .ZN(n179) );
  OR2D0BWP12T30P140 U205 ( .A1(n155), .A2(n261), .Z(n182) );
  MAOI22D0BWP12T30P140 U206 ( .A1(rx_adr[23]), .A2(n258), .B1(wbm_adr_o[25]), 
        .B2(n182), .ZN(n156) );
  OAI21D0BWP12T30P140 U207 ( .A1(n179), .A2(n183), .B(n156), .ZN(n68) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n162), .A2(n157), .B1(wbm_dat_o[13]), .B2(
        n162), .ZN(n102) );
  MAOI22D0BWP12T30P140 U209 ( .A1(rx_adr[28]), .A2(n258), .B1(wbm_adr_o[30]), 
        .B2(n158), .ZN(n159) );
  OAI21D0BWP12T30P140 U210 ( .A1(n161), .A2(n160), .B(n159), .ZN(n63) );
  AO211D0BWP12T30P140 U211 ( .A1(loadbyte_counter[1]), .A2(n225), .B(n163), 
        .C(n162), .Z(n137) );
  OAI21D0BWP12T30P140 U212 ( .A1(wbm_adr_o[13]), .A2(n240), .B(n164), .ZN(n165) );
  AOI22D0BWP12T30P140 U213 ( .A1(wbm_adr_o[14]), .A2(n165), .B1(n258), .B2(
        rx_adr[12]), .ZN(n166) );
  OAI31D0BWP12T30P140 U214 ( .A1(wbm_adr_o[14]), .A2(n168), .A3(n167), .B(n166), .ZN(n79) );
  OAI21D0BWP12T30P140 U215 ( .A1(wbm_adr_o[17]), .A2(n261), .B(n169), .ZN(n170) );
  AOI22D0BWP12T30P140 U216 ( .A1(wbm_adr_o[18]), .A2(n170), .B1(n258), .B2(
        rx_adr[16]), .ZN(n171) );
  OAI31D0BWP12T30P140 U217 ( .A1(wbm_adr_o[18]), .A2(n173), .A3(n172), .B(n171), .ZN(n75) );
  OAI21D0BWP12T30P140 U218 ( .A1(wbm_adr_o[21]), .A2(n240), .B(n174), .ZN(n175) );
  AOI22D0BWP12T30P140 U219 ( .A1(wbm_adr_o[22]), .A2(n175), .B1(n267), .B2(
        rx_adr[20]), .ZN(n176) );
  OAI31D0BWP12T30P140 U220 ( .A1(wbm_adr_o[22]), .A2(n178), .A3(n177), .B(n176), .ZN(n71) );
  OAI21D0BWP12T30P140 U221 ( .A1(wbm_adr_o[25]), .A2(n240), .B(n179), .ZN(n180) );
  AOI22D0BWP12T30P140 U222 ( .A1(wbm_adr_o[26]), .A2(n180), .B1(n258), .B2(
        rx_adr[24]), .ZN(n181) );
  OAI31D0BWP12T30P140 U223 ( .A1(wbm_adr_o[26]), .A2(n183), .A3(n182), .B(n181), .ZN(n67) );
  OAI21D0BWP12T30P140 U224 ( .A1(n184), .A2(n240), .B(n253), .ZN(n185) );
  AOI22D0BWP12T30P140 U225 ( .A1(wbm_adr_o[19]), .A2(n185), .B1(n267), .B2(
        rx_adr[17]), .ZN(n186) );
  OAI21D0BWP12T30P140 U226 ( .A1(wbm_adr_o[19]), .A2(n187), .B(n186), .ZN(n74)
         );
  AOI22D0BWP12T30P140 U227 ( .A1(loadbyte_counter[0]), .A2(n263), .B1(n215), 
        .B2(n188), .ZN(n138) );
  NR2D0BWP12T30P140 U228 ( .A1(maxcount[1]), .A2(maxcount[0]), .ZN(n189) );
  ND2D0BWP12T30P140 U229 ( .A1(n262), .A2(n189), .ZN(n219) );
  OAI211D0BWP12T30P140 U230 ( .A1(n191), .A2(n190), .B(n227), .C(n219), .ZN(
        n136) );
  ND2D0BWP12T30P140 U231 ( .A1(n192), .A2(state[2]), .ZN(n264) );
  OAI31D0BWP12T30P140 U232 ( .A1(n56), .A2(sys_rst), .A3(wbm_ack_i), .B(n264), 
        .ZN(n211) );
  INVD0BWP12T30P140 U233 ( .I(n211), .ZN(n209) );
  NR4D0BWP12T30P140 U234 ( .A1(state[0]), .A2(maxcount[10]), .A3(maxcount[9]), 
        .A4(n56), .ZN(n194) );
  ND3D0BWP12T30P140 U235 ( .A1(n214), .A2(n194), .A3(n193), .ZN(n202) );
  ND4D0BWP12T30P140 U236 ( .A1(in_frame), .A2(n197), .A3(n196), .A4(n195), 
        .ZN(n203) );
  AOI32D0BWP12T30P140 U237 ( .A1(n198), .A2(n202), .A3(n203), .B1(n205), .B2(
        n202), .ZN(n199) );
  ND2D0BWP12T30P140 U238 ( .A1(n209), .A2(n199), .ZN(n200) );
  OAI22D0BWP12T30P140 U239 ( .A1(n200), .A2(sys_rst), .B1(n201), .B2(n209), 
        .ZN(n140) );
  NR2D0BWP12T30P140 U240 ( .A1(state[1]), .A2(n201), .ZN(n208) );
  OAI31D0BWP12T30P140 U241 ( .A1(n205), .A2(n204), .A3(n203), .B(n202), .ZN(
        n206) );
  AOI31D0BWP12T30P140 U242 ( .A1(rx_valid), .A2(n208), .A3(n207), .B(n206), 
        .ZN(n210) );
  OAI32D0BWP12T30P140 U243 ( .A1(n211), .A2(sys_rst), .A3(n210), .B1(n209), 
        .B2(n56), .ZN(n124) );
  OR2D0BWP12T30P140 U244 ( .A1(maxcount[9]), .A2(n212), .Z(n270) );
  OAI21D0BWP12T30P140 U245 ( .A1(n215), .A2(n214), .B(n213), .ZN(n271) );
  OAI21D0BWP12T30P140 U246 ( .A1(maxcount[9]), .A2(n271), .B(maxcount[10]), 
        .ZN(n216) );
  OAI211D0BWP12T30P140 U247 ( .A1(maxcount[10]), .A2(n270), .B(n227), .C(n216), 
        .ZN(n126) );
  INVD0BWP12T30P140 U248 ( .I(maxcount[2]), .ZN(n218) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n219), .A2(n218), .B1(n218), .B2(n217), .ZN(
        n134) );
  AOI22D0BWP12T30P140 U250 ( .A1(wbm_adr_o[7]), .A2(n220), .B1(n267), .B2(
        rx_adr[5]), .ZN(n221) );
  OAI21D0BWP12T30P140 U251 ( .A1(wbm_adr_o[7]), .A2(n222), .B(n221), .ZN(n86)
         );
  ND2D0BWP12T30P140 U252 ( .A1(n262), .A2(n223), .ZN(n228) );
  OAI21D0BWP12T30P140 U253 ( .A1(n225), .A2(n224), .B(maxcount[6]), .ZN(n226)
         );
  OAI211D0BWP12T30P140 U254 ( .A1(maxcount[6]), .A2(n228), .B(n227), .C(n226), 
        .ZN(n130) );
  AOI21D0BWP12T30P140 U255 ( .A1(maxcount[4]), .A2(n230), .B(n229), .ZN(n231)
         );
  OAI21D0BWP12T30P140 U256 ( .A1(maxcount[4]), .A2(n232), .B(n231), .ZN(n132)
         );
  OA211D0BWP12T30P140 U257 ( .A1(in_frame), .A2(n235), .B(n234), .C(n233), .Z(
        n139) );
  INVD0BWP12T30P140 U258 ( .I(n236), .ZN(n237) );
  AOI22D0BWP12T30P140 U259 ( .A1(wbm_adr_o[3]), .A2(n237), .B1(n258), .B2(
        rx_adr[1]), .ZN(n238) );
  OAI31D0BWP12T30P140 U260 ( .A1(wbm_adr_o[3]), .A2(n240), .A3(n239), .B(n238), 
        .ZN(n90) );
  OAI21D0BWP12T30P140 U261 ( .A1(n241), .A2(n261), .B(n253), .ZN(n242) );
  AOI22D0BWP12T30P140 U262 ( .A1(wbm_adr_o[11]), .A2(n242), .B1(n267), .B2(
        rx_adr[9]), .ZN(n243) );
  OAI21D0BWP12T30P140 U263 ( .A1(wbm_adr_o[11]), .A2(n244), .B(n243), .ZN(n82)
         );
  OAI21D0BWP12T30P140 U264 ( .A1(n245), .A2(n261), .B(n253), .ZN(n246) );
  AOI22D0BWP12T30P140 U265 ( .A1(wbm_adr_o[15]), .A2(n246), .B1(n258), .B2(
        rx_adr[13]), .ZN(n247) );
  OAI21D0BWP12T30P140 U266 ( .A1(wbm_adr_o[15]), .A2(n248), .B(n247), .ZN(n78)
         );
  OAI21D0BWP12T30P140 U267 ( .A1(n249), .A2(n261), .B(n253), .ZN(n250) );
  AOI22D0BWP12T30P140 U268 ( .A1(wbm_adr_o[23]), .A2(n250), .B1(n258), .B2(
        rx_adr[21]), .ZN(n251) );
  OAI21D0BWP12T30P140 U269 ( .A1(wbm_adr_o[23]), .A2(n252), .B(n251), .ZN(n70)
         );
  OAI21D0BWP12T30P140 U270 ( .A1(n254), .A2(n261), .B(n253), .ZN(n255) );
  AOI22D0BWP12T30P140 U271 ( .A1(wbm_adr_o[27]), .A2(n255), .B1(n267), .B2(
        rx_adr[25]), .ZN(n256) );
  OAI21D0BWP12T30P140 U272 ( .A1(wbm_adr_o[27]), .A2(n257), .B(n256), .ZN(n66)
         );
  AOI22D0BWP12T30P140 U273 ( .A1(n259), .A2(wbm_adr_o[2]), .B1(n258), .B2(
        rx_adr[0]), .ZN(n260) );
  OAI21D0BWP12T30P140 U274 ( .A1(wbm_adr_o[2]), .A2(n261), .B(n260), .ZN(n91)
         );
  MAOI22D0BWP12T30P140 U275 ( .A1(maxcount[0]), .A2(n263), .B1(n262), .B2(
        maxcount[0]), .ZN(n135) );
  INVD0BWP12T30P140 U276 ( .I(n264), .ZN(n125) );
  AOI22D0BWP12T30P140 U277 ( .A1(rx_adr[27]), .A2(n267), .B1(n266), .B2(n265), 
        .ZN(n268) );
  IOA21D0BWP12T30P140 U278 ( .A1(wbm_adr_o[29]), .A2(n269), .B(n268), .ZN(n64)
         );
  IOA21D0BWP12T30P140 U279 ( .A1(maxcount[9]), .A2(n271), .B(n270), .ZN(n127)
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
  DFQD2BWP12T30P140 can_tx2_reg ( .D(can_tx1), .CP(phy_tx_clk), .Q(can_tx2) );
  DFQD2BWP12T30P140 fifo_read_reg ( .D(n1), .CP(phy_tx_clk), .Q(fifo_read) );
  DFQD2BWP12T30P140 interframe_counter_reg_3_ ( .D(n15), .CP(phy_tx_clk), .Q(
        interframe_counter[3]) );
  DFQD2BWP12T30P140 empty_reg ( .D(empty2), .CP(sys_clk), .Q(empty) );
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
  DFQD1BWP12T30P140 interframe_counter_reg_1_ ( .D(n18), .CP(phy_tx_clk), .Q(
        interframe_counter[1]) );
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
  wire   full, can_tx, empty, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n50, n51, n52, n53,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128;
  wire   [31:0] input_reg;
  wire   [1:0] state;
  wire   [6:0] byte_counter;
  wire   [3:0] fstate;

  minimac_txfifo txfifo ( .sys_clk(sys_clk), .tx_rst(tx_rst), .stb(tx_next), 
        .data({n101, n102, n103, n104, n105, n106, n107, n108}), .full(full), 
        .can_tx(can_tx), .empty(empty), .phy_tx_clk(phy_tx_clk), .phy_tx_en(
        phy_tx_en), .phy_tx_data(phy_tx_data) );
  ND2D0BWP12T30P140 U92 ( .A1(n37), .A2(n36), .ZN(n101) );
  ND2D0BWP12T30P140 U95 ( .A1(n39), .A2(n38), .ZN(n102) );
  ND2D0BWP12T30P140 U98 ( .A1(n41), .A2(n40), .ZN(n103) );
  ND2D0BWP12T30P140 U101 ( .A1(n43), .A2(n42), .ZN(n104) );
  ND2D0BWP12T30P140 U104 ( .A1(n45), .A2(n44), .ZN(n105) );
  ND2D0BWP12T30P140 U107 ( .A1(n47), .A2(n46), .ZN(n106) );
  ND2D0BWP12T30P140 U110 ( .A1(n49), .A2(n48), .ZN(n107) );
  ND2D0BWP12T30P140 U113 ( .A1(n55), .A2(n54), .ZN(n108) );
  DFQD2BWP12T30P140 fstate_reg_1_ ( .D(n89), .CP(n4), .Q(fstate[1]) );
  DFQD2BWP12T30P140 fstate_reg_3_ ( .D(n90), .CP(n3), .Q(fstate[3]) );
  DFQD2BWP12T30P140 input_reg_reg_0_ ( .D(n87), .CP(n2), .Q(input_reg[0]) );
  DFQD2BWP12T30P140 input_reg_reg_31_ ( .D(n86), .CP(n4), .Q(input_reg[31]) );
  DFQD2BWP12T30P140 input_reg_reg_30_ ( .D(n85), .CP(n3), .Q(input_reg[30]) );
  DFQD2BWP12T30P140 input_reg_reg_29_ ( .D(n84), .CP(n2), .Q(input_reg[29]) );
  DFQD2BWP12T30P140 input_reg_reg_28_ ( .D(n83), .CP(n4), .Q(input_reg[28]) );
  DFQD2BWP12T30P140 input_reg_reg_27_ ( .D(n82), .CP(n3), .Q(input_reg[27]) );
  DFQD2BWP12T30P140 input_reg_reg_26_ ( .D(n81), .CP(n2), .Q(input_reg[26]) );
  DFQD2BWP12T30P140 input_reg_reg_25_ ( .D(n80), .CP(n4), .Q(input_reg[25]) );
  DFQD2BWP12T30P140 input_reg_reg_24_ ( .D(n79), .CP(n3), .Q(input_reg[24]) );
  DFQD2BWP12T30P140 input_reg_reg_16_ ( .D(n71), .CP(n2), .Q(input_reg[16]) );
  DFQD2BWP12T30P140 input_reg_reg_7_ ( .D(n62), .CP(n3), .Q(input_reg[7]) );
  DFQD2BWP12T30P140 input_reg_reg_6_ ( .D(n61), .CP(n2), .Q(input_reg[6]) );
  DFQD2BWP12T30P140 input_reg_reg_5_ ( .D(n60), .CP(n4), .Q(input_reg[5]) );
  DFQD2BWP12T30P140 input_reg_reg_4_ ( .D(n59), .CP(n3), .Q(input_reg[4]) );
  DFQD2BWP12T30P140 input_reg_reg_3_ ( .D(n58), .CP(n2), .Q(input_reg[3]) );
  DFQD2BWP12T30P140 input_reg_reg_2_ ( .D(n57), .CP(n4), .Q(input_reg[2]) );
  DFQD2BWP12T30P140 input_reg_reg_1_ ( .D(n56), .CP(n3), .Q(input_reg[1]) );
  DFQD2BWP12T30P140 input_reg_reg_23_ ( .D(n78), .CP(n2), .Q(input_reg[23]) );
  DFQD2BWP12T30P140 input_reg_reg_22_ ( .D(n77), .CP(n4), .Q(input_reg[22]) );
  DFQD2BWP12T30P140 input_reg_reg_21_ ( .D(n76), .CP(n3), .Q(input_reg[21]) );
  DFQD2BWP12T30P140 input_reg_reg_20_ ( .D(n75), .CP(n2), .Q(input_reg[20]) );
  DFQD2BWP12T30P140 input_reg_reg_19_ ( .D(n74), .CP(n4), .Q(input_reg[19]) );
  DFQD2BWP12T30P140 input_reg_reg_18_ ( .D(n73), .CP(n3), .Q(input_reg[18]) );
  DFQD2BWP12T30P140 input_reg_reg_17_ ( .D(n72), .CP(n2), .Q(input_reg[17]) );
  DFQD2BWP12T30P140 input_reg_reg_14_ ( .D(n69), .CP(n3), .Q(input_reg[14]) );
  DFQD2BWP12T30P140 input_reg_reg_13_ ( .D(n68), .CP(n2), .Q(input_reg[13]) );
  DFQD2BWP12T30P140 input_reg_reg_12_ ( .D(n67), .CP(n4), .Q(input_reg[12]) );
  DFQD2BWP12T30P140 input_reg_reg_11_ ( .D(n66), .CP(n3), .Q(input_reg[11]) );
  DFQD2BWP12T30P140 input_reg_reg_10_ ( .D(n65), .CP(n2), .Q(input_reg[10]) );
  DFQD2BWP12T30P140 input_reg_reg_9_ ( .D(n64), .CP(n4), .Q(input_reg[9]) );
  DFQD2BWP12T30P140 byte_counter_reg_5_ ( .D(n92), .CP(n3), .Q(byte_counter[5]) );
  DFQD2BWP12T30P140 byte_counter_reg_1_ ( .D(n96), .CP(n2), .Q(byte_counter[1]) );
  DFQD2BWP12T30P140 byte_counter_reg_3_ ( .D(n94), .CP(n4), .Q(byte_counter[3]) );
  DFQD2BWP12T30P140 fstate_reg_2_ ( .D(n88), .CP(n3), .Q(fstate[2]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n98), .CP(n2), .Q(state[0]) );
  DFQD2BWP12T30P140 fstate_reg_0_ ( .D(n100), .CP(n4), .Q(fstate[0]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n99), .CP(n3), .Q(state[1]) );
  DFQD2BWP12T30P140 byte_counter_reg_6_ ( .D(n91), .CP(n2), .Q(byte_counter[6]) );
  DFQD2BWP12T30P140 byte_counter_reg_4_ ( .D(n93), .CP(n3), .Q(byte_counter[4]) );
  DFQD2BWP12T30P140 byte_counter_reg_0_ ( .D(n97), .CP(n2), .Q(byte_counter[0]) );
  DFQD1BWP12T30P140 input_reg_reg_8_ ( .D(n63), .CP(n4), .Q(input_reg[8]) );
  DFQD1BWP12T30P140 input_reg_reg_15_ ( .D(n70), .CP(n4), .Q(input_reg[15]) );
  DFQD1BWP12T30P140 byte_counter_reg_2_ ( .D(n95), .CP(n4), .Q(byte_counter[2]) );
  NR2D0BWP12T30P140 U3 ( .A1(state[1]), .A2(n25), .ZN(n116) );
  INVD0BWP12T30P140 U4 ( .I(state[0]), .ZN(n25) );
  INVD0BWP12T30P140 U5 ( .I(sys_clk), .ZN(n1) );
  INVD0BWP12T30P140 U6 ( .I(n1), .ZN(n2) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(n1), .ZN(n4) );
  BUFFD1BWP12T30P140 U9 ( .I(n116), .Z(wbtx_cyc_o) );
  CKBD0BWP12T30P140 U10 ( .I(wbtx_cyc_o), .Z(wbtx_stb_o) );
  CKBD0BWP12T30P140 U11 ( .I(tx_adr[0]), .Z(wbtx_adr_o[2]) );
  CKBD0BWP12T30P140 U12 ( .I(tx_adr[1]), .Z(wbtx_adr_o[3]) );
  CKBD0BWP12T30P140 U13 ( .I(tx_adr[2]), .Z(wbtx_adr_o[4]) );
  CKBD0BWP12T30P140 U14 ( .I(tx_adr[3]), .Z(wbtx_adr_o[5]) );
  CKBD0BWP12T30P140 U15 ( .I(tx_adr[4]), .Z(wbtx_adr_o[6]) );
  CKBD0BWP12T30P140 U16 ( .I(tx_adr[5]), .Z(wbtx_adr_o[7]) );
  CKBD0BWP12T30P140 U17 ( .I(tx_adr[6]), .Z(wbtx_adr_o[8]) );
  CKBD0BWP12T30P140 U18 ( .I(tx_adr[7]), .Z(wbtx_adr_o[9]) );
  CKBD0BWP12T30P140 U19 ( .I(tx_adr[8]), .Z(wbtx_adr_o[10]) );
  CKBD0BWP12T30P140 U20 ( .I(tx_adr[9]), .Z(wbtx_adr_o[11]) );
  CKBD0BWP12T30P140 U21 ( .I(tx_adr[10]), .Z(wbtx_adr_o[12]) );
  CKBD0BWP12T30P140 U22 ( .I(tx_adr[11]), .Z(wbtx_adr_o[13]) );
  CKBD0BWP12T30P140 U23 ( .I(tx_adr[12]), .Z(wbtx_adr_o[14]) );
  CKBD0BWP12T30P140 U24 ( .I(tx_adr[13]), .Z(wbtx_adr_o[15]) );
  CKBD0BWP12T30P140 U25 ( .I(tx_adr[14]), .Z(wbtx_adr_o[16]) );
  CKBD0BWP12T30P140 U26 ( .I(tx_adr[15]), .Z(wbtx_adr_o[17]) );
  CKBD0BWP12T30P140 U27 ( .I(tx_adr[16]), .Z(wbtx_adr_o[18]) );
  CKBD0BWP12T30P140 U28 ( .I(tx_adr[17]), .Z(wbtx_adr_o[19]) );
  CKBD0BWP12T30P140 U29 ( .I(tx_adr[18]), .Z(wbtx_adr_o[20]) );
  CKBD0BWP12T30P140 U30 ( .I(tx_adr[19]), .Z(wbtx_adr_o[21]) );
  CKBD0BWP12T30P140 U31 ( .I(tx_adr[20]), .Z(wbtx_adr_o[22]) );
  CKBD0BWP12T30P140 U32 ( .I(tx_adr[21]), .Z(wbtx_adr_o[23]) );
  CKBD0BWP12T30P140 U33 ( .I(tx_adr[22]), .Z(wbtx_adr_o[24]) );
  CKBD0BWP12T30P140 U34 ( .I(tx_adr[23]), .Z(wbtx_adr_o[25]) );
  CKBD0BWP12T30P140 U35 ( .I(tx_adr[24]), .Z(wbtx_adr_o[26]) );
  CKBD0BWP12T30P140 U36 ( .I(tx_adr[25]), .Z(wbtx_adr_o[27]) );
  CKBD0BWP12T30P140 U37 ( .I(tx_adr[26]), .Z(wbtx_adr_o[28]) );
  CKBD0BWP12T30P140 U38 ( .I(tx_adr[27]), .Z(wbtx_adr_o[29]) );
  CKBD0BWP12T30P140 U39 ( .I(tx_adr[28]), .Z(wbtx_adr_o[30]) );
  CKBD0BWP12T30P140 U40 ( .I(tx_adr[29]), .Z(wbtx_adr_o[31]) );
  INVD0BWP12T30P140 U41 ( .I(state[1]), .ZN(n27) );
  NR2D0BWP12T30P140 U42 ( .A1(tx_bytecount[1]), .A2(tx_bytecount[0]), .ZN(n124) );
  INVD0BWP12T30P140 U43 ( .I(fstate[1]), .ZN(n118) );
  NR2D0BWP12T30P140 U44 ( .A1(fstate[0]), .A2(fstate[2]), .ZN(n17) );
  ND3D0BWP12T30P140 U45 ( .A1(n118), .A2(n17), .A3(fstate[3]), .ZN(n31) );
  IND4D1BWP12T30P140 U46 ( .A1(full), .B1(tx_valid), .B2(n25), .B3(n31), .ZN(
        n24) );
  OAI22D0BWP12T30P140 U47 ( .A1(state[0]), .A2(n27), .B1(n124), .B2(n24), .ZN(
        tx_next) );
  INVD0BWP12T30P140 U48 ( .I(tx_next), .ZN(n13) );
  INVD0BWP12T30P140 U49 ( .I(fstate[3]), .ZN(n121) );
  ND2D0BWP12T30P140 U50 ( .A1(n17), .A2(n121), .ZN(n5) );
  NR3D0BWP12T30P140 U51 ( .A1(n5), .A2(sys_rst), .A3(n118), .ZN(n12) );
  ND2D0BWP12T30P140 U52 ( .A1(n13), .A2(n12), .ZN(n7) );
  ND2D0BWP12T30P140 U53 ( .A1(n12), .A2(tx_next), .ZN(n10) );
  INVD0BWP12T30P140 U54 ( .I(n10), .ZN(n14) );
  MAOI22D0BWP12T30P140 U55 ( .A1(byte_counter[0]), .A2(n7), .B1(n14), .B2(
        byte_counter[0]), .ZN(n97) );
  ND2D0BWP12T30P140 U56 ( .A1(byte_counter[1]), .A2(byte_counter[0]), .ZN(n9)
         );
  INR2D1BWP12T30P140 U57 ( .A1(byte_counter[2]), .B1(n9), .ZN(n52) );
  ND2D0BWP12T30P140 U58 ( .A1(byte_counter[3]), .A2(n52), .ZN(n11) );
  NR2D0BWP12T30P140 U59 ( .A1(byte_counter[3]), .A2(n10), .ZN(n53) );
  OAI21D0BWP12T30P140 U60 ( .A1(n52), .A2(n10), .B(n7), .ZN(n109) );
  OAI21D0BWP12T30P140 U61 ( .A1(n53), .A2(n109), .B(byte_counter[4]), .ZN(n6)
         );
  OAI31D0BWP12T30P140 U62 ( .A1(byte_counter[4]), .A2(n10), .A3(n11), .B(n6), 
        .ZN(n93) );
  NR2D0BWP12T30P140 U63 ( .A1(byte_counter[1]), .A2(n10), .ZN(n110) );
  OAI21D0BWP12T30P140 U64 ( .A1(byte_counter[0]), .A2(n10), .B(n7), .ZN(n111)
         );
  OAI21D0BWP12T30P140 U65 ( .A1(n110), .A2(n111), .B(byte_counter[2]), .ZN(n8)
         );
  OAI31D0BWP12T30P140 U66 ( .A1(byte_counter[2]), .A2(n10), .A3(n9), .B(n8), 
        .ZN(n95) );
  IND2D1BWP12T30P140 U67 ( .A1(n11), .B1(byte_counter[4]), .ZN(n112) );
  OAI21D0BWP12T30P140 U68 ( .A1(n13), .A2(n112), .B(n12), .ZN(n115) );
  INVD0BWP12T30P140 U69 ( .I(byte_counter[5]), .ZN(n114) );
  ND2D0BWP12T30P140 U70 ( .A1(n14), .A2(n114), .ZN(n113) );
  IND3D1BWP12T30P140 U71 ( .A1(n112), .B1(n14), .B2(byte_counter[5]), .ZN(n16)
         );
  INVD0BWP12T30P140 U72 ( .I(byte_counter[6]), .ZN(n15) );
  AOI32D0BWP12T30P140 U73 ( .A1(n115), .A2(byte_counter[6]), .A3(n113), .B1(
        n16), .B2(n15), .ZN(n91) );
  INVD0BWP12T30P140 U74 ( .I(sys_rst), .ZN(n35) );
  OA211D0BWP12T30P140 U75 ( .A1(state[1]), .A2(wbtx_ack_i), .B(state[0]), .C(
        n35), .Z(n99) );
  INVD0BWP12T30P140 U76 ( .I(fstate[0]), .ZN(n21) );
  ND4D0BWP12T30P140 U77 ( .A1(fstate[2]), .A2(n118), .A3(n121), .A4(n21), .ZN(
        n120) );
  ND2D0BWP12T30P140 U78 ( .A1(n31), .A2(n120), .ZN(can_tx) );
  INVD0BWP12T30P140 U79 ( .I(n31), .ZN(n23) );
  INVD0BWP12T30P140 U80 ( .I(fstate[2]), .ZN(n51) );
  ND4D0BWP12T30P140 U81 ( .A1(n118), .A2(n121), .A3(n51), .A4(fstate[0]), .ZN(
        n117) );
  INR2D1BWP12T30P140 U82 ( .A1(n117), .B1(can_tx), .ZN(n18) );
  ND3D0BWP12T30P140 U83 ( .A1(n121), .A2(n17), .A3(fstate[1]), .ZN(n50) );
  ND2D0BWP12T30P140 U84 ( .A1(n18), .A2(n50), .ZN(n30) );
  INVD0BWP12T30P140 U85 ( .I(n120), .ZN(n19) );
  MAOI22D0BWP12T30P140 U86 ( .A1(tx_valid), .A2(n19), .B1(n50), .B2(
        byte_counter[6]), .ZN(n20) );
  AOI221D0BWP12T30P140 U87 ( .A1(tx_valid), .A2(n20), .B1(n117), .B2(n20), .C(
        sys_rst), .ZN(n32) );
  INVD0BWP12T30P140 U88 ( .I(n32), .ZN(n34) );
  AOI21D0BWP12T30P140 U89 ( .A1(n30), .A2(n34), .B(n21), .ZN(n22) );
  AO211D0BWP12T30P140 U90 ( .A1(n23), .A2(empty), .B(sys_rst), .C(n22), .Z(
        n100) );
  INVD0BWP12T30P140 U91 ( .I(n24), .ZN(n28) );
  AOI21D0BWP12T30P140 U93 ( .A1(wbtx_ack_i), .A2(n27), .B(n25), .ZN(n26) );
  AOI31D0BWP12T30P140 U94 ( .A1(n28), .A2(n124), .A3(n27), .B(n26), .ZN(n29)
         );
  NR2D0BWP12T30P140 U96 ( .A1(sys_rst), .A2(n29), .ZN(n98) );
  OAI21D0BWP12T30P140 U97 ( .A1(empty), .A2(n31), .B(n30), .ZN(n33) );
  AOI21D0BWP12T30P140 U99 ( .A1(n35), .A2(n33), .B(n32), .ZN(n122) );
  ND2D0BWP12T30P140 U100 ( .A1(n35), .A2(n34), .ZN(n119) );
  OAI22D0BWP12T30P140 U102 ( .A1(n122), .A2(n51), .B1(n50), .B2(n119), .ZN(n88) );
  AO22D0BWP12T30P140 U103 ( .A1(byte_counter[3]), .A2(n109), .B1(n53), .B2(n52), .Z(n94) );
  AO22D0BWP12T30P140 U105 ( .A1(byte_counter[1]), .A2(n111), .B1(n110), .B2(
        byte_counter[0]), .Z(n96) );
  OAI22D0BWP12T30P140 U106 ( .A1(n115), .A2(n114), .B1(n113), .B2(n112), .ZN(
        n92) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(input_reg[9]), .I1(wbtx_dat_i[9]), .S(n116), 
        .Z(n64) );
  CKMUX2D0BWP12T30P140 U109 ( .I0(input_reg[10]), .I1(wbtx_dat_i[10]), .S(n116), .Z(n65) );
  CKMUX2D0BWP12T30P140 U111 ( .I0(input_reg[11]), .I1(wbtx_dat_i[11]), .S(n116), .Z(n66) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(input_reg[12]), .I1(wbtx_dat_i[12]), .S(n116), .Z(n67) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(input_reg[13]), .I1(wbtx_dat_i[13]), .S(n116), .Z(n68) );
  CKMUX2D0BWP12T30P140 U115 ( .I0(input_reg[14]), .I1(wbtx_dat_i[14]), .S(n116), .Z(n69) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(input_reg[15]), .I1(wbtx_dat_i[15]), .S(
        wbtx_cyc_o), .Z(n70) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(input_reg[17]), .I1(wbtx_dat_i[17]), .S(
        wbtx_cyc_o), .Z(n72) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(input_reg[18]), .I1(wbtx_dat_i[18]), .S(n116), .Z(n73) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(input_reg[19]), .I1(wbtx_dat_i[19]), .S(
        wbtx_cyc_o), .Z(n74) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(input_reg[20]), .I1(wbtx_dat_i[20]), .S(n116), .Z(n75) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(input_reg[21]), .I1(wbtx_dat_i[21]), .S(
        wbtx_cyc_o), .Z(n76) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(input_reg[22]), .I1(wbtx_dat_i[22]), .S(n116), .Z(n77) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(input_reg[23]), .I1(wbtx_dat_i[23]), .S(
        wbtx_cyc_o), .Z(n78) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(input_reg[1]), .I1(wbtx_dat_i[1]), .S(n116), 
        .Z(n56) );
  CKMUX2D0BWP12T30P140 U125 ( .I0(input_reg[2]), .I1(wbtx_dat_i[2]), .S(
        wbtx_cyc_o), .Z(n57) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(input_reg[3]), .I1(wbtx_dat_i[3]), .S(n116), 
        .Z(n58) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(input_reg[4]), .I1(wbtx_dat_i[4]), .S(
        wbtx_cyc_o), .Z(n59) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(input_reg[5]), .I1(wbtx_dat_i[5]), .S(n116), 
        .Z(n60) );
  CKMUX2D0BWP12T30P140 U129 ( .I0(input_reg[6]), .I1(wbtx_dat_i[6]), .S(
        wbtx_cyc_o), .Z(n61) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(input_reg[7]), .I1(wbtx_dat_i[7]), .S(n116), 
        .Z(n62) );
  CKMUX2D0BWP12T30P140 U131 ( .I0(input_reg[8]), .I1(wbtx_dat_i[8]), .S(
        wbtx_cyc_o), .Z(n63) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(input_reg[16]), .I1(wbtx_dat_i[16]), .S(n116), .Z(n71) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(input_reg[24]), .I1(wbtx_dat_i[24]), .S(n116), .Z(n79) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(input_reg[25]), .I1(wbtx_dat_i[25]), .S(
        wbtx_cyc_o), .Z(n80) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(input_reg[26]), .I1(wbtx_dat_i[26]), .S(n116), .Z(n81) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(input_reg[27]), .I1(wbtx_dat_i[27]), .S(
        wbtx_cyc_o), .Z(n82) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(input_reg[28]), .I1(wbtx_dat_i[28]), .S(
        wbtx_cyc_o), .Z(n83) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(input_reg[29]), .I1(wbtx_dat_i[29]), .S(
        wbtx_cyc_o), .Z(n84) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(input_reg[30]), .I1(wbtx_dat_i[30]), .S(
        wbtx_cyc_o), .Z(n85) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(input_reg[31]), .I1(wbtx_dat_i[31]), .S(
        wbtx_cyc_o), .Z(n86) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(input_reg[0]), .I1(wbtx_dat_i[0]), .S(
        wbtx_cyc_o), .Z(n87) );
  OAI22D0BWP12T30P140 U142 ( .A1(n122), .A2(n118), .B1(n117), .B2(n119), .ZN(
        n89) );
  OAI22D0BWP12T30P140 U143 ( .A1(n122), .A2(n121), .B1(n120), .B2(n119), .ZN(
        n90) );
  INVD0BWP12T30P140 U144 ( .I(tx_bytecount[1]), .ZN(n125) );
  NR2D0BWP12T30P140 U145 ( .A1(tx_bytecount[0]), .A2(n125), .ZN(n123) );
  AOI22D0BWP12T30P140 U146 ( .A1(n124), .A2(input_reg[30]), .B1(n123), .B2(
        input_reg[14]), .ZN(n38) );
  AOI22D0BWP12T30P140 U147 ( .A1(n124), .A2(input_reg[28]), .B1(n123), .B2(
        input_reg[12]), .ZN(n42) );
  AOI22D0BWP12T30P140 U148 ( .A1(n124), .A2(input_reg[24]), .B1(input_reg[8]), 
        .B2(n123), .ZN(n54) );
  AOI22D0BWP12T30P140 U149 ( .A1(n124), .A2(input_reg[27]), .B1(n123), .B2(
        input_reg[11]), .ZN(n44) );
  AOI22D0BWP12T30P140 U150 ( .A1(n124), .A2(input_reg[31]), .B1(n123), .B2(
        input_reg[15]), .ZN(n36) );
  AOI22D0BWP12T30P140 U151 ( .A1(n124), .A2(input_reg[29]), .B1(n123), .B2(
        input_reg[13]), .ZN(n40) );
  AOI22D0BWP12T30P140 U152 ( .A1(n124), .A2(input_reg[25]), .B1(n123), .B2(
        input_reg[9]), .ZN(n48) );
  AOI22D0BWP12T30P140 U153 ( .A1(n124), .A2(input_reg[26]), .B1(n123), .B2(
        input_reg[10]), .ZN(n46) );
  INVD0BWP12T30P140 U154 ( .I(tx_bytecount[0]), .ZN(n126) );
  NR2D0BWP12T30P140 U155 ( .A1(n125), .A2(n126), .ZN(n128) );
  NR2D0BWP12T30P140 U156 ( .A1(tx_bytecount[1]), .A2(n126), .ZN(n127) );
  AOI22D0BWP12T30P140 U157 ( .A1(n128), .A2(input_reg[7]), .B1(n127), .B2(
        input_reg[23]), .ZN(n37) );
  AOI22D0BWP12T30P140 U158 ( .A1(n128), .A2(input_reg[6]), .B1(n127), .B2(
        input_reg[22]), .ZN(n39) );
  AOI22D0BWP12T30P140 U159 ( .A1(n128), .A2(input_reg[5]), .B1(n127), .B2(
        input_reg[21]), .ZN(n41) );
  AOI22D0BWP12T30P140 U160 ( .A1(n128), .A2(input_reg[4]), .B1(n127), .B2(
        input_reg[20]), .ZN(n43) );
  AOI22D0BWP12T30P140 U161 ( .A1(n128), .A2(input_reg[3]), .B1(n127), .B2(
        input_reg[19]), .ZN(n45) );
  AOI22D0BWP12T30P140 U162 ( .A1(n128), .A2(input_reg[2]), .B1(n127), .B2(
        input_reg[18]), .ZN(n47) );
  AOI22D0BWP12T30P140 U163 ( .A1(n128), .A2(input_reg[1]), .B1(n127), .B2(
        input_reg[17]), .ZN(n49) );
  AOI22D0BWP12T30P140 U164 ( .A1(input_reg[0]), .A2(n128), .B1(input_reg[16]), 
        .B2(n127), .ZN(n55) );
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
         fifo_full, tx_valid, tx_next, n12, n13, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [29:0] rx_adr;
  wire   [29:0] tx_adr;
  wire   [1:0] tx_bytecount;

  minimac_ctlif_0 ctlif ( .sys_clk(n13), .sys_rst(sys_rst), .csr_a(csr_a), 
        .csr_do(csr_do), .irq_rx(irq_rx), .irq_tx(irq_tx), .rx_rst(rx_rst), 
        .tx_rst(tx_rst), .rx_valid(rx_valid), .rx_adr(rx_adr), .rx_resetcount(
        rx_resetcount), .rx_incrcount(rx_incrcount), .rx_endframe(rx_endframe), 
        .fifo_full(fifo_full), .tx_valid(tx_valid), .tx_adr(tx_adr), 
        .tx_bytecount(tx_bytecount), .tx_next(tx_next), .phy_mii_clk(
        phy_mii_clk), .phy_mii_data(phy_mii_data) );
  minimac_rx rx ( .sys_clk(sys_clk), .sys_rst(sys_rst), .rx_rst(rx_rst), 
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
endmodule

