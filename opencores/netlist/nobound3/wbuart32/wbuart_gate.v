/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:57:20 2026
/////////////////////////////////////////////////////////////


module rxuart_00000019 ( i_clk, i_reset, i_setup, i_uart_rx, o_wr, o_data, 
        o_break, o_parity_err, o_frame_err, o_ck_uart );
  input [30:0] i_setup;
  output [7:0] o_data;
  input i_clk, i_reset, i_uart_rx;
  output o_wr, o_break, o_parity_err, o_frame_err, o_ck_uart;
  wire   q_uart, qq_uart, N92, N94, line_synch, N96, half_baud_time,
         zero_baud_counter, calc_parity, pre_wr, N235, N434, N435, N436, N437,
         N438, N439, N440, N441, N442, N443, N444, N445, N446, N447, N448,
         N449, N450, N451, N452, N453, N454, N455, N456, N457, N458, N459,
         N460, N461, N464, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n148, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530;
  wire   [27:24] r_setup;
  wire   [23:0] clocks_per_baud;
  wire   [1:0] data_bits;
  wire   [27:0] chg_counter;
  wire   [3:0] state;
  wire   [7:0] data_reg;
  wire   [27:0] baud_counter;

  DFQD2BWP12T30P140 chg_counter_reg_20_ ( .D(n170), .CP(i_clk), .Q(
        chg_counter[20]) );
  DFQD2BWP12T30P140 half_baud_time_reg ( .D(N96), .CP(n526), .Q(half_baud_time) );
  DFQD2BWP12T30P140 pre_wr_reg ( .D(n147), .CP(n527), .Q(pre_wr) );
  DFQD2BWP12T30P140 line_synch_reg ( .D(N94), .CP(n525), .Q(line_synch) );
  DFQD2BWP12T30P140 chg_counter_reg_7_ ( .D(n183), .CP(i_clk), .Q(
        chg_counter[7]) );
  DFQD2BWP12T30P140 data_reg_reg_5_ ( .D(n114), .CP(n530), .Q(data_reg[5]) );
  DFQD2BWP12T30P140 data_reg_reg_1_ ( .D(n110), .CP(n530), .Q(data_reg[1]) );
  DFQD2BWP12T30P140 o_parity_err_reg ( .D(n158), .CP(n526), .Q(o_parity_err)
         );
  DFQD2BWP12T30P140 chg_counter_reg_14_ ( .D(n176), .CP(n526), .Q(
        chg_counter[14]) );
  DFQD2BWP12T30P140 chg_counter_reg_19_ ( .D(n171), .CP(i_clk), .Q(
        chg_counter[19]) );
  DFQD2BWP12T30P140 baud_counter_reg_22_ ( .D(N456), .CP(n525), .Q(
        baud_counter[22]) );
  DFQD2BWP12T30P140 baud_counter_reg_21_ ( .D(N455), .CP(n526), .Q(
        baud_counter[21]) );
  DFQD2BWP12T30P140 baud_counter_reg_20_ ( .D(N454), .CP(n527), .Q(
        baud_counter[20]) );
  DFQD2BWP12T30P140 baud_counter_reg_0_ ( .D(N434), .CP(n526), .Q(
        baud_counter[0]) );
  DFQD2BWP12T30P140 baud_counter_reg_27_ ( .D(N461), .CP(n527), .Q(
        baud_counter[27]) );
  DFQD2BWP12T30P140 baud_counter_reg_14_ ( .D(N448), .CP(n527), .Q(
        baud_counter[14]) );
  DFQD2BWP12T30P140 baud_counter_reg_11_ ( .D(N445), .CP(n525), .Q(
        baud_counter[11]) );
  DFQD2BWP12T30P140 baud_counter_reg_10_ ( .D(N444), .CP(n525), .Q(
        baud_counter[10]) );
  DFQD2BWP12T30P140 data_reg_reg_7_ ( .D(n116), .CP(n530), .Q(data_reg[7]) );
  DFQD2BWP12T30P140 data_reg_reg_0_ ( .D(n109), .CP(n530), .Q(data_reg[0]) );
  DFQD2BWP12T30P140 baud_counter_reg_9_ ( .D(N443), .CP(n525), .Q(
        baud_counter[9]) );
  DFQD2BWP12T30P140 baud_counter_reg_6_ ( .D(N440), .CP(n525), .Q(
        baud_counter[6]) );
  DFQD2BWP12T30P140 baud_counter_reg_3_ ( .D(N437), .CP(n525), .Q(
        baud_counter[3]) );
  DFQD2BWP12T30P140 baud_counter_reg_16_ ( .D(N450), .CP(n525), .Q(
        baud_counter[16]) );
  DFQD2BWP12T30P140 baud_counter_reg_12_ ( .D(N446), .CP(n525), .Q(
        baud_counter[12]) );
  DFQD2BWP12T30P140 baud_counter_reg_8_ ( .D(N442), .CP(n525), .Q(
        baud_counter[8]) );
  DFQD2BWP12T30P140 baud_counter_reg_5_ ( .D(N439), .CP(n525), .Q(
        baud_counter[5]) );
  DFQD2BWP12T30P140 baud_counter_reg_2_ ( .D(N436), .CP(n525), .Q(
        baud_counter[2]) );
  DFQD2BWP12T30P140 baud_counter_reg_15_ ( .D(N449), .CP(n526), .Q(
        baud_counter[15]) );
  DFQD2BWP12T30P140 baud_counter_reg_7_ ( .D(N441), .CP(n525), .Q(
        baud_counter[7]) );
  DFQD2BWP12T30P140 baud_counter_reg_4_ ( .D(N438), .CP(n525), .Q(
        baud_counter[4]) );
  DFQD2BWP12T30P140 baud_counter_reg_1_ ( .D(N435), .CP(n526), .Q(
        baud_counter[1]) );
  DFQD2BWP12T30P140 chg_counter_reg_12_ ( .D(n178), .CP(n528), .Q(
        chg_counter[12]) );
  DFQD2BWP12T30P140 r_setup_reg_27_ ( .D(n120), .CP(n529), .Q(r_setup[27]) );
  DFQD2BWP12T30P140 baud_counter_reg_26_ ( .D(N460), .CP(n528), .Q(
        baud_counter[26]) );
  DFQD2BWP12T30P140 baud_counter_reg_25_ ( .D(N459), .CP(n528), .Q(
        baud_counter[25]) );
  DFQD2BWP12T30P140 baud_counter_reg_24_ ( .D(N458), .CP(n529), .Q(
        baud_counter[24]) );
  DFQD2BWP12T30P140 baud_counter_reg_23_ ( .D(N457), .CP(n530), .Q(
        baud_counter[23]) );
  DFQD2BWP12T30P140 baud_counter_reg_19_ ( .D(N453), .CP(n528), .Q(
        baud_counter[19]) );
  DFQD2BWP12T30P140 baud_counter_reg_18_ ( .D(N452), .CP(n529), .Q(
        baud_counter[18]) );
  DFQD2BWP12T30P140 baud_counter_reg_17_ ( .D(N451), .CP(n530), .Q(
        baud_counter[17]) );
  DFQD2BWP12T30P140 o_frame_err_reg ( .D(n157), .CP(n527), .Q(o_frame_err) );
  DFQD2BWP12T30P140 chg_counter_reg_15_ ( .D(n175), .CP(n525), .Q(
        chg_counter[15]) );
  DFQD2BWP12T30P140 chg_counter_reg_8_ ( .D(n182), .CP(i_clk), .Q(
        chg_counter[8]) );
  DFQD2BWP12T30P140 r_setup_reg_4_ ( .D(n143), .CP(n527), .Q(
        clocks_per_baud[4]) );
  DFQD2BWP12T30P140 r_setup_reg_25_ ( .D(n122), .CP(n529), .Q(r_setup[25]) );
  DFQD2BWP12T30P140 data_reg_reg_6_ ( .D(n115), .CP(n530), .Q(data_reg[6]) );
  DFQD2BWP12T30P140 chg_counter_reg_23_ ( .D(n167), .CP(n530), .Q(
        chg_counter[23]) );
  DFQD2BWP12T30P140 data_reg_reg_2_ ( .D(n111), .CP(n530), .Q(data_reg[2]) );
  DFQD2BWP12T30P140 data_reg_reg_4_ ( .D(n113), .CP(n530), .Q(data_reg[4]) );
  DFQD2BWP12T30P140 r_setup_reg_24_ ( .D(n123), .CP(n529), .Q(r_setup[24]) );
  DFQD2BWP12T30P140 r_setup_reg_0_ ( .D(n117), .CP(n530), .Q(
        clocks_per_baud[0]) );
  DFQD2BWP12T30P140 r_setup_reg_6_ ( .D(n141), .CP(n528), .Q(
        clocks_per_baud[6]) );
  DFQD2BWP12T30P140 r_setup_reg_12_ ( .D(n135), .CP(n528), .Q(
        clocks_per_baud[12]) );
  DFQD2BWP12T30P140 r_setup_reg_13_ ( .D(n134), .CP(n528), .Q(
        clocks_per_baud[13]) );
  DFQD2BWP12T30P140 r_setup_reg_21_ ( .D(n126), .CP(n529), .Q(
        clocks_per_baud[21]) );
  DFQD2BWP12T30P140 chg_counter_reg_27_ ( .D(n163), .CP(n528), .Q(
        chg_counter[27]) );
  DFQD2BWP12T30P140 calc_parity_reg ( .D(n159), .CP(n526), .Q(calc_parity) );
  DFQD2BWP12T30P140 chg_counter_reg_3_ ( .D(n187), .CP(n527), .Q(
        chg_counter[3]) );
  DFQD2BWP12T30P140 chg_counter_reg_22_ ( .D(n168), .CP(i_clk), .Q(
        chg_counter[22]) );
  DFQD2BWP12T30P140 chg_counter_reg_1_ ( .D(n190), .CP(n529), .Q(
        chg_counter[1]) );
  DFQD2BWP12T30P140 chg_counter_reg_0_ ( .D(n189), .CP(n530), .Q(
        chg_counter[0]) );
  DFQD2BWP12T30P140 o_break_reg ( .D(N92), .CP(n529), .Q(o_break) );
  DFQD2BWP12T30P140 r_setup_reg_1_ ( .D(n146), .CP(n527), .Q(
        clocks_per_baud[1]) );
  DFQD2BWP12T30P140 r_setup_reg_29_ ( .D(n118), .CP(n530), .Q(data_bits[1]) );
  DFQD2BWP12T30P140 r_setup_reg_20_ ( .D(n127), .CP(n529), .Q(
        clocks_per_baud[20]) );
  DFQD2BWP12T30P140 r_setup_reg_15_ ( .D(n132), .CP(n528), .Q(
        clocks_per_baud[15]) );
  DFQD2BWP12T30P140 r_setup_reg_17_ ( .D(n130), .CP(n529), .Q(
        clocks_per_baud[17]) );
  DFQD2BWP12T30P140 q_uart_reg ( .D(i_uart_rx), .CP(n525), .Q(q_uart) );
  DFQD2BWP12T30P140 chg_counter_reg_4_ ( .D(n186), .CP(n526), .Q(
        chg_counter[4]) );
  DFQD2BWP12T30P140 chg_counter_reg_5_ ( .D(n185), .CP(n525), .Q(
        chg_counter[5]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n161), .CP(n526), .Q(state[2]) );
  DFQD2BWP12T30P140 chg_counter_reg_16_ ( .D(n174), .CP(n530), .Q(
        chg_counter[16]) );
  DFQD2BWP12T30P140 r_setup_reg_2_ ( .D(n145), .CP(n527), .Q(
        clocks_per_baud[2]) );
  DFQD2BWP12T30P140 chg_counter_reg_2_ ( .D(n188), .CP(n528), .Q(
        chg_counter[2]) );
  DFQD2BWP12T30P140 r_setup_reg_8_ ( .D(n139), .CP(n528), .Q(
        clocks_per_baud[8]) );
  DFQD2BWP12T30P140 r_setup_reg_18_ ( .D(n129), .CP(n529), .Q(
        clocks_per_baud[18]) );
  DFQD2BWP12T30P140 r_setup_reg_9_ ( .D(n138), .CP(n528), .Q(
        clocks_per_baud[9]) );
  DFQD2BWP12T30P140 chg_counter_reg_21_ ( .D(n169), .CP(i_clk), .Q(
        chg_counter[21]) );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n160), .CP(n526), .Q(state[3]) );
  DFQD2BWP12T30P140 r_setup_reg_3_ ( .D(n144), .CP(n527), .Q(
        clocks_per_baud[3]) );
  DFQD2BWP12T30P140 chg_counter_reg_9_ ( .D(n181), .CP(i_clk), .Q(
        chg_counter[9]) );
  DFQD2BWP12T30P140 chg_counter_reg_10_ ( .D(n180), .CP(n530), .Q(
        chg_counter[10]) );
  DFQD2BWP12T30P140 chg_counter_reg_24_ ( .D(n166), .CP(n530), .Q(
        chg_counter[24]) );
  DFQD2BWP12T30P140 chg_counter_reg_6_ ( .D(n184), .CP(n528), .Q(
        chg_counter[6]) );
  DFQD2BWP12T30P140 r_setup_reg_11_ ( .D(n136), .CP(n528), .Q(
        clocks_per_baud[11]) );
  DFQD2BWP12T30P140 r_setup_reg_14_ ( .D(n133), .CP(n528), .Q(
        clocks_per_baud[14]) );
  DFQD2BWP12T30P140 r_setup_reg_22_ ( .D(n125), .CP(n529), .Q(
        clocks_per_baud[22]) );
  DFQD2BWP12T30P140 r_setup_reg_7_ ( .D(n140), .CP(n528), .Q(
        clocks_per_baud[7]) );
  DFQD2BWP12T30P140 chg_counter_reg_26_ ( .D(n164), .CP(n529), .Q(
        chg_counter[26]) );
  DFQD2BWP12T30P140 o_data_reg_3_ ( .D(n151), .CP(n527), .Q(o_data[3]) );
  DFQD2BWP12T30P140 o_data_reg_1_ ( .D(n149), .CP(n527), .Q(o_data[1]) );
  DFQD2BWP12T30P140 o_data_reg_6_ ( .D(n154), .CP(n526), .Q(o_data[6]) );
  DFQD2BWP12T30P140 o_data_reg_4_ ( .D(n152), .CP(n527), .Q(o_data[4]) );
  DFQD2BWP12T30P140 o_data_reg_2_ ( .D(n150), .CP(n527), .Q(o_data[2]) );
  DFQD2BWP12T30P140 o_data_reg_0_ ( .D(n156), .CP(n527), .Q(o_data[0]) );
  DFQD2BWP12T30P140 o_data_reg_7_ ( .D(n155), .CP(n526), .Q(o_data[7]) );
  DFQD2BWP12T30P140 zero_baud_counter_reg ( .D(N464), .CP(n526), .Q(
        zero_baud_counter) );
  DFQD2BWP12T30P140 chg_counter_reg_13_ ( .D(n177), .CP(n527), .Q(
        chg_counter[13]) );
  DFQD2BWP12T30P140 qq_uart_reg ( .D(q_uart), .CP(n526), .Q(qq_uart) );
  DFQD2BWP12T30P140 r_setup_reg_10_ ( .D(n137), .CP(n528), .Q(
        clocks_per_baud[10]) );
  DFQD2BWP12T30P140 r_setup_reg_16_ ( .D(n131), .CP(n528), .Q(
        clocks_per_baud[16]) );
  DFQD2BWP12T30P140 r_setup_reg_23_ ( .D(n124), .CP(n529), .Q(
        clocks_per_baud[23]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n191), .CP(n526), .Q(state[1]) );
  DFQD2BWP12T30P140 chg_counter_reg_25_ ( .D(n165), .CP(n530), .Q(
        chg_counter[25]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n162), .CP(n526), .Q(state[0]) );
  DFQD2BWP12T30P140 r_setup_reg_28_ ( .D(n119), .CP(n529), .Q(data_bits[0]) );
  DFQD2BWP12T30P140 ck_uart_reg ( .D(qq_uart), .CP(n527), .Q(o_ck_uart) );
  DFQD2BWP12T30P140 r_setup_reg_19_ ( .D(n128), .CP(n529), .Q(
        clocks_per_baud[19]) );
  DFQD2BWP12T30P140 o_wr_reg ( .D(N235), .CP(n527), .Q(o_wr) );
  DFQD1BWP12T30P140 data_reg_reg_3_ ( .D(n112), .CP(n530), .Q(data_reg[3]) );
  DFQD1BWP12T30P140 baud_counter_reg_13_ ( .D(N447), .CP(n525), .Q(
        baud_counter[13]) );
  DFQD1BWP12T30P140 r_setup_reg_26_ ( .D(n121), .CP(n529), .Q(r_setup[26]) );
  DFQD1BWP12T30P140 chg_counter_reg_11_ ( .D(n179), .CP(n529), .Q(
        chg_counter[11]) );
  DFQD1BWP12T30P140 chg_counter_reg_18_ ( .D(n172), .CP(n530), .Q(
        chg_counter[18]) );
  DFQD1BWP12T30P140 r_setup_reg_5_ ( .D(n142), .CP(n528), .Q(
        clocks_per_baud[5]) );
  DFQD1BWP12T30P140 o_data_reg_5_ ( .D(n153), .CP(n526), .Q(o_data[5]) );
  DFQD1BWP12T30P140 chg_counter_reg_17_ ( .D(n173), .CP(n529), .Q(
        chg_counter[17]) );
  IND2D1BWP12T30P140 U3 ( .A1(n200), .B1(state[1]), .ZN(n460) );
  ND2D0BWP12T30P140 U4 ( .A1(state[2]), .A2(state[3]), .ZN(n200) );
  CKBD0BWP12T30P140 U5 ( .I(n460), .Z(n461) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(i_setup[3]), .I1(clocks_per_baud[3]), .S(n461), 
        .Z(n144) );
  INVD0BWP12T30P140 U7 ( .I(i_reset), .ZN(n430) );
  INVD0BWP12T30P140 U8 ( .I(state[0]), .ZN(n423) );
  INVD0BWP12T30P140 U9 ( .I(state[1]), .ZN(n285) );
  INVD0BWP12T30P140 U10 ( .I(state[2]), .ZN(n287) );
  ND3D0BWP12T30P140 U11 ( .A1(n285), .A2(n287), .A3(state[3]), .ZN(n47) );
  NR2D0BWP12T30P140 U12 ( .A1(n423), .A2(n47), .ZN(n286) );
  ND3D0BWP12T30P140 U13 ( .A1(n430), .A2(n286), .A3(zero_baud_counter), .ZN(
        n199) );
  NR2D0BWP12T30P140 U14 ( .A1(data_bits[1]), .A2(n199), .ZN(n42) );
  INVD0BWP12T30P140 U15 ( .I(n199), .ZN(n1) );
  ND2D0BWP12T30P140 U16 ( .A1(data_bits[1]), .A2(n1), .ZN(n44) );
  INVD0BWP12T30P140 U17 ( .I(n44), .ZN(n497) );
  AOI22D0BWP12T30P140 U18 ( .A1(n42), .A2(data_reg[2]), .B1(n497), .B2(
        data_reg[4]), .ZN(n46) );
  INVD0BWP12T30P140 U19 ( .I(data_bits[0]), .ZN(n496) );
  NR2D0BWP12T30P140 U20 ( .A1(i_reset), .A2(n1), .ZN(n494) );
  INVD0BWP12T30P140 U21 ( .I(n42), .ZN(n278) );
  INVD0BWP12T30P140 U22 ( .I(data_reg[1]), .ZN(n71) );
  INVD0BWP12T30P140 U23 ( .I(data_reg[3]), .ZN(n262) );
  OAI22D0BWP12T30P140 U24 ( .A1(n278), .A2(n71), .B1(n44), .B2(n262), .ZN(n495) );
  AOI22D0BWP12T30P140 U25 ( .A1(o_data[1]), .A2(n494), .B1(n496), .B2(n495), 
        .ZN(n2) );
  OAI21D0BWP12T30P140 U26 ( .A1(n46), .A2(n496), .B(n2), .ZN(n149) );
  CKMUX2D0BWP12T30P140 U27 ( .I0(i_setup[26]), .I1(r_setup[26]), .S(n461), .Z(
        n121) );
  INVD0BWP12T30P140 U28 ( .I(data_reg[7]), .ZN(n273) );
  NR2D0BWP12T30P140 U29 ( .A1(data_bits[0]), .A2(n278), .ZN(n493) );
  AOI22D0BWP12T30P140 U30 ( .A1(data_reg[6]), .A2(n493), .B1(n494), .B2(
        o_data[6]), .ZN(n3) );
  OAI31D0BWP12T30P140 U31 ( .A1(n496), .A2(n278), .A3(n273), .B(n3), .ZN(n154)
         );
  CKMUX2D0BWP12T30P140 U32 ( .I0(i_setup[27]), .I1(r_setup[27]), .S(n461), .Z(
        n120) );
  INVD0BWP12T30P140 U33 ( .I(qq_uart), .ZN(n4) );
  INVD0BWP12T30P140 U34 ( .I(o_ck_uart), .ZN(n288) );
  AO221D0BWP12T30P140 U35 ( .A1(o_ck_uart), .A2(n4), .B1(n288), .B2(qq_uart), 
        .C(i_reset), .Z(n257) );
  INVD0BWP12T30P140 U36 ( .I(chg_counter[27]), .ZN(n258) );
  INVD0BWP12T30P140 U37 ( .I(chg_counter[20]), .ZN(n418) );
  ND2D0BWP12T30P140 U38 ( .A1(clocks_per_baud[16]), .A2(n418), .ZN(n103) );
  INVD0BWP12T30P140 U39 ( .I(clocks_per_baud[15]), .ZN(n314) );
  NR2D0BWP12T30P140 U40 ( .A1(chg_counter[19]), .A2(n314), .ZN(n99) );
  INVD0BWP12T30P140 U41 ( .I(chg_counter[18]), .ZN(n241) );
  ND2D0BWP12T30P140 U42 ( .A1(clocks_per_baud[14]), .A2(n241), .ZN(n95) );
  INVD0BWP12T30P140 U43 ( .I(clocks_per_baud[9]), .ZN(n325) );
  NR2D0BWP12T30P140 U44 ( .A1(chg_counter[13]), .A2(n325), .ZN(n93) );
  INVD0BWP12T30P140 U45 ( .I(chg_counter[13]), .ZN(n62) );
  NR2D0BWP12T30P140 U46 ( .A1(clocks_per_baud[9]), .A2(n62), .ZN(n19) );
  INVD0BWP12T30P140 U47 ( .I(chg_counter[12]), .ZN(n378) );
  ND2D0BWP12T30P140 U48 ( .A1(clocks_per_baud[8]), .A2(n378), .ZN(n86) );
  INVD0BWP12T30P140 U49 ( .I(chg_counter[11]), .ZN(n365) );
  INVD0BWP12T30P140 U50 ( .I(clocks_per_baud[1]), .ZN(n331) );
  INVD0BWP12T30P140 U51 ( .I(chg_counter[4]), .ZN(n39) );
  ND2D0BWP12T30P140 U52 ( .A1(clocks_per_baud[0]), .A2(n39), .ZN(n5) );
  MAOI222D0BWP12T30P140 U53 ( .A(chg_counter[5]), .B(n331), .C(n5), .ZN(n9) );
  INVD0BWP12T30P140 U54 ( .I(chg_counter[7]), .ZN(n358) );
  OR2D0BWP12T30P140 U55 ( .A1(clocks_per_baud[3]), .A2(n358), .Z(n8) );
  INVD0BWP12T30P140 U56 ( .I(clocks_per_baud[2]), .ZN(n330) );
  ND2D0BWP12T30P140 U57 ( .A1(chg_counter[6]), .A2(n330), .ZN(n7) );
  NR2D0BWP12T30P140 U58 ( .A1(chg_counter[6]), .A2(n330), .ZN(n6) );
  AOI32D0BWP12T30P140 U59 ( .A1(n9), .A2(n8), .A3(n7), .B1(n6), .B2(n8), .ZN(
        n11) );
  ND2D0BWP12T30P140 U60 ( .A1(clocks_per_baud[3]), .A2(n358), .ZN(n10) );
  INVD0BWP12T30P140 U61 ( .I(clocks_per_baud[4]), .ZN(n339) );
  AOI22D0BWP12T30P140 U62 ( .A1(n11), .A2(n10), .B1(chg_counter[8]), .B2(n339), 
        .ZN(n16) );
  INVD0BWP12T30P140 U63 ( .I(clocks_per_baud[5]), .ZN(n12) );
  ND2D0BWP12T30P140 U64 ( .A1(chg_counter[9]), .A2(n12), .ZN(n15) );
  NR2D0BWP12T30P140 U65 ( .A1(chg_counter[8]), .A2(n339), .ZN(n14) );
  NR2D0BWP12T30P140 U66 ( .A1(chg_counter[9]), .A2(n12), .ZN(n13) );
  AOI221D0BWP12T30P140 U67 ( .A1(n16), .A2(n15), .B1(n14), .B2(n15), .C(n13), 
        .ZN(n17) );
  INVD0BWP12T30P140 U68 ( .I(clocks_per_baud[6]), .ZN(n347) );
  MAOI222D0BWP12T30P140 U69 ( .A(chg_counter[10]), .B(n17), .C(n347), .ZN(n18)
         );
  MAOI222D0BWP12T30P140 U70 ( .A(clocks_per_baud[7]), .B(n365), .C(n18), .ZN(
        n88) );
  OAI22D0BWP12T30P140 U71 ( .A1(clocks_per_baud[8]), .A2(n378), .B1(
        clocks_per_baud[9]), .B2(n62), .ZN(n85) );
  OAI22D0BWP12T30P140 U72 ( .A1(n19), .A2(n86), .B1(n88), .B2(n85), .ZN(n20)
         );
  INVD0BWP12T30P140 U73 ( .I(chg_counter[14]), .ZN(n371) );
  OAI22D0BWP12T30P140 U74 ( .A1(n93), .A2(n20), .B1(clocks_per_baud[10]), .B2(
        n371), .ZN(n21) );
  ND2D0BWP12T30P140 U75 ( .A1(clocks_per_baud[10]), .A2(n371), .ZN(n87) );
  INVD0BWP12T30P140 U76 ( .I(chg_counter[15]), .ZN(n382) );
  ND2D0BWP12T30P140 U77 ( .A1(clocks_per_baud[11]), .A2(n382), .ZN(n89) );
  NR2D0BWP12T30P140 U78 ( .A1(clocks_per_baud[11]), .A2(n382), .ZN(n98) );
  AOI31D0BWP12T30P140 U79 ( .A1(n21), .A2(n87), .A3(n89), .B(n98), .ZN(n22) );
  INVD0BWP12T30P140 U80 ( .I(clocks_per_baud[13]), .ZN(n310) );
  ND2D0BWP12T30P140 U81 ( .A1(chg_counter[17]), .A2(n310), .ZN(n81) );
  INVD0BWP12T30P140 U82 ( .I(clocks_per_baud[12]), .ZN(n319) );
  ND2D0BWP12T30P140 U83 ( .A1(chg_counter[16]), .A2(n319), .ZN(n82) );
  NR2D0BWP12T30P140 U84 ( .A1(n241), .A2(clocks_per_baud[14]), .ZN(n83) );
  INVD0BWP12T30P140 U85 ( .I(n83), .ZN(n23) );
  ND4D0BWP12T30P140 U86 ( .A1(n22), .A2(n81), .A3(n82), .A4(n23), .ZN(n25) );
  NR2D0BWP12T30P140 U87 ( .A1(chg_counter[16]), .A2(n319), .ZN(n102) );
  NR2D0BWP12T30P140 U88 ( .A1(chg_counter[17]), .A2(n310), .ZN(n94) );
  AOI32D0BWP12T30P140 U89 ( .A1(n102), .A2(n23), .A3(n81), .B1(n94), .B2(n23), 
        .ZN(n24) );
  INVD0BWP12T30P140 U90 ( .I(chg_counter[19]), .ZN(n417) );
  NR2D0BWP12T30P140 U91 ( .A1(clocks_per_baud[15]), .A2(n417), .ZN(n105) );
  AOI31D0BWP12T30P140 U92 ( .A1(n95), .A2(n25), .A3(n24), .B(n105), .ZN(n26)
         );
  OAI22D0BWP12T30P140 U93 ( .A1(n99), .A2(n26), .B1(clocks_per_baud[16]), .B2(
        n418), .ZN(n27) );
  INVD0BWP12T30P140 U94 ( .I(chg_counter[21]), .ZN(n248) );
  NR2D0BWP12T30P140 U95 ( .A1(clocks_per_baud[17]), .A2(n248), .ZN(n80) );
  INVD0BWP12T30P140 U96 ( .I(chg_counter[23]), .ZN(n403) );
  INVD0BWP12T30P140 U97 ( .I(clocks_per_baud[18]), .ZN(n28) );
  ND2D0BWP12T30P140 U98 ( .A1(chg_counter[22]), .A2(n28), .ZN(n78) );
  OAI21D0BWP12T30P140 U99 ( .A1(clocks_per_baud[19]), .A2(n403), .B(n78), .ZN(
        n30) );
  AOI211D0BWP12T30P140 U100 ( .A1(n103), .A2(n27), .B(n80), .C(n30), .ZN(n33)
         );
  INVD0BWP12T30P140 U101 ( .I(clocks_per_baud[17]), .ZN(n304) );
  NR2D0BWP12T30P140 U102 ( .A1(chg_counter[22]), .A2(n28), .ZN(n77) );
  MAOI222D0BWP12T30P140 U103 ( .A(clocks_per_baud[19]), .B(n77), .C(n403), 
        .ZN(n29) );
  OAI31D0BWP12T30P140 U104 ( .A1(chg_counter[21]), .A2(n304), .A3(n30), .B(n29), .ZN(n32) );
  INVD0BWP12T30P140 U105 ( .I(chg_counter[24]), .ZN(n264) );
  INVD0BWP12T30P140 U106 ( .I(clocks_per_baud[21]), .ZN(n299) );
  INVD0BWP12T30P140 U107 ( .I(clocks_per_baud[22]), .ZN(n34) );
  AOI22D0BWP12T30P140 U108 ( .A1(n299), .A2(chg_counter[25]), .B1(n34), .B2(
        chg_counter[26]), .ZN(n36) );
  OA21D0BWP12T30P140 U109 ( .A1(n264), .A2(clocks_per_baud[20]), .B(n36), .Z(
        n31) );
  OAI21D0BWP12T30P140 U110 ( .A1(n33), .A2(n32), .B(n31), .ZN(n38) );
  INVD0BWP12T30P140 U111 ( .I(clocks_per_baud[20]), .ZN(n390) );
  OAI22D0BWP12T30P140 U112 ( .A1(chg_counter[24]), .A2(n390), .B1(
        chg_counter[25]), .B2(n299), .ZN(n148) );
  ND2D0BWP12T30P140 U113 ( .A1(n258), .A2(clocks_per_baud[23]), .ZN(n195) );
  INVD0BWP12T30P140 U114 ( .I(n195), .ZN(n35) );
  NR2D0BWP12T30P140 U115 ( .A1(chg_counter[26]), .A2(n34), .ZN(n192) );
  AOI211D0BWP12T30P140 U116 ( .A1(n36), .A2(n148), .B(n35), .C(n192), .ZN(n37)
         );
  MOAI22D0BWP12T30P140 U117 ( .A1(n258), .A2(clocks_per_baud[23]), .B1(n38), 
        .B2(n37), .ZN(n416) );
  NR2D0BWP12T30P140 U118 ( .A1(n257), .A2(n416), .ZN(n265) );
  INVD0BWP12T30P140 U119 ( .I(n265), .ZN(n438) );
  CKBD0BWP12T30P140 U120 ( .I(n438), .Z(n282) );
  INVD0BWP12T30P140 U121 ( .I(chg_counter[10]), .ZN(n213) );
  INVD0BWP12T30P140 U122 ( .I(chg_counter[8]), .ZN(n327) );
  INVD0BWP12T30P140 U123 ( .I(chg_counter[6]), .ZN(n236) );
  ND2D0BWP12T30P140 U124 ( .A1(chg_counter[1]), .A2(chg_counter[0]), .ZN(n333)
         );
  INR2D1BWP12T30P140 U125 ( .A1(chg_counter[2]), .B1(n333), .ZN(n252) );
  ND2D0BWP12T30P140 U126 ( .A1(chg_counter[3]), .A2(n252), .ZN(n234) );
  NR2D0BWP12T30P140 U127 ( .A1(n39), .A2(n234), .ZN(n231) );
  ND2D0BWP12T30P140 U128 ( .A1(chg_counter[5]), .A2(n231), .ZN(n238) );
  NR2D0BWP12T30P140 U129 ( .A1(n236), .A2(n238), .ZN(n72) );
  ND2D0BWP12T30P140 U130 ( .A1(chg_counter[7]), .A2(n72), .ZN(n281) );
  NR2D0BWP12T30P140 U131 ( .A1(n327), .A2(n281), .ZN(n209) );
  ND2D0BWP12T30P140 U132 ( .A1(chg_counter[9]), .A2(n209), .ZN(n215) );
  NR2D0BWP12T30P140 U133 ( .A1(n213), .A2(n215), .ZN(n40) );
  ND2D0BWP12T30P140 U134 ( .A1(chg_counter[11]), .A2(n40), .ZN(n57) );
  INVD0BWP12T30P140 U135 ( .I(n40), .ZN(n269) );
  INVD0BWP12T30P140 U136 ( .I(n257), .ZN(n414) );
  OAI31D0BWP12T30P140 U137 ( .A1(n365), .A2(n416), .A3(n269), .B(n414), .ZN(
        n41) );
  OAI32D0BWP12T30P140 U138 ( .A1(chg_counter[12]), .A2(n282), .A3(n57), .B1(
        n41), .B2(n378), .ZN(n178) );
  AOI22D0BWP12T30P140 U139 ( .A1(n42), .A2(data_reg[4]), .B1(n497), .B2(
        data_reg[6]), .ZN(n294) );
  INVD0BWP12T30P140 U140 ( .I(data_reg[5]), .ZN(n260) );
  OAI22D0BWP12T30P140 U141 ( .A1(n260), .A2(n278), .B1(n273), .B2(n44), .ZN(
        n275) );
  AOI22D0BWP12T30P140 U142 ( .A1(data_bits[0]), .A2(n275), .B1(n494), .B2(
        o_data[4]), .ZN(n43) );
  OAI21D0BWP12T30P140 U143 ( .A1(data_bits[0]), .A2(n294), .B(n43), .ZN(n152)
         );
  OAI22D0BWP12T30P140 U144 ( .A1(n260), .A2(n44), .B1(n278), .B2(n262), .ZN(
        n292) );
  AOI22D0BWP12T30P140 U145 ( .A1(data_bits[0]), .A2(n292), .B1(n494), .B2(
        o_data[2]), .ZN(n45) );
  OAI21D0BWP12T30P140 U146 ( .A1(data_bits[0]), .A2(n46), .B(n45), .ZN(n150)
         );
  NR2D0BWP12T30P140 U147 ( .A1(state[0]), .A2(n47), .ZN(n446) );
  INVD0BWP12T30P140 U148 ( .I(zero_baud_counter), .ZN(n459) );
  NR2D0BWP12T30P140 U149 ( .A1(n446), .A2(n459), .ZN(n274) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n274), .A2(n71), .B1(data_reg[0]), .B2(n274), 
        .ZN(n109) );
  AO22D0BWP12T30P140 U151 ( .A1(data_reg[7]), .A2(n493), .B1(n494), .B2(
        o_data[7]), .Z(n155) );
  INVD0BWP12T30P140 U152 ( .I(n274), .ZN(n272) );
  AOI22D0BWP12T30P140 U153 ( .A1(n274), .A2(n288), .B1(n273), .B2(n272), .ZN(
        n116) );
  NR4D0BWP12T30P140 U154 ( .A1(baud_counter[18]), .A2(baud_counter[17]), .A3(
        baud_counter[16]), .A4(baud_counter[15]), .ZN(n50) );
  NR4D0BWP12T30P140 U155 ( .A1(baud_counter[11]), .A2(baud_counter[3]), .A3(
        baud_counter[2]), .A4(baud_counter[1]), .ZN(n49) );
  NR4D0BWP12T30P140 U156 ( .A1(baud_counter[19]), .A2(baud_counter[6]), .A3(
        baud_counter[5]), .A4(baud_counter[4]), .ZN(n48) );
  NR2D0BWP12T30P140 U157 ( .A1(n423), .A2(n461), .ZN(n202) );
  INVD0BWP12T30P140 U158 ( .I(n202), .ZN(n458) );
  ND4D0BWP12T30P140 U159 ( .A1(n50), .A2(n49), .A3(n48), .A4(n458), .ZN(n56)
         );
  NR4D0BWP12T30P140 U160 ( .A1(baud_counter[14]), .A2(baud_counter[13]), .A3(
        baud_counter[12]), .A4(baud_counter[25]), .ZN(n54) );
  NR4D0BWP12T30P140 U161 ( .A1(baud_counter[23]), .A2(baud_counter[26]), .A3(
        baud_counter[24]), .A4(baud_counter[27]), .ZN(n53) );
  NR4D0BWP12T30P140 U162 ( .A1(baud_counter[10]), .A2(baud_counter[9]), .A3(
        baud_counter[8]), .A4(baud_counter[7]), .ZN(n52) );
  INR4D0BWP12T30P140 U163 ( .A1(baud_counter[0]), .B1(baud_counter[21]), .B2(
        baud_counter[22]), .B3(baud_counter[20]), .ZN(n51) );
  ND4D0BWP12T30P140 U164 ( .A1(n54), .A2(n53), .A3(n52), .A4(n51), .ZN(n55) );
  NR2D0BWP12T30P140 U165 ( .A1(n56), .A2(n55), .ZN(N464) );
  AOI21D0BWP12T30P140 U166 ( .A1(n423), .A2(n285), .B(n200), .ZN(n69) );
  NR2D0BWP12T30P140 U167 ( .A1(zero_baud_counter), .A2(n69), .ZN(n289) );
  ND2D0BWP12T30P140 U168 ( .A1(n289), .A2(n430), .ZN(n466) );
  CKMUX2D0BWP12T30P140 U169 ( .I0(baud_counter[0]), .I1(clocks_per_baud[0]), 
        .S(n466), .Z(n474) );
  INVD0BWP12T30P140 U170 ( .I(n474), .ZN(N434) );
  NR2D0BWP12T30P140 U171 ( .A1(n378), .A2(n57), .ZN(n59) );
  INVD0BWP12T30P140 U172 ( .I(n59), .ZN(n61) );
  CKBD0BWP12T30P140 U173 ( .I(n416), .Z(n434) );
  INVD0BWP12T30P140 U174 ( .I(n257), .ZN(n433) );
  OAI21D0BWP12T30P140 U175 ( .A1(n434), .A2(n61), .B(n433), .ZN(n58) );
  OAI32D0BWP12T30P140 U176 ( .A1(chg_counter[13]), .A2(n282), .A3(n61), .B1(
        n58), .B2(n62), .ZN(n177) );
  INVD0BWP12T30P140 U177 ( .I(chg_counter[16]), .ZN(n305) );
  ND2D0BWP12T30P140 U178 ( .A1(chg_counter[13]), .A2(n59), .ZN(n64) );
  NR2D0BWP12T30P140 U179 ( .A1(n371), .A2(n64), .ZN(n218) );
  ND2D0BWP12T30P140 U180 ( .A1(chg_counter[15]), .A2(n218), .ZN(n220) );
  NR2D0BWP12T30P140 U181 ( .A1(n305), .A2(n220), .ZN(n240) );
  ND2D0BWP12T30P140 U182 ( .A1(chg_counter[17]), .A2(n240), .ZN(n243) );
  NR2D0BWP12T30P140 U183 ( .A1(n241), .A2(n243), .ZN(n207) );
  INVD0BWP12T30P140 U184 ( .I(n207), .ZN(n415) );
  OAI21D0BWP12T30P140 U185 ( .A1(n434), .A2(n415), .B(n433), .ZN(n60) );
  OAI32D0BWP12T30P140 U186 ( .A1(chg_counter[19]), .A2(n438), .A3(n415), .B1(
        n60), .B2(n417), .ZN(n171) );
  OAI31D0BWP12T30P140 U187 ( .A1(n62), .A2(n434), .A3(n61), .B(n414), .ZN(n63)
         );
  OAI32D0BWP12T30P140 U188 ( .A1(chg_counter[14]), .A2(n282), .A3(n64), .B1(
        n63), .B2(n371), .ZN(n176) );
  ND2D0BWP12T30P140 U189 ( .A1(zero_baud_counter), .A2(n446), .ZN(n67) );
  ND2D0BWP12T30P140 U190 ( .A1(n67), .A2(o_parity_err), .ZN(n70) );
  OAI21D0BWP12T30P140 U191 ( .A1(r_setup[25]), .A2(calc_parity), .B(
        r_setup[24]), .ZN(n65) );
  OAI31D0BWP12T30P140 U192 ( .A1(r_setup[25]), .A2(r_setup[24]), .A3(
        calc_parity), .B(n65), .ZN(n66) );
  MUX2ND0BWP12T30P140 U193 ( .I0(o_ck_uart), .I1(n288), .S(n66), .ZN(n68) );
  OAI22D0BWP12T30P140 U194 ( .A1(n70), .A2(n69), .B1(n68), .B2(n67), .ZN(n158)
         );
  INVD0BWP12T30P140 U195 ( .I(data_reg[2]), .ZN(n261) );
  AOI22D0BWP12T30P140 U196 ( .A1(n274), .A2(n261), .B1(n71), .B2(n272), .ZN(
        n110) );
  INVD0BWP12T30P140 U197 ( .I(data_reg[4]), .ZN(n259) );
  AOI22D0BWP12T30P140 U198 ( .A1(n274), .A2(n259), .B1(n262), .B2(n272), .ZN(
        n112) );
  CKMUX2D0BWP12T30P140 U199 ( .I0(i_setup[10]), .I1(clocks_per_baud[10]), .S(
        n460), .Z(n137) );
  INVD0BWP12T30P140 U200 ( .I(data_reg[6]), .ZN(n277) );
  AOI22D0BWP12T30P140 U201 ( .A1(n274), .A2(n277), .B1(n260), .B2(n272), .ZN(
        n114) );
  INVD0BWP12T30P140 U202 ( .I(n72), .ZN(n279) );
  OAI21D0BWP12T30P140 U203 ( .A1(n434), .A2(n279), .B(n433), .ZN(n73) );
  OAI32D0BWP12T30P140 U204 ( .A1(chg_counter[7]), .A2(n282), .A3(n279), .B1(
        n73), .B2(n358), .ZN(n183) );
  ND2D0BWP12T30P140 U205 ( .A1(chg_counter[24]), .A2(n390), .ZN(n76) );
  ND2D0BWP12T30P140 U206 ( .A1(chg_counter[25]), .A2(n299), .ZN(n75) );
  NR2D0BWP12T30P140 U207 ( .A1(chg_counter[25]), .A2(n299), .ZN(n74) );
  AOI211D0BWP12T30P140 U208 ( .A1(n76), .A2(n75), .B(n192), .C(n74), .ZN(n198)
         );
  INVD0BWP12T30P140 U209 ( .I(chg_counter[26]), .ZN(n266) );
  OAI22D0BWP12T30P140 U210 ( .A1(clocks_per_baud[22]), .A2(n266), .B1(
        clocks_per_baud[23]), .B2(n258), .ZN(n197) );
  AOI21D0BWP12T30P140 U211 ( .A1(clocks_per_baud[19]), .A2(n403), .B(n77), 
        .ZN(n108) );
  MAOI222D0BWP12T30P140 U212 ( .A(clocks_per_baud[19]), .B(n403), .C(n78), 
        .ZN(n79) );
  AOI21D0BWP12T30P140 U213 ( .A1(n80), .A2(n108), .B(n79), .ZN(n194) );
  OAI21D0BWP12T30P140 U214 ( .A1(n94), .A2(n82), .B(n81), .ZN(n84) );
  AOI21D0BWP12T30P140 U215 ( .A1(n95), .A2(n84), .B(n83), .ZN(n101) );
  OR2D0BWP12T30P140 U216 ( .A1(clocks_per_baud[10]), .A2(n371), .Z(n92) );
  AOI32D0BWP12T30P140 U217 ( .A1(n88), .A2(n87), .A3(n86), .B1(n85), .B2(n87), 
        .ZN(n91) );
  INVD0BWP12T30P140 U218 ( .I(n89), .ZN(n90) );
  AOI221D0BWP12T30P140 U219 ( .A1(n93), .A2(n92), .B1(n91), .B2(n92), .C(n90), 
        .ZN(n97) );
  INVD0BWP12T30P140 U220 ( .I(n94), .ZN(n96) );
  OAI211D0BWP12T30P140 U221 ( .A1(n98), .A2(n97), .B(n96), .C(n95), .ZN(n100)
         );
  AOI221D0BWP12T30P140 U222 ( .A1(n102), .A2(n101), .B1(n100), .B2(n101), .C(
        n99), .ZN(n104) );
  OAI21D0BWP12T30P140 U223 ( .A1(n105), .A2(n104), .B(n103), .ZN(n106) );
  OAI21D0BWP12T30P140 U224 ( .A1(clocks_per_baud[16]), .A2(n418), .B(n106), 
        .ZN(n107) );
  OAI211D0BWP12T30P140 U225 ( .A1(chg_counter[21]), .A2(n304), .B(n108), .C(
        n107), .ZN(n193) );
  AOI211D0BWP12T30P140 U226 ( .A1(n194), .A2(n193), .B(n192), .C(n148), .ZN(
        n196) );
  OAI31D0BWP12T30P140 U227 ( .A1(n198), .A2(n197), .A3(n196), .B(n195), .ZN(
        n239) );
  NR2D0BWP12T30P140 U228 ( .A1(n288), .A2(n239), .ZN(N94) );
  ND2D0BWP12T30P140 U229 ( .A1(pre_wr), .A2(n430), .ZN(n457) );
  OAI31D0BWP12T30P140 U230 ( .A1(zero_baud_counter), .A2(n202), .A3(n457), .B(
        n199), .ZN(n147) );
  ND3D0BWP12T30P140 U231 ( .A1(state[0]), .A2(state[1]), .A3(state[2]), .ZN(
        n444) );
  NR3D0BWP12T30P140 U232 ( .A1(state[1]), .A2(n423), .A3(n200), .ZN(n422) );
  OAI21D0BWP12T30P140 U233 ( .A1(state[0]), .A2(n461), .B(n430), .ZN(n203) );
  NR3D0BWP12T30P140 U234 ( .A1(o_break), .A2(n422), .A3(n203), .ZN(n201) );
  ND3D0BWP12T30P140 U235 ( .A1(n458), .A2(n201), .A3(zero_baud_counter), .ZN(
        n455) );
  ND2D0BWP12T30P140 U236 ( .A1(n202), .A2(n201), .ZN(n204) );
  AOI21D0BWP12T30P140 U237 ( .A1(half_baud_time), .A2(n288), .B(n204), .ZN(
        n448) );
  INVD0BWP12T30P140 U238 ( .I(o_break), .ZN(n421) );
  NR2D0BWP12T30P140 U239 ( .A1(n421), .A2(n203), .ZN(n449) );
  OR2D0BWP12T30P140 U240 ( .A1(n449), .A2(i_reset), .Z(n205) );
  NR2D0BWP12T30P140 U241 ( .A1(n448), .A2(n205), .ZN(n226) );
  INVD0BWP12T30P140 U242 ( .I(n455), .ZN(n425) );
  INVD0BWP12T30P140 U243 ( .I(n204), .ZN(n451) );
  NR3D0BWP12T30P140 U244 ( .A1(n425), .A2(n451), .A3(n205), .ZN(n452) );
  OAI21D0BWP12T30P140 U245 ( .A1(n425), .A2(n452), .B(state[3]), .ZN(n206) );
  OAI211D0BWP12T30P140 U246 ( .A1(n444), .A2(n455), .B(n226), .C(n206), .ZN(
        n160) );
  ND2D0BWP12T30P140 U247 ( .A1(chg_counter[19]), .A2(n207), .ZN(n420) );
  NR2D0BWP12T30P140 U248 ( .A1(n418), .A2(n420), .ZN(n228) );
  INVD0BWP12T30P140 U249 ( .I(n228), .ZN(n247) );
  OAI21D0BWP12T30P140 U250 ( .A1(n434), .A2(n247), .B(n433), .ZN(n208) );
  OAI32D0BWP12T30P140 U251 ( .A1(chg_counter[21]), .A2(n438), .A3(n247), .B1(
        n208), .B2(n248), .ZN(n169) );
  INVD0BWP12T30P140 U252 ( .I(n209), .ZN(n211) );
  OAI21D0BWP12T30P140 U253 ( .A1(n434), .A2(n211), .B(n433), .ZN(n210) );
  INVD0BWP12T30P140 U254 ( .I(chg_counter[9]), .ZN(n212) );
  OAI32D0BWP12T30P140 U255 ( .A1(chg_counter[9]), .A2(n282), .A3(n211), .B1(
        n210), .B2(n212), .ZN(n181) );
  CKMUX2D0BWP12T30P140 U256 ( .I0(i_setup[9]), .I1(clocks_per_baud[9]), .S(
        n460), .Z(n138) );
  CKMUX2D0BWP12T30P140 U257 ( .I0(i_setup[18]), .I1(clocks_per_baud[18]), .S(
        n461), .Z(n129) );
  CKMUX2D0BWP12T30P140 U258 ( .I0(i_setup[5]), .I1(clocks_per_baud[5]), .S(
        n460), .Z(n142) );
  CKMUX2D0BWP12T30P140 U259 ( .I0(i_setup[8]), .I1(clocks_per_baud[8]), .S(
        n460), .Z(n139) );
  OAI31D0BWP12T30P140 U260 ( .A1(n212), .A2(n416), .A3(n211), .B(n414), .ZN(
        n214) );
  OAI32D0BWP12T30P140 U261 ( .A1(chg_counter[10]), .A2(n282), .A3(n215), .B1(
        n214), .B2(n213), .ZN(n180) );
  NR2D0BWP12T30P140 U262 ( .A1(n333), .A2(n416), .ZN(n217) );
  OAI21D0BWP12T30P140 U263 ( .A1(chg_counter[2]), .A2(n217), .B(n433), .ZN(
        n216) );
  AOI21D0BWP12T30P140 U264 ( .A1(chg_counter[2]), .A2(n217), .B(n216), .ZN(
        n188) );
  CKMUX2D0BWP12T30P140 U265 ( .I0(i_setup[2]), .I1(clocks_per_baud[2]), .S(
        n460), .Z(n145) );
  INVD0BWP12T30P140 U266 ( .I(n218), .ZN(n284) );
  OAI31D0BWP12T30P140 U267 ( .A1(n382), .A2(n416), .A3(n284), .B(n414), .ZN(
        n219) );
  OAI32D0BWP12T30P140 U268 ( .A1(chg_counter[16]), .A2(n438), .A3(n220), .B1(
        n219), .B2(n305), .ZN(n174) );
  INVD0BWP12T30P140 U269 ( .I(n452), .ZN(n227) );
  INVD0BWP12T30P140 U270 ( .I(n286), .ZN(n221) );
  OAI21D0BWP12T30P140 U271 ( .A1(state[1]), .A2(state[2]), .B(state[3]), .ZN(
        n424) );
  OAI21D0BWP12T30P140 U272 ( .A1(r_setup[27]), .A2(n221), .B(n424), .ZN(n447)
         );
  INVD0BWP12T30P140 U273 ( .I(n444), .ZN(n223) );
  AOI21D0BWP12T30P140 U274 ( .A1(state[1]), .A2(state[0]), .B(state[2]), .ZN(
        n222) );
  OAI22D0BWP12T30P140 U275 ( .A1(n223), .A2(n222), .B1(o_ck_uart), .B2(n221), 
        .ZN(n224) );
  OAI21D0BWP12T30P140 U276 ( .A1(n447), .A2(n224), .B(n425), .ZN(n225) );
  OAI211D0BWP12T30P140 U277 ( .A1(n227), .A2(n287), .B(n226), .C(n225), .ZN(
        n161) );
  INVD0BWP12T30P140 U278 ( .I(chg_counter[22]), .ZN(n249) );
  ND2D0BWP12T30P140 U279 ( .A1(chg_counter[21]), .A2(n228), .ZN(n251) );
  NR2D0BWP12T30P140 U280 ( .A1(n249), .A2(n251), .ZN(n229) );
  ND2D0BWP12T30P140 U281 ( .A1(chg_counter[23]), .A2(n229), .ZN(n263) );
  INVD0BWP12T30P140 U282 ( .I(n229), .ZN(n271) );
  OAI31D0BWP12T30P140 U283 ( .A1(n403), .A2(n416), .A3(n271), .B(n414), .ZN(
        n230) );
  OAI32D0BWP12T30P140 U284 ( .A1(chg_counter[24]), .A2(n282), .A3(n263), .B1(
        n230), .B2(n264), .ZN(n166) );
  INVD0BWP12T30P140 U285 ( .I(n231), .ZN(n235) );
  OAI21D0BWP12T30P140 U286 ( .A1(n434), .A2(n235), .B(n433), .ZN(n232) );
  INVD0BWP12T30P140 U287 ( .I(chg_counter[5]), .ZN(n350) );
  OAI32D0BWP12T30P140 U288 ( .A1(chg_counter[5]), .A2(n282), .A3(n235), .B1(
        n232), .B2(n350), .ZN(n185) );
  NR2D0BWP12T30P140 U289 ( .A1(chg_counter[3]), .A2(n438), .ZN(n253) );
  ND2D0BWP12T30P140 U290 ( .A1(n414), .A2(n416), .ZN(n244) );
  OAI21D0BWP12T30P140 U291 ( .A1(n252), .A2(n438), .B(n244), .ZN(n254) );
  OAI21D0BWP12T30P140 U292 ( .A1(n253), .A2(n254), .B(chg_counter[4]), .ZN(
        n233) );
  OAI31D0BWP12T30P140 U293 ( .A1(chg_counter[4]), .A2(n438), .A3(n234), .B(
        n233), .ZN(n186) );
  CKMUX2D0BWP12T30P140 U294 ( .I0(i_setup[17]), .I1(clocks_per_baud[17]), .S(
        n460), .Z(n130) );
  OAI31D0BWP12T30P140 U295 ( .A1(n350), .A2(n416), .A3(n235), .B(n414), .ZN(
        n237) );
  OAI32D0BWP12T30P140 U296 ( .A1(chg_counter[6]), .A2(n282), .A3(n238), .B1(
        n237), .B2(n236), .ZN(n184) );
  CKMUX2D0BWP12T30P140 U297 ( .I0(i_setup[15]), .I1(clocks_per_baud[15]), .S(
        n461), .Z(n132) );
  CKMUX2D0BWP12T30P140 U298 ( .I0(i_setup[20]), .I1(clocks_per_baud[20]), .S(
        n460), .Z(n127) );
  CKMUX2D0BWP12T30P140 U299 ( .I0(i_setup[29]), .I1(data_bits[1]), .S(n461), 
        .Z(n118) );
  CKMUX2D0BWP12T30P140 U300 ( .I0(i_setup[1]), .I1(clocks_per_baud[1]), .S(
        n460), .Z(n146) );
  CKMUX2D0BWP12T30P140 U301 ( .I0(i_setup[11]), .I1(clocks_per_baud[11]), .S(
        n461), .Z(n136) );
  NR2D0BWP12T30P140 U302 ( .A1(o_ck_uart), .A2(n239), .ZN(N92) );
  INVD0BWP12T30P140 U303 ( .I(chg_counter[17]), .ZN(n435) );
  INVD0BWP12T30P140 U304 ( .I(n240), .ZN(n437) );
  OAI31D0BWP12T30P140 U305 ( .A1(n435), .A2(n434), .A3(n437), .B(n414), .ZN(
        n242) );
  OAI32D0BWP12T30P140 U306 ( .A1(chg_counter[18]), .A2(n438), .A3(n243), .B1(
        n242), .B2(n241), .ZN(n172) );
  INVD0BWP12T30P140 U307 ( .I(chg_counter[0]), .ZN(n246) );
  AOI22D0BWP12T30P140 U308 ( .A1(chg_counter[0]), .A2(n244), .B1(n438), .B2(
        n246), .ZN(n189) );
  OAI211D0BWP12T30P140 U309 ( .A1(n246), .A2(n434), .B(chg_counter[1]), .C(
        n433), .ZN(n245) );
  OAI31D0BWP12T30P140 U310 ( .A1(chg_counter[1]), .A2(n246), .A3(n282), .B(
        n245), .ZN(n190) );
  CKMUX2D0BWP12T30P140 U311 ( .I0(i_setup[14]), .I1(clocks_per_baud[14]), .S(
        n461), .Z(n133) );
  OAI31D0BWP12T30P140 U312 ( .A1(n248), .A2(n416), .A3(n247), .B(n414), .ZN(
        n250) );
  OAI32D0BWP12T30P140 U313 ( .A1(chg_counter[22]), .A2(n282), .A3(n251), .B1(
        n250), .B2(n249), .ZN(n168) );
  AO22D0BWP12T30P140 U314 ( .A1(chg_counter[3]), .A2(n254), .B1(n253), .B2(
        n252), .Z(n187) );
  NR2D0BWP12T30P140 U315 ( .A1(n288), .A2(n459), .ZN(n256) );
  OAI21D0BWP12T30P140 U316 ( .A1(calc_parity), .A2(n256), .B(n458), .ZN(n255)
         );
  AOI21D0BWP12T30P140 U317 ( .A1(calc_parity), .A2(n256), .B(n255), .ZN(n159)
         );
  NR2D0BWP12T30P140 U318 ( .A1(n264), .A2(n263), .ZN(n439) );
  ND3D0BWP12T30P140 U319 ( .A1(chg_counter[25]), .A2(n265), .A3(n439), .ZN(
        n267) );
  OAI22D0BWP12T30P140 U320 ( .A1(n258), .A2(n257), .B1(n266), .B2(n267), .ZN(
        n163) );
  CKMUX2D0BWP12T30P140 U321 ( .I0(i_setup[22]), .I1(clocks_per_baud[22]), .S(
        n460), .Z(n125) );
  CKMUX2D0BWP12T30P140 U322 ( .I0(i_setup[21]), .I1(clocks_per_baud[21]), .S(
        n460), .Z(n126) );
  CKMUX2D0BWP12T30P140 U323 ( .I0(i_setup[13]), .I1(clocks_per_baud[13]), .S(
        n460), .Z(n134) );
  CKMUX2D0BWP12T30P140 U324 ( .I0(i_setup[12]), .I1(clocks_per_baud[12]), .S(
        n460), .Z(n135) );
  CKMUX2D0BWP12T30P140 U325 ( .I0(i_setup[6]), .I1(clocks_per_baud[6]), .S(
        n460), .Z(n141) );
  CKMUX2D0BWP12T30P140 U326 ( .I0(i_setup[7]), .I1(clocks_per_baud[7]), .S(
        n461), .Z(n140) );
  CKMUX2D0BWP12T30P140 U327 ( .I0(i_setup[0]), .I1(clocks_per_baud[0]), .S(
        n460), .Z(n117) );
  CKMUX2D0BWP12T30P140 U328 ( .I0(i_setup[24]), .I1(r_setup[24]), .S(n461), 
        .Z(n123) );
  AOI22D0BWP12T30P140 U329 ( .A1(n274), .A2(n260), .B1(n259), .B2(n272), .ZN(
        n113) );
  AOI22D0BWP12T30P140 U330 ( .A1(n274), .A2(n262), .B1(n261), .B2(n272), .ZN(
        n111) );
  OAI31D0BWP12T30P140 U331 ( .A1(n264), .A2(n434), .A3(n263), .B(n414), .ZN(
        n443) );
  INVD0BWP12T30P140 U332 ( .I(chg_counter[25]), .ZN(n442) );
  ND2D0BWP12T30P140 U333 ( .A1(n265), .A2(n442), .ZN(n441) );
  AOI32D0BWP12T30P140 U334 ( .A1(n443), .A2(chg_counter[26]), .A3(n441), .B1(
        n267), .B2(n266), .ZN(n164) );
  OAI21D0BWP12T30P140 U335 ( .A1(n416), .A2(n269), .B(n414), .ZN(n268) );
  OAI32D0BWP12T30P140 U336 ( .A1(chg_counter[11]), .A2(n282), .A3(n269), .B1(
        n268), .B2(n365), .ZN(n179) );
  OAI21D0BWP12T30P140 U337 ( .A1(n434), .A2(n271), .B(n433), .ZN(n270) );
  OAI32D0BWP12T30P140 U338 ( .A1(chg_counter[23]), .A2(n438), .A3(n271), .B1(
        n270), .B2(n403), .ZN(n167) );
  AOI22D0BWP12T30P140 U339 ( .A1(n274), .A2(n273), .B1(n277), .B2(n272), .ZN(
        n115) );
  CKMUX2D0BWP12T30P140 U340 ( .I0(i_setup[25]), .I1(r_setup[25]), .S(n461), 
        .Z(n122) );
  AOI22D0BWP12T30P140 U341 ( .A1(o_data[5]), .A2(n494), .B1(n496), .B2(n275), 
        .ZN(n276) );
  OAI31D0BWP12T30P140 U342 ( .A1(n496), .A2(n278), .A3(n277), .B(n276), .ZN(
        n153) );
  CKMUX2D0BWP12T30P140 U343 ( .I0(i_setup[4]), .I1(clocks_per_baud[4]), .S(
        n460), .Z(n143) );
  OAI31D0BWP12T30P140 U344 ( .A1(n358), .A2(n416), .A3(n279), .B(n414), .ZN(
        n280) );
  OAI32D0BWP12T30P140 U345 ( .A1(chg_counter[8]), .A2(n282), .A3(n281), .B1(
        n280), .B2(n327), .ZN(n182) );
  OAI21D0BWP12T30P140 U346 ( .A1(n434), .A2(n284), .B(n433), .ZN(n283) );
  OAI32D0BWP12T30P140 U347 ( .A1(chg_counter[15]), .A2(n438), .A3(n284), .B1(
        n283), .B2(n382), .ZN(n175) );
  NR2D0BWP12T30P140 U348 ( .A1(state[0]), .A2(n285), .ZN(n426) );
  AOI31D0BWP12T30P140 U349 ( .A1(state[3]), .A2(n426), .A3(n287), .B(n286), 
        .ZN(n291) );
  OAI21D0BWP12T30P140 U350 ( .A1(o_frame_err), .A2(n288), .B(zero_baud_counter), .ZN(n290) );
  MOAI22D0BWP12T30P140 U351 ( .A1(n291), .A2(n290), .B1(n289), .B2(o_frame_err), .ZN(n157) );
  AOI22D0BWP12T30P140 U352 ( .A1(o_data[3]), .A2(n494), .B1(n496), .B2(n292), 
        .ZN(n293) );
  OAI21D0BWP12T30P140 U353 ( .A1(n294), .A2(n496), .B(n293), .ZN(n151) );
  CKMUX2D0BWP12T30P140 U354 ( .I0(i_setup[16]), .I1(clocks_per_baud[16]), .S(
        n461), .Z(n131) );
  NR3D0BWP12T30P140 U355 ( .A1(clocks_per_baud[3]), .A2(clocks_per_baud[2]), 
        .A3(clocks_per_baud[1]), .ZN(n340) );
  ND2D0BWP12T30P140 U356 ( .A1(n340), .A2(n339), .ZN(n338) );
  NR2D0BWP12T30P140 U357 ( .A1(clocks_per_baud[5]), .A2(n338), .ZN(n348) );
  ND2D0BWP12T30P140 U358 ( .A1(n348), .A2(n347), .ZN(n346) );
  NR2D0BWP12T30P140 U359 ( .A1(clocks_per_baud[7]), .A2(n346), .ZN(n356) );
  INVD0BWP12T30P140 U360 ( .I(clocks_per_baud[8]), .ZN(n355) );
  ND2D0BWP12T30P140 U361 ( .A1(n356), .A2(n355), .ZN(n354) );
  INVD0BWP12T30P140 U362 ( .I(n354), .ZN(n326) );
  ND2D0BWP12T30P140 U363 ( .A1(n325), .A2(n326), .ZN(n324) );
  NR2D0BWP12T30P140 U364 ( .A1(n324), .A2(clocks_per_baud[10]), .ZN(n323) );
  INVD0BWP12T30P140 U365 ( .I(n323), .ZN(n321) );
  NR2D0BWP12T30P140 U366 ( .A1(clocks_per_baud[11]), .A2(n321), .ZN(n320) );
  ND2D0BWP12T30P140 U367 ( .A1(n320), .A2(n319), .ZN(n318) );
  INVD0BWP12T30P140 U368 ( .I(n318), .ZN(n311) );
  ND2D0BWP12T30P140 U369 ( .A1(n310), .A2(n311), .ZN(n309) );
  NR2D0BWP12T30P140 U370 ( .A1(n309), .A2(clocks_per_baud[14]), .ZN(n315) );
  ND2D0BWP12T30P140 U371 ( .A1(n314), .A2(n315), .ZN(n313) );
  NR2D0BWP12T30P140 U372 ( .A1(n313), .A2(clocks_per_baud[16]), .ZN(n308) );
  ND2D0BWP12T30P140 U373 ( .A1(n304), .A2(n308), .ZN(n303) );
  NR2D0BWP12T30P140 U374 ( .A1(n303), .A2(clocks_per_baud[18]), .ZN(n302) );
  INVD0BWP12T30P140 U375 ( .I(n302), .ZN(n388) );
  NR2D0BWP12T30P140 U376 ( .A1(clocks_per_baud[19]), .A2(n388), .ZN(n391) );
  ND2D0BWP12T30P140 U377 ( .A1(n391), .A2(n390), .ZN(n389) );
  INVD0BWP12T30P140 U378 ( .I(n389), .ZN(n300) );
  ND2D0BWP12T30P140 U379 ( .A1(n299), .A2(n300), .ZN(n298) );
  NR2D0BWP12T30P140 U380 ( .A1(n298), .A2(clocks_per_baud[22]), .ZN(n297) );
  INVD0BWP12T30P140 U381 ( .I(n297), .ZN(n295) );
  NR2D0BWP12T30P140 U382 ( .A1(clocks_per_baud[23]), .A2(n295), .ZN(n413) );
  ND4D0BWP12T30P140 U383 ( .A1(chg_counter[24]), .A2(chg_counter[25]), .A3(
        chg_counter[27]), .A4(chg_counter[26]), .ZN(n412) );
  AOI21D0BWP12T30P140 U384 ( .A1(clocks_per_baud[23]), .A2(n295), .B(n413), 
        .ZN(n410) );
  NR4D0BWP12T30P140 U385 ( .A1(chg_counter[24]), .A2(chg_counter[25]), .A3(
        chg_counter[27]), .A4(chg_counter[26]), .ZN(n296) );
  AOI21D0BWP12T30P140 U386 ( .A1(n296), .A2(n403), .B(n413), .ZN(n409) );
  AOI21D0BWP12T30P140 U387 ( .A1(clocks_per_baud[22]), .A2(n298), .B(n297), 
        .ZN(n402) );
  OAI21D0BWP12T30P140 U388 ( .A1(n300), .A2(n299), .B(n298), .ZN(n399) );
  NR2D0BWP12T30P140 U389 ( .A1(n418), .A2(n399), .ZN(n301) );
  MAOI222D0BWP12T30P140 U390 ( .A(chg_counter[21]), .B(n402), .C(n301), .ZN(
        n407) );
  AOI21D0BWP12T30P140 U391 ( .A1(clocks_per_baud[18]), .A2(n303), .B(n302), 
        .ZN(n384) );
  OAI21D0BWP12T30P140 U392 ( .A1(n308), .A2(n304), .B(n303), .ZN(n307) );
  NR2D0BWP12T30P140 U393 ( .A1(n305), .A2(n307), .ZN(n306) );
  MAOI222D0BWP12T30P140 U394 ( .A(chg_counter[17]), .B(n384), .C(n306), .ZN(
        n395) );
  INVD0BWP12T30P140 U395 ( .I(n307), .ZN(n387) );
  AO21D0BWP12T30P140 U396 ( .A1(clocks_per_baud[16]), .A2(n313), .B(n308), .Z(
        n383) );
  AOI21D0BWP12T30P140 U397 ( .A1(clocks_per_baud[14]), .A2(n309), .B(n315), 
        .ZN(n317) );
  OAI21D0BWP12T30P140 U398 ( .A1(n311), .A2(n310), .B(n309), .ZN(n377) );
  NR2D0BWP12T30P140 U399 ( .A1(n378), .A2(n377), .ZN(n312) );
  MAOI222D0BWP12T30P140 U400 ( .A(chg_counter[13]), .B(n317), .C(n312), .ZN(
        n316) );
  OAI21D0BWP12T30P140 U401 ( .A1(n315), .A2(n314), .B(n313), .ZN(n370) );
  MAOI222D0BWP12T30P140 U402 ( .A(n316), .B(n370), .C(n371), .ZN(n380) );
  NR2D0BWP12T30P140 U403 ( .A1(chg_counter[13]), .A2(n317), .ZN(n376) );
  OAI21D0BWP12T30P140 U404 ( .A1(n320), .A2(n319), .B(n318), .ZN(n364) );
  AOI21D0BWP12T30P140 U405 ( .A1(clocks_per_baud[11]), .A2(n321), .B(n320), 
        .ZN(n366) );
  ND2D0BWP12T30P140 U406 ( .A1(chg_counter[10]), .A2(n366), .ZN(n322) );
  MAOI222D0BWP12T30P140 U407 ( .A(n365), .B(n364), .C(n322), .ZN(n374) );
  AOI21D0BWP12T30P140 U408 ( .A1(clocks_per_baud[10]), .A2(n324), .B(n323), 
        .ZN(n360) );
  OAI21D0BWP12T30P140 U409 ( .A1(n326), .A2(n325), .B(n324), .ZN(n329) );
  NR2D0BWP12T30P140 U410 ( .A1(n327), .A2(n329), .ZN(n328) );
  MAOI222D0BWP12T30P140 U411 ( .A(chg_counter[9]), .B(n360), .C(n328), .ZN(
        n369) );
  INVD0BWP12T30P140 U412 ( .I(n329), .ZN(n363) );
  AOI21D0BWP12T30P140 U413 ( .A1(clocks_per_baud[7]), .A2(n346), .B(n356), 
        .ZN(n353) );
  AOI21D0BWP12T30P140 U414 ( .A1(clocks_per_baud[5]), .A2(n338), .B(n348), 
        .ZN(n345) );
  ND2D0BWP12T30P140 U415 ( .A1(n330), .A2(n331), .ZN(n332) );
  AOI21D0BWP12T30P140 U416 ( .A1(clocks_per_baud[3]), .A2(n332), .B(n340), 
        .ZN(n337) );
  AOI21D0BWP12T30P140 U417 ( .A1(chg_counter[0]), .A2(n331), .B(chg_counter[1]), .ZN(n335) );
  INVD0BWP12T30P140 U418 ( .I(n332), .ZN(n334) );
  AOI22D0BWP12T30P140 U419 ( .A1(clocks_per_baud[2]), .A2(n335), .B1(n334), 
        .B2(n333), .ZN(n336) );
  MAOI222D0BWP12T30P140 U420 ( .A(chg_counter[2]), .B(n337), .C(n336), .ZN(
        n343) );
  INVD0BWP12T30P140 U421 ( .I(chg_counter[3]), .ZN(n342) );
  OAI21D0BWP12T30P140 U422 ( .A1(n340), .A2(n339), .B(n338), .ZN(n341) );
  MAOI222D0BWP12T30P140 U423 ( .A(n343), .B(n342), .C(n341), .ZN(n344) );
  MAOI222D0BWP12T30P140 U424 ( .A(chg_counter[4]), .B(n345), .C(n344), .ZN(
        n351) );
  OAI21D0BWP12T30P140 U425 ( .A1(n348), .A2(n347), .B(n346), .ZN(n349) );
  MAOI222D0BWP12T30P140 U426 ( .A(n351), .B(n350), .C(n349), .ZN(n352) );
  MAOI222D0BWP12T30P140 U427 ( .A(chg_counter[6]), .B(n353), .C(n352), .ZN(
        n359) );
  OAI21D0BWP12T30P140 U428 ( .A1(n356), .A2(n355), .B(n354), .ZN(n357) );
  MAOI222D0BWP12T30P140 U429 ( .A(n359), .B(n358), .C(n357), .ZN(n362) );
  OR2D0BWP12T30P140 U430 ( .A1(n360), .A2(chg_counter[9]), .Z(n361) );
  OAI211D0BWP12T30P140 U431 ( .A1(chg_counter[8]), .A2(n363), .B(n362), .C(
        n361), .ZN(n368) );
  MOAI22D0BWP12T30P140 U432 ( .A1(chg_counter[10]), .A2(n366), .B1(n365), .B2(
        n364), .ZN(n367) );
  AOI21D0BWP12T30P140 U433 ( .A1(n369), .A2(n368), .B(n367), .ZN(n373) );
  ND2D0BWP12T30P140 U434 ( .A1(n371), .A2(n370), .ZN(n372) );
  OAI21D0BWP12T30P140 U435 ( .A1(n374), .A2(n373), .B(n372), .ZN(n375) );
  AOI211D0BWP12T30P140 U436 ( .A1(n378), .A2(n377), .B(n376), .C(n375), .ZN(
        n379) );
  NR2D0BWP12T30P140 U437 ( .A1(n380), .A2(n379), .ZN(n381) );
  MAOI222D0BWP12T30P140 U438 ( .A(n383), .B(n382), .C(n381), .ZN(n386) );
  OR2D0BWP12T30P140 U439 ( .A1(n384), .A2(chg_counter[17]), .Z(n385) );
  OAI211D0BWP12T30P140 U440 ( .A1(chg_counter[16]), .A2(n387), .B(n386), .C(
        n385), .ZN(n394) );
  AOI21D0BWP12T30P140 U441 ( .A1(clocks_per_baud[19]), .A2(n388), .B(n391), 
        .ZN(n396) );
  OAI21D0BWP12T30P140 U442 ( .A1(n391), .A2(n390), .B(n389), .ZN(n397) );
  ND2D0BWP12T30P140 U443 ( .A1(n417), .A2(n397), .ZN(n392) );
  OAI21D0BWP12T30P140 U444 ( .A1(chg_counter[18]), .A2(n396), .B(n392), .ZN(
        n393) );
  AOI21D0BWP12T30P140 U445 ( .A1(n395), .A2(n394), .B(n393), .ZN(n401) );
  ND2D0BWP12T30P140 U446 ( .A1(chg_counter[18]), .A2(n396), .ZN(n398) );
  MAOI222D0BWP12T30P140 U447 ( .A(n398), .B(n417), .C(n397), .ZN(n400) );
  MOAI22D0BWP12T30P140 U448 ( .A1(n401), .A2(n400), .B1(n418), .B2(n399), .ZN(
        n406) );
  NR2D0BWP12T30P140 U449 ( .A1(chg_counter[21]), .A2(n402), .ZN(n405) );
  MOAI22D0BWP12T30P140 U450 ( .A1(chg_counter[22]), .A2(n410), .B1(n403), .B2(
        n413), .ZN(n404) );
  AOI211D0BWP12T30P140 U451 ( .A1(n407), .A2(n406), .B(n405), .C(n404), .ZN(
        n408) );
  AOI211D0BWP12T30P140 U452 ( .A1(n410), .A2(chg_counter[22]), .B(n409), .C(
        n408), .ZN(n411) );
  AOI211D0BWP12T30P140 U453 ( .A1(n413), .A2(n412), .B(o_ck_uart), .C(n411), 
        .ZN(N96) );
  OAI31D0BWP12T30P140 U454 ( .A1(n417), .A2(n416), .A3(n415), .B(n414), .ZN(
        n419) );
  OAI32D0BWP12T30P140 U455 ( .A1(chg_counter[20]), .A2(n438), .A3(n420), .B1(
        n419), .B2(n418), .ZN(n170) );
  CKMUX2D0BWP12T30P140 U456 ( .I0(i_setup[23]), .I1(clocks_per_baud[23]), .S(
        n461), .Z(n124) );
  AOI31D0BWP12T30P140 U457 ( .A1(o_ck_uart), .A2(n422), .A3(n421), .B(n448), 
        .ZN(n432) );
  AOI22D0BWP12T30P140 U458 ( .A1(state[1]), .A2(n452), .B1(n451), .B2(
        data_bits[1]), .ZN(n431) );
  NR2D0BWP12T30P140 U459 ( .A1(state[1]), .A2(n423), .ZN(n428) );
  INVD0BWP12T30P140 U460 ( .I(n424), .ZN(n427) );
  OAI31D0BWP12T30P140 U461 ( .A1(n428), .A2(n427), .A3(n426), .B(n425), .ZN(
        n429) );
  ND4D0BWP12T30P140 U462 ( .A1(n432), .A2(n431), .A3(n430), .A4(n429), .ZN(
        n191) );
  OAI21D0BWP12T30P140 U463 ( .A1(n434), .A2(n437), .B(n433), .ZN(n436) );
  OAI32D0BWP12T30P140 U464 ( .A1(chg_counter[17]), .A2(n438), .A3(n437), .B1(
        n436), .B2(n435), .ZN(n173) );
  INVD0BWP12T30P140 U465 ( .I(n439), .ZN(n440) );
  OAI22D0BWP12T30P140 U466 ( .A1(n443), .A2(n442), .B1(n441), .B2(n440), .ZN(
        n165) );
  OAI22D0BWP12T30P140 U467 ( .A1(r_setup[26]), .A2(n444), .B1(state[0]), .B2(
        state[3]), .ZN(n445) );
  AOI211D0BWP12T30P140 U468 ( .A1(o_ck_uart), .A2(n447), .B(n446), .C(n445), 
        .ZN(n456) );
  NR3D0BWP12T30P140 U469 ( .A1(i_reset), .A2(state[0]), .A3(n461), .ZN(n450)
         );
  AOI211D0BWP12T30P140 U470 ( .A1(line_synch), .A2(n450), .B(n449), .C(n448), 
        .ZN(n454) );
  AOI22D0BWP12T30P140 U471 ( .A1(state[0]), .A2(n452), .B1(data_bits[0]), .B2(
        n451), .ZN(n453) );
  OAI211D0BWP12T30P140 U472 ( .A1(n456), .A2(n455), .B(n454), .C(n453), .ZN(
        n162) );
  AOI21D0BWP12T30P140 U473 ( .A1(n459), .A2(n458), .B(n457), .ZN(N235) );
  CKMUX2D0BWP12T30P140 U474 ( .I0(i_setup[19]), .I1(clocks_per_baud[19]), .S(
        n460), .Z(n128) );
  CKMUX2D0BWP12T30P140 U475 ( .I0(i_setup[28]), .I1(data_bits[0]), .S(n461), 
        .Z(n119) );
  CKBD0BWP12T30P140 U476 ( .I(i_clk), .Z(n525) );
  CKBD0BWP12T30P140 U477 ( .I(i_clk), .Z(n530) );
  CKBD0BWP12T30P140 U478 ( .I(i_clk), .Z(n527) );
  CKBD0BWP12T30P140 U479 ( .I(i_clk), .Z(n529) );
  CKBD0BWP12T30P140 U480 ( .I(i_clk), .Z(n528) );
  CKBD0BWP12T30P140 U481 ( .I(i_clk), .Z(n526) );
  CKBD0BWP12T30P140 U482 ( .I(n466), .Z(n516) );
  CKMUX2D0BWP12T30P140 U483 ( .I0(baud_counter[1]), .I1(clocks_per_baud[1]), 
        .S(n516), .Z(n473) );
  OR2D0BWP12T30P140 U484 ( .A1(n474), .A2(n473), .Z(n482) );
  CKMUX2D0BWP12T30P140 U485 ( .I0(baud_counter[2]), .I1(clocks_per_baud[2]), 
        .S(n466), .Z(n481) );
  OR2D0BWP12T30P140 U486 ( .A1(n482), .A2(n481), .Z(n492) );
  CKMUX2D0BWP12T30P140 U487 ( .I0(baud_counter[3]), .I1(clocks_per_baud[3]), 
        .S(n516), .Z(n491) );
  OR2D0BWP12T30P140 U488 ( .A1(n492), .A2(n491), .Z(n476) );
  CKMUX2D0BWP12T30P140 U489 ( .I0(baud_counter[4]), .I1(clocks_per_baud[4]), 
        .S(n466), .Z(n475) );
  OR2D0BWP12T30P140 U490 ( .A1(n476), .A2(n475), .Z(n484) );
  CKMUX2D0BWP12T30P140 U491 ( .I0(baud_counter[5]), .I1(clocks_per_baud[5]), 
        .S(n516), .Z(n483) );
  OR2D0BWP12T30P140 U492 ( .A1(n484), .A2(n483), .Z(n501) );
  CKMUX2D0BWP12T30P140 U493 ( .I0(baud_counter[6]), .I1(clocks_per_baud[6]), 
        .S(n466), .Z(n500) );
  OR2D0BWP12T30P140 U494 ( .A1(n501), .A2(n500), .Z(n478) );
  CKMUX2D0BWP12T30P140 U495 ( .I0(baud_counter[7]), .I1(clocks_per_baud[7]), 
        .S(n516), .Z(n477) );
  OR2D0BWP12T30P140 U496 ( .A1(n478), .A2(n477), .Z(n486) );
  CKMUX2D0BWP12T30P140 U497 ( .I0(baud_counter[8]), .I1(clocks_per_baud[8]), 
        .S(n466), .Z(n485) );
  OR2D0BWP12T30P140 U498 ( .A1(n486), .A2(n485), .Z(n505) );
  CKMUX2D0BWP12T30P140 U499 ( .I0(baud_counter[9]), .I1(clocks_per_baud[9]), 
        .S(n516), .Z(n504) );
  OR2D0BWP12T30P140 U500 ( .A1(n505), .A2(n504), .Z(n509) );
  CKMUX2D0BWP12T30P140 U501 ( .I0(baud_counter[10]), .I1(clocks_per_baud[10]), 
        .S(n466), .Z(n508) );
  OR2D0BWP12T30P140 U502 ( .A1(n509), .A2(n508), .Z(n511) );
  CKMUX2D0BWP12T30P140 U503 ( .I0(baud_counter[11]), .I1(clocks_per_baud[11]), 
        .S(n466), .Z(n510) );
  OR2D0BWP12T30P140 U504 ( .A1(n511), .A2(n510), .Z(n488) );
  CKMUX2D0BWP12T30P140 U505 ( .I0(baud_counter[12]), .I1(clocks_per_baud[12]), 
        .S(n516), .Z(n487) );
  OR2D0BWP12T30P140 U506 ( .A1(n488), .A2(n487), .Z(n507) );
  CKMUX2D0BWP12T30P140 U507 ( .I0(baud_counter[13]), .I1(clocks_per_baud[13]), 
        .S(n466), .Z(n506) );
  OR2D0BWP12T30P140 U508 ( .A1(n507), .A2(n506), .Z(n513) );
  CKMUX2D0BWP12T30P140 U509 ( .I0(baud_counter[14]), .I1(clocks_per_baud[14]), 
        .S(n516), .Z(n512) );
  OR2D0BWP12T30P140 U510 ( .A1(n513), .A2(n512), .Z(n480) );
  CKMUX2D0BWP12T30P140 U511 ( .I0(baud_counter[15]), .I1(clocks_per_baud[15]), 
        .S(n466), .Z(n479) );
  OR2D0BWP12T30P140 U512 ( .A1(n480), .A2(n479), .Z(n490) );
  CKMUX2D0BWP12T30P140 U513 ( .I0(baud_counter[16]), .I1(clocks_per_baud[16]), 
        .S(n516), .Z(n489) );
  OR2D0BWP12T30P140 U514 ( .A1(n490), .A2(n489), .Z(n503) );
  CKMUX2D0BWP12T30P140 U515 ( .I0(baud_counter[17]), .I1(clocks_per_baud[17]), 
        .S(n466), .Z(n502) );
  OR2D0BWP12T30P140 U516 ( .A1(n503), .A2(n502), .Z(n463) );
  CKMUX2D0BWP12T30P140 U517 ( .I0(baud_counter[18]), .I1(clocks_per_baud[18]), 
        .S(n516), .Z(n462) );
  XNR2D0BWP12T30P140 U518 ( .A1(n463), .A2(n462), .ZN(N452) );
  OR2D0BWP12T30P140 U519 ( .A1(n463), .A2(n462), .Z(n465) );
  CKMUX2D0BWP12T30P140 U520 ( .I0(baud_counter[19]), .I1(clocks_per_baud[19]), 
        .S(n466), .Z(n464) );
  XNR2D0BWP12T30P140 U521 ( .A1(n465), .A2(n464), .ZN(N453) );
  OR2D0BWP12T30P140 U522 ( .A1(n465), .A2(n464), .Z(n520) );
  CKMUX2D0BWP12T30P140 U523 ( .I0(baud_counter[20]), .I1(clocks_per_baud[20]), 
        .S(n516), .Z(n519) );
  OR2D0BWP12T30P140 U524 ( .A1(n520), .A2(n519), .Z(n522) );
  CKMUX2D0BWP12T30P140 U525 ( .I0(baud_counter[21]), .I1(clocks_per_baud[21]), 
        .S(n466), .Z(n521) );
  OR2D0BWP12T30P140 U526 ( .A1(n522), .A2(n521), .Z(n524) );
  CKMUX2D0BWP12T30P140 U527 ( .I0(baud_counter[22]), .I1(clocks_per_baud[22]), 
        .S(n516), .Z(n523) );
  OR2D0BWP12T30P140 U528 ( .A1(n524), .A2(n523), .Z(n468) );
  CKMUX2D0BWP12T30P140 U529 ( .I0(baud_counter[23]), .I1(clocks_per_baud[23]), 
        .S(n466), .Z(n467) );
  XNR2D0BWP12T30P140 U530 ( .A1(n468), .A2(n467), .ZN(N457) );
  OR2D0BWP12T30P140 U531 ( .A1(n468), .A2(n467), .Z(n470) );
  INR2D1BWP12T30P140 U532 ( .A1(baud_counter[24]), .B1(n516), .ZN(n469) );
  XNR2D0BWP12T30P140 U533 ( .A1(n470), .A2(n469), .ZN(N458) );
  OR2D0BWP12T30P140 U534 ( .A1(n470), .A2(n469), .Z(n472) );
  INR2D1BWP12T30P140 U535 ( .A1(baud_counter[25]), .B1(n516), .ZN(n471) );
  XNR2D0BWP12T30P140 U536 ( .A1(n472), .A2(n471), .ZN(N459) );
  OR2D0BWP12T30P140 U537 ( .A1(n472), .A2(n471), .Z(n515) );
  INR2D1BWP12T30P140 U538 ( .A1(baud_counter[26]), .B1(n516), .ZN(n514) );
  XNR2D0BWP12T30P140 U539 ( .A1(n515), .A2(n514), .ZN(N460) );
  XNR2D0BWP12T30P140 U540 ( .A1(n474), .A2(n473), .ZN(N435) );
  XNR2D0BWP12T30P140 U541 ( .A1(n476), .A2(n475), .ZN(N438) );
  XNR2D0BWP12T30P140 U542 ( .A1(n478), .A2(n477), .ZN(N441) );
  XNR2D0BWP12T30P140 U543 ( .A1(n480), .A2(n479), .ZN(N449) );
  XNR2D0BWP12T30P140 U544 ( .A1(n482), .A2(n481), .ZN(N436) );
  XNR2D0BWP12T30P140 U545 ( .A1(n484), .A2(n483), .ZN(N439) );
  XNR2D0BWP12T30P140 U546 ( .A1(n486), .A2(n485), .ZN(N442) );
  XNR2D0BWP12T30P140 U547 ( .A1(n488), .A2(n487), .ZN(N446) );
  XNR2D0BWP12T30P140 U548 ( .A1(n490), .A2(n489), .ZN(N450) );
  XNR2D0BWP12T30P140 U549 ( .A1(n492), .A2(n491), .ZN(N437) );
  AOI22D0BWP12T30P140 U550 ( .A1(n494), .A2(o_data[0]), .B1(data_reg[0]), .B2(
        n493), .ZN(n499) );
  AOI32D0BWP12T30P140 U551 ( .A1(n497), .A2(n496), .A3(data_reg[2]), .B1(
        data_bits[0]), .B2(n495), .ZN(n498) );
  ND2D0BWP12T30P140 U552 ( .A1(n499), .A2(n498), .ZN(n156) );
  XNR2D0BWP12T30P140 U553 ( .A1(n501), .A2(n500), .ZN(N440) );
  XNR2D0BWP12T30P140 U554 ( .A1(n503), .A2(n502), .ZN(N451) );
  XNR2D0BWP12T30P140 U555 ( .A1(n505), .A2(n504), .ZN(N443) );
  XNR2D0BWP12T30P140 U556 ( .A1(n507), .A2(n506), .ZN(N447) );
  XNR2D0BWP12T30P140 U557 ( .A1(n509), .A2(n508), .ZN(N444) );
  XNR2D0BWP12T30P140 U558 ( .A1(n511), .A2(n510), .ZN(N445) );
  XNR2D0BWP12T30P140 U559 ( .A1(n513), .A2(n512), .ZN(N448) );
  OR2D0BWP12T30P140 U560 ( .A1(n515), .A2(n514), .Z(n518) );
  INR2D1BWP12T30P140 U561 ( .A1(baud_counter[27]), .B1(n516), .ZN(n517) );
  XNR2D0BWP12T30P140 U562 ( .A1(n518), .A2(n517), .ZN(N461) );
  XNR2D0BWP12T30P140 U563 ( .A1(n520), .A2(n519), .ZN(N454) );
  XNR2D0BWP12T30P140 U564 ( .A1(n522), .A2(n521), .ZN(N455) );
  XNR2D0BWP12T30P140 U565 ( .A1(n524), .A2(n523), .ZN(N456) );
endmodule


module ufifo_4_1 ( i_clk, i_rst, i_wr, i_data, o_empty_n, i_rd, o_data, 
        o_status, o_err );
  input [7:0] i_data;
  output [7:0] o_data;
  output [15:0] o_status;
  input i_clk, i_rst, i_wr, i_rd;
  output o_empty_n, o_err;
  wire   will_overflow, will_underflow, N100, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N142, N143, N216, N217, N218, N219, n296, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n297, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n454, n455, n456, n457, n458, n459,
         n460, n461, n462;
  wire   [3:0] r_first;
  wire   [3:0] w_last_plus_one;
  wire   [3:0] r_last;
  wire   [127:0] fifo;
  wire   [7:0] fifo_here;
  wire   [7:0] fifo_next;
  wire   [7:0] r_data;
  wire   [1:0] osrc;

  DFQD2BWP12T30P140 fifo_reg_3__7_ ( .D(n331), .CP(i_clk), .Q(fifo[103]) );
  DFQD2BWP12T30P140 fifo_reg_1__0_ ( .D(n316), .CP(i_clk), .Q(fifo[112]) );
  DFQD2BWP12T30P140 fifo_reg_3__2_ ( .D(n326), .CP(i_clk), .Q(fifo[98]) );
  DFQD2BWP12T30P140 fifo_reg_3__1_ ( .D(n325), .CP(i_clk), .Q(fifo[97]) );
  DFQD2BWP12T30P140 fifo_reg_3__0_ ( .D(n332), .CP(i_clk), .Q(fifo[96]) );
  DFQD2BWP12T30P140 fifo_reg_4__7_ ( .D(n339), .CP(i_clk), .Q(fifo[95]) );
  DFQD2BWP12T30P140 fifo_next_reg_7_ ( .D(N129), .CP(n455), .Q(fifo_next[7])
         );
  DFQD2BWP12T30P140 fifo_next_reg_6_ ( .D(N130), .CP(n455), .Q(fifo_next[6])
         );
  DFQD2BWP12T30P140 fifo_next_reg_4_ ( .D(N132), .CP(n455), .Q(fifo_next[4])
         );
  DFQD2BWP12T30P140 fifo_next_reg_3_ ( .D(N133), .CP(n455), .Q(fifo_next[3])
         );
  DFQD2BWP12T30P140 fifo_next_reg_2_ ( .D(N134), .CP(n455), .Q(fifo_next[2])
         );
  DFQD2BWP12T30P140 fifo_next_reg_1_ ( .D(N135), .CP(n455), .Q(fifo_next[1])
         );
  DFQD2BWP12T30P140 r_data_reg_7_ ( .D(i_data[7]), .CP(n455), .Q(r_data[7]) );
  DFQD2BWP12T30P140 r_data_reg_6_ ( .D(i_data[6]), .CP(n455), .Q(r_data[6]) );
  DFQD2BWP12T30P140 r_data_reg_5_ ( .D(i_data[5]), .CP(n455), .Q(r_data[5]) );
  DFQD2BWP12T30P140 r_data_reg_4_ ( .D(i_data[4]), .CP(n454), .Q(r_data[4]) );
  DFQD2BWP12T30P140 r_data_reg_3_ ( .D(i_data[3]), .CP(n454), .Q(r_data[3]) );
  DFQD2BWP12T30P140 r_data_reg_2_ ( .D(i_data[2]), .CP(n454), .Q(r_data[2]) );
  DFQD2BWP12T30P140 r_data_reg_1_ ( .D(i_data[1]), .CP(n454), .Q(r_data[1]) );
  DFQD2BWP12T30P140 r_data_reg_0_ ( .D(i_data[0]), .CP(n454), .Q(r_data[0]) );
  DFQD2BWP12T30P140 fifo_here_reg_7_ ( .D(N121), .CP(n456), .Q(fifo_here[7])
         );
  DFQD2BWP12T30P140 fifo_here_reg_6_ ( .D(N122), .CP(n456), .Q(fifo_here[6])
         );
  DFQD2BWP12T30P140 fifo_here_reg_4_ ( .D(N124), .CP(n456), .Q(fifo_here[4])
         );
  DFQD2BWP12T30P140 fifo_here_reg_3_ ( .D(N125), .CP(n456), .Q(fifo_here[3])
         );
  DFQD2BWP12T30P140 fifo_here_reg_2_ ( .D(N126), .CP(n456), .Q(fifo_here[2])
         );
  DFQD2BWP12T30P140 fifo_here_reg_1_ ( .D(N127), .CP(n456), .Q(fifo_here[1])
         );
  DFQD2BWP12T30P140 fifo_next_reg_0_ ( .D(N136), .CP(n455), .Q(fifo_next[0])
         );
  DFQD2BWP12T30P140 r_fill_reg_0_ ( .D(N216), .CP(n454), .Q(o_status[2]) );
  DFQD2BWP12T30P140 fifo_here_reg_0_ ( .D(N128), .CP(n455), .Q(fifo_here[0])
         );
  DFQD2BWP12T30P140 osrc_reg_0_ ( .D(N142), .CP(n454), .Q(osrc[0]) );
  DFQD2BWP12T30P140 r_fill_reg_2_ ( .D(N218), .CP(n454), .Q(o_status[4]) );
  DFQD2BWP12T30P140 r_fill_reg_1_ ( .D(N217), .CP(n454), .Q(o_status[3]) );
  DFQD2BWP12T30P140 osrc_reg_1_ ( .D(N143), .CP(n454), .Q(osrc[1]) );
  DFQD2BWP12T30P140 r_ovfl_reg ( .D(n433), .CP(n462), .Q(o_err) );
  DFQD2BWP12T30P140 fifo_reg_11__7_ ( .D(n395), .CP(n460), .Q(fifo[39]) );
  DFQD2BWP12T30P140 fifo_reg_5__7_ ( .D(n347), .CP(n460), .Q(fifo[87]) );
  DFQD2BWP12T30P140 fifo_reg_15__7_ ( .D(n427), .CP(n457), .Q(fifo[7]) );
  DFQD2BWP12T30P140 fifo_reg_3__5_ ( .D(n329), .CP(n457), .Q(fifo[101]) );
  DFQD2BWP12T30P140 fifo_reg_3__4_ ( .D(n328), .CP(n460), .Q(fifo[100]) );
  DFQD2BWP12T30P140 fifo_reg_3__3_ ( .D(n327), .CP(n459), .Q(fifo[99]) );
  DFQD2BWP12T30P140 fifo_reg_8__2_ ( .D(n366), .CP(n457), .Q(fifo[58]) );
  DFQD2BWP12T30P140 fifo_reg_8__1_ ( .D(n365), .CP(n460), .Q(fifo[57]) );
  DFQD2BWP12T30P140 fifo_reg_8__0_ ( .D(n372), .CP(n459), .Q(fifo[56]) );
  DFQD2BWP12T30P140 fifo_reg_9__4_ ( .D(n376), .CP(n457), .Q(fifo[52]) );
  DFQD2BWP12T30P140 fifo_reg_9__3_ ( .D(n375), .CP(n460), .Q(fifo[51]) );
  DFQD2BWP12T30P140 fifo_reg_9__2_ ( .D(n374), .CP(n459), .Q(fifo[50]) );
  DFQD2BWP12T30P140 fifo_reg_10__3_ ( .D(n383), .CP(n460), .Q(fifo[43]) );
  DFQD2BWP12T30P140 fifo_reg_10__2_ ( .D(n382), .CP(n460), .Q(fifo[42]) );
  DFQD2BWP12T30P140 fifo_reg_10__1_ ( .D(n381), .CP(n460), .Q(fifo[41]) );
  DFQD2BWP12T30P140 fifo_reg_10__0_ ( .D(n388), .CP(n460), .Q(fifo[40]) );
  DFQD2BWP12T30P140 fifo_reg_11__5_ ( .D(n393), .CP(n460), .Q(fifo[37]) );
  DFQD2BWP12T30P140 fifo_reg_11__4_ ( .D(n392), .CP(n460), .Q(fifo[36]) );
  DFQD2BWP12T30P140 fifo_reg_11__3_ ( .D(n391), .CP(n460), .Q(fifo[35]) );
  DFQD2BWP12T30P140 fifo_reg_11__2_ ( .D(n390), .CP(n460), .Q(fifo[34]) );
  DFQD2BWP12T30P140 fifo_reg_11__1_ ( .D(n389), .CP(n460), .Q(fifo[33]) );
  DFQD2BWP12T30P140 fifo_reg_11__0_ ( .D(n396), .CP(n460), .Q(fifo[32]) );
  DFQD2BWP12T30P140 will_underflow_reg ( .D(N100), .CP(n457), .Q(
        will_underflow) );
  DFQD2BWP12T30P140 fifo_reg_4__0_ ( .D(n340), .CP(n457), .Q(fifo[88]) );
  DFQD2BWP12T30P140 fifo_reg_5__6_ ( .D(n346), .CP(n459), .Q(fifo[86]) );
  DFQD2BWP12T30P140 fifo_reg_6__5_ ( .D(n353), .CP(n457), .Q(fifo[77]) );
  DFQD2BWP12T30P140 fifo_reg_6__4_ ( .D(n352), .CP(n460), .Q(fifo[76]) );
  DFQD2BWP12T30P140 fifo_reg_6__3_ ( .D(n351), .CP(n459), .Q(fifo[75]) );
  DFQD2BWP12T30P140 fifo_reg_6__1_ ( .D(n349), .CP(n457), .Q(fifo[73]) );
  DFQD2BWP12T30P140 fifo_reg_7__3_ ( .D(n359), .CP(n460), .Q(fifo[67]) );
  DFQD2BWP12T30P140 fifo_reg_12__7_ ( .D(n403), .CP(n459), .Q(fifo[31]) );
  DFQD2BWP12T30P140 fifo_reg_12__6_ ( .D(n402), .CP(n459), .Q(fifo[30]) );
  DFQD2BWP12T30P140 fifo_reg_12__5_ ( .D(n401), .CP(n459), .Q(fifo[29]) );
  DFQD2BWP12T30P140 fifo_reg_12__4_ ( .D(n400), .CP(n459), .Q(fifo[28]) );
  DFQD2BWP12T30P140 fifo_reg_12__3_ ( .D(n399), .CP(n459), .Q(fifo[27]) );
  DFQD2BWP12T30P140 fifo_reg_12__2_ ( .D(n398), .CP(n459), .Q(fifo[26]) );
  DFQD2BWP12T30P140 fifo_reg_12__1_ ( .D(n397), .CP(n459), .Q(fifo[25]) );
  DFQD2BWP12T30P140 fifo_reg_12__0_ ( .D(n404), .CP(n459), .Q(fifo[24]) );
  DFQD2BWP12T30P140 fifo_reg_13__6_ ( .D(n410), .CP(n459), .Q(fifo[22]) );
  DFQD2BWP12T30P140 fifo_reg_13__5_ ( .D(n409), .CP(n459), .Q(fifo[21]) );
  DFQD2BWP12T30P140 fifo_reg_13__4_ ( .D(n408), .CP(n459), .Q(fifo[20]) );
  DFQD2BWP12T30P140 fifo_reg_15__6_ ( .D(n426), .CP(n457), .Q(fifo[6]) );
  DFQD2BWP12T30P140 fifo_reg_15__5_ ( .D(n425), .CP(n457), .Q(fifo[5]) );
  DFQD2BWP12T30P140 fifo_reg_15__4_ ( .D(n424), .CP(n457), .Q(fifo[4]) );
  DFQD2BWP12T30P140 fifo_reg_15__2_ ( .D(n422), .CP(n457), .Q(fifo[2]) );
  DFQD2BWP12T30P140 fifo_reg_15__1_ ( .D(n421), .CP(n457), .Q(fifo[1]) );
  DFQD2BWP12T30P140 fifo_reg_15__0_ ( .D(n428), .CP(n457), .Q(fifo[0]) );
  DFQD2BWP12T30P140 fifo_reg_1__7_ ( .D(n315), .CP(n461), .Q(fifo[119]) );
  DFQD2BWP12T30P140 fifo_reg_9__7_ ( .D(n379), .CP(n456), .Q(fifo[55]) );
  DFQD2BWP12T30P140 r_empty_n_reg ( .D(n296), .CP(n454), .Q(o_empty_n) );
  DFQD2BWP12T30P140 fifo_reg_0__7_ ( .D(n307), .CP(n461), .Q(fifo[127]) );
  DFQD2BWP12T30P140 fifo_reg_0__6_ ( .D(n306), .CP(n461), .Q(fifo[126]) );
  DFQD2BWP12T30P140 fifo_reg_0__5_ ( .D(n305), .CP(n461), .Q(fifo[125]) );
  DFQD2BWP12T30P140 fifo_reg_0__4_ ( .D(n304), .CP(n461), .Q(fifo[124]) );
  DFQD2BWP12T30P140 fifo_reg_0__3_ ( .D(n303), .CP(n461), .Q(fifo[123]) );
  DFQD2BWP12T30P140 fifo_reg_0__2_ ( .D(n302), .CP(n461), .Q(fifo[122]) );
  DFQD2BWP12T30P140 fifo_reg_0__1_ ( .D(n301), .CP(n461), .Q(fifo[121]) );
  DFQD2BWP12T30P140 fifo_reg_0__0_ ( .D(n308), .CP(n461), .Q(fifo[120]) );
  DFQD2BWP12T30P140 fifo_reg_1__5_ ( .D(n313), .CP(n461), .Q(fifo[117]) );
  DFQD2BWP12T30P140 fifo_reg_1__4_ ( .D(n312), .CP(n461), .Q(fifo[116]) );
  DFQD2BWP12T30P140 fifo_reg_1__3_ ( .D(n311), .CP(n462), .Q(fifo[115]) );
  DFQD2BWP12T30P140 fifo_reg_1__2_ ( .D(n310), .CP(n462), .Q(fifo[114]) );
  DFQD2BWP12T30P140 fifo_reg_1__1_ ( .D(n309), .CP(n462), .Q(fifo[113]) );
  DFQD2BWP12T30P140 fifo_reg_2__7_ ( .D(n323), .CP(n462), .Q(fifo[111]) );
  DFQD2BWP12T30P140 fifo_reg_2__6_ ( .D(n322), .CP(n462), .Q(fifo[110]) );
  DFQD2BWP12T30P140 fifo_reg_2__5_ ( .D(n321), .CP(n462), .Q(fifo[109]) );
  DFQD2BWP12T30P140 fifo_reg_2__4_ ( .D(n320), .CP(n462), .Q(fifo[108]) );
  DFQD2BWP12T30P140 fifo_reg_2__3_ ( .D(n319), .CP(n461), .Q(fifo[107]) );
  DFQD2BWP12T30P140 fifo_reg_2__2_ ( .D(n318), .CP(n454), .Q(fifo[106]) );
  DFQD2BWP12T30P140 fifo_reg_2__1_ ( .D(n317), .CP(n456), .Q(fifo[105]) );
  DFQD2BWP12T30P140 fifo_reg_2__0_ ( .D(n324), .CP(n455), .Q(fifo[104]) );
  DFQD2BWP12T30P140 fifo_reg_3__6_ ( .D(n330), .CP(n458), .Q(fifo[102]) );
  DFQD2BWP12T30P140 fifo_reg_8__6_ ( .D(n370), .CP(n454), .Q(fifo[62]) );
  DFQD2BWP12T30P140 fifo_reg_8__5_ ( .D(n369), .CP(n456), .Q(fifo[61]) );
  DFQD2BWP12T30P140 fifo_reg_8__4_ ( .D(n368), .CP(n455), .Q(fifo[60]) );
  DFQD2BWP12T30P140 fifo_reg_8__3_ ( .D(n367), .CP(n458), .Q(fifo[59]) );
  DFQD2BWP12T30P140 fifo_reg_9__6_ ( .D(n378), .CP(n455), .Q(fifo[54]) );
  DFQD2BWP12T30P140 fifo_reg_9__5_ ( .D(n377), .CP(n458), .Q(fifo[53]) );
  DFQD2BWP12T30P140 fifo_reg_9__1_ ( .D(n373), .CP(n462), .Q(fifo[49]) );
  DFQD2BWP12T30P140 fifo_reg_9__0_ ( .D(n380), .CP(n461), .Q(fifo[48]) );
  DFQD2BWP12T30P140 fifo_reg_10__7_ ( .D(n387), .CP(n454), .Q(fifo[47]) );
  DFQD2BWP12T30P140 fifo_reg_10__6_ ( .D(n386), .CP(n456), .Q(fifo[46]) );
  DFQD2BWP12T30P140 fifo_reg_10__5_ ( .D(n385), .CP(n455), .Q(fifo[45]) );
  DFQD2BWP12T30P140 fifo_reg_10__4_ ( .D(n384), .CP(n458), .Q(fifo[44]) );
  DFQD2BWP12T30P140 fifo_reg_4__6_ ( .D(n338), .CP(n462), .Q(fifo[94]) );
  DFQD2BWP12T30P140 fifo_reg_4__5_ ( .D(n337), .CP(n461), .Q(fifo[93]) );
  DFQD2BWP12T30P140 fifo_reg_4__3_ ( .D(n335), .CP(n456), .Q(fifo[91]) );
  DFQD2BWP12T30P140 fifo_reg_4__2_ ( .D(n334), .CP(n455), .Q(fifo[90]) );
  DFQD2BWP12T30P140 fifo_reg_4__1_ ( .D(n333), .CP(n458), .Q(fifo[89]) );
  DFQD2BWP12T30P140 fifo_reg_5__5_ ( .D(n345), .CP(n462), .Q(fifo[85]) );
  DFQD2BWP12T30P140 fifo_reg_5__4_ ( .D(n344), .CP(n458), .Q(fifo[84]) );
  DFQD2BWP12T30P140 fifo_reg_5__3_ ( .D(n343), .CP(n456), .Q(fifo[83]) );
  DFQD2BWP12T30P140 fifo_reg_5__2_ ( .D(n342), .CP(n462), .Q(fifo[82]) );
  DFQD2BWP12T30P140 fifo_reg_5__1_ ( .D(n341), .CP(n461), .Q(fifo[81]) );
  DFQD2BWP12T30P140 fifo_reg_5__0_ ( .D(n348), .CP(n454), .Q(fifo[80]) );
  DFQD2BWP12T30P140 fifo_reg_6__7_ ( .D(n355), .CP(n455), .Q(fifo[79]) );
  DFQD2BWP12T30P140 fifo_reg_6__6_ ( .D(n354), .CP(n458), .Q(fifo[78]) );
  DFQD2BWP12T30P140 fifo_reg_6__2_ ( .D(n350), .CP(n461), .Q(fifo[74]) );
  DFQD2BWP12T30P140 fifo_reg_6__0_ ( .D(n356), .CP(n462), .Q(fifo[72]) );
  DFQD2BWP12T30P140 fifo_reg_7__7_ ( .D(n363), .CP(n461), .Q(fifo[71]) );
  DFQD2BWP12T30P140 fifo_reg_7__5_ ( .D(n361), .CP(n456), .Q(fifo[69]) );
  DFQD2BWP12T30P140 fifo_reg_7__4_ ( .D(n360), .CP(n455), .Q(fifo[68]) );
  DFQD2BWP12T30P140 fifo_reg_7__1_ ( .D(n357), .CP(n454), .Q(fifo[65]) );
  DFQD2BWP12T30P140 fifo_reg_7__0_ ( .D(n364), .CP(n462), .Q(fifo[64]) );
  DFQD2BWP12T30P140 fifo_reg_13__3_ ( .D(n407), .CP(n458), .Q(fifo[19]) );
  DFQD2BWP12T30P140 fifo_reg_13__2_ ( .D(n406), .CP(n458), .Q(fifo[18]) );
  DFQD2BWP12T30P140 fifo_reg_13__1_ ( .D(n405), .CP(n458), .Q(fifo[17]) );
  DFQD2BWP12T30P140 fifo_reg_13__0_ ( .D(n412), .CP(n458), .Q(fifo[16]) );
  DFQD2BWP12T30P140 fifo_reg_14__7_ ( .D(n419), .CP(n458), .Q(fifo[15]) );
  DFQD2BWP12T30P140 fifo_reg_14__6_ ( .D(n418), .CP(n458), .Q(fifo[14]) );
  DFQD2BWP12T30P140 fifo_reg_14__5_ ( .D(n417), .CP(n458), .Q(fifo[13]) );
  DFQD2BWP12T30P140 fifo_reg_14__4_ ( .D(n416), .CP(n458), .Q(fifo[12]) );
  DFQD2BWP12T30P140 fifo_reg_14__3_ ( .D(n415), .CP(n458), .Q(fifo[11]) );
  DFQD2BWP12T30P140 fifo_reg_14__2_ ( .D(n414), .CP(n458), .Q(fifo[10]) );
  DFQD2BWP12T30P140 fifo_reg_14__0_ ( .D(n420), .CP(n458), .Q(fifo[8]) );
  DFQD2BWP12T30P140 r_fill_reg_3_ ( .D(N219), .CP(n454), .Q(o_status[5]) );
  DFQD2BWP12T30P140 will_overflow_reg ( .D(n434), .CP(n462), .Q(will_overflow)
         );
  DFQD2BWP12T30P140 r_first_reg_0_ ( .D(n431), .CP(n462), .Q(r_first[0]) );
  DFQD2BWP12T30P140 r_first_reg_3_ ( .D(n432), .CP(n462), .Q(r_first[3]) );
  DFQD2BWP12T30P140 r_next_reg_1_ ( .D(n300), .CP(n457), .Q(w_last_plus_one[1]) );
  DFQD2BWP12T30P140 r_next_reg_3_ ( .D(n298), .CP(n456), .Q(w_last_plus_one[3]) );
  DFQD2BWP12T30P140 r_first_reg_2_ ( .D(n429), .CP(n462), .Q(r_first[2]) );
  DFQD2BWP12T30P140 r_last_reg_3_ ( .D(n435), .CP(n456), .Q(r_last[3]) );
  DFQD2BWP12T30P140 r_first_reg_1_ ( .D(n430), .CP(n462), .Q(r_first[1]) );
  DFQD2BWP12T30P140 r_next_reg_2_ ( .D(n299), .CP(n456), .Q(w_last_plus_one[2]) );
  DFQD2BWP12T30P140 r_last_reg_2_ ( .D(n436), .CP(n456), .Q(r_last[2]) );
  DFQD2BWP12T30P140 r_last_reg_1_ ( .D(n438), .CP(n456), .Q(r_last[1]) );
  DFQD2BWP12T30P140 r_last_reg_0_ ( .D(n437), .CP(n457), .Q(r_last[0]) );
  DFQD1BWP12T30P140 fifo_next_reg_5_ ( .D(N131), .CP(n455), .Q(fifo_next[5])
         );
  DFQD1BWP12T30P140 fifo_here_reg_5_ ( .D(N123), .CP(n456), .Q(fifo_here[5])
         );
  DFQD1BWP12T30P140 fifo_reg_13__7_ ( .D(n411), .CP(n459), .Q(fifo[23]) );
  DFQD1BWP12T30P140 fifo_reg_11__6_ ( .D(n394), .CP(n460), .Q(fifo[38]) );
  DFQD1BWP12T30P140 fifo_reg_7__2_ ( .D(n358), .CP(n459), .Q(fifo[66]) );
  DFQD1BWP12T30P140 fifo_reg_15__3_ ( .D(n423), .CP(n457), .Q(fifo[3]) );
  DFQD1BWP12T30P140 fifo_reg_1__6_ ( .D(n314), .CP(n461), .Q(fifo[118]) );
  DFQD1BWP12T30P140 fifo_reg_8__7_ ( .D(n371), .CP(n461), .Q(fifo[63]) );
  DFQD1BWP12T30P140 fifo_reg_4__4_ ( .D(n336), .CP(n454), .Q(fifo[92]) );
  DFQD1BWP12T30P140 fifo_reg_7__6_ ( .D(n362), .CP(n454), .Q(fifo[70]) );
  DFQD1BWP12T30P140 fifo_reg_14__1_ ( .D(n413), .CP(n458), .Q(fifo[9]) );
  DFQD1BWP12T30P140 r_next_reg_0_ ( .D(n439), .CP(n457), .Q(w_last_plus_one[0]) );
  INVD0BWP12T30P140 U3 ( .I(r_first[2]), .ZN(n61) );
  CKBD0BWP12T30P140 U4 ( .I(o_status[5]), .Z(o_status[1]) );
  CKBD0BWP12T30P140 U5 ( .I(o_empty_n), .Z(o_status[0]) );
  ND2D0BWP12T30P140 U6 ( .A1(r_first[1]), .A2(r_first[0]), .ZN(n79) );
  ND3D0BWP12T30P140 U7 ( .A1(r_first[2]), .A2(i_wr), .A3(r_first[3]), .ZN(n10)
         );
  NR2D0BWP12T30P140 U8 ( .A1(n79), .A2(n10), .ZN(n441) );
  INVD0BWP12T30P140 U9 ( .I(i_data[6]), .ZN(n295) );
  MAOI22D0BWP12T30P140 U10 ( .A1(n441), .A2(n295), .B1(fifo[6]), .B2(n441), 
        .ZN(n426) );
  INVD0BWP12T30P140 U11 ( .I(r_first[1]), .ZN(n63) );
  ND2D0BWP12T30P140 U12 ( .A1(n63), .A2(r_first[0]), .ZN(n30) );
  NR2D0BWP12T30P140 U13 ( .A1(n30), .A2(n10), .ZN(n76) );
  INVD0BWP12T30P140 U14 ( .I(i_data[4]), .ZN(n449) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n76), .A2(n449), .B1(fifo[20]), .B2(n76), 
        .ZN(n408) );
  INVD0BWP12T30P140 U16 ( .I(i_data[5]), .ZN(n442) );
  MAOI22D0BWP12T30P140 U17 ( .A1(n76), .A2(n442), .B1(fifo[21]), .B2(n76), 
        .ZN(n409) );
  MAOI22D0BWP12T30P140 U18 ( .A1(n76), .A2(n295), .B1(fifo[22]), .B2(n76), 
        .ZN(n410) );
  INVD0BWP12T30P140 U19 ( .I(r_first[0]), .ZN(n54) );
  ND2D0BWP12T30P140 U20 ( .A1(n63), .A2(n54), .ZN(n6) );
  NR2D0BWP12T30P140 U21 ( .A1(n10), .A2(n6), .ZN(n1) );
  INVD0BWP12T30P140 U22 ( .I(i_data[0]), .ZN(n447) );
  MAOI22D0BWP12T30P140 U23 ( .A1(n1), .A2(n447), .B1(fifo[24]), .B2(n1), .ZN(
        n404) );
  INVD0BWP12T30P140 U24 ( .I(i_data[1]), .ZN(n446) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n1), .A2(n446), .B1(fifo[25]), .B2(n1), .ZN(
        n397) );
  INVD0BWP12T30P140 U26 ( .I(i_data[2]), .ZN(n445) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n1), .A2(n445), .B1(fifo[26]), .B2(n1), .ZN(
        n398) );
  INVD0BWP12T30P140 U28 ( .I(i_data[3]), .ZN(n450) );
  MAOI22D0BWP12T30P140 U29 ( .A1(n1), .A2(n450), .B1(fifo[27]), .B2(n1), .ZN(
        n399) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n1), .A2(n449), .B1(fifo[28]), .B2(n1), .ZN(
        n400) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n1), .A2(n442), .B1(fifo[29]), .B2(n1), .ZN(
        n401) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n1), .A2(n295), .B1(fifo[30]), .B2(n1), .ZN(
        n402) );
  INVD0BWP12T30P140 U33 ( .I(i_data[7]), .ZN(n443) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n1), .A2(n443), .B1(fifo[31]), .B2(n1), .ZN(
        n403) );
  INVD0BWP12T30P140 U35 ( .I(r_first[3]), .ZN(n57) );
  ND3D0BWP12T30P140 U36 ( .A1(n57), .A2(r_first[2]), .A3(i_wr), .ZN(n2) );
  NR2D0BWP12T30P140 U37 ( .A1(n79), .A2(n2), .ZN(n8) );
  MAOI22D0BWP12T30P140 U38 ( .A1(n8), .A2(n445), .B1(fifo[66]), .B2(n8), .ZN(
        n358) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n8), .A2(n450), .B1(fifo[67]), .B2(n8), .ZN(
        n359) );
  ND2D0BWP12T30P140 U40 ( .A1(n54), .A2(r_first[1]), .ZN(n29) );
  NR2D0BWP12T30P140 U41 ( .A1(n29), .A2(n2), .ZN(n7) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n7), .A2(n446), .B1(fifo[73]), .B2(n7), .ZN(
        n349) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n7), .A2(n450), .B1(fifo[75]), .B2(n7), .ZN(
        n351) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n7), .A2(n449), .B1(fifo[76]), .B2(n7), .ZN(
        n352) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n7), .A2(n442), .B1(fifo[77]), .B2(n7), .ZN(
        n353) );
  NR2D0BWP12T30P140 U46 ( .A1(n30), .A2(n2), .ZN(n77) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n77), .A2(n295), .B1(fifo[86]), .B2(n77), 
        .ZN(n346) );
  NR2D0BWP12T30P140 U48 ( .A1(n6), .A2(n2), .ZN(n102) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n102), .A2(n447), .B1(fifo[88]), .B2(n102), 
        .ZN(n340) );
  ND3D0BWP12T30P140 U50 ( .A1(n57), .A2(n61), .A3(i_wr), .ZN(n5) );
  NR2D0BWP12T30P140 U51 ( .A1(n30), .A2(n5), .ZN(n75) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n75), .A2(n445), .B1(fifo[114]), .B2(n75), 
        .ZN(n310) );
  INVD0BWP12T30P140 U53 ( .I(i_rd), .ZN(n80) );
  NR2D0BWP12T30P140 U54 ( .A1(will_underflow), .A2(n80), .ZN(N142) );
  INVD0BWP12T30P140 U55 ( .I(r_last[2]), .ZN(n67) );
  AOI22D0BWP12T30P140 U56 ( .A1(r_last[2]), .A2(r_first[2]), .B1(n61), .B2(n67), .ZN(n40) );
  INVD0BWP12T30P140 U57 ( .I(r_last[3]), .ZN(n106) );
  AOI22D0BWP12T30P140 U58 ( .A1(r_last[3]), .A2(n57), .B1(r_first[3]), .B2(
        n106), .ZN(n35) );
  INVD0BWP12T30P140 U59 ( .I(n35), .ZN(n37) );
  INVD0BWP12T30P140 U60 ( .I(r_last[0]), .ZN(n74) );
  NR2D0BWP12T30P140 U61 ( .A1(r_first[0]), .A2(n74), .ZN(n16) );
  AOI21D0BWP12T30P140 U62 ( .A1(r_first[0]), .A2(n74), .B(n16), .ZN(n42) );
  INVD0BWP12T30P140 U63 ( .I(n42), .ZN(n122) );
  ND2D0BWP12T30P140 U64 ( .A1(r_last[1]), .A2(n63), .ZN(n39) );
  OAI21D0BWP12T30P140 U65 ( .A1(r_last[1]), .A2(n63), .B(n39), .ZN(n83) );
  NR4D0BWP12T30P140 U66 ( .A1(n40), .A2(n37), .A3(n122), .A4(n83), .ZN(n11) );
  INVD0BWP12T30P140 U67 ( .I(w_last_plus_one[3]), .ZN(n125) );
  AOI22D0BWP12T30P140 U68 ( .A1(r_first[3]), .A2(n125), .B1(w_last_plus_one[3]), .B2(n57), .ZN(n23) );
  INVD0BWP12T30P140 U69 ( .I(w_last_plus_one[2]), .ZN(n124) );
  AOI22D0BWP12T30P140 U70 ( .A1(r_first[2]), .A2(w_last_plus_one[2]), .B1(n124), .B2(n61), .ZN(n94) );
  ND2D0BWP12T30P140 U71 ( .A1(w_last_plus_one[0]), .A2(n54), .ZN(n86) );
  OAI21D0BWP12T30P140 U72 ( .A1(w_last_plus_one[0]), .A2(n54), .B(n86), .ZN(
        n118) );
  INVD0BWP12T30P140 U73 ( .I(w_last_plus_one[1]), .ZN(n123) );
  AOI22D0BWP12T30P140 U74 ( .A1(r_first[1]), .A2(w_last_plus_one[1]), .B1(n123), .B2(n63), .ZN(n87) );
  INR4D0BWP12T30P140 U75 ( .A1(n23), .B1(n94), .B2(n118), .B3(n87), .ZN(n82)
         );
  INVD0BWP12T30P140 U76 ( .I(N142), .ZN(n73) );
  OAI22D0BWP12T30P140 U77 ( .A1(i_rd), .A2(n11), .B1(n82), .B2(n73), .ZN(n3)
         );
  INVD0BWP12T30P140 U78 ( .I(i_rst), .ZN(n53) );
  OAI21D0BWP12T30P140 U79 ( .A1(i_wr), .A2(n3), .B(n53), .ZN(N100) );
  NR2D0BWP12T30P140 U80 ( .A1(n29), .A2(n5), .ZN(n4) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n4), .A2(n443), .B1(fifo[111]), .B2(n4), .ZN(
        n323) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n4), .A2(n295), .B1(fifo[110]), .B2(n4), .ZN(
        n322) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n75), .A2(n450), .B1(fifo[115]), .B2(n75), 
        .ZN(n311) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n4), .A2(n442), .B1(fifo[109]), .B2(n4), .ZN(
        n321) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n4), .A2(n449), .B1(fifo[108]), .B2(n4), .ZN(
        n320) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n4), .A2(n450), .B1(fifo[107]), .B2(n4), .ZN(
        n319) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n4), .A2(n445), .B1(fifo[106]), .B2(n4), .ZN(
        n318) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n75), .A2(n449), .B1(fifo[116]), .B2(n75), 
        .ZN(n312) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n4), .A2(n446), .B1(fifo[105]), .B2(n4), .ZN(
        n317) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n4), .A2(n447), .B1(fifo[104]), .B2(n4), .ZN(
        n324) );
  NR2D0BWP12T30P140 U91 ( .A1(n79), .A2(n5), .ZN(n444) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n444), .A2(n295), .B1(fifo[102]), .B2(n444), 
        .ZN(n330) );
  ND3D0BWP12T30P140 U93 ( .A1(n61), .A2(r_first[3]), .A3(i_wr), .ZN(n78) );
  NR2D0BWP12T30P140 U94 ( .A1(n6), .A2(n78), .ZN(n448) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n448), .A2(n443), .B1(fifo[63]), .B2(n448), 
        .ZN(n371) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n75), .A2(n442), .B1(fifo[117]), .B2(n75), 
        .ZN(n313) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n448), .A2(n295), .B1(fifo[62]), .B2(n448), 
        .ZN(n370) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n448), .A2(n442), .B1(fifo[61]), .B2(n448), 
        .ZN(n369) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n448), .A2(n449), .B1(fifo[60]), .B2(n448), 
        .ZN(n368) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n448), .A2(n450), .B1(fifo[59]), .B2(n448), 
        .ZN(n367) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n75), .A2(n295), .B1(fifo[118]), .B2(n75), 
        .ZN(n314) );
  NR2D0BWP12T30P140 U102 ( .A1(n30), .A2(n78), .ZN(n451) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n451), .A2(n295), .B1(fifo[54]), .B2(n451), 
        .ZN(n378) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n451), .A2(n442), .B1(fifo[53]), .B2(n451), 
        .ZN(n377) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n451), .A2(n446), .B1(fifo[49]), .B2(n451), 
        .ZN(n373) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n451), .A2(n447), .B1(fifo[48]), .B2(n451), 
        .ZN(n380) );
  NR2D0BWP12T30P140 U107 ( .A1(n6), .A2(n5), .ZN(n9) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n9), .A2(n447), .B1(fifo[120]), .B2(n9), 
        .ZN(n308) );
  NR2D0BWP12T30P140 U109 ( .A1(n29), .A2(n78), .ZN(n440) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n440), .A2(n443), .B1(fifo[47]), .B2(n440), 
        .ZN(n387) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n440), .A2(n295), .B1(fifo[46]), .B2(n440), 
        .ZN(n386) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n440), .A2(n442), .B1(fifo[45]), .B2(n440), 
        .ZN(n385) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n440), .A2(n449), .B1(fifo[44]), .B2(n440), 
        .ZN(n384) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n9), .A2(n446), .B1(fifo[121]), .B2(n9), 
        .ZN(n301) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n102), .A2(n295), .B1(fifo[94]), .B2(n102), 
        .ZN(n338) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n102), .A2(n442), .B1(fifo[93]), .B2(n102), 
        .ZN(n337) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n102), .A2(n449), .B1(fifo[92]), .B2(n102), 
        .ZN(n336) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n9), .A2(n445), .B1(fifo[122]), .B2(n9), 
        .ZN(n302) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n102), .A2(n450), .B1(fifo[91]), .B2(n102), 
        .ZN(n335) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n102), .A2(n445), .B1(fifo[90]), .B2(n102), 
        .ZN(n334) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n102), .A2(n446), .B1(fifo[89]), .B2(n102), 
        .ZN(n333) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n77), .A2(n442), .B1(fifo[85]), .B2(n77), 
        .ZN(n345) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n9), .A2(n450), .B1(fifo[123]), .B2(n9), 
        .ZN(n303) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n77), .A2(n449), .B1(fifo[84]), .B2(n77), 
        .ZN(n344) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n77), .A2(n450), .B1(fifo[83]), .B2(n77), 
        .ZN(n343) );
  MAOI22D0BWP12T30P140 U126 ( .A1(n77), .A2(n445), .B1(fifo[82]), .B2(n77), 
        .ZN(n342) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n77), .A2(n446), .B1(fifo[81]), .B2(n77), 
        .ZN(n341) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n9), .A2(n449), .B1(fifo[124]), .B2(n9), 
        .ZN(n304) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n77), .A2(n447), .B1(fifo[80]), .B2(n77), 
        .ZN(n348) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n7), .A2(n443), .B1(fifo[79]), .B2(n7), .ZN(
        n355) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n7), .A2(n295), .B1(fifo[78]), .B2(n7), .ZN(
        n354) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n7), .A2(n445), .B1(fifo[74]), .B2(n7), .ZN(
        n350) );
  MAOI22D0BWP12T30P140 U133 ( .A1(n9), .A2(n442), .B1(fifo[125]), .B2(n9), 
        .ZN(n305) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n7), .A2(n447), .B1(fifo[72]), .B2(n7), .ZN(
        n356) );
  MAOI22D0BWP12T30P140 U135 ( .A1(n8), .A2(n443), .B1(fifo[71]), .B2(n8), .ZN(
        n363) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n8), .A2(n295), .B1(fifo[70]), .B2(n8), .ZN(
        n362) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n8), .A2(n442), .B1(fifo[69]), .B2(n8), .ZN(
        n361) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n75), .A2(n446), .B1(fifo[113]), .B2(n75), 
        .ZN(n309) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n9), .A2(n295), .B1(fifo[126]), .B2(n9), 
        .ZN(n306) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n8), .A2(n449), .B1(fifo[68]), .B2(n8), .ZN(
        n360) );
  MAOI22D0BWP12T30P140 U141 ( .A1(n8), .A2(n446), .B1(fifo[65]), .B2(n8), .ZN(
        n357) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n8), .A2(n447), .B1(fifo[64]), .B2(n8), .ZN(
        n364) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n76), .A2(n450), .B1(fifo[19]), .B2(n76), 
        .ZN(n407) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n9), .A2(n443), .B1(fifo[127]), .B2(n9), 
        .ZN(n307) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n76), .A2(n445), .B1(fifo[18]), .B2(n76), 
        .ZN(n406) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n76), .A2(n446), .B1(fifo[17]), .B2(n76), 
        .ZN(n405) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n76), .A2(n447), .B1(fifo[16]), .B2(n76), 
        .ZN(n412) );
  NR2D0BWP12T30P140 U148 ( .A1(n29), .A2(n10), .ZN(n14) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n14), .A2(n443), .B1(fifo[15]), .B2(n14), 
        .ZN(n419) );
  INVD0BWP12T30P140 U150 ( .I(i_wr), .ZN(n51) );
  ND2D0BWP12T30P140 U151 ( .A1(n53), .A2(n73), .ZN(n71) );
  NR2D0BWP12T30P140 U152 ( .A1(i_wr), .A2(n80), .ZN(n48) );
  NR2D0BWP12T30P140 U153 ( .A1(n48), .A2(n11), .ZN(n12) );
  AOI31D0BWP12T30P140 U154 ( .A1(will_underflow), .A2(i_rd), .A3(o_empty_n), 
        .B(n12), .ZN(n13) );
  ND2D0BWP12T30P140 U155 ( .A1(N142), .A2(n53), .ZN(n70) );
  NR2D0BWP12T30P140 U156 ( .A1(i_wr), .A2(n70), .ZN(n119) );
  INVD0BWP12T30P140 U157 ( .I(n119), .ZN(n84) );
  OAI222D0BWP12T30P140 U158 ( .A1(n51), .A2(n71), .B1(i_rst), .B2(n13), .C1(
        n84), .C2(n82), .ZN(n296) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n14), .A2(n295), .B1(fifo[14]), .B2(n14), 
        .ZN(n418) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n14), .A2(n442), .B1(fifo[13]), .B2(n14), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U161 ( .A1(n14), .A2(n449), .B1(fifo[12]), .B2(n14), 
        .ZN(n416) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n14), .A2(n450), .B1(fifo[11]), .B2(n14), 
        .ZN(n415) );
  MAOI22D0BWP12T30P140 U163 ( .A1(n451), .A2(n443), .B1(fifo[55]), .B2(n451), 
        .ZN(n379) );
  MAOI22D0BWP12T30P140 U164 ( .A1(n14), .A2(n445), .B1(fifo[10]), .B2(n14), 
        .ZN(n414) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n14), .A2(n446), .B1(fifo[9]), .B2(n14), 
        .ZN(n413) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n14), .A2(n447), .B1(fifo[8]), .B2(n14), 
        .ZN(n420) );
  NR2D0BWP12T30P140 U167 ( .A1(n51), .A2(will_overflow), .ZN(n43) );
  IND2D1BWP12T30P140 U168 ( .A1(n71), .B1(n43), .ZN(n121) );
  INVD0BWP12T30P140 U169 ( .I(n121), .ZN(n97) );
  INVD0BWP12T30P140 U170 ( .I(n40), .ZN(n15) );
  INVD0BWP12T30P140 U171 ( .I(r_last[1]), .ZN(n68) );
  INVD0BWP12T30P140 U172 ( .I(n16), .ZN(n17) );
  MAOI222D0BWP12T30P140 U173 ( .A(n68), .B(n17), .C(r_first[1]), .ZN(n18) );
  MUX2ND0BWP12T30P140 U174 ( .I0(n40), .I1(n15), .S(n18), .ZN(n101) );
  MUX2ND0BWP12T30P140 U175 ( .I0(n17), .I1(n16), .S(n83), .ZN(n90) );
  INR2D1BWP12T30P140 U176 ( .A1(n90), .B1(n42), .ZN(n98) );
  IND2D1BWP12T30P140 U177 ( .A1(n101), .B1(n98), .ZN(n20) );
  AOI221D0BWP12T30P140 U178 ( .A1(n43), .A2(n73), .B1(n51), .B2(N142), .C(
        i_rst), .ZN(n117) );
  AOI21D0BWP12T30P140 U179 ( .A1(n97), .A2(n20), .B(n117), .ZN(n100) );
  MAOI222D0BWP12T30P140 U180 ( .A(r_last[2]), .B(n61), .C(n18), .ZN(n19) );
  MUX2ND0BWP12T30P140 U181 ( .I0(n35), .I1(n37), .S(n19), .ZN(n27) );
  NR2D0BWP12T30P140 U182 ( .A1(n20), .A2(n121), .ZN(n25) );
  MAOI222D0BWP12T30P140 U183 ( .A(r_first[1]), .B(n123), .C(n86), .ZN(n95) );
  MAOI222D0BWP12T30P140 U184 ( .A(w_last_plus_one[2]), .B(n61), .C(n95), .ZN(
        n22) );
  OAI21D0BWP12T30P140 U185 ( .A1(n23), .A2(n22), .B(n119), .ZN(n21) );
  AOI21D0BWP12T30P140 U186 ( .A1(n23), .A2(n22), .B(n21), .ZN(n24) );
  AOI21D0BWP12T30P140 U187 ( .A1(n27), .A2(n25), .B(n24), .ZN(n26) );
  OAI21D0BWP12T30P140 U188 ( .A1(n100), .A2(n27), .B(n26), .ZN(N219) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n75), .A2(n443), .B1(fifo[119]), .B2(n75), 
        .ZN(n315) );
  ND2D0BWP12T30P140 U190 ( .A1(r_first[2]), .A2(r_first[1]), .ZN(n34) );
  NR2D0BWP12T30P140 U191 ( .A1(n54), .A2(n34), .ZN(n28) );
  AOI21D0BWP12T30P140 U192 ( .A1(n61), .A2(n79), .B(n28), .ZN(n59) );
  MUX2ND0BWP12T30P140 U193 ( .I0(n57), .I1(r_first[3]), .S(n28), .ZN(n55) );
  AN2D0BWP12T30P140 U194 ( .A1(n30), .A2(n29), .Z(n65) );
  OAI22D0BWP12T30P140 U195 ( .A1(n106), .A2(n55), .B1(r_last[1]), .B2(n65), 
        .ZN(n31) );
  AOI221D0BWP12T30P140 U196 ( .A1(n106), .A2(n55), .B1(n65), .B2(r_last[1]), 
        .C(n31), .ZN(n32) );
  OAI21D0BWP12T30P140 U197 ( .A1(n67), .A2(n59), .B(n32), .ZN(n33) );
  AOI211D0BWP12T30P140 U198 ( .A1(n67), .A2(n59), .B(n42), .C(n33), .ZN(n47)
         );
  INVD0BWP12T30P140 U199 ( .I(n34), .ZN(n36) );
  AOI32D0BWP12T30P140 U200 ( .A1(n37), .A2(n36), .A3(n67), .B1(n35), .B2(n34), 
        .ZN(n45) );
  NR2D0BWP12T30P140 U201 ( .A1(r_last[2]), .A2(r_first[2]), .ZN(n38) );
  OAI22D0BWP12T30P140 U202 ( .A1(n40), .A2(n39), .B1(n38), .B2(n63), .ZN(n41)
         );
  OAI211D0BWP12T30P140 U203 ( .A1(n68), .A2(n63), .B(n42), .C(n41), .ZN(n44)
         );
  OAI21D0BWP12T30P140 U204 ( .A1(n45), .A2(n44), .B(n43), .ZN(n46) );
  OAI211D0BWP12T30P140 U205 ( .A1(i_wr), .A2(n47), .B(n80), .C(n46), .ZN(n50)
         );
  INVD0BWP12T30P140 U206 ( .I(will_overflow), .ZN(n49) );
  AOI211D0BWP12T30P140 U207 ( .A1(n50), .A2(n49), .B(n48), .C(i_rst), .ZN(n434) );
  AOI21D0BWP12T30P140 U208 ( .A1(n80), .A2(will_overflow), .B(n51), .ZN(n52)
         );
  OR2D0BWP12T30P140 U209 ( .A1(n52), .A2(i_rst), .Z(n62) );
  ND2D0BWP12T30P140 U210 ( .A1(n53), .A2(n52), .ZN(n64) );
  AOI22D0BWP12T30P140 U211 ( .A1(r_first[0]), .A2(n62), .B1(n64), .B2(n54), 
        .ZN(n431) );
  INVD0BWP12T30P140 U212 ( .I(n55), .ZN(n56) );
  OAI22D0BWP12T30P140 U213 ( .A1(n57), .A2(n62), .B1(n56), .B2(n64), .ZN(n432)
         );
  OAI22D0BWP12T30P140 U214 ( .A1(r_last[1]), .A2(n70), .B1(n123), .B2(n71), 
        .ZN(n300) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n441), .A2(n447), .B1(fifo[0]), .B2(n441), 
        .ZN(n428) );
  ND2D0BWP12T30P140 U216 ( .A1(r_last[2]), .A2(r_last[1]), .ZN(n105) );
  NR2D0BWP12T30P140 U217 ( .A1(r_last[3]), .A2(n105), .ZN(n245) );
  AOI21D0BWP12T30P140 U218 ( .A1(r_last[3]), .A2(n105), .B(n245), .ZN(n58) );
  OAI22D0BWP12T30P140 U219 ( .A1(n58), .A2(n70), .B1(n71), .B2(n125), .ZN(n298) );
  INVD0BWP12T30P140 U220 ( .I(n59), .ZN(n60) );
  OAI22D0BWP12T30P140 U221 ( .A1(n61), .A2(n62), .B1(n60), .B2(n64), .ZN(n429)
         );
  OAI22D0BWP12T30P140 U222 ( .A1(n71), .A2(n106), .B1(n70), .B2(n125), .ZN(
        n435) );
  OAI22D0BWP12T30P140 U223 ( .A1(n65), .A2(n64), .B1(n63), .B2(n62), .ZN(n430)
         );
  MAOI22D0BWP12T30P140 U224 ( .A1(n441), .A2(n446), .B1(fifo[1]), .B2(n441), 
        .ZN(n421) );
  ND2D0BWP12T30P140 U225 ( .A1(r_last[2]), .A2(n68), .ZN(n103) );
  ND2D0BWP12T30P140 U226 ( .A1(r_last[1]), .A2(n67), .ZN(n104) );
  AO21D0BWP12T30P140 U227 ( .A1(n103), .A2(n104), .B(n70), .Z(n66) );
  OAI21D0BWP12T30P140 U228 ( .A1(n124), .A2(n71), .B(n66), .ZN(n299) );
  OAI22D0BWP12T30P140 U229 ( .A1(n67), .A2(n71), .B1(n70), .B2(n124), .ZN(n436) );
  OAI22D0BWP12T30P140 U230 ( .A1(n68), .A2(n71), .B1(n70), .B2(n123), .ZN(n438) );
  INVD0BWP12T30P140 U231 ( .I(w_last_plus_one[0]), .ZN(n69) );
  OAI22D0BWP12T30P140 U232 ( .A1(n74), .A2(n71), .B1(n70), .B2(n69), .ZN(n437)
         );
  MAOI22D0BWP12T30P140 U233 ( .A1(n441), .A2(n445), .B1(fifo[2]), .B2(n441), 
        .ZN(n422) );
  AOI21D0BWP12T30P140 U234 ( .A1(w_last_plus_one[0]), .A2(n73), .B(i_rst), 
        .ZN(n72) );
  OAI21D0BWP12T30P140 U235 ( .A1(n74), .A2(n73), .B(n72), .ZN(n439) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n441), .A2(n450), .B1(fifo[3]), .B2(n441), 
        .ZN(n423) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n441), .A2(n449), .B1(fifo[4]), .B2(n441), 
        .ZN(n424) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n441), .A2(n442), .B1(fifo[5]), .B2(n441), 
        .ZN(n425) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n75), .A2(n447), .B1(fifo[112]), .B2(n75), 
        .ZN(n316) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n76), .A2(n443), .B1(fifo[23]), .B2(n76), 
        .ZN(n411) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n77), .A2(n443), .B1(fifo[87]), .B2(n77), 
        .ZN(n347) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n444), .A2(n445), .B1(fifo[98]), .B2(n444), 
        .ZN(n326) );
  NR2D0BWP12T30P140 U243 ( .A1(n79), .A2(n78), .ZN(n297) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n297), .A2(n443), .B1(fifo[39]), .B2(n297), 
        .ZN(n395) );
  AOI31D0BWP12T30P140 U245 ( .A1(i_wr), .A2(will_overflow), .A3(n80), .B(o_err), .ZN(n81) );
  NR2D0BWP12T30P140 U246 ( .A1(i_rst), .A2(n81), .ZN(n433) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n444), .A2(n446), .B1(fifo[97]), .B2(n444), 
        .ZN(n325) );
  AOI21D0BWP12T30P140 U248 ( .A1(i_rd), .A2(n82), .B(will_underflow), .ZN(N143) );
  NR2D0BWP12T30P140 U249 ( .A1(n122), .A2(n83), .ZN(n92) );
  INVD0BWP12T30P140 U250 ( .I(n86), .ZN(n88) );
  INVD0BWP12T30P140 U251 ( .I(n87), .ZN(n85) );
  AOI221D0BWP12T30P140 U252 ( .A1(n88), .A2(n87), .B1(n86), .B2(n85), .C(n84), 
        .ZN(n89) );
  AOI21D0BWP12T30P140 U253 ( .A1(n117), .A2(n90), .B(n89), .ZN(n91) );
  OAI31D0BWP12T30P140 U254 ( .A1(n98), .A2(n92), .A3(n121), .B(n91), .ZN(N217)
         );
  MAOI22D0BWP12T30P140 U255 ( .A1(n444), .A2(n447), .B1(fifo[96]), .B2(n444), 
        .ZN(n332) );
  OAI21D0BWP12T30P140 U256 ( .A1(n95), .A2(n94), .B(n119), .ZN(n93) );
  AOI21D0BWP12T30P140 U257 ( .A1(n95), .A2(n94), .B(n93), .ZN(n96) );
  AOI31D0BWP12T30P140 U258 ( .A1(n98), .A2(n101), .A3(n97), .B(n96), .ZN(n99)
         );
  OAI21D0BWP12T30P140 U259 ( .A1(n101), .A2(n100), .B(n99), .ZN(N218) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n102), .A2(n443), .B1(fifo[95]), .B2(n102), 
        .ZN(n339) );
  NR3D0BWP12T30P140 U261 ( .A1(r_last[2]), .A2(r_last[1]), .A3(r_last[3]), 
        .ZN(n244) );
  NR2D0BWP12T30P140 U262 ( .A1(r_last[3]), .A2(n103), .ZN(n243) );
  AOI22D0BWP12T30P140 U263 ( .A1(n244), .A2(fifo[120]), .B1(n243), .B2(
        fifo[88]), .ZN(n110) );
  NR2D0BWP12T30P140 U264 ( .A1(r_last[3]), .A2(n104), .ZN(n246) );
  AOI22D0BWP12T30P140 U265 ( .A1(n246), .A2(fifo[104]), .B1(n245), .B2(
        fifo[72]), .ZN(n109) );
  NR3D0BWP12T30P140 U266 ( .A1(r_last[2]), .A2(r_last[1]), .A3(n106), .ZN(n248) );
  NR2D0BWP12T30P140 U267 ( .A1(n106), .A2(n103), .ZN(n247) );
  AOI22D0BWP12T30P140 U268 ( .A1(n248), .A2(fifo[56]), .B1(n247), .B2(fifo[24]), .ZN(n108) );
  NR2D0BWP12T30P140 U269 ( .A1(n106), .A2(n104), .ZN(n250) );
  NR2D0BWP12T30P140 U270 ( .A1(n106), .A2(n105), .ZN(n249) );
  AOI22D0BWP12T30P140 U271 ( .A1(n250), .A2(fifo[40]), .B1(n249), .B2(fifo[8]), 
        .ZN(n107) );
  ND4D0BWP12T30P140 U272 ( .A1(n110), .A2(n109), .A3(n108), .A4(n107), .ZN(
        n116) );
  AOI22D0BWP12T30P140 U273 ( .A1(n244), .A2(fifo[112]), .B1(n243), .B2(
        fifo[80]), .ZN(n114) );
  AOI22D0BWP12T30P140 U274 ( .A1(n246), .A2(fifo[96]), .B1(n245), .B2(fifo[64]), .ZN(n113) );
  AOI22D0BWP12T30P140 U275 ( .A1(n248), .A2(fifo[48]), .B1(n247), .B2(fifo[16]), .ZN(n112) );
  AOI22D0BWP12T30P140 U276 ( .A1(n250), .A2(fifo[32]), .B1(n249), .B2(fifo[0]), 
        .ZN(n111) );
  ND4D0BWP12T30P140 U277 ( .A1(n114), .A2(n113), .A3(n112), .A4(n111), .ZN(
        n115) );
  CKMUX2D0BWP12T30P140 U278 ( .I0(n116), .I1(n115), .S(r_last[0]), .Z(N128) );
  AOI22D0BWP12T30P140 U279 ( .A1(n119), .A2(n118), .B1(n117), .B2(n122), .ZN(
        n120) );
  OAI21D0BWP12T30P140 U280 ( .A1(n122), .A2(n121), .B(n120), .ZN(N216) );
  NR3D0BWP12T30P140 U281 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[2]), 
        .A3(w_last_plus_one[1]), .ZN(n282) );
  NR3D0BWP12T30P140 U282 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[1]), 
        .A3(n124), .ZN(n281) );
  AOI22D0BWP12T30P140 U283 ( .A1(fifo[127]), .A2(n282), .B1(fifo[95]), .B2(
        n281), .ZN(n129) );
  NR3D0BWP12T30P140 U284 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[2]), 
        .A3(n123), .ZN(n284) );
  NR3D0BWP12T30P140 U285 ( .A1(w_last_plus_one[3]), .A2(n124), .A3(n123), .ZN(
        n283) );
  AOI22D0BWP12T30P140 U286 ( .A1(fifo[111]), .A2(n284), .B1(fifo[79]), .B2(
        n283), .ZN(n128) );
  NR3D0BWP12T30P140 U287 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(n125), .ZN(n286) );
  NR3D0BWP12T30P140 U288 ( .A1(w_last_plus_one[1]), .A2(n124), .A3(n125), .ZN(
        n285) );
  AOI22D0BWP12T30P140 U289 ( .A1(fifo[63]), .A2(n286), .B1(fifo[31]), .B2(n285), .ZN(n127) );
  NR3D0BWP12T30P140 U290 ( .A1(w_last_plus_one[2]), .A2(n125), .A3(n123), .ZN(
        n288) );
  NR3D0BWP12T30P140 U291 ( .A1(n125), .A2(n124), .A3(n123), .ZN(n287) );
  AOI22D0BWP12T30P140 U292 ( .A1(fifo[47]), .A2(n288), .B1(fifo[15]), .B2(n287), .ZN(n126) );
  ND4D0BWP12T30P140 U293 ( .A1(n129), .A2(n128), .A3(n127), .A4(n126), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U294 ( .A1(fifo[119]), .A2(n282), .B1(fifo[87]), .B2(
        n281), .ZN(n133) );
  AOI22D0BWP12T30P140 U295 ( .A1(fifo[103]), .A2(n284), .B1(fifo[71]), .B2(
        n283), .ZN(n132) );
  AOI22D0BWP12T30P140 U296 ( .A1(fifo[55]), .A2(n286), .B1(fifo[23]), .B2(n285), .ZN(n131) );
  AOI22D0BWP12T30P140 U297 ( .A1(fifo[39]), .A2(n288), .B1(fifo[7]), .B2(n287), 
        .ZN(n130) );
  ND4D0BWP12T30P140 U298 ( .A1(n133), .A2(n132), .A3(n131), .A4(n130), .ZN(
        n134) );
  CKMUX2D0BWP12T30P140 U299 ( .I0(n135), .I1(n134), .S(w_last_plus_one[0]), 
        .Z(N129) );
  AOI22D0BWP12T30P140 U300 ( .A1(fifo[120]), .A2(n282), .B1(fifo[88]), .B2(
        n281), .ZN(n139) );
  AOI22D0BWP12T30P140 U301 ( .A1(fifo[104]), .A2(n284), .B1(fifo[72]), .B2(
        n283), .ZN(n138) );
  AOI22D0BWP12T30P140 U302 ( .A1(fifo[56]), .A2(n286), .B1(fifo[24]), .B2(n285), .ZN(n137) );
  AOI22D0BWP12T30P140 U303 ( .A1(fifo[40]), .A2(n288), .B1(fifo[8]), .B2(n287), 
        .ZN(n136) );
  ND4D0BWP12T30P140 U304 ( .A1(n139), .A2(n138), .A3(n137), .A4(n136), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U305 ( .A1(fifo[112]), .A2(n282), .B1(fifo[80]), .B2(
        n281), .ZN(n143) );
  AOI22D0BWP12T30P140 U306 ( .A1(fifo[96]), .A2(n284), .B1(fifo[64]), .B2(n283), .ZN(n142) );
  AOI22D0BWP12T30P140 U307 ( .A1(fifo[48]), .A2(n286), .B1(fifo[16]), .B2(n285), .ZN(n141) );
  AOI22D0BWP12T30P140 U308 ( .A1(fifo[32]), .A2(n288), .B1(fifo[0]), .B2(n287), 
        .ZN(n140) );
  ND4D0BWP12T30P140 U309 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .ZN(
        n144) );
  CKMUX2D0BWP12T30P140 U310 ( .I0(n145), .I1(n144), .S(w_last_plus_one[0]), 
        .Z(N136) );
  INVD0BWP12T30P140 U311 ( .I(osrc[1]), .ZN(n208) );
  AN2D0BWP12T30P140 U312 ( .A1(osrc[0]), .A2(osrc[1]), .Z(n206) );
  NR2D0BWP12T30P140 U313 ( .A1(osrc[0]), .A2(n208), .ZN(n207) );
  AO222D0BWP12T30P140 U314 ( .A1(n208), .A2(r_data[0]), .B1(n206), .B2(
        fifo_next[0]), .C1(n207), .C2(fifo_here[0]), .Z(o_data[0]) );
  AOI22D0BWP12T30P140 U315 ( .A1(n244), .A2(fifo[121]), .B1(n243), .B2(
        fifo[89]), .ZN(n149) );
  AOI22D0BWP12T30P140 U316 ( .A1(n246), .A2(fifo[105]), .B1(n245), .B2(
        fifo[73]), .ZN(n148) );
  AOI22D0BWP12T30P140 U317 ( .A1(n248), .A2(fifo[57]), .B1(n247), .B2(fifo[25]), .ZN(n147) );
  AOI22D0BWP12T30P140 U318 ( .A1(n250), .A2(fifo[41]), .B1(n249), .B2(fifo[9]), 
        .ZN(n146) );
  ND4D0BWP12T30P140 U319 ( .A1(n149), .A2(n148), .A3(n147), .A4(n146), .ZN(
        n155) );
  AOI22D0BWP12T30P140 U320 ( .A1(n244), .A2(fifo[113]), .B1(n243), .B2(
        fifo[81]), .ZN(n153) );
  AOI22D0BWP12T30P140 U321 ( .A1(n246), .A2(fifo[97]), .B1(n245), .B2(fifo[65]), .ZN(n152) );
  AOI22D0BWP12T30P140 U322 ( .A1(n248), .A2(fifo[49]), .B1(n247), .B2(fifo[17]), .ZN(n151) );
  AOI22D0BWP12T30P140 U323 ( .A1(n250), .A2(fifo[33]), .B1(n249), .B2(fifo[1]), 
        .ZN(n150) );
  ND4D0BWP12T30P140 U324 ( .A1(n153), .A2(n152), .A3(n151), .A4(n150), .ZN(
        n154) );
  CKMUX2D0BWP12T30P140 U325 ( .I0(n155), .I1(n154), .S(r_last[0]), .Z(N127) );
  AO222D0BWP12T30P140 U326 ( .A1(n208), .A2(r_data[1]), .B1(n207), .B2(
        fifo_here[1]), .C1(fifo_next[1]), .C2(n206), .Z(o_data[1]) );
  AOI22D0BWP12T30P140 U327 ( .A1(fifo[126]), .A2(n282), .B1(fifo[94]), .B2(
        n281), .ZN(n159) );
  AOI22D0BWP12T30P140 U328 ( .A1(fifo[110]), .A2(n284), .B1(fifo[78]), .B2(
        n283), .ZN(n158) );
  AOI22D0BWP12T30P140 U329 ( .A1(fifo[62]), .A2(n286), .B1(fifo[30]), .B2(n285), .ZN(n157) );
  AOI22D0BWP12T30P140 U330 ( .A1(fifo[46]), .A2(n288), .B1(fifo[14]), .B2(n287), .ZN(n156) );
  ND4D0BWP12T30P140 U331 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .ZN(
        n165) );
  AOI22D0BWP12T30P140 U332 ( .A1(fifo[118]), .A2(n282), .B1(fifo[86]), .B2(
        n281), .ZN(n163) );
  AOI22D0BWP12T30P140 U333 ( .A1(fifo[102]), .A2(n284), .B1(fifo[70]), .B2(
        n283), .ZN(n162) );
  AOI22D0BWP12T30P140 U334 ( .A1(fifo[54]), .A2(n286), .B1(fifo[22]), .B2(n285), .ZN(n161) );
  AOI22D0BWP12T30P140 U335 ( .A1(fifo[38]), .A2(n288), .B1(fifo[6]), .B2(n287), 
        .ZN(n160) );
  ND4D0BWP12T30P140 U336 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .ZN(
        n164) );
  CKMUX2D0BWP12T30P140 U337 ( .I0(n165), .I1(n164), .S(w_last_plus_one[0]), 
        .Z(N130) );
  AO222D0BWP12T30P140 U338 ( .A1(n208), .A2(r_data[2]), .B1(n207), .B2(
        fifo_here[2]), .C1(fifo_next[2]), .C2(n206), .Z(o_data[2]) );
  AOI22D0BWP12T30P140 U339 ( .A1(n244), .A2(fifo[122]), .B1(n243), .B2(
        fifo[90]), .ZN(n169) );
  AOI22D0BWP12T30P140 U340 ( .A1(n246), .A2(fifo[106]), .B1(n245), .B2(
        fifo[74]), .ZN(n168) );
  AOI22D0BWP12T30P140 U341 ( .A1(n248), .A2(fifo[58]), .B1(n247), .B2(fifo[26]), .ZN(n167) );
  AOI22D0BWP12T30P140 U342 ( .A1(n250), .A2(fifo[42]), .B1(n249), .B2(fifo[10]), .ZN(n166) );
  ND4D0BWP12T30P140 U343 ( .A1(n169), .A2(n168), .A3(n167), .A4(n166), .ZN(
        n175) );
  AOI22D0BWP12T30P140 U344 ( .A1(n244), .A2(fifo[114]), .B1(n243), .B2(
        fifo[82]), .ZN(n173) );
  AOI22D0BWP12T30P140 U345 ( .A1(n246), .A2(fifo[98]), .B1(n245), .B2(fifo[66]), .ZN(n172) );
  AOI22D0BWP12T30P140 U346 ( .A1(n248), .A2(fifo[50]), .B1(n247), .B2(fifo[18]), .ZN(n171) );
  AOI22D0BWP12T30P140 U347 ( .A1(n250), .A2(fifo[34]), .B1(n249), .B2(fifo[2]), 
        .ZN(n170) );
  ND4D0BWP12T30P140 U348 ( .A1(n173), .A2(n172), .A3(n171), .A4(n170), .ZN(
        n174) );
  CKMUX2D0BWP12T30P140 U349 ( .I0(n175), .I1(n174), .S(r_last[0]), .Z(N126) );
  AO222D0BWP12T30P140 U350 ( .A1(n208), .A2(r_data[3]), .B1(n207), .B2(
        fifo_here[3]), .C1(fifo_next[3]), .C2(n206), .Z(o_data[3]) );
  AO222D0BWP12T30P140 U351 ( .A1(n208), .A2(r_data[4]), .B1(n207), .B2(
        fifo_here[4]), .C1(fifo_next[4]), .C2(n206), .Z(o_data[4]) );
  AOI22D0BWP12T30P140 U352 ( .A1(n244), .A2(fifo[123]), .B1(n243), .B2(
        fifo[91]), .ZN(n179) );
  AOI22D0BWP12T30P140 U353 ( .A1(n246), .A2(fifo[107]), .B1(n245), .B2(
        fifo[75]), .ZN(n178) );
  AOI22D0BWP12T30P140 U354 ( .A1(n248), .A2(fifo[59]), .B1(n247), .B2(fifo[27]), .ZN(n177) );
  AOI22D0BWP12T30P140 U355 ( .A1(n250), .A2(fifo[43]), .B1(n249), .B2(fifo[11]), .ZN(n176) );
  ND4D0BWP12T30P140 U356 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .ZN(
        n185) );
  AOI22D0BWP12T30P140 U357 ( .A1(n244), .A2(fifo[115]), .B1(n243), .B2(
        fifo[83]), .ZN(n183) );
  AOI22D0BWP12T30P140 U358 ( .A1(n246), .A2(fifo[99]), .B1(n245), .B2(fifo[67]), .ZN(n182) );
  AOI22D0BWP12T30P140 U359 ( .A1(n248), .A2(fifo[51]), .B1(n247), .B2(fifo[19]), .ZN(n181) );
  AOI22D0BWP12T30P140 U360 ( .A1(n250), .A2(fifo[35]), .B1(n249), .B2(fifo[3]), 
        .ZN(n180) );
  ND4D0BWP12T30P140 U361 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .ZN(
        n184) );
  CKMUX2D0BWP12T30P140 U362 ( .I0(n185), .I1(n184), .S(r_last[0]), .Z(N125) );
  AO222D0BWP12T30P140 U363 ( .A1(n208), .A2(r_data[5]), .B1(n207), .B2(
        fifo_here[5]), .C1(fifo_next[5]), .C2(n206), .Z(o_data[5]) );
  AOI22D0BWP12T30P140 U364 ( .A1(fifo[125]), .A2(n282), .B1(fifo[93]), .B2(
        n281), .ZN(n189) );
  AOI22D0BWP12T30P140 U365 ( .A1(fifo[109]), .A2(n284), .B1(fifo[77]), .B2(
        n283), .ZN(n188) );
  AOI22D0BWP12T30P140 U366 ( .A1(fifo[61]), .A2(n286), .B1(fifo[29]), .B2(n285), .ZN(n187) );
  AOI22D0BWP12T30P140 U367 ( .A1(fifo[45]), .A2(n288), .B1(fifo[13]), .B2(n287), .ZN(n186) );
  ND4D0BWP12T30P140 U368 ( .A1(n189), .A2(n188), .A3(n187), .A4(n186), .ZN(
        n195) );
  AOI22D0BWP12T30P140 U369 ( .A1(fifo[117]), .A2(n282), .B1(fifo[85]), .B2(
        n281), .ZN(n193) );
  AOI22D0BWP12T30P140 U370 ( .A1(fifo[101]), .A2(n284), .B1(fifo[69]), .B2(
        n283), .ZN(n192) );
  AOI22D0BWP12T30P140 U371 ( .A1(fifo[53]), .A2(n286), .B1(fifo[21]), .B2(n285), .ZN(n191) );
  AOI22D0BWP12T30P140 U372 ( .A1(fifo[37]), .A2(n288), .B1(fifo[5]), .B2(n287), 
        .ZN(n190) );
  ND4D0BWP12T30P140 U373 ( .A1(n193), .A2(n192), .A3(n191), .A4(n190), .ZN(
        n194) );
  CKMUX2D0BWP12T30P140 U374 ( .I0(n195), .I1(n194), .S(w_last_plus_one[0]), 
        .Z(N131) );
  AO222D0BWP12T30P140 U375 ( .A1(n208), .A2(r_data[6]), .B1(n207), .B2(
        fifo_here[6]), .C1(fifo_next[6]), .C2(n206), .Z(o_data[6]) );
  AOI22D0BWP12T30P140 U376 ( .A1(n244), .A2(fifo[124]), .B1(n243), .B2(
        fifo[92]), .ZN(n199) );
  AOI22D0BWP12T30P140 U377 ( .A1(n246), .A2(fifo[108]), .B1(n245), .B2(
        fifo[76]), .ZN(n198) );
  AOI22D0BWP12T30P140 U378 ( .A1(n248), .A2(fifo[60]), .B1(n247), .B2(fifo[28]), .ZN(n197) );
  AOI22D0BWP12T30P140 U379 ( .A1(n250), .A2(fifo[44]), .B1(n249), .B2(fifo[12]), .ZN(n196) );
  ND4D0BWP12T30P140 U380 ( .A1(n199), .A2(n198), .A3(n197), .A4(n196), .ZN(
        n205) );
  AOI22D0BWP12T30P140 U381 ( .A1(n244), .A2(fifo[116]), .B1(n243), .B2(
        fifo[84]), .ZN(n203) );
  AOI22D0BWP12T30P140 U382 ( .A1(n246), .A2(fifo[100]), .B1(n245), .B2(
        fifo[68]), .ZN(n202) );
  AOI22D0BWP12T30P140 U383 ( .A1(n248), .A2(fifo[52]), .B1(n247), .B2(fifo[20]), .ZN(n201) );
  AOI22D0BWP12T30P140 U384 ( .A1(n250), .A2(fifo[36]), .B1(n249), .B2(fifo[4]), 
        .ZN(n200) );
  ND4D0BWP12T30P140 U385 ( .A1(n203), .A2(n202), .A3(n201), .A4(n200), .ZN(
        n204) );
  CKMUX2D0BWP12T30P140 U386 ( .I0(n205), .I1(n204), .S(r_last[0]), .Z(N124) );
  AO222D0BWP12T30P140 U387 ( .A1(n208), .A2(r_data[7]), .B1(n207), .B2(
        fifo_here[7]), .C1(fifo_next[7]), .C2(n206), .Z(o_data[7]) );
  AOI22D0BWP12T30P140 U388 ( .A1(n244), .A2(fifo[125]), .B1(n243), .B2(
        fifo[93]), .ZN(n212) );
  AOI22D0BWP12T30P140 U389 ( .A1(n246), .A2(fifo[109]), .B1(n245), .B2(
        fifo[77]), .ZN(n211) );
  AOI22D0BWP12T30P140 U390 ( .A1(n248), .A2(fifo[61]), .B1(n247), .B2(fifo[29]), .ZN(n210) );
  AOI22D0BWP12T30P140 U391 ( .A1(n250), .A2(fifo[45]), .B1(n249), .B2(fifo[13]), .ZN(n209) );
  ND4D0BWP12T30P140 U392 ( .A1(n212), .A2(n211), .A3(n210), .A4(n209), .ZN(
        n218) );
  AOI22D0BWP12T30P140 U393 ( .A1(n244), .A2(fifo[117]), .B1(n243), .B2(
        fifo[85]), .ZN(n216) );
  AOI22D0BWP12T30P140 U394 ( .A1(n246), .A2(fifo[101]), .B1(n245), .B2(
        fifo[69]), .ZN(n215) );
  AOI22D0BWP12T30P140 U395 ( .A1(n248), .A2(fifo[53]), .B1(n247), .B2(fifo[21]), .ZN(n214) );
  AOI22D0BWP12T30P140 U396 ( .A1(n250), .A2(fifo[37]), .B1(n249), .B2(fifo[5]), 
        .ZN(n213) );
  ND4D0BWP12T30P140 U397 ( .A1(n216), .A2(n215), .A3(n214), .A4(n213), .ZN(
        n217) );
  CKMUX2D0BWP12T30P140 U398 ( .I0(n218), .I1(n217), .S(r_last[0]), .Z(N123) );
  AOI22D0BWP12T30P140 U399 ( .A1(fifo[124]), .A2(n282), .B1(fifo[92]), .B2(
        n281), .ZN(n222) );
  AOI22D0BWP12T30P140 U400 ( .A1(fifo[108]), .A2(n284), .B1(fifo[76]), .B2(
        n283), .ZN(n221) );
  AOI22D0BWP12T30P140 U401 ( .A1(fifo[60]), .A2(n286), .B1(fifo[28]), .B2(n285), .ZN(n220) );
  AOI22D0BWP12T30P140 U402 ( .A1(fifo[44]), .A2(n288), .B1(fifo[12]), .B2(n287), .ZN(n219) );
  ND4D0BWP12T30P140 U403 ( .A1(n222), .A2(n221), .A3(n220), .A4(n219), .ZN(
        n228) );
  AOI22D0BWP12T30P140 U404 ( .A1(fifo[116]), .A2(n282), .B1(fifo[84]), .B2(
        n281), .ZN(n226) );
  AOI22D0BWP12T30P140 U405 ( .A1(fifo[100]), .A2(n284), .B1(fifo[68]), .B2(
        n283), .ZN(n225) );
  AOI22D0BWP12T30P140 U406 ( .A1(fifo[52]), .A2(n286), .B1(fifo[20]), .B2(n285), .ZN(n224) );
  AOI22D0BWP12T30P140 U407 ( .A1(fifo[36]), .A2(n288), .B1(fifo[4]), .B2(n287), 
        .ZN(n223) );
  ND4D0BWP12T30P140 U408 ( .A1(n226), .A2(n225), .A3(n224), .A4(n223), .ZN(
        n227) );
  CKMUX2D0BWP12T30P140 U409 ( .I0(n228), .I1(n227), .S(w_last_plus_one[0]), 
        .Z(N132) );
  AOI22D0BWP12T30P140 U410 ( .A1(n244), .A2(fifo[126]), .B1(n243), .B2(
        fifo[94]), .ZN(n232) );
  AOI22D0BWP12T30P140 U411 ( .A1(n246), .A2(fifo[110]), .B1(n245), .B2(
        fifo[78]), .ZN(n231) );
  AOI22D0BWP12T30P140 U412 ( .A1(n248), .A2(fifo[62]), .B1(n247), .B2(fifo[30]), .ZN(n230) );
  AOI22D0BWP12T30P140 U413 ( .A1(n250), .A2(fifo[46]), .B1(n249), .B2(fifo[14]), .ZN(n229) );
  ND4D0BWP12T30P140 U414 ( .A1(n232), .A2(n231), .A3(n230), .A4(n229), .ZN(
        n238) );
  AOI22D0BWP12T30P140 U415 ( .A1(n244), .A2(fifo[118]), .B1(n243), .B2(
        fifo[86]), .ZN(n236) );
  AOI22D0BWP12T30P140 U416 ( .A1(n246), .A2(fifo[102]), .B1(n245), .B2(
        fifo[70]), .ZN(n235) );
  AOI22D0BWP12T30P140 U417 ( .A1(n248), .A2(fifo[54]), .B1(n247), .B2(fifo[22]), .ZN(n234) );
  AOI22D0BWP12T30P140 U418 ( .A1(n250), .A2(fifo[38]), .B1(n249), .B2(fifo[6]), 
        .ZN(n233) );
  ND4D0BWP12T30P140 U419 ( .A1(n236), .A2(n235), .A3(n234), .A4(n233), .ZN(
        n237) );
  CKMUX2D0BWP12T30P140 U420 ( .I0(n238), .I1(n237), .S(r_last[0]), .Z(N122) );
  AOI22D0BWP12T30P140 U421 ( .A1(n244), .A2(fifo[127]), .B1(n243), .B2(
        fifo[95]), .ZN(n242) );
  AOI22D0BWP12T30P140 U422 ( .A1(n246), .A2(fifo[111]), .B1(n245), .B2(
        fifo[79]), .ZN(n241) );
  AOI22D0BWP12T30P140 U423 ( .A1(n248), .A2(fifo[63]), .B1(n247), .B2(fifo[31]), .ZN(n240) );
  AOI22D0BWP12T30P140 U424 ( .A1(n250), .A2(fifo[47]), .B1(n249), .B2(fifo[15]), .ZN(n239) );
  ND4D0BWP12T30P140 U425 ( .A1(n242), .A2(n241), .A3(n240), .A4(n239), .ZN(
        n256) );
  AOI22D0BWP12T30P140 U426 ( .A1(fifo[119]), .A2(n244), .B1(fifo[87]), .B2(
        n243), .ZN(n254) );
  AOI22D0BWP12T30P140 U427 ( .A1(fifo[103]), .A2(n246), .B1(n245), .B2(
        fifo[71]), .ZN(n253) );
  AOI22D0BWP12T30P140 U428 ( .A1(fifo[55]), .A2(n248), .B1(fifo[23]), .B2(n247), .ZN(n252) );
  AOI22D0BWP12T30P140 U429 ( .A1(fifo[39]), .A2(n250), .B1(fifo[7]), .B2(n249), 
        .ZN(n251) );
  ND4D0BWP12T30P140 U430 ( .A1(n254), .A2(n253), .A3(n252), .A4(n251), .ZN(
        n255) );
  CKMUX2D0BWP12T30P140 U431 ( .I0(n256), .I1(n255), .S(r_last[0]), .Z(N121) );
  AOI22D0BWP12T30P140 U432 ( .A1(fifo[123]), .A2(n282), .B1(fifo[91]), .B2(
        n281), .ZN(n260) );
  AOI22D0BWP12T30P140 U433 ( .A1(fifo[107]), .A2(n284), .B1(fifo[75]), .B2(
        n283), .ZN(n259) );
  AOI22D0BWP12T30P140 U434 ( .A1(fifo[59]), .A2(n286), .B1(fifo[27]), .B2(n285), .ZN(n258) );
  AOI22D0BWP12T30P140 U435 ( .A1(fifo[43]), .A2(n288), .B1(fifo[11]), .B2(n287), .ZN(n257) );
  ND4D0BWP12T30P140 U436 ( .A1(n260), .A2(n259), .A3(n258), .A4(n257), .ZN(
        n266) );
  AOI22D0BWP12T30P140 U437 ( .A1(fifo[115]), .A2(n282), .B1(fifo[83]), .B2(
        n281), .ZN(n264) );
  AOI22D0BWP12T30P140 U438 ( .A1(fifo[99]), .A2(n284), .B1(fifo[67]), .B2(n283), .ZN(n263) );
  AOI22D0BWP12T30P140 U439 ( .A1(fifo[51]), .A2(n286), .B1(fifo[19]), .B2(n285), .ZN(n262) );
  AOI22D0BWP12T30P140 U440 ( .A1(fifo[35]), .A2(n288), .B1(fifo[3]), .B2(n287), 
        .ZN(n261) );
  ND4D0BWP12T30P140 U441 ( .A1(n264), .A2(n263), .A3(n262), .A4(n261), .ZN(
        n265) );
  CKMUX2D0BWP12T30P140 U442 ( .I0(n266), .I1(n265), .S(w_last_plus_one[0]), 
        .Z(N133) );
  AOI22D0BWP12T30P140 U443 ( .A1(fifo[122]), .A2(n282), .B1(fifo[90]), .B2(
        n281), .ZN(n270) );
  AOI22D0BWP12T30P140 U444 ( .A1(fifo[106]), .A2(n284), .B1(fifo[74]), .B2(
        n283), .ZN(n269) );
  AOI22D0BWP12T30P140 U445 ( .A1(fifo[58]), .A2(n286), .B1(fifo[26]), .B2(n285), .ZN(n268) );
  AOI22D0BWP12T30P140 U446 ( .A1(fifo[42]), .A2(n288), .B1(fifo[10]), .B2(n287), .ZN(n267) );
  ND4D0BWP12T30P140 U447 ( .A1(n270), .A2(n269), .A3(n268), .A4(n267), .ZN(
        n276) );
  AOI22D0BWP12T30P140 U448 ( .A1(fifo[114]), .A2(n282), .B1(fifo[82]), .B2(
        n281), .ZN(n274) );
  AOI22D0BWP12T30P140 U449 ( .A1(fifo[98]), .A2(n284), .B1(fifo[66]), .B2(n283), .ZN(n273) );
  AOI22D0BWP12T30P140 U450 ( .A1(fifo[50]), .A2(n286), .B1(fifo[18]), .B2(n285), .ZN(n272) );
  AOI22D0BWP12T30P140 U451 ( .A1(fifo[34]), .A2(n288), .B1(fifo[2]), .B2(n287), 
        .ZN(n271) );
  ND4D0BWP12T30P140 U452 ( .A1(n274), .A2(n273), .A3(n272), .A4(n271), .ZN(
        n275) );
  CKMUX2D0BWP12T30P140 U453 ( .I0(n276), .I1(n275), .S(w_last_plus_one[0]), 
        .Z(N134) );
  AOI22D0BWP12T30P140 U454 ( .A1(fifo[121]), .A2(n282), .B1(fifo[89]), .B2(
        n281), .ZN(n280) );
  AOI22D0BWP12T30P140 U455 ( .A1(fifo[105]), .A2(n284), .B1(fifo[73]), .B2(
        n283), .ZN(n279) );
  AOI22D0BWP12T30P140 U456 ( .A1(fifo[57]), .A2(n286), .B1(fifo[25]), .B2(n285), .ZN(n278) );
  AOI22D0BWP12T30P140 U457 ( .A1(fifo[41]), .A2(n288), .B1(fifo[9]), .B2(n287), 
        .ZN(n277) );
  ND4D0BWP12T30P140 U458 ( .A1(n280), .A2(n279), .A3(n278), .A4(n277), .ZN(
        n294) );
  AOI22D0BWP12T30P140 U459 ( .A1(fifo[113]), .A2(n282), .B1(fifo[81]), .B2(
        n281), .ZN(n292) );
  AOI22D0BWP12T30P140 U460 ( .A1(fifo[97]), .A2(n284), .B1(fifo[65]), .B2(n283), .ZN(n291) );
  AOI22D0BWP12T30P140 U461 ( .A1(fifo[49]), .A2(n286), .B1(fifo[17]), .B2(n285), .ZN(n290) );
  AOI22D0BWP12T30P140 U462 ( .A1(fifo[33]), .A2(n288), .B1(fifo[1]), .B2(n287), 
        .ZN(n289) );
  ND4D0BWP12T30P140 U463 ( .A1(n292), .A2(n291), .A3(n290), .A4(n289), .ZN(
        n293) );
  CKMUX2D0BWP12T30P140 U464 ( .I0(n294), .I1(n293), .S(w_last_plus_one[0]), 
        .Z(N135) );
  MAOI22D0BWP12T30P140 U465 ( .A1(n297), .A2(n447), .B1(fifo[32]), .B2(n297), 
        .ZN(n396) );
  MAOI22D0BWP12T30P140 U466 ( .A1(n297), .A2(n446), .B1(fifo[33]), .B2(n297), 
        .ZN(n389) );
  MAOI22D0BWP12T30P140 U467 ( .A1(n297), .A2(n445), .B1(fifo[34]), .B2(n297), 
        .ZN(n390) );
  MAOI22D0BWP12T30P140 U468 ( .A1(n297), .A2(n450), .B1(fifo[35]), .B2(n297), 
        .ZN(n391) );
  MAOI22D0BWP12T30P140 U469 ( .A1(n297), .A2(n449), .B1(fifo[36]), .B2(n297), 
        .ZN(n392) );
  MAOI22D0BWP12T30P140 U470 ( .A1(n297), .A2(n442), .B1(fifo[37]), .B2(n297), 
        .ZN(n393) );
  MAOI22D0BWP12T30P140 U471 ( .A1(n297), .A2(n295), .B1(fifo[38]), .B2(n297), 
        .ZN(n394) );
  MAOI22D0BWP12T30P140 U472 ( .A1(n440), .A2(n447), .B1(fifo[40]), .B2(n440), 
        .ZN(n388) );
  MAOI22D0BWP12T30P140 U473 ( .A1(n440), .A2(n446), .B1(fifo[41]), .B2(n440), 
        .ZN(n381) );
  MAOI22D0BWP12T30P140 U474 ( .A1(n440), .A2(n445), .B1(fifo[42]), .B2(n440), 
        .ZN(n382) );
  MAOI22D0BWP12T30P140 U475 ( .A1(n440), .A2(n450), .B1(fifo[43]), .B2(n440), 
        .ZN(n383) );
  MAOI22D0BWP12T30P140 U476 ( .A1(n451), .A2(n445), .B1(fifo[50]), .B2(n451), 
        .ZN(n374) );
  MAOI22D0BWP12T30P140 U477 ( .A1(n441), .A2(n443), .B1(fifo[7]), .B2(n441), 
        .ZN(n427) );
  MAOI22D0BWP12T30P140 U478 ( .A1(n444), .A2(n442), .B1(fifo[101]), .B2(n444), 
        .ZN(n329) );
  MAOI22D0BWP12T30P140 U479 ( .A1(n444), .A2(n443), .B1(fifo[103]), .B2(n444), 
        .ZN(n331) );
  MAOI22D0BWP12T30P140 U480 ( .A1(n444), .A2(n449), .B1(fifo[100]), .B2(n444), 
        .ZN(n328) );
  MAOI22D0BWP12T30P140 U481 ( .A1(n444), .A2(n450), .B1(fifo[99]), .B2(n444), 
        .ZN(n327) );
  MAOI22D0BWP12T30P140 U482 ( .A1(n448), .A2(n445), .B1(fifo[58]), .B2(n448), 
        .ZN(n366) );
  MAOI22D0BWP12T30P140 U483 ( .A1(n448), .A2(n446), .B1(fifo[57]), .B2(n448), 
        .ZN(n365) );
  MAOI22D0BWP12T30P140 U484 ( .A1(n448), .A2(n447), .B1(fifo[56]), .B2(n448), 
        .ZN(n372) );
  MAOI22D0BWP12T30P140 U485 ( .A1(n451), .A2(n449), .B1(fifo[52]), .B2(n451), 
        .ZN(n376) );
  MAOI22D0BWP12T30P140 U486 ( .A1(n451), .A2(n450), .B1(fifo[51]), .B2(n451), 
        .ZN(n375) );
  CKBD0BWP12T30P140 U487 ( .I(i_clk), .Z(n459) );
  CKBD0BWP12T30P140 U488 ( .I(i_clk), .Z(n460) );
  CKBD0BWP12T30P140 U489 ( .I(i_clk), .Z(n457) );
  CKBD0BWP12T30P140 U490 ( .I(i_clk), .Z(n458) );
  CKBD0BWP12T30P140 U491 ( .I(i_clk), .Z(n456) );
  CKBD0BWP12T30P140 U492 ( .I(i_clk), .Z(n454) );
  CKBD0BWP12T30P140 U493 ( .I(i_clk), .Z(n461) );
  CKBD0BWP12T30P140 U494 ( .I(i_clk), .Z(n462) );
  CKBD0BWP12T30P140 U495 ( .I(i_clk), .Z(n455) );
endmodule


module ufifo_4_0 ( i_clk, i_rst, i_wr, i_data, o_empty_n, i_rd, o_data, 
        o_status, o_err );
  input [7:0] i_data;
  output [7:0] o_data;
  output [15:0] o_status;
  input i_clk, i_rst, i_wr, i_rd;
  output o_empty_n, o_err;
  wire   will_overflow, will_underflow, N98, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N140, N141, N200, N201, N202, N203, n285, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n286, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450;
  wire   [3:0] r_first;
  wire   [3:0] w_last_plus_one;
  wire   [3:0] r_last;
  wire   [127:0] fifo;
  wire   [7:0] fifo_here;
  wire   [7:0] fifo_next;
  wire   [7:0] r_data;
  wire   [1:0] osrc;

  DFQD2BWP12T30P140 r_data_reg_4_ ( .D(i_data[4]), .CP(n450), .Q(r_data[4]) );
  DFQD2BWP12T30P140 r_data_reg_3_ ( .D(i_data[3]), .CP(n450), .Q(r_data[3]) );
  DFQD2BWP12T30P140 r_data_reg_1_ ( .D(i_data[1]), .CP(n450), .Q(r_data[1]) );
  DFQD2BWP12T30P140 osrc_reg_1_ ( .D(N141), .CP(n450), .Q(osrc[1]) );
  DFQD2BWP12T30P140 fifo_next_reg_7_ ( .D(N127), .CP(n441), .Q(fifo_next[7])
         );
  DFQD2BWP12T30P140 fifo_next_reg_6_ ( .D(N128), .CP(n441), .Q(fifo_next[6])
         );
  DFQD2BWP12T30P140 fifo_next_reg_5_ ( .D(N129), .CP(n441), .Q(fifo_next[5])
         );
  DFQD2BWP12T30P140 fifo_next_reg_4_ ( .D(N130), .CP(n441), .Q(fifo_next[4])
         );
  DFQD2BWP12T30P140 fifo_next_reg_3_ ( .D(N131), .CP(n441), .Q(fifo_next[3])
         );
  DFQD2BWP12T30P140 fifo_next_reg_2_ ( .D(N132), .CP(n441), .Q(fifo_next[2])
         );
  DFQD2BWP12T30P140 fifo_next_reg_1_ ( .D(N133), .CP(n441), .Q(fifo_next[1])
         );
  DFQD2BWP12T30P140 r_data_reg_7_ ( .D(i_data[7]), .CP(n441), .Q(r_data[7]) );
  DFQD2BWP12T30P140 r_data_reg_6_ ( .D(i_data[6]), .CP(n441), .Q(r_data[6]) );
  DFQD2BWP12T30P140 r_data_reg_5_ ( .D(i_data[5]), .CP(n441), .Q(r_data[5]) );
  DFQD2BWP12T30P140 fifo_here_reg_6_ ( .D(N120), .CP(n442), .Q(fifo_here[6])
         );
  DFQD2BWP12T30P140 fifo_here_reg_5_ ( .D(N121), .CP(n442), .Q(fifo_here[5])
         );
  DFQD2BWP12T30P140 fifo_here_reg_4_ ( .D(N122), .CP(n442), .Q(fifo_here[4])
         );
  DFQD2BWP12T30P140 fifo_here_reg_3_ ( .D(N123), .CP(n442), .Q(fifo_here[3])
         );
  DFQD2BWP12T30P140 fifo_here_reg_2_ ( .D(N124), .CP(n442), .Q(fifo_here[2])
         );
  DFQD2BWP12T30P140 fifo_here_reg_1_ ( .D(N125), .CP(n442), .Q(fifo_here[1])
         );
  DFQD2BWP12T30P140 fifo_next_reg_0_ ( .D(N134), .CP(n441), .Q(fifo_next[0])
         );
  DFQD2BWP12T30P140 fifo_here_reg_0_ ( .D(N126), .CP(n441), .Q(fifo_here[0])
         );
  DFQD2BWP12T30P140 fifo_reg_0__7_ ( .D(n296), .CP(n450), .Q(fifo[127]) );
  DFQD2BWP12T30P140 fifo_reg_1__5_ ( .D(n302), .CP(n450), .Q(fifo[117]) );
  DFQD2BWP12T30P140 fifo_reg_1__4_ ( .D(n301), .CP(n450), .Q(fifo[116]) );
  DFQD2BWP12T30P140 fifo_reg_1__3_ ( .D(n300), .CP(n450), .Q(fifo[115]) );
  DFQD2BWP12T30P140 fifo_reg_1__2_ ( .D(n299), .CP(n450), .Q(fifo[114]) );
  DFQD2BWP12T30P140 r_data_reg_2_ ( .D(i_data[2]), .CP(n449), .Q(r_data[2]) );
  DFQD2BWP12T30P140 osrc_reg_0_ ( .D(N140), .CP(n449), .Q(osrc[0]) );
  DFQD2BWP12T30P140 r_ovfl_reg ( .D(n422), .CP(n449), .Q(o_err) );
  DFQD2BWP12T30P140 r_empty_n_reg ( .D(n285), .CP(n450), .Q(o_empty_n) );
  DFQD2BWP12T30P140 fifo_reg_1__7_ ( .D(n304), .CP(n448), .Q(fifo[119]) );
  DFQD2BWP12T30P140 fifo_reg_9__7_ ( .D(n368), .CP(n447), .Q(fifo[55]) );
  DFQD2BWP12T30P140 fifo_reg_11__7_ ( .D(n384), .CP(n446), .Q(fifo[39]) );
  DFQD2BWP12T30P140 fifo_reg_5__7_ ( .D(n336), .CP(n445), .Q(fifo[87]) );
  DFQD2BWP12T30P140 fifo_reg_13__7_ ( .D(n400), .CP(n445), .Q(fifo[23]) );
  DFQD2BWP12T30P140 fifo_reg_15__7_ ( .D(n416), .CP(n443), .Q(fifo[7]) );
  DFQD2BWP12T30P140 fifo_reg_0__5_ ( .D(n294), .CP(n441), .Q(fifo[125]) );
  DFQD2BWP12T30P140 fifo_reg_0__4_ ( .D(n293), .CP(n442), .Q(fifo[124]) );
  DFQD2BWP12T30P140 fifo_reg_0__3_ ( .D(n292), .CP(n444), .Q(fifo[123]) );
  DFQD2BWP12T30P140 fifo_reg_0__2_ ( .D(n291), .CP(n443), .Q(fifo[122]) );
  DFQD2BWP12T30P140 fifo_reg_0__1_ ( .D(n290), .CP(n446), .Q(fifo[121]) );
  DFQD2BWP12T30P140 fifo_reg_1__6_ ( .D(n303), .CP(n447), .Q(fifo[118]) );
  DFQD2BWP12T30P140 fifo_reg_1__0_ ( .D(n305), .CP(n441), .Q(fifo[112]) );
  DFQD2BWP12T30P140 fifo_reg_2__7_ ( .D(n312), .CP(n442), .Q(fifo[111]) );
  DFQD2BWP12T30P140 fifo_reg_2__6_ ( .D(n311), .CP(n444), .Q(fifo[110]) );
  DFQD2BWP12T30P140 fifo_reg_2__5_ ( .D(n310), .CP(n443), .Q(fifo[109]) );
  DFQD2BWP12T30P140 fifo_reg_2__4_ ( .D(n309), .CP(n446), .Q(fifo[108]) );
  DFQD2BWP12T30P140 fifo_reg_2__3_ ( .D(n308), .CP(n445), .Q(fifo[107]) );
  DFQD2BWP12T30P140 fifo_reg_2__2_ ( .D(n307), .CP(n448), .Q(fifo[106]) );
  DFQD2BWP12T30P140 fifo_reg_2__1_ ( .D(n306), .CP(n447), .Q(fifo[105]) );
  DFQD2BWP12T30P140 fifo_reg_2__0_ ( .D(n313), .CP(n443), .Q(fifo[104]) );
  DFQD2BWP12T30P140 fifo_reg_3__5_ ( .D(n318), .CP(n441), .Q(fifo[101]) );
  DFQD2BWP12T30P140 fifo_reg_3__4_ ( .D(n317), .CP(n442), .Q(fifo[100]) );
  DFQD2BWP12T30P140 fifo_reg_3__3_ ( .D(n316), .CP(n444), .Q(fifo[99]) );
  DFQD2BWP12T30P140 fifo_reg_3__2_ ( .D(n315), .CP(n443), .Q(fifo[98]) );
  DFQD2BWP12T30P140 fifo_reg_3__0_ ( .D(n321), .CP(n445), .Q(fifo[96]) );
  DFQD2BWP12T30P140 fifo_reg_8__7_ ( .D(n360), .CP(n448), .Q(fifo[63]) );
  DFQD2BWP12T30P140 fifo_reg_8__6_ ( .D(n359), .CP(n448), .Q(fifo[62]) );
  DFQD2BWP12T30P140 fifo_reg_8__5_ ( .D(n358), .CP(n448), .Q(fifo[61]) );
  DFQD2BWP12T30P140 fifo_reg_8__4_ ( .D(n357), .CP(n448), .Q(fifo[60]) );
  DFQD2BWP12T30P140 fifo_reg_8__3_ ( .D(n356), .CP(n448), .Q(fifo[59]) );
  DFQD2BWP12T30P140 fifo_reg_8__2_ ( .D(n355), .CP(n448), .Q(fifo[58]) );
  DFQD2BWP12T30P140 fifo_reg_8__1_ ( .D(n354), .CP(n448), .Q(fifo[57]) );
  DFQD2BWP12T30P140 fifo_reg_8__0_ ( .D(n361), .CP(n448), .Q(fifo[56]) );
  DFQD2BWP12T30P140 fifo_reg_9__6_ ( .D(n367), .CP(n447), .Q(fifo[54]) );
  DFQD2BWP12T30P140 fifo_reg_9__5_ ( .D(n366), .CP(n447), .Q(fifo[53]) );
  DFQD2BWP12T30P140 fifo_reg_9__4_ ( .D(n365), .CP(n447), .Q(fifo[52]) );
  DFQD2BWP12T30P140 fifo_reg_9__3_ ( .D(n364), .CP(n447), .Q(fifo[51]) );
  DFQD2BWP12T30P140 fifo_reg_9__2_ ( .D(n363), .CP(n447), .Q(fifo[50]) );
  DFQD2BWP12T30P140 fifo_reg_9__0_ ( .D(n369), .CP(n447), .Q(fifo[48]) );
  DFQD2BWP12T30P140 fifo_reg_10__7_ ( .D(n376), .CP(n447), .Q(fifo[47]) );
  DFQD2BWP12T30P140 fifo_reg_10__6_ ( .D(n375), .CP(n447), .Q(fifo[46]) );
  DFQD2BWP12T30P140 fifo_reg_10__5_ ( .D(n374), .CP(n447), .Q(fifo[45]) );
  DFQD2BWP12T30P140 fifo_reg_10__4_ ( .D(n373), .CP(n447), .Q(fifo[44]) );
  DFQD2BWP12T30P140 fifo_reg_10__3_ ( .D(n372), .CP(n446), .Q(fifo[43]) );
  DFQD2BWP12T30P140 fifo_reg_10__2_ ( .D(n371), .CP(n446), .Q(fifo[42]) );
  DFQD2BWP12T30P140 fifo_reg_10__1_ ( .D(n370), .CP(n446), .Q(fifo[41]) );
  DFQD2BWP12T30P140 fifo_reg_10__0_ ( .D(n377), .CP(n446), .Q(fifo[40]) );
  DFQD2BWP12T30P140 fifo_reg_11__6_ ( .D(n383), .CP(n446), .Q(fifo[38]) );
  DFQD2BWP12T30P140 fifo_reg_11__5_ ( .D(n382), .CP(n446), .Q(fifo[37]) );
  DFQD2BWP12T30P140 fifo_reg_11__4_ ( .D(n381), .CP(n446), .Q(fifo[36]) );
  DFQD2BWP12T30P140 fifo_reg_11__3_ ( .D(n380), .CP(n446), .Q(fifo[35]) );
  DFQD2BWP12T30P140 fifo_reg_11__2_ ( .D(n379), .CP(n446), .Q(fifo[34]) );
  DFQD2BWP12T30P140 fifo_reg_11__0_ ( .D(n385), .CP(n446), .Q(fifo[32]) );
  DFQD2BWP12T30P140 will_underflow_reg ( .D(N98), .CP(n443), .Q(will_underflow) );
  DFQD2BWP12T30P140 fifo_reg_4__7_ ( .D(n328), .CP(n448), .Q(fifo[95]) );
  DFQD2BWP12T30P140 fifo_reg_4__6_ ( .D(n327), .CP(n447), .Q(fifo[94]) );
  DFQD2BWP12T30P140 fifo_reg_4__5_ ( .D(n326), .CP(n446), .Q(fifo[93]) );
  DFQD2BWP12T30P140 fifo_reg_4__4_ ( .D(n325), .CP(n441), .Q(fifo[92]) );
  DFQD2BWP12T30P140 fifo_reg_4__3_ ( .D(n324), .CP(n442), .Q(fifo[91]) );
  DFQD2BWP12T30P140 fifo_reg_4__2_ ( .D(n323), .CP(n444), .Q(fifo[90]) );
  DFQD2BWP12T30P140 fifo_reg_4__1_ ( .D(n322), .CP(n443), .Q(fifo[89]) );
  DFQD2BWP12T30P140 fifo_reg_4__0_ ( .D(n329), .CP(n446), .Q(fifo[88]) );
  DFQD2BWP12T30P140 fifo_reg_5__6_ ( .D(n335), .CP(n448), .Q(fifo[86]) );
  DFQD2BWP12T30P140 fifo_reg_5__5_ ( .D(n334), .CP(n447), .Q(fifo[85]) );
  DFQD2BWP12T30P140 fifo_reg_5__4_ ( .D(n333), .CP(n445), .Q(fifo[84]) );
  DFQD2BWP12T30P140 fifo_reg_5__2_ ( .D(n331), .CP(n441), .Q(fifo[82]) );
  DFQD2BWP12T30P140 fifo_reg_5__0_ ( .D(n337), .CP(n444), .Q(fifo[80]) );
  DFQD2BWP12T30P140 fifo_reg_6__7_ ( .D(n344), .CP(n448), .Q(fifo[79]) );
  DFQD2BWP12T30P140 fifo_reg_6__6_ ( .D(n343), .CP(n447), .Q(fifo[78]) );
  DFQD2BWP12T30P140 fifo_reg_6__4_ ( .D(n341), .CP(n441), .Q(fifo[76]) );
  DFQD2BWP12T30P140 fifo_reg_6__3_ ( .D(n340), .CP(n442), .Q(fifo[75]) );
  DFQD2BWP12T30P140 fifo_reg_6__2_ ( .D(n339), .CP(n444), .Q(fifo[74]) );
  DFQD2BWP12T30P140 fifo_reg_6__1_ ( .D(n338), .CP(n443), .Q(fifo[73]) );
  DFQD2BWP12T30P140 fifo_reg_6__0_ ( .D(n345), .CP(n446), .Q(fifo[72]) );
  DFQD2BWP12T30P140 fifo_reg_7__7_ ( .D(n352), .CP(n445), .Q(fifo[71]) );
  DFQD2BWP12T30P140 fifo_reg_7__6_ ( .D(n351), .CP(n448), .Q(fifo[70]) );
  DFQD2BWP12T30P140 fifo_reg_7__5_ ( .D(n350), .CP(n447), .Q(fifo[69]) );
  DFQD2BWP12T30P140 fifo_reg_7__3_ ( .D(n348), .CP(n448), .Q(fifo[67]) );
  DFQD2BWP12T30P140 fifo_reg_7__2_ ( .D(n347), .CP(n448), .Q(fifo[66]) );
  DFQD2BWP12T30P140 fifo_reg_7__1_ ( .D(n346), .CP(n448), .Q(fifo[65]) );
  DFQD2BWP12T30P140 fifo_reg_12__7_ ( .D(n392), .CP(n445), .Q(fifo[31]) );
  DFQD2BWP12T30P140 fifo_reg_12__6_ ( .D(n391), .CP(n445), .Q(fifo[30]) );
  DFQD2BWP12T30P140 fifo_reg_12__5_ ( .D(n390), .CP(n445), .Q(fifo[29]) );
  DFQD2BWP12T30P140 fifo_reg_12__4_ ( .D(n389), .CP(n445), .Q(fifo[28]) );
  DFQD2BWP12T30P140 fifo_reg_12__3_ ( .D(n388), .CP(n445), .Q(fifo[27]) );
  DFQD2BWP12T30P140 fifo_reg_12__2_ ( .D(n387), .CP(n445), .Q(fifo[26]) );
  DFQD2BWP12T30P140 fifo_reg_12__1_ ( .D(n386), .CP(n445), .Q(fifo[25]) );
  DFQD2BWP12T30P140 fifo_reg_12__0_ ( .D(n393), .CP(n445), .Q(fifo[24]) );
  DFQD2BWP12T30P140 fifo_reg_13__6_ ( .D(n399), .CP(n445), .Q(fifo[22]) );
  DFQD2BWP12T30P140 fifo_reg_13__5_ ( .D(n398), .CP(n445), .Q(fifo[21]) );
  DFQD2BWP12T30P140 fifo_reg_13__4_ ( .D(n397), .CP(n445), .Q(fifo[20]) );
  DFQD2BWP12T30P140 fifo_reg_13__3_ ( .D(n396), .CP(n444), .Q(fifo[19]) );
  DFQD2BWP12T30P140 fifo_reg_13__2_ ( .D(n395), .CP(n444), .Q(fifo[18]) );
  DFQD2BWP12T30P140 fifo_reg_13__1_ ( .D(n394), .CP(n444), .Q(fifo[17]) );
  DFQD2BWP12T30P140 fifo_reg_14__7_ ( .D(n408), .CP(n444), .Q(fifo[15]) );
  DFQD2BWP12T30P140 fifo_reg_14__6_ ( .D(n407), .CP(n444), .Q(fifo[14]) );
  DFQD2BWP12T30P140 fifo_reg_14__5_ ( .D(n406), .CP(n444), .Q(fifo[13]) );
  DFQD2BWP12T30P140 fifo_reg_14__4_ ( .D(n405), .CP(n444), .Q(fifo[12]) );
  DFQD2BWP12T30P140 fifo_reg_14__3_ ( .D(n404), .CP(n444), .Q(fifo[11]) );
  DFQD2BWP12T30P140 fifo_reg_14__2_ ( .D(n403), .CP(n444), .Q(fifo[10]) );
  DFQD2BWP12T30P140 fifo_reg_14__1_ ( .D(n402), .CP(n444), .Q(fifo[9]) );
  DFQD2BWP12T30P140 fifo_reg_14__0_ ( .D(n409), .CP(n444), .Q(fifo[8]) );
  DFQD2BWP12T30P140 fifo_reg_15__6_ ( .D(n415), .CP(n443), .Q(fifo[6]) );
  DFQD2BWP12T30P140 fifo_reg_15__5_ ( .D(n414), .CP(n443), .Q(fifo[5]) );
  DFQD2BWP12T30P140 fifo_reg_15__4_ ( .D(n413), .CP(n443), .Q(fifo[4]) );
  DFQD2BWP12T30P140 fifo_reg_15__3_ ( .D(n412), .CP(n443), .Q(fifo[3]) );
  DFQD2BWP12T30P140 fifo_reg_15__2_ ( .D(n411), .CP(n443), .Q(fifo[2]) );
  DFQD2BWP12T30P140 fifo_reg_15__1_ ( .D(n410), .CP(n443), .Q(fifo[1]) );
  DFQD2BWP12T30P140 fifo_reg_3__7_ ( .D(n320), .CP(n449), .Q(fifo[103]) );
  DFQD2BWP12T30P140 fifo_reg_0__6_ ( .D(n295), .CP(n449), .Q(fifo[126]) );
  DFQD2BWP12T30P140 fifo_reg_1__1_ ( .D(n298), .CP(n449), .Q(fifo[113]) );
  DFQD2BWP12T30P140 fifo_reg_3__6_ ( .D(n319), .CP(n449), .Q(fifo[102]) );
  DFQD2BWP12T30P140 fifo_reg_5__3_ ( .D(n332), .CP(n449), .Q(fifo[83]) );
  DFQD2BWP12T30P140 fifo_reg_6__5_ ( .D(n342), .CP(n449), .Q(fifo[77]) );
  DFQD2BWP12T30P140 fifo_reg_7__4_ ( .D(n349), .CP(n449), .Q(fifo[68]) );
  DFQD2BWP12T30P140 will_overflow_reg ( .D(n423), .CP(n449), .Q(will_overflow)
         );
  DFQD2BWP12T30P140 r_first_reg_3_ ( .D(n421), .CP(n449), .Q(r_first[3]) );
  DFQD2BWP12T30P140 r_fill_reg_2_ ( .D(N202), .CP(n449), .Q(o_status[4]) );
  DFQD2BWP12T30P140 r_fill_reg_3_ ( .D(N203), .CP(n449), .Q(o_status[5]) );
  DFQD2BWP12T30P140 r_first_reg_1_ ( .D(n419), .CP(n449), .Q(r_first[1]) );
  DFQD2BWP12T30P140 r_next_reg_2_ ( .D(n288), .CP(n442), .Q(w_last_plus_one[2]) );
  DFQD2BWP12T30P140 r_fill_reg_1_ ( .D(N201), .CP(n450), .Q(o_status[3]) );
  DFQD2BWP12T30P140 r_next_reg_1_ ( .D(n289), .CP(n443), .Q(w_last_plus_one[1]) );
  DFQD2BWP12T30P140 r_fill_reg_0_ ( .D(N200), .CP(n449), .Q(o_status[2]) );
  DFQD2BWP12T30P140 r_next_reg_3_ ( .D(n287), .CP(n442), .Q(w_last_plus_one[3]) );
  DFQD2BWP12T30P140 r_last_reg_3_ ( .D(n424), .CP(n442), .Q(r_last[3]) );
  DFQD2BWP12T30P140 r_last_reg_2_ ( .D(n425), .CP(n442), .Q(r_last[2]) );
  DFQD2BWP12T30P140 r_first_reg_0_ ( .D(n420), .CP(n449), .Q(r_first[0]) );
  DFQD2BWP12T30P140 r_last_reg_1_ ( .D(n427), .CP(n442), .Q(r_last[1]) );
  DFQD2BWP12T30P140 r_next_reg_0_ ( .D(n428), .CP(n443), .Q(w_last_plus_one[0]) );
  DFQD2BWP12T30P140 r_last_reg_0_ ( .D(n426), .CP(n443), .Q(r_last[0]) );
  DFQD1BWP12T30P140 fifo_here_reg_7_ ( .D(N119), .CP(n442), .Q(fifo_here[7])
         );
  DFQD1BWP12T30P140 r_data_reg_0_ ( .D(i_data[0]), .CP(n449), .Q(r_data[0]) );
  DFQD1BWP12T30P140 fifo_reg_0__0_ ( .D(n297), .CP(n445), .Q(fifo[120]) );
  DFQD1BWP12T30P140 fifo_reg_3__1_ ( .D(n314), .CP(n446), .Q(fifo[97]) );
  DFQD1BWP12T30P140 fifo_reg_9__1_ ( .D(n362), .CP(n447), .Q(fifo[49]) );
  DFQD1BWP12T30P140 fifo_reg_11__1_ ( .D(n378), .CP(n446), .Q(fifo[33]) );
  DFQD1BWP12T30P140 fifo_reg_5__1_ ( .D(n330), .CP(n442), .Q(fifo[81]) );
  DFQD1BWP12T30P140 fifo_reg_7__0_ ( .D(n353), .CP(n448), .Q(fifo[64]) );
  DFQD1BWP12T30P140 fifo_reg_13__0_ ( .D(n401), .CP(n444), .Q(fifo[16]) );
  DFQD1BWP12T30P140 fifo_reg_15__0_ ( .D(n417), .CP(n443), .Q(fifo[0]) );
  DFQD1BWP12T30P140 r_first_reg_2_ ( .D(n418), .CP(n449), .Q(r_first[2]) );
  INVD0BWP12T30P140 U3 ( .I(r_first[0]), .ZN(n270) );
  CKBD0BWP12T30P140 U4 ( .I(o_status[5]), .Z(o_status[1]) );
  NR3D0BWP12T30P140 U5 ( .A1(r_last[3]), .A2(r_last[2]), .A3(r_last[1]), .ZN(
        n86) );
  INVD0BWP12T30P140 U6 ( .I(r_last[1]), .ZN(n286) );
  ND2D0BWP12T30P140 U7 ( .A1(r_last[2]), .A2(n286), .ZN(n224) );
  NR2D0BWP12T30P140 U8 ( .A1(r_last[3]), .A2(n224), .ZN(n85) );
  AOI22D0BWP12T30P140 U9 ( .A1(n86), .A2(fifo[127]), .B1(n85), .B2(fifo[95]), 
        .ZN(n4) );
  INVD0BWP12T30P140 U10 ( .I(r_last[2]), .ZN(n277) );
  ND2D0BWP12T30P140 U11 ( .A1(r_last[1]), .A2(n277), .ZN(n223) );
  NR2D0BWP12T30P140 U12 ( .A1(r_last[3]), .A2(n223), .ZN(n87) );
  ND2D0BWP12T30P140 U13 ( .A1(r_last[2]), .A2(r_last[1]), .ZN(n201) );
  NR2D0BWP12T30P140 U14 ( .A1(r_last[3]), .A2(n201), .ZN(n200) );
  AOI22D0BWP12T30P140 U15 ( .A1(n87), .A2(fifo[111]), .B1(n200), .B2(fifo[79]), 
        .ZN(n3) );
  INVD0BWP12T30P140 U16 ( .I(r_last[3]), .ZN(n269) );
  NR3D0BWP12T30P140 U17 ( .A1(r_last[2]), .A2(r_last[1]), .A3(n269), .ZN(n89)
         );
  NR2D0BWP12T30P140 U18 ( .A1(n269), .A2(n224), .ZN(n88) );
  AOI22D0BWP12T30P140 U19 ( .A1(n89), .A2(fifo[63]), .B1(n88), .B2(fifo[31]), 
        .ZN(n2) );
  NR2D0BWP12T30P140 U20 ( .A1(n269), .A2(n223), .ZN(n91) );
  NR2D0BWP12T30P140 U21 ( .A1(n269), .A2(n201), .ZN(n90) );
  AOI22D0BWP12T30P140 U22 ( .A1(n91), .A2(fifo[47]), .B1(n90), .B2(fifo[15]), 
        .ZN(n1) );
  ND4D0BWP12T30P140 U23 ( .A1(n4), .A2(n3), .A3(n2), .A4(n1), .ZN(n10) );
  AOI22D0BWP12T30P140 U24 ( .A1(fifo[119]), .A2(n86), .B1(fifo[87]), .B2(n85), 
        .ZN(n8) );
  AOI22D0BWP12T30P140 U25 ( .A1(fifo[103]), .A2(n87), .B1(n200), .B2(fifo[71]), 
        .ZN(n7) );
  AOI22D0BWP12T30P140 U26 ( .A1(fifo[55]), .A2(n89), .B1(fifo[23]), .B2(n88), 
        .ZN(n6) );
  AOI22D0BWP12T30P140 U27 ( .A1(fifo[39]), .A2(n91), .B1(fifo[7]), .B2(n90), 
        .ZN(n5) );
  ND4D0BWP12T30P140 U28 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n9) );
  CKMUX2D0BWP12T30P140 U29 ( .I0(n10), .I1(n9), .S(r_last[0]), .Z(N119) );
  AOI22D0BWP12T30P140 U30 ( .A1(n86), .A2(fifo[126]), .B1(n85), .B2(fifo[94]), 
        .ZN(n14) );
  AOI22D0BWP12T30P140 U31 ( .A1(n87), .A2(fifo[110]), .B1(n200), .B2(fifo[78]), 
        .ZN(n13) );
  AOI22D0BWP12T30P140 U32 ( .A1(n89), .A2(fifo[62]), .B1(n88), .B2(fifo[30]), 
        .ZN(n12) );
  AOI22D0BWP12T30P140 U33 ( .A1(n91), .A2(fifo[46]), .B1(n90), .B2(fifo[14]), 
        .ZN(n11) );
  ND4D0BWP12T30P140 U34 ( .A1(n14), .A2(n13), .A3(n12), .A4(n11), .ZN(n20) );
  AOI22D0BWP12T30P140 U35 ( .A1(n86), .A2(fifo[118]), .B1(n85), .B2(fifo[86]), 
        .ZN(n18) );
  AOI22D0BWP12T30P140 U36 ( .A1(n87), .A2(fifo[102]), .B1(n200), .B2(fifo[70]), 
        .ZN(n17) );
  AOI22D0BWP12T30P140 U37 ( .A1(n89), .A2(fifo[54]), .B1(n88), .B2(fifo[22]), 
        .ZN(n16) );
  AOI22D0BWP12T30P140 U38 ( .A1(n91), .A2(fifo[38]), .B1(n90), .B2(fifo[6]), 
        .ZN(n15) );
  ND4D0BWP12T30P140 U39 ( .A1(n18), .A2(n17), .A3(n16), .A4(n15), .ZN(n19) );
  CKMUX2D0BWP12T30P140 U40 ( .I0(n20), .I1(n19), .S(r_last[0]), .Z(N120) );
  AOI22D0BWP12T30P140 U41 ( .A1(n86), .A2(fifo[125]), .B1(n85), .B2(fifo[93]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U42 ( .A1(n87), .A2(fifo[109]), .B1(n200), .B2(fifo[77]), 
        .ZN(n23) );
  AOI22D0BWP12T30P140 U43 ( .A1(n89), .A2(fifo[61]), .B1(n88), .B2(fifo[29]), 
        .ZN(n22) );
  AOI22D0BWP12T30P140 U44 ( .A1(n91), .A2(fifo[45]), .B1(n90), .B2(fifo[13]), 
        .ZN(n21) );
  ND4D0BWP12T30P140 U45 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .ZN(n30) );
  AOI22D0BWP12T30P140 U46 ( .A1(n86), .A2(fifo[117]), .B1(n85), .B2(fifo[85]), 
        .ZN(n28) );
  AOI22D0BWP12T30P140 U47 ( .A1(n87), .A2(fifo[101]), .B1(n200), .B2(fifo[69]), 
        .ZN(n27) );
  AOI22D0BWP12T30P140 U48 ( .A1(n89), .A2(fifo[53]), .B1(n88), .B2(fifo[21]), 
        .ZN(n26) );
  AOI22D0BWP12T30P140 U49 ( .A1(n91), .A2(fifo[37]), .B1(n90), .B2(fifo[5]), 
        .ZN(n25) );
  ND4D0BWP12T30P140 U50 ( .A1(n28), .A2(n27), .A3(n26), .A4(n25), .ZN(n29) );
  CKMUX2D0BWP12T30P140 U51 ( .I0(n30), .I1(n29), .S(r_last[0]), .Z(N121) );
  AOI22D0BWP12T30P140 U52 ( .A1(n86), .A2(fifo[124]), .B1(n85), .B2(fifo[92]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U53 ( .A1(n87), .A2(fifo[108]), .B1(n200), .B2(fifo[76]), 
        .ZN(n33) );
  AOI22D0BWP12T30P140 U54 ( .A1(n89), .A2(fifo[60]), .B1(n88), .B2(fifo[28]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U55 ( .A1(n91), .A2(fifo[44]), .B1(n90), .B2(fifo[12]), 
        .ZN(n31) );
  ND4D0BWP12T30P140 U56 ( .A1(n34), .A2(n33), .A3(n32), .A4(n31), .ZN(n40) );
  AOI22D0BWP12T30P140 U57 ( .A1(n86), .A2(fifo[116]), .B1(n85), .B2(fifo[84]), 
        .ZN(n38) );
  AOI22D0BWP12T30P140 U58 ( .A1(n87), .A2(fifo[100]), .B1(n200), .B2(fifo[68]), 
        .ZN(n37) );
  AOI22D0BWP12T30P140 U59 ( .A1(n89), .A2(fifo[52]), .B1(n88), .B2(fifo[20]), 
        .ZN(n36) );
  AOI22D0BWP12T30P140 U60 ( .A1(n91), .A2(fifo[36]), .B1(n90), .B2(fifo[4]), 
        .ZN(n35) );
  ND4D0BWP12T30P140 U61 ( .A1(n38), .A2(n37), .A3(n36), .A4(n35), .ZN(n39) );
  CKMUX2D0BWP12T30P140 U62 ( .I0(n40), .I1(n39), .S(r_last[0]), .Z(N122) );
  AOI22D0BWP12T30P140 U63 ( .A1(n86), .A2(fifo[123]), .B1(n85), .B2(fifo[91]), 
        .ZN(n44) );
  AOI22D0BWP12T30P140 U64 ( .A1(n87), .A2(fifo[107]), .B1(n200), .B2(fifo[75]), 
        .ZN(n43) );
  AOI22D0BWP12T30P140 U65 ( .A1(n89), .A2(fifo[59]), .B1(n88), .B2(fifo[27]), 
        .ZN(n42) );
  AOI22D0BWP12T30P140 U66 ( .A1(n91), .A2(fifo[43]), .B1(n90), .B2(fifo[11]), 
        .ZN(n41) );
  ND4D0BWP12T30P140 U67 ( .A1(n44), .A2(n43), .A3(n42), .A4(n41), .ZN(n50) );
  AOI22D0BWP12T30P140 U68 ( .A1(n86), .A2(fifo[115]), .B1(n85), .B2(fifo[83]), 
        .ZN(n48) );
  AOI22D0BWP12T30P140 U69 ( .A1(n87), .A2(fifo[99]), .B1(n200), .B2(fifo[67]), 
        .ZN(n47) );
  AOI22D0BWP12T30P140 U70 ( .A1(n89), .A2(fifo[51]), .B1(n88), .B2(fifo[19]), 
        .ZN(n46) );
  AOI22D0BWP12T30P140 U71 ( .A1(n91), .A2(fifo[35]), .B1(n90), .B2(fifo[3]), 
        .ZN(n45) );
  ND4D0BWP12T30P140 U72 ( .A1(n48), .A2(n47), .A3(n46), .A4(n45), .ZN(n49) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(n50), .I1(n49), .S(r_last[0]), .Z(N123) );
  AOI22D0BWP12T30P140 U74 ( .A1(n86), .A2(fifo[122]), .B1(n85), .B2(fifo[90]), 
        .ZN(n54) );
  AOI22D0BWP12T30P140 U75 ( .A1(n87), .A2(fifo[106]), .B1(n200), .B2(fifo[74]), 
        .ZN(n53) );
  AOI22D0BWP12T30P140 U76 ( .A1(n89), .A2(fifo[58]), .B1(n88), .B2(fifo[26]), 
        .ZN(n52) );
  AOI22D0BWP12T30P140 U77 ( .A1(n91), .A2(fifo[42]), .B1(n90), .B2(fifo[10]), 
        .ZN(n51) );
  ND4D0BWP12T30P140 U78 ( .A1(n54), .A2(n53), .A3(n52), .A4(n51), .ZN(n60) );
  AOI22D0BWP12T30P140 U79 ( .A1(n86), .A2(fifo[114]), .B1(n85), .B2(fifo[82]), 
        .ZN(n58) );
  AOI22D0BWP12T30P140 U80 ( .A1(n87), .A2(fifo[98]), .B1(n200), .B2(fifo[66]), 
        .ZN(n57) );
  AOI22D0BWP12T30P140 U81 ( .A1(n89), .A2(fifo[50]), .B1(n88), .B2(fifo[18]), 
        .ZN(n56) );
  AOI22D0BWP12T30P140 U82 ( .A1(n91), .A2(fifo[34]), .B1(n90), .B2(fifo[2]), 
        .ZN(n55) );
  ND4D0BWP12T30P140 U83 ( .A1(n58), .A2(n57), .A3(n56), .A4(n55), .ZN(n59) );
  CKMUX2D0BWP12T30P140 U84 ( .I0(n60), .I1(n59), .S(r_last[0]), .Z(N124) );
  AOI22D0BWP12T30P140 U85 ( .A1(n86), .A2(fifo[121]), .B1(n85), .B2(fifo[89]), 
        .ZN(n64) );
  AOI22D0BWP12T30P140 U86 ( .A1(n87), .A2(fifo[105]), .B1(n200), .B2(fifo[73]), 
        .ZN(n63) );
  AOI22D0BWP12T30P140 U87 ( .A1(n89), .A2(fifo[57]), .B1(n88), .B2(fifo[25]), 
        .ZN(n62) );
  AOI22D0BWP12T30P140 U88 ( .A1(n91), .A2(fifo[41]), .B1(n90), .B2(fifo[9]), 
        .ZN(n61) );
  ND4D0BWP12T30P140 U89 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(n70) );
  AOI22D0BWP12T30P140 U90 ( .A1(n86), .A2(fifo[113]), .B1(n85), .B2(fifo[81]), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U91 ( .A1(n87), .A2(fifo[97]), .B1(n200), .B2(fifo[65]), 
        .ZN(n67) );
  AOI22D0BWP12T30P140 U92 ( .A1(n89), .A2(fifo[49]), .B1(n88), .B2(fifo[17]), 
        .ZN(n66) );
  AOI22D0BWP12T30P140 U93 ( .A1(n91), .A2(fifo[33]), .B1(n90), .B2(fifo[1]), 
        .ZN(n65) );
  ND4D0BWP12T30P140 U94 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(n69) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(n70), .I1(n69), .S(r_last[0]), .Z(N125) );
  NR3D0BWP12T30P140 U96 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(w_last_plus_one[3]), .ZN(n181) );
  INVD0BWP12T30P140 U97 ( .I(w_last_plus_one[2]), .ZN(n226) );
  NR3D0BWP12T30P140 U98 ( .A1(w_last_plus_one[1]), .A2(w_last_plus_one[3]), 
        .A3(n226), .ZN(n180) );
  AOI22D0BWP12T30P140 U99 ( .A1(fifo[120]), .A2(n181), .B1(fifo[88]), .B2(n180), .ZN(n74) );
  INVD0BWP12T30P140 U100 ( .I(w_last_plus_one[1]), .ZN(n216) );
  NR3D0BWP12T30P140 U101 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[3]), 
        .A3(n216), .ZN(n183) );
  NR3D0BWP12T30P140 U102 ( .A1(w_last_plus_one[3]), .A2(n216), .A3(n226), .ZN(
        n182) );
  AOI22D0BWP12T30P140 U103 ( .A1(fifo[104]), .A2(n183), .B1(fifo[72]), .B2(
        n182), .ZN(n73) );
  INVD0BWP12T30P140 U104 ( .I(w_last_plus_one[3]), .ZN(n202) );
  NR3D0BWP12T30P140 U105 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(n202), .ZN(n185) );
  NR3D0BWP12T30P140 U106 ( .A1(w_last_plus_one[1]), .A2(n226), .A3(n202), .ZN(
        n184) );
  AOI22D0BWP12T30P140 U107 ( .A1(fifo[56]), .A2(n185), .B1(fifo[24]), .B2(n184), .ZN(n72) );
  NR3D0BWP12T30P140 U108 ( .A1(w_last_plus_one[2]), .A2(n216), .A3(n202), .ZN(
        n187) );
  NR3D0BWP12T30P140 U109 ( .A1(n226), .A2(n216), .A3(n202), .ZN(n186) );
  AOI22D0BWP12T30P140 U110 ( .A1(fifo[40]), .A2(n187), .B1(fifo[8]), .B2(n186), 
        .ZN(n71) );
  ND4D0BWP12T30P140 U111 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .ZN(n80) );
  AOI22D0BWP12T30P140 U112 ( .A1(fifo[112]), .A2(n181), .B1(fifo[80]), .B2(
        n180), .ZN(n78) );
  AOI22D0BWP12T30P140 U113 ( .A1(fifo[96]), .A2(n183), .B1(fifo[64]), .B2(n182), .ZN(n77) );
  AOI22D0BWP12T30P140 U114 ( .A1(fifo[48]), .A2(n185), .B1(fifo[16]), .B2(n184), .ZN(n76) );
  AOI22D0BWP12T30P140 U115 ( .A1(fifo[32]), .A2(n187), .B1(fifo[0]), .B2(n186), 
        .ZN(n75) );
  ND4D0BWP12T30P140 U116 ( .A1(n78), .A2(n77), .A3(n76), .A4(n75), .ZN(n79) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(n80), .I1(n79), .S(w_last_plus_one[0]), .Z(
        N134) );
  AOI22D0BWP12T30P140 U118 ( .A1(n86), .A2(fifo[120]), .B1(n85), .B2(fifo[88]), 
        .ZN(n84) );
  AOI22D0BWP12T30P140 U119 ( .A1(n87), .A2(fifo[104]), .B1(n200), .B2(fifo[72]), .ZN(n83) );
  AOI22D0BWP12T30P140 U120 ( .A1(n89), .A2(fifo[56]), .B1(n88), .B2(fifo[24]), 
        .ZN(n82) );
  AOI22D0BWP12T30P140 U121 ( .A1(n91), .A2(fifo[40]), .B1(n90), .B2(fifo[8]), 
        .ZN(n81) );
  ND4D0BWP12T30P140 U122 ( .A1(n84), .A2(n83), .A3(n82), .A4(n81), .ZN(n97) );
  AOI22D0BWP12T30P140 U123 ( .A1(n86), .A2(fifo[112]), .B1(n85), .B2(fifo[80]), 
        .ZN(n95) );
  AOI22D0BWP12T30P140 U124 ( .A1(n87), .A2(fifo[96]), .B1(n200), .B2(fifo[64]), 
        .ZN(n94) );
  AOI22D0BWP12T30P140 U125 ( .A1(n89), .A2(fifo[48]), .B1(n88), .B2(fifo[16]), 
        .ZN(n93) );
  AOI22D0BWP12T30P140 U126 ( .A1(n91), .A2(fifo[32]), .B1(n90), .B2(fifo[0]), 
        .ZN(n92) );
  ND4D0BWP12T30P140 U127 ( .A1(n95), .A2(n94), .A3(n93), .A4(n92), .ZN(n96) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(n97), .I1(n96), .S(r_last[0]), .Z(N126) );
  INVD0BWP12T30P140 U129 ( .I(r_first[1]), .ZN(n284) );
  ND2D0BWP12T30P140 U130 ( .A1(n270), .A2(n284), .ZN(n206) );
  INVD0BWP12T30P140 U131 ( .I(r_first[2]), .ZN(n276) );
  INVD0BWP12T30P140 U132 ( .I(r_first[3]), .ZN(n241) );
  ND3D0BWP12T30P140 U133 ( .A1(n276), .A2(n241), .A3(i_wr), .ZN(n110) );
  NR2D0BWP12T30P140 U134 ( .A1(n206), .A2(n110), .ZN(n246) );
  INVD0BWP12T30P140 U135 ( .I(i_data[7]), .ZN(n247) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n246), .A2(n247), .B1(fifo[127]), .B2(n246), 
        .ZN(n296) );
  ND2D0BWP12T30P140 U137 ( .A1(n284), .A2(r_first[0]), .ZN(n229) );
  NR2D0BWP12T30P140 U138 ( .A1(n229), .A2(n110), .ZN(n245) );
  INVD0BWP12T30P140 U139 ( .I(i_data[5]), .ZN(n256) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n245), .A2(n256), .B1(fifo[117]), .B2(n245), 
        .ZN(n302) );
  INVD0BWP12T30P140 U141 ( .I(i_data[4]), .ZN(n254) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n245), .A2(n254), .B1(fifo[116]), .B2(n245), 
        .ZN(n301) );
  INVD0BWP12T30P140 U143 ( .I(i_data[3]), .ZN(n252) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n245), .A2(n252), .B1(fifo[115]), .B2(n245), 
        .ZN(n300) );
  INVD0BWP12T30P140 U145 ( .I(i_data[2]), .ZN(n249) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n245), .A2(n249), .B1(fifo[114]), .B2(n245), 
        .ZN(n299) );
  INVD0BWP12T30P140 U147 ( .I(i_rst), .ZN(n273) );
  ND3D0BWP12T30P140 U148 ( .A1(n273), .A2(will_overflow), .A3(i_wr), .ZN(n438)
         );
  MOAI22D0BWP12T30P140 U149 ( .A1(i_rd), .A2(n438), .B1(o_err), .B2(n273), 
        .ZN(n422) );
  INVD0BWP12T30P140 U150 ( .I(i_rd), .ZN(n272) );
  NR2D0BWP12T30P140 U151 ( .A1(will_underflow), .A2(n272), .ZN(N140) );
  INVD0BWP12T30P140 U152 ( .I(w_last_plus_one[0]), .ZN(n196) );
  OAI22D0BWP12T30P140 U153 ( .A1(n241), .A2(w_last_plus_one[3]), .B1(n196), 
        .B2(r_first[0]), .ZN(n98) );
  AOI221D0BWP12T30P140 U154 ( .A1(n241), .A2(w_last_plus_one[3]), .B1(
        r_first[0]), .B2(n196), .C(n98), .ZN(n100) );
  ND2D0BWP12T30P140 U155 ( .A1(w_last_plus_one[1]), .A2(n284), .ZN(n99) );
  OAI211D0BWP12T30P140 U156 ( .A1(w_last_plus_one[1]), .A2(n284), .B(n100), 
        .C(n99), .ZN(n101) );
  AOI221D0BWP12T30P140 U157 ( .A1(r_first[2]), .A2(n226), .B1(n276), .B2(
        w_last_plus_one[2]), .C(n101), .ZN(n212) );
  INVD0BWP12T30P140 U158 ( .I(i_wr), .ZN(n435) );
  ND2D0BWP12T30P140 U159 ( .A1(N140), .A2(n435), .ZN(n231) );
  AOI22D0BWP12T30P140 U160 ( .A1(r_first[2]), .A2(r_last[2]), .B1(n277), .B2(
        n276), .ZN(n429) );
  INVD0BWP12T30P140 U161 ( .I(r_last[0]), .ZN(n271) );
  NR2D0BWP12T30P140 U162 ( .A1(r_first[0]), .A2(n271), .ZN(n102) );
  AOI211D0BWP12T30P140 U163 ( .A1(r_last[1]), .A2(n284), .B(n429), .C(n102), 
        .ZN(n105) );
  ND2D0BWP12T30P140 U164 ( .A1(r_first[0]), .A2(n271), .ZN(n104) );
  ND2D0BWP12T30P140 U165 ( .A1(r_first[1]), .A2(n286), .ZN(n103) );
  AOI22D0BWP12T30P140 U166 ( .A1(r_last[3]), .A2(n241), .B1(r_first[3]), .B2(
        n269), .ZN(n280) );
  ND4D0BWP12T30P140 U167 ( .A1(n105), .A2(n104), .A3(n103), .A4(n280), .ZN(
        n210) );
  OAI21D0BWP12T30P140 U168 ( .A1(i_wr), .A2(n272), .B(n210), .ZN(n106) );
  OAI21D0BWP12T30P140 U169 ( .A1(n212), .A2(n231), .B(n106), .ZN(n107) );
  AOI31D0BWP12T30P140 U170 ( .A1(i_rd), .A2(o_empty_n), .A3(will_underflow), 
        .B(n107), .ZN(n108) );
  INVD0BWP12T30P140 U171 ( .I(N140), .ZN(n211) );
  ND2D0BWP12T30P140 U172 ( .A1(n273), .A2(n211), .ZN(n227) );
  OAI22D0BWP12T30P140 U173 ( .A1(i_rst), .A2(n108), .B1(n227), .B2(n435), .ZN(
        n285) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n245), .A2(n247), .B1(fifo[119]), .B2(n245), 
        .ZN(n304) );
  ND3D0BWP12T30P140 U175 ( .A1(n276), .A2(i_wr), .A3(r_first[3]), .ZN(n113) );
  NR2D0BWP12T30P140 U176 ( .A1(n229), .A2(n113), .ZN(n112) );
  MAOI22D0BWP12T30P140 U177 ( .A1(n112), .A2(n247), .B1(fifo[55]), .B2(n112), 
        .ZN(n368) );
  ND2D0BWP12T30P140 U178 ( .A1(r_first[0]), .A2(r_first[1]), .ZN(n217) );
  NR2D0BWP12T30P140 U179 ( .A1(n217), .A2(n113), .ZN(n115) );
  MAOI22D0BWP12T30P140 U180 ( .A1(n115), .A2(n247), .B1(fifo[39]), .B2(n115), 
        .ZN(n384) );
  ND3D0BWP12T30P140 U181 ( .A1(n241), .A2(r_first[2]), .A3(i_wr), .ZN(n205) );
  NR2D0BWP12T30P140 U182 ( .A1(n229), .A2(n205), .ZN(n244) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n244), .A2(n247), .B1(fifo[87]), .B2(n244), 
        .ZN(n336) );
  ND3D0BWP12T30P140 U184 ( .A1(i_wr), .A2(r_first[3]), .A3(r_first[2]), .ZN(
        n209) );
  NR2D0BWP12T30P140 U185 ( .A1(n229), .A2(n209), .ZN(n208) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n208), .A2(n247), .B1(fifo[23]), .B2(n208), 
        .ZN(n400) );
  NR2D0BWP12T30P140 U187 ( .A1(n217), .A2(n209), .ZN(n255) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n255), .A2(n247), .B1(fifo[7]), .B2(n255), 
        .ZN(n416) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n246), .A2(n256), .B1(fifo[125]), .B2(n246), 
        .ZN(n294) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n246), .A2(n254), .B1(fifo[124]), .B2(n246), 
        .ZN(n293) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n246), .A2(n252), .B1(fifo[123]), .B2(n246), 
        .ZN(n292) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n246), .A2(n249), .B1(fifo[122]), .B2(n246), 
        .ZN(n291) );
  INVD0BWP12T30P140 U193 ( .I(i_data[1]), .ZN(n250) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n246), .A2(n250), .B1(fifo[121]), .B2(n246), 
        .ZN(n290) );
  INVD0BWP12T30P140 U195 ( .I(i_data[0]), .ZN(n251) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n246), .A2(n251), .B1(fifo[120]), .B2(n246), 
        .ZN(n297) );
  INVD0BWP12T30P140 U197 ( .I(i_data[6]), .ZN(n253) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n245), .A2(n253), .B1(fifo[118]), .B2(n245), 
        .ZN(n303) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n245), .A2(n251), .B1(fifo[112]), .B2(n245), 
        .ZN(n305) );
  ND2D0BWP12T30P140 U200 ( .A1(n270), .A2(r_first[1]), .ZN(n228) );
  NR2D0BWP12T30P140 U201 ( .A1(n228), .A2(n110), .ZN(n109) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n109), .A2(n247), .B1(fifo[111]), .B2(n109), 
        .ZN(n312) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n109), .A2(n253), .B1(fifo[110]), .B2(n109), 
        .ZN(n311) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n109), .A2(n256), .B1(fifo[109]), .B2(n109), 
        .ZN(n310) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n109), .A2(n254), .B1(fifo[108]), .B2(n109), 
        .ZN(n309) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n109), .A2(n252), .B1(fifo[107]), .B2(n109), 
        .ZN(n308) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n109), .A2(n249), .B1(fifo[106]), .B2(n109), 
        .ZN(n307) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n109), .A2(n250), .B1(fifo[105]), .B2(n109), 
        .ZN(n306) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n109), .A2(n251), .B1(fifo[104]), .B2(n109), 
        .ZN(n313) );
  NR2D0BWP12T30P140 U210 ( .A1(n217), .A2(n110), .ZN(n248) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n248), .A2(n256), .B1(fifo[101]), .B2(n248), 
        .ZN(n318) );
  MAOI22D0BWP12T30P140 U212 ( .A1(n248), .A2(n254), .B1(fifo[100]), .B2(n248), 
        .ZN(n317) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n248), .A2(n252), .B1(fifo[99]), .B2(n248), 
        .ZN(n316) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n248), .A2(n249), .B1(fifo[98]), .B2(n248), 
        .ZN(n315) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n248), .A2(n250), .B1(fifo[97]), .B2(n248), 
        .ZN(n314) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n248), .A2(n251), .B1(fifo[96]), .B2(n248), 
        .ZN(n321) );
  NR2D0BWP12T30P140 U217 ( .A1(n206), .A2(n113), .ZN(n111) );
  MAOI22D0BWP12T30P140 U218 ( .A1(n111), .A2(n247), .B1(fifo[63]), .B2(n111), 
        .ZN(n360) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n111), .A2(n253), .B1(fifo[62]), .B2(n111), 
        .ZN(n359) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n111), .A2(n256), .B1(fifo[61]), .B2(n111), 
        .ZN(n358) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n111), .A2(n254), .B1(fifo[60]), .B2(n111), 
        .ZN(n357) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n111), .A2(n252), .B1(fifo[59]), .B2(n111), 
        .ZN(n356) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n111), .A2(n249), .B1(fifo[58]), .B2(n111), 
        .ZN(n355) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n111), .A2(n250), .B1(fifo[57]), .B2(n111), 
        .ZN(n354) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n111), .A2(n251), .B1(fifo[56]), .B2(n111), 
        .ZN(n361) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n112), .A2(n253), .B1(fifo[54]), .B2(n112), 
        .ZN(n367) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n112), .A2(n256), .B1(fifo[53]), .B2(n112), 
        .ZN(n366) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n112), .A2(n254), .B1(fifo[52]), .B2(n112), 
        .ZN(n365) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n112), .A2(n252), .B1(fifo[51]), .B2(n112), 
        .ZN(n364) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n112), .A2(n249), .B1(fifo[50]), .B2(n112), 
        .ZN(n363) );
  MAOI22D0BWP12T30P140 U231 ( .A1(n112), .A2(n250), .B1(fifo[49]), .B2(n112), 
        .ZN(n362) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n112), .A2(n251), .B1(fifo[48]), .B2(n112), 
        .ZN(n369) );
  NR2D0BWP12T30P140 U233 ( .A1(n228), .A2(n113), .ZN(n114) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n114), .A2(n247), .B1(fifo[47]), .B2(n114), 
        .ZN(n376) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n114), .A2(n253), .B1(fifo[46]), .B2(n114), 
        .ZN(n375) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n114), .A2(n256), .B1(fifo[45]), .B2(n114), 
        .ZN(n374) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n114), .A2(n254), .B1(fifo[44]), .B2(n114), 
        .ZN(n373) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n114), .A2(n252), .B1(fifo[43]), .B2(n114), 
        .ZN(n372) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n114), .A2(n249), .B1(fifo[42]), .B2(n114), 
        .ZN(n371) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n114), .A2(n250), .B1(fifo[41]), .B2(n114), 
        .ZN(n370) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n114), .A2(n251), .B1(fifo[40]), .B2(n114), 
        .ZN(n377) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n115), .A2(n253), .B1(fifo[38]), .B2(n115), 
        .ZN(n383) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n115), .A2(n256), .B1(fifo[37]), .B2(n115), 
        .ZN(n382) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n115), .A2(n254), .B1(fifo[36]), .B2(n115), 
        .ZN(n381) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n115), .A2(n252), .B1(fifo[35]), .B2(n115), 
        .ZN(n380) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n115), .A2(n249), .B1(fifo[34]), .B2(n115), 
        .ZN(n379) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n115), .A2(n250), .B1(fifo[33]), .B2(n115), 
        .ZN(n378) );
  MAOI22D0BWP12T30P140 U248 ( .A1(n115), .A2(n251), .B1(fifo[32]), .B2(n115), 
        .ZN(n385) );
  NR2D0BWP12T30P140 U249 ( .A1(n206), .A2(n205), .ZN(n204) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n204), .A2(n247), .B1(fifo[95]), .B2(n204), 
        .ZN(n328) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n204), .A2(n253), .B1(fifo[94]), .B2(n204), 
        .ZN(n327) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n204), .A2(n256), .B1(fifo[93]), .B2(n204), 
        .ZN(n326) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n204), .A2(n254), .B1(fifo[92]), .B2(n204), 
        .ZN(n325) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n204), .A2(n252), .B1(fifo[91]), .B2(n204), 
        .ZN(n324) );
  AOI21D0BWP12T30P140 U255 ( .A1(i_rd), .A2(n212), .B(will_underflow), .ZN(
        N141) );
  AOI22D0BWP12T30P140 U256 ( .A1(fifo[127]), .A2(n181), .B1(fifo[95]), .B2(
        n180), .ZN(n119) );
  AOI22D0BWP12T30P140 U257 ( .A1(fifo[111]), .A2(n183), .B1(fifo[79]), .B2(
        n182), .ZN(n118) );
  AOI22D0BWP12T30P140 U258 ( .A1(fifo[63]), .A2(n185), .B1(fifo[31]), .B2(n184), .ZN(n117) );
  AOI22D0BWP12T30P140 U259 ( .A1(fifo[47]), .A2(n187), .B1(fifo[15]), .B2(n186), .ZN(n116) );
  ND4D0BWP12T30P140 U260 ( .A1(n119), .A2(n118), .A3(n117), .A4(n116), .ZN(
        n125) );
  AOI22D0BWP12T30P140 U261 ( .A1(fifo[119]), .A2(n181), .B1(fifo[87]), .B2(
        n180), .ZN(n123) );
  AOI22D0BWP12T30P140 U262 ( .A1(fifo[103]), .A2(n183), .B1(fifo[71]), .B2(
        n182), .ZN(n122) );
  AOI22D0BWP12T30P140 U263 ( .A1(fifo[55]), .A2(n185), .B1(fifo[23]), .B2(n184), .ZN(n121) );
  AOI22D0BWP12T30P140 U264 ( .A1(fifo[39]), .A2(n187), .B1(fifo[7]), .B2(n186), 
        .ZN(n120) );
  ND4D0BWP12T30P140 U265 ( .A1(n123), .A2(n122), .A3(n121), .A4(n120), .ZN(
        n124) );
  CKMUX2D0BWP12T30P140 U266 ( .I0(n125), .I1(n124), .S(w_last_plus_one[0]), 
        .Z(N127) );
  AOI22D0BWP12T30P140 U267 ( .A1(fifo[126]), .A2(n181), .B1(fifo[94]), .B2(
        n180), .ZN(n129) );
  AOI22D0BWP12T30P140 U268 ( .A1(fifo[110]), .A2(n183), .B1(fifo[78]), .B2(
        n182), .ZN(n128) );
  AOI22D0BWP12T30P140 U269 ( .A1(fifo[62]), .A2(n185), .B1(fifo[30]), .B2(n184), .ZN(n127) );
  AOI22D0BWP12T30P140 U270 ( .A1(fifo[46]), .A2(n187), .B1(fifo[14]), .B2(n186), .ZN(n126) );
  ND4D0BWP12T30P140 U271 ( .A1(n129), .A2(n128), .A3(n127), .A4(n126), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U272 ( .A1(fifo[118]), .A2(n181), .B1(fifo[86]), .B2(
        n180), .ZN(n133) );
  AOI22D0BWP12T30P140 U273 ( .A1(fifo[102]), .A2(n183), .B1(fifo[70]), .B2(
        n182), .ZN(n132) );
  AOI22D0BWP12T30P140 U274 ( .A1(fifo[54]), .A2(n185), .B1(fifo[22]), .B2(n184), .ZN(n131) );
  AOI22D0BWP12T30P140 U275 ( .A1(fifo[38]), .A2(n187), .B1(fifo[6]), .B2(n186), 
        .ZN(n130) );
  ND4D0BWP12T30P140 U276 ( .A1(n133), .A2(n132), .A3(n131), .A4(n130), .ZN(
        n134) );
  CKMUX2D0BWP12T30P140 U277 ( .I0(n135), .I1(n134), .S(w_last_plus_one[0]), 
        .Z(N128) );
  AOI22D0BWP12T30P140 U278 ( .A1(fifo[125]), .A2(n181), .B1(fifo[93]), .B2(
        n180), .ZN(n139) );
  AOI22D0BWP12T30P140 U279 ( .A1(fifo[109]), .A2(n183), .B1(fifo[77]), .B2(
        n182), .ZN(n138) );
  AOI22D0BWP12T30P140 U280 ( .A1(fifo[61]), .A2(n185), .B1(fifo[29]), .B2(n184), .ZN(n137) );
  AOI22D0BWP12T30P140 U281 ( .A1(fifo[45]), .A2(n187), .B1(fifo[13]), .B2(n186), .ZN(n136) );
  ND4D0BWP12T30P140 U282 ( .A1(n139), .A2(n138), .A3(n137), .A4(n136), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U283 ( .A1(fifo[117]), .A2(n181), .B1(fifo[85]), .B2(
        n180), .ZN(n143) );
  AOI22D0BWP12T30P140 U284 ( .A1(fifo[101]), .A2(n183), .B1(fifo[69]), .B2(
        n182), .ZN(n142) );
  AOI22D0BWP12T30P140 U285 ( .A1(fifo[53]), .A2(n185), .B1(fifo[21]), .B2(n184), .ZN(n141) );
  AOI22D0BWP12T30P140 U286 ( .A1(fifo[37]), .A2(n187), .B1(fifo[5]), .B2(n186), 
        .ZN(n140) );
  ND4D0BWP12T30P140 U287 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .ZN(
        n144) );
  CKMUX2D0BWP12T30P140 U288 ( .I0(n145), .I1(n144), .S(w_last_plus_one[0]), 
        .Z(N129) );
  AOI22D0BWP12T30P140 U289 ( .A1(fifo[124]), .A2(n181), .B1(fifo[92]), .B2(
        n180), .ZN(n149) );
  AOI22D0BWP12T30P140 U290 ( .A1(fifo[108]), .A2(n183), .B1(fifo[76]), .B2(
        n182), .ZN(n148) );
  AOI22D0BWP12T30P140 U291 ( .A1(fifo[60]), .A2(n185), .B1(fifo[28]), .B2(n184), .ZN(n147) );
  AOI22D0BWP12T30P140 U292 ( .A1(fifo[44]), .A2(n187), .B1(fifo[12]), .B2(n186), .ZN(n146) );
  ND4D0BWP12T30P140 U293 ( .A1(n149), .A2(n148), .A3(n147), .A4(n146), .ZN(
        n155) );
  AOI22D0BWP12T30P140 U294 ( .A1(fifo[116]), .A2(n181), .B1(fifo[84]), .B2(
        n180), .ZN(n153) );
  AOI22D0BWP12T30P140 U295 ( .A1(fifo[100]), .A2(n183), .B1(fifo[68]), .B2(
        n182), .ZN(n152) );
  AOI22D0BWP12T30P140 U296 ( .A1(fifo[52]), .A2(n185), .B1(fifo[20]), .B2(n184), .ZN(n151) );
  AOI22D0BWP12T30P140 U297 ( .A1(fifo[36]), .A2(n187), .B1(fifo[4]), .B2(n186), 
        .ZN(n150) );
  ND4D0BWP12T30P140 U298 ( .A1(n153), .A2(n152), .A3(n151), .A4(n150), .ZN(
        n154) );
  CKMUX2D0BWP12T30P140 U299 ( .I0(n155), .I1(n154), .S(w_last_plus_one[0]), 
        .Z(N130) );
  AOI22D0BWP12T30P140 U300 ( .A1(fifo[123]), .A2(n181), .B1(fifo[91]), .B2(
        n180), .ZN(n159) );
  AOI22D0BWP12T30P140 U301 ( .A1(fifo[107]), .A2(n183), .B1(fifo[75]), .B2(
        n182), .ZN(n158) );
  AOI22D0BWP12T30P140 U302 ( .A1(fifo[59]), .A2(n185), .B1(fifo[27]), .B2(n184), .ZN(n157) );
  AOI22D0BWP12T30P140 U303 ( .A1(fifo[43]), .A2(n187), .B1(fifo[11]), .B2(n186), .ZN(n156) );
  ND4D0BWP12T30P140 U304 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .ZN(
        n165) );
  AOI22D0BWP12T30P140 U305 ( .A1(fifo[115]), .A2(n181), .B1(fifo[83]), .B2(
        n180), .ZN(n163) );
  AOI22D0BWP12T30P140 U306 ( .A1(fifo[99]), .A2(n183), .B1(fifo[67]), .B2(n182), .ZN(n162) );
  AOI22D0BWP12T30P140 U307 ( .A1(fifo[51]), .A2(n185), .B1(fifo[19]), .B2(n184), .ZN(n161) );
  AOI22D0BWP12T30P140 U308 ( .A1(fifo[35]), .A2(n187), .B1(fifo[3]), .B2(n186), 
        .ZN(n160) );
  ND4D0BWP12T30P140 U309 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .ZN(
        n164) );
  CKMUX2D0BWP12T30P140 U310 ( .I0(n165), .I1(n164), .S(w_last_plus_one[0]), 
        .Z(N131) );
  AOI22D0BWP12T30P140 U311 ( .A1(fifo[122]), .A2(n181), .B1(fifo[90]), .B2(
        n180), .ZN(n169) );
  AOI22D0BWP12T30P140 U312 ( .A1(fifo[106]), .A2(n183), .B1(fifo[74]), .B2(
        n182), .ZN(n168) );
  AOI22D0BWP12T30P140 U313 ( .A1(fifo[58]), .A2(n185), .B1(fifo[26]), .B2(n184), .ZN(n167) );
  AOI22D0BWP12T30P140 U314 ( .A1(fifo[42]), .A2(n187), .B1(fifo[10]), .B2(n186), .ZN(n166) );
  ND4D0BWP12T30P140 U315 ( .A1(n169), .A2(n168), .A3(n167), .A4(n166), .ZN(
        n175) );
  AOI22D0BWP12T30P140 U316 ( .A1(fifo[114]), .A2(n181), .B1(fifo[82]), .B2(
        n180), .ZN(n173) );
  AOI22D0BWP12T30P140 U317 ( .A1(fifo[98]), .A2(n183), .B1(fifo[66]), .B2(n182), .ZN(n172) );
  AOI22D0BWP12T30P140 U318 ( .A1(fifo[50]), .A2(n185), .B1(fifo[18]), .B2(n184), .ZN(n171) );
  AOI22D0BWP12T30P140 U319 ( .A1(fifo[34]), .A2(n187), .B1(fifo[2]), .B2(n186), 
        .ZN(n170) );
  ND4D0BWP12T30P140 U320 ( .A1(n173), .A2(n172), .A3(n171), .A4(n170), .ZN(
        n174) );
  CKMUX2D0BWP12T30P140 U321 ( .I0(n175), .I1(n174), .S(w_last_plus_one[0]), 
        .Z(N132) );
  AOI22D0BWP12T30P140 U322 ( .A1(fifo[121]), .A2(n181), .B1(fifo[89]), .B2(
        n180), .ZN(n179) );
  AOI22D0BWP12T30P140 U323 ( .A1(fifo[105]), .A2(n183), .B1(fifo[73]), .B2(
        n182), .ZN(n178) );
  AOI22D0BWP12T30P140 U324 ( .A1(fifo[57]), .A2(n185), .B1(fifo[25]), .B2(n184), .ZN(n177) );
  AOI22D0BWP12T30P140 U325 ( .A1(fifo[41]), .A2(n187), .B1(fifo[9]), .B2(n186), 
        .ZN(n176) );
  ND4D0BWP12T30P140 U326 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .ZN(
        n193) );
  AOI22D0BWP12T30P140 U327 ( .A1(fifo[113]), .A2(n181), .B1(fifo[81]), .B2(
        n180), .ZN(n191) );
  AOI22D0BWP12T30P140 U328 ( .A1(fifo[97]), .A2(n183), .B1(fifo[65]), .B2(n182), .ZN(n190) );
  AOI22D0BWP12T30P140 U329 ( .A1(fifo[49]), .A2(n185), .B1(fifo[17]), .B2(n184), .ZN(n189) );
  AOI22D0BWP12T30P140 U330 ( .A1(fifo[33]), .A2(n187), .B1(fifo[1]), .B2(n186), 
        .ZN(n188) );
  ND4D0BWP12T30P140 U331 ( .A1(n191), .A2(n190), .A3(n189), .A4(n188), .ZN(
        n192) );
  CKMUX2D0BWP12T30P140 U332 ( .I0(n193), .I1(n192), .S(w_last_plus_one[0]), 
        .Z(N133) );
  ND2D0BWP12T30P140 U333 ( .A1(N140), .A2(n273), .ZN(n222) );
  OAI22D0BWP12T30P140 U334 ( .A1(n269), .A2(n227), .B1(n202), .B2(n222), .ZN(
        n424) );
  OAI22D0BWP12T30P140 U335 ( .A1(n277), .A2(n227), .B1(n226), .B2(n222), .ZN(
        n425) );
  AOI21D0BWP12T30P140 U336 ( .A1(n272), .A2(will_overflow), .B(n435), .ZN(n194) );
  OR2D0BWP12T30P140 U337 ( .A1(n194), .A2(i_rst), .Z(n240) );
  ND2D0BWP12T30P140 U338 ( .A1(n273), .A2(n194), .ZN(n239) );
  AOI22D0BWP12T30P140 U339 ( .A1(r_first[0]), .A2(n240), .B1(n239), .B2(n270), 
        .ZN(n420) );
  OAI22D0BWP12T30P140 U340 ( .A1(n286), .A2(n227), .B1(n216), .B2(n222), .ZN(
        n427) );
  AOI21D0BWP12T30P140 U341 ( .A1(N140), .A2(r_last[0]), .B(i_rst), .ZN(n195)
         );
  OAI21D0BWP12T30P140 U342 ( .A1(N140), .A2(n196), .B(n195), .ZN(n428) );
  OAI22D0BWP12T30P140 U343 ( .A1(n271), .A2(n227), .B1(n196), .B2(n222), .ZN(
        n426) );
  INVD0BWP12T30P140 U344 ( .I(osrc[1]), .ZN(n199) );
  NR2D0BWP12T30P140 U345 ( .A1(osrc[0]), .A2(n199), .ZN(n197) );
  AN2D0BWP12T30P140 U346 ( .A1(osrc[0]), .A2(osrc[1]), .Z(n198) );
  AO222D0BWP12T30P140 U347 ( .A1(n199), .A2(r_data[4]), .B1(n197), .B2(
        fifo_here[4]), .C1(fifo_next[4]), .C2(n198), .Z(o_data[4]) );
  AO222D0BWP12T30P140 U348 ( .A1(n199), .A2(r_data[3]), .B1(n197), .B2(
        fifo_here[3]), .C1(fifo_next[3]), .C2(n198), .Z(o_data[3]) );
  AO222D0BWP12T30P140 U349 ( .A1(n199), .A2(r_data[1]), .B1(n197), .B2(
        fifo_here[1]), .C1(fifo_next[1]), .C2(n198), .Z(o_data[1]) );
  AO222D0BWP12T30P140 U350 ( .A1(n199), .A2(r_data[7]), .B1(n197), .B2(
        fifo_here[7]), .C1(fifo_next[7]), .C2(n198), .Z(o_data[7]) );
  AO222D0BWP12T30P140 U351 ( .A1(n199), .A2(r_data[6]), .B1(n197), .B2(
        fifo_here[6]), .C1(fifo_next[6]), .C2(n198), .Z(o_data[6]) );
  AO222D0BWP12T30P140 U352 ( .A1(n199), .A2(r_data[5]), .B1(n197), .B2(
        fifo_here[5]), .C1(fifo_next[5]), .C2(n198), .Z(o_data[5]) );
  AO222D0BWP12T30P140 U353 ( .A1(n199), .A2(r_data[2]), .B1(n197), .B2(
        fifo_here[2]), .C1(fifo_next[2]), .C2(n198), .Z(o_data[2]) );
  AO222D0BWP12T30P140 U354 ( .A1(n199), .A2(r_data[0]), .B1(n198), .B2(
        fifo_next[0]), .C1(n197), .C2(fifo_here[0]), .Z(o_data[0]) );
  AOI21D0BWP12T30P140 U355 ( .A1(r_last[3]), .A2(n201), .B(n200), .ZN(n203) );
  OAI22D0BWP12T30P140 U356 ( .A1(n203), .A2(n222), .B1(n202), .B2(n227), .ZN(
        n287) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n204), .A2(n249), .B1(fifo[90]), .B2(n204), 
        .ZN(n323) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n204), .A2(n250), .B1(fifo[89]), .B2(n204), 
        .ZN(n322) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n204), .A2(n251), .B1(fifo[88]), .B2(n204), 
        .ZN(n329) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n244), .A2(n253), .B1(fifo[86]), .B2(n244), 
        .ZN(n335) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n244), .A2(n256), .B1(fifo[85]), .B2(n244), 
        .ZN(n334) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n244), .A2(n254), .B1(fifo[84]), .B2(n244), 
        .ZN(n333) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n244), .A2(n249), .B1(fifo[82]), .B2(n244), 
        .ZN(n331) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n244), .A2(n250), .B1(fifo[81]), .B2(n244), 
        .ZN(n330) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n244), .A2(n251), .B1(fifo[80]), .B2(n244), 
        .ZN(n337) );
  NR2D0BWP12T30P140 U366 ( .A1(n228), .A2(n205), .ZN(n243) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n243), .A2(n247), .B1(fifo[79]), .B2(n243), 
        .ZN(n344) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n243), .A2(n253), .B1(fifo[78]), .B2(n243), 
        .ZN(n343) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n243), .A2(n254), .B1(fifo[76]), .B2(n243), 
        .ZN(n341) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n243), .A2(n252), .B1(fifo[75]), .B2(n243), 
        .ZN(n340) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n243), .A2(n249), .B1(fifo[74]), .B2(n243), 
        .ZN(n339) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n243), .A2(n250), .B1(fifo[73]), .B2(n243), 
        .ZN(n338) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n243), .A2(n251), .B1(fifo[72]), .B2(n243), 
        .ZN(n345) );
  NR2D0BWP12T30P140 U374 ( .A1(n217), .A2(n205), .ZN(n242) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n242), .A2(n247), .B1(fifo[71]), .B2(n242), 
        .ZN(n352) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n242), .A2(n253), .B1(fifo[70]), .B2(n242), 
        .ZN(n351) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n242), .A2(n256), .B1(fifo[69]), .B2(n242), 
        .ZN(n350) );
  MAOI22D0BWP12T30P140 U378 ( .A1(n242), .A2(n252), .B1(fifo[67]), .B2(n242), 
        .ZN(n348) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n242), .A2(n249), .B1(fifo[66]), .B2(n242), 
        .ZN(n347) );
  MAOI22D0BWP12T30P140 U380 ( .A1(n242), .A2(n250), .B1(fifo[65]), .B2(n242), 
        .ZN(n346) );
  MAOI22D0BWP12T30P140 U381 ( .A1(n242), .A2(n251), .B1(fifo[64]), .B2(n242), 
        .ZN(n353) );
  NR2D0BWP12T30P140 U382 ( .A1(n209), .A2(n206), .ZN(n207) );
  MAOI22D0BWP12T30P140 U383 ( .A1(n207), .A2(n247), .B1(fifo[31]), .B2(n207), 
        .ZN(n392) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n207), .A2(n253), .B1(fifo[30]), .B2(n207), 
        .ZN(n391) );
  MAOI22D0BWP12T30P140 U385 ( .A1(n207), .A2(n256), .B1(fifo[29]), .B2(n207), 
        .ZN(n390) );
  MAOI22D0BWP12T30P140 U386 ( .A1(n207), .A2(n254), .B1(fifo[28]), .B2(n207), 
        .ZN(n389) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n207), .A2(n252), .B1(fifo[27]), .B2(n207), 
        .ZN(n388) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n207), .A2(n249), .B1(fifo[26]), .B2(n207), 
        .ZN(n387) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n207), .A2(n250), .B1(fifo[25]), .B2(n207), 
        .ZN(n386) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n207), .A2(n251), .B1(fifo[24]), .B2(n207), 
        .ZN(n393) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n208), .A2(n253), .B1(fifo[22]), .B2(n208), 
        .ZN(n399) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n208), .A2(n256), .B1(fifo[21]), .B2(n208), 
        .ZN(n398) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n208), .A2(n254), .B1(fifo[20]), .B2(n208), 
        .ZN(n397) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n208), .A2(n252), .B1(fifo[19]), .B2(n208), 
        .ZN(n396) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n208), .A2(n249), .B1(fifo[18]), .B2(n208), 
        .ZN(n395) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n208), .A2(n250), .B1(fifo[17]), .B2(n208), 
        .ZN(n394) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n208), .A2(n251), .B1(fifo[16]), .B2(n208), 
        .ZN(n401) );
  NR2D0BWP12T30P140 U398 ( .A1(n228), .A2(n209), .ZN(n257) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n257), .A2(n247), .B1(fifo[15]), .B2(n257), 
        .ZN(n408) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n257), .A2(n253), .B1(fifo[14]), .B2(n257), 
        .ZN(n407) );
  MOAI22D0BWP12T30P140 U401 ( .A1(n212), .A2(n211), .B1(n272), .B2(n210), .ZN(
        n213) );
  OAI21D0BWP12T30P140 U402 ( .A1(i_wr), .A2(n213), .B(n273), .ZN(N98) );
  INVD0BWP12T30P140 U403 ( .I(will_overflow), .ZN(o_status[0]) );
  INVD0BWP12T30P140 U404 ( .I(n231), .ZN(n218) );
  ND2D0BWP12T30P140 U405 ( .A1(i_wr), .A2(o_status[0]), .ZN(n430) );
  NR2D0BWP12T30P140 U406 ( .A1(n430), .A2(N140), .ZN(n233) );
  NR2D0BWP12T30P140 U407 ( .A1(n218), .A2(n233), .ZN(n215) );
  AOI21D0BWP12T30P140 U408 ( .A1(o_status[2]), .A2(n215), .B(i_rst), .ZN(n214)
         );
  OAI21D0BWP12T30P140 U409 ( .A1(o_status[2]), .A2(n215), .B(n214), .ZN(N200)
         );
  OAI22D0BWP12T30P140 U410 ( .A1(r_last[1]), .A2(n222), .B1(n227), .B2(n216), 
        .ZN(n289) );
  ND3D0BWP12T30P140 U411 ( .A1(r_first[0]), .A2(r_first[1]), .A3(r_first[2]), 
        .ZN(n238) );
  IOA21D0BWP12T30P140 U412 ( .A1(n276), .A2(n217), .B(n238), .ZN(n267) );
  OAI22D0BWP12T30P140 U413 ( .A1(n276), .A2(n240), .B1(n267), .B2(n239), .ZN(
        n418) );
  ND2D0BWP12T30P140 U414 ( .A1(o_status[3]), .A2(o_status[2]), .ZN(n230) );
  INVD0BWP12T30P140 U415 ( .I(n233), .ZN(n221) );
  AOI21D0BWP12T30P140 U416 ( .A1(o_status[2]), .A2(n218), .B(n233), .ZN(n232)
         );
  NR3D0BWP12T30P140 U417 ( .A1(o_status[3]), .A2(o_status[2]), .A3(n221), .ZN(
        n263) );
  AOI211D0BWP12T30P140 U418 ( .A1(o_status[3]), .A2(n232), .B(i_rst), .C(n263), 
        .ZN(n220) );
  INVD0BWP12T30P140 U419 ( .I(o_status[2]), .ZN(n259) );
  OR3D0BWP12T30P140 U420 ( .A1(o_status[3]), .A2(n259), .A3(n231), .Z(n219) );
  OAI211D0BWP12T30P140 U421 ( .A1(n230), .A2(n221), .B(n220), .C(n219), .ZN(
        N201) );
  AO21D0BWP12T30P140 U422 ( .A1(n224), .A2(n223), .B(n222), .Z(n225) );
  OAI21D0BWP12T30P140 U423 ( .A1(n227), .A2(n226), .B(n225), .ZN(n288) );
  AN2D0BWP12T30P140 U424 ( .A1(n229), .A2(n228), .Z(n266) );
  OAI22D0BWP12T30P140 U425 ( .A1(n266), .A2(n239), .B1(n284), .B2(n240), .ZN(
        n419) );
  NR2D0BWP12T30P140 U426 ( .A1(n231), .A2(n230), .ZN(n262) );
  INVD0BWP12T30P140 U427 ( .I(o_status[4]), .ZN(n261) );
  AOI22D0BWP12T30P140 U428 ( .A1(o_status[4]), .A2(n262), .B1(n263), .B2(n261), 
        .ZN(n237) );
  AOI21D0BWP12T30P140 U429 ( .A1(n233), .A2(o_status[3]), .B(n232), .ZN(n258)
         );
  INVD0BWP12T30P140 U430 ( .I(n258), .ZN(n235) );
  AOI22D0BWP12T30P140 U431 ( .A1(o_status[4]), .A2(o_status[3]), .B1(n259), 
        .B2(n261), .ZN(n234) );
  OAI21D0BWP12T30P140 U432 ( .A1(n235), .A2(n234), .B(o_status[5]), .ZN(n236)
         );
  OAI211D0BWP12T30P140 U433 ( .A1(o_status[5]), .A2(n237), .B(n273), .C(n236), 
        .ZN(N203) );
  MUX2ND0BWP12T30P140 U434 ( .I0(n241), .I1(r_first[3]), .S(n238), .ZN(n268)
         );
  OAI22D0BWP12T30P140 U435 ( .A1(n241), .A2(n240), .B1(n268), .B2(n239), .ZN(
        n421) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n242), .A2(n254), .B1(fifo[68]), .B2(n242), 
        .ZN(n349) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n243), .A2(n256), .B1(fifo[77]), .B2(n243), 
        .ZN(n342) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n244), .A2(n252), .B1(fifo[83]), .B2(n244), 
        .ZN(n332) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n248), .A2(n253), .B1(fifo[102]), .B2(n248), 
        .ZN(n319) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n245), .A2(n250), .B1(fifo[113]), .B2(n245), 
        .ZN(n298) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n246), .A2(n253), .B1(fifo[126]), .B2(n246), 
        .ZN(n295) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n248), .A2(n247), .B1(fifo[103]), .B2(n248), 
        .ZN(n320) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n255), .A2(n251), .B1(fifo[0]), .B2(n255), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n255), .A2(n250), .B1(fifo[1]), .B2(n255), 
        .ZN(n410) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n257), .A2(n249), .B1(fifo[10]), .B2(n257), 
        .ZN(n403) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n255), .A2(n249), .B1(fifo[2]), .B2(n255), 
        .ZN(n411) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n255), .A2(n256), .B1(fifo[5]), .B2(n255), 
        .ZN(n414) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n255), .A2(n252), .B1(fifo[3]), .B2(n255), 
        .ZN(n412) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n257), .A2(n250), .B1(fifo[9]), .B2(n257), 
        .ZN(n402) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n257), .A2(n251), .B1(fifo[8]), .B2(n257), 
        .ZN(n409) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n257), .A2(n252), .B1(fifo[11]), .B2(n257), 
        .ZN(n404) );
  MAOI22D0BWP12T30P140 U452 ( .A1(n255), .A2(n253), .B1(fifo[6]), .B2(n255), 
        .ZN(n415) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n257), .A2(n254), .B1(fifo[12]), .B2(n257), 
        .ZN(n405) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n255), .A2(n254), .B1(fifo[4]), .B2(n255), 
        .ZN(n413) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n257), .A2(n256), .B1(fifo[13]), .B2(n257), 
        .ZN(n406) );
  CKBD0BWP12T30P140 U456 ( .I(i_clk), .Z(n450) );
  CKBD0BWP12T30P140 U457 ( .I(n450), .Z(n444) );
  CKBD0BWP12T30P140 U458 ( .I(n450), .Z(n443) );
  CKBD0BWP12T30P140 U459 ( .I(n450), .Z(n445) );
  CKBD0BWP12T30P140 U460 ( .I(n450), .Z(n446) );
  CKBD0BWP12T30P140 U461 ( .I(n450), .Z(n447) );
  CKBD0BWP12T30P140 U462 ( .I(n450), .Z(n448) );
  CKBD0BWP12T30P140 U463 ( .I(n450), .Z(n449) );
  CKBD0BWP12T30P140 U464 ( .I(n450), .Z(n442) );
  CKBD0BWP12T30P140 U465 ( .I(n450), .Z(n441) );
  OAI21D0BWP12T30P140 U466 ( .A1(o_status[3]), .A2(n259), .B(n258), .ZN(n260)
         );
  OAI32D0BWP12T30P140 U467 ( .A1(o_status[4]), .A2(n263), .A3(n262), .B1(n261), 
        .B2(n260), .ZN(n264) );
  ND2D0BWP12T30P140 U468 ( .A1(n264), .A2(n273), .ZN(N202) );
  OAI22D0BWP12T30P140 U469 ( .A1(r_last[2]), .A2(n267), .B1(r_last[1]), .B2(
        n266), .ZN(n265) );
  AOI221D0BWP12T30P140 U470 ( .A1(n267), .A2(r_last[2]), .B1(r_last[1]), .B2(
        n266), .C(n265), .ZN(n275) );
  MUX2ND0BWP12T30P140 U471 ( .I0(n269), .I1(r_last[3]), .S(n268), .ZN(n274) );
  AOI22D0BWP12T30P140 U472 ( .A1(r_first[0]), .A2(r_last[0]), .B1(n271), .B2(
        n270), .ZN(n279) );
  ND2D0BWP12T30P140 U473 ( .A1(n273), .A2(n272), .ZN(n282) );
  AOI31D0BWP12T30P140 U474 ( .A1(n275), .A2(n274), .A3(n279), .B(n282), .ZN(
        n437) );
  NR2D0BWP12T30P140 U475 ( .A1(n284), .A2(n276), .ZN(n281) );
  AOI21D0BWP12T30P140 U476 ( .A1(n281), .A2(n277), .B(n280), .ZN(n278) );
  AOI211D0BWP12T30P140 U477 ( .A1(n281), .A2(n280), .B(n279), .C(n278), .ZN(
        n433) );
  INVD0BWP12T30P140 U478 ( .I(n282), .ZN(n432) );
  NR2D0BWP12T30P140 U479 ( .A1(r_first[2]), .A2(r_last[2]), .ZN(n283) );
  OAI33D0BWP12T30P140 U480 ( .A1(r_first[1]), .A2(n429), .A3(n286), .B1(n284), 
        .B2(n283), .B3(r_last[1]), .ZN(n431) );
  AOI32D0BWP12T30P140 U481 ( .A1(n433), .A2(n432), .A3(n431), .B1(n430), .B2(
        n432), .ZN(n434) );
  AOI21D0BWP12T30P140 U482 ( .A1(n435), .A2(n437), .B(n434), .ZN(n436) );
  AOI21D0BWP12T30P140 U483 ( .A1(n437), .A2(will_overflow), .B(n436), .ZN(n439) );
  ND2D0BWP12T30P140 U484 ( .A1(n439), .A2(n438), .ZN(n423) );
endmodule


module txuart_00000019 ( i_clk, i_reset, i_setup, i_break, i_wr, i_data, 
        i_cts_n, o_uart_tx, o_busy );
  input [30:0] i_setup;
  input [7:0] i_data;
  input i_clk, i_reset, i_break, i_wr, i_cts_n;
  output o_uart_tx, o_busy;
  wire   n288, r_setup_30, q_cts_n, qq_cts_n, N19, ck_cts, zero_baud_counter,
         N59, calc_parity, last_state, N261, N262, N263, N264, N265, N266,
         N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N290, N300, C22_DATA4_1, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, U2_RSOP_45_C1_Z_1,
         DP_OP_53J1_125_5715_n27, DP_OP_53J1_125_5715_n26, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286;
  wire   [27:24] r_setup;
  wire   [23:0] clocks_per_baud;
  wire   [3:0] state;
  wire   [7:0] lcl_data;
  wire   [27:0] baud_counter;

  DFQD2BWP12T30P140 r_busy_reg ( .D(N59), .CP(n283), .Q(n288) );
  DFQD2BWP12T30P140 baud_counter_reg_4_ ( .D(N265), .CP(i_clk), .Q(
        baud_counter[4]) );
  DFQD2BWP12T30P140 baud_counter_reg_5_ ( .D(N266), .CP(i_clk), .Q(
        baud_counter[5]) );
  DFQD2BWP12T30P140 qq_cts_n_reg ( .D(q_cts_n), .CP(n284), .Q(qq_cts_n) );
  DFQD2BWP12T30P140 ck_cts_reg ( .D(N19), .CP(n286), .Q(ck_cts) );
  DFQD2BWP12T30P140 r_setup_reg_26_ ( .D(n97), .CP(n284), .Q(r_setup[26]) );
  DFQD2BWP12T30P140 lcl_data_reg_4_ ( .D(n110), .CP(n284), .Q(lcl_data[4]) );
  DFQD2BWP12T30P140 lcl_data_reg_3_ ( .D(n111), .CP(n285), .Q(lcl_data[3]) );
  DFQD2BWP12T30P140 lcl_data_reg_1_ ( .D(n113), .CP(n283), .Q(lcl_data[1]) );
  DFQD2BWP12T30P140 o_uart_tx_reg ( .D(n101), .CP(n283), .Q(o_uart_tx) );
  DFQD2BWP12T30P140 r_setup_reg_30_ ( .D(n99), .CP(n284), .Q(r_setup_30) );
  DFQD2BWP12T30P140 baud_counter_reg_25_ ( .D(N286), .CP(n283), .Q(
        baud_counter[25]) );
  DFQD2BWP12T30P140 baud_counter_reg_27_ ( .D(N288), .CP(n283), .Q(
        baud_counter[27]) );
  DFQD2BWP12T30P140 baud_counter_reg_20_ ( .D(N281), .CP(n283), .Q(
        baud_counter[20]) );
  DFQD2BWP12T30P140 baud_counter_reg_24_ ( .D(N285), .CP(n283), .Q(
        baud_counter[24]) );
  DFQD2BWP12T30P140 baud_counter_reg_26_ ( .D(N287), .CP(n283), .Q(
        baud_counter[26]) );
  DFQD2BWP12T30P140 lcl_data_reg_7_ ( .D(n107), .CP(n286), .Q(lcl_data[7]) );
  DFQD2BWP12T30P140 baud_counter_reg_11_ ( .D(N272), .CP(n283), .Q(
        baud_counter[11]) );
  DFQD2BWP12T30P140 baud_counter_reg_1_ ( .D(N262), .CP(n285), .Q(
        baud_counter[1]) );
  DFQD2BWP12T30P140 baud_counter_reg_12_ ( .D(N273), .CP(n284), .Q(
        baud_counter[12]) );
  DFQD2BWP12T30P140 baud_counter_reg_16_ ( .D(N277), .CP(n284), .Q(
        baud_counter[16]) );
  DFQD2BWP12T30P140 baud_counter_reg_8_ ( .D(N269), .CP(n284), .Q(
        baud_counter[8]) );
  DFQD2BWP12T30P140 lcl_data_reg_6_ ( .D(n108), .CP(n286), .Q(lcl_data[6]) );
  DFQD2BWP12T30P140 lcl_data_reg_5_ ( .D(n109), .CP(n286), .Q(lcl_data[5]) );
  DFQD2BWP12T30P140 lcl_data_reg_2_ ( .D(n112), .CP(n286), .Q(lcl_data[2]) );
  DFQD2BWP12T30P140 baud_counter_reg_13_ ( .D(N274), .CP(n285), .Q(
        baud_counter[13]) );
  DFQD2BWP12T30P140 baud_counter_reg_17_ ( .D(N278), .CP(n285), .Q(
        baud_counter[17]) );
  DFQD2BWP12T30P140 baud_counter_reg_3_ ( .D(N264), .CP(n283), .Q(
        baud_counter[3]) );
  DFQD2BWP12T30P140 baud_counter_reg_7_ ( .D(N268), .CP(n283), .Q(
        baud_counter[7]) );
  DFQD2BWP12T30P140 baud_counter_reg_15_ ( .D(N276), .CP(n283), .Q(
        baud_counter[15]) );
  DFQD2BWP12T30P140 baud_counter_reg_19_ ( .D(N280), .CP(n283), .Q(
        baud_counter[19]) );
  DFQD2BWP12T30P140 baud_counter_reg_22_ ( .D(N283), .CP(n283), .Q(
        baud_counter[22]) );
  DFQD2BWP12T30P140 baud_counter_reg_21_ ( .D(N282), .CP(n283), .Q(
        baud_counter[21]) );
  DFQD2BWP12T30P140 baud_counter_reg_18_ ( .D(N279), .CP(n283), .Q(
        baud_counter[18]) );
  DFQD2BWP12T30P140 baud_counter_reg_0_ ( .D(N261), .CP(n285), .Q(
        baud_counter[0]) );
  DFQD2BWP12T30P140 baud_counter_reg_2_ ( .D(N263), .CP(n286), .Q(
        baud_counter[2]) );
  DFQD2BWP12T30P140 last_state_reg ( .D(N300), .CP(n283), .Q(last_state) );
  DFQD2BWP12T30P140 baud_counter_reg_14_ ( .D(N275), .CP(n286), .Q(
        baud_counter[14]) );
  DFQD2BWP12T30P140 baud_counter_reg_6_ ( .D(N267), .CP(n286), .Q(
        baud_counter[6]) );
  DFQD2BWP12T30P140 baud_counter_reg_10_ ( .D(N271), .CP(n286), .Q(
        baud_counter[10]) );
  DFQD2BWP12T30P140 calc_parity_reg ( .D(n102), .CP(n284), .Q(calc_parity) );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n103), .CP(i_clk), .Q(state[3]) );
  DFQD2BWP12T30P140 r_setup_reg_25_ ( .D(n96), .CP(n284), .Q(r_setup[25]) );
  DFQD2BWP12T30P140 lcl_data_reg_0_ ( .D(n114), .CP(n283), .Q(lcl_data[0]) );
  DFQD2BWP12T30P140 r_setup_reg_19_ ( .D(n90), .CP(n284), .Q(
        clocks_per_baud[19]) );
  DFQD2BWP12T30P140 r_setup_reg_17_ ( .D(n88), .CP(n285), .Q(
        clocks_per_baud[17]) );
  DFQD2BWP12T30P140 r_setup_reg_15_ ( .D(n86), .CP(n285), .Q(
        clocks_per_baud[15]) );
  DFQD2BWP12T30P140 r_setup_reg_11_ ( .D(n82), .CP(n285), .Q(
        clocks_per_baud[11]) );
  DFQD2BWP12T30P140 r_setup_reg_9_ ( .D(n80), .CP(n285), .Q(clocks_per_baud[9]) );
  DFQD2BWP12T30P140 r_setup_reg_7_ ( .D(n78), .CP(n285), .Q(clocks_per_baud[7]) );
  DFQD2BWP12T30P140 r_setup_reg_23_ ( .D(n94), .CP(n284), .Q(
        clocks_per_baud[23]) );
  DFQD2BWP12T30P140 r_setup_reg_22_ ( .D(n93), .CP(n284), .Q(
        clocks_per_baud[22]) );
  DFQD2BWP12T30P140 r_setup_reg_21_ ( .D(n92), .CP(n284), .Q(
        clocks_per_baud[21]) );
  DFQD2BWP12T30P140 r_setup_reg_20_ ( .D(n91), .CP(n284), .Q(
        clocks_per_baud[20]) );
  DFQD2BWP12T30P140 r_setup_reg_0_ ( .D(n100), .CP(n284), .Q(
        clocks_per_baud[0]) );
  DFQD2BWP12T30P140 r_setup_reg_18_ ( .D(n89), .CP(n284), .Q(
        clocks_per_baud[18]) );
  DFQD2BWP12T30P140 r_setup_reg_16_ ( .D(n87), .CP(n285), .Q(
        clocks_per_baud[16]) );
  DFQD2BWP12T30P140 r_setup_reg_14_ ( .D(n85), .CP(n285), .Q(
        clocks_per_baud[14]) );
  DFQD2BWP12T30P140 r_setup_reg_12_ ( .D(n83), .CP(n285), .Q(
        clocks_per_baud[12]) );
  DFQD2BWP12T30P140 r_setup_reg_10_ ( .D(n81), .CP(n285), .Q(
        clocks_per_baud[10]) );
  DFQD2BWP12T30P140 r_setup_reg_8_ ( .D(n79), .CP(n285), .Q(clocks_per_baud[8]) );
  DFQD2BWP12T30P140 r_setup_reg_27_ ( .D(n98), .CP(n284), .Q(r_setup[27]) );
  DFQD2BWP12T30P140 r_setup_reg_5_ ( .D(n76), .CP(n286), .Q(clocks_per_baud[5]) );
  DFQD2BWP12T30P140 r_setup_reg_3_ ( .D(n74), .CP(n286), .Q(clocks_per_baud[3]) );
  DFQD2BWP12T30P140 r_setup_reg_1_ ( .D(n72), .CP(n286), .Q(clocks_per_baud[1]) );
  DFQD2BWP12T30P140 r_setup_reg_4_ ( .D(n75), .CP(n286), .Q(clocks_per_baud[4]) );
  DFQD2BWP12T30P140 r_setup_reg_2_ ( .D(n73), .CP(n286), .Q(clocks_per_baud[2]) );
  DFQD2BWP12T30P140 q_cts_n_reg ( .D(i_cts_n), .CP(n286), .Q(q_cts_n) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n104), .CP(n286), .Q(state[2]) );
  DFQD2BWP12T30P140 zero_baud_counter_reg ( .D(N290), .CP(n286), .Q(
        zero_baud_counter) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n105), .CP(n286), .Q(state[1]) );
  FA1D0BWP12T30P140 DP_OP_53J1_125_5715_U52 ( .A(U2_RSOP_45_C1_Z_1), .B(n282), 
        .CI(DP_OP_53J1_125_5715_n27), .CO(DP_OP_53J1_125_5715_n26), .S(
        C22_DATA4_1) );
  DFQD1BWP12T30P140 r_setup_reg_24_ ( .D(n95), .CP(n284), .Q(r_setup[24]) );
  DFQD1BWP12T30P140 baud_counter_reg_9_ ( .D(N270), .CP(n285), .Q(
        baud_counter[9]) );
  DFQD1BWP12T30P140 baud_counter_reg_23_ ( .D(N284), .CP(n283), .Q(
        baud_counter[23]) );
  DFQD1BWP12T30P140 r_setup_reg_13_ ( .D(n84), .CP(n285), .Q(
        clocks_per_baud[13]) );
  DFQD1BWP12T30P140 r_setup_reg_6_ ( .D(n77), .CP(n285), .Q(clocks_per_baud[6]) );
  DFQD1BWP12T30P140 state_reg_0_ ( .D(n106), .CP(n286), .Q(state[0]) );
  CKXOR2D0BWP12T30P140 U3 ( .A1(n196), .A2(n195), .Z(n2) );
  INVD0BWP12T30P140 U4 ( .I(state[3]), .ZN(n152) );
  ND2D0BWP12T30P140 U5 ( .A1(state[2]), .A2(state[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U6 ( .A1(n152), .A2(n3), .ZN(n159) );
  INVD0BWP12T30P140 U7 ( .I(zero_baud_counter), .ZN(n164) );
  NR2D0BWP12T30P140 U8 ( .A1(i_break), .A2(n164), .ZN(n275) );
  INVD0BWP12T30P140 U9 ( .I(n275), .ZN(n175) );
  NR2D0BWP12T30P140 U10 ( .A1(n159), .A2(n175), .ZN(n197) );
  INVD0BWP12T30P140 U11 ( .I(n197), .ZN(n186) );
  INVD0BWP12T30P140 U12 ( .I(n186), .ZN(n274) );
  INVD0BWP12T30P140 U13 ( .I(n288), .ZN(n170) );
  INVD0BWP12T30P140 U14 ( .I(state[0]), .ZN(n123) );
  NR2D0BWP12T30P140 U15 ( .A1(n123), .A2(n3), .ZN(n150) );
  ND2D0BWP12T30P140 U16 ( .A1(state[3]), .A2(n150), .ZN(n163) );
  NR2D0BWP12T30P140 U17 ( .A1(n175), .A2(n163), .ZN(n180) );
  ND3D0BWP12T30P140 U18 ( .A1(n170), .A2(n180), .A3(i_wr), .ZN(n194) );
  INVD0BWP12T30P140 U19 ( .I(n194), .ZN(n269) );
  INVD0BWP12T30P140 U20 ( .I(i_break), .ZN(n37) );
  INVD0BWP12T30P140 U21 ( .I(n37), .ZN(n261) );
  NR3D0BWP12T30P140 U22 ( .A1(n274), .A2(n269), .A3(n261), .ZN(n148) );
  ND3D0BWP12T30P140 U23 ( .A1(zero_baud_counter), .A2(n148), .A3(ck_cts), .ZN(
        N59) );
  OR2D0BWP12T30P140 U24 ( .A1(i_break), .A2(zero_baud_counter), .Z(n122) );
  INVD0BWP12T30P140 U25 ( .I(n122), .ZN(n279) );
  AO22D0BWP12T30P140 U26 ( .A1(n279), .A2(baud_counter[2]), .B1(
        clocks_per_baud[2]), .B2(n274), .Z(n191) );
  OR2D0BWP12T30P140 U27 ( .A1(DP_OP_53J1_125_5715_n26), .A2(n191), .Z(n57) );
  AO22D0BWP12T30P140 U28 ( .A1(n279), .A2(baud_counter[3]), .B1(
        clocks_per_baud[3]), .B2(n197), .Z(n56) );
  OR2D0BWP12T30P140 U29 ( .A1(n57), .A2(n56), .Z(n10) );
  AO22D0BWP12T30P140 U30 ( .A1(n279), .A2(baud_counter[4]), .B1(
        clocks_per_baud[4]), .B2(n274), .Z(n9) );
  XNR2D0BWP12T30P140 U31 ( .A1(n10), .A2(n9), .ZN(n6) );
  OAI21D0BWP12T30P140 U32 ( .A1(n261), .A2(n159), .B(n122), .ZN(n253) );
  CKBD0BWP12T30P140 U33 ( .I(n253), .Z(n272) );
  NR3D0BWP12T30P140 U34 ( .A1(i_setup[2]), .A2(i_setup[1]), .A3(i_setup[0]), 
        .ZN(n189) );
  INVD0BWP12T30P140 U35 ( .I(i_setup[3]), .ZN(n55) );
  ND2D0BWP12T30P140 U36 ( .A1(n189), .A2(n55), .ZN(n54) );
  NR2D0BWP12T30P140 U37 ( .A1(i_setup[4]), .A2(n54), .ZN(n202) );
  AOI21D0BWP12T30P140 U38 ( .A1(i_setup[4]), .A2(n54), .B(n202), .ZN(n4) );
  MOAI22D0BWP12T30P140 U39 ( .A1(n194), .A2(n4), .B1(n261), .B2(
        clocks_per_baud[0]), .ZN(n5) );
  AO21D0BWP12T30P140 U40 ( .A1(n6), .A2(n272), .B(n5), .Z(N265) );
  INVD0BWP12T30P140 U41 ( .I(r_setup[24]), .ZN(n142) );
  ND2D0BWP12T30P140 U42 ( .A1(i_setup[24]), .A2(n170), .ZN(n7) );
  OAI21D0BWP12T30P140 U43 ( .A1(n170), .A2(n142), .B(n7), .ZN(n95) );
  INVD0BWP12T30P140 U44 ( .I(n170), .ZN(o_busy) );
  CKMUX2D0BWP12T30P140 U45 ( .I0(i_setup[26]), .I1(r_setup[26]), .S(o_busy), 
        .Z(n97) );
  NR2D0BWP12T30P140 U46 ( .A1(n170), .A2(n164), .ZN(n154) );
  NR2D0BWP12T30P140 U47 ( .A1(zero_baud_counter), .A2(n170), .ZN(n153) );
  AO222D0BWP12T30P140 U48 ( .A1(n170), .A2(i_data[4]), .B1(n154), .B2(
        lcl_data[5]), .C1(lcl_data[4]), .C2(n153), .Z(n110) );
  AO222D0BWP12T30P140 U49 ( .A1(n170), .A2(i_data[3]), .B1(n154), .B2(
        lcl_data[4]), .C1(lcl_data[3]), .C2(n153), .Z(n111) );
  AO222D0BWP12T30P140 U50 ( .A1(n170), .A2(i_data[1]), .B1(n154), .B2(
        lcl_data[2]), .C1(lcl_data[1]), .C2(n153), .Z(n113) );
  CKMUX2D0BWP12T30P140 U51 ( .I0(i_setup[30]), .I1(r_setup_30), .S(o_busy), 
        .Z(n99) );
  INVD0BWP12T30P140 U52 ( .I(clocks_per_baud[21]), .ZN(n13) );
  INVD0BWP12T30P140 U53 ( .I(i_setup[23]), .ZN(n8) );
  INVD0BWP12T30P140 U54 ( .I(i_setup[5]), .ZN(n201) );
  ND2D0BWP12T30P140 U55 ( .A1(n202), .A2(n201), .ZN(n200) );
  NR2D0BWP12T30P140 U56 ( .A1(i_setup[6]), .A2(n200), .ZN(n242) );
  INVD0BWP12T30P140 U57 ( .I(i_setup[7]), .ZN(n241) );
  ND2D0BWP12T30P140 U58 ( .A1(n242), .A2(n241), .ZN(n240) );
  NR2D0BWP12T30P140 U59 ( .A1(i_setup[8]), .A2(n240), .ZN(n218) );
  INVD0BWP12T30P140 U60 ( .I(i_setup[9]), .ZN(n217) );
  ND2D0BWP12T30P140 U61 ( .A1(n218), .A2(n217), .ZN(n216) );
  NR2D0BWP12T30P140 U62 ( .A1(i_setup[10]), .A2(n216), .ZN(n210) );
  INVD0BWP12T30P140 U63 ( .I(i_setup[11]), .ZN(n209) );
  ND2D0BWP12T30P140 U64 ( .A1(n210), .A2(n209), .ZN(n208) );
  NR2D0BWP12T30P140 U65 ( .A1(i_setup[12]), .A2(n208), .ZN(n226) );
  INVD0BWP12T30P140 U66 ( .I(i_setup[13]), .ZN(n225) );
  ND2D0BWP12T30P140 U67 ( .A1(n226), .A2(n225), .ZN(n224) );
  NR2D0BWP12T30P140 U68 ( .A1(i_setup[14]), .A2(n224), .ZN(n250) );
  INVD0BWP12T30P140 U69 ( .I(i_setup[15]), .ZN(n249) );
  ND2D0BWP12T30P140 U70 ( .A1(n250), .A2(n249), .ZN(n248) );
  NR2D0BWP12T30P140 U71 ( .A1(i_setup[16]), .A2(n248), .ZN(n234) );
  INVD0BWP12T30P140 U72 ( .I(i_setup[17]), .ZN(n233) );
  ND2D0BWP12T30P140 U73 ( .A1(n234), .A2(n233), .ZN(n232) );
  NR2D0BWP12T30P140 U74 ( .A1(i_setup[18]), .A2(n232), .ZN(n259) );
  INVD0BWP12T30P140 U75 ( .I(i_setup[19]), .ZN(n258) );
  ND2D0BWP12T30P140 U76 ( .A1(n259), .A2(n258), .ZN(n257) );
  NR2D0BWP12T30P140 U77 ( .A1(i_setup[20]), .A2(n257), .ZN(n268) );
  INVD0BWP12T30P140 U78 ( .I(i_setup[21]), .ZN(n267) );
  ND2D0BWP12T30P140 U79 ( .A1(n268), .A2(n267), .ZN(n266) );
  NR2D0BWP12T30P140 U80 ( .A1(i_setup[22]), .A2(n266), .ZN(n115) );
  ND3D0BWP12T30P140 U81 ( .A1(n8), .A2(n269), .A3(n115), .ZN(n65) );
  OR2D0BWP12T30P140 U82 ( .A1(n10), .A2(n9), .Z(n199) );
  AO22D0BWP12T30P140 U83 ( .A1(n279), .A2(baud_counter[5]), .B1(
        clocks_per_baud[5]), .B2(n197), .Z(n198) );
  OR2D0BWP12T30P140 U84 ( .A1(n199), .A2(n198), .Z(n132) );
  AO22D0BWP12T30P140 U85 ( .A1(n279), .A2(baud_counter[6]), .B1(
        clocks_per_baud[6]), .B2(n274), .Z(n131) );
  OR2D0BWP12T30P140 U86 ( .A1(n132), .A2(n131), .Z(n239) );
  AO22D0BWP12T30P140 U87 ( .A1(n279), .A2(baud_counter[7]), .B1(
        clocks_per_baud[7]), .B2(n197), .Z(n238) );
  OR2D0BWP12T30P140 U88 ( .A1(n239), .A2(n238), .Z(n50) );
  AO22D0BWP12T30P140 U89 ( .A1(n279), .A2(baud_counter[8]), .B1(
        clocks_per_baud[8]), .B2(n274), .Z(n49) );
  OR2D0BWP12T30P140 U90 ( .A1(n50), .A2(n49), .Z(n215) );
  AO22D0BWP12T30P140 U91 ( .A1(n279), .A2(baud_counter[9]), .B1(
        clocks_per_baud[9]), .B2(n197), .Z(n214) );
  OR2D0BWP12T30P140 U92 ( .A1(n215), .A2(n214), .Z(n137) );
  AO22D0BWP12T30P140 U93 ( .A1(n279), .A2(baud_counter[10]), .B1(
        clocks_per_baud[10]), .B2(n274), .Z(n136) );
  OR2D0BWP12T30P140 U94 ( .A1(n137), .A2(n136), .Z(n207) );
  AO22D0BWP12T30P140 U95 ( .A1(n279), .A2(baud_counter[11]), .B1(
        clocks_per_baud[11]), .B2(n197), .Z(n206) );
  OR2D0BWP12T30P140 U96 ( .A1(n207), .A2(n206), .Z(n40) );
  INVD0BWP12T30P140 U97 ( .I(n122), .ZN(n16) );
  AO22D0BWP12T30P140 U98 ( .A1(n16), .A2(baud_counter[12]), .B1(
        clocks_per_baud[12]), .B2(n197), .Z(n39) );
  OR2D0BWP12T30P140 U99 ( .A1(n40), .A2(n39), .Z(n223) );
  AO22D0BWP12T30P140 U100 ( .A1(n279), .A2(baud_counter[13]), .B1(
        clocks_per_baud[13]), .B2(n274), .Z(n222) );
  OR2D0BWP12T30P140 U101 ( .A1(n223), .A2(n222), .Z(n127) );
  AO22D0BWP12T30P140 U102 ( .A1(n16), .A2(baud_counter[14]), .B1(
        clocks_per_baud[14]), .B2(n197), .Z(n126) );
  OR2D0BWP12T30P140 U103 ( .A1(n127), .A2(n126), .Z(n247) );
  AO22D0BWP12T30P140 U104 ( .A1(n16), .A2(baud_counter[15]), .B1(
        clocks_per_baud[15]), .B2(n274), .Z(n246) );
  OR2D0BWP12T30P140 U105 ( .A1(n247), .A2(n246), .Z(n45) );
  AO22D0BWP12T30P140 U106 ( .A1(n16), .A2(baud_counter[16]), .B1(
        clocks_per_baud[16]), .B2(n197), .Z(n44) );
  OR2D0BWP12T30P140 U107 ( .A1(n45), .A2(n44), .Z(n231) );
  AO22D0BWP12T30P140 U108 ( .A1(n16), .A2(baud_counter[17]), .B1(
        clocks_per_baud[17]), .B2(n274), .Z(n230) );
  OR2D0BWP12T30P140 U109 ( .A1(n231), .A2(n230), .Z(n118) );
  AO22D0BWP12T30P140 U110 ( .A1(n16), .A2(baud_counter[18]), .B1(
        clocks_per_baud[18]), .B2(n197), .Z(n117) );
  OR2D0BWP12T30P140 U111 ( .A1(n118), .A2(n117), .Z(n256) );
  AO22D0BWP12T30P140 U112 ( .A1(n16), .A2(baud_counter[19]), .B1(
        clocks_per_baud[19]), .B2(n274), .Z(n255) );
  OR2D0BWP12T30P140 U113 ( .A1(n256), .A2(n255), .Z(n23) );
  AO22D0BWP12T30P140 U114 ( .A1(n16), .A2(baud_counter[20]), .B1(
        clocks_per_baud[20]), .B2(n197), .Z(n22) );
  OR2D0BWP12T30P140 U115 ( .A1(n23), .A2(n22), .Z(n265) );
  AO22D0BWP12T30P140 U116 ( .A1(n16), .A2(baud_counter[21]), .B1(
        clocks_per_baud[21]), .B2(n197), .Z(n264) );
  OR2D0BWP12T30P140 U117 ( .A1(n265), .A2(n264), .Z(n61) );
  AO22D0BWP12T30P140 U118 ( .A1(n16), .A2(baud_counter[22]), .B1(
        clocks_per_baud[22]), .B2(n197), .Z(n60) );
  OR2D0BWP12T30P140 U119 ( .A1(n61), .A2(n60), .Z(n68) );
  AO22D0BWP12T30P140 U120 ( .A1(n16), .A2(baud_counter[23]), .B1(
        clocks_per_baud[23]), .B2(n274), .Z(n67) );
  OR2D0BWP12T30P140 U121 ( .A1(n68), .A2(n67), .Z(n28) );
  AN2D0BWP12T30P140 U122 ( .A1(n16), .A2(baud_counter[24]), .Z(n27) );
  OR2D0BWP12T30P140 U123 ( .A1(n28), .A2(n27), .Z(n15) );
  AN2D0BWP12T30P140 U124 ( .A1(n16), .A2(baud_counter[25]), .Z(n14) );
  XNR2D0BWP12T30P140 U125 ( .A1(n15), .A2(n14), .ZN(n11) );
  ND2D0BWP12T30P140 U126 ( .A1(n11), .A2(n272), .ZN(n12) );
  OAI211D0BWP12T30P140 U127 ( .A1(n37), .A2(n13), .B(n65), .C(n12), .ZN(N286)
         );
  INVD0BWP12T30P140 U128 ( .I(clocks_per_baud[23]), .ZN(n21) );
  OR2D0BWP12T30P140 U129 ( .A1(n15), .A2(n14), .Z(n33) );
  AN2D0BWP12T30P140 U130 ( .A1(n16), .A2(baud_counter[26]), .Z(n32) );
  OR2D0BWP12T30P140 U131 ( .A1(n33), .A2(n32), .Z(n18) );
  AN2D0BWP12T30P140 U132 ( .A1(n16), .A2(baud_counter[27]), .Z(n17) );
  XNR2D0BWP12T30P140 U133 ( .A1(n18), .A2(n17), .ZN(n19) );
  ND2D0BWP12T30P140 U134 ( .A1(n19), .A2(n272), .ZN(n20) );
  OAI211D0BWP12T30P140 U135 ( .A1(n37), .A2(n21), .B(n65), .C(n20), .ZN(N288)
         );
  XNR2D0BWP12T30P140 U136 ( .A1(n23), .A2(n22), .ZN(n26) );
  AOI21D0BWP12T30P140 U137 ( .A1(i_setup[20]), .A2(n257), .B(n268), .ZN(n24)
         );
  MOAI22D0BWP12T30P140 U138 ( .A1(n194), .A2(n24), .B1(i_break), .B2(
        clocks_per_baud[16]), .ZN(n25) );
  AO21D0BWP12T30P140 U139 ( .A1(n26), .A2(n253), .B(n25), .Z(N281) );
  INVD0BWP12T30P140 U140 ( .I(clocks_per_baud[20]), .ZN(n31) );
  XNR2D0BWP12T30P140 U141 ( .A1(n28), .A2(n27), .ZN(n29) );
  ND2D0BWP12T30P140 U142 ( .A1(n29), .A2(n253), .ZN(n30) );
  OAI211D0BWP12T30P140 U143 ( .A1(n37), .A2(n31), .B(n65), .C(n30), .ZN(N285)
         );
  INVD0BWP12T30P140 U144 ( .I(clocks_per_baud[22]), .ZN(n36) );
  XNR2D0BWP12T30P140 U145 ( .A1(n33), .A2(n32), .ZN(n34) );
  ND2D0BWP12T30P140 U146 ( .A1(n34), .A2(n253), .ZN(n35) );
  OAI211D0BWP12T30P140 U147 ( .A1(n37), .A2(n36), .B(n65), .C(n35), .ZN(N287)
         );
  AO22D0BWP12T30P140 U148 ( .A1(lcl_data[7]), .A2(n153), .B1(i_data[7]), .B2(
        n170), .Z(n107) );
  NR2D0BWP12T30P140 U149 ( .A1(i_setup[1]), .A2(i_setup[0]), .ZN(n188) );
  AOI21D0BWP12T30P140 U150 ( .A1(i_setup[0]), .A2(i_setup[1]), .B(n188), .ZN(
        n38) );
  MOAI22D0BWP12T30P140 U151 ( .A1(n194), .A2(n38), .B1(C22_DATA4_1), .B2(n272), 
        .ZN(N262) );
  XNR2D0BWP12T30P140 U152 ( .A1(n40), .A2(n39), .ZN(n43) );
  AOI21D0BWP12T30P140 U153 ( .A1(i_setup[12]), .A2(n208), .B(n226), .ZN(n41)
         );
  MOAI22D0BWP12T30P140 U154 ( .A1(n194), .A2(n41), .B1(i_break), .B2(
        clocks_per_baud[8]), .ZN(n42) );
  AO21D0BWP12T30P140 U155 ( .A1(n43), .A2(n253), .B(n42), .Z(N273) );
  XNR2D0BWP12T30P140 U156 ( .A1(n45), .A2(n44), .ZN(n48) );
  AOI21D0BWP12T30P140 U157 ( .A1(i_setup[16]), .A2(n248), .B(n234), .ZN(n46)
         );
  MOAI22D0BWP12T30P140 U158 ( .A1(n194), .A2(n46), .B1(n261), .B2(
        clocks_per_baud[12]), .ZN(n47) );
  AO21D0BWP12T30P140 U159 ( .A1(n48), .A2(n272), .B(n47), .Z(N277) );
  XNR2D0BWP12T30P140 U160 ( .A1(n50), .A2(n49), .ZN(n53) );
  AOI21D0BWP12T30P140 U161 ( .A1(i_setup[8]), .A2(n240), .B(n218), .ZN(n51) );
  MOAI22D0BWP12T30P140 U162 ( .A1(n194), .A2(n51), .B1(n261), .B2(
        clocks_per_baud[4]), .ZN(n52) );
  AO21D0BWP12T30P140 U163 ( .A1(n53), .A2(n253), .B(n52), .Z(N269) );
  AO222D0BWP12T30P140 U164 ( .A1(n170), .A2(i_data[6]), .B1(n154), .B2(
        lcl_data[7]), .C1(lcl_data[6]), .C2(n153), .Z(n108) );
  AO222D0BWP12T30P140 U165 ( .A1(n170), .A2(i_data[5]), .B1(n154), .B2(
        lcl_data[6]), .C1(lcl_data[5]), .C2(n153), .Z(n109) );
  AO222D0BWP12T30P140 U166 ( .A1(n170), .A2(i_data[2]), .B1(n154), .B2(
        lcl_data[3]), .C1(lcl_data[2]), .C2(n153), .Z(n112) );
  OAI21D0BWP12T30P140 U167 ( .A1(n189), .A2(n55), .B(n54), .ZN(n59) );
  XNR2D0BWP12T30P140 U168 ( .A1(n57), .A2(n56), .ZN(n58) );
  AO22D0BWP12T30P140 U169 ( .A1(n59), .A2(n269), .B1(n58), .B2(n253), .Z(N264)
         );
  XNR2D0BWP12T30P140 U170 ( .A1(n61), .A2(n60), .ZN(n64) );
  AOI21D0BWP12T30P140 U171 ( .A1(i_setup[22]), .A2(n266), .B(n115), .ZN(n62)
         );
  MOAI22D0BWP12T30P140 U172 ( .A1(n194), .A2(n62), .B1(n261), .B2(
        clocks_per_baud[18]), .ZN(n63) );
  AO21D0BWP12T30P140 U173 ( .A1(n64), .A2(n253), .B(n63), .Z(N283) );
  ND2D0BWP12T30P140 U174 ( .A1(n269), .A2(i_setup[23]), .ZN(n116) );
  INVD0BWP12T30P140 U175 ( .I(n65), .ZN(n66) );
  AOI21D0BWP12T30P140 U176 ( .A1(n261), .A2(clocks_per_baud[19]), .B(n66), 
        .ZN(n71) );
  XNR2D0BWP12T30P140 U177 ( .A1(n68), .A2(n67), .ZN(n69) );
  ND2D0BWP12T30P140 U178 ( .A1(n69), .A2(n253), .ZN(n70) );
  OAI211D0BWP12T30P140 U179 ( .A1(n116), .A2(n115), .B(n71), .C(n70), .ZN(N284) );
  XNR2D0BWP12T30P140 U180 ( .A1(n118), .A2(n117), .ZN(n121) );
  AOI21D0BWP12T30P140 U181 ( .A1(i_setup[18]), .A2(n232), .B(n259), .ZN(n119)
         );
  MOAI22D0BWP12T30P140 U182 ( .A1(n194), .A2(n119), .B1(i_break), .B2(
        clocks_per_baud[14]), .ZN(n120) );
  AO21D0BWP12T30P140 U183 ( .A1(n121), .A2(n253), .B(n120), .Z(N279) );
  OA21D0BWP12T30P140 U184 ( .A1(last_state), .A2(n186), .B(n122), .Z(n196) );
  AO22D0BWP12T30P140 U185 ( .A1(n279), .A2(baud_counter[0]), .B1(
        clocks_per_baud[0]), .B2(n274), .Z(n195) );
  OAI21D0BWP12T30P140 U186 ( .A1(n194), .A2(i_setup[0]), .B(n2), .ZN(N261) );
  ND4D0BWP12T30P140 U187 ( .A1(state[3]), .A2(state[1]), .A3(r_setup[27]), 
        .A4(n123), .ZN(n125) );
  NR3D0BWP12T30P140 U188 ( .A1(state[2]), .A2(state[1]), .A3(n152), .ZN(n149)
         );
  INVD0BWP12T30P140 U189 ( .I(n149), .ZN(n276) );
  NR3D0BWP12T30P140 U190 ( .A1(r_setup[27]), .A2(n276), .A3(n123), .ZN(n156)
         );
  INVD0BWP12T30P140 U191 ( .I(n156), .ZN(n124) );
  OAI21D0BWP12T30P140 U192 ( .A1(state[2]), .A2(n125), .B(n124), .ZN(N300) );
  XNR2D0BWP12T30P140 U193 ( .A1(n127), .A2(n126), .ZN(n130) );
  AOI21D0BWP12T30P140 U194 ( .A1(i_setup[14]), .A2(n224), .B(n250), .ZN(n128)
         );
  MOAI22D0BWP12T30P140 U195 ( .A1(n194), .A2(n128), .B1(n261), .B2(
        clocks_per_baud[10]), .ZN(n129) );
  AO21D0BWP12T30P140 U196 ( .A1(n130), .A2(n272), .B(n129), .Z(N275) );
  XNR2D0BWP12T30P140 U197 ( .A1(n132), .A2(n131), .ZN(n135) );
  AOI21D0BWP12T30P140 U198 ( .A1(i_setup[6]), .A2(n200), .B(n242), .ZN(n133)
         );
  MOAI22D0BWP12T30P140 U199 ( .A1(n194), .A2(n133), .B1(i_break), .B2(
        clocks_per_baud[2]), .ZN(n134) );
  AO21D0BWP12T30P140 U200 ( .A1(n135), .A2(n253), .B(n134), .Z(N267) );
  XNR2D0BWP12T30P140 U201 ( .A1(n137), .A2(n136), .ZN(n140) );
  AOI21D0BWP12T30P140 U202 ( .A1(i_setup[10]), .A2(n216), .B(n210), .ZN(n138)
         );
  MOAI22D0BWP12T30P140 U203 ( .A1(n194), .A2(n138), .B1(i_break), .B2(
        clocks_per_baud[6]), .ZN(n139) );
  AO21D0BWP12T30P140 U204 ( .A1(n140), .A2(n272), .B(n139), .Z(N271) );
  INVD0BWP12T30P140 U205 ( .I(n150), .ZN(n187) );
  ND2D0BWP12T30P140 U206 ( .A1(state[3]), .A2(n187), .ZN(n141) );
  OR2D0BWP12T30P140 U207 ( .A1(lcl_data[0]), .A2(state[3]), .Z(n277) );
  AOI31D0BWP12T30P140 U208 ( .A1(zero_baud_counter), .A2(n141), .A3(n277), .B(
        n170), .ZN(n145) );
  ND2D0BWP12T30P140 U209 ( .A1(lcl_data[0]), .A2(n152), .ZN(n143) );
  OAI22D0BWP12T30P140 U210 ( .A1(calc_parity), .A2(n143), .B1(n163), .B2(n142), 
        .ZN(n144) );
  AOI22D0BWP12T30P140 U211 ( .A1(calc_parity), .A2(n145), .B1(n154), .B2(n144), 
        .ZN(n147) );
  AOI32D0BWP12T30P140 U212 ( .A1(r_setup[24]), .A2(o_busy), .A3(r_setup[25]), 
        .B1(i_setup[24]), .B2(n170), .ZN(n146) );
  OAI21D0BWP12T30P140 U213 ( .A1(r_setup[25]), .A2(n147), .B(n146), .ZN(n102)
         );
  INVD0BWP12T30P140 U214 ( .I(n148), .ZN(n155) );
  NR3D0BWP12T30P140 U215 ( .A1(n149), .A2(n152), .A3(n186), .ZN(n179) );
  NR2D0BWP12T30P140 U216 ( .A1(n261), .A2(n179), .ZN(n177) );
  OAI21D0BWP12T30P140 U217 ( .A1(n150), .A2(n149), .B(n274), .ZN(n151) );
  OAI211D0BWP12T30P140 U218 ( .A1(n152), .A2(n155), .B(n177), .C(n151), .ZN(
        n103) );
  CKMUX2D0BWP12T30P140 U219 ( .I0(i_setup[25]), .I1(r_setup[25]), .S(o_busy), 
        .Z(n96) );
  AO222D0BWP12T30P140 U220 ( .A1(n170), .A2(i_data[0]), .B1(n154), .B2(
        lcl_data[1]), .C1(n153), .C2(lcl_data[0]), .Z(n114) );
  CKMUX2D0BWP12T30P140 U221 ( .I0(i_setup[19]), .I1(clocks_per_baud[19]), .S(
        n288), .Z(n90) );
  CKMUX2D0BWP12T30P140 U222 ( .I0(i_setup[17]), .I1(clocks_per_baud[17]), .S(
        n288), .Z(n88) );
  CKMUX2D0BWP12T30P140 U223 ( .I0(i_setup[15]), .I1(clocks_per_baud[15]), .S(
        n288), .Z(n86) );
  CKMUX2D0BWP12T30P140 U224 ( .I0(i_setup[13]), .I1(clocks_per_baud[13]), .S(
        n288), .Z(n84) );
  CKMUX2D0BWP12T30P140 U225 ( .I0(i_setup[11]), .I1(clocks_per_baud[11]), .S(
        o_busy), .Z(n82) );
  CKMUX2D0BWP12T30P140 U226 ( .I0(i_setup[9]), .I1(clocks_per_baud[9]), .S(
        o_busy), .Z(n80) );
  CKMUX2D0BWP12T30P140 U227 ( .I0(i_setup[7]), .I1(clocks_per_baud[7]), .S(
        o_busy), .Z(n78) );
  CKMUX2D0BWP12T30P140 U228 ( .I0(i_setup[23]), .I1(clocks_per_baud[23]), .S(
        n288), .Z(n94) );
  CKMUX2D0BWP12T30P140 U229 ( .I0(i_setup[22]), .I1(clocks_per_baud[22]), .S(
        n288), .Z(n93) );
  CKMUX2D0BWP12T30P140 U230 ( .I0(i_setup[21]), .I1(clocks_per_baud[21]), .S(
        n288), .Z(n92) );
  CKMUX2D0BWP12T30P140 U231 ( .I0(i_setup[20]), .I1(clocks_per_baud[20]), .S(
        n288), .Z(n91) );
  CKMUX2D0BWP12T30P140 U232 ( .I0(i_setup[0]), .I1(clocks_per_baud[0]), .S(
        n288), .Z(n100) );
  CKMUX2D0BWP12T30P140 U233 ( .I0(i_setup[18]), .I1(clocks_per_baud[18]), .S(
        n288), .Z(n89) );
  CKMUX2D0BWP12T30P140 U234 ( .I0(i_setup[16]), .I1(clocks_per_baud[16]), .S(
        o_busy), .Z(n87) );
  CKMUX2D0BWP12T30P140 U235 ( .I0(i_setup[14]), .I1(clocks_per_baud[14]), .S(
        o_busy), .Z(n85) );
  CKMUX2D0BWP12T30P140 U236 ( .I0(i_setup[12]), .I1(clocks_per_baud[12]), .S(
        o_busy), .Z(n83) );
  CKMUX2D0BWP12T30P140 U237 ( .I0(i_setup[10]), .I1(clocks_per_baud[10]), .S(
        n288), .Z(n81) );
  CKMUX2D0BWP12T30P140 U238 ( .I0(i_setup[8]), .I1(clocks_per_baud[8]), .S(
        n288), .Z(n79) );
  CKMUX2D0BWP12T30P140 U239 ( .I0(i_setup[6]), .I1(clocks_per_baud[6]), .S(
        n288), .Z(n77) );
  CKMUX2D0BWP12T30P140 U240 ( .I0(i_setup[27]), .I1(r_setup[27]), .S(o_busy), 
        .Z(n98) );
  CKMUX2D0BWP12T30P140 U241 ( .I0(i_setup[5]), .I1(clocks_per_baud[5]), .S(
        o_busy), .Z(n76) );
  CKMUX2D0BWP12T30P140 U242 ( .I0(i_setup[3]), .I1(clocks_per_baud[3]), .S(
        o_busy), .Z(n74) );
  CKMUX2D0BWP12T30P140 U243 ( .I0(i_setup[1]), .I1(clocks_per_baud[1]), .S(
        o_busy), .Z(n72) );
  CKMUX2D0BWP12T30P140 U244 ( .I0(i_setup[4]), .I1(clocks_per_baud[4]), .S(
        n288), .Z(n75) );
  CKMUX2D0BWP12T30P140 U245 ( .I0(i_setup[2]), .I1(clocks_per_baud[2]), .S(
        n288), .Z(n73) );
  ND2D0BWP12T30P140 U246 ( .A1(state[0]), .A2(n155), .ZN(n184) );
  AOI22D0BWP12T30P140 U247 ( .A1(n275), .A2(n187), .B1(state[2]), .B2(n184), 
        .ZN(n158) );
  AOI21D0BWP12T30P140 U248 ( .A1(state[0]), .A2(state[1]), .B(state[2]), .ZN(
        n157) );
  ND2D0BWP12T30P140 U249 ( .A1(n274), .A2(n156), .ZN(n181) );
  OAI211D0BWP12T30P140 U250 ( .A1(n158), .A2(n157), .B(n177), .C(n181), .ZN(
        n104) );
  INVD0BWP12T30P140 U251 ( .I(n159), .ZN(n174) );
  NR4D0BWP12T30P140 U252 ( .A1(baud_counter[2]), .A2(baud_counter[22]), .A3(
        baud_counter[23]), .A4(baud_counter[24]), .ZN(n160) );
  IND3D1BWP12T30P140 U253 ( .A1(baud_counter[25]), .B1(baud_counter[0]), .B2(
        n160), .ZN(n166) );
  NR4D0BWP12T30P140 U254 ( .A1(baud_counter[7]), .A2(baud_counter[9]), .A3(
        baud_counter[10]), .A4(baud_counter[8]), .ZN(n162) );
  NR4D0BWP12T30P140 U255 ( .A1(baud_counter[3]), .A2(baud_counter[12]), .A3(
        baud_counter[13]), .A4(baud_counter[6]), .ZN(n161) );
  OAI211D0BWP12T30P140 U256 ( .A1(n164), .A2(n163), .B(n162), .C(n161), .ZN(
        n165) );
  NR4D0BWP12T30P140 U257 ( .A1(baud_counter[27]), .A2(baud_counter[1]), .A3(
        n166), .A4(n165), .ZN(n172) );
  NR4D0BWP12T30P140 U258 ( .A1(baud_counter[15]), .A2(baud_counter[16]), .A3(
        baud_counter[17]), .A4(baud_counter[18]), .ZN(n168) );
  NR4D0BWP12T30P140 U259 ( .A1(baud_counter[19]), .A2(baud_counter[4]), .A3(
        baud_counter[5]), .A4(baud_counter[26]), .ZN(n167) );
  IIND4D0BWP12T30P140 U260 ( .A1(baud_counter[11]), .A2(baud_counter[20]), 
        .B1(n168), .B2(n167), .ZN(n169) );
  NR4D0BWP12T30P140 U261 ( .A1(n261), .A2(baud_counter[14]), .A3(
        baud_counter[21]), .A4(n169), .ZN(n171) );
  ND2D0BWP12T30P140 U262 ( .A1(i_wr), .A2(n170), .ZN(n281) );
  AOI22D0BWP12T30P140 U263 ( .A1(n172), .A2(n171), .B1(n180), .B2(n281), .ZN(
        n173) );
  OAI31D0BWP12T30P140 U264 ( .A1(state[0]), .A2(n175), .A3(n174), .B(n173), 
        .ZN(N290) );
  ND2D0BWP12T30P140 U265 ( .A1(n275), .A2(state[0]), .ZN(n178) );
  AOI22D0BWP12T30P140 U266 ( .A1(state[1]), .A2(n184), .B1(n180), .B2(
        i_setup[29]), .ZN(n176) );
  OAI211D0BWP12T30P140 U267 ( .A1(state[1]), .A2(n178), .B(n177), .C(n176), 
        .ZN(n105) );
  AOI21D0BWP12T30P140 U268 ( .A1(i_setup[28]), .A2(n180), .B(n179), .ZN(n182)
         );
  ND2D0BWP12T30P140 U269 ( .A1(n182), .A2(n181), .ZN(n183) );
  AOI221D0BWP12T30P140 U270 ( .A1(n275), .A2(n184), .B1(state[0]), .B2(n184), 
        .C(n183), .ZN(n185) );
  OAI31D0BWP12T30P140 U271 ( .A1(r_setup[26]), .A2(n187), .A3(n186), .B(n185), 
        .ZN(n106) );
  INVD0BWP12T30P140 U272 ( .I(n188), .ZN(n190) );
  AOI21D0BWP12T30P140 U273 ( .A1(i_setup[2]), .A2(n190), .B(n189), .ZN(n193)
         );
  XNR2D0BWP12T30P140 U274 ( .A1(DP_OP_53J1_125_5715_n26), .A2(n191), .ZN(n192)
         );
  MOAI22D0BWP12T30P140 U275 ( .A1(n194), .A2(n193), .B1(n192), .B2(n272), .ZN(
        N263) );
  OR2D0BWP12T30P140 U276 ( .A1(n196), .A2(n195), .Z(DP_OP_53J1_125_5715_n27)
         );
  AO22D0BWP12T30P140 U277 ( .A1(n279), .A2(baud_counter[1]), .B1(
        clocks_per_baud[1]), .B2(n197), .Z(U2_RSOP_45_C1_Z_1) );
  CKBD0BWP12T30P140 U278 ( .I(i_clk), .Z(n285) );
  CKBD0BWP12T30P140 U279 ( .I(i_clk), .Z(n284) );
  CKBD0BWP12T30P140 U280 ( .I(i_clk), .Z(n283) );
  CKBD0BWP12T30P140 U281 ( .I(i_clk), .Z(n286) );
  XNR2D0BWP12T30P140 U282 ( .A1(n199), .A2(n198), .ZN(n205) );
  OAI21D0BWP12T30P140 U283 ( .A1(n202), .A2(n201), .B(n200), .ZN(n203) );
  AOI22D0BWP12T30P140 U284 ( .A1(i_break), .A2(clocks_per_baud[1]), .B1(n203), 
        .B2(n269), .ZN(n204) );
  IOA21D0BWP12T30P140 U285 ( .A1(n205), .A2(n272), .B(n204), .ZN(N266) );
  XNR2D0BWP12T30P140 U286 ( .A1(n207), .A2(n206), .ZN(n213) );
  OAI21D0BWP12T30P140 U287 ( .A1(n210), .A2(n209), .B(n208), .ZN(n211) );
  AOI22D0BWP12T30P140 U288 ( .A1(i_break), .A2(clocks_per_baud[7]), .B1(n211), 
        .B2(n269), .ZN(n212) );
  IOA21D0BWP12T30P140 U289 ( .A1(n213), .A2(n253), .B(n212), .ZN(N272) );
  XNR2D0BWP12T30P140 U290 ( .A1(n215), .A2(n214), .ZN(n221) );
  OAI21D0BWP12T30P140 U291 ( .A1(n218), .A2(n217), .B(n216), .ZN(n219) );
  AOI22D0BWP12T30P140 U292 ( .A1(i_break), .A2(clocks_per_baud[5]), .B1(n219), 
        .B2(n269), .ZN(n220) );
  IOA21D0BWP12T30P140 U293 ( .A1(n221), .A2(n253), .B(n220), .ZN(N270) );
  XNR2D0BWP12T30P140 U294 ( .A1(n223), .A2(n222), .ZN(n229) );
  OAI21D0BWP12T30P140 U295 ( .A1(n226), .A2(n225), .B(n224), .ZN(n227) );
  AOI22D0BWP12T30P140 U296 ( .A1(n261), .A2(clocks_per_baud[9]), .B1(n227), 
        .B2(n269), .ZN(n228) );
  IOA21D0BWP12T30P140 U297 ( .A1(n229), .A2(n253), .B(n228), .ZN(N274) );
  XNR2D0BWP12T30P140 U298 ( .A1(n231), .A2(n230), .ZN(n237) );
  OAI21D0BWP12T30P140 U299 ( .A1(n234), .A2(n233), .B(n232), .ZN(n235) );
  AOI22D0BWP12T30P140 U300 ( .A1(n261), .A2(clocks_per_baud[13]), .B1(n235), 
        .B2(n269), .ZN(n236) );
  IOA21D0BWP12T30P140 U301 ( .A1(n237), .A2(n272), .B(n236), .ZN(N278) );
  XNR2D0BWP12T30P140 U302 ( .A1(n239), .A2(n238), .ZN(n245) );
  OAI21D0BWP12T30P140 U303 ( .A1(n242), .A2(n241), .B(n240), .ZN(n243) );
  AOI22D0BWP12T30P140 U304 ( .A1(n261), .A2(clocks_per_baud[3]), .B1(n243), 
        .B2(n269), .ZN(n244) );
  IOA21D0BWP12T30P140 U305 ( .A1(n245), .A2(n272), .B(n244), .ZN(N268) );
  XNR2D0BWP12T30P140 U306 ( .A1(n247), .A2(n246), .ZN(n254) );
  OAI21D0BWP12T30P140 U307 ( .A1(n250), .A2(n249), .B(n248), .ZN(n251) );
  AOI22D0BWP12T30P140 U308 ( .A1(i_break), .A2(clocks_per_baud[11]), .B1(n251), 
        .B2(n269), .ZN(n252) );
  IOA21D0BWP12T30P140 U309 ( .A1(n254), .A2(n253), .B(n252), .ZN(N276) );
  XNR2D0BWP12T30P140 U310 ( .A1(n256), .A2(n255), .ZN(n263) );
  OAI21D0BWP12T30P140 U311 ( .A1(n259), .A2(n258), .B(n257), .ZN(n260) );
  AOI22D0BWP12T30P140 U312 ( .A1(n261), .A2(clocks_per_baud[15]), .B1(n260), 
        .B2(n269), .ZN(n262) );
  IOA21D0BWP12T30P140 U313 ( .A1(n263), .A2(n272), .B(n262), .ZN(N280) );
  XNR2D0BWP12T30P140 U314 ( .A1(n265), .A2(n264), .ZN(n273) );
  OAI21D0BWP12T30P140 U315 ( .A1(n268), .A2(n267), .B(n266), .ZN(n270) );
  AOI22D0BWP12T30P140 U316 ( .A1(i_break), .A2(clocks_per_baud[17]), .B1(n270), 
        .B2(n269), .ZN(n271) );
  IOA21D0BWP12T30P140 U317 ( .A1(n273), .A2(n272), .B(n271), .ZN(N282) );
  ND2D0BWP12T30P140 U318 ( .A1(n274), .A2(last_state), .ZN(n282) );
  IND2D1BWP12T30P140 U319 ( .A1(r_setup_30), .B1(qq_cts_n), .ZN(N19) );
  OA31D0BWP12T30P140 U320 ( .A1(n276), .A2(state[0]), .A3(calc_parity), .B(
        n275), .Z(n278) );
  AOI22D0BWP12T30P140 U321 ( .A1(n279), .A2(o_uart_tx), .B1(n278), .B2(n277), 
        .ZN(n280) );
  INR2D1BWP12T30P140 U322 ( .A1(n281), .B1(n280), .ZN(n101) );
endmodule


module wbuart ( i_clk, i_rst, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, 
        i_wb_data, o_wb_ack, o_wb_stall, o_wb_data, i_uart_rx, o_uart_tx, 
        i_cts_n, o_rts_n, o_uart_rx_int, o_uart_tx_int, o_uart_rxfifo_int, 
        o_uart_txfifo_int );
  input [1:0] i_wb_addr;
  input [31:0] i_wb_data;
  output [31:0] o_wb_data;
  input i_clk, i_rst, i_wb_cyc, i_wb_stb, i_wb_we, i_uart_rx, i_cts_n;
  output o_wb_ack, o_wb_stall, o_uart_tx, o_rts_n, o_uart_rx_int,
         o_uart_tx_int, o_uart_rxfifo_int, o_uart_txfifo_int;
  wire   rx_uart_reset, rx_stb, rx_perr, n_0_net_, rx_empty_n, rxf_wb_read, N9,
         N10, N26, txf_wb_write, n_1_net_, tx_empty_n, n_2_net_, tx_busy,
         wb_tx_data_12, wb_tx_data_11, wb_tx_data_9_, N64, N65, N66, N67, N68,
         N69, N70, N71, n140, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20;
  wire   [30:0] uart_setup;
  wire   [7:0] rx_uart_data;
  wire   [7:0] rxf_wb_data;
  wire   [5:2] rxf_status;
  wire   [12:9] wb_rx_data;
  wire   [7:0] txf_wb_data;
  wire   [7:0] tx_data;
  wire   [5:2] txf_status;
  wire   [3:0] r_wb_addr_pipe;
  wire   [0:1] r_wb_ack_pipe;

  rxuart_00000019 rx ( .i_clk(n134), .i_reset(rx_uart_reset), .i_setup(
        uart_setup), .i_uart_rx(i_uart_rx), .o_wr(rx_stb), .o_data(
        rx_uart_data), .o_break(wb_rx_data[11]), .o_parity_err(rx_perr), 
        .o_frame_err(wb_rx_data[10]), .o_ck_uart(wb_tx_data_11) );
  ufifo_4_1 rxfifo ( .i_clk(n135), .i_rst(n_0_net_), .i_wr(rx_stb), .i_data(
        rx_uart_data), .o_empty_n(rx_empty_n), .i_rd(rxf_wb_read), .o_data(
        rxf_wb_data), .o_status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, rxf_status, o_uart_rxfifo_int, o_uart_rx_int}), .o_err(wb_rx_data[12]) );
  ufifo_4_0 txfifo ( .i_clk(n135), .i_rst(n_1_net_), .i_wr(txf_wb_write), 
        .i_data(txf_wb_data), .o_empty_n(tx_empty_n), .i_rd(n_2_net_), 
        .o_data(tx_data), .o_status({SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, txf_status, o_uart_txfifo_int, o_uart_tx_int}), .o_err(wb_tx_data_12) );
  txuart_00000019 tx ( .i_clk(n134), .i_reset(n140), .i_setup(uart_setup), 
        .i_break(wb_tx_data_9_), .i_wr(tx_empty_n), .i_data(tx_data), 
        .i_cts_n(i_cts_n), .o_uart_tx(o_uart_tx), .o_busy(tx_busy) );
  DFQD2BWP12T30P140 o_wb_data_reg_31_ ( .D(n140), .CP(n135), .Q(o_wb_data[31])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_18_ ( .D(n75), .CP(n139), .Q(o_wb_data[18])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_17_ ( .D(n76), .CP(n139), .Q(o_wb_data[17])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_16_ ( .D(n77), .CP(n139), .Q(o_wb_data[16])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_15_ ( .D(n78), .CP(n139), .Q(o_wb_data[15])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_14_ ( .D(n79), .CP(n139), .Q(o_wb_data[14])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_13_ ( .D(n80), .CP(n139), .Q(o_wb_data[13])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_12_ ( .D(n81), .CP(n139), .Q(o_wb_data[12])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_11_ ( .D(n82), .CP(n139), .Q(o_wb_data[11])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_10_ ( .D(n83), .CP(n139), .Q(o_wb_data[10])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_9_ ( .D(n84), .CP(n139), .Q(o_wb_data[9]) );
  DFQD2BWP12T30P140 o_wb_data_reg_8_ ( .D(n85), .CP(n139), .Q(o_wb_data[8]) );
  DFQD2BWP12T30P140 o_wb_data_reg_7_ ( .D(n86), .CP(n139), .Q(o_wb_data[7]) );
  DFQD2BWP12T30P140 o_wb_data_reg_6_ ( .D(n87), .CP(n139), .Q(o_wb_data[6]) );
  DFQD2BWP12T30P140 o_wb_data_reg_4_ ( .D(n89), .CP(n139), .Q(o_wb_data[4]) );
  DFQD2BWP12T30P140 o_wb_data_reg_3_ ( .D(n90), .CP(n139), .Q(o_wb_data[3]) );
  DFQD2BWP12T30P140 o_wb_data_reg_2_ ( .D(n91), .CP(n139), .Q(o_wb_data[2]) );
  DFQD2BWP12T30P140 o_wb_data_reg_1_ ( .D(n92), .CP(n139), .Q(o_wb_data[1]) );
  DFQD2BWP12T30P140 o_wb_data_reg_0_ ( .D(n93), .CP(n139), .Q(o_wb_data[0]) );
  DFQD2BWP12T30P140 o_rts_n_reg ( .D(N9), .CP(n137), .Q(o_rts_n) );
  DFQD2BWP12T30P140 o_wb_ack_reg ( .D(r_wb_ack_pipe[1]), .CP(n138), .Q(
        o_wb_ack) );
  DFQD2BWP12T30P140 o_wb_data_reg_30_ ( .D(n71), .CP(n138), .Q(o_wb_data[30])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_29_ ( .D(N71), .CP(n138), .Q(o_wb_data[29])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_28_ ( .D(N70), .CP(n138), .Q(o_wb_data[28])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_27_ ( .D(N69), .CP(n138), .Q(o_wb_data[27])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_26_ ( .D(N68), .CP(n138), .Q(o_wb_data[26])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_25_ ( .D(N67), .CP(n138), .Q(o_wb_data[25])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_24_ ( .D(N66), .CP(n138), .Q(o_wb_data[24])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_22_ ( .D(N64), .CP(n138), .Q(o_wb_data[22])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_21_ ( .D(n72), .CP(n138), .Q(o_wb_data[21])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_20_ ( .D(n73), .CP(n138), .Q(o_wb_data[20])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_19_ ( .D(n74), .CP(n138), .Q(o_wb_data[19])
         );
  DFQD2BWP12T30P140 uart_setup_reg_28_ ( .D(n66), .CP(n135), .Q(uart_setup[28]) );
  DFQD2BWP12T30P140 uart_setup_reg_29_ ( .D(n67), .CP(n135), .Q(uart_setup[29]) );
  DFQD2BWP12T30P140 uart_setup_reg_27_ ( .D(n65), .CP(n135), .Q(uart_setup[27]) );
  DFQD2BWP12T30P140 r_rx_perr_reg ( .D(n70), .CP(n137), .Q(wb_rx_data[9]) );
  DFQD2BWP12T30P140 r_wb_addr_pipe_reg_1__0_ ( .D(r_wb_addr_pipe[2]), .CP(n138), .Q(r_wb_addr_pipe[0]) );
  DFQD2BWP12T30P140 uart_setup_reg_30_ ( .D(n68), .CP(n137), .Q(uart_setup[30]) );
  DFQD2BWP12T30P140 rxf_wb_read_reg ( .D(N10), .CP(n137), .Q(rxf_wb_read) );
  DFQD2BWP12T30P140 uart_setup_reg_26_ ( .D(n64), .CP(n136), .Q(uart_setup[26]) );
  DFQD2BWP12T30P140 uart_setup_reg_25_ ( .D(n63), .CP(n136), .Q(uart_setup[25]) );
  DFQD2BWP12T30P140 r_wb_addr_pipe_reg_0__1_ ( .D(i_wb_addr[1]), .CP(n138), 
        .Q(r_wb_addr_pipe[3]) );
  DFQD2BWP12T30P140 r_wb_ack_pipe_reg_0_ ( .D(i_wb_stb), .CP(n138), .Q(
        r_wb_ack_pipe[0]) );
  DFQD2BWP12T30P140 r_wb_ack_pipe_reg_1_ ( .D(r_wb_ack_pipe[0]), .CP(n138), 
        .Q(r_wb_ack_pipe[1]) );
  DFQD2BWP12T30P140 r_wb_addr_pipe_reg_1__1_ ( .D(r_wb_addr_pipe[3]), .CP(n138), .Q(r_wb_addr_pipe[1]) );
  DFQD2BWP12T30P140 uart_setup_reg_24_ ( .D(n62), .CP(n136), .Q(uart_setup[24]) );
  DFQD2BWP12T30P140 uart_setup_reg_9_ ( .D(n47), .CP(n136), .Q(uart_setup[9])
         );
  DFQD2BWP12T30P140 uart_setup_reg_7_ ( .D(n45), .CP(n136), .Q(uart_setup[7])
         );
  DFQD2BWP12T30P140 uart_setup_reg_5_ ( .D(n43), .CP(n137), .Q(uart_setup[5])
         );
  DFQD2BWP12T30P140 uart_setup_reg_3_ ( .D(n41), .CP(n137), .Q(uart_setup[3])
         );
  DFQD2BWP12T30P140 uart_setup_reg_11_ ( .D(n49), .CP(n136), .Q(uart_setup[11]) );
  DFQD2BWP12T30P140 uart_setup_reg_21_ ( .D(n59), .CP(n136), .Q(uart_setup[21]) );
  DFQD2BWP12T30P140 uart_setup_reg_19_ ( .D(n57), .CP(n136), .Q(uart_setup[19]) );
  DFQD2BWP12T30P140 uart_setup_reg_17_ ( .D(n55), .CP(n136), .Q(uart_setup[17]) );
  DFQD2BWP12T30P140 uart_setup_reg_15_ ( .D(n53), .CP(n136), .Q(uart_setup[15]) );
  DFQD2BWP12T30P140 uart_setup_reg_13_ ( .D(n51), .CP(n136), .Q(uart_setup[13]) );
  DFQD2BWP12T30P140 uart_setup_reg_4_ ( .D(n42), .CP(n137), .Q(uart_setup[4])
         );
  DFQD2BWP12T30P140 uart_setup_reg_12_ ( .D(n50), .CP(n136), .Q(uart_setup[12]) );
  DFQD2BWP12T30P140 uart_setup_reg_14_ ( .D(n52), .CP(n136), .Q(uart_setup[14]) );
  DFQD2BWP12T30P140 uart_setup_reg_8_ ( .D(n46), .CP(n136), .Q(uart_setup[8])
         );
  DFQD2BWP12T30P140 uart_setup_reg_22_ ( .D(n60), .CP(n136), .Q(uart_setup[22]) );
  DFQD2BWP12T30P140 uart_setup_reg_10_ ( .D(n48), .CP(n136), .Q(uart_setup[10]) );
  DFQD2BWP12T30P140 uart_setup_reg_2_ ( .D(n40), .CP(n137), .Q(uart_setup[2])
         );
  DFQD2BWP12T30P140 uart_setup_reg_20_ ( .D(n58), .CP(n136), .Q(uart_setup[20]) );
  DFQD2BWP12T30P140 uart_setup_reg_18_ ( .D(n56), .CP(n136), .Q(uart_setup[18]) );
  DFQD2BWP12T30P140 uart_setup_reg_16_ ( .D(n54), .CP(n136), .Q(uart_setup[16]) );
  DFQD2BWP12T30P140 uart_setup_reg_23_ ( .D(n61), .CP(n136), .Q(uart_setup[23]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_7_ ( .D(i_wb_data[7]), .CP(n137), .Q(
        txf_wb_data[7]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_6_ ( .D(i_wb_data[6]), .CP(n137), .Q(
        txf_wb_data[6]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_5_ ( .D(i_wb_data[5]), .CP(n137), .Q(
        txf_wb_data[5]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_3_ ( .D(i_wb_data[3]), .CP(n137), .Q(
        txf_wb_data[3]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_2_ ( .D(i_wb_data[2]), .CP(n137), .Q(
        txf_wb_data[2]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_1_ ( .D(i_wb_data[1]), .CP(n137), .Q(
        txf_wb_data[1]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_0_ ( .D(i_wb_data[0]), .CP(n137), .Q(
        txf_wb_data[0]) );
  DFQD2BWP12T30P140 uart_setup_reg_1_ ( .D(n39), .CP(n137), .Q(uart_setup[1])
         );
  DFQD2BWP12T30P140 uart_setup_reg_0_ ( .D(n38), .CP(n137), .Q(uart_setup[0])
         );
  DFQD2BWP12T30P140 txf_wb_write_reg ( .D(N26), .CP(n137), .Q(txf_wb_write) );
  DFQD2BWP12T30P140 r_tx_break_reg ( .D(n69), .CP(n138), .Q(wb_tx_data_9_) );
  DFQD1BWP12T30P140 o_wb_data_reg_5_ ( .D(n88), .CP(n139), .Q(o_wb_data[5]) );
  DFQD1BWP12T30P140 o_wb_data_reg_23_ ( .D(N65), .CP(n138), .Q(o_wb_data[23])
         );
  DFQD1BWP12T30P140 r_wb_addr_pipe_reg_0__0_ ( .D(i_wb_addr[0]), .CP(n138), 
        .Q(r_wb_addr_pipe[2]) );
  DFQD1BWP12T30P140 uart_setup_reg_6_ ( .D(n44), .CP(n137), .Q(uart_setup[6])
         );
  DFQD1BWP12T30P140 txf_wb_data_reg_4_ ( .D(i_wb_data[4]), .CP(n137), .Q(
        txf_wb_data[4]) );
  TIEHBWP12T30P140 U109 ( .Z(n95) );
  INVD1BWP12T30P140 U110 ( .I(n95), .ZN(o_wb_stall) );
  TIELBWP12T30P140 U111 ( .ZN(n140) );
  IND3D1BWP12T30P140 U112 ( .A1(i_wb_addr[0]), .B1(i_wb_we), .B2(i_wb_stb), 
        .ZN(n96) );
  NR2D0BWP12T30P140 U113 ( .A1(i_wb_addr[1]), .A2(n96), .ZN(n112) );
  INVD0BWP12T30P140 U114 ( .I(n112), .ZN(n111) );
  CKMUX2D0BWP12T30P140 U115 ( .I0(i_wb_data[26]), .I1(uart_setup[26]), .S(n111), .Z(n64) );
  CKBD0BWP12T30P140 U116 ( .I(n111), .Z(n113) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(i_wb_data[30]), .I1(uart_setup[30]), .S(n113), .Z(n68) );
  INVD0BWP12T30P140 U118 ( .I(i_wb_data[12]), .ZN(n110) );
  NR2D0BWP12T30P140 U119 ( .A1(n112), .A2(i_rst), .ZN(n108) );
  OAI21D0BWP12T30P140 U120 ( .A1(n96), .A2(n110), .B(n108), .ZN(rx_uart_reset)
         );
  OR2D0BWP12T30P140 U121 ( .A1(wb_rx_data[11]), .A2(rx_uart_reset), .Z(
        n_0_net_) );
  ND3D0BWP12T30P140 U122 ( .A1(n96), .A2(rx_perr), .A3(rx_stb), .ZN(n98) );
  INVD0BWP12T30P140 U123 ( .I(i_wb_data[9]), .ZN(n106) );
  OAI21D0BWP12T30P140 U124 ( .A1(n96), .A2(n106), .B(wb_rx_data[9]), .ZN(n97)
         );
  AOI21D0BWP12T30P140 U125 ( .A1(n98), .A2(n97), .B(n_0_net_), .ZN(n70) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(i_wb_data[27]), .I1(uart_setup[27]), .S(n111), .Z(n65) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(i_wb_data[29]), .I1(uart_setup[29]), .S(n111), .Z(n67) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(i_wb_data[28]), .I1(uart_setup[28]), .S(n111), .Z(n66) );
  INVD0BWP12T30P140 U129 ( .I(r_wb_addr_pipe[0]), .ZN(n100) );
  NR2D0BWP12T30P140 U130 ( .A1(r_wb_addr_pipe[1]), .A2(n100), .ZN(n133) );
  NR2D0BWP12T30P140 U131 ( .A1(r_wb_addr_pipe[1]), .A2(r_wb_addr_pipe[0]), 
        .ZN(n122) );
  CKBD0BWP12T30P140 U132 ( .I(n122), .Z(n126) );
  AO22D0BWP12T30P140 U133 ( .A1(n133), .A2(txf_status[3]), .B1(n126), .B2(
        uart_setup[19]), .Z(n74) );
  AO22D0BWP12T30P140 U134 ( .A1(n133), .A2(txf_status[4]), .B1(n122), .B2(
        uart_setup[20]), .Z(n73) );
  AO22D0BWP12T30P140 U135 ( .A1(n133), .A2(txf_status[5]), .B1(n126), .B2(
        uart_setup[21]), .Z(n72) );
  AN2D0BWP12T30P140 U136 ( .A1(n126), .A2(uart_setup[22]), .Z(N64) );
  AN2D0BWP12T30P140 U137 ( .A1(n126), .A2(uart_setup[23]), .Z(N65) );
  AN2D0BWP12T30P140 U138 ( .A1(n122), .A2(uart_setup[24]), .Z(N66) );
  AN2D0BWP12T30P140 U139 ( .A1(n126), .A2(uart_setup[25]), .Z(N67) );
  AN2D0BWP12T30P140 U140 ( .A1(n126), .A2(uart_setup[26]), .Z(N68) );
  AN2D0BWP12T30P140 U141 ( .A1(n122), .A2(uart_setup[27]), .Z(N69) );
  AN2D0BWP12T30P140 U142 ( .A1(n122), .A2(uart_setup[28]), .Z(N70) );
  AN2D0BWP12T30P140 U143 ( .A1(n122), .A2(uart_setup[29]), .Z(N71) );
  INVD0BWP12T30P140 U144 ( .I(uart_setup[30]), .ZN(n99) );
  AOI21D0BWP12T30P140 U145 ( .A1(n100), .A2(n99), .B(r_wb_addr_pipe[1]), .ZN(
        n71) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(i_wb_data[25]), .I1(uart_setup[25]), .S(n111), .Z(n63) );
  AN4D0BWP12T30P140 U147 ( .A1(rxf_status[4]), .A2(rxf_status[3]), .A3(
        rxf_status[5]), .A4(n99), .Z(N9) );
  ND2D0BWP12T30P140 U148 ( .A1(n100), .A2(r_wb_addr_pipe[1]), .ZN(n102) );
  INVD0BWP12T30P140 U149 ( .I(n102), .ZN(n127) );
  INVD0BWP12T30P140 U150 ( .I(r_wb_addr_pipe[1]), .ZN(n131) );
  NR2D0BWP12T30P140 U151 ( .A1(n131), .A2(n100), .ZN(n105) );
  OA21D0BWP12T30P140 U152 ( .A1(o_uart_tx_int), .A2(tx_busy), .B(n105), .Z(
        n125) );
  AO222D0BWP12T30P140 U153 ( .A1(n127), .A2(rxf_wb_data[6]), .B1(n125), .B2(
        txf_wb_data[6]), .C1(uart_setup[6]), .C2(n122), .Z(n87) );
  AO222D0BWP12T30P140 U154 ( .A1(n127), .A2(rxf_wb_data[7]), .B1(n125), .B2(
        txf_wb_data[7]), .C1(uart_setup[7]), .C2(n126), .Z(n86) );
  AOI21D0BWP12T30P140 U155 ( .A1(n126), .A2(uart_setup[8]), .B(n125), .ZN(n101) );
  OAI21D0BWP12T30P140 U156 ( .A1(rx_empty_n), .A2(n102), .B(n101), .ZN(n85) );
  INVD0BWP12T30P140 U157 ( .I(wb_tx_data_9_), .ZN(n107) );
  INVD0BWP12T30P140 U158 ( .I(n105), .ZN(n104) );
  AOI22D0BWP12T30P140 U159 ( .A1(wb_rx_data[9]), .A2(n127), .B1(n122), .B2(
        uart_setup[9]), .ZN(n103) );
  OAI21D0BWP12T30P140 U160 ( .A1(n107), .A2(n104), .B(n103), .ZN(n84) );
  AO222D0BWP12T30P140 U161 ( .A1(n127), .A2(wb_rx_data[10]), .B1(n105), .B2(
        o_uart_tx), .C1(n126), .C2(uart_setup[10]), .Z(n83) );
  AO222D0BWP12T30P140 U162 ( .A1(wb_rx_data[11]), .A2(n127), .B1(n122), .B2(
        uart_setup[11]), .C1(n105), .C2(wb_tx_data_11), .Z(n82) );
  AO222D0BWP12T30P140 U163 ( .A1(n127), .A2(wb_rx_data[12]), .B1(n105), .B2(
        wb_tx_data_12), .C1(n122), .C2(uart_setup[12]), .Z(n81) );
  AO22D0BWP12T30P140 U164 ( .A1(n122), .A2(uart_setup[13]), .B1(n105), .B2(
        o_uart_tx_int), .Z(n80) );
  AO22D0BWP12T30P140 U165 ( .A1(n126), .A2(uart_setup[15]), .B1(n105), .B2(
        i_cts_n), .Z(n78) );
  AO22D0BWP12T30P140 U166 ( .A1(n133), .A2(o_uart_tx_int), .B1(n126), .B2(
        uart_setup[16]), .Z(n77) );
  AO22D0BWP12T30P140 U167 ( .A1(n133), .A2(o_uart_txfifo_int), .B1(n122), .B2(
        uart_setup[17]), .Z(n76) );
  AO22D0BWP12T30P140 U168 ( .A1(n133), .A2(txf_status[2]), .B1(n122), .B2(
        uart_setup[18]), .Z(n75) );
  ND4D0BWP12T30P140 U169 ( .A1(i_wb_stb), .A2(i_wb_addr[0]), .A3(i_wb_we), 
        .A4(i_wb_addr[1]), .ZN(n109) );
  INVD0BWP12T30P140 U170 ( .I(n109), .ZN(N26) );
  AOI221D0BWP12T30P140 U171 ( .A1(N26), .A2(n106), .B1(n109), .B2(n107), .C(
        i_rst), .ZN(n69) );
  OA22D0BWP12T30P140 U172 ( .A1(n113), .A2(i_wb_data[0]), .B1(uart_setup[0]), 
        .B2(n112), .Z(n38) );
  OA22D0BWP12T30P140 U173 ( .A1(n113), .A2(i_wb_data[1]), .B1(uart_setup[1]), 
        .B2(n112), .Z(n39) );
  CKMUX2D0BWP12T30P140 U174 ( .I0(i_wb_data[23]), .I1(uart_setup[23]), .S(n111), .Z(n61) );
  CKMUX2D0BWP12T30P140 U175 ( .I0(i_wb_data[16]), .I1(uart_setup[16]), .S(n113), .Z(n54) );
  CKMUX2D0BWP12T30P140 U176 ( .I0(i_wb_data[18]), .I1(uart_setup[18]), .S(n111), .Z(n56) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(i_wb_data[20]), .I1(uart_setup[20]), .S(n111), .Z(n58) );
  OA22D0BWP12T30P140 U178 ( .A1(n113), .A2(i_wb_data[2]), .B1(uart_setup[2]), 
        .B2(n112), .Z(n40) );
  CKMUX2D0BWP12T30P140 U179 ( .I0(i_wb_data[10]), .I1(uart_setup[10]), .S(n113), .Z(n48) );
  CKMUX2D0BWP12T30P140 U180 ( .I0(i_wb_data[22]), .I1(uart_setup[22]), .S(n111), .Z(n60) );
  CKMUX2D0BWP12T30P140 U181 ( .I0(i_wb_data[8]), .I1(uart_setup[8]), .S(n113), 
        .Z(n46) );
  CKMUX2D0BWP12T30P140 U182 ( .I0(i_wb_data[14]), .I1(uart_setup[14]), .S(n113), .Z(n52) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n112), .A2(n110), .B1(uart_setup[12]), .B2(
        n112), .ZN(n50) );
  OA22D0BWP12T30P140 U184 ( .A1(n113), .A2(i_wb_data[4]), .B1(uart_setup[4]), 
        .B2(n112), .Z(n42) );
  CKMUX2D0BWP12T30P140 U185 ( .I0(i_wb_data[24]), .I1(uart_setup[24]), .S(n111), .Z(n62) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n112), .A2(n106), .B1(uart_setup[9]), .B2(
        n112), .ZN(n47) );
  OAI211D0BWP12T30P140 U187 ( .A1(n110), .A2(n109), .B(n108), .C(n107), .ZN(
        n_1_net_) );
  OA22D0BWP12T30P140 U188 ( .A1(n113), .A2(i_wb_data[7]), .B1(uart_setup[7]), 
        .B2(n112), .Z(n45) );
  OA22D0BWP12T30P140 U189 ( .A1(n113), .A2(i_wb_data[5]), .B1(uart_setup[5]), 
        .B2(n112), .Z(n43) );
  OA22D0BWP12T30P140 U190 ( .A1(n113), .A2(i_wb_data[3]), .B1(uart_setup[3]), 
        .B2(n112), .Z(n41) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(i_wb_data[11]), .I1(uart_setup[11]), .S(n113), .Z(n49) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(i_wb_data[21]), .I1(uart_setup[21]), .S(n111), .Z(n59) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(i_wb_data[15]), .I1(uart_setup[15]), .S(n113), .Z(n53) );
  CKMUX2D0BWP12T30P140 U194 ( .I0(i_wb_data[19]), .I1(uart_setup[19]), .S(n111), .Z(n57) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(i_wb_data[17]), .I1(uart_setup[17]), .S(n113), .Z(n55) );
  CKMUX2D0BWP12T30P140 U196 ( .I0(i_wb_data[13]), .I1(uart_setup[13]), .S(n113), .Z(n51) );
  OA22D0BWP12T30P140 U197 ( .A1(n113), .A2(i_wb_data[6]), .B1(uart_setup[6]), 
        .B2(n112), .Z(n44) );
  CKBD0BWP12T30P140 U198 ( .I(i_clk), .Z(n139) );
  CKBD0BWP12T30P140 U199 ( .I(i_clk), .Z(n136) );
  CKBD0BWP12T30P140 U200 ( .I(i_clk), .Z(n137) );
  CKBD0BWP12T30P140 U201 ( .I(i_clk), .Z(n138) );
  CKBD0BWP12T30P140 U202 ( .I(i_clk), .Z(n134) );
  CKBD0BWP12T30P140 U203 ( .I(i_clk), .Z(n135) );
  AOI22D0BWP12T30P140 U204 ( .A1(uart_setup[0]), .A2(n126), .B1(n125), .B2(
        txf_wb_data[0]), .ZN(n115) );
  AOI22D0BWP12T30P140 U205 ( .A1(n127), .A2(rxf_wb_data[0]), .B1(n133), .B2(
        o_uart_rx_int), .ZN(n114) );
  ND2D0BWP12T30P140 U206 ( .A1(n115), .A2(n114), .ZN(n93) );
  AOI22D0BWP12T30P140 U207 ( .A1(n122), .A2(uart_setup[1]), .B1(n125), .B2(
        txf_wb_data[1]), .ZN(n117) );
  AOI22D0BWP12T30P140 U208 ( .A1(n127), .A2(rxf_wb_data[1]), .B1(n133), .B2(
        o_uart_rxfifo_int), .ZN(n116) );
  ND2D0BWP12T30P140 U209 ( .A1(n117), .A2(n116), .ZN(n92) );
  AOI22D0BWP12T30P140 U210 ( .A1(n126), .A2(uart_setup[2]), .B1(n125), .B2(
        txf_wb_data[2]), .ZN(n119) );
  AOI22D0BWP12T30P140 U211 ( .A1(n127), .A2(rxf_wb_data[2]), .B1(n133), .B2(
        rxf_status[2]), .ZN(n118) );
  ND2D0BWP12T30P140 U212 ( .A1(n119), .A2(n118), .ZN(n91) );
  AOI22D0BWP12T30P140 U213 ( .A1(n126), .A2(uart_setup[3]), .B1(n125), .B2(
        txf_wb_data[3]), .ZN(n121) );
  AOI22D0BWP12T30P140 U214 ( .A1(n127), .A2(rxf_wb_data[3]), .B1(n133), .B2(
        rxf_status[3]), .ZN(n120) );
  ND2D0BWP12T30P140 U215 ( .A1(n121), .A2(n120), .ZN(n90) );
  AOI22D0BWP12T30P140 U216 ( .A1(n122), .A2(uart_setup[4]), .B1(n125), .B2(
        txf_wb_data[4]), .ZN(n124) );
  AOI22D0BWP12T30P140 U217 ( .A1(n127), .A2(rxf_wb_data[4]), .B1(n133), .B2(
        rxf_status[4]), .ZN(n123) );
  ND2D0BWP12T30P140 U218 ( .A1(n124), .A2(n123), .ZN(n89) );
  AOI22D0BWP12T30P140 U219 ( .A1(n126), .A2(uart_setup[5]), .B1(n125), .B2(
        txf_wb_data[5]), .ZN(n129) );
  AOI22D0BWP12T30P140 U220 ( .A1(n127), .A2(rxf_wb_data[5]), .B1(n133), .B2(
        rxf_status[5]), .ZN(n128) );
  ND2D0BWP12T30P140 U221 ( .A1(n129), .A2(n128), .ZN(n88) );
  ND2D0BWP12T30P140 U222 ( .A1(i_wb_stb), .A2(i_wb_addr[1]), .ZN(n130) );
  NR3D0BWP12T30P140 U223 ( .A1(i_wb_addr[0]), .A2(i_wb_we), .A3(n130), .ZN(N10) );
  INR2D1BWP12T30P140 U224 ( .A1(tx_empty_n), .B1(tx_busy), .ZN(n_2_net_) );
  AOI22D0BWP12T30P140 U225 ( .A1(o_uart_txfifo_int), .A2(r_wb_addr_pipe[0]), 
        .B1(uart_setup[14]), .B2(n131), .ZN(n132) );
  IND2D1BWP12T30P140 U226 ( .A1(n133), .B1(n132), .ZN(n79) );
endmodule

