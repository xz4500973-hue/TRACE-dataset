/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:47:30 2026
/////////////////////////////////////////////////////////////


module wbfmtxhack ( i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, 
        o_wb_ack, o_wb_stall, o_wb_data, o_tx, o_int );
  input [31:0] i_wb_data;
  output [31:0] o_wb_data;
  input i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr;
  output o_wb_ack, o_wb_stall, o_tx, o_int;
  wire   ztimer, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, next_valid, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399;
  wire   [15:0] reload_value;
  wire   [31:0] nco_step;
  wire   [15:0] timer;
  wire   [15:0] sample_out;
  wire   [15:0] next_sample;
  wire   [30:0] nco_phase;

  DFQD2BWP12T30P140 reload_value_reg_15_ ( .D(n156), .CP(n399), .Q(
        reload_value[15]) );
  DFQD2BWP12T30P140 reload_value_reg_14_ ( .D(n155), .CP(n399), .Q(
        reload_value[14]) );
  DFQD2BWP12T30P140 reload_value_reg_13_ ( .D(n154), .CP(n399), .Q(
        reload_value[13]) );
  DFQD2BWP12T30P140 reload_value_reg_12_ ( .D(n153), .CP(n399), .Q(
        reload_value[12]) );
  DFQD2BWP12T30P140 reload_value_reg_11_ ( .D(n152), .CP(n399), .Q(
        reload_value[11]) );
  DFQD2BWP12T30P140 reload_value_reg_10_ ( .D(n151), .CP(n399), .Q(
        reload_value[10]) );
  DFQD2BWP12T30P140 reload_value_reg_9_ ( .D(n150), .CP(n399), .Q(
        reload_value[9]) );
  DFQD2BWP12T30P140 reload_value_reg_8_ ( .D(n149), .CP(n399), .Q(
        reload_value[8]) );
  DFQD2BWP12T30P140 o_wb_data_reg_31_ ( .D(N143), .CP(n394), .Q(o_wb_data[31])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_30_ ( .D(N142), .CP(n397), .Q(o_wb_data[30])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_29_ ( .D(N141), .CP(n393), .Q(o_wb_data[29])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_28_ ( .D(N140), .CP(n399), .Q(o_wb_data[28])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_27_ ( .D(N139), .CP(n396), .Q(o_wb_data[27])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_26_ ( .D(N138), .CP(n392), .Q(o_wb_data[26])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_24_ ( .D(N136), .CP(n398), .Q(o_wb_data[24])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_23_ ( .D(N135), .CP(i_clk), .Q(o_wb_data[23]) );
  DFQD2BWP12T30P140 o_wb_data_reg_22_ ( .D(N134), .CP(n393), .Q(o_wb_data[22])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_21_ ( .D(N133), .CP(n393), .Q(o_wb_data[21])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_20_ ( .D(N132), .CP(n393), .Q(o_wb_data[20])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_19_ ( .D(N131), .CP(n393), .Q(o_wb_data[19])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_18_ ( .D(N130), .CP(n393), .Q(o_wb_data[18])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_17_ ( .D(N129), .CP(n393), .Q(o_wb_data[17])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_16_ ( .D(N128), .CP(n393), .Q(o_wb_data[16])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_15_ ( .D(N127), .CP(n393), .Q(o_wb_data[15])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_14_ ( .D(N126), .CP(n393), .Q(o_wb_data[14])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_13_ ( .D(N125), .CP(n393), .Q(o_wb_data[13])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_12_ ( .D(N124), .CP(n393), .Q(o_wb_data[12])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_11_ ( .D(N123), .CP(n393), .Q(o_wb_data[11])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_9_ ( .D(N121), .CP(n392), .Q(o_wb_data[9])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_8_ ( .D(N120), .CP(n392), .Q(o_wb_data[8])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_7_ ( .D(N119), .CP(n392), .Q(o_wb_data[7])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_6_ ( .D(N118), .CP(n392), .Q(o_wb_data[6])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_5_ ( .D(N117), .CP(n392), .Q(o_wb_data[5])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_4_ ( .D(N116), .CP(n392), .Q(o_wb_data[4])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_3_ ( .D(N115), .CP(n392), .Q(o_wb_data[3])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_2_ ( .D(N114), .CP(n392), .Q(o_wb_data[2])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_1_ ( .D(N113), .CP(n392), .Q(o_wb_data[1])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_0_ ( .D(N112), .CP(n392), .Q(o_wb_data[0])
         );
  DFQD2BWP12T30P140 o_wb_ack_reg ( .D(N144), .CP(n392), .Q(o_wb_ack) );
  DFQD2BWP12T30P140 o_int_reg ( .D(n180), .CP(n395), .Q(o_int) );
  DFQD2BWP12T30P140 reload_value_reg_7_ ( .D(n148), .CP(n394), .Q(
        reload_value[7]) );
  DFQD2BWP12T30P140 reload_value_reg_6_ ( .D(n147), .CP(n397), .Q(
        reload_value[6]) );
  DFQD2BWP12T30P140 reload_value_reg_4_ ( .D(n178), .CP(n396), .Q(
        reload_value[4]) );
  DFQD2BWP12T30P140 reload_value_reg_3_ ( .D(n177), .CP(n392), .Q(
        reload_value[3]) );
  DFQD2BWP12T30P140 reload_value_reg_2_ ( .D(n176), .CP(n395), .Q(
        reload_value[2]) );
  DFQD2BWP12T30P140 reload_value_reg_1_ ( .D(n175), .CP(n398), .Q(
        reload_value[1]) );
  DFQD2BWP12T30P140 reload_value_reg_0_ ( .D(n174), .CP(n396), .Q(
        reload_value[0]) );
  DFQD2BWP12T30P140 next_valid_reg ( .D(n173), .CP(n396), .Q(next_valid) );
  DFQD2BWP12T30P140 nco_phase_reg_31_ ( .D(N111), .CP(n395), .Q(o_tx) );
  DFQD2BWP12T30P140 nco_phase_reg_7_ ( .D(N87), .CP(n392), .Q(nco_phase[7]) );
  DFQD2BWP12T30P140 nco_phase_reg_0_ ( .D(N80), .CP(n394), .Q(nco_phase[0]) );
  DFQD2BWP12T30P140 nco_step_reg_31_ ( .D(n145), .CP(n399), .Q(nco_step[31])
         );
  DFQD2BWP12T30P140 next_sample_reg_15_ ( .D(n172), .CP(n396), .Q(
        next_sample[15]) );
  DFQD2BWP12T30P140 next_sample_reg_14_ ( .D(n171), .CP(n396), .Q(
        next_sample[14]) );
  DFQD2BWP12T30P140 next_sample_reg_13_ ( .D(n170), .CP(n396), .Q(
        next_sample[13]) );
  DFQD2BWP12T30P140 next_sample_reg_12_ ( .D(n169), .CP(n396), .Q(
        next_sample[12]) );
  DFQD2BWP12T30P140 next_sample_reg_10_ ( .D(n167), .CP(n396), .Q(
        next_sample[10]) );
  DFQD2BWP12T30P140 next_sample_reg_9_ ( .D(n166), .CP(n396), .Q(
        next_sample[9]) );
  DFQD2BWP12T30P140 next_sample_reg_8_ ( .D(n165), .CP(n396), .Q(
        next_sample[8]) );
  DFQD2BWP12T30P140 next_sample_reg_7_ ( .D(n164), .CP(n396), .Q(
        next_sample[7]) );
  DFQD2BWP12T30P140 next_sample_reg_6_ ( .D(n163), .CP(n396), .Q(
        next_sample[6]) );
  DFQD2BWP12T30P140 next_sample_reg_5_ ( .D(n162), .CP(n395), .Q(
        next_sample[5]) );
  DFQD2BWP12T30P140 next_sample_reg_4_ ( .D(n161), .CP(n395), .Q(
        next_sample[4]) );
  DFQD2BWP12T30P140 next_sample_reg_3_ ( .D(n160), .CP(n395), .Q(
        next_sample[3]) );
  DFQD2BWP12T30P140 next_sample_reg_2_ ( .D(n159), .CP(n395), .Q(
        next_sample[2]) );
  DFQD2BWP12T30P140 next_sample_reg_1_ ( .D(n158), .CP(n395), .Q(
        next_sample[1]) );
  DFQD2BWP12T30P140 next_sample_reg_0_ ( .D(n157), .CP(n395), .Q(
        next_sample[0]) );
  DFQD2BWP12T30P140 nco_step_reg_7_ ( .D(n121), .CP(n398), .Q(nco_step[7]) );
  DFQD2BWP12T30P140 nco_step_reg_0_ ( .D(n114), .CP(n398), .Q(nco_step[0]) );
  DFQD2BWP12T30P140 timer_reg_4_ ( .D(N28), .CP(n393), .Q(timer[4]) );
  DFQD2BWP12T30P140 timer_reg_6_ ( .D(N30), .CP(n399), .Q(timer[6]) );
  DFQD2BWP12T30P140 timer_reg_12_ ( .D(N36), .CP(n399), .Q(timer[12]) );
  DFQD2BWP12T30P140 timer_reg_14_ ( .D(N38), .CP(n394), .Q(timer[14]) );
  DFQD2BWP12T30P140 timer_reg_10_ ( .D(N34), .CP(n397), .Q(timer[10]) );
  DFQD2BWP12T30P140 timer_reg_5_ ( .D(N29), .CP(n393), .Q(timer[5]) );
  DFQD2BWP12T30P140 timer_reg_15_ ( .D(N39), .CP(n396), .Q(timer[15]) );
  DFQD2BWP12T30P140 timer_reg_1_ ( .D(N25), .CP(n395), .Q(timer[1]) );
  DFQD2BWP12T30P140 timer_reg_9_ ( .D(N33), .CP(n399), .Q(timer[9]) );
  DFQD2BWP12T30P140 timer_reg_13_ ( .D(N37), .CP(n399), .Q(timer[13]) );
  DFQD2BWP12T30P140 timer_reg_7_ ( .D(N31), .CP(n399), .Q(timer[7]) );
  DFQD2BWP12T30P140 timer_reg_2_ ( .D(N26), .CP(n392), .Q(timer[2]) );
  DFQD2BWP12T30P140 timer_reg_11_ ( .D(N35), .CP(n399), .Q(timer[11]) );
  DFQD2BWP12T30P140 timer_reg_0_ ( .D(N24), .CP(n395), .Q(timer[0]) );
  DFQD2BWP12T30P140 nco_step_reg_30_ ( .D(n144), .CP(n396), .Q(nco_step[30])
         );
  DFQD2BWP12T30P140 nco_step_reg_20_ ( .D(n134), .CP(i_clk), .Q(nco_step[20])
         );
  DFQD2BWP12T30P140 nco_step_reg_19_ ( .D(n133), .CP(n394), .Q(nco_step[19])
         );
  DFQD2BWP12T30P140 nco_step_reg_18_ ( .D(n132), .CP(n397), .Q(nco_step[18])
         );
  DFQD2BWP12T30P140 nco_step_reg_17_ ( .D(n131), .CP(n393), .Q(nco_step[17])
         );
  DFQD2BWP12T30P140 nco_step_reg_16_ ( .D(n130), .CP(n399), .Q(nco_step[16])
         );
  DFQD2BWP12T30P140 nco_step_reg_15_ ( .D(n129), .CP(n396), .Q(nco_step[15])
         );
  DFQD2BWP12T30P140 nco_step_reg_14_ ( .D(n128), .CP(n398), .Q(nco_step[14])
         );
  DFQD2BWP12T30P140 nco_step_reg_13_ ( .D(n127), .CP(n396), .Q(nco_step[13])
         );
  DFQD2BWP12T30P140 nco_step_reg_12_ ( .D(n126), .CP(n392), .Q(nco_step[12])
         );
  DFQD2BWP12T30P140 nco_step_reg_11_ ( .D(n125), .CP(n395), .Q(nco_step[11])
         );
  DFQD2BWP12T30P140 nco_step_reg_10_ ( .D(n124), .CP(n398), .Q(nco_step[10])
         );
  DFQD2BWP12T30P140 nco_step_reg_9_ ( .D(n123), .CP(n398), .Q(nco_step[9]) );
  DFQD2BWP12T30P140 nco_step_reg_8_ ( .D(n122), .CP(n398), .Q(nco_step[8]) );
  DFQD2BWP12T30P140 nco_phase_reg_6_ ( .D(N86), .CP(n395), .Q(nco_phase[6]) );
  DFQD2BWP12T30P140 nco_phase_reg_4_ ( .D(N84), .CP(i_clk), .Q(nco_phase[4])
         );
  DFQD2BWP12T30P140 nco_phase_reg_3_ ( .D(N83), .CP(n394), .Q(nco_phase[3]) );
  DFQD2BWP12T30P140 nco_phase_reg_2_ ( .D(N82), .CP(n397), .Q(nco_phase[2]) );
  DFQD2BWP12T30P140 nco_phase_reg_1_ ( .D(N81), .CP(i_clk), .Q(nco_phase[1])
         );
  DFQD2BWP12T30P140 nco_phase_reg_30_ ( .D(N110), .CP(n395), .Q(nco_phase[30])
         );
  DFQD2BWP12T30P140 nco_phase_reg_29_ ( .D(N109), .CP(n395), .Q(nco_phase[29])
         );
  DFQD2BWP12T30P140 nco_phase_reg_28_ ( .D(N108), .CP(n395), .Q(nco_phase[28])
         );
  DFQD2BWP12T30P140 nco_phase_reg_27_ ( .D(N107), .CP(n395), .Q(nco_phase[27])
         );
  DFQD2BWP12T30P140 nco_phase_reg_26_ ( .D(N106), .CP(n394), .Q(nco_phase[26])
         );
  DFQD2BWP12T30P140 nco_phase_reg_25_ ( .D(N105), .CP(n394), .Q(nco_phase[25])
         );
  DFQD2BWP12T30P140 nco_phase_reg_24_ ( .D(N104), .CP(n394), .Q(nco_phase[24])
         );
  DFQD2BWP12T30P140 nco_phase_reg_23_ ( .D(N103), .CP(n394), .Q(nco_phase[23])
         );
  DFQD2BWP12T30P140 nco_phase_reg_22_ ( .D(N102), .CP(n394), .Q(nco_phase[22])
         );
  DFQD2BWP12T30P140 nco_phase_reg_21_ ( .D(N101), .CP(n394), .Q(nco_phase[21])
         );
  DFQD2BWP12T30P140 nco_phase_reg_19_ ( .D(N99), .CP(n394), .Q(nco_phase[19])
         );
  DFQD2BWP12T30P140 nco_phase_reg_18_ ( .D(N98), .CP(n394), .Q(nco_phase[18])
         );
  DFQD2BWP12T30P140 nco_phase_reg_17_ ( .D(N97), .CP(n394), .Q(nco_phase[17])
         );
  DFQD2BWP12T30P140 nco_phase_reg_16_ ( .D(N96), .CP(n394), .Q(nco_phase[16])
         );
  DFQD2BWP12T30P140 nco_phase_reg_15_ ( .D(N95), .CP(n394), .Q(nco_phase[15])
         );
  DFQD2BWP12T30P140 nco_phase_reg_14_ ( .D(N94), .CP(n397), .Q(nco_phase[14])
         );
  DFQD2BWP12T30P140 nco_phase_reg_13_ ( .D(N93), .CP(n393), .Q(nco_phase[13])
         );
  DFQD2BWP12T30P140 nco_phase_reg_12_ ( .D(N92), .CP(n399), .Q(nco_phase[12])
         );
  DFQD2BWP12T30P140 nco_phase_reg_11_ ( .D(N91), .CP(i_clk), .Q(nco_phase[11])
         );
  DFQD2BWP12T30P140 nco_phase_reg_10_ ( .D(N90), .CP(n396), .Q(nco_phase[10])
         );
  DFQD2BWP12T30P140 nco_phase_reg_9_ ( .D(N89), .CP(i_clk), .Q(nco_phase[9])
         );
  DFQD2BWP12T30P140 nco_phase_reg_8_ ( .D(N88), .CP(i_clk), .Q(nco_phase[8])
         );
  DFQD2BWP12T30P140 timer_reg_3_ ( .D(N27), .CP(n399), .Q(timer[3]) );
  DFQD2BWP12T30P140 nco_step_reg_29_ ( .D(n143), .CP(n392), .Q(nco_step[29])
         );
  DFQD2BWP12T30P140 nco_step_reg_27_ ( .D(n141), .CP(n398), .Q(nco_step[27])
         );
  DFQD2BWP12T30P140 nco_step_reg_26_ ( .D(n140), .CP(n394), .Q(nco_step[26])
         );
  DFQD2BWP12T30P140 nco_step_reg_25_ ( .D(n139), .CP(n397), .Q(nco_step[25])
         );
  DFQD2BWP12T30P140 nco_step_reg_24_ ( .D(n138), .CP(n393), .Q(nco_step[24])
         );
  DFQD2BWP12T30P140 nco_step_reg_23_ ( .D(n137), .CP(n399), .Q(nco_step[23])
         );
  DFQD2BWP12T30P140 nco_step_reg_22_ ( .D(n136), .CP(n398), .Q(nco_step[22])
         );
  DFQD2BWP12T30P140 sample_out_reg_14_ ( .D(n112), .CP(n397), .Q(
        sample_out[14]) );
  DFQD2BWP12T30P140 sample_out_reg_13_ ( .D(n111), .CP(n397), .Q(
        sample_out[13]) );
  DFQD2BWP12T30P140 sample_out_reg_12_ ( .D(n110), .CP(n397), .Q(
        sample_out[12]) );
  DFQD2BWP12T30P140 sample_out_reg_11_ ( .D(n109), .CP(n397), .Q(
        sample_out[11]) );
  DFQD2BWP12T30P140 sample_out_reg_10_ ( .D(n108), .CP(n397), .Q(
        sample_out[10]) );
  DFQD2BWP12T30P140 sample_out_reg_9_ ( .D(n107), .CP(n397), .Q(sample_out[9])
         );
  DFQD2BWP12T30P140 sample_out_reg_8_ ( .D(n106), .CP(n397), .Q(sample_out[8])
         );
  DFQD2BWP12T30P140 sample_out_reg_7_ ( .D(n105), .CP(n397), .Q(sample_out[7])
         );
  DFQD2BWP12T30P140 sample_out_reg_5_ ( .D(n103), .CP(n397), .Q(sample_out[5])
         );
  DFQD2BWP12T30P140 sample_out_reg_4_ ( .D(n102), .CP(n397), .Q(sample_out[4])
         );
  DFQD2BWP12T30P140 sample_out_reg_3_ ( .D(n101), .CP(n397), .Q(sample_out[3])
         );
  DFQD2BWP12T30P140 sample_out_reg_2_ ( .D(n100), .CP(n396), .Q(sample_out[2])
         );
  DFQD2BWP12T30P140 sample_out_reg_1_ ( .D(n99), .CP(n392), .Q(sample_out[1])
         );
  DFQD2BWP12T30P140 nco_step_reg_6_ ( .D(n120), .CP(n398), .Q(nco_step[6]) );
  DFQD2BWP12T30P140 nco_step_reg_5_ ( .D(n119), .CP(n398), .Q(nco_step[5]) );
  DFQD2BWP12T30P140 nco_step_reg_4_ ( .D(n118), .CP(n398), .Q(nco_step[4]) );
  DFQD2BWP12T30P140 nco_step_reg_3_ ( .D(n117), .CP(n398), .Q(nco_step[3]) );
  DFQD2BWP12T30P140 nco_step_reg_2_ ( .D(n116), .CP(n398), .Q(nco_step[2]) );
  DFQD2BWP12T30P140 nco_step_reg_1_ ( .D(n115), .CP(n398), .Q(nco_step[1]) );
  DFQD2BWP12T30P140 sample_out_reg_0_ ( .D(n98), .CP(n395), .Q(sample_out[0])
         );
  DFQD2BWP12T30P140 ztimer_reg ( .D(n179), .CP(n398), .Q(ztimer) );
  DFQD1BWP12T30P140 o_wb_data_reg_25_ ( .D(N137), .CP(n395), .Q(o_wb_data[25])
         );
  DFQD1BWP12T30P140 o_wb_data_reg_10_ ( .D(N122), .CP(n392), .Q(o_wb_data[10])
         );
  DFQD1BWP12T30P140 reload_value_reg_5_ ( .D(n146), .CP(n393), .Q(
        reload_value[5]) );
  DFQD1BWP12T30P140 next_sample_reg_11_ ( .D(n168), .CP(n396), .Q(
        next_sample[11]) );
  DFQD1BWP12T30P140 timer_reg_8_ ( .D(N32), .CP(n392), .Q(timer[8]) );
  DFQD1BWP12T30P140 nco_step_reg_21_ ( .D(n135), .CP(n398), .Q(nco_step[21])
         );
  DFQD1BWP12T30P140 nco_phase_reg_5_ ( .D(N85), .CP(n398), .Q(nco_phase[5]) );
  DFQD1BWP12T30P140 nco_phase_reg_20_ ( .D(N100), .CP(n394), .Q(nco_phase[20])
         );
  DFQD1BWP12T30P140 nco_step_reg_28_ ( .D(n142), .CP(n395), .Q(nco_step[28])
         );
  DFQD1BWP12T30P140 sample_out_reg_6_ ( .D(n104), .CP(n397), .Q(sample_out[6])
         );
  DFQD1BWP12T30P140 sample_out_reg_15_ ( .D(n113), .CP(n398), .Q(
        sample_out[15]) );
  TIEHBWP12T30P140 U233 ( .Z(n182) );
  INVD1BWP12T30P140 U234 ( .I(n182), .ZN(o_wb_stall) );
  INVD0BWP12T30P140 U235 ( .I(i_wb_addr), .ZN(n219) );
  CKBD0BWP12T30P140 U236 ( .I(n356), .Z(n339) );
  INVD0BWP12T30P140 U237 ( .I(n365), .ZN(n252) );
  AN2D0BWP12T30P140 U238 ( .A1(i_wb_stb), .A2(i_wb_cyc), .Z(N144) );
  ND2D0BWP12T30P140 U239 ( .A1(N144), .A2(i_wb_we), .ZN(n183) );
  NR2D0BWP12T30P140 U240 ( .A1(n183), .A2(n219), .ZN(n359) );
  INVD0BWP12T30P140 U241 ( .I(i_wb_data[31]), .ZN(n264) );
  INVD0BWP12T30P140 U242 ( .I(nco_step[31]), .ZN(n382) );
  INVD0BWP12T30P140 U243 ( .I(n359), .ZN(n356) );
  AOI22D0BWP12T30P140 U244 ( .A1(n359), .A2(n264), .B1(n382), .B2(n339), .ZN(
        n145) );
  ND3D0BWP12T30P140 U245 ( .A1(n219), .A2(N144), .A3(i_wb_we), .ZN(n365) );
  CKMUX2D0BWP12T30P140 U246 ( .I0(next_sample[14]), .I1(i_wb_data[14]), .S(
        n252), .Z(n171) );
  CKMUX2D0BWP12T30P140 U247 ( .I0(next_sample[13]), .I1(i_wb_data[13]), .S(
        n252), .Z(n170) );
  CKMUX2D0BWP12T30P140 U248 ( .I0(next_sample[12]), .I1(i_wb_data[12]), .S(
        n252), .Z(n169) );
  CKMUX2D0BWP12T30P140 U249 ( .I0(next_sample[11]), .I1(i_wb_data[11]), .S(
        n252), .Z(n168) );
  CKMUX2D0BWP12T30P140 U250 ( .I0(next_sample[10]), .I1(i_wb_data[10]), .S(
        n252), .Z(n167) );
  CKMUX2D0BWP12T30P140 U251 ( .I0(next_sample[9]), .I1(i_wb_data[9]), .S(n252), 
        .Z(n166) );
  CKMUX2D0BWP12T30P140 U252 ( .I0(next_sample[8]), .I1(i_wb_data[8]), .S(n252), 
        .Z(n165) );
  CKMUX2D0BWP12T30P140 U253 ( .I0(next_sample[7]), .I1(i_wb_data[7]), .S(n252), 
        .Z(n164) );
  INVD0BWP12T30P140 U254 ( .I(next_valid), .ZN(n180) );
  OAI21D0BWP12T30P140 U255 ( .A1(ztimer), .A2(n180), .B(n365), .ZN(n173) );
  CKMUX2D0BWP12T30P140 U256 ( .I0(next_sample[6]), .I1(i_wb_data[6]), .S(n252), 
        .Z(n163) );
  CKMUX2D0BWP12T30P140 U257 ( .I0(next_sample[5]), .I1(i_wb_data[5]), .S(n252), 
        .Z(n162) );
  INVD0BWP12T30P140 U258 ( .I(reload_value[0]), .ZN(n247) );
  NR4D0BWP12T30P140 U259 ( .A1(i_wb_data[16]), .A2(i_wb_data[17]), .A3(
        i_wb_data[18]), .A4(i_wb_data[19]), .ZN(n187) );
  NR4D0BWP12T30P140 U260 ( .A1(i_wb_data[20]), .A2(i_wb_data[21]), .A3(
        i_wb_data[22]), .A4(i_wb_data[23]), .ZN(n186) );
  NR4D0BWP12T30P140 U261 ( .A1(i_wb_data[24]), .A2(i_wb_data[25]), .A3(
        i_wb_data[26]), .A4(i_wb_data[27]), .ZN(n185) );
  NR4D0BWP12T30P140 U262 ( .A1(i_wb_data[28]), .A2(i_wb_data[29]), .A3(
        i_wb_data[30]), .A4(i_wb_data[31]), .ZN(n184) );
  AN4D0BWP12T30P140 U263 ( .A1(n187), .A2(n186), .A3(n185), .A4(n184), .Z(n188) );
  NR2D0BWP12T30P140 U264 ( .A1(n188), .A2(n365), .ZN(n368) );
  MOAI22D0BWP12T30P140 U265 ( .A1(n247), .A2(n368), .B1(i_wb_data[16]), .B2(
        n252), .ZN(n174) );
  CKMUX2D0BWP12T30P140 U266 ( .I0(next_sample[4]), .I1(i_wb_data[4]), .S(n252), 
        .Z(n161) );
  CKMUX2D0BWP12T30P140 U267 ( .I0(next_sample[3]), .I1(i_wb_data[3]), .S(n252), 
        .Z(n160) );
  INVD0BWP12T30P140 U268 ( .I(reload_value[1]), .ZN(n259) );
  MOAI22D0BWP12T30P140 U269 ( .A1(n259), .A2(n368), .B1(i_wb_data[17]), .B2(
        n252), .ZN(n175) );
  CKMUX2D0BWP12T30P140 U270 ( .I0(next_sample[2]), .I1(i_wb_data[2]), .S(n252), 
        .Z(n159) );
  CKMUX2D0BWP12T30P140 U271 ( .I0(next_sample[1]), .I1(i_wb_data[1]), .S(n252), 
        .Z(n158) );
  INVD0BWP12T30P140 U272 ( .I(reload_value[2]), .ZN(n269) );
  MOAI22D0BWP12T30P140 U273 ( .A1(n269), .A2(n368), .B1(i_wb_data[18]), .B2(
        n252), .ZN(n176) );
  CKMUX2D0BWP12T30P140 U274 ( .I0(next_sample[0]), .I1(i_wb_data[0]), .S(n252), 
        .Z(n157) );
  INVD0BWP12T30P140 U275 ( .I(nco_step[7]), .ZN(n220) );
  CKBD0BWP12T30P140 U276 ( .I(n356), .Z(n331) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n220), .A2(n339), .B1(n331), .B2(
        i_wb_data[7]), .ZN(n121) );
  INVD0BWP12T30P140 U278 ( .I(reload_value[3]), .ZN(n278) );
  MOAI22D0BWP12T30P140 U279 ( .A1(n278), .A2(n368), .B1(i_wb_data[19]), .B2(
        n252), .ZN(n177) );
  INVD0BWP12T30P140 U280 ( .I(nco_step[0]), .ZN(n211) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n211), .A2(n356), .B1(n331), .B2(
        i_wb_data[0]), .ZN(n114) );
  NR2D0BWP12T30P140 U282 ( .A1(timer[1]), .A2(timer[0]), .ZN(n212) );
  IND2D1BWP12T30P140 U283 ( .A1(timer[2]), .B1(n212), .ZN(n254) );
  OR3D0BWP12T30P140 U284 ( .A1(timer[4]), .A2(timer[3]), .A3(n254), .Z(n195)
         );
  INVD0BWP12T30P140 U285 ( .I(ztimer), .ZN(n369) );
  CKBD0BWP12T30P140 U286 ( .I(n369), .Z(n362) );
  OAI21D0BWP12T30P140 U287 ( .A1(timer[3]), .A2(n254), .B(timer[4]), .ZN(n189)
         );
  INVD0BWP12T30P140 U288 ( .I(reload_value[4]), .ZN(n287) );
  AOI32D0BWP12T30P140 U289 ( .A1(n195), .A2(n362), .A3(n189), .B1(ztimer), 
        .B2(n287), .ZN(N28) );
  INVD0BWP12T30P140 U290 ( .I(i_wb_data[20]), .ZN(n218) );
  OAI22D0BWP12T30P140 U291 ( .A1(n368), .A2(n287), .B1(n218), .B2(n365), .ZN(
        n178) );
  INVD0BWP12T30P140 U292 ( .I(reload_value[8]), .ZN(n334) );
  OR2D0BWP12T30P140 U293 ( .A1(timer[5]), .A2(n195), .Z(n197) );
  NR2D0BWP12T30P140 U294 ( .A1(timer[6]), .A2(n197), .ZN(n208) );
  IND2D1BWP12T30P140 U295 ( .A1(timer[7]), .B1(n208), .ZN(n210) );
  NR2D0BWP12T30P140 U296 ( .A1(timer[8]), .A2(n210), .ZN(n202) );
  AOI21D0BWP12T30P140 U297 ( .A1(timer[8]), .A2(n210), .B(n202), .ZN(n190) );
  AOI22D0BWP12T30P140 U298 ( .A1(ztimer), .A2(n334), .B1(n190), .B2(n369), 
        .ZN(N32) );
  INVD0BWP12T30P140 U299 ( .I(reload_value[6]), .ZN(n307) );
  AOI21D0BWP12T30P140 U300 ( .A1(timer[6]), .A2(n197), .B(n208), .ZN(n191) );
  CKBD0BWP12T30P140 U301 ( .I(n369), .Z(n373) );
  AOI22D0BWP12T30P140 U302 ( .A1(ztimer), .A2(n307), .B1(n191), .B2(n373), 
        .ZN(N30) );
  INVD0BWP12T30P140 U303 ( .I(reload_value[5]), .ZN(n297) );
  INVD0BWP12T30P140 U304 ( .I(i_wb_data[21]), .ZN(n217) );
  OAI22D0BWP12T30P140 U305 ( .A1(n368), .A2(n297), .B1(n217), .B2(n365), .ZN(
        n146) );
  INVD0BWP12T30P140 U306 ( .I(reload_value[12]), .ZN(n349) );
  IND2D1BWP12T30P140 U307 ( .A1(timer[9]), .B1(n202), .ZN(n204) );
  NR2D0BWP12T30P140 U308 ( .A1(timer[10]), .A2(n204), .ZN(n214) );
  IND2D1BWP12T30P140 U309 ( .A1(timer[11]), .B1(n214), .ZN(n216) );
  NR2D0BWP12T30P140 U310 ( .A1(timer[12]), .A2(n216), .ZN(n205) );
  AOI21D0BWP12T30P140 U311 ( .A1(timer[12]), .A2(n216), .B(n205), .ZN(n192) );
  AOI22D0BWP12T30P140 U312 ( .A1(ztimer), .A2(n349), .B1(n192), .B2(n369), 
        .ZN(N36) );
  INVD0BWP12T30P140 U313 ( .I(reload_value[14]), .ZN(n312) );
  IND2D1BWP12T30P140 U314 ( .A1(timer[13]), .B1(n205), .ZN(n207) );
  NR2D0BWP12T30P140 U315 ( .A1(timer[14]), .A2(n207), .ZN(n198) );
  AOI21D0BWP12T30P140 U316 ( .A1(timer[14]), .A2(n207), .B(n198), .ZN(n193) );
  AOI22D0BWP12T30P140 U317 ( .A1(ztimer), .A2(n312), .B1(n193), .B2(n369), 
        .ZN(N38) );
  INVD0BWP12T30P140 U318 ( .I(i_wb_data[22]), .ZN(n358) );
  OAI22D0BWP12T30P140 U319 ( .A1(n368), .A2(n307), .B1(n358), .B2(n365), .ZN(
        n147) );
  INVD0BWP12T30P140 U320 ( .I(reload_value[10]), .ZN(n343) );
  AOI21D0BWP12T30P140 U321 ( .A1(timer[10]), .A2(n204), .B(n214), .ZN(n194) );
  AOI22D0BWP12T30P140 U322 ( .A1(ztimer), .A2(n343), .B1(n194), .B2(n369), 
        .ZN(N34) );
  ND2D0BWP12T30P140 U323 ( .A1(timer[5]), .A2(n195), .ZN(n196) );
  AOI32D0BWP12T30P140 U324 ( .A1(n197), .A2(n362), .A3(n196), .B1(ztimer), 
        .B2(n297), .ZN(N29) );
  INVD0BWP12T30P140 U325 ( .I(reload_value[7]), .ZN(n317) );
  INVD0BWP12T30P140 U326 ( .I(i_wb_data[23]), .ZN(n354) );
  OAI22D0BWP12T30P140 U327 ( .A1(n368), .A2(n317), .B1(n354), .B2(n365), .ZN(
        n148) );
  INVD0BWP12T30P140 U328 ( .I(reload_value[15]), .ZN(n372) );
  INVD0BWP12T30P140 U329 ( .I(timer[15]), .ZN(n199) );
  MUX2ND0BWP12T30P140 U330 ( .I0(timer[15]), .I1(n199), .S(n198), .ZN(n200) );
  AOI22D0BWP12T30P140 U331 ( .A1(ztimer), .A2(n372), .B1(n200), .B2(n369), 
        .ZN(N39) );
  AOI21D0BWP12T30P140 U332 ( .A1(timer[0]), .A2(timer[1]), .B(n212), .ZN(n201)
         );
  AOI22D0BWP12T30P140 U333 ( .A1(ztimer), .A2(n259), .B1(n201), .B2(n369), 
        .ZN(N25) );
  IND2D1BWP12T30P140 U334 ( .A1(n202), .B1(timer[9]), .ZN(n203) );
  INVD0BWP12T30P140 U335 ( .I(reload_value[9]), .ZN(n367) );
  AOI32D0BWP12T30P140 U336 ( .A1(n204), .A2(n362), .A3(n203), .B1(ztimer), 
        .B2(n367), .ZN(N33) );
  IND2D1BWP12T30P140 U337 ( .A1(n205), .B1(timer[13]), .ZN(n206) );
  INVD0BWP12T30P140 U338 ( .I(reload_value[13]), .ZN(n341) );
  AOI32D0BWP12T30P140 U339 ( .A1(n207), .A2(n369), .A3(n206), .B1(ztimer), 
        .B2(n341), .ZN(N37) );
  IND2D1BWP12T30P140 U340 ( .A1(n208), .B1(timer[7]), .ZN(n209) );
  AOI32D0BWP12T30P140 U341 ( .A1(n210), .A2(n362), .A3(n209), .B1(ztimer), 
        .B2(n317), .ZN(N31) );
  CKBD0BWP12T30P140 U342 ( .I(i_wb_addr), .Z(n271) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n271), .A2(n211), .B1(o_int), .B2(n271), 
        .ZN(N112) );
  IND2D1BWP12T30P140 U344 ( .A1(n212), .B1(timer[2]), .ZN(n213) );
  AOI32D0BWP12T30P140 U345 ( .A1(n254), .A2(n362), .A3(n213), .B1(ztimer), 
        .B2(n269), .ZN(N26) );
  IND2D1BWP12T30P140 U346 ( .A1(n214), .B1(timer[11]), .ZN(n215) );
  INVD0BWP12T30P140 U347 ( .I(reload_value[11]), .ZN(n348) );
  AOI32D0BWP12T30P140 U348 ( .A1(n216), .A2(n373), .A3(n215), .B1(ztimer), 
        .B2(n348), .ZN(N35) );
  INVD0BWP12T30P140 U349 ( .I(nco_step[1]), .ZN(n292) );
  INVD0BWP12T30P140 U350 ( .I(sample_out[1]), .ZN(n352) );
  INVD0BWP12T30P140 U351 ( .I(i_wb_addr), .ZN(n371) );
  AOI22D0BWP12T30P140 U352 ( .A1(n271), .A2(n292), .B1(n352), .B2(n371), .ZN(
        N113) );
  AOI22D0BWP12T30P140 U353 ( .A1(ztimer), .A2(n247), .B1(timer[0]), .B2(n373), 
        .ZN(N24) );
  INVD0BWP12T30P140 U354 ( .I(i_wb_data[30]), .ZN(n283) );
  INVD0BWP12T30P140 U355 ( .I(nco_step[30]), .ZN(n313) );
  AOI22D0BWP12T30P140 U356 ( .A1(n359), .A2(n283), .B1(n313), .B2(n356), .ZN(
        n144) );
  INVD0BWP12T30P140 U357 ( .I(nco_step[2]), .ZN(n303) );
  INVD0BWP12T30P140 U358 ( .I(sample_out[2]), .ZN(n299) );
  AOI22D0BWP12T30P140 U359 ( .A1(n271), .A2(n303), .B1(n299), .B2(n219), .ZN(
        N114) );
  INVD0BWP12T30P140 U360 ( .I(nco_step[21]), .ZN(n298) );
  AOI22D0BWP12T30P140 U361 ( .A1(n359), .A2(n217), .B1(n298), .B2(n356), .ZN(
        n135) );
  INVD0BWP12T30P140 U362 ( .I(nco_step[20]), .ZN(n288) );
  AOI22D0BWP12T30P140 U363 ( .A1(n359), .A2(n218), .B1(n288), .B2(n356), .ZN(
        n134) );
  INVD0BWP12T30P140 U364 ( .I(nco_step[3]), .ZN(n311) );
  INVD0BWP12T30P140 U365 ( .I(sample_out[3]), .ZN(n361) );
  AOI22D0BWP12T30P140 U366 ( .A1(n271), .A2(n311), .B1(n361), .B2(n219), .ZN(
        N115) );
  INVD0BWP12T30P140 U367 ( .I(nco_step[19]), .ZN(n279) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n279), .A2(n339), .B1(n331), .B2(
        i_wb_data[19]), .ZN(n133) );
  INVD0BWP12T30P140 U369 ( .I(nco_step[18]), .ZN(n270) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n270), .A2(n339), .B1(n331), .B2(
        i_wb_data[18]), .ZN(n132) );
  INVD0BWP12T30P140 U371 ( .I(nco_step[4]), .ZN(n329) );
  INVD0BWP12T30P140 U372 ( .I(sample_out[4]), .ZN(n374) );
  AOI22D0BWP12T30P140 U373 ( .A1(n271), .A2(n329), .B1(n374), .B2(n219), .ZN(
        N116) );
  INVD0BWP12T30P140 U374 ( .I(nco_step[17]), .ZN(n260) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n260), .A2(n339), .B1(n331), .B2(
        i_wb_data[17]), .ZN(n131) );
  INVD0BWP12T30P140 U376 ( .I(nco_step[16]), .ZN(n248) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n248), .A2(n339), .B1(n331), .B2(
        i_wb_data[16]), .ZN(n130) );
  INVD0BWP12T30P140 U378 ( .I(nco_step[5]), .ZN(n265) );
  INVD0BWP12T30P140 U379 ( .I(sample_out[5]), .ZN(n370) );
  AOI22D0BWP12T30P140 U380 ( .A1(n271), .A2(n265), .B1(n370), .B2(n219), .ZN(
        N117) );
  INVD0BWP12T30P140 U381 ( .I(nco_step[15]), .ZN(n240) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n240), .A2(n339), .B1(n331), .B2(
        i_wb_data[15]), .ZN(n129) );
  INVD0BWP12T30P140 U383 ( .I(nco_step[14]), .ZN(n233) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n233), .A2(n339), .B1(n339), .B2(
        i_wb_data[14]), .ZN(n128) );
  INVD0BWP12T30P140 U385 ( .I(nco_step[6]), .ZN(n340) );
  INVD0BWP12T30P140 U386 ( .I(sample_out[6]), .ZN(n336) );
  AOI22D0BWP12T30P140 U387 ( .A1(n271), .A2(n340), .B1(n336), .B2(n219), .ZN(
        N118) );
  INVD0BWP12T30P140 U388 ( .I(nco_step[13]), .ZN(n226) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n226), .A2(n331), .B1(n339), .B2(
        i_wb_data[13]), .ZN(n127) );
  INVD0BWP12T30P140 U390 ( .I(nco_step[12]), .ZN(n225) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n225), .A2(n356), .B1(n331), .B2(
        i_wb_data[12]), .ZN(n126) );
  INVD0BWP12T30P140 U392 ( .I(sample_out[7]), .ZN(n364) );
  AOI22D0BWP12T30P140 U393 ( .A1(n271), .A2(n220), .B1(n364), .B2(n219), .ZN(
        N119) );
  INVD0BWP12T30P140 U394 ( .I(nco_step[11]), .ZN(n224) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n224), .A2(n339), .B1(n339), .B2(
        i_wb_data[11]), .ZN(n125) );
  INVD0BWP12T30P140 U396 ( .I(nco_step[10]), .ZN(n223) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n223), .A2(n356), .B1(n339), .B2(
        i_wb_data[10]), .ZN(n124) );
  INVD0BWP12T30P140 U398 ( .I(nco_step[8]), .ZN(n221) );
  INVD0BWP12T30P140 U399 ( .I(sample_out[8]), .ZN(n293) );
  AOI22D0BWP12T30P140 U400 ( .A1(n271), .A2(n221), .B1(n293), .B2(n219), .ZN(
        N120) );
  INVD0BWP12T30P140 U401 ( .I(nco_step[9]), .ZN(n222) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n222), .A2(n331), .B1(n339), .B2(
        i_wb_data[9]), .ZN(n123) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n221), .A2(n339), .B1(n339), .B2(
        i_wb_data[8]), .ZN(n122) );
  INVD0BWP12T30P140 U404 ( .I(sample_out[9]), .ZN(n328) );
  AOI22D0BWP12T30P140 U405 ( .A1(n271), .A2(n222), .B1(n328), .B2(n219), .ZN(
        N121) );
  INVD0BWP12T30P140 U406 ( .I(sample_out[10]), .ZN(n351) );
  AOI22D0BWP12T30P140 U407 ( .A1(n271), .A2(n223), .B1(n351), .B2(n371), .ZN(
        N122) );
  INVD0BWP12T30P140 U408 ( .I(sample_out[11]), .ZN(n346) );
  AOI22D0BWP12T30P140 U409 ( .A1(n271), .A2(n224), .B1(n346), .B2(n219), .ZN(
        N123) );
  INVD0BWP12T30P140 U410 ( .I(sample_out[12]), .ZN(n360) );
  AOI22D0BWP12T30P140 U411 ( .A1(n271), .A2(n225), .B1(n360), .B2(n371), .ZN(
        N124) );
  AN2D0BWP12T30P140 U412 ( .A1(nco_phase[0]), .A2(nco_step[0]), .Z(n375) );
  AN2D0BWP12T30P140 U413 ( .A1(nco_phase[7]), .A2(nco_step[7]), .Z(n319) );
  IAO21D0BWP12T30P140 U414 ( .A1(nco_step[7]), .A2(nco_phase[7]), .B(n319), 
        .ZN(n321) );
  FA1D0BWP12T30P140 U415 ( .A(nco_phase[8]), .B(sample_out[1]), .CI(
        nco_step[8]), .CO(n316), .S(n318) );
  FA1D0BWP12T30P140 U416 ( .A(nco_phase[9]), .B(sample_out[2]), .CI(
        nco_step[9]), .CO(n310), .S(n314) );
  FA1D0BWP12T30P140 U417 ( .A(nco_phase[10]), .B(sample_out[3]), .CI(
        nco_step[10]), .CO(n306), .S(n308) );
  FA1D0BWP12T30P140 U418 ( .A(nco_phase[11]), .B(sample_out[4]), .CI(
        nco_step[11]), .CO(n302), .S(n304) );
  FA1D0BWP12T30P140 U419 ( .A(nco_phase[12]), .B(sample_out[5]), .CI(
        nco_step[12]), .CO(n296), .S(n300) );
  FA1D0BWP12T30P140 U420 ( .A(nco_phase[13]), .B(sample_out[6]), .CI(
        nco_step[13]), .CO(n291), .S(n294) );
  FA1D0BWP12T30P140 U421 ( .A(nco_phase[14]), .B(sample_out[7]), .CI(
        nco_step[14]), .CO(n286), .S(n289) );
  FA1D0BWP12T30P140 U422 ( .A(nco_phase[15]), .B(sample_out[8]), .CI(
        nco_step[15]), .CO(n282), .S(n284) );
  FA1D0BWP12T30P140 U423 ( .A(nco_phase[16]), .B(sample_out[9]), .CI(
        nco_step[16]), .CO(n277), .S(n280) );
  FA1D0BWP12T30P140 U424 ( .A(nco_phase[17]), .B(sample_out[10]), .CI(
        nco_step[17]), .CO(n274), .S(n275) );
  FA1D0BWP12T30P140 U425 ( .A(nco_phase[18]), .B(sample_out[11]), .CI(
        nco_step[18]), .CO(n268), .S(n272) );
  FA1D0BWP12T30P140 U426 ( .A(nco_phase[19]), .B(sample_out[12]), .CI(
        nco_step[19]), .CO(n263), .S(n266) );
  FA1D0BWP12T30P140 U427 ( .A(nco_phase[20]), .B(sample_out[13]), .CI(
        nco_step[20]), .CO(n258), .S(n261) );
  FA1D0BWP12T30P140 U428 ( .A(nco_phase[21]), .B(sample_out[14]), .CI(
        nco_step[21]), .CO(n251), .S(n256) );
  FA1D0BWP12T30P140 U429 ( .A(nco_phase[22]), .B(nco_step[22]), .CI(
        sample_out[15]), .CO(n246), .S(n249) );
  FA1D0BWP12T30P140 U430 ( .A(nco_phase[23]), .B(nco_step[23]), .CI(
        sample_out[15]), .CO(n243), .S(n244) );
  FA1D0BWP12T30P140 U431 ( .A(nco_phase[24]), .B(nco_step[24]), .CI(
        sample_out[15]), .CO(n239), .S(n241) );
  FA1D0BWP12T30P140 U432 ( .A(nco_phase[25]), .B(nco_step[25]), .CI(
        sample_out[15]), .CO(n236), .S(n237) );
  FA1D0BWP12T30P140 U433 ( .A(nco_phase[26]), .B(nco_step[26]), .CI(
        sample_out[15]), .CO(n232), .S(n234) );
  FA1D0BWP12T30P140 U434 ( .A(nco_phase[27]), .B(nco_step[27]), .CI(
        sample_out[15]), .CO(n229), .S(n230) );
  FA1D0BWP12T30P140 U435 ( .A(nco_phase[28]), .B(nco_step[28]), .CI(
        sample_out[15]), .CO(n378), .S(n227) );
  INVD0BWP12T30P140 U436 ( .I(sample_out[13]), .ZN(n355) );
  AOI22D0BWP12T30P140 U437 ( .A1(n271), .A2(n226), .B1(n355), .B2(n219), .ZN(
        N125) );
  FA1D0BWP12T30P140 U438 ( .A(n229), .B(n228), .CI(n227), .CO(n377), .S(N108)
         );
  FA1D0BWP12T30P140 U439 ( .A(n232), .B(n231), .CI(n230), .CO(n228), .S(N107)
         );
  INVD0BWP12T30P140 U440 ( .I(sample_out[14]), .ZN(n363) );
  AOI22D0BWP12T30P140 U441 ( .A1(n271), .A2(n233), .B1(n363), .B2(n371), .ZN(
        N126) );
  FA1D0BWP12T30P140 U442 ( .A(n236), .B(n235), .CI(n234), .CO(n231), .S(N106)
         );
  FA1D0BWP12T30P140 U443 ( .A(n239), .B(n238), .CI(n237), .CO(n235), .S(N105)
         );
  INVD0BWP12T30P140 U444 ( .I(sample_out[15]), .ZN(n383) );
  AOI22D0BWP12T30P140 U445 ( .A1(n271), .A2(n240), .B1(n383), .B2(n219), .ZN(
        N127) );
  FA1D0BWP12T30P140 U446 ( .A(n243), .B(n242), .CI(n241), .CO(n238), .S(N104)
         );
  FA1D0BWP12T30P140 U447 ( .A(n246), .B(n245), .CI(n244), .CO(n242), .S(N103)
         );
  AOI22D0BWP12T30P140 U448 ( .A1(n271), .A2(n248), .B1(n247), .B2(n371), .ZN(
        N128) );
  FA1D0BWP12T30P140 U449 ( .A(n251), .B(n250), .CI(n249), .CO(n245), .S(N102)
         );
  CKMUX2D0BWP12T30P140 U450 ( .I0(next_sample[15]), .I1(i_wb_data[15]), .S(
        n252), .Z(n172) );
  NR2D0BWP12T30P140 U451 ( .A1(timer[3]), .A2(n254), .ZN(n253) );
  AOI21D0BWP12T30P140 U452 ( .A1(timer[3]), .A2(n254), .B(n253), .ZN(n255) );
  AOI22D0BWP12T30P140 U453 ( .A1(ztimer), .A2(n278), .B1(n255), .B2(n373), 
        .ZN(N27) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n383), .A2(n369), .B1(n362), .B2(
        next_sample[15]), .ZN(n113) );
  FA1D0BWP12T30P140 U455 ( .A(n258), .B(n257), .CI(n256), .CO(n250), .S(N101)
         );
  AOI22D0BWP12T30P140 U456 ( .A1(n271), .A2(n260), .B1(n259), .B2(n219), .ZN(
        N129) );
  FA1D0BWP12T30P140 U457 ( .A(n263), .B(n262), .CI(n261), .CO(n257), .S(N100)
         );
  OAI22D0BWP12T30P140 U458 ( .A1(n368), .A2(n372), .B1(n264), .B2(n365), .ZN(
        n156) );
  MAOI22D0BWP12T30P140 U459 ( .A1(n265), .A2(n339), .B1(n331), .B2(
        i_wb_data[5]), .ZN(n119) );
  FA1D0BWP12T30P140 U460 ( .A(n268), .B(n267), .CI(n266), .CO(n262), .S(N99)
         );
  AOI22D0BWP12T30P140 U461 ( .A1(n271), .A2(n270), .B1(n269), .B2(n371), .ZN(
        N130) );
  FA1D0BWP12T30P140 U462 ( .A(n274), .B(n273), .CI(n272), .CO(n267), .S(N98)
         );
  INVD0BWP12T30P140 U463 ( .I(i_wb_data[26]), .ZN(n338) );
  INVD0BWP12T30P140 U464 ( .I(nco_step[26]), .ZN(n344) );
  AOI22D0BWP12T30P140 U465 ( .A1(n359), .A2(n338), .B1(n344), .B2(n356), .ZN(
        n140) );
  FA1D0BWP12T30P140 U466 ( .A(n277), .B(n276), .CI(n275), .CO(n273), .S(N97)
         );
  CKMUX2D0BWP12T30P140 U467 ( .I0(sample_out[0]), .I1(next_sample[0]), .S(
        ztimer), .Z(n98) );
  AOI22D0BWP12T30P140 U468 ( .A1(i_wb_addr), .A2(n279), .B1(n278), .B2(n371), 
        .ZN(N131) );
  FA1D0BWP12T30P140 U469 ( .A(n282), .B(n281), .CI(n280), .CO(n276), .S(N96)
         );
  INVD0BWP12T30P140 U470 ( .I(i_wb_data[24]), .ZN(n333) );
  INVD0BWP12T30P140 U471 ( .I(nco_step[24]), .ZN(n330) );
  AOI22D0BWP12T30P140 U472 ( .A1(n359), .A2(n333), .B1(n330), .B2(n356), .ZN(
        n138) );
  OAI22D0BWP12T30P140 U473 ( .A1(n368), .A2(n312), .B1(n283), .B2(n365), .ZN(
        n155) );
  FA1D0BWP12T30P140 U474 ( .A(n286), .B(n285), .CI(n284), .CO(n281), .S(N95)
         );
  AOI22D0BWP12T30P140 U475 ( .A1(i_wb_addr), .A2(n288), .B1(n287), .B2(n371), 
        .ZN(N132) );
  FA1D0BWP12T30P140 U476 ( .A(n291), .B(n290), .CI(n289), .CO(n285), .S(N94)
         );
  MAOI22D0BWP12T30P140 U477 ( .A1(n292), .A2(n356), .B1(n331), .B2(
        i_wb_data[1]), .ZN(n115) );
  MAOI22D0BWP12T30P140 U478 ( .A1(n293), .A2(n362), .B1(n362), .B2(
        next_sample[8]), .ZN(n106) );
  FA1D0BWP12T30P140 U479 ( .A(n296), .B(n295), .CI(n294), .CO(n290), .S(N93)
         );
  AOI22D0BWP12T30P140 U480 ( .A1(i_wb_addr), .A2(n298), .B1(n297), .B2(n371), 
        .ZN(N133) );
  MAOI22D0BWP12T30P140 U481 ( .A1(n299), .A2(n369), .B1(n373), .B2(
        next_sample[2]), .ZN(n100) );
  FA1D0BWP12T30P140 U482 ( .A(n302), .B(n301), .CI(n300), .CO(n295), .S(N92)
         );
  MAOI22D0BWP12T30P140 U483 ( .A1(n303), .A2(n331), .B1(n331), .B2(
        i_wb_data[2]), .ZN(n116) );
  FA1D0BWP12T30P140 U484 ( .A(n306), .B(n305), .CI(n304), .CO(n301), .S(N91)
         );
  INVD0BWP12T30P140 U485 ( .I(i_wb_data[29]), .ZN(n332) );
  OAI22D0BWP12T30P140 U486 ( .A1(n368), .A2(n341), .B1(n332), .B2(n365), .ZN(
        n154) );
  INVD0BWP12T30P140 U487 ( .I(nco_step[22]), .ZN(n357) );
  AOI22D0BWP12T30P140 U488 ( .A1(i_wb_addr), .A2(n357), .B1(n307), .B2(n371), 
        .ZN(N134) );
  FA1D0BWP12T30P140 U489 ( .A(n310), .B(n309), .CI(n308), .CO(n305), .S(N90)
         );
  MAOI22D0BWP12T30P140 U490 ( .A1(n311), .A2(n356), .B1(n331), .B2(
        i_wb_data[3]), .ZN(n117) );
  AOI22D0BWP12T30P140 U491 ( .A1(i_wb_addr), .A2(n313), .B1(n312), .B2(n371), 
        .ZN(N142) );
  FA1D0BWP12T30P140 U492 ( .A(n316), .B(n315), .CI(n314), .CO(n309), .S(N89)
         );
  INVD0BWP12T30P140 U493 ( .I(nco_step[23]), .ZN(n353) );
  AOI22D0BWP12T30P140 U494 ( .A1(i_wb_addr), .A2(n353), .B1(n317), .B2(n371), 
        .ZN(N135) );
  FA1D0BWP12T30P140 U495 ( .A(n320), .B(n319), .CI(n318), .CO(n315), .S(N88)
         );
  FA1D0BWP12T30P140 U496 ( .A(sample_out[0]), .B(n322), .CI(n321), .CO(n320), 
        .S(N87) );
  FA1D0BWP12T30P140 U497 ( .A(nco_step[6]), .B(nco_phase[6]), .CI(n323), .CO(
        n322), .S(N86) );
  FA1D0BWP12T30P140 U498 ( .A(nco_step[5]), .B(nco_phase[5]), .CI(n324), .CO(
        n323), .S(N85) );
  FA1D0BWP12T30P140 U499 ( .A(nco_step[4]), .B(nco_phase[4]), .CI(n325), .CO(
        n324), .S(N84) );
  FA1D0BWP12T30P140 U500 ( .A(nco_step[3]), .B(nco_phase[3]), .CI(n326), .CO(
        n325), .S(N83) );
  FA1D0BWP12T30P140 U501 ( .A(nco_step[2]), .B(nco_phase[2]), .CI(n327), .CO(
        n326), .S(N82) );
  FA1D0BWP12T30P140 U502 ( .A(nco_step[1]), .B(nco_phase[1]), .CI(n375), .CO(
        n327), .S(N81) );
  MAOI22D0BWP12T30P140 U503 ( .A1(n328), .A2(n369), .B1(n362), .B2(
        next_sample[9]), .ZN(n107) );
  MAOI22D0BWP12T30P140 U504 ( .A1(n329), .A2(n331), .B1(n331), .B2(
        i_wb_data[4]), .ZN(n118) );
  INVD0BWP12T30P140 U505 ( .I(nco_step[27]), .ZN(n337) );
  AOI22D0BWP12T30P140 U506 ( .A1(i_wb_addr), .A2(n337), .B1(n348), .B2(n371), 
        .ZN(N139) );
  AOI22D0BWP12T30P140 U507 ( .A1(i_wb_addr), .A2(n330), .B1(n334), .B2(n371), 
        .ZN(N136) );
  INVD0BWP12T30P140 U508 ( .I(i_wb_data[28]), .ZN(n335) );
  OAI22D0BWP12T30P140 U509 ( .A1(n368), .A2(n349), .B1(n335), .B2(n365), .ZN(
        n153) );
  INVD0BWP12T30P140 U510 ( .I(nco_step[29]), .ZN(n342) );
  AOI22D0BWP12T30P140 U511 ( .A1(n359), .A2(n332), .B1(n342), .B2(n331), .ZN(
        n143) );
  OAI22D0BWP12T30P140 U512 ( .A1(n368), .A2(n334), .B1(n333), .B2(n365), .ZN(
        n149) );
  INVD0BWP12T30P140 U513 ( .I(nco_step[28]), .ZN(n350) );
  AOI22D0BWP12T30P140 U514 ( .A1(n359), .A2(n335), .B1(n350), .B2(n356), .ZN(
        n142) );
  MAOI22D0BWP12T30P140 U515 ( .A1(n336), .A2(n373), .B1(n373), .B2(
        next_sample[6]), .ZN(n104) );
  INVD0BWP12T30P140 U516 ( .I(nco_step[25]), .ZN(n345) );
  AOI22D0BWP12T30P140 U517 ( .A1(i_wb_addr), .A2(n345), .B1(n367), .B2(n219), 
        .ZN(N137) );
  INVD0BWP12T30P140 U518 ( .I(i_wb_data[27]), .ZN(n347) );
  AOI22D0BWP12T30P140 U519 ( .A1(n359), .A2(n347), .B1(n337), .B2(n356), .ZN(
        n141) );
  OAI22D0BWP12T30P140 U520 ( .A1(n368), .A2(n343), .B1(n338), .B2(n365), .ZN(
        n151) );
  MAOI22D0BWP12T30P140 U521 ( .A1(n340), .A2(n356), .B1(n339), .B2(
        i_wb_data[6]), .ZN(n120) );
  AOI22D0BWP12T30P140 U522 ( .A1(i_wb_addr), .A2(n342), .B1(n341), .B2(n371), 
        .ZN(N141) );
  AOI22D0BWP12T30P140 U523 ( .A1(i_wb_addr), .A2(n344), .B1(n343), .B2(n371), 
        .ZN(N138) );
  INVD0BWP12T30P140 U524 ( .I(i_wb_data[25]), .ZN(n366) );
  AOI22D0BWP12T30P140 U525 ( .A1(n359), .A2(n366), .B1(n345), .B2(n356), .ZN(
        n139) );
  MAOI22D0BWP12T30P140 U526 ( .A1(n346), .A2(n362), .B1(n362), .B2(
        next_sample[11]), .ZN(n109) );
  OAI22D0BWP12T30P140 U527 ( .A1(n368), .A2(n348), .B1(n347), .B2(n365), .ZN(
        n152) );
  AOI22D0BWP12T30P140 U528 ( .A1(i_wb_addr), .A2(n350), .B1(n349), .B2(n371), 
        .ZN(N140) );
  MAOI22D0BWP12T30P140 U529 ( .A1(n351), .A2(n373), .B1(n362), .B2(
        next_sample[10]), .ZN(n108) );
  MAOI22D0BWP12T30P140 U530 ( .A1(n352), .A2(n369), .B1(n373), .B2(
        next_sample[1]), .ZN(n99) );
  AOI22D0BWP12T30P140 U531 ( .A1(n359), .A2(n354), .B1(n353), .B2(n356), .ZN(
        n137) );
  MAOI22D0BWP12T30P140 U532 ( .A1(n355), .A2(n373), .B1(n362), .B2(
        next_sample[13]), .ZN(n111) );
  AOI22D0BWP12T30P140 U533 ( .A1(n359), .A2(n358), .B1(n357), .B2(n356), .ZN(
        n136) );
  MAOI22D0BWP12T30P140 U534 ( .A1(n360), .A2(n369), .B1(n362), .B2(
        next_sample[12]), .ZN(n110) );
  MAOI22D0BWP12T30P140 U535 ( .A1(n361), .A2(n369), .B1(n373), .B2(
        next_sample[3]), .ZN(n101) );
  MAOI22D0BWP12T30P140 U536 ( .A1(n363), .A2(n362), .B1(n362), .B2(
        next_sample[14]), .ZN(n112) );
  MAOI22D0BWP12T30P140 U537 ( .A1(n364), .A2(n373), .B1(n373), .B2(
        next_sample[7]), .ZN(n105) );
  OAI22D0BWP12T30P140 U538 ( .A1(n368), .A2(n367), .B1(n366), .B2(n365), .ZN(
        n150) );
  MAOI22D0BWP12T30P140 U539 ( .A1(n370), .A2(n369), .B1(n373), .B2(
        next_sample[5]), .ZN(n103) );
  AOI22D0BWP12T30P140 U540 ( .A1(i_wb_addr), .A2(n382), .B1(n372), .B2(n371), 
        .ZN(N143) );
  MAOI22D0BWP12T30P140 U541 ( .A1(n374), .A2(n373), .B1(n373), .B2(
        next_sample[4]), .ZN(n102) );
  CKBD0BWP12T30P140 U542 ( .I(i_clk), .Z(n399) );
  CKBD0BWP12T30P140 U543 ( .I(i_clk), .Z(n393) );
  CKBD0BWP12T30P140 U544 ( .I(i_clk), .Z(n397) );
  CKBD0BWP12T30P140 U545 ( .I(i_clk), .Z(n394) );
  CKBD0BWP12T30P140 U546 ( .I(i_clk), .Z(n398) );
  CKBD0BWP12T30P140 U547 ( .I(i_clk), .Z(n395) );
  CKBD0BWP12T30P140 U548 ( .I(i_clk), .Z(n392) );
  CKBD0BWP12T30P140 U549 ( .I(i_clk), .Z(n396) );
  IAO21D0BWP12T30P140 U550 ( .A1(nco_step[0]), .A2(nco_phase[0]), .B(n375), 
        .ZN(N80) );
  FA1D0BWP12T30P140 U551 ( .A(nco_phase[29]), .B(nco_step[29]), .CI(
        sample_out[15]), .CO(n381), .S(n376) );
  FA1D0BWP12T30P140 U552 ( .A(n378), .B(n377), .CI(n376), .CO(n380), .S(N109)
         );
  FA1D0BWP12T30P140 U553 ( .A(nco_phase[30]), .B(sample_out[15]), .CI(
        nco_step[30]), .CO(n386), .S(n379) );
  FA1D0BWP12T30P140 U554 ( .A(n381), .B(n380), .CI(n379), .CO(n385), .S(N110)
         );
  AOI22D0BWP12T30P140 U555 ( .A1(nco_step[31]), .A2(n383), .B1(sample_out[15]), 
        .B2(n382), .ZN(n384) );
  XNR4D0BWP12T30P140 U556 ( .A1(n386), .A2(n385), .A3(o_tx), .A4(n384), .ZN(
        N111) );
  OR2D0BWP12T30P140 U557 ( .A1(timer[4]), .A2(timer[3]), .Z(n391) );
  NR4D0BWP12T30P140 U558 ( .A1(timer[13]), .A2(timer[12]), .A3(timer[11]), 
        .A4(timer[10]), .ZN(n389) );
  NR4D0BWP12T30P140 U559 ( .A1(timer[8]), .A2(timer[6]), .A3(timer[2]), .A4(
        timer[1]), .ZN(n388) );
  NR3D0BWP12T30P140 U560 ( .A1(timer[9]), .A2(timer[7]), .A3(timer[5]), .ZN(
        n387) );
  ND4D0BWP12T30P140 U561 ( .A1(timer[0]), .A2(n389), .A3(n388), .A4(n387), 
        .ZN(n390) );
  NR4D0BWP12T30P140 U562 ( .A1(timer[15]), .A2(timer[14]), .A3(n391), .A4(n390), .ZN(n179) );
endmodule

