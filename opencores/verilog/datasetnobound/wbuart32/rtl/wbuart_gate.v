/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:51:08 2026
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
  DFQD2BWP12T30P140 data_reg_reg_3_ ( .D(n112), .CP(n530), .Q(data_reg[3]) );
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
  DFQD2BWP12T30P140 baud_counter_reg_13_ ( .D(N447), .CP(n525), .Q(
        baud_counter[13]) );
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
  DFQD2BWP12T30P140 r_setup_reg_26_ ( .D(n121), .CP(n529), .Q(r_setup[26]) );
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
  DFQD2BWP12T30P140 chg_counter_reg_11_ ( .D(n179), .CP(n529), .Q(
        chg_counter[11]) );
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
  DFQD2BWP12T30P140 chg_counter_reg_18_ ( .D(n172), .CP(n530), .Q(
        chg_counter[18]) );
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
  DFQD2BWP12T30P140 o_break_reg ( .D(N92), .CP(n529), .Q(o_break) );
  DFQD2BWP12T30P140 r_setup_reg_8_ ( .D(n139), .CP(n528), .Q(
        clocks_per_baud[8]) );
  DFQD2BWP12T30P140 r_setup_reg_5_ ( .D(n142), .CP(n528), .Q(
        clocks_per_baud[5]) );
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
  DFQD2BWP12T30P140 o_data_reg_5_ ( .D(n153), .CP(n526), .Q(o_data[5]) );
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
  DFQD2BWP12T30P140 chg_counter_reg_17_ ( .D(n173), .CP(n529), .Q(
        chg_counter[17]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n162), .CP(n526), .Q(state[0]) );
  DFQD2BWP12T30P140 r_setup_reg_28_ ( .D(n119), .CP(n529), .Q(data_bits[0]) );
  DFQD2BWP12T30P140 ck_uart_reg ( .D(qq_uart), .CP(n527), .Q(o_ck_uart) );
  DFQD2BWP12T30P140 r_setup_reg_19_ ( .D(n128), .CP(n529), .Q(
        clocks_per_baud[19]) );
  DFQD2BWP12T30P140 o_wr_reg ( .D(N235), .CP(n527), .Q(o_wr) );
  DFQD1BWP12T30P140 data_reg_reg_1_ ( .D(n110), .CP(n530), .Q(data_reg[1]) );
  DFQD1BWP12T30P140 baud_counter_reg_9_ ( .D(N443), .CP(n525), .Q(
        baud_counter[9]) );
  DFQD1BWP12T30P140 baud_counter_reg_26_ ( .D(N460), .CP(n528), .Q(
        baud_counter[26]) );
  DFQD1BWP12T30P140 data_reg_reg_2_ ( .D(n111), .CP(n530), .Q(data_reg[2]) );
  DFQD1BWP12T30P140 r_setup_reg_1_ ( .D(n146), .CP(n527), .Q(
        clocks_per_baud[1]) );
  DFQD1BWP12T30P140 r_setup_reg_18_ ( .D(n129), .CP(n529), .Q(
        clocks_per_baud[18]) );
  DFQD1BWP12T30P140 o_data_reg_3_ ( .D(n151), .CP(n527), .Q(o_data[3]) );
  DFQD1BWP12T30P140 chg_counter_reg_25_ ( .D(n165), .CP(n530), .Q(
        chg_counter[25]) );
  ND2D0BWP12T30P140 U3 ( .A1(state[2]), .A2(state[3]), .ZN(n73) );
  IND2D1BWP12T30P140 U4 ( .A1(n73), .B1(state[1]), .ZN(n302) );
  CKBD0BWP12T30P140 U5 ( .I(n302), .Z(n303) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(i_setup[29]), .I1(data_bits[1]), .S(n303), .Z(
        n118) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(i_setup[1]), .I1(clocks_per_baud[1]), .S(n302), 
        .Z(n146) );
  INVD0BWP12T30P140 U8 ( .I(qq_uart), .ZN(n1) );
  INVD0BWP12T30P140 U9 ( .I(o_ck_uart), .ZN(n449) );
  AO221D0BWP12T30P140 U10 ( .A1(o_ck_uart), .A2(n1), .B1(n449), .B2(qq_uart), 
        .C(i_reset), .Z(n51) );
  INVD0BWP12T30P140 U11 ( .I(chg_counter[27]), .ZN(n239) );
  INVD0BWP12T30P140 U12 ( .I(chg_counter[20]), .ZN(n426) );
  ND2D0BWP12T30P140 U13 ( .A1(clocks_per_baud[16]), .A2(n426), .ZN(n267) );
  INVD0BWP12T30P140 U14 ( .I(clocks_per_baud[15]), .ZN(n325) );
  NR2D0BWP12T30P140 U15 ( .A1(chg_counter[19]), .A2(n325), .ZN(n263) );
  INVD0BWP12T30P140 U16 ( .I(chg_counter[18]), .ZN(n42) );
  ND2D0BWP12T30P140 U17 ( .A1(clocks_per_baud[14]), .A2(n42), .ZN(n259) );
  INVD0BWP12T30P140 U18 ( .I(clocks_per_baud[9]), .ZN(n336) );
  NR2D0BWP12T30P140 U19 ( .A1(chg_counter[13]), .A2(n336), .ZN(n257) );
  INVD0BWP12T30P140 U20 ( .I(chg_counter[13]), .ZN(n457) );
  NR2D0BWP12T30P140 U21 ( .A1(clocks_per_baud[9]), .A2(n457), .ZN(n16) );
  INVD0BWP12T30P140 U22 ( .I(chg_counter[12]), .ZN(n387) );
  ND2D0BWP12T30P140 U23 ( .A1(clocks_per_baud[8]), .A2(n387), .ZN(n250) );
  INVD0BWP12T30P140 U24 ( .I(chg_counter[11]), .ZN(n375) );
  INVD0BWP12T30P140 U25 ( .I(clocks_per_baud[1]), .ZN(n342) );
  INVD0BWP12T30P140 U26 ( .I(chg_counter[4]), .ZN(n36) );
  ND2D0BWP12T30P140 U27 ( .A1(clocks_per_baud[0]), .A2(n36), .ZN(n2) );
  MAOI222D0BWP12T30P140 U28 ( .A(chg_counter[5]), .B(n342), .C(n2), .ZN(n6) );
  INVD0BWP12T30P140 U29 ( .I(chg_counter[7]), .ZN(n432) );
  OR2D0BWP12T30P140 U30 ( .A1(clocks_per_baud[3]), .A2(n432), .Z(n5) );
  INVD0BWP12T30P140 U31 ( .I(clocks_per_baud[2]), .ZN(n341) );
  ND2D0BWP12T30P140 U32 ( .A1(chg_counter[6]), .A2(n341), .ZN(n4) );
  NR2D0BWP12T30P140 U33 ( .A1(chg_counter[6]), .A2(n341), .ZN(n3) );
  AOI32D0BWP12T30P140 U34 ( .A1(n6), .A2(n5), .A3(n4), .B1(n3), .B2(n5), .ZN(
        n8) );
  ND2D0BWP12T30P140 U35 ( .A1(clocks_per_baud[3]), .A2(n432), .ZN(n7) );
  INVD0BWP12T30P140 U36 ( .I(clocks_per_baud[4]), .ZN(n350) );
  AOI22D0BWP12T30P140 U37 ( .A1(n8), .A2(n7), .B1(chg_counter[8]), .B2(n350), 
        .ZN(n13) );
  INVD0BWP12T30P140 U38 ( .I(clocks_per_baud[5]), .ZN(n9) );
  ND2D0BWP12T30P140 U39 ( .A1(chg_counter[9]), .A2(n9), .ZN(n12) );
  NR2D0BWP12T30P140 U40 ( .A1(chg_counter[8]), .A2(n350), .ZN(n11) );
  NR2D0BWP12T30P140 U41 ( .A1(chg_counter[9]), .A2(n9), .ZN(n10) );
  AOI221D0BWP12T30P140 U42 ( .A1(n13), .A2(n12), .B1(n11), .B2(n12), .C(n10), 
        .ZN(n14) );
  INVD0BWP12T30P140 U43 ( .I(clocks_per_baud[6]), .ZN(n358) );
  MAOI222D0BWP12T30P140 U44 ( .A(chg_counter[10]), .B(n14), .C(n358), .ZN(n15)
         );
  MAOI222D0BWP12T30P140 U45 ( .A(clocks_per_baud[7]), .B(n375), .C(n15), .ZN(
        n252) );
  OAI22D0BWP12T30P140 U46 ( .A1(clocks_per_baud[8]), .A2(n387), .B1(
        clocks_per_baud[9]), .B2(n457), .ZN(n249) );
  OAI22D0BWP12T30P140 U47 ( .A1(n16), .A2(n250), .B1(n252), .B2(n249), .ZN(n17) );
  INVD0BWP12T30P140 U48 ( .I(chg_counter[14]), .ZN(n458) );
  OAI22D0BWP12T30P140 U49 ( .A1(n257), .A2(n17), .B1(clocks_per_baud[10]), 
        .B2(n458), .ZN(n18) );
  ND2D0BWP12T30P140 U50 ( .A1(clocks_per_baud[10]), .A2(n458), .ZN(n251) );
  INVD0BWP12T30P140 U51 ( .I(chg_counter[15]), .ZN(n391) );
  ND2D0BWP12T30P140 U52 ( .A1(clocks_per_baud[11]), .A2(n391), .ZN(n253) );
  NR2D0BWP12T30P140 U53 ( .A1(clocks_per_baud[11]), .A2(n391), .ZN(n262) );
  AOI31D0BWP12T30P140 U54 ( .A1(n18), .A2(n251), .A3(n253), .B(n262), .ZN(n19)
         );
  INVD0BWP12T30P140 U55 ( .I(clocks_per_baud[13]), .ZN(n321) );
  ND2D0BWP12T30P140 U56 ( .A1(chg_counter[17]), .A2(n321), .ZN(n245) );
  INVD0BWP12T30P140 U57 ( .I(clocks_per_baud[12]), .ZN(n330) );
  ND2D0BWP12T30P140 U58 ( .A1(chg_counter[16]), .A2(n330), .ZN(n246) );
  NR2D0BWP12T30P140 U59 ( .A1(n42), .A2(clocks_per_baud[14]), .ZN(n247) );
  INVD0BWP12T30P140 U60 ( .I(n247), .ZN(n20) );
  ND4D0BWP12T30P140 U61 ( .A1(n19), .A2(n245), .A3(n246), .A4(n20), .ZN(n22)
         );
  NR2D0BWP12T30P140 U62 ( .A1(chg_counter[16]), .A2(n330), .ZN(n266) );
  NR2D0BWP12T30P140 U63 ( .A1(chg_counter[17]), .A2(n321), .ZN(n258) );
  AOI32D0BWP12T30P140 U64 ( .A1(n266), .A2(n20), .A3(n245), .B1(n258), .B2(n20), .ZN(n21) );
  INVD0BWP12T30P140 U65 ( .I(chg_counter[19]), .ZN(n425) );
  NR2D0BWP12T30P140 U66 ( .A1(clocks_per_baud[15]), .A2(n425), .ZN(n269) );
  AOI31D0BWP12T30P140 U67 ( .A1(n259), .A2(n22), .A3(n21), .B(n269), .ZN(n23)
         );
  OAI22D0BWP12T30P140 U68 ( .A1(n263), .A2(n23), .B1(clocks_per_baud[16]), 
        .B2(n426), .ZN(n24) );
  INVD0BWP12T30P140 U69 ( .I(chg_counter[21]), .ZN(n233) );
  NR2D0BWP12T30P140 U70 ( .A1(clocks_per_baud[17]), .A2(n233), .ZN(n244) );
  INVD0BWP12T30P140 U71 ( .I(chg_counter[23]), .ZN(n412) );
  INVD0BWP12T30P140 U72 ( .I(clocks_per_baud[18]), .ZN(n25) );
  ND2D0BWP12T30P140 U73 ( .A1(chg_counter[22]), .A2(n25), .ZN(n242) );
  OAI21D0BWP12T30P140 U74 ( .A1(clocks_per_baud[19]), .A2(n412), .B(n242), 
        .ZN(n27) );
  AOI211D0BWP12T30P140 U75 ( .A1(n267), .A2(n24), .B(n244), .C(n27), .ZN(n30)
         );
  INVD0BWP12T30P140 U76 ( .I(clocks_per_baud[17]), .ZN(n315) );
  NR2D0BWP12T30P140 U77 ( .A1(chg_counter[22]), .A2(n25), .ZN(n241) );
  MAOI222D0BWP12T30P140 U78 ( .A(clocks_per_baud[19]), .B(n241), .C(n412), 
        .ZN(n26) );
  OAI31D0BWP12T30P140 U79 ( .A1(chg_counter[21]), .A2(n315), .A3(n27), .B(n26), 
        .ZN(n29) );
  INVD0BWP12T30P140 U80 ( .I(chg_counter[24]), .ZN(n219) );
  INVD0BWP12T30P140 U81 ( .I(clocks_per_baud[21]), .ZN(n310) );
  INVD0BWP12T30P140 U82 ( .I(clocks_per_baud[22]), .ZN(n31) );
  AOI22D0BWP12T30P140 U83 ( .A1(n310), .A2(chg_counter[25]), .B1(n31), .B2(
        chg_counter[26]), .ZN(n33) );
  OA21D0BWP12T30P140 U84 ( .A1(n219), .A2(clocks_per_baud[20]), .B(n33), .Z(
        n28) );
  OAI21D0BWP12T30P140 U85 ( .A1(n30), .A2(n29), .B(n28), .ZN(n35) );
  INVD0BWP12T30P140 U86 ( .I(clocks_per_baud[20]), .ZN(n399) );
  OAI22D0BWP12T30P140 U87 ( .A1(chg_counter[24]), .A2(n399), .B1(
        chg_counter[25]), .B2(n310), .ZN(n273) );
  ND2D0BWP12T30P140 U88 ( .A1(n239), .A2(clocks_per_baud[23]), .ZN(n277) );
  INVD0BWP12T30P140 U89 ( .I(n277), .ZN(n32) );
  NR2D0BWP12T30P140 U90 ( .A1(chg_counter[26]), .A2(n31), .ZN(n274) );
  AOI211D0BWP12T30P140 U91 ( .A1(n33), .A2(n273), .B(n32), .C(n274), .ZN(n34)
         );
  MOAI22D0BWP12T30P140 U92 ( .A1(n239), .A2(clocks_per_baud[23]), .B1(n35), 
        .B2(n34), .ZN(n424) );
  NR2D0BWP12T30P140 U93 ( .A1(n51), .A2(n424), .ZN(n82) );
  INVD0BWP12T30P140 U94 ( .I(n82), .ZN(n429) );
  INVD0BWP12T30P140 U95 ( .I(chg_counter[16]), .ZN(n316) );
  INVD0BWP12T30P140 U96 ( .I(chg_counter[10]), .ZN(n223) );
  INVD0BWP12T30P140 U97 ( .I(chg_counter[8]), .ZN(n338) );
  INVD0BWP12T30P140 U98 ( .I(chg_counter[6]), .ZN(n215) );
  ND2D0BWP12T30P140 U99 ( .A1(chg_counter[1]), .A2(chg_counter[0]), .ZN(n344)
         );
  INR2D1BWP12T30P140 U100 ( .A1(chg_counter[2]), .B1(n344), .ZN(n46) );
  ND2D0BWP12T30P140 U101 ( .A1(chg_counter[3]), .A2(n46), .ZN(n301) );
  NR2D0BWP12T30P140 U102 ( .A1(n36), .A2(n301), .ZN(n214) );
  ND2D0BWP12T30P140 U103 ( .A1(chg_counter[5]), .A2(n214), .ZN(n217) );
  NR2D0BWP12T30P140 U104 ( .A1(n215), .A2(n217), .ZN(n56) );
  ND2D0BWP12T30P140 U105 ( .A1(chg_counter[7]), .A2(n56), .ZN(n58) );
  NR2D0BWP12T30P140 U106 ( .A1(n338), .A2(n58), .ZN(n222) );
  ND2D0BWP12T30P140 U107 ( .A1(chg_counter[9]), .A2(n222), .ZN(n225) );
  NR2D0BWP12T30P140 U108 ( .A1(n223), .A2(n225), .ZN(n52) );
  ND2D0BWP12T30P140 U109 ( .A1(chg_counter[11]), .A2(n52), .ZN(n67) );
  NR2D0BWP12T30P140 U110 ( .A1(n387), .A2(n67), .ZN(n100) );
  ND2D0BWP12T30P140 U111 ( .A1(chg_counter[13]), .A2(n100), .ZN(n460) );
  NR2D0BWP12T30P140 U112 ( .A1(n458), .A2(n460), .ZN(n59) );
  ND2D0BWP12T30P140 U113 ( .A1(chg_counter[15]), .A2(n59), .ZN(n283) );
  NR2D0BWP12T30P140 U114 ( .A1(n316), .A2(n283), .ZN(n37) );
  ND2D0BWP12T30P140 U115 ( .A1(chg_counter[17]), .A2(n37), .ZN(n41) );
  INVD0BWP12T30P140 U116 ( .I(chg_counter[17]), .ZN(n86) );
  CKBD0BWP12T30P140 U117 ( .I(n424), .Z(n456) );
  INVD0BWP12T30P140 U118 ( .I(n37), .ZN(n88) );
  INVD0BWP12T30P140 U119 ( .I(n51), .ZN(n454) );
  OAI31D0BWP12T30P140 U120 ( .A1(n86), .A2(n456), .A3(n88), .B(n454), .ZN(n38)
         );
  OAI32D0BWP12T30P140 U121 ( .A1(chg_counter[18]), .A2(n429), .A3(n41), .B1(
        n38), .B2(n42), .ZN(n172) );
  ND2D0BWP12T30P140 U122 ( .A1(n454), .A2(n424), .ZN(n45) );
  INVD0BWP12T30P140 U123 ( .I(chg_counter[0]), .ZN(n40) );
  AOI22D0BWP12T30P140 U124 ( .A1(chg_counter[0]), .A2(n45), .B1(n429), .B2(n40), .ZN(n189) );
  CKBD0BWP12T30P140 U125 ( .I(n429), .Z(n461) );
  INVD0BWP12T30P140 U126 ( .I(n51), .ZN(n431) );
  OAI211D0BWP12T30P140 U127 ( .A1(n40), .A2(n456), .B(chg_counter[1]), .C(n431), .ZN(n39) );
  OAI31D0BWP12T30P140 U128 ( .A1(chg_counter[1]), .A2(n40), .A3(n461), .B(n39), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U129 ( .A1(n42), .A2(n41), .ZN(n69) );
  ND2D0BWP12T30P140 U130 ( .A1(chg_counter[19]), .A2(n69), .ZN(n428) );
  NR2D0BWP12T30P140 U131 ( .A1(n426), .A2(n428), .ZN(n43) );
  ND2D0BWP12T30P140 U132 ( .A1(chg_counter[21]), .A2(n43), .ZN(n49) );
  INVD0BWP12T30P140 U133 ( .I(n43), .ZN(n235) );
  OAI31D0BWP12T30P140 U134 ( .A1(n233), .A2(n424), .A3(n235), .B(n454), .ZN(
        n44) );
  INVD0BWP12T30P140 U135 ( .I(chg_counter[22]), .ZN(n50) );
  OAI32D0BWP12T30P140 U136 ( .A1(chg_counter[22]), .A2(n461), .A3(n49), .B1(
        n44), .B2(n50), .ZN(n168) );
  OAI21D0BWP12T30P140 U137 ( .A1(n46), .A2(n429), .B(n45), .ZN(n298) );
  NR2D0BWP12T30P140 U138 ( .A1(chg_counter[3]), .A2(n429), .ZN(n299) );
  AO22D0BWP12T30P140 U139 ( .A1(chg_counter[3]), .A2(n298), .B1(n299), .B2(n46), .Z(n187) );
  INVD0BWP12T30P140 U140 ( .I(zero_baud_counter), .ZN(n71) );
  NR2D0BWP12T30P140 U141 ( .A1(n449), .A2(n71), .ZN(n48) );
  INVD0BWP12T30P140 U142 ( .I(state[0]), .ZN(n92) );
  NR2D0BWP12T30P140 U143 ( .A1(n92), .A2(n303), .ZN(n441) );
  INVD0BWP12T30P140 U144 ( .I(n441), .ZN(n102) );
  OAI21D0BWP12T30P140 U145 ( .A1(calc_parity), .A2(n48), .B(n102), .ZN(n47) );
  AOI21D0BWP12T30P140 U146 ( .A1(calc_parity), .A2(n48), .B(n47), .ZN(n159) );
  INVD0BWP12T30P140 U147 ( .I(chg_counter[26]), .ZN(n240) );
  NR2D0BWP12T30P140 U148 ( .A1(n50), .A2(n49), .ZN(n54) );
  ND2D0BWP12T30P140 U149 ( .A1(chg_counter[23]), .A2(n54), .ZN(n221) );
  NR2D0BWP12T30P140 U150 ( .A1(n219), .A2(n221), .ZN(n83) );
  ND3D0BWP12T30P140 U151 ( .A1(chg_counter[25]), .A2(n82), .A3(n83), .ZN(n211)
         );
  OAI22D0BWP12T30P140 U152 ( .A1(n239), .A2(n51), .B1(n240), .B2(n211), .ZN(
        n163) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(i_setup[21]), .I1(clocks_per_baud[21]), .S(
        n302), .Z(n126) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(i_setup[13]), .I1(clocks_per_baud[13]), .S(
        n302), .Z(n134) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(i_setup[12]), .I1(clocks_per_baud[12]), .S(
        n302), .Z(n135) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(i_setup[6]), .I1(clocks_per_baud[6]), .S(
        n302), .Z(n141) );
  CKMUX2D0BWP12T30P140 U157 ( .I0(i_setup[0]), .I1(clocks_per_baud[0]), .S(
        n302), .Z(n117) );
  CKMUX2D0BWP12T30P140 U158 ( .I0(i_setup[24]), .I1(r_setup[24]), .S(n303), 
        .Z(n123) );
  INVD0BWP12T30P140 U159 ( .I(state[1]), .ZN(n62) );
  INVD0BWP12T30P140 U160 ( .I(state[2]), .ZN(n294) );
  ND3D0BWP12T30P140 U161 ( .A1(n62), .A2(n294), .A3(state[3]), .ZN(n61) );
  NR2D0BWP12T30P140 U162 ( .A1(state[0]), .A2(n61), .ZN(n446) );
  NR2D0BWP12T30P140 U163 ( .A1(n446), .A2(n71), .ZN(n445) );
  INVD0BWP12T30P140 U164 ( .I(data_reg[5]), .ZN(n435) );
  INVD0BWP12T30P140 U165 ( .I(data_reg[4]), .ZN(n438) );
  INVD0BWP12T30P140 U166 ( .I(n445), .ZN(n442) );
  AOI22D0BWP12T30P140 U167 ( .A1(n445), .A2(n435), .B1(n438), .B2(n442), .ZN(
        n113) );
  INVD0BWP12T30P140 U168 ( .I(data_reg[3]), .ZN(n437) );
  INVD0BWP12T30P140 U169 ( .I(data_reg[2]), .ZN(n444) );
  AOI22D0BWP12T30P140 U170 ( .A1(n445), .A2(n437), .B1(n444), .B2(n442), .ZN(
        n111) );
  INVD0BWP12T30P140 U171 ( .I(n52), .ZN(n65) );
  OAI21D0BWP12T30P140 U172 ( .A1(n424), .A2(n65), .B(n454), .ZN(n53) );
  OAI32D0BWP12T30P140 U173 ( .A1(chg_counter[11]), .A2(n461), .A3(n65), .B1(
        n53), .B2(n375), .ZN(n179) );
  INVD0BWP12T30P140 U174 ( .I(n54), .ZN(n218) );
  OAI21D0BWP12T30P140 U175 ( .A1(n456), .A2(n218), .B(n431), .ZN(n55) );
  OAI32D0BWP12T30P140 U176 ( .A1(chg_counter[23]), .A2(n429), .A3(n218), .B1(
        n55), .B2(n412), .ZN(n167) );
  INVD0BWP12T30P140 U177 ( .I(data_reg[7]), .ZN(n201) );
  INVD0BWP12T30P140 U178 ( .I(data_reg[6]), .ZN(n436) );
  AOI22D0BWP12T30P140 U179 ( .A1(n445), .A2(n201), .B1(n436), .B2(n442), .ZN(
        n115) );
  CKMUX2D0BWP12T30P140 U180 ( .I0(i_setup[25]), .I1(r_setup[25]), .S(n303), 
        .Z(n122) );
  CKMUX2D0BWP12T30P140 U181 ( .I0(i_setup[4]), .I1(clocks_per_baud[4]), .S(
        n302), .Z(n143) );
  INVD0BWP12T30P140 U182 ( .I(n56), .ZN(n434) );
  OAI31D0BWP12T30P140 U183 ( .A1(n432), .A2(n424), .A3(n434), .B(n454), .ZN(
        n57) );
  OAI32D0BWP12T30P140 U184 ( .A1(chg_counter[8]), .A2(n461), .A3(n58), .B1(n57), .B2(n338), .ZN(n182) );
  INVD0BWP12T30P140 U185 ( .I(n59), .ZN(n281) );
  OAI21D0BWP12T30P140 U186 ( .A1(n456), .A2(n281), .B(n431), .ZN(n60) );
  OAI32D0BWP12T30P140 U187 ( .A1(chg_counter[15]), .A2(n429), .A3(n281), .B1(
        n60), .B2(n391), .ZN(n175) );
  NR2D0BWP12T30P140 U188 ( .A1(state[0]), .A2(n62), .ZN(n94) );
  NR2D0BWP12T30P140 U189 ( .A1(n92), .A2(n61), .ZN(n194) );
  AOI31D0BWP12T30P140 U190 ( .A1(state[3]), .A2(n94), .A3(n294), .B(n194), 
        .ZN(n64) );
  OAI21D0BWP12T30P140 U191 ( .A1(o_frame_err), .A2(n449), .B(zero_baud_counter), .ZN(n63) );
  AOI21D0BWP12T30P140 U192 ( .A1(n92), .A2(n62), .B(n73), .ZN(n452) );
  NR2D0BWP12T30P140 U193 ( .A1(zero_baud_counter), .A2(n452), .ZN(n68) );
  MOAI22D0BWP12T30P140 U194 ( .A1(n64), .A2(n63), .B1(n68), .B2(o_frame_err), 
        .ZN(n157) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(i_setup[26]), .I1(r_setup[26]), .S(n303), 
        .Z(n121) );
  CKMUX2D0BWP12T30P140 U196 ( .I0(i_setup[27]), .I1(r_setup[27]), .S(n303), 
        .Z(n120) );
  OAI31D0BWP12T30P140 U197 ( .A1(n375), .A2(n424), .A3(n65), .B(n454), .ZN(n66) );
  OAI32D0BWP12T30P140 U198 ( .A1(chg_counter[12]), .A2(n461), .A3(n67), .B1(
        n66), .B2(n387), .ZN(n178) );
  INVD0BWP12T30P140 U199 ( .I(data_reg[1]), .ZN(n443) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n445), .A2(n443), .B1(data_reg[0]), .B2(n445), .ZN(n109) );
  AOI22D0BWP12T30P140 U201 ( .A1(n445), .A2(n449), .B1(n201), .B2(n442), .ZN(
        n116) );
  INVD0BWP12T30P140 U202 ( .I(i_reset), .ZN(n195) );
  ND2D0BWP12T30P140 U203 ( .A1(n68), .A2(n195), .ZN(n468) );
  CKMUX2D0BWP12T30P140 U204 ( .I0(baud_counter[0]), .I1(clocks_per_baud[0]), 
        .S(n468), .Z(n476) );
  INVD0BWP12T30P140 U205 ( .I(n476), .ZN(N434) );
  INVD0BWP12T30P140 U206 ( .I(n69), .ZN(n423) );
  OAI21D0BWP12T30P140 U207 ( .A1(n456), .A2(n423), .B(n431), .ZN(n70) );
  OAI32D0BWP12T30P140 U208 ( .A1(chg_counter[19]), .A2(n429), .A3(n423), .B1(
        n70), .B2(n425), .ZN(n171) );
  CKMUX2D0BWP12T30P140 U209 ( .I0(i_setup[20]), .I1(clocks_per_baud[20]), .S(
        n302), .Z(n127) );
  ND2D0BWP12T30P140 U210 ( .A1(pre_wr), .A2(n195), .ZN(n440) );
  AOI21D0BWP12T30P140 U211 ( .A1(n71), .A2(n102), .B(n440), .ZN(N235) );
  CKMUX2D0BWP12T30P140 U212 ( .I0(i_setup[19]), .I1(clocks_per_baud[19]), .S(
        n302), .Z(n128) );
  CKMUX2D0BWP12T30P140 U213 ( .I0(i_setup[28]), .I1(data_bits[0]), .S(n303), 
        .Z(n119) );
  INVD0BWP12T30P140 U214 ( .I(n194), .ZN(n286) );
  OAI21D0BWP12T30P140 U215 ( .A1(state[1]), .A2(state[2]), .B(state[3]), .ZN(
        n93) );
  OAI21D0BWP12T30P140 U216 ( .A1(r_setup[27]), .A2(n286), .B(n93), .ZN(n291)
         );
  ND3D0BWP12T30P140 U217 ( .A1(state[0]), .A2(state[1]), .A3(state[2]), .ZN(
        n285) );
  OAI22D0BWP12T30P140 U218 ( .A1(r_setup[26]), .A2(n285), .B1(state[0]), .B2(
        state[3]), .ZN(n72) );
  AOI211D0BWP12T30P140 U219 ( .A1(o_ck_uart), .A2(n291), .B(n446), .C(n72), 
        .ZN(n81) );
  NR3D0BWP12T30P140 U220 ( .A1(state[1]), .A2(n92), .A3(n73), .ZN(n90) );
  OAI21D0BWP12T30P140 U221 ( .A1(state[0]), .A2(n303), .B(n195), .ZN(n74) );
  NR3D0BWP12T30P140 U222 ( .A1(o_break), .A2(n90), .A3(n74), .ZN(n75) );
  ND3D0BWP12T30P140 U223 ( .A1(n102), .A2(n75), .A3(zero_baud_counter), .ZN(
        n232) );
  NR3D0BWP12T30P140 U224 ( .A1(i_reset), .A2(state[0]), .A3(n303), .ZN(n76) );
  INVD0BWP12T30P140 U225 ( .I(o_break), .ZN(n89) );
  NR2D0BWP12T30P140 U226 ( .A1(n89), .A2(n74), .ZN(n78) );
  ND2D0BWP12T30P140 U227 ( .A1(n441), .A2(n75), .ZN(n77) );
  AOI21D0BWP12T30P140 U228 ( .A1(half_baud_time), .A2(n449), .B(n77), .ZN(n230) );
  AOI211D0BWP12T30P140 U229 ( .A1(line_synch), .A2(n76), .B(n78), .C(n230), 
        .ZN(n80) );
  INVD0BWP12T30P140 U230 ( .I(n232), .ZN(n289) );
  INVD0BWP12T30P140 U231 ( .I(n77), .ZN(n91) );
  OR2D0BWP12T30P140 U232 ( .A1(n78), .A2(i_reset), .Z(n229) );
  NR3D0BWP12T30P140 U233 ( .A1(n289), .A2(n91), .A3(n229), .ZN(n284) );
  AOI22D0BWP12T30P140 U234 ( .A1(state[0]), .A2(n284), .B1(data_bits[0]), .B2(
        n91), .ZN(n79) );
  OAI211D0BWP12T30P140 U235 ( .A1(n81), .A2(n232), .B(n80), .C(n79), .ZN(n162)
         );
  OAI31D0BWP12T30P140 U236 ( .A1(n219), .A2(n456), .A3(n221), .B(n454), .ZN(
        n213) );
  INVD0BWP12T30P140 U237 ( .I(chg_counter[25]), .ZN(n85) );
  ND2D0BWP12T30P140 U238 ( .A1(n82), .A2(n85), .ZN(n212) );
  INVD0BWP12T30P140 U239 ( .I(n83), .ZN(n84) );
  OAI22D0BWP12T30P140 U240 ( .A1(n213), .A2(n85), .B1(n212), .B2(n84), .ZN(
        n165) );
  OAI21D0BWP12T30P140 U241 ( .A1(n456), .A2(n88), .B(n431), .ZN(n87) );
  OAI32D0BWP12T30P140 U242 ( .A1(chg_counter[17]), .A2(n429), .A3(n88), .B1(
        n87), .B2(n86), .ZN(n173) );
  AOI31D0BWP12T30P140 U243 ( .A1(o_ck_uart), .A2(n90), .A3(n89), .B(n230), 
        .ZN(n99) );
  AOI22D0BWP12T30P140 U244 ( .A1(state[1]), .A2(n284), .B1(n91), .B2(
        data_bits[1]), .ZN(n98) );
  NR2D0BWP12T30P140 U245 ( .A1(state[1]), .A2(n92), .ZN(n96) );
  INVD0BWP12T30P140 U246 ( .I(n93), .ZN(n95) );
  OAI31D0BWP12T30P140 U247 ( .A1(n96), .A2(n95), .A3(n94), .B(n289), .ZN(n97)
         );
  ND4D0BWP12T30P140 U248 ( .A1(n99), .A2(n98), .A3(n195), .A4(n97), .ZN(n191)
         );
  CKMUX2D0BWP12T30P140 U249 ( .I0(i_setup[23]), .I1(clocks_per_baud[23]), .S(
        n303), .Z(n124) );
  CKMUX2D0BWP12T30P140 U250 ( .I0(i_setup[16]), .I1(clocks_per_baud[16]), .S(
        n303), .Z(n131) );
  CKMUX2D0BWP12T30P140 U251 ( .I0(i_setup[10]), .I1(clocks_per_baud[10]), .S(
        n302), .Z(n137) );
  INVD0BWP12T30P140 U252 ( .I(n100), .ZN(n455) );
  OAI21D0BWP12T30P140 U253 ( .A1(n456), .A2(n455), .B(n431), .ZN(n101) );
  OAI32D0BWP12T30P140 U254 ( .A1(chg_counter[13]), .A2(n461), .A3(n455), .B1(
        n101), .B2(n457), .ZN(n177) );
  NR4D0BWP12T30P140 U255 ( .A1(baud_counter[18]), .A2(baud_counter[17]), .A3(
        baud_counter[16]), .A4(baud_counter[15]), .ZN(n105) );
  NR4D0BWP12T30P140 U256 ( .A1(baud_counter[11]), .A2(baud_counter[3]), .A3(
        baud_counter[2]), .A4(baud_counter[1]), .ZN(n104) );
  NR4D0BWP12T30P140 U257 ( .A1(baud_counter[19]), .A2(baud_counter[6]), .A3(
        baud_counter[5]), .A4(baud_counter[4]), .ZN(n103) );
  ND4D0BWP12T30P140 U258 ( .A1(n105), .A2(n104), .A3(n103), .A4(n102), .ZN(
        n193) );
  NR4D0BWP12T30P140 U259 ( .A1(baud_counter[14]), .A2(baud_counter[13]), .A3(
        baud_counter[12]), .A4(baud_counter[25]), .ZN(n148) );
  NR4D0BWP12T30P140 U260 ( .A1(baud_counter[23]), .A2(baud_counter[26]), .A3(
        baud_counter[24]), .A4(baud_counter[27]), .ZN(n108) );
  NR4D0BWP12T30P140 U261 ( .A1(baud_counter[10]), .A2(baud_counter[9]), .A3(
        baud_counter[8]), .A4(baud_counter[7]), .ZN(n107) );
  INR4D0BWP12T30P140 U262 ( .A1(baud_counter[0]), .B1(baud_counter[21]), .B2(
        baud_counter[22]), .B3(baud_counter[20]), .ZN(n106) );
  ND4D0BWP12T30P140 U263 ( .A1(n148), .A2(n108), .A3(n107), .A4(n106), .ZN(
        n192) );
  NR2D0BWP12T30P140 U264 ( .A1(n193), .A2(n192), .ZN(N464) );
  ND3D0BWP12T30P140 U265 ( .A1(n195), .A2(n194), .A3(zero_baud_counter), .ZN(
        n439) );
  NR2D0BWP12T30P140 U266 ( .A1(data_bits[1]), .A2(n439), .ZN(n198) );
  INVD0BWP12T30P140 U267 ( .I(n198), .ZN(n210) );
  NR2D0BWP12T30P140 U268 ( .A1(data_bits[0]), .A2(n210), .ZN(n518) );
  INVD0BWP12T30P140 U269 ( .I(n439), .ZN(n196) );
  NR2D0BWP12T30P140 U270 ( .A1(i_reset), .A2(n196), .ZN(n519) );
  AO22D0BWP12T30P140 U271 ( .A1(data_reg[7]), .A2(n518), .B1(n519), .B2(
        o_data[7]), .Z(n155) );
  ND2D0BWP12T30P140 U272 ( .A1(data_bits[1]), .A2(n196), .ZN(n202) );
  INVD0BWP12T30P140 U273 ( .I(n202), .ZN(n522) );
  AOI22D0BWP12T30P140 U274 ( .A1(n198), .A2(data_reg[2]), .B1(n522), .B2(
        data_reg[4]), .ZN(n204) );
  OAI22D0BWP12T30P140 U275 ( .A1(n435), .A2(n202), .B1(n210), .B2(n437), .ZN(
        n205) );
  AOI22D0BWP12T30P140 U276 ( .A1(data_bits[0]), .A2(n205), .B1(n519), .B2(
        o_data[2]), .ZN(n197) );
  OAI21D0BWP12T30P140 U277 ( .A1(data_bits[0]), .A2(n204), .B(n197), .ZN(n150)
         );
  AOI22D0BWP12T30P140 U278 ( .A1(n198), .A2(data_reg[4]), .B1(n522), .B2(
        data_reg[6]), .ZN(n207) );
  OAI22D0BWP12T30P140 U279 ( .A1(n435), .A2(n210), .B1(n201), .B2(n202), .ZN(
        n208) );
  AOI22D0BWP12T30P140 U280 ( .A1(data_bits[0]), .A2(n208), .B1(n519), .B2(
        o_data[4]), .ZN(n199) );
  OAI21D0BWP12T30P140 U281 ( .A1(data_bits[0]), .A2(n207), .B(n199), .ZN(n152)
         );
  INVD0BWP12T30P140 U282 ( .I(data_bits[0]), .ZN(n521) );
  AOI22D0BWP12T30P140 U283 ( .A1(data_reg[6]), .A2(n518), .B1(n519), .B2(
        o_data[6]), .ZN(n200) );
  OAI31D0BWP12T30P140 U284 ( .A1(n521), .A2(n210), .A3(n201), .B(n200), .ZN(
        n154) );
  OAI22D0BWP12T30P140 U285 ( .A1(n210), .A2(n443), .B1(n202), .B2(n437), .ZN(
        n520) );
  AOI22D0BWP12T30P140 U286 ( .A1(o_data[1]), .A2(n519), .B1(n521), .B2(n520), 
        .ZN(n203) );
  OAI21D0BWP12T30P140 U287 ( .A1(n204), .A2(n521), .B(n203), .ZN(n149) );
  AOI22D0BWP12T30P140 U288 ( .A1(o_data[3]), .A2(n519), .B1(n521), .B2(n205), 
        .ZN(n206) );
  OAI21D0BWP12T30P140 U289 ( .A1(n207), .A2(n521), .B(n206), .ZN(n151) );
  AOI22D0BWP12T30P140 U290 ( .A1(o_data[5]), .A2(n519), .B1(n521), .B2(n208), 
        .ZN(n209) );
  OAI31D0BWP12T30P140 U291 ( .A1(n521), .A2(n210), .A3(n436), .B(n209), .ZN(
        n153) );
  AOI32D0BWP12T30P140 U292 ( .A1(n213), .A2(chg_counter[26]), .A3(n212), .B1(
        n211), .B2(n240), .ZN(n164) );
  CKMUX2D0BWP12T30P140 U293 ( .I0(i_setup[7]), .I1(clocks_per_baud[7]), .S(
        n303), .Z(n140) );
  CKMUX2D0BWP12T30P140 U294 ( .I0(i_setup[22]), .I1(clocks_per_baud[22]), .S(
        n302), .Z(n125) );
  CKMUX2D0BWP12T30P140 U295 ( .I0(i_setup[14]), .I1(clocks_per_baud[14]), .S(
        n303), .Z(n133) );
  CKMUX2D0BWP12T30P140 U296 ( .I0(i_setup[11]), .I1(clocks_per_baud[11]), .S(
        n303), .Z(n136) );
  INVD0BWP12T30P140 U297 ( .I(chg_counter[5]), .ZN(n361) );
  INVD0BWP12T30P140 U298 ( .I(n214), .ZN(n297) );
  OAI31D0BWP12T30P140 U299 ( .A1(n361), .A2(n424), .A3(n297), .B(n454), .ZN(
        n216) );
  OAI32D0BWP12T30P140 U300 ( .A1(chg_counter[6]), .A2(n461), .A3(n217), .B1(
        n216), .B2(n215), .ZN(n184) );
  OAI31D0BWP12T30P140 U301 ( .A1(n412), .A2(n424), .A3(n218), .B(n454), .ZN(
        n220) );
  OAI32D0BWP12T30P140 U302 ( .A1(chg_counter[24]), .A2(n461), .A3(n221), .B1(
        n220), .B2(n219), .ZN(n166) );
  INVD0BWP12T30P140 U303 ( .I(chg_counter[9]), .ZN(n226) );
  INVD0BWP12T30P140 U304 ( .I(n222), .ZN(n228) );
  OAI31D0BWP12T30P140 U305 ( .A1(n226), .A2(n424), .A3(n228), .B(n454), .ZN(
        n224) );
  OAI32D0BWP12T30P140 U306 ( .A1(chg_counter[10]), .A2(n461), .A3(n225), .B1(
        n224), .B2(n223), .ZN(n180) );
  OAI21D0BWP12T30P140 U307 ( .A1(n456), .A2(n228), .B(n431), .ZN(n227) );
  OAI32D0BWP12T30P140 U308 ( .A1(chg_counter[9]), .A2(n461), .A3(n228), .B1(
        n227), .B2(n226), .ZN(n181) );
  CKMUX2D0BWP12T30P140 U309 ( .I0(i_setup[3]), .I1(clocks_per_baud[3]), .S(
        n303), .Z(n144) );
  NR2D0BWP12T30P140 U310 ( .A1(n230), .A2(n229), .ZN(n293) );
  OAI21D0BWP12T30P140 U311 ( .A1(n289), .A2(n284), .B(state[3]), .ZN(n231) );
  OAI211D0BWP12T30P140 U312 ( .A1(n285), .A2(n232), .B(n293), .C(n231), .ZN(
        n160) );
  OAI21D0BWP12T30P140 U313 ( .A1(n456), .A2(n235), .B(n431), .ZN(n234) );
  OAI32D0BWP12T30P140 U314 ( .A1(chg_counter[21]), .A2(n429), .A3(n235), .B1(
        n234), .B2(n233), .ZN(n169) );
  CKMUX2D0BWP12T30P140 U315 ( .I0(i_setup[9]), .I1(clocks_per_baud[9]), .S(
        n302), .Z(n138) );
  CKMUX2D0BWP12T30P140 U316 ( .I0(i_setup[18]), .I1(clocks_per_baud[18]), .S(
        n303), .Z(n129) );
  CKMUX2D0BWP12T30P140 U317 ( .I0(i_setup[5]), .I1(clocks_per_baud[5]), .S(
        n302), .Z(n142) );
  CKMUX2D0BWP12T30P140 U318 ( .I0(i_setup[8]), .I1(clocks_per_baud[8]), .S(
        n302), .Z(n139) );
  ND2D0BWP12T30P140 U319 ( .A1(chg_counter[24]), .A2(n399), .ZN(n238) );
  ND2D0BWP12T30P140 U320 ( .A1(chg_counter[25]), .A2(n310), .ZN(n237) );
  NR2D0BWP12T30P140 U321 ( .A1(chg_counter[25]), .A2(n310), .ZN(n236) );
  AOI211D0BWP12T30P140 U322 ( .A1(n238), .A2(n237), .B(n274), .C(n236), .ZN(
        n280) );
  OAI22D0BWP12T30P140 U323 ( .A1(clocks_per_baud[22]), .A2(n240), .B1(
        clocks_per_baud[23]), .B2(n239), .ZN(n279) );
  AOI21D0BWP12T30P140 U324 ( .A1(clocks_per_baud[19]), .A2(n412), .B(n241), 
        .ZN(n272) );
  MAOI222D0BWP12T30P140 U325 ( .A(clocks_per_baud[19]), .B(n412), .C(n242), 
        .ZN(n243) );
  AOI21D0BWP12T30P140 U326 ( .A1(n244), .A2(n272), .B(n243), .ZN(n276) );
  OAI21D0BWP12T30P140 U327 ( .A1(n258), .A2(n246), .B(n245), .ZN(n248) );
  AOI21D0BWP12T30P140 U328 ( .A1(n259), .A2(n248), .B(n247), .ZN(n265) );
  OR2D0BWP12T30P140 U329 ( .A1(clocks_per_baud[10]), .A2(n458), .Z(n256) );
  AOI32D0BWP12T30P140 U330 ( .A1(n252), .A2(n251), .A3(n250), .B1(n249), .B2(
        n251), .ZN(n255) );
  INVD0BWP12T30P140 U331 ( .I(n253), .ZN(n254) );
  AOI221D0BWP12T30P140 U332 ( .A1(n257), .A2(n256), .B1(n255), .B2(n256), .C(
        n254), .ZN(n261) );
  INVD0BWP12T30P140 U333 ( .I(n258), .ZN(n260) );
  OAI211D0BWP12T30P140 U334 ( .A1(n262), .A2(n261), .B(n260), .C(n259), .ZN(
        n264) );
  AOI221D0BWP12T30P140 U335 ( .A1(n266), .A2(n265), .B1(n264), .B2(n265), .C(
        n263), .ZN(n268) );
  OAI21D0BWP12T30P140 U336 ( .A1(n269), .A2(n268), .B(n267), .ZN(n270) );
  OAI21D0BWP12T30P140 U337 ( .A1(clocks_per_baud[16]), .A2(n426), .B(n270), 
        .ZN(n271) );
  OAI211D0BWP12T30P140 U338 ( .A1(chg_counter[21]), .A2(n315), .B(n272), .C(
        n271), .ZN(n275) );
  AOI211D0BWP12T30P140 U339 ( .A1(n276), .A2(n275), .B(n274), .C(n273), .ZN(
        n278) );
  OAI31D0BWP12T30P140 U340 ( .A1(n280), .A2(n279), .A3(n278), .B(n277), .ZN(
        n430) );
  NR2D0BWP12T30P140 U341 ( .A1(o_ck_uart), .A2(n430), .ZN(N92) );
  CKMUX2D0BWP12T30P140 U342 ( .I0(i_setup[2]), .I1(clocks_per_baud[2]), .S(
        n302), .Z(n145) );
  OAI31D0BWP12T30P140 U343 ( .A1(n391), .A2(n424), .A3(n281), .B(n454), .ZN(
        n282) );
  OAI32D0BWP12T30P140 U344 ( .A1(chg_counter[16]), .A2(n429), .A3(n283), .B1(
        n282), .B2(n316), .ZN(n174) );
  INVD0BWP12T30P140 U345 ( .I(n284), .ZN(n295) );
  INVD0BWP12T30P140 U346 ( .I(n285), .ZN(n288) );
  AOI21D0BWP12T30P140 U347 ( .A1(state[1]), .A2(state[0]), .B(state[2]), .ZN(
        n287) );
  OAI22D0BWP12T30P140 U348 ( .A1(n288), .A2(n287), .B1(o_ck_uart), .B2(n286), 
        .ZN(n290) );
  OAI21D0BWP12T30P140 U349 ( .A1(n291), .A2(n290), .B(n289), .ZN(n292) );
  OAI211D0BWP12T30P140 U350 ( .A1(n295), .A2(n294), .B(n293), .C(n292), .ZN(
        n161) );
  OAI21D0BWP12T30P140 U351 ( .A1(n456), .A2(n297), .B(n431), .ZN(n296) );
  OAI32D0BWP12T30P140 U352 ( .A1(chg_counter[5]), .A2(n461), .A3(n297), .B1(
        n296), .B2(n361), .ZN(n185) );
  OAI21D0BWP12T30P140 U353 ( .A1(n299), .A2(n298), .B(chg_counter[4]), .ZN(
        n300) );
  OAI31D0BWP12T30P140 U354 ( .A1(chg_counter[4]), .A2(n429), .A3(n301), .B(
        n300), .ZN(n186) );
  CKMUX2D0BWP12T30P140 U355 ( .I0(i_setup[17]), .I1(clocks_per_baud[17]), .S(
        n302), .Z(n130) );
  CKMUX2D0BWP12T30P140 U356 ( .I0(i_setup[15]), .I1(clocks_per_baud[15]), .S(
        n303), .Z(n132) );
  NR2D0BWP12T30P140 U357 ( .A1(n344), .A2(n424), .ZN(n305) );
  OAI21D0BWP12T30P140 U358 ( .A1(chg_counter[2]), .A2(n305), .B(n431), .ZN(
        n304) );
  AOI21D0BWP12T30P140 U359 ( .A1(chg_counter[2]), .A2(n305), .B(n304), .ZN(
        n188) );
  NR3D0BWP12T30P140 U360 ( .A1(clocks_per_baud[3]), .A2(clocks_per_baud[2]), 
        .A3(clocks_per_baud[1]), .ZN(n351) );
  ND2D0BWP12T30P140 U361 ( .A1(n351), .A2(n350), .ZN(n349) );
  NR2D0BWP12T30P140 U362 ( .A1(clocks_per_baud[5]), .A2(n349), .ZN(n359) );
  ND2D0BWP12T30P140 U363 ( .A1(n359), .A2(n358), .ZN(n357) );
  NR2D0BWP12T30P140 U364 ( .A1(clocks_per_baud[7]), .A2(n357), .ZN(n367) );
  INVD0BWP12T30P140 U365 ( .I(clocks_per_baud[8]), .ZN(n366) );
  ND2D0BWP12T30P140 U366 ( .A1(n367), .A2(n366), .ZN(n365) );
  INVD0BWP12T30P140 U367 ( .I(n365), .ZN(n337) );
  ND2D0BWP12T30P140 U368 ( .A1(n336), .A2(n337), .ZN(n335) );
  NR2D0BWP12T30P140 U369 ( .A1(n335), .A2(clocks_per_baud[10]), .ZN(n334) );
  INVD0BWP12T30P140 U370 ( .I(n334), .ZN(n332) );
  NR2D0BWP12T30P140 U371 ( .A1(clocks_per_baud[11]), .A2(n332), .ZN(n331) );
  ND2D0BWP12T30P140 U372 ( .A1(n331), .A2(n330), .ZN(n329) );
  INVD0BWP12T30P140 U373 ( .I(n329), .ZN(n322) );
  ND2D0BWP12T30P140 U374 ( .A1(n321), .A2(n322), .ZN(n320) );
  NR2D0BWP12T30P140 U375 ( .A1(n320), .A2(clocks_per_baud[14]), .ZN(n326) );
  ND2D0BWP12T30P140 U376 ( .A1(n325), .A2(n326), .ZN(n324) );
  NR2D0BWP12T30P140 U377 ( .A1(n324), .A2(clocks_per_baud[16]), .ZN(n319) );
  ND2D0BWP12T30P140 U378 ( .A1(n315), .A2(n319), .ZN(n314) );
  NR2D0BWP12T30P140 U379 ( .A1(n314), .A2(clocks_per_baud[18]), .ZN(n313) );
  INVD0BWP12T30P140 U380 ( .I(n313), .ZN(n397) );
  NR2D0BWP12T30P140 U381 ( .A1(clocks_per_baud[19]), .A2(n397), .ZN(n400) );
  ND2D0BWP12T30P140 U382 ( .A1(n400), .A2(n399), .ZN(n398) );
  INVD0BWP12T30P140 U383 ( .I(n398), .ZN(n311) );
  ND2D0BWP12T30P140 U384 ( .A1(n310), .A2(n311), .ZN(n309) );
  NR2D0BWP12T30P140 U385 ( .A1(n309), .A2(clocks_per_baud[22]), .ZN(n308) );
  INVD0BWP12T30P140 U386 ( .I(n308), .ZN(n306) );
  NR2D0BWP12T30P140 U387 ( .A1(clocks_per_baud[23]), .A2(n306), .ZN(n422) );
  ND4D0BWP12T30P140 U388 ( .A1(chg_counter[24]), .A2(chg_counter[25]), .A3(
        chg_counter[27]), .A4(chg_counter[26]), .ZN(n421) );
  AOI21D0BWP12T30P140 U389 ( .A1(clocks_per_baud[23]), .A2(n306), .B(n422), 
        .ZN(n419) );
  NR4D0BWP12T30P140 U390 ( .A1(chg_counter[24]), .A2(chg_counter[25]), .A3(
        chg_counter[27]), .A4(chg_counter[26]), .ZN(n307) );
  AOI21D0BWP12T30P140 U391 ( .A1(n307), .A2(n412), .B(n422), .ZN(n418) );
  AOI21D0BWP12T30P140 U392 ( .A1(clocks_per_baud[22]), .A2(n309), .B(n308), 
        .ZN(n411) );
  OAI21D0BWP12T30P140 U393 ( .A1(n311), .A2(n310), .B(n309), .ZN(n408) );
  NR2D0BWP12T30P140 U394 ( .A1(n426), .A2(n408), .ZN(n312) );
  MAOI222D0BWP12T30P140 U395 ( .A(chg_counter[21]), .B(n411), .C(n312), .ZN(
        n416) );
  AOI21D0BWP12T30P140 U396 ( .A1(clocks_per_baud[18]), .A2(n314), .B(n313), 
        .ZN(n393) );
  OAI21D0BWP12T30P140 U397 ( .A1(n319), .A2(n315), .B(n314), .ZN(n318) );
  NR2D0BWP12T30P140 U398 ( .A1(n316), .A2(n318), .ZN(n317) );
  MAOI222D0BWP12T30P140 U399 ( .A(chg_counter[17]), .B(n393), .C(n317), .ZN(
        n404) );
  INVD0BWP12T30P140 U400 ( .I(n318), .ZN(n396) );
  AO21D0BWP12T30P140 U401 ( .A1(clocks_per_baud[16]), .A2(n324), .B(n319), .Z(
        n392) );
  AOI21D0BWP12T30P140 U402 ( .A1(clocks_per_baud[14]), .A2(n320), .B(n326), 
        .ZN(n328) );
  OAI21D0BWP12T30P140 U403 ( .A1(n322), .A2(n321), .B(n320), .ZN(n386) );
  NR2D0BWP12T30P140 U404 ( .A1(n387), .A2(n386), .ZN(n323) );
  MAOI222D0BWP12T30P140 U405 ( .A(chg_counter[13]), .B(n328), .C(n323), .ZN(
        n327) );
  OAI21D0BWP12T30P140 U406 ( .A1(n326), .A2(n325), .B(n324), .ZN(n380) );
  MAOI222D0BWP12T30P140 U407 ( .A(n327), .B(n380), .C(n458), .ZN(n389) );
  NR2D0BWP12T30P140 U408 ( .A1(chg_counter[13]), .A2(n328), .ZN(n385) );
  OAI21D0BWP12T30P140 U409 ( .A1(n331), .A2(n330), .B(n329), .ZN(n374) );
  AOI21D0BWP12T30P140 U410 ( .A1(clocks_per_baud[11]), .A2(n332), .B(n331), 
        .ZN(n376) );
  ND2D0BWP12T30P140 U411 ( .A1(chg_counter[10]), .A2(n376), .ZN(n333) );
  MAOI222D0BWP12T30P140 U412 ( .A(n375), .B(n374), .C(n333), .ZN(n383) );
  AOI21D0BWP12T30P140 U413 ( .A1(clocks_per_baud[10]), .A2(n335), .B(n334), 
        .ZN(n370) );
  OAI21D0BWP12T30P140 U414 ( .A1(n337), .A2(n336), .B(n335), .ZN(n340) );
  NR2D0BWP12T30P140 U415 ( .A1(n338), .A2(n340), .ZN(n339) );
  MAOI222D0BWP12T30P140 U416 ( .A(chg_counter[9]), .B(n370), .C(n339), .ZN(
        n379) );
  INVD0BWP12T30P140 U417 ( .I(n340), .ZN(n373) );
  AOI21D0BWP12T30P140 U418 ( .A1(clocks_per_baud[7]), .A2(n357), .B(n367), 
        .ZN(n364) );
  AOI21D0BWP12T30P140 U419 ( .A1(clocks_per_baud[5]), .A2(n349), .B(n359), 
        .ZN(n356) );
  ND2D0BWP12T30P140 U420 ( .A1(n341), .A2(n342), .ZN(n343) );
  AOI21D0BWP12T30P140 U421 ( .A1(clocks_per_baud[3]), .A2(n343), .B(n351), 
        .ZN(n348) );
  AOI21D0BWP12T30P140 U422 ( .A1(chg_counter[0]), .A2(n342), .B(chg_counter[1]), .ZN(n346) );
  INVD0BWP12T30P140 U423 ( .I(n343), .ZN(n345) );
  AOI22D0BWP12T30P140 U424 ( .A1(clocks_per_baud[2]), .A2(n346), .B1(n345), 
        .B2(n344), .ZN(n347) );
  MAOI222D0BWP12T30P140 U425 ( .A(chg_counter[2]), .B(n348), .C(n347), .ZN(
        n354) );
  INVD0BWP12T30P140 U426 ( .I(chg_counter[3]), .ZN(n353) );
  OAI21D0BWP12T30P140 U427 ( .A1(n351), .A2(n350), .B(n349), .ZN(n352) );
  MAOI222D0BWP12T30P140 U428 ( .A(n354), .B(n353), .C(n352), .ZN(n355) );
  MAOI222D0BWP12T30P140 U429 ( .A(chg_counter[4]), .B(n356), .C(n355), .ZN(
        n362) );
  OAI21D0BWP12T30P140 U430 ( .A1(n359), .A2(n358), .B(n357), .ZN(n360) );
  MAOI222D0BWP12T30P140 U431 ( .A(n362), .B(n361), .C(n360), .ZN(n363) );
  MAOI222D0BWP12T30P140 U432 ( .A(chg_counter[6]), .B(n364), .C(n363), .ZN(
        n369) );
  OAI21D0BWP12T30P140 U433 ( .A1(n367), .A2(n366), .B(n365), .ZN(n368) );
  MAOI222D0BWP12T30P140 U434 ( .A(n369), .B(n432), .C(n368), .ZN(n372) );
  OR2D0BWP12T30P140 U435 ( .A1(n370), .A2(chg_counter[9]), .Z(n371) );
  OAI211D0BWP12T30P140 U436 ( .A1(chg_counter[8]), .A2(n373), .B(n372), .C(
        n371), .ZN(n378) );
  MOAI22D0BWP12T30P140 U437 ( .A1(chg_counter[10]), .A2(n376), .B1(n375), .B2(
        n374), .ZN(n377) );
  AOI21D0BWP12T30P140 U438 ( .A1(n379), .A2(n378), .B(n377), .ZN(n382) );
  ND2D0BWP12T30P140 U439 ( .A1(n458), .A2(n380), .ZN(n381) );
  OAI21D0BWP12T30P140 U440 ( .A1(n383), .A2(n382), .B(n381), .ZN(n384) );
  AOI211D0BWP12T30P140 U441 ( .A1(n387), .A2(n386), .B(n385), .C(n384), .ZN(
        n388) );
  NR2D0BWP12T30P140 U442 ( .A1(n389), .A2(n388), .ZN(n390) );
  MAOI222D0BWP12T30P140 U443 ( .A(n392), .B(n391), .C(n390), .ZN(n395) );
  OR2D0BWP12T30P140 U444 ( .A1(n393), .A2(chg_counter[17]), .Z(n394) );
  OAI211D0BWP12T30P140 U445 ( .A1(chg_counter[16]), .A2(n396), .B(n395), .C(
        n394), .ZN(n403) );
  AOI21D0BWP12T30P140 U446 ( .A1(clocks_per_baud[19]), .A2(n397), .B(n400), 
        .ZN(n405) );
  OAI21D0BWP12T30P140 U447 ( .A1(n400), .A2(n399), .B(n398), .ZN(n406) );
  ND2D0BWP12T30P140 U448 ( .A1(n425), .A2(n406), .ZN(n401) );
  OAI21D0BWP12T30P140 U449 ( .A1(chg_counter[18]), .A2(n405), .B(n401), .ZN(
        n402) );
  AOI21D0BWP12T30P140 U450 ( .A1(n404), .A2(n403), .B(n402), .ZN(n410) );
  ND2D0BWP12T30P140 U451 ( .A1(chg_counter[18]), .A2(n405), .ZN(n407) );
  MAOI222D0BWP12T30P140 U452 ( .A(n407), .B(n425), .C(n406), .ZN(n409) );
  MOAI22D0BWP12T30P140 U453 ( .A1(n410), .A2(n409), .B1(n426), .B2(n408), .ZN(
        n415) );
  NR2D0BWP12T30P140 U454 ( .A1(chg_counter[21]), .A2(n411), .ZN(n414) );
  MOAI22D0BWP12T30P140 U455 ( .A1(chg_counter[22]), .A2(n419), .B1(n412), .B2(
        n422), .ZN(n413) );
  AOI211D0BWP12T30P140 U456 ( .A1(n416), .A2(n415), .B(n414), .C(n413), .ZN(
        n417) );
  AOI211D0BWP12T30P140 U457 ( .A1(n419), .A2(chg_counter[22]), .B(n418), .C(
        n417), .ZN(n420) );
  AOI211D0BWP12T30P140 U458 ( .A1(n422), .A2(n421), .B(o_ck_uart), .C(n420), 
        .ZN(N96) );
  OAI31D0BWP12T30P140 U459 ( .A1(n425), .A2(n424), .A3(n423), .B(n454), .ZN(
        n427) );
  OAI32D0BWP12T30P140 U460 ( .A1(chg_counter[20]), .A2(n429), .A3(n428), .B1(
        n427), .B2(n426), .ZN(n170) );
  NR2D0BWP12T30P140 U461 ( .A1(n449), .A2(n430), .ZN(N94) );
  OAI21D0BWP12T30P140 U462 ( .A1(n456), .A2(n434), .B(n431), .ZN(n433) );
  OAI32D0BWP12T30P140 U463 ( .A1(chg_counter[7]), .A2(n461), .A3(n434), .B1(
        n433), .B2(n432), .ZN(n183) );
  AOI22D0BWP12T30P140 U464 ( .A1(n445), .A2(n436), .B1(n435), .B2(n442), .ZN(
        n114) );
  AOI22D0BWP12T30P140 U465 ( .A1(n445), .A2(n438), .B1(n437), .B2(n442), .ZN(
        n112) );
  OAI31D0BWP12T30P140 U466 ( .A1(zero_baud_counter), .A2(n441), .A3(n440), .B(
        n439), .ZN(n147) );
  AOI22D0BWP12T30P140 U467 ( .A1(n445), .A2(n444), .B1(n443), .B2(n442), .ZN(
        n110) );
  ND2D0BWP12T30P140 U468 ( .A1(zero_baud_counter), .A2(n446), .ZN(n450) );
  ND2D0BWP12T30P140 U469 ( .A1(n450), .A2(o_parity_err), .ZN(n453) );
  OAI21D0BWP12T30P140 U470 ( .A1(r_setup[25]), .A2(calc_parity), .B(
        r_setup[24]), .ZN(n447) );
  OAI31D0BWP12T30P140 U471 ( .A1(r_setup[25]), .A2(r_setup[24]), .A3(
        calc_parity), .B(n447), .ZN(n448) );
  MUX2ND0BWP12T30P140 U472 ( .I0(o_ck_uart), .I1(n449), .S(n448), .ZN(n451) );
  OAI22D0BWP12T30P140 U473 ( .A1(n453), .A2(n452), .B1(n451), .B2(n450), .ZN(
        n158) );
  OAI31D0BWP12T30P140 U474 ( .A1(n457), .A2(n456), .A3(n455), .B(n454), .ZN(
        n459) );
  OAI32D0BWP12T30P140 U475 ( .A1(chg_counter[14]), .A2(n461), .A3(n460), .B1(
        n459), .B2(n458), .ZN(n176) );
  CKBD0BWP12T30P140 U476 ( .I(i_clk), .Z(n525) );
  CKBD0BWP12T30P140 U477 ( .I(i_clk), .Z(n529) );
  CKBD0BWP12T30P140 U478 ( .I(i_clk), .Z(n527) );
  CKBD0BWP12T30P140 U479 ( .I(i_clk), .Z(n530) );
  CKBD0BWP12T30P140 U480 ( .I(i_clk), .Z(n528) );
  CKBD0BWP12T30P140 U481 ( .I(i_clk), .Z(n526) );
  CKBD0BWP12T30P140 U482 ( .I(n468), .Z(n509) );
  CKMUX2D0BWP12T30P140 U483 ( .I0(baud_counter[1]), .I1(clocks_per_baud[1]), 
        .S(n509), .Z(n475) );
  OR2D0BWP12T30P140 U484 ( .A1(n476), .A2(n475), .Z(n484) );
  CKMUX2D0BWP12T30P140 U485 ( .I0(baud_counter[2]), .I1(clocks_per_baud[2]), 
        .S(n468), .Z(n483) );
  OR2D0BWP12T30P140 U486 ( .A1(n484), .A2(n483), .Z(n494) );
  CKMUX2D0BWP12T30P140 U487 ( .I0(baud_counter[3]), .I1(clocks_per_baud[3]), 
        .S(n509), .Z(n493) );
  OR2D0BWP12T30P140 U488 ( .A1(n494), .A2(n493), .Z(n478) );
  CKMUX2D0BWP12T30P140 U489 ( .I0(baud_counter[4]), .I1(clocks_per_baud[4]), 
        .S(n468), .Z(n477) );
  OR2D0BWP12T30P140 U490 ( .A1(n478), .A2(n477), .Z(n486) );
  CKMUX2D0BWP12T30P140 U491 ( .I0(baud_counter[5]), .I1(clocks_per_baud[5]), 
        .S(n509), .Z(n485) );
  OR2D0BWP12T30P140 U492 ( .A1(n486), .A2(n485), .Z(n496) );
  CKMUX2D0BWP12T30P140 U493 ( .I0(baud_counter[6]), .I1(clocks_per_baud[6]), 
        .S(n468), .Z(n495) );
  OR2D0BWP12T30P140 U494 ( .A1(n496), .A2(n495), .Z(n480) );
  CKMUX2D0BWP12T30P140 U495 ( .I0(baud_counter[7]), .I1(clocks_per_baud[7]), 
        .S(n509), .Z(n479) );
  OR2D0BWP12T30P140 U496 ( .A1(n480), .A2(n479), .Z(n488) );
  CKMUX2D0BWP12T30P140 U497 ( .I0(baud_counter[8]), .I1(clocks_per_baud[8]), 
        .S(n468), .Z(n487) );
  OR2D0BWP12T30P140 U498 ( .A1(n488), .A2(n487), .Z(n498) );
  CKMUX2D0BWP12T30P140 U499 ( .I0(baud_counter[9]), .I1(clocks_per_baud[9]), 
        .S(n509), .Z(n497) );
  OR2D0BWP12T30P140 U500 ( .A1(n498), .A2(n497), .Z(n502) );
  CKMUX2D0BWP12T30P140 U501 ( .I0(baud_counter[10]), .I1(clocks_per_baud[10]), 
        .S(n468), .Z(n501) );
  OR2D0BWP12T30P140 U502 ( .A1(n502), .A2(n501), .Z(n504) );
  CKMUX2D0BWP12T30P140 U503 ( .I0(baud_counter[11]), .I1(clocks_per_baud[11]), 
        .S(n468), .Z(n503) );
  OR2D0BWP12T30P140 U504 ( .A1(n504), .A2(n503), .Z(n490) );
  CKMUX2D0BWP12T30P140 U505 ( .I0(baud_counter[12]), .I1(clocks_per_baud[12]), 
        .S(n509), .Z(n489) );
  OR2D0BWP12T30P140 U506 ( .A1(n490), .A2(n489), .Z(n500) );
  CKMUX2D0BWP12T30P140 U507 ( .I0(baud_counter[13]), .I1(clocks_per_baud[13]), 
        .S(n468), .Z(n499) );
  OR2D0BWP12T30P140 U508 ( .A1(n500), .A2(n499), .Z(n506) );
  CKMUX2D0BWP12T30P140 U509 ( .I0(baud_counter[14]), .I1(clocks_per_baud[14]), 
        .S(n509), .Z(n505) );
  OR2D0BWP12T30P140 U510 ( .A1(n506), .A2(n505), .Z(n482) );
  CKMUX2D0BWP12T30P140 U511 ( .I0(baud_counter[15]), .I1(clocks_per_baud[15]), 
        .S(n468), .Z(n481) );
  OR2D0BWP12T30P140 U512 ( .A1(n482), .A2(n481), .Z(n492) );
  CKMUX2D0BWP12T30P140 U513 ( .I0(baud_counter[16]), .I1(clocks_per_baud[16]), 
        .S(n509), .Z(n491) );
  OR2D0BWP12T30P140 U514 ( .A1(n492), .A2(n491), .Z(n463) );
  CKMUX2D0BWP12T30P140 U515 ( .I0(baud_counter[17]), .I1(clocks_per_baud[17]), 
        .S(n468), .Z(n462) );
  XNR2D0BWP12T30P140 U516 ( .A1(n463), .A2(n462), .ZN(N451) );
  OR2D0BWP12T30P140 U517 ( .A1(n463), .A2(n462), .Z(n465) );
  CKMUX2D0BWP12T30P140 U518 ( .I0(baud_counter[18]), .I1(clocks_per_baud[18]), 
        .S(n509), .Z(n464) );
  XNR2D0BWP12T30P140 U519 ( .A1(n465), .A2(n464), .ZN(N452) );
  OR2D0BWP12T30P140 U520 ( .A1(n465), .A2(n464), .Z(n467) );
  CKMUX2D0BWP12T30P140 U521 ( .I0(baud_counter[19]), .I1(clocks_per_baud[19]), 
        .S(n468), .Z(n466) );
  XNR2D0BWP12T30P140 U522 ( .A1(n467), .A2(n466), .ZN(N453) );
  OR2D0BWP12T30P140 U523 ( .A1(n467), .A2(n466), .Z(n513) );
  CKMUX2D0BWP12T30P140 U524 ( .I0(baud_counter[20]), .I1(clocks_per_baud[20]), 
        .S(n509), .Z(n512) );
  OR2D0BWP12T30P140 U525 ( .A1(n513), .A2(n512), .Z(n515) );
  CKMUX2D0BWP12T30P140 U526 ( .I0(baud_counter[21]), .I1(clocks_per_baud[21]), 
        .S(n468), .Z(n514) );
  OR2D0BWP12T30P140 U527 ( .A1(n515), .A2(n514), .Z(n517) );
  CKMUX2D0BWP12T30P140 U528 ( .I0(baud_counter[22]), .I1(clocks_per_baud[22]), 
        .S(n509), .Z(n516) );
  OR2D0BWP12T30P140 U529 ( .A1(n517), .A2(n516), .Z(n470) );
  CKMUX2D0BWP12T30P140 U530 ( .I0(baud_counter[23]), .I1(clocks_per_baud[23]), 
        .S(n468), .Z(n469) );
  XNR2D0BWP12T30P140 U531 ( .A1(n470), .A2(n469), .ZN(N457) );
  OR2D0BWP12T30P140 U532 ( .A1(n470), .A2(n469), .Z(n472) );
  INR2D1BWP12T30P140 U533 ( .A1(baud_counter[24]), .B1(n509), .ZN(n471) );
  XNR2D0BWP12T30P140 U534 ( .A1(n472), .A2(n471), .ZN(N458) );
  OR2D0BWP12T30P140 U535 ( .A1(n472), .A2(n471), .Z(n474) );
  INR2D1BWP12T30P140 U536 ( .A1(baud_counter[25]), .B1(n509), .ZN(n473) );
  XNR2D0BWP12T30P140 U537 ( .A1(n474), .A2(n473), .ZN(N459) );
  OR2D0BWP12T30P140 U538 ( .A1(n474), .A2(n473), .Z(n508) );
  INR2D1BWP12T30P140 U539 ( .A1(baud_counter[26]), .B1(n509), .ZN(n507) );
  XNR2D0BWP12T30P140 U540 ( .A1(n508), .A2(n507), .ZN(N460) );
  XNR2D0BWP12T30P140 U541 ( .A1(n476), .A2(n475), .ZN(N435) );
  XNR2D0BWP12T30P140 U542 ( .A1(n478), .A2(n477), .ZN(N438) );
  XNR2D0BWP12T30P140 U543 ( .A1(n480), .A2(n479), .ZN(N441) );
  XNR2D0BWP12T30P140 U544 ( .A1(n482), .A2(n481), .ZN(N449) );
  XNR2D0BWP12T30P140 U545 ( .A1(n484), .A2(n483), .ZN(N436) );
  XNR2D0BWP12T30P140 U546 ( .A1(n486), .A2(n485), .ZN(N439) );
  XNR2D0BWP12T30P140 U547 ( .A1(n488), .A2(n487), .ZN(N442) );
  XNR2D0BWP12T30P140 U548 ( .A1(n490), .A2(n489), .ZN(N446) );
  XNR2D0BWP12T30P140 U549 ( .A1(n492), .A2(n491), .ZN(N450) );
  XNR2D0BWP12T30P140 U550 ( .A1(n494), .A2(n493), .ZN(N437) );
  XNR2D0BWP12T30P140 U551 ( .A1(n496), .A2(n495), .ZN(N440) );
  XNR2D0BWP12T30P140 U552 ( .A1(n498), .A2(n497), .ZN(N443) );
  XNR2D0BWP12T30P140 U553 ( .A1(n500), .A2(n499), .ZN(N447) );
  XNR2D0BWP12T30P140 U554 ( .A1(n502), .A2(n501), .ZN(N444) );
  XNR2D0BWP12T30P140 U555 ( .A1(n504), .A2(n503), .ZN(N445) );
  XNR2D0BWP12T30P140 U556 ( .A1(n506), .A2(n505), .ZN(N448) );
  OR2D0BWP12T30P140 U557 ( .A1(n508), .A2(n507), .Z(n511) );
  INR2D1BWP12T30P140 U558 ( .A1(baud_counter[27]), .B1(n509), .ZN(n510) );
  XNR2D0BWP12T30P140 U559 ( .A1(n511), .A2(n510), .ZN(N461) );
  XNR2D0BWP12T30P140 U560 ( .A1(n513), .A2(n512), .ZN(N454) );
  XNR2D0BWP12T30P140 U561 ( .A1(n515), .A2(n514), .ZN(N455) );
  XNR2D0BWP12T30P140 U562 ( .A1(n517), .A2(n516), .ZN(N456) );
  AOI22D0BWP12T30P140 U563 ( .A1(n519), .A2(o_data[0]), .B1(data_reg[0]), .B2(
        n518), .ZN(n524) );
  AOI32D0BWP12T30P140 U564 ( .A1(n522), .A2(n521), .A3(data_reg[2]), .B1(
        data_bits[0]), .B2(n520), .ZN(n523) );
  ND2D0BWP12T30P140 U565 ( .A1(n524), .A2(n523), .ZN(n156) );
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
  DFQD2BWP12T30P140 fifo_next_reg_5_ ( .D(N131), .CP(n455), .Q(fifo_next[5])
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
  DFQD2BWP12T30P140 r_fill_reg_0_ ( .D(N216), .CP(n454), .Q(o_status[2]) );
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
  DFQD2BWP12T30P140 fifo_here_reg_0_ ( .D(N128), .CP(n455), .Q(fifo_here[0])
         );
  DFQD2BWP12T30P140 osrc_reg_0_ ( .D(N142), .CP(n454), .Q(osrc[0]) );
  DFQD2BWP12T30P140 r_fill_reg_2_ ( .D(N218), .CP(n454), .Q(o_status[4]) );
  DFQD2BWP12T30P140 r_fill_reg_1_ ( .D(N217), .CP(n454), .Q(o_status[3]) );
  DFQD2BWP12T30P140 osrc_reg_1_ ( .D(N143), .CP(n454), .Q(osrc[1]) );
  DFQD2BWP12T30P140 r_ovfl_reg ( .D(n433), .CP(n462), .Q(o_err) );
  DFQD2BWP12T30P140 fifo_reg_11__7_ ( .D(n395), .CP(n460), .Q(fifo[39]) );
  DFQD2BWP12T30P140 fifo_reg_5__7_ ( .D(n347), .CP(n460), .Q(fifo[87]) );
  DFQD2BWP12T30P140 fifo_reg_13__7_ ( .D(n411), .CP(n459), .Q(fifo[23]) );
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
  DFQD2BWP12T30P140 fifo_reg_11__6_ ( .D(n394), .CP(n460), .Q(fifo[38]) );
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
  DFQD2BWP12T30P140 fifo_reg_7__2_ ( .D(n358), .CP(n459), .Q(fifo[66]) );
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
  DFQD2BWP12T30P140 fifo_reg_15__3_ ( .D(n423), .CP(n457), .Q(fifo[3]) );
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
  DFQD2BWP12T30P140 fifo_reg_1__6_ ( .D(n314), .CP(n461), .Q(fifo[118]) );
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
  DFQD2BWP12T30P140 fifo_reg_8__7_ ( .D(n371), .CP(n461), .Q(fifo[63]) );
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
  DFQD2BWP12T30P140 fifo_reg_4__4_ ( .D(n336), .CP(n454), .Q(fifo[92]) );
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
  DFQD2BWP12T30P140 fifo_reg_7__6_ ( .D(n362), .CP(n454), .Q(fifo[70]) );
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
  DFQD2BWP12T30P140 fifo_reg_14__1_ ( .D(n413), .CP(n458), .Q(fifo[9]) );
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
  DFQD2BWP12T30P140 r_next_reg_0_ ( .D(n439), .CP(n457), .Q(w_last_plus_one[0]) );
  DFQD1BWP12T30P140 fifo_next_reg_4_ ( .D(N132), .CP(n455), .Q(fifo_next[4])
         );
  DFQD1BWP12T30P140 fifo_here_reg_5_ ( .D(N123), .CP(n456), .Q(fifo_here[5])
         );
  DFQD1BWP12T30P140 fifo_reg_15__7_ ( .D(n427), .CP(n457), .Q(fifo[7]) );
  DFQD1BWP12T30P140 fifo_reg_11__5_ ( .D(n393), .CP(n460), .Q(fifo[37]) );
  DFQD1BWP12T30P140 fifo_reg_12__7_ ( .D(n403), .CP(n459), .Q(fifo[31]) );
  DFQD1BWP12T30P140 fifo_reg_15__2_ ( .D(n422), .CP(n457), .Q(fifo[2]) );
  DFQD1BWP12T30P140 fifo_reg_1__5_ ( .D(n313), .CP(n461), .Q(fifo[117]) );
  DFQD1BWP12T30P140 fifo_reg_8__6_ ( .D(n370), .CP(n454), .Q(fifo[62]) );
  DFQD1BWP12T30P140 fifo_reg_4__3_ ( .D(n335), .CP(n456), .Q(fifo[91]) );
  DFQD1BWP12T30P140 fifo_reg_7__5_ ( .D(n361), .CP(n456), .Q(fifo[69]) );
  DFQD1BWP12T30P140 fifo_reg_14__0_ ( .D(n420), .CP(n458), .Q(fifo[8]) );
  CKBD0BWP12T30P140 U3 ( .I(o_status[5]), .Z(o_status[1]) );
  CKBD0BWP12T30P140 U4 ( .I(o_empty_n), .Z(o_status[0]) );
  NR3D0BWP12T30P140 U5 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[2]), 
        .A3(w_last_plus_one[1]), .ZN(n263) );
  INVD0BWP12T30P140 U6 ( .I(w_last_plus_one[2]), .ZN(n215) );
  NR3D0BWP12T30P140 U7 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[1]), 
        .A3(n215), .ZN(n262) );
  AOI22D0BWP12T30P140 U8 ( .A1(fifo[121]), .A2(n263), .B1(fifo[89]), .B2(n262), 
        .ZN(n4) );
  INVD0BWP12T30P140 U9 ( .I(w_last_plus_one[1]), .ZN(n224) );
  NR3D0BWP12T30P140 U10 ( .A1(w_last_plus_one[3]), .A2(w_last_plus_one[2]), 
        .A3(n224), .ZN(n265) );
  NR3D0BWP12T30P140 U11 ( .A1(w_last_plus_one[3]), .A2(n215), .A3(n224), .ZN(
        n264) );
  AOI22D0BWP12T30P140 U12 ( .A1(fifo[105]), .A2(n265), .B1(fifo[73]), .B2(n264), .ZN(n3) );
  INVD0BWP12T30P140 U13 ( .I(w_last_plus_one[3]), .ZN(n47) );
  NR3D0BWP12T30P140 U14 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(n47), .ZN(n267) );
  NR3D0BWP12T30P140 U15 ( .A1(w_last_plus_one[1]), .A2(n215), .A3(n47), .ZN(
        n266) );
  AOI22D0BWP12T30P140 U16 ( .A1(fifo[57]), .A2(n267), .B1(fifo[25]), .B2(n266), 
        .ZN(n2) );
  NR3D0BWP12T30P140 U17 ( .A1(w_last_plus_one[2]), .A2(n47), .A3(n224), .ZN(
        n269) );
  NR3D0BWP12T30P140 U18 ( .A1(n47), .A2(n215), .A3(n224), .ZN(n268) );
  AOI22D0BWP12T30P140 U19 ( .A1(fifo[41]), .A2(n269), .B1(fifo[9]), .B2(n268), 
        .ZN(n1) );
  ND4D0BWP12T30P140 U20 ( .A1(n4), .A2(n3), .A3(n2), .A4(n1), .ZN(n10) );
  AOI22D0BWP12T30P140 U21 ( .A1(fifo[113]), .A2(n263), .B1(fifo[81]), .B2(n262), .ZN(n8) );
  AOI22D0BWP12T30P140 U22 ( .A1(fifo[97]), .A2(n265), .B1(fifo[65]), .B2(n264), 
        .ZN(n7) );
  AOI22D0BWP12T30P140 U23 ( .A1(fifo[49]), .A2(n267), .B1(fifo[17]), .B2(n266), 
        .ZN(n6) );
  AOI22D0BWP12T30P140 U24 ( .A1(fifo[33]), .A2(n269), .B1(fifo[1]), .B2(n268), 
        .ZN(n5) );
  ND4D0BWP12T30P140 U25 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n9) );
  CKMUX2D0BWP12T30P140 U26 ( .I0(n10), .I1(n9), .S(w_last_plus_one[0]), .Z(
        N135) );
  INVD0BWP12T30P140 U27 ( .I(r_first[1]), .ZN(n223) );
  ND2D0BWP12T30P140 U28 ( .A1(n223), .A2(r_first[0]), .ZN(n244) );
  INVD0BWP12T30P140 U29 ( .I(r_first[3]), .ZN(n214) );
  ND3D0BWP12T30P140 U30 ( .A1(n214), .A2(r_first[2]), .A3(i_wr), .ZN(n195) );
  NR2D0BWP12T30P140 U31 ( .A1(n244), .A2(n195), .ZN(n448) );
  INVD0BWP12T30P140 U32 ( .I(i_data[2]), .ZN(n443) );
  MAOI22D0BWP12T30P140 U33 ( .A1(n448), .A2(n443), .B1(fifo[82]), .B2(n448), 
        .ZN(n342) );
  INVD0BWP12T30P140 U34 ( .I(i_data[1]), .ZN(n444) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n448), .A2(n444), .B1(fifo[81]), .B2(n448), 
        .ZN(n341) );
  INVD0BWP12T30P140 U36 ( .I(i_data[0]), .ZN(n294) );
  MAOI22D0BWP12T30P140 U37 ( .A1(n448), .A2(n294), .B1(fifo[80]), .B2(n448), 
        .ZN(n348) );
  INVD0BWP12T30P140 U38 ( .I(r_first[0]), .ZN(n194) );
  ND2D0BWP12T30P140 U39 ( .A1(n194), .A2(r_first[1]), .ZN(n290) );
  NR2D0BWP12T30P140 U40 ( .A1(n290), .A2(n195), .ZN(n254) );
  INVD0BWP12T30P140 U41 ( .I(i_data[7]), .ZN(n297) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n254), .A2(n297), .B1(fifo[79]), .B2(n254), 
        .ZN(n355) );
  INVD0BWP12T30P140 U43 ( .I(i_data[6]), .ZN(n441) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n254), .A2(n441), .B1(fifo[78]), .B2(n254), 
        .ZN(n354) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n254), .A2(n443), .B1(fifo[74]), .B2(n254), 
        .ZN(n350) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n254), .A2(n294), .B1(fifo[72]), .B2(n254), 
        .ZN(n356) );
  ND2D0BWP12T30P140 U47 ( .A1(r_first[1]), .A2(r_first[0]), .ZN(n243) );
  NR2D0BWP12T30P140 U48 ( .A1(n243), .A2(n195), .ZN(n255) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n255), .A2(n297), .B1(fifo[71]), .B2(n255), 
        .ZN(n363) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n255), .A2(n441), .B1(fifo[70]), .B2(n255), 
        .ZN(n362) );
  INVD0BWP12T30P140 U51 ( .I(i_data[5]), .ZN(n446) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n255), .A2(n446), .B1(fifo[69]), .B2(n255), 
        .ZN(n361) );
  INVD0BWP12T30P140 U53 ( .I(i_data[4]), .ZN(n447) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n255), .A2(n447), .B1(fifo[68]), .B2(n255), 
        .ZN(n360) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n255), .A2(n444), .B1(fifo[65]), .B2(n255), 
        .ZN(n357) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n255), .A2(n294), .B1(fifo[64]), .B2(n255), 
        .ZN(n364) );
  ND3D0BWP12T30P140 U57 ( .A1(r_first[2]), .A2(i_wr), .A3(r_first[3]), .ZN(
        n256) );
  NR2D0BWP12T30P140 U58 ( .A1(n244), .A2(n256), .ZN(n276) );
  INVD0BWP12T30P140 U59 ( .I(i_data[3]), .ZN(n442) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n276), .A2(n442), .B1(fifo[19]), .B2(n276), 
        .ZN(n407) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n276), .A2(n443), .B1(fifo[18]), .B2(n276), 
        .ZN(n406) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n276), .A2(n444), .B1(fifo[17]), .B2(n276), 
        .ZN(n405) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n276), .A2(n294), .B1(fifo[16]), .B2(n276), 
        .ZN(n412) );
  NR2D0BWP12T30P140 U64 ( .A1(n290), .A2(n256), .ZN(n11) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n11), .A2(n297), .B1(fifo[15]), .B2(n11), 
        .ZN(n419) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n11), .A2(n441), .B1(fifo[14]), .B2(n11), 
        .ZN(n418) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n11), .A2(n446), .B1(fifo[13]), .B2(n11), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n11), .A2(n447), .B1(fifo[12]), .B2(n11), 
        .ZN(n416) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n11), .A2(n442), .B1(fifo[11]), .B2(n11), 
        .ZN(n415) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n11), .A2(n443), .B1(fifo[10]), .B2(n11), 
        .ZN(n414) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n11), .A2(n444), .B1(fifo[9]), .B2(n11), .ZN(
        n413) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n11), .A2(n294), .B1(fifo[8]), .B2(n11), .ZN(
        n420) );
  INVD0BWP12T30P140 U73 ( .I(i_rd), .ZN(n240) );
  NR2D0BWP12T30P140 U74 ( .A1(will_underflow), .A2(n240), .ZN(N142) );
  INVD0BWP12T30P140 U75 ( .I(i_rst), .ZN(n252) );
  INVD0BWP12T30P140 U76 ( .I(N142), .ZN(n251) );
  ND2D0BWP12T30P140 U77 ( .A1(n252), .A2(n251), .ZN(n284) );
  INVD0BWP12T30P140 U78 ( .I(i_wr), .ZN(n285) );
  NR2D0BWP12T30P140 U79 ( .A1(n285), .A2(will_overflow), .ZN(n34) );
  IND2D1BWP12T30P140 U80 ( .A1(n284), .B1(n34), .ZN(n233) );
  INVD0BWP12T30P140 U81 ( .I(n233), .ZN(n219) );
  INVD0BWP12T30P140 U82 ( .I(r_first[2]), .ZN(n242) );
  INVD0BWP12T30P140 U83 ( .I(r_last[2]), .ZN(n52) );
  AOI22D0BWP12T30P140 U84 ( .A1(r_last[2]), .A2(r_first[2]), .B1(n242), .B2(
        n52), .ZN(n250) );
  INVD0BWP12T30P140 U85 ( .I(n250), .ZN(n12) );
  INVD0BWP12T30P140 U86 ( .I(r_last[1]), .ZN(n53) );
  INVD0BWP12T30P140 U87 ( .I(r_last[0]), .ZN(n57) );
  NR2D0BWP12T30P140 U88 ( .A1(r_first[0]), .A2(n57), .ZN(n14) );
  INVD0BWP12T30P140 U89 ( .I(n14), .ZN(n13) );
  MAOI222D0BWP12T30P140 U90 ( .A(n53), .B(n13), .C(r_first[1]), .ZN(n15) );
  MUX2ND0BWP12T30P140 U91 ( .I0(n250), .I1(n12), .S(n15), .ZN(n222) );
  ND2D0BWP12T30P140 U92 ( .A1(r_last[1]), .A2(n223), .ZN(n32) );
  OAI21D0BWP12T30P140 U93 ( .A1(r_last[1]), .A2(n223), .B(n32), .ZN(n247) );
  MUX2ND0BWP12T30P140 U94 ( .I0(n13), .I1(n14), .S(n247), .ZN(n230) );
  AOI21D0BWP12T30P140 U95 ( .A1(r_first[0]), .A2(n57), .B(n14), .ZN(n68) );
  INR2D1BWP12T30P140 U96 ( .A1(n230), .B1(n68), .ZN(n235) );
  IND2D1BWP12T30P140 U97 ( .A1(n222), .B1(n235), .ZN(n17) );
  AOI221D0BWP12T30P140 U98 ( .A1(n34), .A2(n251), .B1(n285), .B2(N142), .C(
        i_rst), .ZN(n231) );
  AOI21D0BWP12T30P140 U99 ( .A1(n219), .A2(n17), .B(n231), .ZN(n221) );
  INVD0BWP12T30P140 U100 ( .I(r_last[3]), .ZN(n83) );
  AOI22D0BWP12T30P140 U101 ( .A1(r_last[3]), .A2(n214), .B1(r_first[3]), .B2(
        n83), .ZN(n29) );
  INVD0BWP12T30P140 U102 ( .I(n29), .ZN(n249) );
  MAOI222D0BWP12T30P140 U103 ( .A(r_last[2]), .B(n242), .C(n15), .ZN(n16) );
  MUX2ND0BWP12T30P140 U104 ( .I0(n29), .I1(n249), .S(n16), .ZN(n23) );
  NR2D0BWP12T30P140 U105 ( .A1(n17), .A2(n233), .ZN(n21) );
  AOI22D0BWP12T30P140 U106 ( .A1(r_first[3]), .A2(n47), .B1(w_last_plus_one[3]), .B2(n214), .ZN(n239) );
  ND2D0BWP12T30P140 U107 ( .A1(w_last_plus_one[0]), .A2(n194), .ZN(n227) );
  MAOI222D0BWP12T30P140 U108 ( .A(r_first[1]), .B(n224), .C(n227), .ZN(n217)
         );
  MAOI222D0BWP12T30P140 U109 ( .A(w_last_plus_one[2]), .B(n242), .C(n217), 
        .ZN(n19) );
  ND2D0BWP12T30P140 U110 ( .A1(N142), .A2(n252), .ZN(n55) );
  NR2D0BWP12T30P140 U111 ( .A1(i_wr), .A2(n55), .ZN(n225) );
  OAI21D0BWP12T30P140 U112 ( .A1(n239), .A2(n19), .B(n225), .ZN(n18) );
  AOI21D0BWP12T30P140 U113 ( .A1(n239), .A2(n19), .B(n18), .ZN(n20) );
  AOI21D0BWP12T30P140 U114 ( .A1(n23), .A2(n21), .B(n20), .ZN(n22) );
  OAI21D0BWP12T30P140 U115 ( .A1(n221), .A2(n23), .B(n22), .ZN(N219) );
  ND2D0BWP12T30P140 U116 ( .A1(r_first[2]), .A2(r_first[1]), .ZN(n28) );
  NR2D0BWP12T30P140 U117 ( .A1(n194), .A2(n28), .ZN(n24) );
  AOI21D0BWP12T30P140 U118 ( .A1(n242), .A2(n243), .B(n24), .ZN(n45) );
  MUX2ND0BWP12T30P140 U119 ( .I0(n214), .I1(r_first[3]), .S(n24), .ZN(n42) );
  AN2D0BWP12T30P140 U120 ( .A1(n244), .A2(n290), .Z(n50) );
  OAI22D0BWP12T30P140 U121 ( .A1(n83), .A2(n42), .B1(r_last[1]), .B2(n50), 
        .ZN(n25) );
  AOI221D0BWP12T30P140 U122 ( .A1(n83), .A2(n42), .B1(n50), .B2(r_last[1]), 
        .C(n25), .ZN(n26) );
  OAI21D0BWP12T30P140 U123 ( .A1(n52), .A2(n45), .B(n26), .ZN(n27) );
  AOI211D0BWP12T30P140 U124 ( .A1(n52), .A2(n45), .B(n68), .C(n27), .ZN(n38)
         );
  INVD0BWP12T30P140 U125 ( .I(n28), .ZN(n30) );
  AOI32D0BWP12T30P140 U126 ( .A1(n249), .A2(n30), .A3(n52), .B1(n29), .B2(n28), 
        .ZN(n36) );
  NR2D0BWP12T30P140 U127 ( .A1(r_last[2]), .A2(r_first[2]), .ZN(n31) );
  OAI22D0BWP12T30P140 U128 ( .A1(n250), .A2(n32), .B1(n31), .B2(n223), .ZN(n33) );
  OAI211D0BWP12T30P140 U129 ( .A1(n53), .A2(n223), .B(n68), .C(n33), .ZN(n35)
         );
  OAI21D0BWP12T30P140 U130 ( .A1(n36), .A2(n35), .B(n34), .ZN(n37) );
  OAI211D0BWP12T30P140 U131 ( .A1(i_wr), .A2(n38), .B(n240), .C(n37), .ZN(n40)
         );
  INVD0BWP12T30P140 U132 ( .I(will_overflow), .ZN(n39) );
  NR2D0BWP12T30P140 U133 ( .A1(i_wr), .A2(n240), .ZN(n279) );
  AOI211D0BWP12T30P140 U134 ( .A1(n40), .A2(n39), .B(n279), .C(i_rst), .ZN(
        n434) );
  AOI21D0BWP12T30P140 U135 ( .A1(n240), .A2(will_overflow), .B(n285), .ZN(n41)
         );
  OR2D0BWP12T30P140 U136 ( .A1(n41), .A2(i_rst), .Z(n48) );
  ND2D0BWP12T30P140 U137 ( .A1(n252), .A2(n41), .ZN(n49) );
  AOI22D0BWP12T30P140 U138 ( .A1(r_first[0]), .A2(n48), .B1(n49), .B2(n194), 
        .ZN(n431) );
  INVD0BWP12T30P140 U139 ( .I(n42), .ZN(n43) );
  OAI22D0BWP12T30P140 U140 ( .A1(n214), .A2(n48), .B1(n43), .B2(n49), .ZN(n432) );
  OAI22D0BWP12T30P140 U141 ( .A1(r_last[1]), .A2(n55), .B1(n224), .B2(n284), 
        .ZN(n300) );
  ND2D0BWP12T30P140 U142 ( .A1(r_last[2]), .A2(r_last[1]), .ZN(n82) );
  NR2D0BWP12T30P140 U143 ( .A1(r_last[3]), .A2(n82), .ZN(n202) );
  AOI21D0BWP12T30P140 U144 ( .A1(r_last[3]), .A2(n82), .B(n202), .ZN(n44) );
  OAI22D0BWP12T30P140 U145 ( .A1(n44), .A2(n55), .B1(n284), .B2(n47), .ZN(n298) );
  INVD0BWP12T30P140 U146 ( .I(n45), .ZN(n46) );
  OAI22D0BWP12T30P140 U147 ( .A1(n242), .A2(n48), .B1(n46), .B2(n49), .ZN(n429) );
  OAI22D0BWP12T30P140 U148 ( .A1(n284), .A2(n83), .B1(n55), .B2(n47), .ZN(n435) );
  OAI22D0BWP12T30P140 U149 ( .A1(n50), .A2(n49), .B1(n223), .B2(n48), .ZN(n430) );
  ND2D0BWP12T30P140 U150 ( .A1(r_last[2]), .A2(n53), .ZN(n80) );
  ND2D0BWP12T30P140 U151 ( .A1(r_last[1]), .A2(n52), .ZN(n81) );
  AO21D0BWP12T30P140 U152 ( .A1(n80), .A2(n81), .B(n55), .Z(n51) );
  OAI21D0BWP12T30P140 U153 ( .A1(n215), .A2(n284), .B(n51), .ZN(n299) );
  OAI22D0BWP12T30P140 U154 ( .A1(n52), .A2(n284), .B1(n55), .B2(n215), .ZN(
        n436) );
  OAI22D0BWP12T30P140 U155 ( .A1(n53), .A2(n284), .B1(n55), .B2(n224), .ZN(
        n438) );
  INVD0BWP12T30P140 U156 ( .I(w_last_plus_one[0]), .ZN(n54) );
  OAI22D0BWP12T30P140 U157 ( .A1(n57), .A2(n284), .B1(n55), .B2(n54), .ZN(n437) );
  AOI21D0BWP12T30P140 U158 ( .A1(w_last_plus_one[0]), .A2(n251), .B(i_rst), 
        .ZN(n56) );
  OAI21D0BWP12T30P140 U159 ( .A1(n57), .A2(n251), .B(n56), .ZN(n439) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n448), .A2(n442), .B1(fifo[83]), .B2(n448), 
        .ZN(n343) );
  AOI22D0BWP12T30P140 U161 ( .A1(fifo[123]), .A2(n263), .B1(fifo[91]), .B2(
        n262), .ZN(n61) );
  AOI22D0BWP12T30P140 U162 ( .A1(fifo[107]), .A2(n265), .B1(fifo[75]), .B2(
        n264), .ZN(n60) );
  AOI22D0BWP12T30P140 U163 ( .A1(fifo[59]), .A2(n267), .B1(fifo[27]), .B2(n266), .ZN(n59) );
  AOI22D0BWP12T30P140 U164 ( .A1(fifo[43]), .A2(n269), .B1(fifo[11]), .B2(n268), .ZN(n58) );
  ND4D0BWP12T30P140 U165 ( .A1(n61), .A2(n60), .A3(n59), .A4(n58), .ZN(n67) );
  AOI22D0BWP12T30P140 U166 ( .A1(fifo[115]), .A2(n263), .B1(fifo[83]), .B2(
        n262), .ZN(n65) );
  AOI22D0BWP12T30P140 U167 ( .A1(fifo[99]), .A2(n265), .B1(fifo[67]), .B2(n264), .ZN(n64) );
  AOI22D0BWP12T30P140 U168 ( .A1(fifo[51]), .A2(n267), .B1(fifo[19]), .B2(n266), .ZN(n63) );
  AOI22D0BWP12T30P140 U169 ( .A1(fifo[35]), .A2(n269), .B1(fifo[3]), .B2(n268), 
        .ZN(n62) );
  ND4D0BWP12T30P140 U170 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .ZN(n66) );
  CKMUX2D0BWP12T30P140 U171 ( .I0(n67), .I1(n66), .S(w_last_plus_one[0]), .Z(
        N133) );
  INVD0BWP12T30P140 U172 ( .I(n68), .ZN(n248) );
  OAI21D0BWP12T30P140 U173 ( .A1(w_last_plus_one[0]), .A2(n194), .B(n227), 
        .ZN(n237) );
  AOI22D0BWP12T30P140 U174 ( .A1(n225), .A2(n237), .B1(n231), .B2(n248), .ZN(
        n69) );
  OAI21D0BWP12T30P140 U175 ( .A1(n248), .A2(n233), .B(n69), .ZN(N216) );
  AOI22D0BWP12T30P140 U176 ( .A1(fifo[124]), .A2(n263), .B1(fifo[92]), .B2(
        n262), .ZN(n73) );
  AOI22D0BWP12T30P140 U177 ( .A1(fifo[108]), .A2(n265), .B1(fifo[76]), .B2(
        n264), .ZN(n72) );
  AOI22D0BWP12T30P140 U178 ( .A1(fifo[60]), .A2(n267), .B1(fifo[28]), .B2(n266), .ZN(n71) );
  AOI22D0BWP12T30P140 U179 ( .A1(fifo[44]), .A2(n269), .B1(fifo[12]), .B2(n268), .ZN(n70) );
  ND4D0BWP12T30P140 U180 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .ZN(n79) );
  AOI22D0BWP12T30P140 U181 ( .A1(fifo[116]), .A2(n263), .B1(fifo[84]), .B2(
        n262), .ZN(n77) );
  AOI22D0BWP12T30P140 U182 ( .A1(fifo[100]), .A2(n265), .B1(fifo[68]), .B2(
        n264), .ZN(n76) );
  AOI22D0BWP12T30P140 U183 ( .A1(fifo[52]), .A2(n267), .B1(fifo[20]), .B2(n266), .ZN(n75) );
  AOI22D0BWP12T30P140 U184 ( .A1(fifo[36]), .A2(n269), .B1(fifo[4]), .B2(n268), 
        .ZN(n74) );
  ND4D0BWP12T30P140 U185 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .ZN(n78) );
  CKMUX2D0BWP12T30P140 U186 ( .I0(n79), .I1(n78), .S(w_last_plus_one[0]), .Z(
        N132) );
  NR3D0BWP12T30P140 U187 ( .A1(r_last[2]), .A2(r_last[1]), .A3(r_last[3]), 
        .ZN(n201) );
  NR2D0BWP12T30P140 U188 ( .A1(r_last[3]), .A2(n80), .ZN(n200) );
  AOI22D0BWP12T30P140 U189 ( .A1(n201), .A2(fifo[127]), .B1(n200), .B2(
        fifo[95]), .ZN(n87) );
  NR2D0BWP12T30P140 U190 ( .A1(r_last[3]), .A2(n81), .ZN(n203) );
  AOI22D0BWP12T30P140 U191 ( .A1(n203), .A2(fifo[111]), .B1(n202), .B2(
        fifo[79]), .ZN(n86) );
  NR3D0BWP12T30P140 U192 ( .A1(r_last[2]), .A2(r_last[1]), .A3(n83), .ZN(n205)
         );
  NR2D0BWP12T30P140 U193 ( .A1(n83), .A2(n80), .ZN(n204) );
  AOI22D0BWP12T30P140 U194 ( .A1(n205), .A2(fifo[63]), .B1(n204), .B2(fifo[31]), .ZN(n85) );
  NR2D0BWP12T30P140 U195 ( .A1(n83), .A2(n81), .ZN(n207) );
  NR2D0BWP12T30P140 U196 ( .A1(n83), .A2(n82), .ZN(n206) );
  AOI22D0BWP12T30P140 U197 ( .A1(n207), .A2(fifo[47]), .B1(n206), .B2(fifo[15]), .ZN(n84) );
  ND4D0BWP12T30P140 U198 ( .A1(n87), .A2(n86), .A3(n85), .A4(n84), .ZN(n93) );
  AOI22D0BWP12T30P140 U199 ( .A1(fifo[119]), .A2(n201), .B1(fifo[87]), .B2(
        n200), .ZN(n91) );
  AOI22D0BWP12T30P140 U200 ( .A1(fifo[103]), .A2(n203), .B1(n202), .B2(
        fifo[71]), .ZN(n90) );
  AOI22D0BWP12T30P140 U201 ( .A1(fifo[55]), .A2(n205), .B1(fifo[23]), .B2(n204), .ZN(n89) );
  AOI22D0BWP12T30P140 U202 ( .A1(fifo[39]), .A2(n207), .B1(fifo[7]), .B2(n206), 
        .ZN(n88) );
  ND4D0BWP12T30P140 U203 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .ZN(n92) );
  CKMUX2D0BWP12T30P140 U204 ( .I0(n93), .I1(n92), .S(r_last[0]), .Z(N121) );
  AOI22D0BWP12T30P140 U205 ( .A1(n201), .A2(fifo[126]), .B1(n200), .B2(
        fifo[94]), .ZN(n97) );
  AOI22D0BWP12T30P140 U206 ( .A1(n203), .A2(fifo[110]), .B1(n202), .B2(
        fifo[78]), .ZN(n96) );
  AOI22D0BWP12T30P140 U207 ( .A1(n205), .A2(fifo[62]), .B1(n204), .B2(fifo[30]), .ZN(n95) );
  AOI22D0BWP12T30P140 U208 ( .A1(n207), .A2(fifo[46]), .B1(n206), .B2(fifo[14]), .ZN(n94) );
  ND4D0BWP12T30P140 U209 ( .A1(n97), .A2(n96), .A3(n95), .A4(n94), .ZN(n103)
         );
  AOI22D0BWP12T30P140 U210 ( .A1(n201), .A2(fifo[118]), .B1(n200), .B2(
        fifo[86]), .ZN(n101) );
  AOI22D0BWP12T30P140 U211 ( .A1(n203), .A2(fifo[102]), .B1(n202), .B2(
        fifo[70]), .ZN(n100) );
  AOI22D0BWP12T30P140 U212 ( .A1(n205), .A2(fifo[54]), .B1(n204), .B2(fifo[22]), .ZN(n99) );
  AOI22D0BWP12T30P140 U213 ( .A1(n207), .A2(fifo[38]), .B1(n206), .B2(fifo[6]), 
        .ZN(n98) );
  ND4D0BWP12T30P140 U214 ( .A1(n101), .A2(n100), .A3(n99), .A4(n98), .ZN(n102)
         );
  CKMUX2D0BWP12T30P140 U215 ( .I0(n103), .I1(n102), .S(r_last[0]), .Z(N122) );
  AOI22D0BWP12T30P140 U216 ( .A1(fifo[125]), .A2(n263), .B1(fifo[93]), .B2(
        n262), .ZN(n107) );
  AOI22D0BWP12T30P140 U217 ( .A1(fifo[109]), .A2(n265), .B1(fifo[77]), .B2(
        n264), .ZN(n106) );
  AOI22D0BWP12T30P140 U218 ( .A1(fifo[61]), .A2(n267), .B1(fifo[29]), .B2(n266), .ZN(n105) );
  AOI22D0BWP12T30P140 U219 ( .A1(fifo[45]), .A2(n269), .B1(fifo[13]), .B2(n268), .ZN(n104) );
  ND4D0BWP12T30P140 U220 ( .A1(n107), .A2(n106), .A3(n105), .A4(n104), .ZN(
        n113) );
  AOI22D0BWP12T30P140 U221 ( .A1(fifo[117]), .A2(n263), .B1(fifo[85]), .B2(
        n262), .ZN(n111) );
  AOI22D0BWP12T30P140 U222 ( .A1(fifo[101]), .A2(n265), .B1(fifo[69]), .B2(
        n264), .ZN(n110) );
  AOI22D0BWP12T30P140 U223 ( .A1(fifo[53]), .A2(n267), .B1(fifo[21]), .B2(n266), .ZN(n109) );
  AOI22D0BWP12T30P140 U224 ( .A1(fifo[37]), .A2(n269), .B1(fifo[5]), .B2(n268), 
        .ZN(n108) );
  ND4D0BWP12T30P140 U225 ( .A1(n111), .A2(n110), .A3(n109), .A4(n108), .ZN(
        n112) );
  CKMUX2D0BWP12T30P140 U226 ( .I0(n113), .I1(n112), .S(w_last_plus_one[0]), 
        .Z(N131) );
  AOI22D0BWP12T30P140 U227 ( .A1(n201), .A2(fifo[125]), .B1(n200), .B2(
        fifo[93]), .ZN(n117) );
  AOI22D0BWP12T30P140 U228 ( .A1(n203), .A2(fifo[109]), .B1(n202), .B2(
        fifo[77]), .ZN(n116) );
  AOI22D0BWP12T30P140 U229 ( .A1(n205), .A2(fifo[61]), .B1(n204), .B2(fifo[29]), .ZN(n115) );
  AOI22D0BWP12T30P140 U230 ( .A1(n207), .A2(fifo[45]), .B1(n206), .B2(fifo[13]), .ZN(n114) );
  ND4D0BWP12T30P140 U231 ( .A1(n117), .A2(n116), .A3(n115), .A4(n114), .ZN(
        n123) );
  AOI22D0BWP12T30P140 U232 ( .A1(n201), .A2(fifo[117]), .B1(n200), .B2(
        fifo[85]), .ZN(n121) );
  AOI22D0BWP12T30P140 U233 ( .A1(n203), .A2(fifo[101]), .B1(n202), .B2(
        fifo[69]), .ZN(n120) );
  AOI22D0BWP12T30P140 U234 ( .A1(n205), .A2(fifo[53]), .B1(n204), .B2(fifo[21]), .ZN(n119) );
  AOI22D0BWP12T30P140 U235 ( .A1(n207), .A2(fifo[37]), .B1(n206), .B2(fifo[5]), 
        .ZN(n118) );
  ND4D0BWP12T30P140 U236 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .ZN(
        n122) );
  CKMUX2D0BWP12T30P140 U237 ( .I0(n123), .I1(n122), .S(r_last[0]), .Z(N123) );
  AOI22D0BWP12T30P140 U238 ( .A1(n201), .A2(fifo[124]), .B1(n200), .B2(
        fifo[92]), .ZN(n127) );
  AOI22D0BWP12T30P140 U239 ( .A1(n203), .A2(fifo[108]), .B1(n202), .B2(
        fifo[76]), .ZN(n126) );
  AOI22D0BWP12T30P140 U240 ( .A1(n205), .A2(fifo[60]), .B1(n204), .B2(fifo[28]), .ZN(n125) );
  AOI22D0BWP12T30P140 U241 ( .A1(n207), .A2(fifo[44]), .B1(n206), .B2(fifo[12]), .ZN(n124) );
  ND4D0BWP12T30P140 U242 ( .A1(n127), .A2(n126), .A3(n125), .A4(n124), .ZN(
        n133) );
  AOI22D0BWP12T30P140 U243 ( .A1(n201), .A2(fifo[116]), .B1(n200), .B2(
        fifo[84]), .ZN(n131) );
  AOI22D0BWP12T30P140 U244 ( .A1(n203), .A2(fifo[100]), .B1(n202), .B2(
        fifo[68]), .ZN(n130) );
  AOI22D0BWP12T30P140 U245 ( .A1(n205), .A2(fifo[52]), .B1(n204), .B2(fifo[20]), .ZN(n129) );
  AOI22D0BWP12T30P140 U246 ( .A1(n207), .A2(fifo[36]), .B1(n206), .B2(fifo[4]), 
        .ZN(n128) );
  ND4D0BWP12T30P140 U247 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .ZN(
        n132) );
  CKMUX2D0BWP12T30P140 U248 ( .I0(n133), .I1(n132), .S(r_last[0]), .Z(N124) );
  AOI22D0BWP12T30P140 U249 ( .A1(fifo[126]), .A2(n263), .B1(fifo[94]), .B2(
        n262), .ZN(n137) );
  AOI22D0BWP12T30P140 U250 ( .A1(fifo[110]), .A2(n265), .B1(fifo[78]), .B2(
        n264), .ZN(n136) );
  AOI22D0BWP12T30P140 U251 ( .A1(fifo[62]), .A2(n267), .B1(fifo[30]), .B2(n266), .ZN(n135) );
  AOI22D0BWP12T30P140 U252 ( .A1(fifo[46]), .A2(n269), .B1(fifo[14]), .B2(n268), .ZN(n134) );
  ND4D0BWP12T30P140 U253 ( .A1(n137), .A2(n136), .A3(n135), .A4(n134), .ZN(
        n143) );
  AOI22D0BWP12T30P140 U254 ( .A1(fifo[118]), .A2(n263), .B1(fifo[86]), .B2(
        n262), .ZN(n141) );
  AOI22D0BWP12T30P140 U255 ( .A1(fifo[102]), .A2(n265), .B1(fifo[70]), .B2(
        n264), .ZN(n140) );
  AOI22D0BWP12T30P140 U256 ( .A1(fifo[54]), .A2(n267), .B1(fifo[22]), .B2(n266), .ZN(n139) );
  AOI22D0BWP12T30P140 U257 ( .A1(fifo[38]), .A2(n269), .B1(fifo[6]), .B2(n268), 
        .ZN(n138) );
  ND4D0BWP12T30P140 U258 ( .A1(n141), .A2(n140), .A3(n139), .A4(n138), .ZN(
        n142) );
  CKMUX2D0BWP12T30P140 U259 ( .I0(n143), .I1(n142), .S(w_last_plus_one[0]), 
        .Z(N130) );
  AOI22D0BWP12T30P140 U260 ( .A1(n201), .A2(fifo[123]), .B1(n200), .B2(
        fifo[91]), .ZN(n147) );
  AOI22D0BWP12T30P140 U261 ( .A1(n203), .A2(fifo[107]), .B1(n202), .B2(
        fifo[75]), .ZN(n146) );
  AOI22D0BWP12T30P140 U262 ( .A1(n205), .A2(fifo[59]), .B1(n204), .B2(fifo[27]), .ZN(n145) );
  AOI22D0BWP12T30P140 U263 ( .A1(n207), .A2(fifo[43]), .B1(n206), .B2(fifo[11]), .ZN(n144) );
  ND4D0BWP12T30P140 U264 ( .A1(n147), .A2(n146), .A3(n145), .A4(n144), .ZN(
        n153) );
  AOI22D0BWP12T30P140 U265 ( .A1(n201), .A2(fifo[115]), .B1(n200), .B2(
        fifo[83]), .ZN(n151) );
  AOI22D0BWP12T30P140 U266 ( .A1(n203), .A2(fifo[99]), .B1(n202), .B2(fifo[67]), .ZN(n150) );
  AOI22D0BWP12T30P140 U267 ( .A1(n205), .A2(fifo[51]), .B1(n204), .B2(fifo[19]), .ZN(n149) );
  AOI22D0BWP12T30P140 U268 ( .A1(n207), .A2(fifo[35]), .B1(n206), .B2(fifo[3]), 
        .ZN(n148) );
  ND4D0BWP12T30P140 U269 ( .A1(n151), .A2(n150), .A3(n149), .A4(n148), .ZN(
        n152) );
  CKMUX2D0BWP12T30P140 U270 ( .I0(n153), .I1(n152), .S(r_last[0]), .Z(N125) );
  AOI22D0BWP12T30P140 U271 ( .A1(n201), .A2(fifo[122]), .B1(n200), .B2(
        fifo[90]), .ZN(n157) );
  AOI22D0BWP12T30P140 U272 ( .A1(n203), .A2(fifo[106]), .B1(n202), .B2(
        fifo[74]), .ZN(n156) );
  AOI22D0BWP12T30P140 U273 ( .A1(n205), .A2(fifo[58]), .B1(n204), .B2(fifo[26]), .ZN(n155) );
  AOI22D0BWP12T30P140 U274 ( .A1(n207), .A2(fifo[42]), .B1(n206), .B2(fifo[10]), .ZN(n154) );
  ND4D0BWP12T30P140 U275 ( .A1(n157), .A2(n156), .A3(n155), .A4(n154), .ZN(
        n163) );
  AOI22D0BWP12T30P140 U276 ( .A1(n201), .A2(fifo[114]), .B1(n200), .B2(
        fifo[82]), .ZN(n161) );
  AOI22D0BWP12T30P140 U277 ( .A1(n203), .A2(fifo[98]), .B1(n202), .B2(fifo[66]), .ZN(n160) );
  AOI22D0BWP12T30P140 U278 ( .A1(n205), .A2(fifo[50]), .B1(n204), .B2(fifo[18]), .ZN(n159) );
  AOI22D0BWP12T30P140 U279 ( .A1(n207), .A2(fifo[34]), .B1(n206), .B2(fifo[2]), 
        .ZN(n158) );
  ND4D0BWP12T30P140 U280 ( .A1(n161), .A2(n160), .A3(n159), .A4(n158), .ZN(
        n162) );
  CKMUX2D0BWP12T30P140 U281 ( .I0(n163), .I1(n162), .S(r_last[0]), .Z(N126) );
  AOI22D0BWP12T30P140 U282 ( .A1(fifo[127]), .A2(n263), .B1(fifo[95]), .B2(
        n262), .ZN(n167) );
  AOI22D0BWP12T30P140 U283 ( .A1(fifo[111]), .A2(n265), .B1(fifo[79]), .B2(
        n264), .ZN(n166) );
  AOI22D0BWP12T30P140 U284 ( .A1(fifo[63]), .A2(n267), .B1(fifo[31]), .B2(n266), .ZN(n165) );
  AOI22D0BWP12T30P140 U285 ( .A1(fifo[47]), .A2(n269), .B1(fifo[15]), .B2(n268), .ZN(n164) );
  ND4D0BWP12T30P140 U286 ( .A1(n167), .A2(n166), .A3(n165), .A4(n164), .ZN(
        n173) );
  AOI22D0BWP12T30P140 U287 ( .A1(fifo[119]), .A2(n263), .B1(fifo[87]), .B2(
        n262), .ZN(n171) );
  AOI22D0BWP12T30P140 U288 ( .A1(fifo[103]), .A2(n265), .B1(fifo[71]), .B2(
        n264), .ZN(n170) );
  AOI22D0BWP12T30P140 U289 ( .A1(fifo[55]), .A2(n267), .B1(fifo[23]), .B2(n266), .ZN(n169) );
  AOI22D0BWP12T30P140 U290 ( .A1(fifo[39]), .A2(n269), .B1(fifo[7]), .B2(n268), 
        .ZN(n168) );
  ND4D0BWP12T30P140 U291 ( .A1(n171), .A2(n170), .A3(n169), .A4(n168), .ZN(
        n172) );
  CKMUX2D0BWP12T30P140 U292 ( .I0(n173), .I1(n172), .S(w_last_plus_one[0]), 
        .Z(N129) );
  AOI22D0BWP12T30P140 U293 ( .A1(n201), .A2(fifo[121]), .B1(n200), .B2(
        fifo[89]), .ZN(n177) );
  AOI22D0BWP12T30P140 U294 ( .A1(n203), .A2(fifo[105]), .B1(n202), .B2(
        fifo[73]), .ZN(n176) );
  AOI22D0BWP12T30P140 U295 ( .A1(n205), .A2(fifo[57]), .B1(n204), .B2(fifo[25]), .ZN(n175) );
  AOI22D0BWP12T30P140 U296 ( .A1(n207), .A2(fifo[41]), .B1(n206), .B2(fifo[9]), 
        .ZN(n174) );
  ND4D0BWP12T30P140 U297 ( .A1(n177), .A2(n176), .A3(n175), .A4(n174), .ZN(
        n183) );
  AOI22D0BWP12T30P140 U298 ( .A1(n201), .A2(fifo[113]), .B1(n200), .B2(
        fifo[81]), .ZN(n181) );
  AOI22D0BWP12T30P140 U299 ( .A1(n203), .A2(fifo[97]), .B1(n202), .B2(fifo[65]), .ZN(n180) );
  AOI22D0BWP12T30P140 U300 ( .A1(n205), .A2(fifo[49]), .B1(n204), .B2(fifo[17]), .ZN(n179) );
  AOI22D0BWP12T30P140 U301 ( .A1(n207), .A2(fifo[33]), .B1(n206), .B2(fifo[1]), 
        .ZN(n178) );
  ND4D0BWP12T30P140 U302 ( .A1(n181), .A2(n180), .A3(n179), .A4(n178), .ZN(
        n182) );
  CKMUX2D0BWP12T30P140 U303 ( .I0(n183), .I1(n182), .S(r_last[0]), .Z(N127) );
  AOI22D0BWP12T30P140 U304 ( .A1(fifo[120]), .A2(n263), .B1(fifo[88]), .B2(
        n262), .ZN(n187) );
  AOI22D0BWP12T30P140 U305 ( .A1(fifo[104]), .A2(n265), .B1(fifo[72]), .B2(
        n264), .ZN(n186) );
  AOI22D0BWP12T30P140 U306 ( .A1(fifo[56]), .A2(n267), .B1(fifo[24]), .B2(n266), .ZN(n185) );
  AOI22D0BWP12T30P140 U307 ( .A1(fifo[40]), .A2(n269), .B1(fifo[8]), .B2(n268), 
        .ZN(n184) );
  ND4D0BWP12T30P140 U308 ( .A1(n187), .A2(n186), .A3(n185), .A4(n184), .ZN(
        n193) );
  AOI22D0BWP12T30P140 U309 ( .A1(fifo[112]), .A2(n263), .B1(fifo[80]), .B2(
        n262), .ZN(n191) );
  AOI22D0BWP12T30P140 U310 ( .A1(fifo[96]), .A2(n265), .B1(fifo[64]), .B2(n264), .ZN(n190) );
  AOI22D0BWP12T30P140 U311 ( .A1(fifo[48]), .A2(n267), .B1(fifo[16]), .B2(n266), .ZN(n189) );
  AOI22D0BWP12T30P140 U312 ( .A1(fifo[32]), .A2(n269), .B1(fifo[0]), .B2(n268), 
        .ZN(n188) );
  ND4D0BWP12T30P140 U313 ( .A1(n191), .A2(n190), .A3(n189), .A4(n188), .ZN(
        n192) );
  CKMUX2D0BWP12T30P140 U314 ( .I0(n193), .I1(n192), .S(w_last_plus_one[0]), 
        .Z(N136) );
  ND2D0BWP12T30P140 U315 ( .A1(n223), .A2(n194), .ZN(n286) );
  NR2D0BWP12T30P140 U316 ( .A1(n286), .A2(n195), .ZN(n445) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n445), .A2(n297), .B1(fifo[95]), .B2(n445), 
        .ZN(n339) );
  AOI22D0BWP12T30P140 U318 ( .A1(n201), .A2(fifo[120]), .B1(n200), .B2(
        fifo[88]), .ZN(n199) );
  AOI22D0BWP12T30P140 U319 ( .A1(n203), .A2(fifo[104]), .B1(n202), .B2(
        fifo[72]), .ZN(n198) );
  AOI22D0BWP12T30P140 U320 ( .A1(n205), .A2(fifo[56]), .B1(n204), .B2(fifo[24]), .ZN(n197) );
  AOI22D0BWP12T30P140 U321 ( .A1(n207), .A2(fifo[40]), .B1(n206), .B2(fifo[8]), 
        .ZN(n196) );
  ND4D0BWP12T30P140 U322 ( .A1(n199), .A2(n198), .A3(n197), .A4(n196), .ZN(
        n213) );
  AOI22D0BWP12T30P140 U323 ( .A1(n201), .A2(fifo[112]), .B1(n200), .B2(
        fifo[80]), .ZN(n211) );
  AOI22D0BWP12T30P140 U324 ( .A1(n203), .A2(fifo[96]), .B1(n202), .B2(fifo[64]), .ZN(n210) );
  AOI22D0BWP12T30P140 U325 ( .A1(n205), .A2(fifo[48]), .B1(n204), .B2(fifo[16]), .ZN(n209) );
  AOI22D0BWP12T30P140 U326 ( .A1(n207), .A2(fifo[32]), .B1(n206), .B2(fifo[0]), 
        .ZN(n208) );
  ND4D0BWP12T30P140 U327 ( .A1(n211), .A2(n210), .A3(n209), .A4(n208), .ZN(
        n212) );
  CKMUX2D0BWP12T30P140 U328 ( .I0(n213), .I1(n212), .S(r_last[0]), .Z(N128) );
  ND3D0BWP12T30P140 U329 ( .A1(n214), .A2(n242), .A3(i_wr), .ZN(n289) );
  NR2D0BWP12T30P140 U330 ( .A1(n243), .A2(n289), .ZN(n292) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n292), .A2(n294), .B1(fifo[96]), .B2(n292), 
        .ZN(n332) );
  AOI22D0BWP12T30P140 U332 ( .A1(r_first[2]), .A2(w_last_plus_one[2]), .B1(
        n215), .B2(n242), .ZN(n238) );
  OAI21D0BWP12T30P140 U333 ( .A1(n217), .A2(n238), .B(n225), .ZN(n216) );
  AOI21D0BWP12T30P140 U334 ( .A1(n217), .A2(n238), .B(n216), .ZN(n218) );
  AOI31D0BWP12T30P140 U335 ( .A1(n235), .A2(n222), .A3(n219), .B(n218), .ZN(
        n220) );
  OAI21D0BWP12T30P140 U336 ( .A1(n222), .A2(n221), .B(n220), .ZN(N218) );
  NR2D0BWP12T30P140 U337 ( .A1(n248), .A2(n247), .ZN(n234) );
  INVD0BWP12T30P140 U338 ( .I(n227), .ZN(n228) );
  AOI22D0BWP12T30P140 U339 ( .A1(r_first[1]), .A2(w_last_plus_one[1]), .B1(
        n224), .B2(n223), .ZN(n236) );
  INVD0BWP12T30P140 U340 ( .I(n236), .ZN(n226) );
  INVD0BWP12T30P140 U341 ( .I(n225), .ZN(n282) );
  AOI221D0BWP12T30P140 U342 ( .A1(n228), .A2(n236), .B1(n227), .B2(n226), .C(
        n282), .ZN(n229) );
  AOI21D0BWP12T30P140 U343 ( .A1(n231), .A2(n230), .B(n229), .ZN(n232) );
  OAI31D0BWP12T30P140 U344 ( .A1(n235), .A2(n234), .A3(n233), .B(n232), .ZN(
        N217) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n292), .A2(n444), .B1(fifo[97]), .B2(n292), 
        .ZN(n325) );
  INR4D0BWP12T30P140 U346 ( .A1(n239), .B1(n238), .B2(n237), .B3(n236), .ZN(
        n281) );
  AOI21D0BWP12T30P140 U347 ( .A1(i_rd), .A2(n281), .B(will_underflow), .ZN(
        N143) );
  AOI31D0BWP12T30P140 U348 ( .A1(i_wr), .A2(will_overflow), .A3(n240), .B(
        o_err), .ZN(n241) );
  NR2D0BWP12T30P140 U349 ( .A1(i_rst), .A2(n241), .ZN(n433) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n292), .A2(n443), .B1(fifo[98]), .B2(n292), 
        .ZN(n326) );
  ND3D0BWP12T30P140 U351 ( .A1(n242), .A2(r_first[3]), .A3(i_wr), .ZN(n245) );
  NR2D0BWP12T30P140 U352 ( .A1(n243), .A2(n245), .ZN(n246) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n246), .A2(n297), .B1(fifo[39]), .B2(n246), 
        .ZN(n395) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n448), .A2(n297), .B1(fifo[87]), .B2(n448), 
        .ZN(n347) );
  NR2D0BWP12T30P140 U355 ( .A1(n244), .A2(n289), .ZN(n288) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n288), .A2(n294), .B1(fifo[112]), .B2(n288), 
        .ZN(n316) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n276), .A2(n297), .B1(fifo[23]), .B2(n276), 
        .ZN(n411) );
  NR2D0BWP12T30P140 U358 ( .A1(n243), .A2(n256), .ZN(n277) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n277), .A2(n297), .B1(fifo[7]), .B2(n277), 
        .ZN(n427) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n292), .A2(n297), .B1(fifo[103]), .B2(n292), 
        .ZN(n331) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n292), .A2(n446), .B1(fifo[101]), .B2(n292), 
        .ZN(n329) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n292), .A2(n447), .B1(fifo[100]), .B2(n292), 
        .ZN(n328) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n292), .A2(n442), .B1(fifo[99]), .B2(n292), 
        .ZN(n327) );
  NR2D0BWP12T30P140 U364 ( .A1(n286), .A2(n245), .ZN(n293) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n293), .A2(n443), .B1(fifo[58]), .B2(n293), 
        .ZN(n366) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n293), .A2(n444), .B1(fifo[57]), .B2(n293), 
        .ZN(n365) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n293), .A2(n294), .B1(fifo[56]), .B2(n293), 
        .ZN(n372) );
  NR2D0BWP12T30P140 U368 ( .A1(n244), .A2(n245), .ZN(n295) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n295), .A2(n447), .B1(fifo[52]), .B2(n295), 
        .ZN(n376) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n295), .A2(n442), .B1(fifo[51]), .B2(n295), 
        .ZN(n375) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n295), .A2(n443), .B1(fifo[50]), .B2(n295), 
        .ZN(n374) );
  NR2D0BWP12T30P140 U372 ( .A1(n290), .A2(n245), .ZN(n440) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n440), .A2(n442), .B1(fifo[43]), .B2(n440), 
        .ZN(n383) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n440), .A2(n443), .B1(fifo[42]), .B2(n440), 
        .ZN(n382) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n440), .A2(n444), .B1(fifo[41]), .B2(n440), 
        .ZN(n381) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n440), .A2(n294), .B1(fifo[40]), .B2(n440), 
        .ZN(n388) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n246), .A2(n441), .B1(fifo[38]), .B2(n246), 
        .ZN(n394) );
  MAOI22D0BWP12T30P140 U378 ( .A1(n246), .A2(n446), .B1(fifo[37]), .B2(n246), 
        .ZN(n393) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n246), .A2(n447), .B1(fifo[36]), .B2(n246), 
        .ZN(n392) );
  MAOI22D0BWP12T30P140 U380 ( .A1(n246), .A2(n442), .B1(fifo[35]), .B2(n246), 
        .ZN(n391) );
  MAOI22D0BWP12T30P140 U381 ( .A1(n246), .A2(n443), .B1(fifo[34]), .B2(n246), 
        .ZN(n390) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n246), .A2(n444), .B1(fifo[33]), .B2(n246), 
        .ZN(n389) );
  MAOI22D0BWP12T30P140 U383 ( .A1(n246), .A2(n294), .B1(fifo[32]), .B2(n246), 
        .ZN(n396) );
  NR4D0BWP12T30P140 U384 ( .A1(n250), .A2(n249), .A3(n248), .A4(n247), .ZN(
        n278) );
  OAI22D0BWP12T30P140 U385 ( .A1(i_rd), .A2(n278), .B1(n281), .B2(n251), .ZN(
        n253) );
  OAI21D0BWP12T30P140 U386 ( .A1(i_wr), .A2(n253), .B(n252), .ZN(N100) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n445), .A2(n294), .B1(fifo[88]), .B2(n445), 
        .ZN(n340) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n448), .A2(n441), .B1(fifo[86]), .B2(n448), 
        .ZN(n346) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n254), .A2(n446), .B1(fifo[77]), .B2(n254), 
        .ZN(n353) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n254), .A2(n447), .B1(fifo[76]), .B2(n254), 
        .ZN(n352) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n254), .A2(n442), .B1(fifo[75]), .B2(n254), 
        .ZN(n351) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n254), .A2(n444), .B1(fifo[73]), .B2(n254), 
        .ZN(n349) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n255), .A2(n442), .B1(fifo[67]), .B2(n255), 
        .ZN(n359) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n255), .A2(n443), .B1(fifo[66]), .B2(n255), 
        .ZN(n358) );
  NR2D0BWP12T30P140 U395 ( .A1(n256), .A2(n286), .ZN(n257) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n257), .A2(n297), .B1(fifo[31]), .B2(n257), 
        .ZN(n403) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n257), .A2(n441), .B1(fifo[30]), .B2(n257), 
        .ZN(n402) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n257), .A2(n446), .B1(fifo[29]), .B2(n257), 
        .ZN(n401) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n257), .A2(n447), .B1(fifo[28]), .B2(n257), 
        .ZN(n400) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n257), .A2(n442), .B1(fifo[27]), .B2(n257), 
        .ZN(n399) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n257), .A2(n443), .B1(fifo[26]), .B2(n257), 
        .ZN(n398) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n257), .A2(n444), .B1(fifo[25]), .B2(n257), 
        .ZN(n397) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n257), .A2(n294), .B1(fifo[24]), .B2(n257), 
        .ZN(n404) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n276), .A2(n441), .B1(fifo[22]), .B2(n276), 
        .ZN(n410) );
  AOI22D0BWP12T30P140 U405 ( .A1(fifo[122]), .A2(n263), .B1(fifo[90]), .B2(
        n262), .ZN(n261) );
  AOI22D0BWP12T30P140 U406 ( .A1(fifo[106]), .A2(n265), .B1(fifo[74]), .B2(
        n264), .ZN(n260) );
  AOI22D0BWP12T30P140 U407 ( .A1(fifo[58]), .A2(n267), .B1(fifo[26]), .B2(n266), .ZN(n259) );
  AOI22D0BWP12T30P140 U408 ( .A1(fifo[42]), .A2(n269), .B1(fifo[10]), .B2(n268), .ZN(n258) );
  ND4D0BWP12T30P140 U409 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .ZN(
        n275) );
  AOI22D0BWP12T30P140 U410 ( .A1(fifo[114]), .A2(n263), .B1(fifo[82]), .B2(
        n262), .ZN(n273) );
  AOI22D0BWP12T30P140 U411 ( .A1(fifo[98]), .A2(n265), .B1(fifo[66]), .B2(n264), .ZN(n272) );
  AOI22D0BWP12T30P140 U412 ( .A1(fifo[50]), .A2(n267), .B1(fifo[18]), .B2(n266), .ZN(n271) );
  AOI22D0BWP12T30P140 U413 ( .A1(fifo[34]), .A2(n269), .B1(fifo[2]), .B2(n268), 
        .ZN(n270) );
  ND4D0BWP12T30P140 U414 ( .A1(n273), .A2(n272), .A3(n271), .A4(n270), .ZN(
        n274) );
  CKMUX2D0BWP12T30P140 U415 ( .I0(n275), .I1(n274), .S(w_last_plus_one[0]), 
        .Z(N134) );
  MAOI22D0BWP12T30P140 U416 ( .A1(n276), .A2(n446), .B1(fifo[21]), .B2(n276), 
        .ZN(n409) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n276), .A2(n447), .B1(fifo[20]), .B2(n276), 
        .ZN(n408) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n277), .A2(n441), .B1(fifo[6]), .B2(n277), 
        .ZN(n426) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n277), .A2(n446), .B1(fifo[5]), .B2(n277), 
        .ZN(n425) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n277), .A2(n447), .B1(fifo[4]), .B2(n277), 
        .ZN(n424) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n277), .A2(n442), .B1(fifo[3]), .B2(n277), 
        .ZN(n423) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n277), .A2(n443), .B1(fifo[2]), .B2(n277), 
        .ZN(n422) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n277), .A2(n444), .B1(fifo[1]), .B2(n277), 
        .ZN(n421) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n277), .A2(n294), .B1(fifo[0]), .B2(n277), 
        .ZN(n428) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n288), .A2(n297), .B1(fifo[119]), .B2(n288), 
        .ZN(n315) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n295), .A2(n297), .B1(fifo[55]), .B2(n295), 
        .ZN(n379) );
  NR2D0BWP12T30P140 U427 ( .A1(n279), .A2(n278), .ZN(n280) );
  AOI31D0BWP12T30P140 U428 ( .A1(will_underflow), .A2(i_rd), .A3(o_empty_n), 
        .B(n280), .ZN(n283) );
  OAI222D0BWP12T30P140 U429 ( .A1(n285), .A2(n284), .B1(i_rst), .B2(n283), 
        .C1(n282), .C2(n281), .ZN(n296) );
  NR2D0BWP12T30P140 U430 ( .A1(n286), .A2(n289), .ZN(n287) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n287), .A2(n297), .B1(fifo[127]), .B2(n287), 
        .ZN(n307) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n287), .A2(n441), .B1(fifo[126]), .B2(n287), 
        .ZN(n306) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n287), .A2(n446), .B1(fifo[125]), .B2(n287), 
        .ZN(n305) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n287), .A2(n447), .B1(fifo[124]), .B2(n287), 
        .ZN(n304) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n287), .A2(n442), .B1(fifo[123]), .B2(n287), 
        .ZN(n303) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n287), .A2(n443), .B1(fifo[122]), .B2(n287), 
        .ZN(n302) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n287), .A2(n444), .B1(fifo[121]), .B2(n287), 
        .ZN(n301) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n287), .A2(n294), .B1(fifo[120]), .B2(n287), 
        .ZN(n308) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n288), .A2(n441), .B1(fifo[118]), .B2(n288), 
        .ZN(n314) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n288), .A2(n446), .B1(fifo[117]), .B2(n288), 
        .ZN(n313) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n288), .A2(n447), .B1(fifo[116]), .B2(n288), 
        .ZN(n312) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n288), .A2(n442), .B1(fifo[115]), .B2(n288), 
        .ZN(n311) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n288), .A2(n443), .B1(fifo[114]), .B2(n288), 
        .ZN(n310) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n288), .A2(n444), .B1(fifo[113]), .B2(n288), 
        .ZN(n309) );
  NR2D0BWP12T30P140 U445 ( .A1(n290), .A2(n289), .ZN(n291) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n291), .A2(n297), .B1(fifo[111]), .B2(n291), 
        .ZN(n323) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n291), .A2(n441), .B1(fifo[110]), .B2(n291), 
        .ZN(n322) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n291), .A2(n446), .B1(fifo[109]), .B2(n291), 
        .ZN(n321) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n291), .A2(n447), .B1(fifo[108]), .B2(n291), 
        .ZN(n320) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n291), .A2(n442), .B1(fifo[107]), .B2(n291), 
        .ZN(n319) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n291), .A2(n443), .B1(fifo[106]), .B2(n291), 
        .ZN(n318) );
  MAOI22D0BWP12T30P140 U452 ( .A1(n291), .A2(n444), .B1(fifo[105]), .B2(n291), 
        .ZN(n317) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n291), .A2(n294), .B1(fifo[104]), .B2(n291), 
        .ZN(n324) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n292), .A2(n441), .B1(fifo[102]), .B2(n292), 
        .ZN(n330) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n293), .A2(n297), .B1(fifo[63]), .B2(n293), 
        .ZN(n371) );
  MAOI22D0BWP12T30P140 U456 ( .A1(n293), .A2(n441), .B1(fifo[62]), .B2(n293), 
        .ZN(n370) );
  MAOI22D0BWP12T30P140 U457 ( .A1(n293), .A2(n446), .B1(fifo[61]), .B2(n293), 
        .ZN(n369) );
  MAOI22D0BWP12T30P140 U458 ( .A1(n293), .A2(n447), .B1(fifo[60]), .B2(n293), 
        .ZN(n368) );
  MAOI22D0BWP12T30P140 U459 ( .A1(n293), .A2(n442), .B1(fifo[59]), .B2(n293), 
        .ZN(n367) );
  MAOI22D0BWP12T30P140 U460 ( .A1(n295), .A2(n441), .B1(fifo[54]), .B2(n295), 
        .ZN(n378) );
  MAOI22D0BWP12T30P140 U461 ( .A1(n295), .A2(n446), .B1(fifo[53]), .B2(n295), 
        .ZN(n377) );
  MAOI22D0BWP12T30P140 U462 ( .A1(n295), .A2(n444), .B1(fifo[49]), .B2(n295), 
        .ZN(n373) );
  MAOI22D0BWP12T30P140 U463 ( .A1(n295), .A2(n294), .B1(fifo[48]), .B2(n295), 
        .ZN(n380) );
  MAOI22D0BWP12T30P140 U464 ( .A1(n440), .A2(n297), .B1(fifo[47]), .B2(n440), 
        .ZN(n387) );
  MAOI22D0BWP12T30P140 U465 ( .A1(n440), .A2(n441), .B1(fifo[46]), .B2(n440), 
        .ZN(n386) );
  MAOI22D0BWP12T30P140 U466 ( .A1(n440), .A2(n446), .B1(fifo[45]), .B2(n440), 
        .ZN(n385) );
  MAOI22D0BWP12T30P140 U467 ( .A1(n440), .A2(n447), .B1(fifo[44]), .B2(n440), 
        .ZN(n384) );
  MAOI22D0BWP12T30P140 U468 ( .A1(n445), .A2(n441), .B1(fifo[94]), .B2(n445), 
        .ZN(n338) );
  MAOI22D0BWP12T30P140 U469 ( .A1(n445), .A2(n446), .B1(fifo[93]), .B2(n445), 
        .ZN(n337) );
  MAOI22D0BWP12T30P140 U470 ( .A1(n445), .A2(n447), .B1(fifo[92]), .B2(n445), 
        .ZN(n336) );
  MAOI22D0BWP12T30P140 U471 ( .A1(n445), .A2(n442), .B1(fifo[91]), .B2(n445), 
        .ZN(n335) );
  MAOI22D0BWP12T30P140 U472 ( .A1(n445), .A2(n443), .B1(fifo[90]), .B2(n445), 
        .ZN(n334) );
  MAOI22D0BWP12T30P140 U473 ( .A1(n445), .A2(n444), .B1(fifo[89]), .B2(n445), 
        .ZN(n333) );
  MAOI22D0BWP12T30P140 U474 ( .A1(n448), .A2(n446), .B1(fifo[85]), .B2(n448), 
        .ZN(n345) );
  MAOI22D0BWP12T30P140 U475 ( .A1(n448), .A2(n447), .B1(fifo[84]), .B2(n448), 
        .ZN(n344) );
  INVD0BWP12T30P140 U476 ( .I(osrc[1]), .ZN(n451) );
  NR2D0BWP12T30P140 U477 ( .A1(osrc[0]), .A2(n451), .ZN(n450) );
  AN2D0BWP12T30P140 U478 ( .A1(osrc[0]), .A2(osrc[1]), .Z(n449) );
  AO222D0BWP12T30P140 U479 ( .A1(n451), .A2(r_data[6]), .B1(n450), .B2(
        fifo_here[6]), .C1(fifo_next[6]), .C2(n449), .Z(o_data[6]) );
  AO222D0BWP12T30P140 U480 ( .A1(n451), .A2(r_data[5]), .B1(n450), .B2(
        fifo_here[5]), .C1(fifo_next[5]), .C2(n449), .Z(o_data[5]) );
  AO222D0BWP12T30P140 U481 ( .A1(n451), .A2(r_data[4]), .B1(n450), .B2(
        fifo_here[4]), .C1(fifo_next[4]), .C2(n449), .Z(o_data[4]) );
  AO222D0BWP12T30P140 U482 ( .A1(n451), .A2(r_data[3]), .B1(n450), .B2(
        fifo_here[3]), .C1(fifo_next[3]), .C2(n449), .Z(o_data[3]) );
  AO222D0BWP12T30P140 U483 ( .A1(n451), .A2(r_data[2]), .B1(n450), .B2(
        fifo_here[2]), .C1(fifo_next[2]), .C2(n449), .Z(o_data[2]) );
  AO222D0BWP12T30P140 U484 ( .A1(n451), .A2(r_data[1]), .B1(n450), .B2(
        fifo_here[1]), .C1(fifo_next[1]), .C2(n449), .Z(o_data[1]) );
  AO222D0BWP12T30P140 U485 ( .A1(n451), .A2(r_data[0]), .B1(n449), .B2(
        fifo_next[0]), .C1(n450), .C2(fifo_here[0]), .Z(o_data[0]) );
  AO222D0BWP12T30P140 U486 ( .A1(n451), .A2(r_data[7]), .B1(n450), .B2(
        fifo_here[7]), .C1(fifo_next[7]), .C2(n449), .Z(o_data[7]) );
  CKBD0BWP12T30P140 U487 ( .I(i_clk), .Z(n459) );
  CKBD0BWP12T30P140 U488 ( .I(i_clk), .Z(n460) );
  CKBD0BWP12T30P140 U489 ( .I(i_clk), .Z(n457) );
  CKBD0BWP12T30P140 U490 ( .I(i_clk), .Z(n456) );
  CKBD0BWP12T30P140 U491 ( .I(i_clk), .Z(n454) );
  CKBD0BWP12T30P140 U492 ( .I(i_clk), .Z(n461) );
  CKBD0BWP12T30P140 U493 ( .I(i_clk), .Z(n462) );
  CKBD0BWP12T30P140 U494 ( .I(i_clk), .Z(n458) );
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
  DFQD2BWP12T30P140 fifo_here_reg_7_ ( .D(N119), .CP(n442), .Q(fifo_here[7])
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
  DFQD2BWP12T30P140 r_data_reg_0_ ( .D(i_data[0]), .CP(n449), .Q(r_data[0]) );
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
  DFQD2BWP12T30P140 fifo_reg_0__0_ ( .D(n297), .CP(n445), .Q(fifo[120]) );
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
  DFQD2BWP12T30P140 fifo_reg_3__1_ ( .D(n314), .CP(n446), .Q(fifo[97]) );
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
  DFQD2BWP12T30P140 fifo_reg_9__1_ ( .D(n362), .CP(n447), .Q(fifo[49]) );
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
  DFQD2BWP12T30P140 fifo_reg_11__1_ ( .D(n378), .CP(n446), .Q(fifo[33]) );
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
  DFQD2BWP12T30P140 fifo_reg_5__1_ ( .D(n330), .CP(n442), .Q(fifo[81]) );
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
  DFQD2BWP12T30P140 fifo_reg_7__0_ ( .D(n353), .CP(n448), .Q(fifo[64]) );
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
  DFQD2BWP12T30P140 fifo_reg_13__0_ ( .D(n401), .CP(n444), .Q(fifo[16]) );
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
  DFQD2BWP12T30P140 fifo_reg_15__0_ ( .D(n417), .CP(n443), .Q(fifo[0]) );
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
  DFQD2BWP12T30P140 r_first_reg_2_ ( .D(n418), .CP(n449), .Q(r_first[2]) );
  DFQD2BWP12T30P140 r_fill_reg_0_ ( .D(N200), .CP(n449), .Q(o_status[2]) );
  DFQD2BWP12T30P140 r_next_reg_3_ ( .D(n287), .CP(n442), .Q(w_last_plus_one[3]) );
  DFQD2BWP12T30P140 r_last_reg_3_ ( .D(n424), .CP(n442), .Q(r_last[3]) );
  DFQD2BWP12T30P140 r_last_reg_2_ ( .D(n425), .CP(n442), .Q(r_last[2]) );
  DFQD2BWP12T30P140 r_first_reg_0_ ( .D(n420), .CP(n449), .Q(r_first[0]) );
  DFQD2BWP12T30P140 r_last_reg_1_ ( .D(n427), .CP(n442), .Q(r_last[1]) );
  DFQD2BWP12T30P140 r_next_reg_0_ ( .D(n428), .CP(n443), .Q(w_last_plus_one[0]) );
  DFQD2BWP12T30P140 r_last_reg_0_ ( .D(n426), .CP(n443), .Q(r_last[0]) );
  DFQD1BWP12T30P140 r_data_reg_4_ ( .D(i_data[4]), .CP(n450), .Q(r_data[4]) );
  DFQD1BWP12T30P140 fifo_here_reg_6_ ( .D(N120), .CP(n442), .Q(fifo_here[6])
         );
  DFQD1BWP12T30P140 osrc_reg_0_ ( .D(N140), .CP(n449), .Q(osrc[0]) );
  DFQD1BWP12T30P140 fifo_reg_1__6_ ( .D(n303), .CP(n447), .Q(fifo[118]) );
  DFQD1BWP12T30P140 fifo_reg_3__0_ ( .D(n321), .CP(n445), .Q(fifo[96]) );
  DFQD1BWP12T30P140 fifo_reg_9__0_ ( .D(n369), .CP(n447), .Q(fifo[48]) );
  DFQD1BWP12T30P140 fifo_reg_11__0_ ( .D(n385), .CP(n446), .Q(fifo[32]) );
  DFQD1BWP12T30P140 fifo_reg_5__0_ ( .D(n337), .CP(n444), .Q(fifo[80]) );
  DFQD1BWP12T30P140 fifo_reg_12__7_ ( .D(n392), .CP(n445), .Q(fifo[31]) );
  DFQD1BWP12T30P140 fifo_reg_14__7_ ( .D(n408), .CP(n444), .Q(fifo[15]) );
  DFQD1BWP12T30P140 fifo_reg_3__7_ ( .D(n320), .CP(n449), .Q(fifo[103]) );
  DFQD1BWP12T30P140 r_next_reg_1_ ( .D(n289), .CP(n443), .Q(w_last_plus_one[1]) );
  CKBD0BWP12T30P140 U3 ( .I(o_status[5]), .Z(o_status[1]) );
  INVD0BWP12T30P140 U4 ( .I(w_last_plus_one[2]), .ZN(n224) );
  INVD0BWP12T30P140 U5 ( .I(r_first[2]), .ZN(n268) );
  INVD0BWP12T30P140 U6 ( .I(r_first[1]), .ZN(n276) );
  INVD0BWP12T30P140 U7 ( .I(r_first[3]), .ZN(n198) );
  INVD0BWP12T30P140 U8 ( .I(w_last_plus_one[0]), .ZN(n230) );
  OAI22D0BWP12T30P140 U9 ( .A1(n198), .A2(w_last_plus_one[3]), .B1(n230), .B2(
        r_first[0]), .ZN(n1) );
  AOI221D0BWP12T30P140 U10 ( .A1(n198), .A2(w_last_plus_one[3]), .B1(
        r_first[0]), .B2(n230), .C(n1), .ZN(n3) );
  ND2D0BWP12T30P140 U11 ( .A1(w_last_plus_one[1]), .A2(n276), .ZN(n2) );
  OAI211D0BWP12T30P140 U12 ( .A1(w_last_plus_one[1]), .A2(n276), .B(n3), .C(n2), .ZN(n4) );
  AOI221D0BWP12T30P140 U13 ( .A1(r_first[2]), .A2(n224), .B1(n268), .B2(
        w_last_plus_one[2]), .C(n4), .ZN(n239) );
  AOI21D0BWP12T30P140 U14 ( .A1(i_rd), .A2(n239), .B(will_underflow), .ZN(N141) );
  NR3D0BWP12T30P140 U15 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(w_last_plus_one[3]), .ZN(n150) );
  NR3D0BWP12T30P140 U16 ( .A1(w_last_plus_one[1]), .A2(w_last_plus_one[3]), 
        .A3(n224), .ZN(n149) );
  AOI22D0BWP12T30P140 U17 ( .A1(fifo[127]), .A2(n150), .B1(fifo[95]), .B2(n149), .ZN(n8) );
  INVD0BWP12T30P140 U18 ( .I(w_last_plus_one[1]), .ZN(n227) );
  NR3D0BWP12T30P140 U19 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[3]), 
        .A3(n227), .ZN(n152) );
  NR3D0BWP12T30P140 U20 ( .A1(w_last_plus_one[3]), .A2(n227), .A3(n224), .ZN(
        n151) );
  AOI22D0BWP12T30P140 U21 ( .A1(fifo[111]), .A2(n152), .B1(fifo[79]), .B2(n151), .ZN(n7) );
  INVD0BWP12T30P140 U22 ( .I(w_last_plus_one[3]), .ZN(n223) );
  NR3D0BWP12T30P140 U23 ( .A1(w_last_plus_one[2]), .A2(w_last_plus_one[1]), 
        .A3(n223), .ZN(n154) );
  NR3D0BWP12T30P140 U24 ( .A1(w_last_plus_one[1]), .A2(n224), .A3(n223), .ZN(
        n153) );
  AOI22D0BWP12T30P140 U25 ( .A1(fifo[63]), .A2(n154), .B1(fifo[31]), .B2(n153), 
        .ZN(n6) );
  NR3D0BWP12T30P140 U26 ( .A1(w_last_plus_one[2]), .A2(n227), .A3(n223), .ZN(
        n156) );
  NR3D0BWP12T30P140 U27 ( .A1(n224), .A2(n227), .A3(n223), .ZN(n155) );
  AOI22D0BWP12T30P140 U28 ( .A1(fifo[47]), .A2(n156), .B1(fifo[15]), .B2(n155), 
        .ZN(n5) );
  ND4D0BWP12T30P140 U29 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n14) );
  AOI22D0BWP12T30P140 U30 ( .A1(fifo[119]), .A2(n150), .B1(fifo[87]), .B2(n149), .ZN(n12) );
  AOI22D0BWP12T30P140 U31 ( .A1(fifo[103]), .A2(n152), .B1(fifo[71]), .B2(n151), .ZN(n11) );
  AOI22D0BWP12T30P140 U32 ( .A1(fifo[55]), .A2(n154), .B1(fifo[23]), .B2(n153), 
        .ZN(n10) );
  AOI22D0BWP12T30P140 U33 ( .A1(fifo[39]), .A2(n156), .B1(fifo[7]), .B2(n155), 
        .ZN(n9) );
  ND4D0BWP12T30P140 U34 ( .A1(n12), .A2(n11), .A3(n10), .A4(n9), .ZN(n13) );
  CKMUX2D0BWP12T30P140 U35 ( .I0(n14), .I1(n13), .S(w_last_plus_one[0]), .Z(
        N127) );
  AOI22D0BWP12T30P140 U36 ( .A1(fifo[126]), .A2(n150), .B1(fifo[94]), .B2(n149), .ZN(n18) );
  AOI22D0BWP12T30P140 U37 ( .A1(fifo[110]), .A2(n152), .B1(fifo[78]), .B2(n151), .ZN(n17) );
  AOI22D0BWP12T30P140 U38 ( .A1(fifo[62]), .A2(n154), .B1(fifo[30]), .B2(n153), 
        .ZN(n16) );
  AOI22D0BWP12T30P140 U39 ( .A1(fifo[46]), .A2(n156), .B1(fifo[14]), .B2(n155), 
        .ZN(n15) );
  ND4D0BWP12T30P140 U40 ( .A1(n18), .A2(n17), .A3(n16), .A4(n15), .ZN(n24) );
  AOI22D0BWP12T30P140 U41 ( .A1(fifo[118]), .A2(n150), .B1(fifo[86]), .B2(n149), .ZN(n22) );
  AOI22D0BWP12T30P140 U42 ( .A1(fifo[102]), .A2(n152), .B1(fifo[70]), .B2(n151), .ZN(n21) );
  AOI22D0BWP12T30P140 U43 ( .A1(fifo[54]), .A2(n154), .B1(fifo[22]), .B2(n153), 
        .ZN(n20) );
  AOI22D0BWP12T30P140 U44 ( .A1(fifo[38]), .A2(n156), .B1(fifo[6]), .B2(n155), 
        .ZN(n19) );
  ND4D0BWP12T30P140 U45 ( .A1(n22), .A2(n21), .A3(n20), .A4(n19), .ZN(n23) );
  CKMUX2D0BWP12T30P140 U46 ( .I0(n24), .I1(n23), .S(w_last_plus_one[0]), .Z(
        N128) );
  AOI22D0BWP12T30P140 U47 ( .A1(fifo[125]), .A2(n150), .B1(fifo[93]), .B2(n149), .ZN(n28) );
  AOI22D0BWP12T30P140 U48 ( .A1(fifo[109]), .A2(n152), .B1(fifo[77]), .B2(n151), .ZN(n27) );
  AOI22D0BWP12T30P140 U49 ( .A1(fifo[61]), .A2(n154), .B1(fifo[29]), .B2(n153), 
        .ZN(n26) );
  AOI22D0BWP12T30P140 U50 ( .A1(fifo[45]), .A2(n156), .B1(fifo[13]), .B2(n155), 
        .ZN(n25) );
  ND4D0BWP12T30P140 U51 ( .A1(n28), .A2(n27), .A3(n26), .A4(n25), .ZN(n34) );
  AOI22D0BWP12T30P140 U52 ( .A1(fifo[117]), .A2(n150), .B1(fifo[85]), .B2(n149), .ZN(n32) );
  AOI22D0BWP12T30P140 U53 ( .A1(fifo[101]), .A2(n152), .B1(fifo[69]), .B2(n151), .ZN(n31) );
  AOI22D0BWP12T30P140 U54 ( .A1(fifo[53]), .A2(n154), .B1(fifo[21]), .B2(n153), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U55 ( .A1(fifo[37]), .A2(n156), .B1(fifo[5]), .B2(n155), 
        .ZN(n29) );
  ND4D0BWP12T30P140 U56 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  CKMUX2D0BWP12T30P140 U57 ( .I0(n34), .I1(n33), .S(w_last_plus_one[0]), .Z(
        N129) );
  AOI22D0BWP12T30P140 U58 ( .A1(fifo[124]), .A2(n150), .B1(fifo[92]), .B2(n149), .ZN(n38) );
  AOI22D0BWP12T30P140 U59 ( .A1(fifo[108]), .A2(n152), .B1(fifo[76]), .B2(n151), .ZN(n37) );
  AOI22D0BWP12T30P140 U60 ( .A1(fifo[60]), .A2(n154), .B1(fifo[28]), .B2(n153), 
        .ZN(n36) );
  AOI22D0BWP12T30P140 U61 ( .A1(fifo[44]), .A2(n156), .B1(fifo[12]), .B2(n155), 
        .ZN(n35) );
  ND4D0BWP12T30P140 U62 ( .A1(n38), .A2(n37), .A3(n36), .A4(n35), .ZN(n44) );
  AOI22D0BWP12T30P140 U63 ( .A1(fifo[116]), .A2(n150), .B1(fifo[84]), .B2(n149), .ZN(n42) );
  AOI22D0BWP12T30P140 U64 ( .A1(fifo[100]), .A2(n152), .B1(fifo[68]), .B2(n151), .ZN(n41) );
  AOI22D0BWP12T30P140 U65 ( .A1(fifo[52]), .A2(n154), .B1(fifo[20]), .B2(n153), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U66 ( .A1(fifo[36]), .A2(n156), .B1(fifo[4]), .B2(n155), 
        .ZN(n39) );
  ND4D0BWP12T30P140 U67 ( .A1(n42), .A2(n41), .A3(n40), .A4(n39), .ZN(n43) );
  CKMUX2D0BWP12T30P140 U68 ( .I0(n44), .I1(n43), .S(w_last_plus_one[0]), .Z(
        N130) );
  AOI22D0BWP12T30P140 U69 ( .A1(fifo[123]), .A2(n150), .B1(fifo[91]), .B2(n149), .ZN(n48) );
  AOI22D0BWP12T30P140 U70 ( .A1(fifo[107]), .A2(n152), .B1(fifo[75]), .B2(n151), .ZN(n47) );
  AOI22D0BWP12T30P140 U71 ( .A1(fifo[59]), .A2(n154), .B1(fifo[27]), .B2(n153), 
        .ZN(n46) );
  AOI22D0BWP12T30P140 U72 ( .A1(fifo[43]), .A2(n156), .B1(fifo[11]), .B2(n155), 
        .ZN(n45) );
  ND4D0BWP12T30P140 U73 ( .A1(n48), .A2(n47), .A3(n46), .A4(n45), .ZN(n54) );
  AOI22D0BWP12T30P140 U74 ( .A1(fifo[115]), .A2(n150), .B1(fifo[83]), .B2(n149), .ZN(n52) );
  AOI22D0BWP12T30P140 U75 ( .A1(fifo[99]), .A2(n152), .B1(fifo[67]), .B2(n151), 
        .ZN(n51) );
  AOI22D0BWP12T30P140 U76 ( .A1(fifo[51]), .A2(n154), .B1(fifo[19]), .B2(n153), 
        .ZN(n50) );
  AOI22D0BWP12T30P140 U77 ( .A1(fifo[35]), .A2(n156), .B1(fifo[3]), .B2(n155), 
        .ZN(n49) );
  ND4D0BWP12T30P140 U78 ( .A1(n52), .A2(n51), .A3(n50), .A4(n49), .ZN(n53) );
  CKMUX2D0BWP12T30P140 U79 ( .I0(n54), .I1(n53), .S(w_last_plus_one[0]), .Z(
        N131) );
  AOI22D0BWP12T30P140 U80 ( .A1(fifo[122]), .A2(n150), .B1(fifo[90]), .B2(n149), .ZN(n58) );
  AOI22D0BWP12T30P140 U81 ( .A1(fifo[106]), .A2(n152), .B1(fifo[74]), .B2(n151), .ZN(n57) );
  AOI22D0BWP12T30P140 U82 ( .A1(fifo[58]), .A2(n154), .B1(fifo[26]), .B2(n153), 
        .ZN(n56) );
  AOI22D0BWP12T30P140 U83 ( .A1(fifo[42]), .A2(n156), .B1(fifo[10]), .B2(n155), 
        .ZN(n55) );
  ND4D0BWP12T30P140 U84 ( .A1(n58), .A2(n57), .A3(n56), .A4(n55), .ZN(n64) );
  AOI22D0BWP12T30P140 U85 ( .A1(fifo[114]), .A2(n150), .B1(fifo[82]), .B2(n149), .ZN(n62) );
  AOI22D0BWP12T30P140 U86 ( .A1(fifo[98]), .A2(n152), .B1(fifo[66]), .B2(n151), 
        .ZN(n61) );
  AOI22D0BWP12T30P140 U87 ( .A1(fifo[50]), .A2(n154), .B1(fifo[18]), .B2(n153), 
        .ZN(n60) );
  AOI22D0BWP12T30P140 U88 ( .A1(fifo[34]), .A2(n156), .B1(fifo[2]), .B2(n155), 
        .ZN(n59) );
  ND4D0BWP12T30P140 U89 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .ZN(n63) );
  CKMUX2D0BWP12T30P140 U90 ( .I0(n64), .I1(n63), .S(w_last_plus_one[0]), .Z(
        N132) );
  AOI22D0BWP12T30P140 U91 ( .A1(fifo[121]), .A2(n150), .B1(fifo[89]), .B2(n149), .ZN(n68) );
  AOI22D0BWP12T30P140 U92 ( .A1(fifo[105]), .A2(n152), .B1(fifo[73]), .B2(n151), .ZN(n67) );
  AOI22D0BWP12T30P140 U93 ( .A1(fifo[57]), .A2(n154), .B1(fifo[25]), .B2(n153), 
        .ZN(n66) );
  AOI22D0BWP12T30P140 U94 ( .A1(fifo[41]), .A2(n156), .B1(fifo[9]), .B2(n155), 
        .ZN(n65) );
  ND4D0BWP12T30P140 U95 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(n74) );
  AOI22D0BWP12T30P140 U96 ( .A1(fifo[113]), .A2(n150), .B1(fifo[81]), .B2(n149), .ZN(n72) );
  AOI22D0BWP12T30P140 U97 ( .A1(fifo[97]), .A2(n152), .B1(fifo[65]), .B2(n151), 
        .ZN(n71) );
  AOI22D0BWP12T30P140 U98 ( .A1(fifo[49]), .A2(n154), .B1(fifo[17]), .B2(n153), 
        .ZN(n70) );
  AOI22D0BWP12T30P140 U99 ( .A1(fifo[33]), .A2(n156), .B1(fifo[1]), .B2(n155), 
        .ZN(n69) );
  ND4D0BWP12T30P140 U100 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(n74), .I1(n73), .S(w_last_plus_one[0]), .Z(
        N133) );
  NR3D0BWP12T30P140 U102 ( .A1(r_last[3]), .A2(r_last[2]), .A3(r_last[1]), 
        .ZN(n168) );
  INVD0BWP12T30P140 U103 ( .I(r_last[1]), .ZN(n277) );
  ND2D0BWP12T30P140 U104 ( .A1(r_last[2]), .A2(n277), .ZN(n206) );
  NR2D0BWP12T30P140 U105 ( .A1(r_last[3]), .A2(n206), .ZN(n167) );
  AOI22D0BWP12T30P140 U106 ( .A1(n168), .A2(fifo[127]), .B1(n167), .B2(
        fifo[95]), .ZN(n78) );
  INVD0BWP12T30P140 U107 ( .I(r_last[2]), .ZN(n269) );
  ND2D0BWP12T30P140 U108 ( .A1(r_last[1]), .A2(n269), .ZN(n205) );
  NR2D0BWP12T30P140 U109 ( .A1(r_last[3]), .A2(n205), .ZN(n169) );
  ND2D0BWP12T30P140 U110 ( .A1(r_last[2]), .A2(r_last[1]), .ZN(n221) );
  NR2D0BWP12T30P140 U111 ( .A1(r_last[3]), .A2(n221), .ZN(n220) );
  AOI22D0BWP12T30P140 U112 ( .A1(n169), .A2(fifo[111]), .B1(n220), .B2(
        fifo[79]), .ZN(n77) );
  INVD0BWP12T30P140 U113 ( .I(r_last[3]), .ZN(n262) );
  NR3D0BWP12T30P140 U114 ( .A1(r_last[2]), .A2(r_last[1]), .A3(n262), .ZN(n171) );
  NR2D0BWP12T30P140 U115 ( .A1(n262), .A2(n206), .ZN(n170) );
  AOI22D0BWP12T30P140 U116 ( .A1(n171), .A2(fifo[63]), .B1(n170), .B2(fifo[31]), .ZN(n76) );
  NR2D0BWP12T30P140 U117 ( .A1(n262), .A2(n205), .ZN(n173) );
  NR2D0BWP12T30P140 U118 ( .A1(n262), .A2(n221), .ZN(n172) );
  AOI22D0BWP12T30P140 U119 ( .A1(n173), .A2(fifo[47]), .B1(n172), .B2(fifo[15]), .ZN(n75) );
  ND4D0BWP12T30P140 U120 ( .A1(n78), .A2(n77), .A3(n76), .A4(n75), .ZN(n84) );
  AOI22D0BWP12T30P140 U121 ( .A1(fifo[119]), .A2(n168), .B1(fifo[87]), .B2(
        n167), .ZN(n82) );
  AOI22D0BWP12T30P140 U122 ( .A1(fifo[103]), .A2(n169), .B1(n220), .B2(
        fifo[71]), .ZN(n81) );
  AOI22D0BWP12T30P140 U123 ( .A1(fifo[55]), .A2(n171), .B1(fifo[23]), .B2(n170), .ZN(n80) );
  AOI22D0BWP12T30P140 U124 ( .A1(fifo[39]), .A2(n173), .B1(fifo[7]), .B2(n172), 
        .ZN(n79) );
  ND4D0BWP12T30P140 U125 ( .A1(n82), .A2(n81), .A3(n80), .A4(n79), .ZN(n83) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(n84), .I1(n83), .S(r_last[0]), .Z(N119) );
  AOI22D0BWP12T30P140 U127 ( .A1(n168), .A2(fifo[126]), .B1(n167), .B2(
        fifo[94]), .ZN(n88) );
  AOI22D0BWP12T30P140 U128 ( .A1(n169), .A2(fifo[110]), .B1(n220), .B2(
        fifo[78]), .ZN(n87) );
  AOI22D0BWP12T30P140 U129 ( .A1(n171), .A2(fifo[62]), .B1(n170), .B2(fifo[30]), .ZN(n86) );
  AOI22D0BWP12T30P140 U130 ( .A1(n173), .A2(fifo[46]), .B1(n172), .B2(fifo[14]), .ZN(n85) );
  ND4D0BWP12T30P140 U131 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .ZN(n94) );
  AOI22D0BWP12T30P140 U132 ( .A1(n168), .A2(fifo[118]), .B1(n167), .B2(
        fifo[86]), .ZN(n92) );
  AOI22D0BWP12T30P140 U133 ( .A1(n169), .A2(fifo[102]), .B1(n220), .B2(
        fifo[70]), .ZN(n91) );
  AOI22D0BWP12T30P140 U134 ( .A1(n171), .A2(fifo[54]), .B1(n170), .B2(fifo[22]), .ZN(n90) );
  AOI22D0BWP12T30P140 U135 ( .A1(n173), .A2(fifo[38]), .B1(n172), .B2(fifo[6]), 
        .ZN(n89) );
  ND4D0BWP12T30P140 U136 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .ZN(n93) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(n94), .I1(n93), .S(r_last[0]), .Z(N120) );
  AOI22D0BWP12T30P140 U138 ( .A1(n168), .A2(fifo[125]), .B1(n167), .B2(
        fifo[93]), .ZN(n98) );
  AOI22D0BWP12T30P140 U139 ( .A1(n169), .A2(fifo[109]), .B1(n220), .B2(
        fifo[77]), .ZN(n97) );
  AOI22D0BWP12T30P140 U140 ( .A1(n171), .A2(fifo[61]), .B1(n170), .B2(fifo[29]), .ZN(n96) );
  AOI22D0BWP12T30P140 U141 ( .A1(n173), .A2(fifo[45]), .B1(n172), .B2(fifo[13]), .ZN(n95) );
  ND4D0BWP12T30P140 U142 ( .A1(n98), .A2(n97), .A3(n96), .A4(n95), .ZN(n104)
         );
  AOI22D0BWP12T30P140 U143 ( .A1(n168), .A2(fifo[117]), .B1(n167), .B2(
        fifo[85]), .ZN(n102) );
  AOI22D0BWP12T30P140 U144 ( .A1(n169), .A2(fifo[101]), .B1(n220), .B2(
        fifo[69]), .ZN(n101) );
  AOI22D0BWP12T30P140 U145 ( .A1(n171), .A2(fifo[53]), .B1(n170), .B2(fifo[21]), .ZN(n100) );
  AOI22D0BWP12T30P140 U146 ( .A1(n173), .A2(fifo[37]), .B1(n172), .B2(fifo[5]), 
        .ZN(n99) );
  ND4D0BWP12T30P140 U147 ( .A1(n102), .A2(n101), .A3(n100), .A4(n99), .ZN(n103) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(n104), .I1(n103), .S(r_last[0]), .Z(N121) );
  AOI22D0BWP12T30P140 U149 ( .A1(n168), .A2(fifo[124]), .B1(n167), .B2(
        fifo[92]), .ZN(n108) );
  AOI22D0BWP12T30P140 U150 ( .A1(n169), .A2(fifo[108]), .B1(n220), .B2(
        fifo[76]), .ZN(n107) );
  AOI22D0BWP12T30P140 U151 ( .A1(n171), .A2(fifo[60]), .B1(n170), .B2(fifo[28]), .ZN(n106) );
  AOI22D0BWP12T30P140 U152 ( .A1(n173), .A2(fifo[44]), .B1(n172), .B2(fifo[12]), .ZN(n105) );
  ND4D0BWP12T30P140 U153 ( .A1(n108), .A2(n107), .A3(n106), .A4(n105), .ZN(
        n114) );
  AOI22D0BWP12T30P140 U154 ( .A1(n168), .A2(fifo[116]), .B1(n167), .B2(
        fifo[84]), .ZN(n112) );
  AOI22D0BWP12T30P140 U155 ( .A1(n169), .A2(fifo[100]), .B1(n220), .B2(
        fifo[68]), .ZN(n111) );
  AOI22D0BWP12T30P140 U156 ( .A1(n171), .A2(fifo[52]), .B1(n170), .B2(fifo[20]), .ZN(n110) );
  AOI22D0BWP12T30P140 U157 ( .A1(n173), .A2(fifo[36]), .B1(n172), .B2(fifo[4]), 
        .ZN(n109) );
  ND4D0BWP12T30P140 U158 ( .A1(n112), .A2(n111), .A3(n110), .A4(n109), .ZN(
        n113) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(n114), .I1(n113), .S(r_last[0]), .Z(N122) );
  AOI22D0BWP12T30P140 U160 ( .A1(n168), .A2(fifo[123]), .B1(n167), .B2(
        fifo[91]), .ZN(n118) );
  AOI22D0BWP12T30P140 U161 ( .A1(n169), .A2(fifo[107]), .B1(n220), .B2(
        fifo[75]), .ZN(n117) );
  AOI22D0BWP12T30P140 U162 ( .A1(n171), .A2(fifo[59]), .B1(n170), .B2(fifo[27]), .ZN(n116) );
  AOI22D0BWP12T30P140 U163 ( .A1(n173), .A2(fifo[43]), .B1(n172), .B2(fifo[11]), .ZN(n115) );
  ND4D0BWP12T30P140 U164 ( .A1(n118), .A2(n117), .A3(n116), .A4(n115), .ZN(
        n124) );
  AOI22D0BWP12T30P140 U165 ( .A1(n168), .A2(fifo[115]), .B1(n167), .B2(
        fifo[83]), .ZN(n122) );
  AOI22D0BWP12T30P140 U166 ( .A1(n169), .A2(fifo[99]), .B1(n220), .B2(fifo[67]), .ZN(n121) );
  AOI22D0BWP12T30P140 U167 ( .A1(n171), .A2(fifo[51]), .B1(n170), .B2(fifo[19]), .ZN(n120) );
  AOI22D0BWP12T30P140 U168 ( .A1(n173), .A2(fifo[35]), .B1(n172), .B2(fifo[3]), 
        .ZN(n119) );
  ND4D0BWP12T30P140 U169 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .ZN(
        n123) );
  CKMUX2D0BWP12T30P140 U170 ( .I0(n124), .I1(n123), .S(r_last[0]), .Z(N123) );
  AOI22D0BWP12T30P140 U171 ( .A1(n168), .A2(fifo[122]), .B1(n167), .B2(
        fifo[90]), .ZN(n128) );
  AOI22D0BWP12T30P140 U172 ( .A1(n169), .A2(fifo[106]), .B1(n220), .B2(
        fifo[74]), .ZN(n127) );
  AOI22D0BWP12T30P140 U173 ( .A1(n171), .A2(fifo[58]), .B1(n170), .B2(fifo[26]), .ZN(n126) );
  AOI22D0BWP12T30P140 U174 ( .A1(n173), .A2(fifo[42]), .B1(n172), .B2(fifo[10]), .ZN(n125) );
  ND4D0BWP12T30P140 U175 ( .A1(n128), .A2(n127), .A3(n126), .A4(n125), .ZN(
        n134) );
  AOI22D0BWP12T30P140 U176 ( .A1(n168), .A2(fifo[114]), .B1(n167), .B2(
        fifo[82]), .ZN(n132) );
  AOI22D0BWP12T30P140 U177 ( .A1(n169), .A2(fifo[98]), .B1(n220), .B2(fifo[66]), .ZN(n131) );
  AOI22D0BWP12T30P140 U178 ( .A1(n171), .A2(fifo[50]), .B1(n170), .B2(fifo[18]), .ZN(n130) );
  AOI22D0BWP12T30P140 U179 ( .A1(n173), .A2(fifo[34]), .B1(n172), .B2(fifo[2]), 
        .ZN(n129) );
  ND4D0BWP12T30P140 U180 ( .A1(n132), .A2(n131), .A3(n130), .A4(n129), .ZN(
        n133) );
  CKMUX2D0BWP12T30P140 U181 ( .I0(n134), .I1(n133), .S(r_last[0]), .Z(N124) );
  AOI22D0BWP12T30P140 U182 ( .A1(n168), .A2(fifo[121]), .B1(n167), .B2(
        fifo[89]), .ZN(n138) );
  AOI22D0BWP12T30P140 U183 ( .A1(n169), .A2(fifo[105]), .B1(n220), .B2(
        fifo[73]), .ZN(n137) );
  AOI22D0BWP12T30P140 U184 ( .A1(n171), .A2(fifo[57]), .B1(n170), .B2(fifo[25]), .ZN(n136) );
  AOI22D0BWP12T30P140 U185 ( .A1(n173), .A2(fifo[41]), .B1(n172), .B2(fifo[9]), 
        .ZN(n135) );
  ND4D0BWP12T30P140 U186 ( .A1(n138), .A2(n137), .A3(n136), .A4(n135), .ZN(
        n144) );
  AOI22D0BWP12T30P140 U187 ( .A1(n168), .A2(fifo[113]), .B1(n167), .B2(
        fifo[81]), .ZN(n142) );
  AOI22D0BWP12T30P140 U188 ( .A1(n169), .A2(fifo[97]), .B1(n220), .B2(fifo[65]), .ZN(n141) );
  AOI22D0BWP12T30P140 U189 ( .A1(n171), .A2(fifo[49]), .B1(n170), .B2(fifo[17]), .ZN(n140) );
  AOI22D0BWP12T30P140 U190 ( .A1(n173), .A2(fifo[33]), .B1(n172), .B2(fifo[1]), 
        .ZN(n139) );
  ND4D0BWP12T30P140 U191 ( .A1(n142), .A2(n141), .A3(n140), .A4(n139), .ZN(
        n143) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(n144), .I1(n143), .S(r_last[0]), .Z(N125) );
  AOI22D0BWP12T30P140 U193 ( .A1(fifo[120]), .A2(n150), .B1(fifo[88]), .B2(
        n149), .ZN(n148) );
  AOI22D0BWP12T30P140 U194 ( .A1(fifo[104]), .A2(n152), .B1(fifo[72]), .B2(
        n151), .ZN(n147) );
  AOI22D0BWP12T30P140 U195 ( .A1(fifo[56]), .A2(n154), .B1(fifo[24]), .B2(n153), .ZN(n146) );
  AOI22D0BWP12T30P140 U196 ( .A1(fifo[40]), .A2(n156), .B1(fifo[8]), .B2(n155), 
        .ZN(n145) );
  ND4D0BWP12T30P140 U197 ( .A1(n148), .A2(n147), .A3(n146), .A4(n145), .ZN(
        n162) );
  AOI22D0BWP12T30P140 U198 ( .A1(fifo[112]), .A2(n150), .B1(fifo[80]), .B2(
        n149), .ZN(n160) );
  AOI22D0BWP12T30P140 U199 ( .A1(fifo[96]), .A2(n152), .B1(fifo[64]), .B2(n151), .ZN(n159) );
  AOI22D0BWP12T30P140 U200 ( .A1(fifo[48]), .A2(n154), .B1(fifo[16]), .B2(n153), .ZN(n158) );
  AOI22D0BWP12T30P140 U201 ( .A1(fifo[32]), .A2(n156), .B1(fifo[0]), .B2(n155), 
        .ZN(n157) );
  ND4D0BWP12T30P140 U202 ( .A1(n160), .A2(n159), .A3(n158), .A4(n157), .ZN(
        n161) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(n162), .I1(n161), .S(w_last_plus_one[0]), 
        .Z(N134) );
  AOI22D0BWP12T30P140 U204 ( .A1(n168), .A2(fifo[120]), .B1(n167), .B2(
        fifo[88]), .ZN(n166) );
  AOI22D0BWP12T30P140 U205 ( .A1(n169), .A2(fifo[104]), .B1(n220), .B2(
        fifo[72]), .ZN(n165) );
  AOI22D0BWP12T30P140 U206 ( .A1(n171), .A2(fifo[56]), .B1(n170), .B2(fifo[24]), .ZN(n164) );
  AOI22D0BWP12T30P140 U207 ( .A1(n173), .A2(fifo[40]), .B1(n172), .B2(fifo[8]), 
        .ZN(n163) );
  ND4D0BWP12T30P140 U208 ( .A1(n166), .A2(n165), .A3(n164), .A4(n163), .ZN(
        n179) );
  AOI22D0BWP12T30P140 U209 ( .A1(n168), .A2(fifo[112]), .B1(n167), .B2(
        fifo[80]), .ZN(n177) );
  AOI22D0BWP12T30P140 U210 ( .A1(n169), .A2(fifo[96]), .B1(n220), .B2(fifo[64]), .ZN(n176) );
  AOI22D0BWP12T30P140 U211 ( .A1(n171), .A2(fifo[48]), .B1(n170), .B2(fifo[16]), .ZN(n175) );
  AOI22D0BWP12T30P140 U212 ( .A1(n173), .A2(fifo[32]), .B1(n172), .B2(fifo[0]), 
        .ZN(n174) );
  ND4D0BWP12T30P140 U213 ( .A1(n177), .A2(n176), .A3(n175), .A4(n174), .ZN(
        n178) );
  CKMUX2D0BWP12T30P140 U214 ( .I0(n179), .I1(n178), .S(r_last[0]), .Z(N126) );
  INVD0BWP12T30P140 U215 ( .I(r_first[0]), .ZN(n263) );
  ND2D0BWP12T30P140 U216 ( .A1(n263), .A2(n276), .ZN(n243) );
  ND3D0BWP12T30P140 U217 ( .A1(n268), .A2(n198), .A3(i_wr), .ZN(n188) );
  NR2D0BWP12T30P140 U218 ( .A1(n243), .A2(n188), .ZN(n194) );
  INVD0BWP12T30P140 U219 ( .I(i_data[7]), .ZN(n247) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n194), .A2(n247), .B1(fifo[127]), .B2(n194), 
        .ZN(n296) );
  ND2D0BWP12T30P140 U221 ( .A1(n276), .A2(r_first[0]), .ZN(n204) );
  NR2D0BWP12T30P140 U222 ( .A1(n204), .A2(n188), .ZN(n195) );
  INVD0BWP12T30P140 U223 ( .I(i_data[5]), .ZN(n251) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n195), .A2(n251), .B1(fifo[117]), .B2(n195), 
        .ZN(n302) );
  INVD0BWP12T30P140 U225 ( .I(i_data[4]), .ZN(n256) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n195), .A2(n256), .B1(fifo[116]), .B2(n195), 
        .ZN(n301) );
  INVD0BWP12T30P140 U227 ( .I(i_data[3]), .ZN(n250) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n195), .A2(n250), .B1(fifo[115]), .B2(n195), 
        .ZN(n300) );
  INVD0BWP12T30P140 U229 ( .I(i_data[2]), .ZN(n254) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n195), .A2(n254), .B1(fifo[114]), .B2(n195), 
        .ZN(n299) );
  INVD0BWP12T30P140 U231 ( .I(i_rst), .ZN(n438) );
  ND3D0BWP12T30P140 U232 ( .A1(n438), .A2(will_overflow), .A3(i_wr), .ZN(n430)
         );
  MOAI22D0BWP12T30P140 U233 ( .A1(i_rd), .A2(n430), .B1(o_err), .B2(n438), 
        .ZN(n422) );
  INVD0BWP12T30P140 U234 ( .I(i_rd), .ZN(n265) );
  NR2D0BWP12T30P140 U235 ( .A1(will_underflow), .A2(n265), .ZN(N140) );
  INVD0BWP12T30P140 U236 ( .I(i_wr), .ZN(n284) );
  ND2D0BWP12T30P140 U237 ( .A1(N140), .A2(n284), .ZN(n209) );
  AOI22D0BWP12T30P140 U238 ( .A1(r_first[2]), .A2(r_last[2]), .B1(n269), .B2(
        n268), .ZN(n278) );
  INVD0BWP12T30P140 U239 ( .I(r_last[0]), .ZN(n264) );
  NR2D0BWP12T30P140 U240 ( .A1(r_first[0]), .A2(n264), .ZN(n180) );
  AOI211D0BWP12T30P140 U241 ( .A1(r_last[1]), .A2(n276), .B(n278), .C(n180), 
        .ZN(n183) );
  ND2D0BWP12T30P140 U242 ( .A1(r_first[0]), .A2(n264), .ZN(n182) );
  ND2D0BWP12T30P140 U243 ( .A1(r_first[1]), .A2(n277), .ZN(n181) );
  AOI22D0BWP12T30P140 U244 ( .A1(r_last[3]), .A2(n198), .B1(r_first[3]), .B2(
        n262), .ZN(n272) );
  ND4D0BWP12T30P140 U245 ( .A1(n183), .A2(n182), .A3(n181), .A4(n272), .ZN(
        n237) );
  OAI21D0BWP12T30P140 U246 ( .A1(i_wr), .A2(n265), .B(n237), .ZN(n184) );
  OAI21D0BWP12T30P140 U247 ( .A1(n239), .A2(n209), .B(n184), .ZN(n185) );
  AOI31D0BWP12T30P140 U248 ( .A1(i_rd), .A2(o_empty_n), .A3(will_underflow), 
        .B(n185), .ZN(n186) );
  INVD0BWP12T30P140 U249 ( .I(N140), .ZN(n238) );
  ND2D0BWP12T30P140 U250 ( .A1(n438), .A2(n238), .ZN(n231) );
  OAI22D0BWP12T30P140 U251 ( .A1(i_rst), .A2(n186), .B1(n231), .B2(n284), .ZN(
        n285) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n195), .A2(n247), .B1(fifo[119]), .B2(n195), 
        .ZN(n304) );
  ND3D0BWP12T30P140 U253 ( .A1(n268), .A2(i_wr), .A3(r_first[3]), .ZN(n191) );
  NR2D0BWP12T30P140 U254 ( .A1(n204), .A2(n191), .ZN(n190) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n190), .A2(n247), .B1(fifo[55]), .B2(n190), 
        .ZN(n368) );
  ND2D0BWP12T30P140 U256 ( .A1(r_first[0]), .A2(r_first[1]), .ZN(n215) );
  NR2D0BWP12T30P140 U257 ( .A1(n215), .A2(n191), .ZN(n245) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n245), .A2(n247), .B1(fifo[39]), .B2(n245), 
        .ZN(n384) );
  ND3D0BWP12T30P140 U259 ( .A1(n198), .A2(r_first[2]), .A3(i_wr), .ZN(n235) );
  NR2D0BWP12T30P140 U260 ( .A1(n204), .A2(n235), .ZN(n241) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n241), .A2(n247), .B1(fifo[87]), .B2(n241), 
        .ZN(n336) );
  ND3D0BWP12T30P140 U262 ( .A1(i_wr), .A2(r_first[3]), .A3(r_first[2]), .ZN(
        n244) );
  NR2D0BWP12T30P140 U263 ( .A1(n204), .A2(n244), .ZN(n257) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n257), .A2(n247), .B1(fifo[23]), .B2(n257), 
        .ZN(n400) );
  NR2D0BWP12T30P140 U265 ( .A1(n215), .A2(n244), .ZN(n193) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n193), .A2(n247), .B1(fifo[7]), .B2(n193), 
        .ZN(n416) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n194), .A2(n251), .B1(fifo[125]), .B2(n194), 
        .ZN(n294) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n194), .A2(n256), .B1(fifo[124]), .B2(n194), 
        .ZN(n293) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n194), .A2(n250), .B1(fifo[123]), .B2(n194), 
        .ZN(n292) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n194), .A2(n254), .B1(fifo[122]), .B2(n194), 
        .ZN(n291) );
  INVD0BWP12T30P140 U271 ( .I(i_data[1]), .ZN(n253) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n194), .A2(n253), .B1(fifo[121]), .B2(n194), 
        .ZN(n290) );
  INVD0BWP12T30P140 U273 ( .I(i_data[0]), .ZN(n248) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n194), .A2(n248), .B1(fifo[120]), .B2(n194), 
        .ZN(n297) );
  INVD0BWP12T30P140 U275 ( .I(i_data[6]), .ZN(n249) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n195), .A2(n249), .B1(fifo[118]), .B2(n195), 
        .ZN(n303) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n195), .A2(n248), .B1(fifo[112]), .B2(n195), 
        .ZN(n305) );
  ND2D0BWP12T30P140 U278 ( .A1(n263), .A2(r_first[1]), .ZN(n203) );
  NR2D0BWP12T30P140 U279 ( .A1(n203), .A2(n188), .ZN(n187) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n187), .A2(n247), .B1(fifo[111]), .B2(n187), 
        .ZN(n312) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n187), .A2(n249), .B1(fifo[110]), .B2(n187), 
        .ZN(n311) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n187), .A2(n251), .B1(fifo[109]), .B2(n187), 
        .ZN(n310) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n187), .A2(n256), .B1(fifo[108]), .B2(n187), 
        .ZN(n309) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n187), .A2(n250), .B1(fifo[107]), .B2(n187), 
        .ZN(n308) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n187), .A2(n254), .B1(fifo[106]), .B2(n187), 
        .ZN(n307) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n187), .A2(n253), .B1(fifo[105]), .B2(n187), 
        .ZN(n306) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n187), .A2(n248), .B1(fifo[104]), .B2(n187), 
        .ZN(n313) );
  NR2D0BWP12T30P140 U288 ( .A1(n215), .A2(n188), .ZN(n196) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n196), .A2(n251), .B1(fifo[101]), .B2(n196), 
        .ZN(n318) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n196), .A2(n256), .B1(fifo[100]), .B2(n196), 
        .ZN(n317) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n196), .A2(n250), .B1(fifo[99]), .B2(n196), 
        .ZN(n316) );
  MAOI22D0BWP12T30P140 U292 ( .A1(n196), .A2(n254), .B1(fifo[98]), .B2(n196), 
        .ZN(n315) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n196), .A2(n253), .B1(fifo[97]), .B2(n196), 
        .ZN(n314) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n196), .A2(n248), .B1(fifo[96]), .B2(n196), 
        .ZN(n321) );
  NR2D0BWP12T30P140 U295 ( .A1(n243), .A2(n191), .ZN(n189) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n189), .A2(n247), .B1(fifo[63]), .B2(n189), 
        .ZN(n360) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n189), .A2(n249), .B1(fifo[62]), .B2(n189), 
        .ZN(n359) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n189), .A2(n251), .B1(fifo[61]), .B2(n189), 
        .ZN(n358) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n189), .A2(n256), .B1(fifo[60]), .B2(n189), 
        .ZN(n357) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n189), .A2(n250), .B1(fifo[59]), .B2(n189), 
        .ZN(n356) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n189), .A2(n254), .B1(fifo[58]), .B2(n189), 
        .ZN(n355) );
  MAOI22D0BWP12T30P140 U302 ( .A1(n189), .A2(n253), .B1(fifo[57]), .B2(n189), 
        .ZN(n354) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n189), .A2(n248), .B1(fifo[56]), .B2(n189), 
        .ZN(n361) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n190), .A2(n249), .B1(fifo[54]), .B2(n190), 
        .ZN(n367) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n190), .A2(n251), .B1(fifo[53]), .B2(n190), 
        .ZN(n366) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n190), .A2(n256), .B1(fifo[52]), .B2(n190), 
        .ZN(n365) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n190), .A2(n250), .B1(fifo[51]), .B2(n190), 
        .ZN(n364) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n190), .A2(n254), .B1(fifo[50]), .B2(n190), 
        .ZN(n363) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n190), .A2(n253), .B1(fifo[49]), .B2(n190), 
        .ZN(n362) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n190), .A2(n248), .B1(fifo[48]), .B2(n190), 
        .ZN(n369) );
  NR2D0BWP12T30P140 U311 ( .A1(n203), .A2(n191), .ZN(n252) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n252), .A2(n247), .B1(fifo[47]), .B2(n252), 
        .ZN(n376) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n252), .A2(n249), .B1(fifo[46]), .B2(n252), 
        .ZN(n375) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n252), .A2(n251), .B1(fifo[45]), .B2(n252), 
        .ZN(n374) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n257), .A2(n250), .B1(fifo[19]), .B2(n257), 
        .ZN(n396) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n257), .A2(n254), .B1(fifo[18]), .B2(n257), 
        .ZN(n395) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n257), .A2(n253), .B1(fifo[17]), .B2(n257), 
        .ZN(n394) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n257), .A2(n248), .B1(fifo[16]), .B2(n257), 
        .ZN(n401) );
  NR2D0BWP12T30P140 U319 ( .A1(n203), .A2(n244), .ZN(n192) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n192), .A2(n247), .B1(fifo[15]), .B2(n192), 
        .ZN(n408) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n192), .A2(n249), .B1(fifo[14]), .B2(n192), 
        .ZN(n407) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n192), .A2(n251), .B1(fifo[13]), .B2(n192), 
        .ZN(n406) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n192), .A2(n256), .B1(fifo[12]), .B2(n192), 
        .ZN(n405) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n192), .A2(n250), .B1(fifo[11]), .B2(n192), 
        .ZN(n404) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n192), .A2(n254), .B1(fifo[10]), .B2(n192), 
        .ZN(n403) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n192), .A2(n253), .B1(fifo[9]), .B2(n192), 
        .ZN(n402) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n192), .A2(n248), .B1(fifo[8]), .B2(n192), 
        .ZN(n409) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n193), .A2(n249), .B1(fifo[6]), .B2(n193), 
        .ZN(n415) );
  INVD0BWP12T30P140 U329 ( .I(osrc[1]), .ZN(n234) );
  AN2D0BWP12T30P140 U330 ( .A1(osrc[0]), .A2(osrc[1]), .Z(n232) );
  NR2D0BWP12T30P140 U331 ( .A1(osrc[0]), .A2(n234), .ZN(n233) );
  AO222D0BWP12T30P140 U332 ( .A1(n234), .A2(r_data[0]), .B1(n232), .B2(
        fifo_next[0]), .C1(n233), .C2(fifo_here[0]), .Z(o_data[0]) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n193), .A2(n251), .B1(fifo[5]), .B2(n193), 
        .ZN(n414) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n193), .A2(n256), .B1(fifo[4]), .B2(n193), 
        .ZN(n413) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n193), .A2(n250), .B1(fifo[3]), .B2(n193), 
        .ZN(n412) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n193), .A2(n254), .B1(fifo[2]), .B2(n193), 
        .ZN(n411) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n193), .A2(n253), .B1(fifo[1]), .B2(n193), 
        .ZN(n410) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n193), .A2(n248), .B1(fifo[0]), .B2(n193), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n196), .A2(n247), .B1(fifo[103]), .B2(n196), 
        .ZN(n320) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n194), .A2(n249), .B1(fifo[126]), .B2(n194), 
        .ZN(n295) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n195), .A2(n253), .B1(fifo[113]), .B2(n195), 
        .ZN(n298) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n196), .A2(n249), .B1(fifo[102]), .B2(n196), 
        .ZN(n319) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n241), .A2(n250), .B1(fifo[83]), .B2(n241), 
        .ZN(n332) );
  NR2D0BWP12T30P140 U344 ( .A1(n203), .A2(n235), .ZN(n242) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n242), .A2(n251), .B1(fifo[77]), .B2(n242), 
        .ZN(n342) );
  NR2D0BWP12T30P140 U346 ( .A1(n215), .A2(n235), .ZN(n246) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n246), .A2(n256), .B1(fifo[68]), .B2(n246), 
        .ZN(n349) );
  AOI21D0BWP12T30P140 U348 ( .A1(n265), .A2(will_overflow), .B(n284), .ZN(n197) );
  OR2D0BWP12T30P140 U349 ( .A1(n197), .A2(i_rst), .Z(n226) );
  ND3D0BWP12T30P140 U350 ( .A1(r_first[0]), .A2(r_first[1]), .A3(r_first[2]), 
        .ZN(n214) );
  MUX2ND0BWP12T30P140 U351 ( .I0(n198), .I1(r_first[3]), .S(n214), .ZN(n261)
         );
  ND2D0BWP12T30P140 U352 ( .A1(n438), .A2(n197), .ZN(n225) );
  OAI22D0BWP12T30P140 U353 ( .A1(n198), .A2(n226), .B1(n261), .B2(n225), .ZN(
        n421) );
  INVD0BWP12T30P140 U354 ( .I(will_overflow), .ZN(o_status[0]) );
  ND2D0BWP12T30P140 U355 ( .A1(o_status[3]), .A2(o_status[2]), .ZN(n213) );
  NR2D0BWP12T30P140 U356 ( .A1(n209), .A2(n213), .ZN(n436) );
  ND2D0BWP12T30P140 U357 ( .A1(i_wr), .A2(o_status[0]), .ZN(n279) );
  NR2D0BWP12T30P140 U358 ( .A1(n279), .A2(N140), .ZN(n216) );
  INVD0BWP12T30P140 U359 ( .I(n216), .ZN(n212) );
  NR3D0BWP12T30P140 U360 ( .A1(o_status[3]), .A2(o_status[2]), .A3(n212), .ZN(
        n437) );
  INVD0BWP12T30P140 U361 ( .I(o_status[4]), .ZN(n435) );
  AOI22D0BWP12T30P140 U362 ( .A1(o_status[4]), .A2(n436), .B1(n437), .B2(n435), 
        .ZN(n202) );
  INVD0BWP12T30P140 U363 ( .I(n209), .ZN(n217) );
  AOI21D0BWP12T30P140 U364 ( .A1(o_status[2]), .A2(n217), .B(n216), .ZN(n208)
         );
  AOI21D0BWP12T30P140 U365 ( .A1(n216), .A2(o_status[3]), .B(n208), .ZN(n432)
         );
  INVD0BWP12T30P140 U366 ( .I(n432), .ZN(n200) );
  INVD0BWP12T30P140 U367 ( .I(o_status[2]), .ZN(n433) );
  AOI22D0BWP12T30P140 U368 ( .A1(o_status[4]), .A2(o_status[3]), .B1(n433), 
        .B2(n435), .ZN(n199) );
  OAI21D0BWP12T30P140 U369 ( .A1(n200), .A2(n199), .B(o_status[5]), .ZN(n201)
         );
  OAI211D0BWP12T30P140 U370 ( .A1(o_status[5]), .A2(n202), .B(n438), .C(n201), 
        .ZN(N203) );
  AN2D0BWP12T30P140 U371 ( .A1(n204), .A2(n203), .Z(n259) );
  OAI22D0BWP12T30P140 U372 ( .A1(n259), .A2(n225), .B1(n276), .B2(n226), .ZN(
        n419) );
  ND2D0BWP12T30P140 U373 ( .A1(N140), .A2(n438), .ZN(n229) );
  AO21D0BWP12T30P140 U374 ( .A1(n206), .A2(n205), .B(n229), .Z(n207) );
  OAI21D0BWP12T30P140 U375 ( .A1(n231), .A2(n224), .B(n207), .ZN(n288) );
  AOI211D0BWP12T30P140 U376 ( .A1(o_status[3]), .A2(n208), .B(i_rst), .C(n437), 
        .ZN(n211) );
  OR3D0BWP12T30P140 U377 ( .A1(o_status[3]), .A2(n433), .A3(n209), .Z(n210) );
  OAI211D0BWP12T30P140 U378 ( .A1(n213), .A2(n212), .B(n211), .C(n210), .ZN(
        N201) );
  IOA21D0BWP12T30P140 U379 ( .A1(n268), .A2(n215), .B(n214), .ZN(n260) );
  OAI22D0BWP12T30P140 U380 ( .A1(n268), .A2(n226), .B1(n260), .B2(n225), .ZN(
        n418) );
  OAI22D0BWP12T30P140 U381 ( .A1(r_last[1]), .A2(n229), .B1(n231), .B2(n227), 
        .ZN(n289) );
  NR2D0BWP12T30P140 U382 ( .A1(n217), .A2(n216), .ZN(n219) );
  AOI21D0BWP12T30P140 U383 ( .A1(o_status[2]), .A2(n219), .B(i_rst), .ZN(n218)
         );
  OAI21D0BWP12T30P140 U384 ( .A1(o_status[2]), .A2(n219), .B(n218), .ZN(N200)
         );
  AOI21D0BWP12T30P140 U385 ( .A1(r_last[3]), .A2(n221), .B(n220), .ZN(n222) );
  OAI22D0BWP12T30P140 U386 ( .A1(n222), .A2(n229), .B1(n223), .B2(n231), .ZN(
        n287) );
  OAI22D0BWP12T30P140 U387 ( .A1(n262), .A2(n231), .B1(n223), .B2(n229), .ZN(
        n424) );
  OAI22D0BWP12T30P140 U388 ( .A1(n269), .A2(n231), .B1(n224), .B2(n229), .ZN(
        n425) );
  AOI22D0BWP12T30P140 U389 ( .A1(r_first[0]), .A2(n226), .B1(n225), .B2(n263), 
        .ZN(n420) );
  OAI22D0BWP12T30P140 U390 ( .A1(n277), .A2(n231), .B1(n227), .B2(n229), .ZN(
        n427) );
  AOI21D0BWP12T30P140 U391 ( .A1(N140), .A2(r_last[0]), .B(i_rst), .ZN(n228)
         );
  OAI21D0BWP12T30P140 U392 ( .A1(N140), .A2(n230), .B(n228), .ZN(n428) );
  OAI22D0BWP12T30P140 U393 ( .A1(n264), .A2(n231), .B1(n230), .B2(n229), .ZN(
        n426) );
  AO222D0BWP12T30P140 U394 ( .A1(n234), .A2(r_data[4]), .B1(n233), .B2(
        fifo_here[4]), .C1(fifo_next[4]), .C2(n232), .Z(o_data[4]) );
  AO222D0BWP12T30P140 U395 ( .A1(n234), .A2(r_data[3]), .B1(n233), .B2(
        fifo_here[3]), .C1(fifo_next[3]), .C2(n232), .Z(o_data[3]) );
  AO222D0BWP12T30P140 U396 ( .A1(n234), .A2(r_data[1]), .B1(n233), .B2(
        fifo_here[1]), .C1(fifo_next[1]), .C2(n232), .Z(o_data[1]) );
  AO222D0BWP12T30P140 U397 ( .A1(n234), .A2(r_data[2]), .B1(n233), .B2(
        fifo_here[2]), .C1(fifo_next[2]), .C2(n232), .Z(o_data[2]) );
  AO222D0BWP12T30P140 U398 ( .A1(n234), .A2(r_data[5]), .B1(n233), .B2(
        fifo_here[5]), .C1(fifo_next[5]), .C2(n232), .Z(o_data[5]) );
  AO222D0BWP12T30P140 U399 ( .A1(n234), .A2(r_data[7]), .B1(n233), .B2(
        fifo_here[7]), .C1(fifo_next[7]), .C2(n232), .Z(o_data[7]) );
  AO222D0BWP12T30P140 U400 ( .A1(n234), .A2(r_data[6]), .B1(n233), .B2(
        fifo_here[6]), .C1(fifo_next[6]), .C2(n232), .Z(o_data[6]) );
  NR2D0BWP12T30P140 U401 ( .A1(n243), .A2(n235), .ZN(n236) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n236), .A2(n251), .B1(fifo[93]), .B2(n236), 
        .ZN(n326) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n236), .A2(n249), .B1(fifo[94]), .B2(n236), 
        .ZN(n327) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n236), .A2(n256), .B1(fifo[92]), .B2(n236), 
        .ZN(n325) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n236), .A2(n250), .B1(fifo[91]), .B2(n236), 
        .ZN(n324) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n236), .A2(n254), .B1(fifo[90]), .B2(n236), 
        .ZN(n323) );
  MAOI22D0BWP12T30P140 U407 ( .A1(n236), .A2(n253), .B1(fifo[89]), .B2(n236), 
        .ZN(n322) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n236), .A2(n247), .B1(fifo[95]), .B2(n236), 
        .ZN(n328) );
  MAOI22D0BWP12T30P140 U409 ( .A1(n236), .A2(n248), .B1(fifo[88]), .B2(n236), 
        .ZN(n329) );
  MOAI22D0BWP12T30P140 U410 ( .A1(n239), .A2(n238), .B1(n265), .B2(n237), .ZN(
        n240) );
  OAI21D0BWP12T30P140 U411 ( .A1(i_wr), .A2(n240), .B(n438), .ZN(N98) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n241), .A2(n249), .B1(fifo[86]), .B2(n241), 
        .ZN(n335) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n241), .A2(n251), .B1(fifo[85]), .B2(n241), 
        .ZN(n334) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n241), .A2(n256), .B1(fifo[84]), .B2(n241), 
        .ZN(n333) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n245), .A2(n248), .B1(fifo[32]), .B2(n245), 
        .ZN(n385) );
  MAOI22D0BWP12T30P140 U416 ( .A1(n241), .A2(n254), .B1(fifo[82]), .B2(n241), 
        .ZN(n331) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n241), .A2(n253), .B1(fifo[81]), .B2(n241), 
        .ZN(n330) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n245), .A2(n253), .B1(fifo[33]), .B2(n245), 
        .ZN(n378) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n241), .A2(n248), .B1(fifo[80]), .B2(n241), 
        .ZN(n337) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n242), .A2(n247), .B1(fifo[79]), .B2(n242), 
        .ZN(n344) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n245), .A2(n254), .B1(fifo[34]), .B2(n245), 
        .ZN(n379) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n242), .A2(n249), .B1(fifo[78]), .B2(n242), 
        .ZN(n343) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n242), .A2(n256), .B1(fifo[76]), .B2(n242), 
        .ZN(n341) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n242), .A2(n250), .B1(fifo[75]), .B2(n242), 
        .ZN(n340) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n242), .A2(n254), .B1(fifo[74]), .B2(n242), 
        .ZN(n339) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n245), .A2(n250), .B1(fifo[35]), .B2(n245), 
        .ZN(n380) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n242), .A2(n253), .B1(fifo[73]), .B2(n242), 
        .ZN(n338) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n242), .A2(n248), .B1(fifo[72]), .B2(n242), 
        .ZN(n345) );
  MAOI22D0BWP12T30P140 U429 ( .A1(n245), .A2(n256), .B1(fifo[36]), .B2(n245), 
        .ZN(n381) );
  MAOI22D0BWP12T30P140 U430 ( .A1(n246), .A2(n247), .B1(fifo[71]), .B2(n246), 
        .ZN(n352) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n245), .A2(n251), .B1(fifo[37]), .B2(n245), 
        .ZN(n382) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n246), .A2(n249), .B1(fifo[70]), .B2(n246), 
        .ZN(n351) );
  NR2D0BWP12T30P140 U433 ( .A1(n244), .A2(n243), .ZN(n255) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n255), .A2(n251), .B1(fifo[29]), .B2(n255), 
        .ZN(n390) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n246), .A2(n251), .B1(fifo[69]), .B2(n246), 
        .ZN(n350) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n246), .A2(n250), .B1(fifo[67]), .B2(n246), 
        .ZN(n348) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n255), .A2(n250), .B1(fifo[27]), .B2(n255), 
        .ZN(n388) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n246), .A2(n254), .B1(fifo[66]), .B2(n246), 
        .ZN(n347) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n245), .A2(n249), .B1(fifo[38]), .B2(n245), 
        .ZN(n383) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n246), .A2(n253), .B1(fifo[65]), .B2(n246), 
        .ZN(n346) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n252), .A2(n253), .B1(fifo[41]), .B2(n252), 
        .ZN(n370) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n255), .A2(n248), .B1(fifo[24]), .B2(n255), 
        .ZN(n393) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n246), .A2(n248), .B1(fifo[64]), .B2(n246), 
        .ZN(n353) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n255), .A2(n247), .B1(fifo[31]), .B2(n255), 
        .ZN(n392) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n252), .A2(n248), .B1(fifo[40]), .B2(n252), 
        .ZN(n377) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n255), .A2(n249), .B1(fifo[30]), .B2(n255), 
        .ZN(n391) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n257), .A2(n249), .B1(fifo[22]), .B2(n257), 
        .ZN(n399) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n252), .A2(n250), .B1(fifo[43]), .B2(n252), 
        .ZN(n372) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n257), .A2(n251), .B1(fifo[21]), .B2(n257), 
        .ZN(n398) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n252), .A2(n256), .B1(fifo[44]), .B2(n252), 
        .ZN(n373) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n255), .A2(n256), .B1(fifo[28]), .B2(n255), 
        .ZN(n389) );
  MAOI22D0BWP12T30P140 U452 ( .A1(n252), .A2(n254), .B1(fifo[42]), .B2(n252), 
        .ZN(n371) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n255), .A2(n253), .B1(fifo[25]), .B2(n255), 
        .ZN(n386) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n255), .A2(n254), .B1(fifo[26]), .B2(n255), 
        .ZN(n387) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n257), .A2(n256), .B1(fifo[20]), .B2(n257), 
        .ZN(n397) );
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
  OAI22D0BWP12T30P140 U466 ( .A1(r_last[2]), .A2(n260), .B1(r_last[1]), .B2(
        n259), .ZN(n258) );
  AOI221D0BWP12T30P140 U467 ( .A1(n260), .A2(r_last[2]), .B1(r_last[1]), .B2(
        n259), .C(n258), .ZN(n267) );
  MUX2ND0BWP12T30P140 U468 ( .I0(n262), .I1(r_last[3]), .S(n261), .ZN(n266) );
  AOI22D0BWP12T30P140 U469 ( .A1(r_first[0]), .A2(r_last[0]), .B1(n264), .B2(
        n263), .ZN(n271) );
  ND2D0BWP12T30P140 U470 ( .A1(n438), .A2(n265), .ZN(n274) );
  AOI31D0BWP12T30P140 U471 ( .A1(n267), .A2(n266), .A3(n271), .B(n274), .ZN(
        n429) );
  NR2D0BWP12T30P140 U472 ( .A1(n276), .A2(n268), .ZN(n273) );
  AOI21D0BWP12T30P140 U473 ( .A1(n273), .A2(n269), .B(n272), .ZN(n270) );
  AOI211D0BWP12T30P140 U474 ( .A1(n273), .A2(n272), .B(n271), .C(n270), .ZN(
        n282) );
  INVD0BWP12T30P140 U475 ( .I(n274), .ZN(n281) );
  NR2D0BWP12T30P140 U476 ( .A1(r_first[2]), .A2(r_last[2]), .ZN(n275) );
  OAI33D0BWP12T30P140 U477 ( .A1(r_first[1]), .A2(n278), .A3(n277), .B1(n276), 
        .B2(n275), .B3(r_last[1]), .ZN(n280) );
  AOI32D0BWP12T30P140 U478 ( .A1(n282), .A2(n281), .A3(n280), .B1(n279), .B2(
        n281), .ZN(n283) );
  AOI21D0BWP12T30P140 U479 ( .A1(n284), .A2(n429), .B(n283), .ZN(n286) );
  AOI21D0BWP12T30P140 U480 ( .A1(n429), .A2(will_overflow), .B(n286), .ZN(n431) );
  ND2D0BWP12T30P140 U481 ( .A1(n431), .A2(n430), .ZN(n423) );
  OAI21D0BWP12T30P140 U482 ( .A1(o_status[3]), .A2(n433), .B(n432), .ZN(n434)
         );
  OAI32D0BWP12T30P140 U483 ( .A1(o_status[4]), .A2(n437), .A3(n436), .B1(n435), 
        .B2(n434), .ZN(n439) );
  ND2D0BWP12T30P140 U484 ( .A1(n439), .A2(n438), .ZN(N202) );
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
  DFQD2BWP12T30P140 r_setup_reg_24_ ( .D(n95), .CP(n284), .Q(r_setup[24]) );
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
  DFQD2BWP12T30P140 baud_counter_reg_9_ ( .D(N270), .CP(n285), .Q(
        baud_counter[9]) );
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
  DFQD2BWP12T30P140 baud_counter_reg_23_ ( .D(N284), .CP(n283), .Q(
        baud_counter[23]) );
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
  DFQD2BWP12T30P140 r_setup_reg_13_ ( .D(n84), .CP(n285), .Q(
        clocks_per_baud[13]) );
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
  DFQD2BWP12T30P140 r_setup_reg_6_ ( .D(n77), .CP(n285), .Q(clocks_per_baud[6]) );
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
  DFQD1BWP12T30P140 r_setup_reg_26_ ( .D(n97), .CP(n284), .Q(r_setup[26]) );
  DFQD1BWP12T30P140 baud_counter_reg_12_ ( .D(N273), .CP(n284), .Q(
        baud_counter[12]) );
  DFQD1BWP12T30P140 baud_counter_reg_18_ ( .D(N279), .CP(n283), .Q(
        baud_counter[18]) );
  DFQD1BWP12T30P140 r_setup_reg_11_ ( .D(n82), .CP(n285), .Q(
        clocks_per_baud[11]) );
  DFQD1BWP12T30P140 r_setup_reg_27_ ( .D(n98), .CP(n284), .Q(r_setup[27]) );
  DFQD1BWP12T30P140 state_reg_0_ ( .D(n106), .CP(n286), .Q(state[0]) );
  CKXOR2D0BWP12T30P140 U3 ( .A1(n163), .A2(n162), .Z(n2) );
  INVD0BWP12T30P140 U4 ( .I(n288), .ZN(n180) );
  INVD0BWP12T30P140 U5 ( .I(n180), .ZN(o_busy) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(i_setup[11]), .I1(clocks_per_baud[11]), .S(
        o_busy), .Z(n82) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(i_setup[13]), .I1(clocks_per_baud[13]), .S(
        n288), .Z(n84) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(i_setup[15]), .I1(clocks_per_baud[15]), .S(
        n288), .Z(n86) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(i_setup[17]), .I1(clocks_per_baud[17]), .S(
        n288), .Z(n88) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(i_setup[19]), .I1(clocks_per_baud[19]), .S(
        n288), .Z(n90) );
  INVD0BWP12T30P140 U11 ( .I(zero_baud_counter), .ZN(n174) );
  NR2D0BWP12T30P140 U12 ( .A1(n180), .A2(n174), .ZN(n141) );
  NR2D0BWP12T30P140 U13 ( .A1(zero_baud_counter), .A2(n180), .ZN(n140) );
  AO222D0BWP12T30P140 U14 ( .A1(n180), .A2(i_data[0]), .B1(n141), .B2(
        lcl_data[1]), .C1(n140), .C2(lcl_data[0]), .Z(n114) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(i_setup[25]), .I1(r_setup[25]), .S(o_busy), 
        .Z(n96) );
  INVD0BWP12T30P140 U16 ( .I(state[3]), .ZN(n7) );
  ND2D0BWP12T30P140 U17 ( .A1(state[2]), .A2(state[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U18 ( .A1(n7), .A2(n3), .ZN(n169) );
  NR2D0BWP12T30P140 U19 ( .A1(i_break), .A2(n174), .ZN(n275) );
  INVD0BWP12T30P140 U20 ( .I(n275), .ZN(n185) );
  NR2D0BWP12T30P140 U21 ( .A1(n169), .A2(n185), .ZN(n164) );
  INVD0BWP12T30P140 U22 ( .I(n164), .ZN(n196) );
  INVD0BWP12T30P140 U23 ( .I(n196), .ZN(n274) );
  INVD0BWP12T30P140 U24 ( .I(state[0]), .ZN(n27) );
  NR2D0BWP12T30P140 U25 ( .A1(n27), .A2(n3), .ZN(n5) );
  ND2D0BWP12T30P140 U26 ( .A1(state[3]), .A2(n5), .ZN(n173) );
  NR2D0BWP12T30P140 U27 ( .A1(n185), .A2(n173), .ZN(n190) );
  ND3D0BWP12T30P140 U28 ( .A1(n180), .A2(n190), .A3(i_wr), .ZN(n152) );
  INVD0BWP12T30P140 U29 ( .I(n152), .ZN(n269) );
  INVD0BWP12T30P140 U30 ( .I(i_break), .ZN(n139) );
  INVD0BWP12T30P140 U31 ( .I(n139), .ZN(n253) );
  NR3D0BWP12T30P140 U32 ( .A1(n274), .A2(n269), .A3(n253), .ZN(n54) );
  INVD0BWP12T30P140 U33 ( .I(n54), .ZN(n165) );
  NR3D0BWP12T30P140 U34 ( .A1(state[2]), .A2(state[1]), .A3(n7), .ZN(n26) );
  NR3D0BWP12T30P140 U35 ( .A1(n26), .A2(n7), .A3(n196), .ZN(n189) );
  NR2D0BWP12T30P140 U36 ( .A1(n253), .A2(n189), .ZN(n187) );
  OAI21D0BWP12T30P140 U37 ( .A1(n5), .A2(n26), .B(n274), .ZN(n4) );
  OAI211D0BWP12T30P140 U38 ( .A1(n7), .A2(n165), .B(n187), .C(n4), .ZN(n103)
         );
  INVD0BWP12T30P140 U39 ( .I(n5), .ZN(n197) );
  ND2D0BWP12T30P140 U40 ( .A1(state[3]), .A2(n197), .ZN(n6) );
  OR2D0BWP12T30P140 U41 ( .A1(lcl_data[0]), .A2(state[3]), .Z(n277) );
  AOI31D0BWP12T30P140 U42 ( .A1(zero_baud_counter), .A2(n6), .A3(n277), .B(
        n180), .ZN(n10) );
  ND2D0BWP12T30P140 U43 ( .A1(lcl_data[0]), .A2(n7), .ZN(n8) );
  INVD0BWP12T30P140 U44 ( .I(r_setup[24]), .ZN(n61) );
  OAI22D0BWP12T30P140 U45 ( .A1(calc_parity), .A2(n8), .B1(n173), .B2(n61), 
        .ZN(n9) );
  AOI22D0BWP12T30P140 U46 ( .A1(calc_parity), .A2(n10), .B1(n141), .B2(n9), 
        .ZN(n12) );
  AOI32D0BWP12T30P140 U47 ( .A1(r_setup[24]), .A2(o_busy), .A3(r_setup[25]), 
        .B1(i_setup[24]), .B2(n180), .ZN(n11) );
  OAI21D0BWP12T30P140 U48 ( .A1(r_setup[25]), .A2(n12), .B(n11), .ZN(n102) );
  OR2D0BWP12T30P140 U49 ( .A1(i_break), .A2(zero_baud_counter), .Z(n34) );
  INVD0BWP12T30P140 U50 ( .I(n34), .ZN(n279) );
  AO22D0BWP12T30P140 U51 ( .A1(n279), .A2(baud_counter[2]), .B1(
        clocks_per_baud[2]), .B2(n274), .Z(n31) );
  OR2D0BWP12T30P140 U52 ( .A1(DP_OP_53J1_125_5715_n26), .A2(n31), .Z(n159) );
  AO22D0BWP12T30P140 U53 ( .A1(n279), .A2(baud_counter[3]), .B1(
        clocks_per_baud[3]), .B2(n164), .Z(n158) );
  OR2D0BWP12T30P140 U54 ( .A1(n159), .A2(n158), .Z(n56) );
  AO22D0BWP12T30P140 U55 ( .A1(n279), .A2(baud_counter[4]), .B1(
        clocks_per_baud[4]), .B2(n274), .Z(n55) );
  OR2D0BWP12T30P140 U56 ( .A1(n56), .A2(n55), .Z(n215) );
  AO22D0BWP12T30P140 U57 ( .A1(n279), .A2(baud_counter[5]), .B1(
        clocks_per_baud[5]), .B2(n164), .Z(n214) );
  OR2D0BWP12T30P140 U58 ( .A1(n215), .A2(n214), .Z(n17) );
  AO22D0BWP12T30P140 U59 ( .A1(n279), .A2(baud_counter[6]), .B1(
        clocks_per_baud[6]), .B2(n274), .Z(n16) );
  OR2D0BWP12T30P140 U60 ( .A1(n17), .A2(n16), .Z(n231) );
  AO22D0BWP12T30P140 U61 ( .A1(n279), .A2(baud_counter[7]), .B1(
        clocks_per_baud[7]), .B2(n164), .Z(n230) );
  OR2D0BWP12T30P140 U62 ( .A1(n231), .A2(n230), .Z(n145) );
  AO22D0BWP12T30P140 U63 ( .A1(n279), .A2(baud_counter[8]), .B1(
        clocks_per_baud[8]), .B2(n274), .Z(n144) );
  OR2D0BWP12T30P140 U64 ( .A1(n145), .A2(n144), .Z(n265) );
  AO22D0BWP12T30P140 U65 ( .A1(n279), .A2(baud_counter[9]), .B1(
        clocks_per_baud[9]), .B2(n164), .Z(n264) );
  OR2D0BWP12T30P140 U66 ( .A1(n265), .A2(n264), .Z(n22) );
  AO22D0BWP12T30P140 U67 ( .A1(n279), .A2(baud_counter[10]), .B1(
        clocks_per_baud[10]), .B2(n274), .Z(n21) );
  XNR2D0BWP12T30P140 U68 ( .A1(n22), .A2(n21), .ZN(n15) );
  OAI21D0BWP12T30P140 U69 ( .A1(n253), .A2(n169), .B(n34), .ZN(n272) );
  CKBD0BWP12T30P140 U70 ( .I(n272), .Z(n245) );
  NR3D0BWP12T30P140 U71 ( .A1(i_setup[2]), .A2(i_setup[1]), .A3(i_setup[0]), 
        .ZN(n157) );
  INVD0BWP12T30P140 U72 ( .I(i_setup[3]), .ZN(n156) );
  ND2D0BWP12T30P140 U73 ( .A1(n157), .A2(n156), .ZN(n155) );
  NR2D0BWP12T30P140 U74 ( .A1(i_setup[4]), .A2(n155), .ZN(n218) );
  INVD0BWP12T30P140 U75 ( .I(i_setup[5]), .ZN(n217) );
  ND2D0BWP12T30P140 U76 ( .A1(n218), .A2(n217), .ZN(n216) );
  NR2D0BWP12T30P140 U77 ( .A1(i_setup[6]), .A2(n216), .ZN(n234) );
  INVD0BWP12T30P140 U78 ( .I(i_setup[7]), .ZN(n233) );
  ND2D0BWP12T30P140 U79 ( .A1(n234), .A2(n233), .ZN(n232) );
  NR2D0BWP12T30P140 U80 ( .A1(i_setup[8]), .A2(n232), .ZN(n268) );
  INVD0BWP12T30P140 U81 ( .I(i_setup[9]), .ZN(n267) );
  ND2D0BWP12T30P140 U82 ( .A1(n268), .A2(n267), .ZN(n266) );
  NR2D0BWP12T30P140 U83 ( .A1(i_setup[10]), .A2(n266), .ZN(n260) );
  AOI21D0BWP12T30P140 U84 ( .A1(i_setup[10]), .A2(n266), .B(n260), .ZN(n13) );
  MOAI22D0BWP12T30P140 U85 ( .A1(n152), .A2(n13), .B1(i_break), .B2(
        clocks_per_baud[6]), .ZN(n14) );
  AO21D0BWP12T30P140 U86 ( .A1(n15), .A2(n245), .B(n14), .Z(N271) );
  XNR2D0BWP12T30P140 U87 ( .A1(n17), .A2(n16), .ZN(n20) );
  AOI21D0BWP12T30P140 U88 ( .A1(i_setup[6]), .A2(n216), .B(n234), .ZN(n18) );
  MOAI22D0BWP12T30P140 U89 ( .A1(n152), .A2(n18), .B1(i_break), .B2(
        clocks_per_baud[2]), .ZN(n19) );
  AO21D0BWP12T30P140 U90 ( .A1(n20), .A2(n272), .B(n19), .Z(N267) );
  OR2D0BWP12T30P140 U91 ( .A1(n22), .A2(n21), .Z(n257) );
  AO22D0BWP12T30P140 U92 ( .A1(n279), .A2(baud_counter[11]), .B1(
        clocks_per_baud[11]), .B2(n164), .Z(n256) );
  OR2D0BWP12T30P140 U93 ( .A1(n257), .A2(n256), .Z(n150) );
  INVD0BWP12T30P140 U94 ( .I(n34), .ZN(n117) );
  AO22D0BWP12T30P140 U95 ( .A1(n117), .A2(baud_counter[12]), .B1(
        clocks_per_baud[12]), .B2(n164), .Z(n149) );
  OR2D0BWP12T30P140 U96 ( .A1(n150), .A2(n149), .Z(n248) );
  AO22D0BWP12T30P140 U97 ( .A1(n279), .A2(baud_counter[13]), .B1(
        clocks_per_baud[13]), .B2(n274), .Z(n247) );
  OR2D0BWP12T30P140 U98 ( .A1(n248), .A2(n247), .Z(n36) );
  AO22D0BWP12T30P140 U99 ( .A1(n117), .A2(baud_counter[14]), .B1(
        clocks_per_baud[14]), .B2(n164), .Z(n35) );
  XNR2D0BWP12T30P140 U100 ( .A1(n36), .A2(n35), .ZN(n25) );
  INVD0BWP12T30P140 U101 ( .I(i_setup[11]), .ZN(n259) );
  ND2D0BWP12T30P140 U102 ( .A1(n260), .A2(n259), .ZN(n258) );
  NR2D0BWP12T30P140 U103 ( .A1(i_setup[12]), .A2(n258), .ZN(n251) );
  INVD0BWP12T30P140 U104 ( .I(i_setup[13]), .ZN(n250) );
  ND2D0BWP12T30P140 U105 ( .A1(n251), .A2(n250), .ZN(n249) );
  NR2D0BWP12T30P140 U106 ( .A1(i_setup[14]), .A2(n249), .ZN(n226) );
  AOI21D0BWP12T30P140 U107 ( .A1(i_setup[14]), .A2(n249), .B(n226), .ZN(n23)
         );
  MOAI22D0BWP12T30P140 U108 ( .A1(n152), .A2(n23), .B1(n253), .B2(
        clocks_per_baud[10]), .ZN(n24) );
  AO21D0BWP12T30P140 U109 ( .A1(n25), .A2(n245), .B(n24), .Z(N275) );
  ND4D0BWP12T30P140 U110 ( .A1(state[3]), .A2(state[1]), .A3(r_setup[27]), 
        .A4(n27), .ZN(n29) );
  INVD0BWP12T30P140 U111 ( .I(n26), .ZN(n276) );
  NR3D0BWP12T30P140 U112 ( .A1(r_setup[27]), .A2(n276), .A3(n27), .ZN(n166) );
  INVD0BWP12T30P140 U113 ( .I(n166), .ZN(n28) );
  OAI21D0BWP12T30P140 U114 ( .A1(state[2]), .A2(n29), .B(n28), .ZN(N300) );
  NR2D0BWP12T30P140 U115 ( .A1(i_setup[1]), .A2(i_setup[0]), .ZN(n142) );
  INVD0BWP12T30P140 U116 ( .I(n142), .ZN(n30) );
  AOI21D0BWP12T30P140 U117 ( .A1(i_setup[2]), .A2(n30), .B(n157), .ZN(n33) );
  XNR2D0BWP12T30P140 U118 ( .A1(DP_OP_53J1_125_5715_n26), .A2(n31), .ZN(n32)
         );
  MOAI22D0BWP12T30P140 U119 ( .A1(n152), .A2(n33), .B1(n32), .B2(n245), .ZN(
        N263) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(i_setup[9]), .I1(clocks_per_baud[9]), .S(
        o_busy), .Z(n80) );
  OA21D0BWP12T30P140 U121 ( .A1(last_state), .A2(n196), .B(n34), .Z(n163) );
  AO22D0BWP12T30P140 U122 ( .A1(n279), .A2(baud_counter[0]), .B1(
        clocks_per_baud[0]), .B2(n274), .Z(n162) );
  OAI21D0BWP12T30P140 U123 ( .A1(n152), .A2(i_setup[0]), .B(n2), .ZN(N261) );
  OR2D0BWP12T30P140 U124 ( .A1(n36), .A2(n35), .Z(n223) );
  AO22D0BWP12T30P140 U125 ( .A1(n117), .A2(baud_counter[15]), .B1(
        clocks_per_baud[15]), .B2(n274), .Z(n222) );
  OR2D0BWP12T30P140 U126 ( .A1(n223), .A2(n222), .Z(n63) );
  AO22D0BWP12T30P140 U127 ( .A1(n117), .A2(baud_counter[16]), .B1(
        clocks_per_baud[16]), .B2(n164), .Z(n62) );
  OR2D0BWP12T30P140 U128 ( .A1(n63), .A2(n62), .Z(n239) );
  AO22D0BWP12T30P140 U129 ( .A1(n117), .A2(baud_counter[17]), .B1(
        clocks_per_baud[17]), .B2(n274), .Z(n238) );
  OR2D0BWP12T30P140 U130 ( .A1(n239), .A2(n238), .Z(n43) );
  AO22D0BWP12T30P140 U131 ( .A1(n117), .A2(baud_counter[18]), .B1(
        clocks_per_baud[18]), .B2(n164), .Z(n42) );
  XNR2D0BWP12T30P140 U132 ( .A1(n43), .A2(n42), .ZN(n39) );
  INVD0BWP12T30P140 U133 ( .I(i_setup[15]), .ZN(n225) );
  ND2D0BWP12T30P140 U134 ( .A1(n226), .A2(n225), .ZN(n224) );
  NR2D0BWP12T30P140 U135 ( .A1(i_setup[16]), .A2(n224), .ZN(n242) );
  INVD0BWP12T30P140 U136 ( .I(i_setup[17]), .ZN(n241) );
  ND2D0BWP12T30P140 U137 ( .A1(n242), .A2(n241), .ZN(n240) );
  NR2D0BWP12T30P140 U138 ( .A1(i_setup[18]), .A2(n240), .ZN(n210) );
  AOI21D0BWP12T30P140 U139 ( .A1(i_setup[18]), .A2(n240), .B(n210), .ZN(n37)
         );
  MOAI22D0BWP12T30P140 U140 ( .A1(n152), .A2(n37), .B1(n253), .B2(
        clocks_per_baud[14]), .ZN(n38) );
  AO21D0BWP12T30P140 U141 ( .A1(n39), .A2(n272), .B(n38), .Z(N279) );
  ND2D0BWP12T30P140 U142 ( .A1(n269), .A2(i_setup[23]), .ZN(n47) );
  INVD0BWP12T30P140 U143 ( .I(i_setup[19]), .ZN(n209) );
  ND2D0BWP12T30P140 U144 ( .A1(n210), .A2(n209), .ZN(n208) );
  NR2D0BWP12T30P140 U145 ( .A1(i_setup[20]), .A2(n208), .ZN(n202) );
  INVD0BWP12T30P140 U146 ( .I(i_setup[21]), .ZN(n201) );
  ND2D0BWP12T30P140 U147 ( .A1(n202), .A2(n201), .ZN(n200) );
  NR2D0BWP12T30P140 U148 ( .A1(i_setup[22]), .A2(n200), .ZN(n50) );
  INVD0BWP12T30P140 U149 ( .I(i_setup[23]), .ZN(n40) );
  ND3D0BWP12T30P140 U150 ( .A1(n40), .A2(n269), .A3(n50), .ZN(n137) );
  INVD0BWP12T30P140 U151 ( .I(n137), .ZN(n41) );
  AOI21D0BWP12T30P140 U152 ( .A1(n253), .A2(clocks_per_baud[19]), .B(n41), 
        .ZN(n46) );
  OR2D0BWP12T30P140 U153 ( .A1(n43), .A2(n42), .Z(n207) );
  AO22D0BWP12T30P140 U154 ( .A1(n117), .A2(baud_counter[19]), .B1(
        clocks_per_baud[19]), .B2(n274), .Z(n206) );
  OR2D0BWP12T30P140 U155 ( .A1(n207), .A2(n206), .Z(n124) );
  AO22D0BWP12T30P140 U156 ( .A1(n117), .A2(baud_counter[20]), .B1(
        clocks_per_baud[20]), .B2(n164), .Z(n123) );
  OR2D0BWP12T30P140 U157 ( .A1(n124), .A2(n123), .Z(n199) );
  AO22D0BWP12T30P140 U158 ( .A1(n117), .A2(baud_counter[21]), .B1(
        clocks_per_baud[21]), .B2(n164), .Z(n198) );
  OR2D0BWP12T30P140 U159 ( .A1(n199), .A2(n198), .Z(n49) );
  AO22D0BWP12T30P140 U160 ( .A1(n117), .A2(baud_counter[22]), .B1(
        clocks_per_baud[22]), .B2(n164), .Z(n48) );
  OR2D0BWP12T30P140 U161 ( .A1(n49), .A2(n48), .Z(n68) );
  AO22D0BWP12T30P140 U162 ( .A1(n117), .A2(baud_counter[23]), .B1(
        clocks_per_baud[23]), .B2(n274), .Z(n67) );
  XNR2D0BWP12T30P140 U163 ( .A1(n68), .A2(n67), .ZN(n44) );
  ND2D0BWP12T30P140 U164 ( .A1(n44), .A2(n272), .ZN(n45) );
  OAI211D0BWP12T30P140 U165 ( .A1(n47), .A2(n50), .B(n46), .C(n45), .ZN(N284)
         );
  XNR2D0BWP12T30P140 U166 ( .A1(n49), .A2(n48), .ZN(n53) );
  AOI21D0BWP12T30P140 U167 ( .A1(i_setup[22]), .A2(n200), .B(n50), .ZN(n51) );
  MOAI22D0BWP12T30P140 U168 ( .A1(n152), .A2(n51), .B1(n253), .B2(
        clocks_per_baud[18]), .ZN(n52) );
  AO21D0BWP12T30P140 U169 ( .A1(n53), .A2(n272), .B(n52), .Z(N283) );
  ND3D0BWP12T30P140 U170 ( .A1(zero_baud_counter), .A2(n54), .A3(ck_cts), .ZN(
        N59) );
  XNR2D0BWP12T30P140 U171 ( .A1(n56), .A2(n55), .ZN(n59) );
  AOI21D0BWP12T30P140 U172 ( .A1(i_setup[4]), .A2(n155), .B(n218), .ZN(n57) );
  MOAI22D0BWP12T30P140 U173 ( .A1(n152), .A2(n57), .B1(n253), .B2(
        clocks_per_baud[0]), .ZN(n58) );
  AO21D0BWP12T30P140 U174 ( .A1(n59), .A2(n245), .B(n58), .Z(N265) );
  ND2D0BWP12T30P140 U175 ( .A1(i_setup[24]), .A2(n180), .ZN(n60) );
  OAI21D0BWP12T30P140 U176 ( .A1(n180), .A2(n61), .B(n60), .ZN(n95) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(i_setup[26]), .I1(r_setup[26]), .S(o_busy), 
        .Z(n97) );
  AO222D0BWP12T30P140 U178 ( .A1(n180), .A2(i_data[4]), .B1(n141), .B2(
        lcl_data[5]), .C1(lcl_data[4]), .C2(n140), .Z(n110) );
  XNR2D0BWP12T30P140 U179 ( .A1(n63), .A2(n62), .ZN(n66) );
  AOI21D0BWP12T30P140 U180 ( .A1(i_setup[16]), .A2(n224), .B(n242), .ZN(n64)
         );
  MOAI22D0BWP12T30P140 U181 ( .A1(n152), .A2(n64), .B1(n253), .B2(
        clocks_per_baud[12]), .ZN(n65) );
  AO21D0BWP12T30P140 U182 ( .A1(n66), .A2(n245), .B(n65), .Z(N277) );
  AO222D0BWP12T30P140 U183 ( .A1(n180), .A2(i_data[3]), .B1(n141), .B2(
        lcl_data[4]), .C1(lcl_data[3]), .C2(n140), .Z(n111) );
  AO222D0BWP12T30P140 U184 ( .A1(n180), .A2(i_data[1]), .B1(n141), .B2(
        lcl_data[2]), .C1(lcl_data[1]), .C2(n140), .Z(n113) );
  CKMUX2D0BWP12T30P140 U185 ( .I0(i_setup[30]), .I1(r_setup_30), .S(o_busy), 
        .Z(n99) );
  INVD0BWP12T30P140 U186 ( .I(clocks_per_baud[21]), .ZN(n71) );
  OR2D0BWP12T30P140 U187 ( .A1(n68), .A2(n67), .Z(n129) );
  AN2D0BWP12T30P140 U188 ( .A1(n117), .A2(baud_counter[24]), .Z(n128) );
  OR2D0BWP12T30P140 U189 ( .A1(n129), .A2(n128), .Z(n116) );
  AN2D0BWP12T30P140 U190 ( .A1(n117), .A2(baud_counter[25]), .Z(n115) );
  XNR2D0BWP12T30P140 U191 ( .A1(n116), .A2(n115), .ZN(n69) );
  ND2D0BWP12T30P140 U192 ( .A1(n69), .A2(n245), .ZN(n70) );
  OAI211D0BWP12T30P140 U193 ( .A1(n139), .A2(n71), .B(n137), .C(n70), .ZN(N286) );
  INVD0BWP12T30P140 U194 ( .I(clocks_per_baud[23]), .ZN(n122) );
  OR2D0BWP12T30P140 U195 ( .A1(n116), .A2(n115), .Z(n134) );
  AN2D0BWP12T30P140 U196 ( .A1(n117), .A2(baud_counter[26]), .Z(n133) );
  OR2D0BWP12T30P140 U197 ( .A1(n134), .A2(n133), .Z(n119) );
  AN2D0BWP12T30P140 U198 ( .A1(n117), .A2(baud_counter[27]), .Z(n118) );
  XNR2D0BWP12T30P140 U199 ( .A1(n119), .A2(n118), .ZN(n120) );
  ND2D0BWP12T30P140 U200 ( .A1(n120), .A2(n245), .ZN(n121) );
  OAI211D0BWP12T30P140 U201 ( .A1(n139), .A2(n122), .B(n137), .C(n121), .ZN(
        N288) );
  AO222D0BWP12T30P140 U202 ( .A1(n180), .A2(i_data[2]), .B1(n141), .B2(
        lcl_data[3]), .C1(lcl_data[2]), .C2(n140), .Z(n112) );
  XNR2D0BWP12T30P140 U203 ( .A1(n124), .A2(n123), .ZN(n127) );
  AOI21D0BWP12T30P140 U204 ( .A1(i_setup[20]), .A2(n208), .B(n202), .ZN(n125)
         );
  MOAI22D0BWP12T30P140 U205 ( .A1(n152), .A2(n125), .B1(i_break), .B2(
        clocks_per_baud[16]), .ZN(n126) );
  AO21D0BWP12T30P140 U206 ( .A1(n127), .A2(n272), .B(n126), .Z(N281) );
  INVD0BWP12T30P140 U207 ( .I(clocks_per_baud[20]), .ZN(n132) );
  XNR2D0BWP12T30P140 U208 ( .A1(n129), .A2(n128), .ZN(n130) );
  ND2D0BWP12T30P140 U209 ( .A1(n130), .A2(n272), .ZN(n131) );
  OAI211D0BWP12T30P140 U210 ( .A1(n139), .A2(n132), .B(n137), .C(n131), .ZN(
        N285) );
  INVD0BWP12T30P140 U211 ( .I(clocks_per_baud[22]), .ZN(n138) );
  XNR2D0BWP12T30P140 U212 ( .A1(n134), .A2(n133), .ZN(n135) );
  ND2D0BWP12T30P140 U213 ( .A1(n135), .A2(n272), .ZN(n136) );
  OAI211D0BWP12T30P140 U214 ( .A1(n139), .A2(n138), .B(n137), .C(n136), .ZN(
        N287) );
  AO222D0BWP12T30P140 U215 ( .A1(n180), .A2(i_data[5]), .B1(n141), .B2(
        lcl_data[6]), .C1(lcl_data[5]), .C2(n140), .Z(n109) );
  AO22D0BWP12T30P140 U216 ( .A1(lcl_data[7]), .A2(n140), .B1(i_data[7]), .B2(
        n180), .Z(n107) );
  AO222D0BWP12T30P140 U217 ( .A1(n180), .A2(i_data[6]), .B1(n141), .B2(
        lcl_data[7]), .C1(lcl_data[6]), .C2(n140), .Z(n108) );
  AOI21D0BWP12T30P140 U218 ( .A1(i_setup[0]), .A2(i_setup[1]), .B(n142), .ZN(
        n143) );
  MOAI22D0BWP12T30P140 U219 ( .A1(n152), .A2(n143), .B1(C22_DATA4_1), .B2(n245), .ZN(N262) );
  XNR2D0BWP12T30P140 U220 ( .A1(n145), .A2(n144), .ZN(n148) );
  AOI21D0BWP12T30P140 U221 ( .A1(i_setup[8]), .A2(n232), .B(n268), .ZN(n146)
         );
  MOAI22D0BWP12T30P140 U222 ( .A1(n152), .A2(n146), .B1(n253), .B2(
        clocks_per_baud[4]), .ZN(n147) );
  AO21D0BWP12T30P140 U223 ( .A1(n148), .A2(n272), .B(n147), .Z(N269) );
  XNR2D0BWP12T30P140 U224 ( .A1(n150), .A2(n149), .ZN(n154) );
  AOI21D0BWP12T30P140 U225 ( .A1(i_setup[12]), .A2(n258), .B(n251), .ZN(n151)
         );
  MOAI22D0BWP12T30P140 U226 ( .A1(n152), .A2(n151), .B1(i_break), .B2(
        clocks_per_baud[8]), .ZN(n153) );
  AO21D0BWP12T30P140 U227 ( .A1(n154), .A2(n272), .B(n153), .Z(N273) );
  OAI21D0BWP12T30P140 U228 ( .A1(n157), .A2(n156), .B(n155), .ZN(n161) );
  XNR2D0BWP12T30P140 U229 ( .A1(n159), .A2(n158), .ZN(n160) );
  AO22D0BWP12T30P140 U230 ( .A1(n161), .A2(n269), .B1(n160), .B2(n272), .Z(
        N264) );
  OR2D0BWP12T30P140 U231 ( .A1(n163), .A2(n162), .Z(DP_OP_53J1_125_5715_n27)
         );
  AO22D0BWP12T30P140 U232 ( .A1(n279), .A2(baud_counter[1]), .B1(
        clocks_per_baud[1]), .B2(n164), .Z(U2_RSOP_45_C1_Z_1) );
  CKMUX2D0BWP12T30P140 U233 ( .I0(i_setup[4]), .I1(clocks_per_baud[4]), .S(
        n288), .Z(n75) );
  CKMUX2D0BWP12T30P140 U234 ( .I0(i_setup[2]), .I1(clocks_per_baud[2]), .S(
        n288), .Z(n73) );
  CKMUX2D0BWP12T30P140 U235 ( .I0(i_setup[1]), .I1(clocks_per_baud[1]), .S(
        o_busy), .Z(n72) );
  CKMUX2D0BWP12T30P140 U236 ( .I0(i_setup[3]), .I1(clocks_per_baud[3]), .S(
        o_busy), .Z(n74) );
  CKMUX2D0BWP12T30P140 U237 ( .I0(i_setup[5]), .I1(clocks_per_baud[5]), .S(
        o_busy), .Z(n76) );
  CKMUX2D0BWP12T30P140 U238 ( .I0(i_setup[27]), .I1(r_setup[27]), .S(o_busy), 
        .Z(n98) );
  CKMUX2D0BWP12T30P140 U239 ( .I0(i_setup[6]), .I1(clocks_per_baud[6]), .S(
        n288), .Z(n77) );
  ND2D0BWP12T30P140 U240 ( .A1(state[0]), .A2(n165), .ZN(n194) );
  AOI22D0BWP12T30P140 U241 ( .A1(n275), .A2(n197), .B1(state[2]), .B2(n194), 
        .ZN(n168) );
  AOI21D0BWP12T30P140 U242 ( .A1(state[0]), .A2(state[1]), .B(state[2]), .ZN(
        n167) );
  ND2D0BWP12T30P140 U243 ( .A1(n274), .A2(n166), .ZN(n191) );
  OAI211D0BWP12T30P140 U244 ( .A1(n168), .A2(n167), .B(n187), .C(n191), .ZN(
        n104) );
  CKMUX2D0BWP12T30P140 U245 ( .I0(i_setup[8]), .I1(clocks_per_baud[8]), .S(
        n288), .Z(n79) );
  CKMUX2D0BWP12T30P140 U246 ( .I0(i_setup[10]), .I1(clocks_per_baud[10]), .S(
        n288), .Z(n81) );
  CKMUX2D0BWP12T30P140 U247 ( .I0(i_setup[12]), .I1(clocks_per_baud[12]), .S(
        o_busy), .Z(n83) );
  CKMUX2D0BWP12T30P140 U248 ( .I0(i_setup[14]), .I1(clocks_per_baud[14]), .S(
        o_busy), .Z(n85) );
  INVD0BWP12T30P140 U249 ( .I(n169), .ZN(n184) );
  NR4D0BWP12T30P140 U250 ( .A1(baud_counter[2]), .A2(baud_counter[22]), .A3(
        baud_counter[23]), .A4(baud_counter[24]), .ZN(n170) );
  IND3D1BWP12T30P140 U251 ( .A1(baud_counter[25]), .B1(baud_counter[0]), .B2(
        n170), .ZN(n176) );
  NR4D0BWP12T30P140 U252 ( .A1(baud_counter[7]), .A2(baud_counter[9]), .A3(
        baud_counter[10]), .A4(baud_counter[8]), .ZN(n172) );
  NR4D0BWP12T30P140 U253 ( .A1(baud_counter[3]), .A2(baud_counter[12]), .A3(
        baud_counter[13]), .A4(baud_counter[6]), .ZN(n171) );
  OAI211D0BWP12T30P140 U254 ( .A1(n174), .A2(n173), .B(n172), .C(n171), .ZN(
        n175) );
  NR4D0BWP12T30P140 U255 ( .A1(baud_counter[27]), .A2(baud_counter[1]), .A3(
        n176), .A4(n175), .ZN(n182) );
  NR4D0BWP12T30P140 U256 ( .A1(baud_counter[15]), .A2(baud_counter[16]), .A3(
        baud_counter[17]), .A4(baud_counter[18]), .ZN(n178) );
  NR4D0BWP12T30P140 U257 ( .A1(baud_counter[19]), .A2(baud_counter[4]), .A3(
        baud_counter[5]), .A4(baud_counter[26]), .ZN(n177) );
  IIND4D0BWP12T30P140 U258 ( .A1(baud_counter[11]), .A2(baud_counter[20]), 
        .B1(n178), .B2(n177), .ZN(n179) );
  NR4D0BWP12T30P140 U259 ( .A1(n253), .A2(baud_counter[14]), .A3(
        baud_counter[21]), .A4(n179), .ZN(n181) );
  ND2D0BWP12T30P140 U260 ( .A1(i_wr), .A2(n180), .ZN(n281) );
  AOI22D0BWP12T30P140 U261 ( .A1(n182), .A2(n181), .B1(n190), .B2(n281), .ZN(
        n183) );
  OAI31D0BWP12T30P140 U262 ( .A1(state[0]), .A2(n185), .A3(n184), .B(n183), 
        .ZN(N290) );
  CKMUX2D0BWP12T30P140 U263 ( .I0(i_setup[16]), .I1(clocks_per_baud[16]), .S(
        o_busy), .Z(n87) );
  CKMUX2D0BWP12T30P140 U264 ( .I0(i_setup[18]), .I1(clocks_per_baud[18]), .S(
        n288), .Z(n89) );
  CKMUX2D0BWP12T30P140 U265 ( .I0(i_setup[0]), .I1(clocks_per_baud[0]), .S(
        n288), .Z(n100) );
  ND2D0BWP12T30P140 U266 ( .A1(n275), .A2(state[0]), .ZN(n188) );
  AOI22D0BWP12T30P140 U267 ( .A1(state[1]), .A2(n194), .B1(n190), .B2(
        i_setup[29]), .ZN(n186) );
  OAI211D0BWP12T30P140 U268 ( .A1(state[1]), .A2(n188), .B(n187), .C(n186), 
        .ZN(n105) );
  CKMUX2D0BWP12T30P140 U269 ( .I0(i_setup[20]), .I1(clocks_per_baud[20]), .S(
        n288), .Z(n91) );
  CKMUX2D0BWP12T30P140 U270 ( .I0(i_setup[7]), .I1(clocks_per_baud[7]), .S(
        o_busy), .Z(n78) );
  CKMUX2D0BWP12T30P140 U271 ( .I0(i_setup[22]), .I1(clocks_per_baud[22]), .S(
        n288), .Z(n93) );
  CKMUX2D0BWP12T30P140 U272 ( .I0(i_setup[21]), .I1(clocks_per_baud[21]), .S(
        n288), .Z(n92) );
  AOI21D0BWP12T30P140 U273 ( .A1(i_setup[28]), .A2(n190), .B(n189), .ZN(n192)
         );
  ND2D0BWP12T30P140 U274 ( .A1(n192), .A2(n191), .ZN(n193) );
  AOI221D0BWP12T30P140 U275 ( .A1(n275), .A2(n194), .B1(state[0]), .B2(n194), 
        .C(n193), .ZN(n195) );
  OAI31D0BWP12T30P140 U276 ( .A1(r_setup[26]), .A2(n197), .A3(n196), .B(n195), 
        .ZN(n106) );
  CKMUX2D0BWP12T30P140 U277 ( .I0(i_setup[23]), .I1(clocks_per_baud[23]), .S(
        n288), .Z(n94) );
  CKBD0BWP12T30P140 U278 ( .I(i_clk), .Z(n285) );
  CKBD0BWP12T30P140 U279 ( .I(i_clk), .Z(n284) );
  CKBD0BWP12T30P140 U280 ( .I(i_clk), .Z(n283) );
  CKBD0BWP12T30P140 U281 ( .I(i_clk), .Z(n286) );
  XNR2D0BWP12T30P140 U282 ( .A1(n199), .A2(n198), .ZN(n205) );
  OAI21D0BWP12T30P140 U283 ( .A1(n202), .A2(n201), .B(n200), .ZN(n203) );
  AOI22D0BWP12T30P140 U284 ( .A1(i_break), .A2(clocks_per_baud[17]), .B1(n203), 
        .B2(n269), .ZN(n204) );
  IOA21D0BWP12T30P140 U285 ( .A1(n205), .A2(n245), .B(n204), .ZN(N282) );
  XNR2D0BWP12T30P140 U286 ( .A1(n207), .A2(n206), .ZN(n213) );
  OAI21D0BWP12T30P140 U287 ( .A1(n210), .A2(n209), .B(n208), .ZN(n211) );
  AOI22D0BWP12T30P140 U288 ( .A1(n253), .A2(clocks_per_baud[15]), .B1(n211), 
        .B2(n269), .ZN(n212) );
  IOA21D0BWP12T30P140 U289 ( .A1(n213), .A2(n245), .B(n212), .ZN(N280) );
  XNR2D0BWP12T30P140 U290 ( .A1(n215), .A2(n214), .ZN(n221) );
  OAI21D0BWP12T30P140 U291 ( .A1(n218), .A2(n217), .B(n216), .ZN(n219) );
  AOI22D0BWP12T30P140 U292 ( .A1(i_break), .A2(clocks_per_baud[1]), .B1(n219), 
        .B2(n269), .ZN(n220) );
  IOA21D0BWP12T30P140 U293 ( .A1(n221), .A2(n245), .B(n220), .ZN(N266) );
  XNR2D0BWP12T30P140 U294 ( .A1(n223), .A2(n222), .ZN(n229) );
  OAI21D0BWP12T30P140 U295 ( .A1(n226), .A2(n225), .B(n224), .ZN(n227) );
  AOI22D0BWP12T30P140 U296 ( .A1(i_break), .A2(clocks_per_baud[11]), .B1(n227), 
        .B2(n269), .ZN(n228) );
  IOA21D0BWP12T30P140 U297 ( .A1(n229), .A2(n272), .B(n228), .ZN(N276) );
  XNR2D0BWP12T30P140 U298 ( .A1(n231), .A2(n230), .ZN(n237) );
  OAI21D0BWP12T30P140 U299 ( .A1(n234), .A2(n233), .B(n232), .ZN(n235) );
  AOI22D0BWP12T30P140 U300 ( .A1(n253), .A2(clocks_per_baud[3]), .B1(n235), 
        .B2(n269), .ZN(n236) );
  IOA21D0BWP12T30P140 U301 ( .A1(n237), .A2(n245), .B(n236), .ZN(N268) );
  XNR2D0BWP12T30P140 U302 ( .A1(n239), .A2(n238), .ZN(n246) );
  OAI21D0BWP12T30P140 U303 ( .A1(n242), .A2(n241), .B(n240), .ZN(n243) );
  AOI22D0BWP12T30P140 U304 ( .A1(n253), .A2(clocks_per_baud[13]), .B1(n243), 
        .B2(n269), .ZN(n244) );
  IOA21D0BWP12T30P140 U305 ( .A1(n246), .A2(n245), .B(n244), .ZN(N278) );
  XNR2D0BWP12T30P140 U306 ( .A1(n248), .A2(n247), .ZN(n255) );
  OAI21D0BWP12T30P140 U307 ( .A1(n251), .A2(n250), .B(n249), .ZN(n252) );
  AOI22D0BWP12T30P140 U308 ( .A1(n253), .A2(clocks_per_baud[9]), .B1(n252), 
        .B2(n269), .ZN(n254) );
  IOA21D0BWP12T30P140 U309 ( .A1(n255), .A2(n272), .B(n254), .ZN(N274) );
  XNR2D0BWP12T30P140 U310 ( .A1(n257), .A2(n256), .ZN(n263) );
  OAI21D0BWP12T30P140 U311 ( .A1(n260), .A2(n259), .B(n258), .ZN(n261) );
  AOI22D0BWP12T30P140 U312 ( .A1(i_break), .A2(clocks_per_baud[7]), .B1(n261), 
        .B2(n269), .ZN(n262) );
  IOA21D0BWP12T30P140 U313 ( .A1(n263), .A2(n272), .B(n262), .ZN(N272) );
  XNR2D0BWP12T30P140 U314 ( .A1(n265), .A2(n264), .ZN(n273) );
  OAI21D0BWP12T30P140 U315 ( .A1(n268), .A2(n267), .B(n266), .ZN(n270) );
  AOI22D0BWP12T30P140 U316 ( .A1(i_break), .A2(clocks_per_baud[5]), .B1(n270), 
        .B2(n269), .ZN(n271) );
  IOA21D0BWP12T30P140 U317 ( .A1(n273), .A2(n272), .B(n271), .ZN(N270) );
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
  wire   n_0_net_, rx_stb, rx_perr, rx_uart_reset, n_1_net_, rx_empty_n,
         rxf_wb_read, N10, N11, N30, N33, txf_wb_write, n_2_net_, tx_empty_n,
         n_3_net_, tx_busy, tx_uart_reset, N42, wb_tx_data_12, wb_tx_data_11,
         wb_tx_data_9_, r_wb_ack, N75, N76, N77, N78, N79, N80, N81, N82, n143,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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
  wire   [1:0] r_wb_addr;

  rxuart_00000019 rx ( .i_clk(n137), .i_reset(n_0_net_), .i_setup(uart_setup), 
        .i_uart_rx(i_uart_rx), .o_wr(rx_stb), .o_data(rx_uart_data), .o_break(
        wb_rx_data[11]), .o_parity_err(rx_perr), .o_frame_err(wb_rx_data[10]), 
        .o_ck_uart(wb_tx_data_11) );
  ufifo_4_1 rxfifo ( .i_clk(n138), .i_rst(n_1_net_), .i_wr(rx_stb), .i_data(
        rx_uart_data), .o_empty_n(rx_empty_n), .i_rd(rxf_wb_read), .o_data(
        rxf_wb_data), .o_status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, rxf_status, o_uart_rxfifo_int, o_uart_rx_int}), .o_err(wb_rx_data[12]) );
  ufifo_4_0 txfifo ( .i_clk(n138), .i_rst(n_2_net_), .i_wr(txf_wb_write), 
        .i_data(txf_wb_data), .o_empty_n(tx_empty_n), .i_rd(n_3_net_), 
        .o_data(tx_data), .o_status({SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, txf_status, o_uart_txfifo_int, o_uart_tx_int}), .o_err(wb_tx_data_12) );
  txuart_00000019 tx ( .i_clk(n137), .i_reset(n143), .i_setup(uart_setup), 
        .i_break(wb_tx_data_9_), .i_wr(tx_empty_n), .i_data(tx_data), 
        .i_cts_n(i_cts_n), .o_uart_tx(o_uart_tx), .o_busy(tx_busy) );
  DFQD2BWP12T30P140 o_wb_data_reg_31_ ( .D(n143), .CP(n138), .Q(o_wb_data[31])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_17_ ( .D(n77), .CP(n142), .Q(o_wb_data[17])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_16_ ( .D(n78), .CP(n142), .Q(o_wb_data[16])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_15_ ( .D(n79), .CP(n142), .Q(o_wb_data[15])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_14_ ( .D(n80), .CP(n142), .Q(o_wb_data[14])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_13_ ( .D(n81), .CP(n142), .Q(o_wb_data[13])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_12_ ( .D(n82), .CP(n142), .Q(o_wb_data[12])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_11_ ( .D(n83), .CP(n142), .Q(o_wb_data[11])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_10_ ( .D(n84), .CP(n142), .Q(o_wb_data[10])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_9_ ( .D(n85), .CP(n142), .Q(o_wb_data[9]) );
  DFQD2BWP12T30P140 o_wb_data_reg_8_ ( .D(n86), .CP(n142), .Q(o_wb_data[8]) );
  DFQD2BWP12T30P140 o_wb_data_reg_7_ ( .D(n87), .CP(n142), .Q(o_wb_data[7]) );
  DFQD2BWP12T30P140 o_wb_data_reg_6_ ( .D(n88), .CP(n142), .Q(o_wb_data[6]) );
  DFQD2BWP12T30P140 o_wb_data_reg_5_ ( .D(n89), .CP(n142), .Q(o_wb_data[5]) );
  DFQD2BWP12T30P140 o_wb_data_reg_3_ ( .D(n91), .CP(n142), .Q(o_wb_data[3]) );
  DFQD2BWP12T30P140 o_wb_data_reg_2_ ( .D(n92), .CP(n142), .Q(o_wb_data[2]) );
  DFQD2BWP12T30P140 o_wb_data_reg_1_ ( .D(n93), .CP(n142), .Q(o_wb_data[1]) );
  DFQD2BWP12T30P140 o_wb_data_reg_0_ ( .D(n94), .CP(n142), .Q(o_wb_data[0]) );
  DFQD2BWP12T30P140 o_rts_n_reg ( .D(N10), .CP(n140), .Q(o_rts_n) );
  DFQD2BWP12T30P140 o_wb_ack_reg ( .D(r_wb_ack), .CP(n141), .Q(o_wb_ack) );
  DFQD2BWP12T30P140 o_wb_data_reg_30_ ( .D(n72), .CP(n141), .Q(o_wb_data[30])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_29_ ( .D(N82), .CP(n141), .Q(o_wb_data[29])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_28_ ( .D(N81), .CP(n141), .Q(o_wb_data[28])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_27_ ( .D(N80), .CP(n141), .Q(o_wb_data[27])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_26_ ( .D(N79), .CP(n141), .Q(o_wb_data[26])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_25_ ( .D(N78), .CP(n141), .Q(o_wb_data[25])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_24_ ( .D(N77), .CP(n141), .Q(o_wb_data[24])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_23_ ( .D(N76), .CP(n141), .Q(o_wb_data[23])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_21_ ( .D(n73), .CP(n141), .Q(o_wb_data[21])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_20_ ( .D(n74), .CP(n141), .Q(o_wb_data[20])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_19_ ( .D(n75), .CP(n141), .Q(o_wb_data[19])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_18_ ( .D(n76), .CP(n141), .Q(o_wb_data[18])
         );
  DFQD2BWP12T30P140 tx_uart_reset_reg ( .D(N42), .CP(n141), .Q(tx_uart_reset)
         );
  DFQD2BWP12T30P140 uart_setup_reg_28_ ( .D(n67), .CP(n138), .Q(uart_setup[28]) );
  DFQD2BWP12T30P140 uart_setup_reg_29_ ( .D(n68), .CP(n138), .Q(uart_setup[29]) );
  DFQD2BWP12T30P140 uart_setup_reg_27_ ( .D(n66), .CP(n138), .Q(uart_setup[27]) );
  DFQD2BWP12T30P140 rx_uart_reset_reg ( .D(N30), .CP(n140), .Q(rx_uart_reset)
         );
  DFQD2BWP12T30P140 r_rx_perr_reg ( .D(n71), .CP(n140), .Q(wb_rx_data[9]) );
  DFQD2BWP12T30P140 r_wb_addr_reg_0_ ( .D(i_wb_addr[0]), .CP(n141), .Q(
        r_wb_addr[0]) );
  DFQD2BWP12T30P140 uart_setup_reg_30_ ( .D(n69), .CP(n140), .Q(uart_setup[30]) );
  DFQD2BWP12T30P140 rxf_wb_read_reg ( .D(N11), .CP(n140), .Q(rxf_wb_read) );
  DFQD2BWP12T30P140 uart_setup_reg_26_ ( .D(n65), .CP(n139), .Q(uart_setup[26]) );
  DFQD2BWP12T30P140 r_wb_ack_reg ( .D(i_wb_stb), .CP(n141), .Q(r_wb_ack) );
  DFQD2BWP12T30P140 r_wb_addr_reg_1_ ( .D(i_wb_addr[1]), .CP(n141), .Q(
        r_wb_addr[1]) );
  DFQD2BWP12T30P140 uart_setup_reg_24_ ( .D(n63), .CP(n139), .Q(uart_setup[24]) );
  DFQD2BWP12T30P140 uart_setup_reg_9_ ( .D(n48), .CP(n139), .Q(uart_setup[9])
         );
  DFQD2BWP12T30P140 uart_setup_reg_7_ ( .D(n46), .CP(n139), .Q(uart_setup[7])
         );
  DFQD2BWP12T30P140 uart_setup_reg_5_ ( .D(n44), .CP(n140), .Q(uart_setup[5])
         );
  DFQD2BWP12T30P140 uart_setup_reg_3_ ( .D(n42), .CP(n140), .Q(uart_setup[3])
         );
  DFQD2BWP12T30P140 uart_setup_reg_11_ ( .D(n50), .CP(n139), .Q(uart_setup[11]) );
  DFQD2BWP12T30P140 uart_setup_reg_21_ ( .D(n60), .CP(n139), .Q(uart_setup[21]) );
  DFQD2BWP12T30P140 uart_setup_reg_19_ ( .D(n58), .CP(n139), .Q(uart_setup[19]) );
  DFQD2BWP12T30P140 uart_setup_reg_17_ ( .D(n56), .CP(n139), .Q(uart_setup[17]) );
  DFQD2BWP12T30P140 uart_setup_reg_15_ ( .D(n54), .CP(n139), .Q(uart_setup[15]) );
  DFQD2BWP12T30P140 uart_setup_reg_13_ ( .D(n52), .CP(n139), .Q(uart_setup[13]) );
  DFQD2BWP12T30P140 uart_setup_reg_6_ ( .D(n45), .CP(n140), .Q(uart_setup[6])
         );
  DFQD2BWP12T30P140 uart_setup_reg_12_ ( .D(n51), .CP(n139), .Q(uart_setup[12]) );
  DFQD2BWP12T30P140 uart_setup_reg_14_ ( .D(n53), .CP(n139), .Q(uart_setup[14]) );
  DFQD2BWP12T30P140 uart_setup_reg_8_ ( .D(n47), .CP(n139), .Q(uart_setup[8])
         );
  DFQD2BWP12T30P140 uart_setup_reg_22_ ( .D(n61), .CP(n139), .Q(uart_setup[22]) );
  DFQD2BWP12T30P140 uart_setup_reg_10_ ( .D(n49), .CP(n139), .Q(uart_setup[10]) );
  DFQD2BWP12T30P140 uart_setup_reg_2_ ( .D(n41), .CP(n140), .Q(uart_setup[2])
         );
  DFQD2BWP12T30P140 uart_setup_reg_20_ ( .D(n59), .CP(n139), .Q(uart_setup[20]) );
  DFQD2BWP12T30P140 uart_setup_reg_18_ ( .D(n57), .CP(n139), .Q(uart_setup[18]) );
  DFQD2BWP12T30P140 uart_setup_reg_16_ ( .D(n55), .CP(n139), .Q(uart_setup[16]) );
  DFQD2BWP12T30P140 uart_setup_reg_23_ ( .D(n62), .CP(n139), .Q(uart_setup[23]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_7_ ( .D(i_wb_data[7]), .CP(n140), .Q(
        txf_wb_data[7]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_6_ ( .D(i_wb_data[6]), .CP(n140), .Q(
        txf_wb_data[6]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_5_ ( .D(i_wb_data[5]), .CP(n140), .Q(
        txf_wb_data[5]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_4_ ( .D(i_wb_data[4]), .CP(n140), .Q(
        txf_wb_data[4]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_2_ ( .D(i_wb_data[2]), .CP(n140), .Q(
        txf_wb_data[2]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_1_ ( .D(i_wb_data[1]), .CP(n140), .Q(
        txf_wb_data[1]) );
  DFQD2BWP12T30P140 txf_wb_data_reg_0_ ( .D(i_wb_data[0]), .CP(n141), .Q(
        txf_wb_data[0]) );
  DFQD2BWP12T30P140 uart_setup_reg_1_ ( .D(n40), .CP(n140), .Q(uart_setup[1])
         );
  DFQD2BWP12T30P140 uart_setup_reg_0_ ( .D(n39), .CP(n140), .Q(uart_setup[0])
         );
  DFQD2BWP12T30P140 txf_wb_write_reg ( .D(N33), .CP(n140), .Q(txf_wb_write) );
  DFQD2BWP12T30P140 r_tx_break_reg ( .D(n70), .CP(n141), .Q(wb_tx_data_9_) );
  DFQD1BWP12T30P140 o_wb_data_reg_4_ ( .D(n90), .CP(n142), .Q(o_wb_data[4]) );
  DFQD1BWP12T30P140 o_wb_data_reg_22_ ( .D(N75), .CP(n141), .Q(o_wb_data[22])
         );
  DFQD1BWP12T30P140 uart_setup_reg_25_ ( .D(n64), .CP(n139), .Q(uart_setup[25]) );
  DFQD1BWP12T30P140 uart_setup_reg_4_ ( .D(n43), .CP(n140), .Q(uart_setup[4])
         );
  DFQD1BWP12T30P140 txf_wb_data_reg_3_ ( .D(i_wb_data[3]), .CP(n140), .Q(
        txf_wb_data[3]) );
  TIEHBWP12T30P140 U112 ( .Z(n96) );
  INVD1BWP12T30P140 U113 ( .I(n96), .ZN(o_wb_stall) );
  TIELBWP12T30P140 U114 ( .ZN(n143) );
  OR2D0BWP12T30P140 U115 ( .A1(rx_uart_reset), .A2(i_rst), .Z(n_0_net_) );
  OR2D0BWP12T30P140 U116 ( .A1(wb_rx_data[11]), .A2(n_0_net_), .Z(n_1_net_) );
  INVD0BWP12T30P140 U117 ( .I(i_wb_addr[0]), .ZN(n104) );
  IND4D1BWP12T30P140 U118 ( .A1(i_wb_addr[1]), .B1(n104), .B2(i_wb_we), .B3(
        i_wb_stb), .ZN(n116) );
  INVD0BWP12T30P140 U119 ( .I(n116), .ZN(n114) );
  INVD0BWP12T30P140 U120 ( .I(n114), .ZN(n115) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(i_wb_data[14]), .I1(uart_setup[14]), .S(n115), .Z(n53) );
  INVD0BWP12T30P140 U122 ( .I(r_wb_addr[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U123 ( .A1(n105), .A2(r_wb_addr[1]), .ZN(n109) );
  INVD0BWP12T30P140 U124 ( .I(n109), .ZN(n130) );
  INVD0BWP12T30P140 U125 ( .I(r_wb_addr[1]), .ZN(n134) );
  NR2D0BWP12T30P140 U126 ( .A1(n134), .A2(n105), .ZN(n110) );
  OA21D0BWP12T30P140 U127 ( .A1(o_uart_tx_int), .A2(tx_busy), .B(n110), .Z(
        n128) );
  NR2D0BWP12T30P140 U128 ( .A1(r_wb_addr[1]), .A2(r_wb_addr[0]), .ZN(n125) );
  AO222D0BWP12T30P140 U129 ( .A1(n130), .A2(rxf_wb_data[6]), .B1(n128), .B2(
        txf_wb_data[6]), .C1(uart_setup[6]), .C2(n125), .Z(n88) );
  INVD0BWP12T30P140 U130 ( .I(i_wb_data[12]), .ZN(n101) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n114), .A2(n101), .B1(uart_setup[12]), .B2(
        n114), .ZN(n51) );
  OA22D0BWP12T30P140 U132 ( .A1(n115), .A2(i_wb_data[4]), .B1(uart_setup[4]), 
        .B2(n114), .Z(n43) );
  OA22D0BWP12T30P140 U133 ( .A1(n115), .A2(i_wb_data[6]), .B1(uart_setup[6]), 
        .B2(n114), .Z(n45) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(i_wb_data[13]), .I1(uart_setup[13]), .S(n115), .Z(n52) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(i_wb_data[15]), .I1(uart_setup[15]), .S(n115), .Z(n54) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(i_wb_data[17]), .I1(uart_setup[17]), .S(n115), .Z(n56) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(i_wb_data[19]), .I1(uart_setup[19]), .S(n116), .Z(n58) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(i_wb_data[21]), .I1(uart_setup[21]), .S(n116), .Z(n60) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(i_wb_data[11]), .I1(uart_setup[11]), .S(n115), .Z(n50) );
  OA22D0BWP12T30P140 U140 ( .A1(n115), .A2(i_wb_data[3]), .B1(uart_setup[3]), 
        .B2(n114), .Z(n42) );
  OA22D0BWP12T30P140 U141 ( .A1(n115), .A2(i_wb_data[5]), .B1(uart_setup[5]), 
        .B2(n114), .Z(n44) );
  OA22D0BWP12T30P140 U142 ( .A1(n115), .A2(i_wb_data[7]), .B1(uart_setup[7]), 
        .B2(n114), .Z(n46) );
  INVD0BWP12T30P140 U143 ( .I(i_wb_data[9]), .ZN(n107) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n114), .A2(n107), .B1(uart_setup[9]), .B2(
        n114), .ZN(n48) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(i_wb_data[24]), .I1(uart_setup[24]), .S(n116), .Z(n63) );
  INVD0BWP12T30P140 U146 ( .I(uart_setup[30]), .ZN(n97) );
  AN4D0BWP12T30P140 U147 ( .A1(rxf_status[4]), .A2(rxf_status[3]), .A3(
        rxf_status[5]), .A4(n97), .Z(N10) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(i_wb_data[25]), .I1(uart_setup[25]), .S(n116), .Z(n64) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(i_wb_data[26]), .I1(uart_setup[26]), .S(n116), .Z(n65) );
  AOI21D0BWP12T30P140 U150 ( .A1(n105), .A2(n97), .B(r_wb_addr[1]), .ZN(n72)
         );
  CKMUX2D0BWP12T30P140 U151 ( .I0(i_wb_data[30]), .I1(uart_setup[30]), .S(n115), .Z(n69) );
  ND4D0BWP12T30P140 U152 ( .A1(i_wb_we), .A2(i_wb_addr[1]), .A3(i_wb_stb), 
        .A4(n104), .ZN(n102) );
  ND3D0BWP12T30P140 U153 ( .A1(n102), .A2(rx_perr), .A3(rx_stb), .ZN(n99) );
  OAI21D0BWP12T30P140 U154 ( .A1(n102), .A2(n107), .B(wb_rx_data[9]), .ZN(n98)
         );
  AOI211D0BWP12T30P140 U155 ( .A1(n99), .A2(n98), .B(wb_rx_data[11]), .C(
        rx_uart_reset), .ZN(n71) );
  AN2D0BWP12T30P140 U156 ( .A1(n125), .A2(uart_setup[29]), .Z(N82) );
  NR2D0BWP12T30P140 U157 ( .A1(i_rst), .A2(n114), .ZN(n100) );
  OAI21D0BWP12T30P140 U158 ( .A1(n102), .A2(n101), .B(n100), .ZN(N30) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(i_wb_data[27]), .I1(uart_setup[27]), .S(n116), .Z(n66) );
  AN2D0BWP12T30P140 U160 ( .A1(n125), .A2(uart_setup[28]), .Z(N81) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(i_wb_data[29]), .I1(uart_setup[29]), .S(n116), .Z(n68) );
  CKMUX2D0BWP12T30P140 U162 ( .I0(i_wb_data[28]), .I1(uart_setup[28]), .S(n116), .Z(n67) );
  AN2D0BWP12T30P140 U163 ( .A1(n125), .A2(uart_setup[27]), .Z(N80) );
  ND3D0BWP12T30P140 U164 ( .A1(i_wb_we), .A2(i_wb_addr[1]), .A3(i_wb_stb), 
        .ZN(n103) );
  NR2D0BWP12T30P140 U165 ( .A1(n104), .A2(n103), .ZN(N33) );
  AO211D0BWP12T30P140 U166 ( .A1(N33), .A2(i_wb_data[12]), .B(i_rst), .C(n114), 
        .Z(N42) );
  NR2D0BWP12T30P140 U167 ( .A1(r_wb_addr[1]), .A2(n105), .ZN(n136) );
  AO22D0BWP12T30P140 U168 ( .A1(n136), .A2(txf_status[2]), .B1(n125), .B2(
        uart_setup[18]), .Z(n76) );
  CKBD0BWP12T30P140 U169 ( .I(n125), .Z(n129) );
  AO22D0BWP12T30P140 U170 ( .A1(n136), .A2(txf_status[3]), .B1(n129), .B2(
        uart_setup[19]), .Z(n75) );
  AN2D0BWP12T30P140 U171 ( .A1(n129), .A2(uart_setup[26]), .Z(N79) );
  AO22D0BWP12T30P140 U172 ( .A1(n136), .A2(txf_status[4]), .B1(n125), .B2(
        uart_setup[20]), .Z(n74) );
  AO22D0BWP12T30P140 U173 ( .A1(n136), .A2(txf_status[5]), .B1(n129), .B2(
        uart_setup[21]), .Z(n73) );
  AN2D0BWP12T30P140 U174 ( .A1(n129), .A2(uart_setup[25]), .Z(N78) );
  AN2D0BWP12T30P140 U175 ( .A1(n129), .A2(uart_setup[22]), .Z(N75) );
  AN2D0BWP12T30P140 U176 ( .A1(n129), .A2(uart_setup[23]), .Z(N76) );
  AN2D0BWP12T30P140 U177 ( .A1(n125), .A2(uart_setup[24]), .Z(N77) );
  AO22D0BWP12T30P140 U178 ( .A1(n129), .A2(uart_setup[15]), .B1(n110), .B2(
        i_cts_n), .Z(n79) );
  INVD0BWP12T30P140 U179 ( .I(N33), .ZN(n106) );
  INVD0BWP12T30P140 U180 ( .I(wb_tx_data_9_), .ZN(n113) );
  AOI221D0BWP12T30P140 U181 ( .A1(N33), .A2(n107), .B1(n106), .B2(n113), .C(
        i_rst), .ZN(n70) );
  OR2D0BWP12T30P140 U182 ( .A1(tx_uart_reset), .A2(wb_tx_data_9_), .Z(n_2_net_) );
  AO22D0BWP12T30P140 U183 ( .A1(n136), .A2(o_uart_tx_int), .B1(n129), .B2(
        uart_setup[16]), .Z(n78) );
  OA22D0BWP12T30P140 U184 ( .A1(n115), .A2(i_wb_data[0]), .B1(uart_setup[0]), 
        .B2(n114), .Z(n39) );
  AO22D0BWP12T30P140 U185 ( .A1(n125), .A2(uart_setup[13]), .B1(n110), .B2(
        o_uart_tx_int), .Z(n81) );
  OA22D0BWP12T30P140 U186 ( .A1(n115), .A2(i_wb_data[1]), .B1(uart_setup[1]), 
        .B2(n114), .Z(n40) );
  AO222D0BWP12T30P140 U187 ( .A1(n130), .A2(wb_rx_data[12]), .B1(n110), .B2(
        wb_tx_data_12), .C1(n125), .C2(uart_setup[12]), .Z(n82) );
  AO22D0BWP12T30P140 U188 ( .A1(n136), .A2(o_uart_txfifo_int), .B1(n125), .B2(
        uart_setup[17]), .Z(n77) );
  AO222D0BWP12T30P140 U189 ( .A1(wb_rx_data[11]), .A2(n130), .B1(n125), .B2(
        uart_setup[11]), .C1(wb_tx_data_11), .C2(n110), .Z(n83) );
  AO222D0BWP12T30P140 U190 ( .A1(n130), .A2(wb_rx_data[10]), .B1(n110), .B2(
        o_uart_tx), .C1(n129), .C2(uart_setup[10]), .Z(n84) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(i_wb_data[20]), .I1(uart_setup[20]), .S(n116), .Z(n59) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(i_wb_data[23]), .I1(uart_setup[23]), .S(n116), .Z(n62) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(i_wb_data[18]), .I1(uart_setup[18]), .S(n116), .Z(n57) );
  AOI21D0BWP12T30P140 U194 ( .A1(n129), .A2(uart_setup[8]), .B(n128), .ZN(n108) );
  OAI21D0BWP12T30P140 U195 ( .A1(rx_empty_n), .A2(n109), .B(n108), .ZN(n86) );
  CKMUX2D0BWP12T30P140 U196 ( .I0(i_wb_data[16]), .I1(uart_setup[16]), .S(n115), .Z(n55) );
  INVD0BWP12T30P140 U197 ( .I(n110), .ZN(n112) );
  AOI22D0BWP12T30P140 U198 ( .A1(wb_rx_data[9]), .A2(n130), .B1(n125), .B2(
        uart_setup[9]), .ZN(n111) );
  OAI21D0BWP12T30P140 U199 ( .A1(n113), .A2(n112), .B(n111), .ZN(n85) );
  CKMUX2D0BWP12T30P140 U200 ( .I0(i_wb_data[8]), .I1(uart_setup[8]), .S(n115), 
        .Z(n47) );
  OA22D0BWP12T30P140 U201 ( .A1(n115), .A2(i_wb_data[2]), .B1(uart_setup[2]), 
        .B2(n114), .Z(n41) );
  AO222D0BWP12T30P140 U202 ( .A1(n130), .A2(rxf_wb_data[7]), .B1(n128), .B2(
        txf_wb_data[7]), .C1(uart_setup[7]), .C2(n129), .Z(n87) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(i_wb_data[10]), .I1(uart_setup[10]), .S(n115), .Z(n49) );
  CKMUX2D0BWP12T30P140 U204 ( .I0(i_wb_data[22]), .I1(uart_setup[22]), .S(n116), .Z(n61) );
  CKBD0BWP12T30P140 U205 ( .I(i_clk), .Z(n142) );
  CKBD0BWP12T30P140 U206 ( .I(i_clk), .Z(n139) );
  CKBD0BWP12T30P140 U207 ( .I(i_clk), .Z(n140) );
  CKBD0BWP12T30P140 U208 ( .I(i_clk), .Z(n141) );
  CKBD0BWP12T30P140 U209 ( .I(i_clk), .Z(n138) );
  CKBD0BWP12T30P140 U210 ( .I(i_clk), .Z(n137) );
  AOI22D0BWP12T30P140 U211 ( .A1(n129), .A2(uart_setup[5]), .B1(n128), .B2(
        txf_wb_data[5]), .ZN(n118) );
  AOI22D0BWP12T30P140 U212 ( .A1(n136), .A2(rxf_status[5]), .B1(n130), .B2(
        rxf_wb_data[5]), .ZN(n117) );
  ND2D0BWP12T30P140 U213 ( .A1(n118), .A2(n117), .ZN(n89) );
  AOI22D0BWP12T30P140 U214 ( .A1(n125), .A2(uart_setup[4]), .B1(n128), .B2(
        txf_wb_data[4]), .ZN(n120) );
  AOI22D0BWP12T30P140 U215 ( .A1(n136), .A2(rxf_status[4]), .B1(n130), .B2(
        rxf_wb_data[4]), .ZN(n119) );
  ND2D0BWP12T30P140 U216 ( .A1(n120), .A2(n119), .ZN(n90) );
  AOI22D0BWP12T30P140 U217 ( .A1(n129), .A2(uart_setup[3]), .B1(n128), .B2(
        txf_wb_data[3]), .ZN(n122) );
  AOI22D0BWP12T30P140 U218 ( .A1(n136), .A2(rxf_status[3]), .B1(n130), .B2(
        rxf_wb_data[3]), .ZN(n121) );
  ND2D0BWP12T30P140 U219 ( .A1(n122), .A2(n121), .ZN(n91) );
  AOI22D0BWP12T30P140 U220 ( .A1(n129), .A2(uart_setup[2]), .B1(n128), .B2(
        txf_wb_data[2]), .ZN(n124) );
  AOI22D0BWP12T30P140 U221 ( .A1(n136), .A2(rxf_status[2]), .B1(n130), .B2(
        rxf_wb_data[2]), .ZN(n123) );
  ND2D0BWP12T30P140 U222 ( .A1(n124), .A2(n123), .ZN(n92) );
  AOI22D0BWP12T30P140 U223 ( .A1(n125), .A2(uart_setup[1]), .B1(n128), .B2(
        txf_wb_data[1]), .ZN(n127) );
  AOI22D0BWP12T30P140 U224 ( .A1(n136), .A2(o_uart_rxfifo_int), .B1(n130), 
        .B2(rxf_wb_data[1]), .ZN(n126) );
  ND2D0BWP12T30P140 U225 ( .A1(n127), .A2(n126), .ZN(n93) );
  AOI22D0BWP12T30P140 U226 ( .A1(uart_setup[0]), .A2(n129), .B1(n128), .B2(
        txf_wb_data[0]), .ZN(n132) );
  AOI22D0BWP12T30P140 U227 ( .A1(n136), .A2(o_uart_rx_int), .B1(n130), .B2(
        rxf_wb_data[0]), .ZN(n131) );
  ND2D0BWP12T30P140 U228 ( .A1(n132), .A2(n131), .ZN(n94) );
  ND2D0BWP12T30P140 U229 ( .A1(i_wb_addr[1]), .A2(i_wb_stb), .ZN(n133) );
  NR3D0BWP12T30P140 U230 ( .A1(i_wb_addr[0]), .A2(i_wb_we), .A3(n133), .ZN(N11) );
  INR2D1BWP12T30P140 U231 ( .A1(tx_empty_n), .B1(tx_busy), .ZN(n_3_net_) );
  AOI22D0BWP12T30P140 U232 ( .A1(o_uart_txfifo_int), .A2(r_wb_addr[0]), .B1(
        uart_setup[14]), .B2(n134), .ZN(n135) );
  IND2D1BWP12T30P140 U233 ( .A1(n136), .B1(n135), .ZN(n80) );
endmodule

