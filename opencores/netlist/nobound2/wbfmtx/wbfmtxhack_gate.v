/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:03:19 2026
/////////////////////////////////////////////////////////////


module wbfmtxhack ( i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, 
        o_wb_ack, o_wb_stall, o_wb_data, o_tx, o_int );
  input [31:0] i_wb_data;
  output [31:0] o_wb_data;
  input i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr;
  output o_wb_ack, o_wb_stall, o_tx, o_int;
  wire   next_valid, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, N93, N94, N95, N96, N97, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403;
  wire   [15:0] timer;
  wire   [15:0] nxt_timer;
  wire   [15:0] reload_value;
  wire   [15:0] sample_out;
  wire   [30:0] nco_phase;
  wire   [31:0] nco_step;
  wire   [31:0] nxt_nco;
  wire   [15:0] next_sample;

  DFQD2BWP12T30P140 nco_phase_reg_31_ ( .D(nxt_nco[31]), .CP(i_clk), .Q(o_tx)
         );
  DFQD2BWP12T30P140 o_wb_ack_reg ( .D(N97), .CP(n402), .Q(o_wb_ack) );
  DFQD2BWP12T30P140 o_wb_data_reg_31_ ( .D(N96), .CP(n401), .Q(o_wb_data[31])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_30_ ( .D(N95), .CP(n400), .Q(o_wb_data[30])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_29_ ( .D(N94), .CP(n397), .Q(o_wb_data[29])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_28_ ( .D(N93), .CP(n403), .Q(o_wb_data[28])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_27_ ( .D(N92), .CP(n398), .Q(o_wb_data[27])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_26_ ( .D(N91), .CP(n402), .Q(o_wb_data[26])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_25_ ( .D(N90), .CP(n396), .Q(o_wb_data[25])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_24_ ( .D(N89), .CP(n401), .Q(o_wb_data[24])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_23_ ( .D(N88), .CP(n401), .Q(o_wb_data[23])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_22_ ( .D(N87), .CP(n401), .Q(o_wb_data[22])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_21_ ( .D(N86), .CP(n401), .Q(o_wb_data[21])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_20_ ( .D(N85), .CP(n401), .Q(o_wb_data[20])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_18_ ( .D(N83), .CP(n401), .Q(o_wb_data[18])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_17_ ( .D(N82), .CP(n401), .Q(o_wb_data[17])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_16_ ( .D(N81), .CP(n401), .Q(o_wb_data[16])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_15_ ( .D(N80), .CP(n401), .Q(o_wb_data[15])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_14_ ( .D(N79), .CP(n401), .Q(o_wb_data[14])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_13_ ( .D(N78), .CP(n401), .Q(o_wb_data[13])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_12_ ( .D(N77), .CP(n400), .Q(o_wb_data[12])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_11_ ( .D(N76), .CP(n400), .Q(o_wb_data[11])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_10_ ( .D(N75), .CP(n400), .Q(o_wb_data[10])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_9_ ( .D(N74), .CP(n400), .Q(o_wb_data[9]) );
  DFQD2BWP12T30P140 o_wb_data_reg_8_ ( .D(N73), .CP(n400), .Q(o_wb_data[8]) );
  DFQD2BWP12T30P140 o_wb_data_reg_7_ ( .D(N72), .CP(n400), .Q(o_wb_data[7]) );
  DFQD2BWP12T30P140 o_wb_data_reg_6_ ( .D(N71), .CP(n400), .Q(o_wb_data[6]) );
  DFQD2BWP12T30P140 o_wb_data_reg_5_ ( .D(N70), .CP(n400), .Q(o_wb_data[5]) );
  DFQD2BWP12T30P140 o_wb_data_reg_3_ ( .D(N68), .CP(n400), .Q(o_wb_data[3]) );
  DFQD2BWP12T30P140 o_wb_data_reg_2_ ( .D(N67), .CP(n400), .Q(o_wb_data[2]) );
  DFQD2BWP12T30P140 o_wb_data_reg_1_ ( .D(N66), .CP(n400), .Q(o_wb_data[1]) );
  DFQD2BWP12T30P140 o_wb_data_reg_0_ ( .D(N65), .CP(n399), .Q(o_wb_data[0]) );
  DFQD2BWP12T30P140 o_int_reg ( .D(n177), .CP(n399), .Q(o_int) );
  DFQD2BWP12T30P140 next_sample_reg_15_ ( .D(n169), .CP(n402), .Q(
        next_sample[15]) );
  DFQD2BWP12T30P140 next_sample_reg_14_ ( .D(n168), .CP(n402), .Q(
        next_sample[14]) );
  DFQD2BWP12T30P140 next_sample_reg_13_ ( .D(n167), .CP(n402), .Q(
        next_sample[13]) );
  DFQD2BWP12T30P140 next_sample_reg_12_ ( .D(n166), .CP(n402), .Q(
        next_sample[12]) );
  DFQD2BWP12T30P140 next_sample_reg_11_ ( .D(n165), .CP(n402), .Q(
        next_sample[11]) );
  DFQD2BWP12T30P140 next_sample_reg_10_ ( .D(n164), .CP(n402), .Q(
        next_sample[10]) );
  DFQD2BWP12T30P140 next_sample_reg_9_ ( .D(n163), .CP(n402), .Q(
        next_sample[9]) );
  DFQD2BWP12T30P140 next_sample_reg_8_ ( .D(n162), .CP(n402), .Q(
        next_sample[8]) );
  DFQD2BWP12T30P140 next_sample_reg_7_ ( .D(n161), .CP(n402), .Q(
        next_sample[7]) );
  DFQD2BWP12T30P140 next_sample_reg_5_ ( .D(n159), .CP(n402), .Q(
        next_sample[5]) );
  DFQD2BWP12T30P140 next_sample_reg_4_ ( .D(n158), .CP(n398), .Q(
        next_sample[4]) );
  DFQD2BWP12T30P140 next_sample_reg_3_ ( .D(n157), .CP(n396), .Q(
        next_sample[3]) );
  DFQD2BWP12T30P140 next_sample_reg_2_ ( .D(n156), .CP(n399), .Q(
        next_sample[2]) );
  DFQD2BWP12T30P140 next_sample_reg_1_ ( .D(n155), .CP(n396), .Q(
        next_sample[1]) );
  DFQD2BWP12T30P140 next_valid_reg ( .D(n171), .CP(n402), .Q(next_valid) );
  DFQD2BWP12T30P140 nco_phase_reg_30_ ( .D(nxt_nco[30]), .CP(i_clk), .Q(
        nco_phase[30]) );
  DFQD2BWP12T30P140 nco_phase_reg_29_ ( .D(nxt_nco[29]), .CP(i_clk), .Q(
        nco_phase[29]) );
  DFQD2BWP12T30P140 nco_phase_reg_28_ ( .D(nxt_nco[28]), .CP(i_clk), .Q(
        nco_phase[28]) );
  DFQD2BWP12T30P140 nco_phase_reg_27_ ( .D(nxt_nco[27]), .CP(i_clk), .Q(
        nco_phase[27]) );
  DFQD2BWP12T30P140 nco_phase_reg_26_ ( .D(nxt_nco[26]), .CP(i_clk), .Q(
        nco_phase[26]) );
  DFQD2BWP12T30P140 nco_phase_reg_25_ ( .D(nxt_nco[25]), .CP(i_clk), .Q(
        nco_phase[25]) );
  DFQD2BWP12T30P140 nco_phase_reg_7_ ( .D(nxt_nco[7]), .CP(n403), .Q(
        nco_phase[7]) );
  DFQD2BWP12T30P140 nco_phase_reg_0_ ( .D(nxt_nco[0]), .CP(n402), .Q(
        nco_phase[0]) );
  DFQD2BWP12T30P140 reload_value_reg_0_ ( .D(n172), .CP(n399), .Q(
        reload_value[0]) );
  DFQD2BWP12T30P140 timer_reg_10_ ( .D(nxt_timer[10]), .CP(n397), .Q(timer[10]) );
  DFQD2BWP12T30P140 timer_reg_14_ ( .D(nxt_timer[14]), .CP(n401), .Q(timer[14]) );
  DFQD2BWP12T30P140 timer_reg_8_ ( .D(nxt_timer[8]), .CP(n403), .Q(timer[8])
         );
  DFQD2BWP12T30P140 timer_reg_6_ ( .D(nxt_timer[6]), .CP(n398), .Q(timer[6])
         );
  DFQD2BWP12T30P140 timer_reg_12_ ( .D(nxt_timer[12]), .CP(n397), .Q(timer[12]) );
  DFQD2BWP12T30P140 next_sample_reg_0_ ( .D(n170), .CP(n402), .Q(
        next_sample[0]) );
  DFQD2BWP12T30P140 timer_reg_7_ ( .D(nxt_timer[7]), .CP(n397), .Q(timer[7])
         );
  DFQD2BWP12T30P140 timer_reg_9_ ( .D(nxt_timer[9]), .CP(n398), .Q(timer[9])
         );
  DFQD2BWP12T30P140 reload_value_reg_14_ ( .D(n153), .CP(n399), .Q(
        reload_value[14]) );
  DFQD2BWP12T30P140 reload_value_reg_12_ ( .D(n151), .CP(n399), .Q(
        reload_value[12]) );
  DFQD2BWP12T30P140 reload_value_reg_10_ ( .D(n149), .CP(n399), .Q(
        reload_value[10]) );
  DFQD2BWP12T30P140 reload_value_reg_8_ ( .D(n147), .CP(n399), .Q(
        reload_value[8]) );
  DFQD2BWP12T30P140 reload_value_reg_6_ ( .D(n145), .CP(n399), .Q(
        reload_value[6]) );
  DFQD2BWP12T30P140 reload_value_reg_15_ ( .D(n154), .CP(n399), .Q(
        reload_value[15]) );
  DFQD2BWP12T30P140 reload_value_reg_13_ ( .D(n152), .CP(n399), .Q(
        reload_value[13]) );
  DFQD2BWP12T30P140 reload_value_reg_11_ ( .D(n150), .CP(n399), .Q(
        reload_value[11]) );
  DFQD2BWP12T30P140 reload_value_reg_9_ ( .D(n148), .CP(n399), .Q(
        reload_value[9]) );
  DFQD2BWP12T30P140 reload_value_reg_7_ ( .D(n146), .CP(n399), .Q(
        reload_value[7]) );
  DFQD2BWP12T30P140 reload_value_reg_5_ ( .D(n144), .CP(n399), .Q(
        reload_value[5]) );
  DFQD2BWP12T30P140 timer_reg_4_ ( .D(nxt_timer[4]), .CP(n396), .Q(timer[4])
         );
  DFQD2BWP12T30P140 nco_step_reg_7_ ( .D(n119), .CP(n396), .Q(nco_step[7]) );
  DFQD2BWP12T30P140 nco_step_reg_0_ ( .D(n112), .CP(n401), .Q(nco_step[0]) );
  DFQD2BWP12T30P140 reload_value_reg_4_ ( .D(n176), .CP(n401), .Q(
        reload_value[4]) );
  DFQD2BWP12T30P140 reload_value_reg_3_ ( .D(n175), .CP(n400), .Q(
        reload_value[3]) );
  DFQD2BWP12T30P140 reload_value_reg_2_ ( .D(n174), .CP(n397), .Q(
        reload_value[2]) );
  DFQD2BWP12T30P140 reload_value_reg_1_ ( .D(n173), .CP(n403), .Q(
        reload_value[1]) );
  DFQD2BWP12T30P140 timer_reg_15_ ( .D(nxt_timer[15]), .CP(n400), .Q(timer[15]) );
  DFQD2BWP12T30P140 timer_reg_1_ ( .D(nxt_timer[1]), .CP(n398), .Q(timer[1])
         );
  DFQD2BWP12T30P140 timer_reg_3_ ( .D(nxt_timer[3]), .CP(n402), .Q(timer[3])
         );
  DFQD2BWP12T30P140 timer_reg_2_ ( .D(nxt_timer[2]), .CP(n401), .Q(timer[2])
         );
  DFQD2BWP12T30P140 timer_reg_13_ ( .D(nxt_timer[13]), .CP(n400), .Q(timer[13]) );
  DFQD2BWP12T30P140 timer_reg_0_ ( .D(nxt_timer[0]), .CP(n399), .Q(timer[0])
         );
  DFQD2BWP12T30P140 nco_step_reg_30_ ( .D(n142), .CP(n398), .Q(nco_step[30])
         );
  DFQD2BWP12T30P140 nco_step_reg_21_ ( .D(n133), .CP(n398), .Q(nco_step[21])
         );
  DFQD2BWP12T30P140 nco_step_reg_20_ ( .D(n132), .CP(n398), .Q(nco_step[20])
         );
  DFQD2BWP12T30P140 nco_step_reg_19_ ( .D(n131), .CP(n397), .Q(nco_step[19])
         );
  DFQD2BWP12T30P140 nco_step_reg_18_ ( .D(n130), .CP(n397), .Q(nco_step[18])
         );
  DFQD2BWP12T30P140 nco_step_reg_17_ ( .D(n129), .CP(n397), .Q(nco_step[17])
         );
  DFQD2BWP12T30P140 nco_step_reg_16_ ( .D(n128), .CP(n397), .Q(nco_step[16])
         );
  DFQD2BWP12T30P140 nco_step_reg_15_ ( .D(n127), .CP(n397), .Q(nco_step[15])
         );
  DFQD2BWP12T30P140 nco_step_reg_14_ ( .D(n126), .CP(n397), .Q(nco_step[14])
         );
  DFQD2BWP12T30P140 nco_step_reg_12_ ( .D(n124), .CP(n397), .Q(nco_step[12])
         );
  DFQD2BWP12T30P140 nco_step_reg_11_ ( .D(n123), .CP(n397), .Q(nco_step[11])
         );
  DFQD2BWP12T30P140 nco_step_reg_10_ ( .D(n122), .CP(n397), .Q(nco_step[10])
         );
  DFQD2BWP12T30P140 nco_step_reg_9_ ( .D(n121), .CP(n397), .Q(nco_step[9]) );
  DFQD2BWP12T30P140 nco_step_reg_8_ ( .D(n120), .CP(n397), .Q(nco_step[8]) );
  DFQD2BWP12T30P140 nco_phase_reg_6_ ( .D(nxt_nco[6]), .CP(n403), .Q(
        nco_phase[6]) );
  DFQD2BWP12T30P140 nco_phase_reg_5_ ( .D(nxt_nco[5]), .CP(n403), .Q(
        nco_phase[5]) );
  DFQD2BWP12T30P140 nco_phase_reg_4_ ( .D(nxt_nco[4]), .CP(n403), .Q(
        nco_phase[4]) );
  DFQD2BWP12T30P140 nco_phase_reg_3_ ( .D(nxt_nco[3]), .CP(n403), .Q(
        nco_phase[3]) );
  DFQD2BWP12T30P140 nco_phase_reg_2_ ( .D(nxt_nco[2]), .CP(n403), .Q(
        nco_phase[2]) );
  DFQD2BWP12T30P140 nco_phase_reg_1_ ( .D(nxt_nco[1]), .CP(n403), .Q(
        nco_phase[1]) );
  DFQD2BWP12T30P140 nco_phase_reg_24_ ( .D(nxt_nco[24]), .CP(n396), .Q(
        nco_phase[24]) );
  DFQD2BWP12T30P140 nco_phase_reg_23_ ( .D(nxt_nco[23]), .CP(n399), .Q(
        nco_phase[23]) );
  DFQD2BWP12T30P140 nco_phase_reg_22_ ( .D(nxt_nco[22]), .CP(n402), .Q(
        nco_phase[22]) );
  DFQD2BWP12T30P140 nco_phase_reg_20_ ( .D(nxt_nco[20]), .CP(n400), .Q(
        nco_phase[20]) );
  DFQD2BWP12T30P140 nco_phase_reg_19_ ( .D(nxt_nco[19]), .CP(n397), .Q(
        nco_phase[19]) );
  DFQD2BWP12T30P140 nco_phase_reg_18_ ( .D(nxt_nco[18]), .CP(n403), .Q(
        nco_phase[18]) );
  DFQD2BWP12T30P140 nco_phase_reg_17_ ( .D(nxt_nco[17]), .CP(n398), .Q(
        nco_phase[17]) );
  DFQD2BWP12T30P140 nco_phase_reg_16_ ( .D(nxt_nco[16]), .CP(n403), .Q(
        nco_phase[16]) );
  DFQD2BWP12T30P140 nco_phase_reg_15_ ( .D(nxt_nco[15]), .CP(n398), .Q(
        nco_phase[15]) );
  DFQD2BWP12T30P140 nco_phase_reg_14_ ( .D(nxt_nco[14]), .CP(n396), .Q(
        nco_phase[14]) );
  DFQD2BWP12T30P140 nco_phase_reg_13_ ( .D(nxt_nco[13]), .CP(n396), .Q(
        nco_phase[13]) );
  DFQD2BWP12T30P140 nco_phase_reg_12_ ( .D(nxt_nco[12]), .CP(n403), .Q(
        nco_phase[12]) );
  DFQD2BWP12T30P140 nco_phase_reg_11_ ( .D(nxt_nco[11]), .CP(n403), .Q(
        nco_phase[11]) );
  DFQD2BWP12T30P140 nco_phase_reg_10_ ( .D(nxt_nco[10]), .CP(n403), .Q(
        nco_phase[10]) );
  DFQD2BWP12T30P140 nco_phase_reg_9_ ( .D(nxt_nco[9]), .CP(n403), .Q(
        nco_phase[9]) );
  DFQD2BWP12T30P140 nco_phase_reg_8_ ( .D(nxt_nco[8]), .CP(n403), .Q(
        nco_phase[8]) );
  DFQD2BWP12T30P140 nco_step_reg_29_ ( .D(n141), .CP(n398), .Q(nco_step[29])
         );
  DFQD2BWP12T30P140 nco_step_reg_27_ ( .D(n139), .CP(n398), .Q(nco_step[27])
         );
  DFQD2BWP12T30P140 nco_step_reg_26_ ( .D(n138), .CP(n398), .Q(nco_step[26])
         );
  DFQD2BWP12T30P140 nco_step_reg_25_ ( .D(n137), .CP(n398), .Q(nco_step[25])
         );
  DFQD2BWP12T30P140 nco_step_reg_24_ ( .D(n136), .CP(n398), .Q(nco_step[24])
         );
  DFQD2BWP12T30P140 nco_step_reg_23_ ( .D(n135), .CP(n398), .Q(nco_step[23])
         );
  DFQD2BWP12T30P140 nco_step_reg_22_ ( .D(n134), .CP(n398), .Q(nco_step[22])
         );
  DFQD2BWP12T30P140 sample_out_reg_14_ ( .D(n109), .CP(n396), .Q(
        sample_out[14]) );
  DFQD2BWP12T30P140 sample_out_reg_13_ ( .D(n108), .CP(n396), .Q(
        sample_out[13]) );
  DFQD2BWP12T30P140 sample_out_reg_12_ ( .D(n107), .CP(n396), .Q(
        sample_out[12]) );
  DFQD2BWP12T30P140 sample_out_reg_11_ ( .D(n106), .CP(n400), .Q(
        sample_out[11]) );
  DFQD2BWP12T30P140 sample_out_reg_10_ ( .D(n105), .CP(n397), .Q(
        sample_out[10]) );
  DFQD2BWP12T30P140 sample_out_reg_9_ ( .D(n104), .CP(n403), .Q(sample_out[9])
         );
  DFQD2BWP12T30P140 sample_out_reg_8_ ( .D(n103), .CP(n398), .Q(sample_out[8])
         );
  DFQD2BWP12T30P140 sample_out_reg_7_ ( .D(n102), .CP(n396), .Q(sample_out[7])
         );
  DFQD2BWP12T30P140 sample_out_reg_5_ ( .D(n100), .CP(n402), .Q(sample_out[5])
         );
  DFQD2BWP12T30P140 sample_out_reg_4_ ( .D(n99), .CP(n401), .Q(sample_out[4])
         );
  DFQD2BWP12T30P140 sample_out_reg_3_ ( .D(n98), .CP(n400), .Q(sample_out[3])
         );
  DFQD2BWP12T30P140 sample_out_reg_2_ ( .D(n97), .CP(n397), .Q(sample_out[2])
         );
  DFQD2BWP12T30P140 sample_out_reg_1_ ( .D(n96), .CP(n403), .Q(sample_out[1])
         );
  DFQD2BWP12T30P140 nco_step_reg_6_ ( .D(n118), .CP(n396), .Q(nco_step[6]) );
  DFQD2BWP12T30P140 nco_step_reg_5_ ( .D(n117), .CP(n396), .Q(nco_step[5]) );
  DFQD2BWP12T30P140 nco_step_reg_4_ ( .D(n116), .CP(n396), .Q(nco_step[4]) );
  DFQD2BWP12T30P140 nco_step_reg_3_ ( .D(n115), .CP(n396), .Q(nco_step[3]) );
  DFQD2BWP12T30P140 nco_step_reg_2_ ( .D(n114), .CP(n396), .Q(nco_step[2]) );
  DFQD2BWP12T30P140 nco_step_reg_1_ ( .D(n113), .CP(n396), .Q(nco_step[1]) );
  DFQD2BWP12T30P140 sample_out_reg_0_ ( .D(n111), .CP(n396), .Q(sample_out[0])
         );
  DFQD1BWP12T30P140 o_wb_data_reg_19_ ( .D(N84), .CP(n401), .Q(o_wb_data[19])
         );
  DFQD1BWP12T30P140 o_wb_data_reg_4_ ( .D(N69), .CP(n400), .Q(o_wb_data[4]) );
  DFQD1BWP12T30P140 next_sample_reg_6_ ( .D(n160), .CP(n402), .Q(
        next_sample[6]) );
  DFQD1BWP12T30P140 nco_step_reg_31_ ( .D(n143), .CP(n398), .Q(nco_step[31])
         );
  DFQD1BWP12T30P140 timer_reg_5_ ( .D(nxt_timer[5]), .CP(n403), .Q(timer[5])
         );
  DFQD1BWP12T30P140 timer_reg_11_ ( .D(nxt_timer[11]), .CP(n399), .Q(timer[11]) );
  DFQD1BWP12T30P140 nco_step_reg_13_ ( .D(n125), .CP(n397), .Q(nco_step[13])
         );
  DFQD1BWP12T30P140 nco_phase_reg_21_ ( .D(nxt_nco[21]), .CP(n401), .Q(
        nco_phase[21]) );
  DFQD1BWP12T30P140 nco_step_reg_28_ ( .D(n140), .CP(n398), .Q(nco_step[28])
         );
  DFQD1BWP12T30P140 sample_out_reg_6_ ( .D(n101), .CP(n399), .Q(sample_out[6])
         );
  DFQD1BWP12T30P140 sample_out_reg_15_ ( .D(n110), .CP(n396), .Q(
        sample_out[15]) );
  TIEHBWP12T30P140 U230 ( .Z(n179) );
  INVD1BWP12T30P140 U231 ( .I(n179), .ZN(o_wb_stall) );
  INVD0BWP12T30P140 U232 ( .I(i_wb_addr), .ZN(n234) );
  AN2D0BWP12T30P140 U233 ( .A1(i_wb_stb), .A2(i_wb_cyc), .Z(N97) );
  ND2D0BWP12T30P140 U234 ( .A1(N97), .A2(i_wb_we), .ZN(n185) );
  NR2D0BWP12T30P140 U235 ( .A1(n185), .A2(n234), .ZN(n288) );
  INVD0BWP12T30P140 U236 ( .I(i_wb_data[10]), .ZN(n218) );
  INVD0BWP12T30P140 U237 ( .I(nco_step[10]), .ZN(n228) );
  INVD0BWP12T30P140 U238 ( .I(n288), .ZN(n285) );
  AOI22D0BWP12T30P140 U239 ( .A1(n288), .A2(n218), .B1(n228), .B2(n285), .ZN(
        n122) );
  INVD0BWP12T30P140 U240 ( .I(i_wb_data[11]), .ZN(n219) );
  INVD0BWP12T30P140 U241 ( .I(nco_step[11]), .ZN(n229) );
  AOI22D0BWP12T30P140 U242 ( .A1(n288), .A2(n219), .B1(n229), .B2(n285), .ZN(
        n123) );
  INVD0BWP12T30P140 U243 ( .I(i_wb_data[12]), .ZN(n220) );
  INVD0BWP12T30P140 U244 ( .I(nco_step[12]), .ZN(n230) );
  AOI22D0BWP12T30P140 U245 ( .A1(n288), .A2(n220), .B1(n230), .B2(n285), .ZN(
        n124) );
  INVD0BWP12T30P140 U246 ( .I(i_wb_data[13]), .ZN(n221) );
  INVD0BWP12T30P140 U247 ( .I(nco_step[13]), .ZN(n231) );
  CKBD0BWP12T30P140 U248 ( .I(n285), .Z(n282) );
  AOI22D0BWP12T30P140 U249 ( .A1(n288), .A2(n221), .B1(n231), .B2(n282), .ZN(
        n125) );
  INVD0BWP12T30P140 U250 ( .I(i_wb_data[14]), .ZN(n222) );
  INVD0BWP12T30P140 U251 ( .I(nco_step[14]), .ZN(n232) );
  AOI22D0BWP12T30P140 U252 ( .A1(n288), .A2(n222), .B1(n232), .B2(n285), .ZN(
        n126) );
  INVD0BWP12T30P140 U253 ( .I(i_wb_data[15]), .ZN(n224) );
  INVD0BWP12T30P140 U254 ( .I(nco_step[15]), .ZN(n233) );
  AOI22D0BWP12T30P140 U255 ( .A1(n288), .A2(n224), .B1(n233), .B2(n285), .ZN(
        n127) );
  INVD0BWP12T30P140 U256 ( .I(nco_step[16]), .ZN(n236) );
  CKBD0BWP12T30P140 U257 ( .I(n285), .Z(n283) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n236), .A2(n283), .B1(n283), .B2(
        i_wb_data[16]), .ZN(n128) );
  INVD0BWP12T30P140 U259 ( .I(nco_step[17]), .ZN(n237) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n237), .A2(n283), .B1(n283), .B2(
        i_wb_data[17]), .ZN(n129) );
  INVD0BWP12T30P140 U261 ( .I(nco_step[18]), .ZN(n238) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n238), .A2(n283), .B1(n283), .B2(
        i_wb_data[18]), .ZN(n130) );
  INVD0BWP12T30P140 U263 ( .I(nco_step[19]), .ZN(n239) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n239), .A2(n283), .B1(n283), .B2(
        i_wb_data[19]), .ZN(n131) );
  INVD0BWP12T30P140 U265 ( .I(nco_step[20]), .ZN(n240) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n240), .A2(n283), .B1(n282), .B2(
        i_wb_data[20]), .ZN(n132) );
  INVD0BWP12T30P140 U267 ( .I(nco_step[21]), .ZN(n241) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n241), .A2(n283), .B1(n282), .B2(
        i_wb_data[21]), .ZN(n133) );
  INVD0BWP12T30P140 U269 ( .I(nco_step[30]), .ZN(n242) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n242), .A2(n283), .B1(n283), .B2(
        i_wb_data[30]), .ZN(n142) );
  NR4D0BWP12T30P140 U271 ( .A1(timer[15]), .A2(timer[14]), .A3(timer[13]), 
        .A4(timer[12]), .ZN(n183) );
  NR4D0BWP12T30P140 U272 ( .A1(timer[11]), .A2(timer[10]), .A3(timer[8]), .A4(
        timer[6]), .ZN(n182) );
  NR4D0BWP12T30P140 U273 ( .A1(timer[4]), .A2(timer[1]), .A3(timer[2]), .A4(
        timer[3]), .ZN(n181) );
  INR4D0BWP12T30P140 U274 ( .A1(timer[0]), .B1(timer[5]), .B2(timer[7]), .B3(
        timer[9]), .ZN(n180) );
  ND4D0BWP12T30P140 U275 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .ZN(
        n335) );
  INVD0BWP12T30P140 U276 ( .I(reload_value[0]), .ZN(n235) );
  OAI21D0BWP12T30P140 U277 ( .A1(n335), .A2(n235), .B(timer[0]), .ZN(
        nxt_timer[0]) );
  OR2D0BWP12T30P140 U278 ( .A1(timer[1]), .A2(timer[0]), .Z(n375) );
  OR2D0BWP12T30P140 U279 ( .A1(timer[2]), .A2(n375), .Z(n373) );
  OR2D0BWP12T30P140 U280 ( .A1(timer[3]), .A2(n373), .Z(n377) );
  OR2D0BWP12T30P140 U281 ( .A1(timer[4]), .A2(n377), .Z(n380) );
  NR2D0BWP12T30P140 U282 ( .A1(timer[5]), .A2(n380), .ZN(n382) );
  INVD0BWP12T30P140 U283 ( .I(timer[6]), .ZN(n194) );
  ND2D0BWP12T30P140 U284 ( .A1(n382), .A2(n194), .ZN(n383) );
  NR2D0BWP12T30P140 U285 ( .A1(timer[7]), .A2(n383), .ZN(n385) );
  INVD0BWP12T30P140 U286 ( .I(timer[8]), .ZN(n196) );
  ND2D0BWP12T30P140 U287 ( .A1(n385), .A2(n196), .ZN(n386) );
  NR2D0BWP12T30P140 U288 ( .A1(timer[9]), .A2(n386), .ZN(n388) );
  INVD0BWP12T30P140 U289 ( .I(timer[10]), .ZN(n201) );
  ND2D0BWP12T30P140 U290 ( .A1(n388), .A2(n201), .ZN(n389) );
  NR2D0BWP12T30P140 U291 ( .A1(timer[11]), .A2(n389), .ZN(n391) );
  INVD0BWP12T30P140 U292 ( .I(timer[12]), .ZN(n192) );
  ND2D0BWP12T30P140 U293 ( .A1(n391), .A2(n192), .ZN(n393) );
  NR2D0BWP12T30P140 U294 ( .A1(timer[13]), .A2(n393), .ZN(n395) );
  INVD0BWP12T30P140 U295 ( .I(timer[14]), .ZN(n199) );
  ND2D0BWP12T30P140 U296 ( .A1(n395), .A2(n199), .ZN(n198) );
  INVD0BWP12T30P140 U297 ( .I(n335), .ZN(n392) );
  CKBD0BWP12T30P140 U298 ( .I(n392), .Z(n371) );
  AOI22D0BWP12T30P140 U299 ( .A1(n371), .A2(reload_value[15]), .B1(timer[15]), 
        .B2(n198), .ZN(n184) );
  OAI21D0BWP12T30P140 U300 ( .A1(timer[15]), .A2(n198), .B(n184), .ZN(
        nxt_timer[15]) );
  INVD0BWP12T30P140 U301 ( .I(n234), .ZN(n243) );
  OR2D0BWP12T30P140 U302 ( .A1(n243), .A2(n185), .Z(n223) );
  INVD0BWP12T30P140 U303 ( .I(n223), .ZN(n215) );
  NR4D0BWP12T30P140 U304 ( .A1(i_wb_data[16]), .A2(i_wb_data[17]), .A3(
        i_wb_data[18]), .A4(i_wb_data[19]), .ZN(n189) );
  NR4D0BWP12T30P140 U305 ( .A1(i_wb_data[20]), .A2(i_wb_data[21]), .A3(
        i_wb_data[22]), .A4(i_wb_data[23]), .ZN(n188) );
  NR4D0BWP12T30P140 U306 ( .A1(i_wb_data[24]), .A2(i_wb_data[25]), .A3(
        i_wb_data[26]), .A4(i_wb_data[27]), .ZN(n187) );
  NR4D0BWP12T30P140 U307 ( .A1(i_wb_data[28]), .A2(i_wb_data[29]), .A3(
        i_wb_data[30]), .A4(i_wb_data[31]), .ZN(n186) );
  ND4D0BWP12T30P140 U308 ( .A1(n189), .A2(n188), .A3(n187), .A4(n186), .ZN(
        n190) );
  ND2D0BWP12T30P140 U309 ( .A1(n215), .A2(n190), .ZN(n202) );
  AO22D0BWP12T30P140 U310 ( .A1(i_wb_data[17]), .A2(n215), .B1(reload_value[1]), .B2(n202), .Z(n173) );
  AO22D0BWP12T30P140 U311 ( .A1(i_wb_data[18]), .A2(n215), .B1(reload_value[2]), .B2(n202), .Z(n174) );
  AO22D0BWP12T30P140 U312 ( .A1(i_wb_data[19]), .A2(n215), .B1(reload_value[3]), .B2(n202), .Z(n175) );
  AO22D0BWP12T30P140 U313 ( .A1(i_wb_data[20]), .A2(n215), .B1(reload_value[4]), .B2(n202), .Z(n176) );
  INVD0BWP12T30P140 U314 ( .I(i_wb_data[7]), .ZN(n216) );
  INVD0BWP12T30P140 U315 ( .I(nco_step[7]), .ZN(n226) );
  AOI22D0BWP12T30P140 U316 ( .A1(n288), .A2(n216), .B1(n226), .B2(n285), .ZN(
        n119) );
  AO22D0BWP12T30P140 U317 ( .A1(reload_value[5]), .A2(n202), .B1(i_wb_data[21]), .B2(n215), .Z(n144) );
  AO22D0BWP12T30P140 U318 ( .A1(reload_value[7]), .A2(n202), .B1(i_wb_data[23]), .B2(n215), .Z(n146) );
  AO22D0BWP12T30P140 U319 ( .A1(reload_value[9]), .A2(n202), .B1(i_wb_data[25]), .B2(n215), .Z(n148) );
  AO22D0BWP12T30P140 U320 ( .A1(reload_value[11]), .A2(n202), .B1(
        i_wb_data[27]), .B2(n215), .Z(n150) );
  AO22D0BWP12T30P140 U321 ( .A1(reload_value[13]), .A2(n202), .B1(
        i_wb_data[29]), .B2(n215), .Z(n152) );
  AO22D0BWP12T30P140 U322 ( .A1(reload_value[15]), .A2(n202), .B1(
        i_wb_data[31]), .B2(n215), .Z(n154) );
  AO22D0BWP12T30P140 U323 ( .A1(reload_value[6]), .A2(n202), .B1(i_wb_data[22]), .B2(n215), .Z(n145) );
  AO22D0BWP12T30P140 U324 ( .A1(reload_value[8]), .A2(n202), .B1(i_wb_data[24]), .B2(n215), .Z(n147) );
  AO22D0BWP12T30P140 U325 ( .A1(reload_value[10]), .A2(n202), .B1(
        i_wb_data[26]), .B2(n215), .Z(n149) );
  AO22D0BWP12T30P140 U326 ( .A1(reload_value[12]), .A2(n202), .B1(
        i_wb_data[28]), .B2(n215), .Z(n151) );
  AO22D0BWP12T30P140 U327 ( .A1(reload_value[14]), .A2(n202), .B1(
        i_wb_data[30]), .B2(n215), .Z(n153) );
  CKMUX2D0BWP12T30P140 U328 ( .I0(next_sample[0]), .I1(i_wb_data[0]), .S(n215), 
        .Z(n170) );
  ND2D0BWP12T30P140 U329 ( .A1(n371), .A2(reload_value[12]), .ZN(n191) );
  OAI211D0BWP12T30P140 U330 ( .A1(n391), .A2(n192), .B(n393), .C(n191), .ZN(
        nxt_timer[12]) );
  ND2D0BWP12T30P140 U331 ( .A1(n392), .A2(reload_value[6]), .ZN(n193) );
  OAI211D0BWP12T30P140 U332 ( .A1(n382), .A2(n194), .B(n383), .C(n193), .ZN(
        nxt_timer[6]) );
  ND2D0BWP12T30P140 U333 ( .A1(n371), .A2(reload_value[8]), .ZN(n195) );
  OAI211D0BWP12T30P140 U334 ( .A1(n385), .A2(n196), .B(n386), .C(n195), .ZN(
        nxt_timer[8]) );
  ND2D0BWP12T30P140 U335 ( .A1(n392), .A2(reload_value[14]), .ZN(n197) );
  OAI211D0BWP12T30P140 U336 ( .A1(n395), .A2(n199), .B(n198), .C(n197), .ZN(
        nxt_timer[14]) );
  ND2D0BWP12T30P140 U337 ( .A1(n392), .A2(reload_value[10]), .ZN(n200) );
  OAI211D0BWP12T30P140 U338 ( .A1(n388), .A2(n201), .B(n389), .C(n200), .ZN(
        nxt_timer[10]) );
  AO22D0BWP12T30P140 U339 ( .A1(i_wb_data[16]), .A2(n215), .B1(reload_value[0]), .B2(n202), .Z(n172) );
  INVD0BWP12T30P140 U340 ( .I(nco_step[31]), .ZN(n367) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n367), .A2(n282), .B1(n283), .B2(
        i_wb_data[31]), .ZN(n143) );
  INVD0BWP12T30P140 U342 ( .I(i_wb_data[9]), .ZN(n217) );
  INVD0BWP12T30P140 U343 ( .I(nco_step[9]), .ZN(n227) );
  AOI22D0BWP12T30P140 U344 ( .A1(n288), .A2(n217), .B1(n227), .B2(n285), .ZN(
        n121) );
  AN2D0BWP12T30P140 U345 ( .A1(nco_phase[0]), .A2(nco_step[0]), .Z(n379) );
  AN2D0BWP12T30P140 U346 ( .A1(nco_phase[7]), .A2(nco_step[7]), .Z(n351) );
  IAO21D0BWP12T30P140 U347 ( .A1(nco_step[7]), .A2(nco_phase[7]), .B(n351), 
        .ZN(n353) );
  FA1D0BWP12T30P140 U348 ( .A(nco_phase[8]), .B(sample_out[1]), .CI(
        nco_step[8]), .CO(n349), .S(n350) );
  FA1D0BWP12T30P140 U349 ( .A(nco_phase[9]), .B(sample_out[2]), .CI(
        nco_step[9]), .CO(n346), .S(n347) );
  FA1D0BWP12T30P140 U350 ( .A(nco_phase[10]), .B(sample_out[3]), .CI(
        nco_step[10]), .CO(n343), .S(n344) );
  FA1D0BWP12T30P140 U351 ( .A(nco_phase[11]), .B(sample_out[4]), .CI(
        nco_step[11]), .CO(n340), .S(n341) );
  FA1D0BWP12T30P140 U352 ( .A(nco_phase[12]), .B(sample_out[5]), .CI(
        nco_step[12]), .CO(n330), .S(n338) );
  FA1D0BWP12T30P140 U353 ( .A(nco_phase[13]), .B(sample_out[6]), .CI(
        nco_step[13]), .CO(n327), .S(n328) );
  FA1D0BWP12T30P140 U354 ( .A(nco_phase[14]), .B(sample_out[7]), .CI(
        nco_step[14]), .CO(n316), .S(n325) );
  FA1D0BWP12T30P140 U355 ( .A(nco_phase[15]), .B(sample_out[8]), .CI(
        nco_step[15]), .CO(n313), .S(n314) );
  FA1D0BWP12T30P140 U356 ( .A(nco_phase[16]), .B(sample_out[9]), .CI(
        nco_step[16]), .CO(n310), .S(n311) );
  FA1D0BWP12T30P140 U357 ( .A(nco_phase[17]), .B(sample_out[10]), .CI(
        nco_step[17]), .CO(n307), .S(n308) );
  FA1D0BWP12T30P140 U358 ( .A(nco_phase[18]), .B(sample_out[11]), .CI(
        nco_step[18]), .CO(n302), .S(n305) );
  FA1D0BWP12T30P140 U359 ( .A(nco_phase[19]), .B(sample_out[12]), .CI(
        nco_step[19]), .CO(n299), .S(n300) );
  FA1D0BWP12T30P140 U360 ( .A(nco_phase[20]), .B(sample_out[13]), .CI(
        nco_step[20]), .CO(n294), .S(n297) );
  FA1D0BWP12T30P140 U361 ( .A(nco_phase[21]), .B(sample_out[14]), .CI(
        nco_step[21]), .CO(n291), .S(n292) );
  FA1D0BWP12T30P140 U362 ( .A(nco_phase[22]), .B(nco_step[22]), .CI(
        sample_out[15]), .CO(n276), .S(n289) );
  FA1D0BWP12T30P140 U363 ( .A(nco_phase[23]), .B(nco_step[23]), .CI(
        sample_out[15]), .CO(n273), .S(n274) );
  FA1D0BWP12T30P140 U364 ( .A(nco_phase[24]), .B(nco_step[24]), .CI(
        sample_out[15]), .CO(n214), .S(n271) );
  FA1D0BWP12T30P140 U365 ( .A(nco_phase[25]), .B(nco_step[25]), .CI(
        sample_out[15]), .CO(n211), .S(n212) );
  FA1D0BWP12T30P140 U366 ( .A(nco_phase[26]), .B(nco_step[26]), .CI(
        sample_out[15]), .CO(n208), .S(n209) );
  FA1D0BWP12T30P140 U367 ( .A(nco_phase[27]), .B(nco_step[27]), .CI(
        sample_out[15]), .CO(n205), .S(n206) );
  FA1D0BWP12T30P140 U368 ( .A(nco_phase[28]), .B(nco_step[28]), .CI(
        sample_out[15]), .CO(n362), .S(n203) );
  FA1D0BWP12T30P140 U369 ( .A(n205), .B(n204), .CI(n203), .CO(n361), .S(
        nxt_nco[28]) );
  FA1D0BWP12T30P140 U370 ( .A(n208), .B(n207), .CI(n206), .CO(n204), .S(
        nxt_nco[27]) );
  FA1D0BWP12T30P140 U371 ( .A(n211), .B(n210), .CI(n209), .CO(n207), .S(
        nxt_nco[26]) );
  FA1D0BWP12T30P140 U372 ( .A(n214), .B(n213), .CI(n212), .CO(n210), .S(
        nxt_nco[25]) );
  INVD0BWP12T30P140 U373 ( .I(next_valid), .ZN(n177) );
  OAI21D0BWP12T30P140 U374 ( .A1(n371), .A2(n177), .B(n223), .ZN(n171) );
  INVD0BWP12T30P140 U375 ( .I(n223), .ZN(n225) );
  INVD0BWP12T30P140 U376 ( .I(i_wb_data[1]), .ZN(n254) );
  INVD0BWP12T30P140 U377 ( .I(next_sample[1]), .ZN(n252) );
  AOI22D0BWP12T30P140 U378 ( .A1(n225), .A2(n254), .B1(n252), .B2(n223), .ZN(
        n155) );
  INVD0BWP12T30P140 U379 ( .I(i_wb_data[2]), .ZN(n259) );
  INVD0BWP12T30P140 U380 ( .I(next_sample[2]), .ZN(n324) );
  AOI22D0BWP12T30P140 U381 ( .A1(n225), .A2(n259), .B1(n324), .B2(n223), .ZN(
        n156) );
  INVD0BWP12T30P140 U382 ( .I(i_wb_data[3]), .ZN(n264) );
  INVD0BWP12T30P140 U383 ( .I(next_sample[3]), .ZN(n334) );
  AOI22D0BWP12T30P140 U384 ( .A1(n215), .A2(n264), .B1(n334), .B2(n223), .ZN(
        n157) );
  INVD0BWP12T30P140 U385 ( .I(i_wb_data[4]), .ZN(n269) );
  INVD0BWP12T30P140 U386 ( .I(next_sample[4]), .ZN(n304) );
  AOI22D0BWP12T30P140 U387 ( .A1(n215), .A2(n269), .B1(n304), .B2(n223), .ZN(
        n158) );
  INVD0BWP12T30P140 U388 ( .I(i_wb_data[5]), .ZN(n279) );
  INVD0BWP12T30P140 U389 ( .I(next_sample[5]), .ZN(n337) );
  AOI22D0BWP12T30P140 U390 ( .A1(n225), .A2(n279), .B1(n337), .B2(n223), .ZN(
        n159) );
  INVD0BWP12T30P140 U391 ( .I(i_wb_data[6]), .ZN(n287) );
  INVD0BWP12T30P140 U392 ( .I(next_sample[6]), .ZN(n281) );
  AOI22D0BWP12T30P140 U393 ( .A1(n225), .A2(n287), .B1(n281), .B2(n223), .ZN(
        n160) );
  INVD0BWP12T30P140 U394 ( .I(next_sample[7]), .ZN(n296) );
  AOI22D0BWP12T30P140 U395 ( .A1(n225), .A2(n216), .B1(n296), .B2(n223), .ZN(
        n161) );
  INVD0BWP12T30P140 U396 ( .I(i_wb_data[8]), .ZN(n248) );
  INVD0BWP12T30P140 U397 ( .I(next_sample[8]), .ZN(n320) );
  AOI22D0BWP12T30P140 U398 ( .A1(n225), .A2(n248), .B1(n320), .B2(n223), .ZN(
        n162) );
  INVD0BWP12T30P140 U399 ( .I(next_sample[9]), .ZN(n322) );
  AOI22D0BWP12T30P140 U400 ( .A1(n225), .A2(n217), .B1(n322), .B2(n223), .ZN(
        n163) );
  INVD0BWP12T30P140 U401 ( .I(next_sample[10]), .ZN(n332) );
  AOI22D0BWP12T30P140 U402 ( .A1(n225), .A2(n218), .B1(n332), .B2(n223), .ZN(
        n164) );
  INVD0BWP12T30P140 U403 ( .I(next_sample[11]), .ZN(n318) );
  AOI22D0BWP12T30P140 U404 ( .A1(n225), .A2(n219), .B1(n318), .B2(n223), .ZN(
        n165) );
  INVD0BWP12T30P140 U405 ( .I(next_sample[12]), .ZN(n262) );
  AOI22D0BWP12T30P140 U406 ( .A1(n225), .A2(n220), .B1(n262), .B2(n223), .ZN(
        n166) );
  INVD0BWP12T30P140 U407 ( .I(next_sample[13]), .ZN(n266) );
  AOI22D0BWP12T30P140 U408 ( .A1(n225), .A2(n221), .B1(n266), .B2(n223), .ZN(
        n167) );
  INVD0BWP12T30P140 U409 ( .I(next_sample[14]), .ZN(n257) );
  AOI22D0BWP12T30P140 U410 ( .A1(n225), .A2(n222), .B1(n257), .B2(n223), .ZN(
        n168) );
  INVD0BWP12T30P140 U411 ( .I(next_sample[15]), .ZN(n246) );
  AOI22D0BWP12T30P140 U412 ( .A1(n225), .A2(n224), .B1(n246), .B2(n223), .ZN(
        n169) );
  INVD0BWP12T30P140 U413 ( .I(n234), .ZN(n244) );
  INVD0BWP12T30P140 U414 ( .I(nco_step[0]), .ZN(n245) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n244), .A2(n245), .B1(o_int), .B2(n244), 
        .ZN(N65) );
  INVD0BWP12T30P140 U416 ( .I(nco_step[1]), .ZN(n253) );
  INVD0BWP12T30P140 U417 ( .I(sample_out[1]), .ZN(n251) );
  AOI22D0BWP12T30P140 U418 ( .A1(n244), .A2(n253), .B1(n251), .B2(n234), .ZN(
        N66) );
  INVD0BWP12T30P140 U419 ( .I(nco_step[2]), .ZN(n258) );
  INVD0BWP12T30P140 U420 ( .I(sample_out[2]), .ZN(n323) );
  AOI22D0BWP12T30P140 U421 ( .A1(n243), .A2(n258), .B1(n323), .B2(n234), .ZN(
        N67) );
  INVD0BWP12T30P140 U422 ( .I(nco_step[3]), .ZN(n263) );
  INVD0BWP12T30P140 U423 ( .I(sample_out[3]), .ZN(n333) );
  AOI22D0BWP12T30P140 U424 ( .A1(n243), .A2(n263), .B1(n333), .B2(n234), .ZN(
        N68) );
  INVD0BWP12T30P140 U425 ( .I(nco_step[4]), .ZN(n268) );
  INVD0BWP12T30P140 U426 ( .I(sample_out[4]), .ZN(n303) );
  AOI22D0BWP12T30P140 U427 ( .A1(n244), .A2(n268), .B1(n303), .B2(n234), .ZN(
        N69) );
  INVD0BWP12T30P140 U428 ( .I(nco_step[5]), .ZN(n278) );
  INVD0BWP12T30P140 U429 ( .I(sample_out[5]), .ZN(n336) );
  AOI22D0BWP12T30P140 U430 ( .A1(n244), .A2(n278), .B1(n336), .B2(n234), .ZN(
        N70) );
  INVD0BWP12T30P140 U431 ( .I(nco_step[6]), .ZN(n286) );
  INVD0BWP12T30P140 U432 ( .I(sample_out[6]), .ZN(n280) );
  AOI22D0BWP12T30P140 U433 ( .A1(i_wb_addr), .A2(n286), .B1(n280), .B2(n234), 
        .ZN(N71) );
  INVD0BWP12T30P140 U434 ( .I(sample_out[7]), .ZN(n295) );
  AOI22D0BWP12T30P140 U435 ( .A1(i_wb_addr), .A2(n226), .B1(n295), .B2(n234), 
        .ZN(N72) );
  INVD0BWP12T30P140 U436 ( .I(nco_step[8]), .ZN(n247) );
  INVD0BWP12T30P140 U437 ( .I(sample_out[8]), .ZN(n319) );
  AOI22D0BWP12T30P140 U438 ( .A1(n243), .A2(n247), .B1(n319), .B2(n234), .ZN(
        N73) );
  INVD0BWP12T30P140 U439 ( .I(sample_out[9]), .ZN(n321) );
  AOI22D0BWP12T30P140 U440 ( .A1(n243), .A2(n227), .B1(n321), .B2(n234), .ZN(
        N74) );
  INVD0BWP12T30P140 U441 ( .I(sample_out[10]), .ZN(n331) );
  AOI22D0BWP12T30P140 U442 ( .A1(n243), .A2(n228), .B1(n331), .B2(n234), .ZN(
        N75) );
  INVD0BWP12T30P140 U443 ( .I(sample_out[11]), .ZN(n317) );
  AOI22D0BWP12T30P140 U444 ( .A1(n244), .A2(n229), .B1(n317), .B2(n234), .ZN(
        N76) );
  INVD0BWP12T30P140 U445 ( .I(sample_out[12]), .ZN(n261) );
  AOI22D0BWP12T30P140 U446 ( .A1(n244), .A2(n230), .B1(n261), .B2(n234), .ZN(
        N77) );
  INVD0BWP12T30P140 U447 ( .I(sample_out[13]), .ZN(n265) );
  AOI22D0BWP12T30P140 U448 ( .A1(n243), .A2(n231), .B1(n265), .B2(n234), .ZN(
        N78) );
  INVD0BWP12T30P140 U449 ( .I(sample_out[14]), .ZN(n256) );
  AOI22D0BWP12T30P140 U450 ( .A1(i_wb_addr), .A2(n232), .B1(n256), .B2(n234), 
        .ZN(N79) );
  INVD0BWP12T30P140 U451 ( .I(sample_out[15]), .ZN(n366) );
  AOI22D0BWP12T30P140 U452 ( .A1(i_wb_addr), .A2(n233), .B1(n366), .B2(n234), 
        .ZN(N80) );
  AOI22D0BWP12T30P140 U453 ( .A1(n244), .A2(n236), .B1(n235), .B2(n234), .ZN(
        N81) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n243), .A2(n237), .B1(reload_value[1]), .B2(
        n243), .ZN(N82) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n243), .A2(n238), .B1(reload_value[2]), .B2(
        n243), .ZN(N83) );
  MAOI22D0BWP12T30P140 U456 ( .A1(n243), .A2(n239), .B1(reload_value[3]), .B2(
        n243), .ZN(N84) );
  MAOI22D0BWP12T30P140 U457 ( .A1(n243), .A2(n240), .B1(reload_value[4]), .B2(
        n243), .ZN(N85) );
  MAOI22D0BWP12T30P140 U458 ( .A1(n243), .A2(n241), .B1(reload_value[5]), .B2(
        n244), .ZN(N86) );
  INVD0BWP12T30P140 U459 ( .I(nco_step[22]), .ZN(n249) );
  MAOI22D0BWP12T30P140 U460 ( .A1(n243), .A2(n249), .B1(reload_value[6]), .B2(
        n244), .ZN(N87) );
  INVD0BWP12T30P140 U461 ( .I(nco_step[23]), .ZN(n250) );
  MAOI22D0BWP12T30P140 U462 ( .A1(n243), .A2(n250), .B1(reload_value[7]), .B2(
        n244), .ZN(N88) );
  INVD0BWP12T30P140 U463 ( .I(nco_step[24]), .ZN(n255) );
  MAOI22D0BWP12T30P140 U464 ( .A1(n243), .A2(n255), .B1(reload_value[8]), .B2(
        n244), .ZN(N89) );
  INVD0BWP12T30P140 U465 ( .I(nco_step[25]), .ZN(n260) );
  MAOI22D0BWP12T30P140 U466 ( .A1(i_wb_addr), .A2(n260), .B1(reload_value[9]), 
        .B2(n244), .ZN(N90) );
  INVD0BWP12T30P140 U467 ( .I(nco_step[26]), .ZN(n267) );
  MAOI22D0BWP12T30P140 U468 ( .A1(i_wb_addr), .A2(n267), .B1(reload_value[10]), 
        .B2(n244), .ZN(N91) );
  INVD0BWP12T30P140 U469 ( .I(nco_step[27]), .ZN(n270) );
  MAOI22D0BWP12T30P140 U470 ( .A1(i_wb_addr), .A2(n270), .B1(reload_value[11]), 
        .B2(n244), .ZN(N92) );
  INVD0BWP12T30P140 U471 ( .I(nco_step[28]), .ZN(n277) );
  MAOI22D0BWP12T30P140 U472 ( .A1(i_wb_addr), .A2(n277), .B1(reload_value[12]), 
        .B2(n244), .ZN(N93) );
  INVD0BWP12T30P140 U473 ( .I(nco_step[29]), .ZN(n284) );
  MAOI22D0BWP12T30P140 U474 ( .A1(n244), .A2(n284), .B1(reload_value[13]), 
        .B2(n244), .ZN(N94) );
  MAOI22D0BWP12T30P140 U475 ( .A1(n243), .A2(n242), .B1(reload_value[14]), 
        .B2(n244), .ZN(N95) );
  MAOI22D0BWP12T30P140 U476 ( .A1(i_wb_addr), .A2(n367), .B1(reload_value[15]), 
        .B2(n244), .ZN(N96) );
  MAOI22D0BWP12T30P140 U477 ( .A1(n245), .A2(n285), .B1(n283), .B2(
        i_wb_data[0]), .ZN(n112) );
  AOI22D0BWP12T30P140 U478 ( .A1(n392), .A2(n246), .B1(n366), .B2(n335), .ZN(
        n110) );
  AOI22D0BWP12T30P140 U479 ( .A1(n288), .A2(n248), .B1(n247), .B2(n285), .ZN(
        n120) );
  MAOI22D0BWP12T30P140 U480 ( .A1(n249), .A2(n285), .B1(n282), .B2(
        i_wb_data[22]), .ZN(n134) );
  MAOI22D0BWP12T30P140 U481 ( .A1(n250), .A2(n282), .B1(n282), .B2(
        i_wb_data[23]), .ZN(n135) );
  CKMUX2D0BWP12T30P140 U482 ( .I0(sample_out[0]), .I1(next_sample[0]), .S(n392), .Z(n111) );
  AOI22D0BWP12T30P140 U483 ( .A1(n371), .A2(n252), .B1(n251), .B2(n335), .ZN(
        n96) );
  AOI22D0BWP12T30P140 U484 ( .A1(n288), .A2(n254), .B1(n253), .B2(n282), .ZN(
        n113) );
  MAOI22D0BWP12T30P140 U485 ( .A1(n255), .A2(n283), .B1(n282), .B2(
        i_wb_data[24]), .ZN(n136) );
  AOI22D0BWP12T30P140 U486 ( .A1(n371), .A2(n257), .B1(n256), .B2(n335), .ZN(
        n109) );
  AOI22D0BWP12T30P140 U487 ( .A1(n288), .A2(n259), .B1(n258), .B2(n285), .ZN(
        n114) );
  MAOI22D0BWP12T30P140 U488 ( .A1(n260), .A2(n285), .B1(n282), .B2(
        i_wb_data[25]), .ZN(n137) );
  AOI22D0BWP12T30P140 U489 ( .A1(n371), .A2(n262), .B1(n261), .B2(n335), .ZN(
        n107) );
  AOI22D0BWP12T30P140 U490 ( .A1(n288), .A2(n264), .B1(n263), .B2(n282), .ZN(
        n115) );
  AOI22D0BWP12T30P140 U491 ( .A1(n392), .A2(n266), .B1(n265), .B2(n335), .ZN(
        n108) );
  MAOI22D0BWP12T30P140 U492 ( .A1(n267), .A2(n282), .B1(n282), .B2(
        i_wb_data[26]), .ZN(n138) );
  AOI22D0BWP12T30P140 U493 ( .A1(n288), .A2(n269), .B1(n268), .B2(n285), .ZN(
        n116) );
  MAOI22D0BWP12T30P140 U494 ( .A1(n270), .A2(n283), .B1(n282), .B2(
        i_wb_data[27]), .ZN(n139) );
  FA1D0BWP12T30P140 U495 ( .A(n273), .B(n272), .CI(n271), .CO(n213), .S(
        nxt_nco[24]) );
  FA1D0BWP12T30P140 U496 ( .A(n276), .B(n275), .CI(n274), .CO(n272), .S(
        nxt_nco[23]) );
  MAOI22D0BWP12T30P140 U497 ( .A1(n277), .A2(n285), .B1(n282), .B2(
        i_wb_data[28]), .ZN(n140) );
  AOI22D0BWP12T30P140 U498 ( .A1(n288), .A2(n279), .B1(n278), .B2(n282), .ZN(
        n117) );
  AOI22D0BWP12T30P140 U499 ( .A1(n371), .A2(n281), .B1(n280), .B2(n335), .ZN(
        n101) );
  MAOI22D0BWP12T30P140 U500 ( .A1(n284), .A2(n283), .B1(n282), .B2(
        i_wb_data[29]), .ZN(n141) );
  AOI22D0BWP12T30P140 U501 ( .A1(n288), .A2(n287), .B1(n286), .B2(n285), .ZN(
        n118) );
  FA1D0BWP12T30P140 U502 ( .A(n291), .B(n290), .CI(n289), .CO(n275), .S(
        nxt_nco[22]) );
  FA1D0BWP12T30P140 U503 ( .A(n294), .B(n293), .CI(n292), .CO(n290), .S(
        nxt_nco[21]) );
  AOI22D0BWP12T30P140 U504 ( .A1(n371), .A2(n296), .B1(n295), .B2(n335), .ZN(
        n102) );
  FA1D0BWP12T30P140 U505 ( .A(n299), .B(n298), .CI(n297), .CO(n293), .S(
        nxt_nco[20]) );
  FA1D0BWP12T30P140 U506 ( .A(n302), .B(n301), .CI(n300), .CO(n298), .S(
        nxt_nco[19]) );
  AOI22D0BWP12T30P140 U507 ( .A1(n371), .A2(n304), .B1(n303), .B2(n335), .ZN(
        n99) );
  FA1D0BWP12T30P140 U508 ( .A(n307), .B(n306), .CI(n305), .CO(n301), .S(
        nxt_nco[18]) );
  FA1D0BWP12T30P140 U509 ( .A(n310), .B(n309), .CI(n308), .CO(n306), .S(
        nxt_nco[17]) );
  FA1D0BWP12T30P140 U510 ( .A(n313), .B(n312), .CI(n311), .CO(n309), .S(
        nxt_nco[16]) );
  FA1D0BWP12T30P140 U511 ( .A(n316), .B(n315), .CI(n314), .CO(n312), .S(
        nxt_nco[15]) );
  AOI22D0BWP12T30P140 U512 ( .A1(n371), .A2(n318), .B1(n317), .B2(n335), .ZN(
        n106) );
  AOI22D0BWP12T30P140 U513 ( .A1(n371), .A2(n320), .B1(n319), .B2(n335), .ZN(
        n103) );
  AOI22D0BWP12T30P140 U514 ( .A1(n371), .A2(n322), .B1(n321), .B2(n335), .ZN(
        n104) );
  AOI22D0BWP12T30P140 U515 ( .A1(n371), .A2(n324), .B1(n323), .B2(n335), .ZN(
        n97) );
  FA1D0BWP12T30P140 U516 ( .A(n327), .B(n326), .CI(n325), .CO(n315), .S(
        nxt_nco[14]) );
  FA1D0BWP12T30P140 U517 ( .A(n330), .B(n329), .CI(n328), .CO(n326), .S(
        nxt_nco[13]) );
  AOI22D0BWP12T30P140 U518 ( .A1(n371), .A2(n332), .B1(n331), .B2(n335), .ZN(
        n105) );
  AOI22D0BWP12T30P140 U519 ( .A1(n371), .A2(n334), .B1(n333), .B2(n335), .ZN(
        n98) );
  AOI22D0BWP12T30P140 U520 ( .A1(n371), .A2(n337), .B1(n336), .B2(n335), .ZN(
        n100) );
  FA1D0BWP12T30P140 U521 ( .A(n340), .B(n339), .CI(n338), .CO(n329), .S(
        nxt_nco[12]) );
  FA1D0BWP12T30P140 U522 ( .A(n343), .B(n342), .CI(n341), .CO(n339), .S(
        nxt_nco[11]) );
  FA1D0BWP12T30P140 U523 ( .A(n346), .B(n345), .CI(n344), .CO(n342), .S(
        nxt_nco[10]) );
  FA1D0BWP12T30P140 U524 ( .A(n349), .B(n348), .CI(n347), .CO(n345), .S(
        nxt_nco[9]) );
  FA1D0BWP12T30P140 U525 ( .A(n352), .B(n351), .CI(n350), .CO(n348), .S(
        nxt_nco[8]) );
  FA1D0BWP12T30P140 U526 ( .A(sample_out[0]), .B(n354), .CI(n353), .CO(n352), 
        .S(nxt_nco[7]) );
  FA1D0BWP12T30P140 U527 ( .A(nco_step[6]), .B(nco_phase[6]), .CI(n355), .CO(
        n354), .S(nxt_nco[6]) );
  FA1D0BWP12T30P140 U528 ( .A(nco_step[5]), .B(nco_phase[5]), .CI(n356), .CO(
        n355), .S(nxt_nco[5]) );
  FA1D0BWP12T30P140 U529 ( .A(nco_step[4]), .B(nco_phase[4]), .CI(n357), .CO(
        n356), .S(nxt_nco[4]) );
  FA1D0BWP12T30P140 U530 ( .A(nco_step[3]), .B(nco_phase[3]), .CI(n358), .CO(
        n357), .S(nxt_nco[3]) );
  FA1D0BWP12T30P140 U531 ( .A(nco_step[2]), .B(nco_phase[2]), .CI(n359), .CO(
        n358), .S(nxt_nco[2]) );
  FA1D0BWP12T30P140 U532 ( .A(nco_step[1]), .B(nco_phase[1]), .CI(n379), .CO(
        n359), .S(nxt_nco[1]) );
  CKBD0BWP12T30P140 U533 ( .I(i_clk), .Z(n400) );
  CKBD0BWP12T30P140 U534 ( .I(i_clk), .Z(n401) );
  CKBD0BWP12T30P140 U535 ( .I(i_clk), .Z(n402) );
  CKBD0BWP12T30P140 U536 ( .I(i_clk), .Z(n399) );
  CKBD0BWP12T30P140 U537 ( .I(i_clk), .Z(n396) );
  CKBD0BWP12T30P140 U538 ( .I(i_clk), .Z(n398) );
  CKBD0BWP12T30P140 U539 ( .I(i_clk), .Z(n403) );
  CKBD0BWP12T30P140 U540 ( .I(i_clk), .Z(n397) );
  FA1D0BWP12T30P140 U541 ( .A(nco_phase[29]), .B(nco_step[29]), .CI(
        sample_out[15]), .CO(n365), .S(n360) );
  FA1D0BWP12T30P140 U542 ( .A(n362), .B(n361), .CI(n360), .CO(n364), .S(
        nxt_nco[29]) );
  FA1D0BWP12T30P140 U543 ( .A(nco_phase[30]), .B(sample_out[15]), .CI(
        nco_step[30]), .CO(n370), .S(n363) );
  FA1D0BWP12T30P140 U544 ( .A(n365), .B(n364), .CI(n363), .CO(n369), .S(
        nxt_nco[30]) );
  AOI22D0BWP12T30P140 U545 ( .A1(sample_out[15]), .A2(n367), .B1(nco_step[31]), 
        .B2(n366), .ZN(n368) );
  XNR4D0BWP12T30P140 U546 ( .A1(n370), .A2(n369), .A3(o_tx), .A4(n368), .ZN(
        nxt_nco[31]) );
  AOI22D0BWP12T30P140 U547 ( .A1(timer[2]), .A2(n375), .B1(n371), .B2(
        reload_value[2]), .ZN(n372) );
  ND2D0BWP12T30P140 U548 ( .A1(n372), .A2(n373), .ZN(nxt_timer[2]) );
  AOI22D0BWP12T30P140 U549 ( .A1(timer[3]), .A2(n373), .B1(n392), .B2(
        reload_value[3]), .ZN(n374) );
  ND2D0BWP12T30P140 U550 ( .A1(n374), .A2(n377), .ZN(nxt_timer[3]) );
  AOI22D0BWP12T30P140 U551 ( .A1(timer[1]), .A2(timer[0]), .B1(n392), .B2(
        reload_value[1]), .ZN(n376) );
  ND2D0BWP12T30P140 U552 ( .A1(n376), .A2(n375), .ZN(nxt_timer[1]) );
  AOI22D0BWP12T30P140 U553 ( .A1(timer[4]), .A2(n377), .B1(n392), .B2(
        reload_value[4]), .ZN(n378) );
  ND2D0BWP12T30P140 U554 ( .A1(n378), .A2(n380), .ZN(nxt_timer[4]) );
  IAO21D0BWP12T30P140 U555 ( .A1(nco_step[0]), .A2(nco_phase[0]), .B(n379), 
        .ZN(nxt_nco[0]) );
  AOI22D0BWP12T30P140 U556 ( .A1(timer[5]), .A2(n380), .B1(n392), .B2(
        reload_value[5]), .ZN(n381) );
  IND2D1BWP12T30P140 U557 ( .A1(n382), .B1(n381), .ZN(nxt_timer[5]) );
  AOI22D0BWP12T30P140 U558 ( .A1(timer[7]), .A2(n383), .B1(n392), .B2(
        reload_value[7]), .ZN(n384) );
  IND2D1BWP12T30P140 U559 ( .A1(n385), .B1(n384), .ZN(nxt_timer[7]) );
  AOI22D0BWP12T30P140 U560 ( .A1(timer[9]), .A2(n386), .B1(n392), .B2(
        reload_value[9]), .ZN(n387) );
  IND2D1BWP12T30P140 U561 ( .A1(n388), .B1(n387), .ZN(nxt_timer[9]) );
  AOI22D0BWP12T30P140 U562 ( .A1(timer[11]), .A2(n389), .B1(n392), .B2(
        reload_value[11]), .ZN(n390) );
  IND2D1BWP12T30P140 U563 ( .A1(n391), .B1(n390), .ZN(nxt_timer[11]) );
  AOI22D0BWP12T30P140 U564 ( .A1(timer[13]), .A2(n393), .B1(n392), .B2(
        reload_value[13]), .ZN(n394) );
  IND2D1BWP12T30P140 U565 ( .A1(n395), .B1(n394), .ZN(nxt_timer[13]) );
endmodule

