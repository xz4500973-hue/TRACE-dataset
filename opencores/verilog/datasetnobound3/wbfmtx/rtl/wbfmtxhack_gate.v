/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:53:34 2026
/////////////////////////////////////////////////////////////


module wbfmtxhack ( i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, 
        o_wb_ack, o_wb_stall, o_wb_data, o_tx, o_int );
  input [31:0] i_wb_data;
  output [31:0] o_wb_data;
  input i_clk, i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr;
  output o_wb_ack, o_wb_stall, o_tx, o_int;
  wire   N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, valid_r, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427;
  wire   [15:0] timer_r;
  wire   [15:0] sample_hold_r;
  wire   [31:0] nco_step_r;
  wire   [15:0] reload_r;
  wire   [15:0] next_samp_r;
  wire   [30:0] phase_r;

  DFQD2BWP12T30P140 next_samp_r_reg_15_ ( .D(n170), .CP(i_clk), .Q(
        next_samp_r[15]) );
  DFQD2BWP12T30P140 next_samp_r_reg_14_ ( .D(n169), .CP(i_clk), .Q(
        next_samp_r[14]) );
  DFQD2BWP12T30P140 next_samp_r_reg_13_ ( .D(n168), .CP(i_clk), .Q(
        next_samp_r[13]) );
  DFQD2BWP12T30P140 next_samp_r_reg_12_ ( .D(n167), .CP(i_clk), .Q(
        next_samp_r[12]) );
  DFQD2BWP12T30P140 next_samp_r_reg_11_ ( .D(n166), .CP(i_clk), .Q(
        next_samp_r[11]) );
  DFQD2BWP12T30P140 next_samp_r_reg_10_ ( .D(n165), .CP(i_clk), .Q(
        next_samp_r[10]) );
  DFQD2BWP12T30P140 next_samp_r_reg_9_ ( .D(n164), .CP(i_clk), .Q(
        next_samp_r[9]) );
  DFQD2BWP12T30P140 o_wb_ack_reg ( .D(N110), .CP(n427), .Q(o_wb_ack) );
  DFQD2BWP12T30P140 o_wb_data_reg_31_ ( .D(N109), .CP(n422), .Q(o_wb_data[31])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_30_ ( .D(N108), .CP(n421), .Q(o_wb_data[30])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_29_ ( .D(N107), .CP(n426), .Q(o_wb_data[29])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_28_ ( .D(N106), .CP(n423), .Q(o_wb_data[28])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_27_ ( .D(N105), .CP(n424), .Q(o_wb_data[27])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_26_ ( .D(N104), .CP(n427), .Q(o_wb_data[26])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_24_ ( .D(N102), .CP(n425), .Q(o_wb_data[24])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_23_ ( .D(N101), .CP(n420), .Q(o_wb_data[23])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_22_ ( .D(N100), .CP(n421), .Q(o_wb_data[22])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_21_ ( .D(N99), .CP(n426), .Q(o_wb_data[21])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_20_ ( .D(N98), .CP(n423), .Q(o_wb_data[20])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_19_ ( .D(N97), .CP(n424), .Q(o_wb_data[19])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_18_ ( .D(N96), .CP(n427), .Q(o_wb_data[18])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_17_ ( .D(N95), .CP(n425), .Q(o_wb_data[17])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_16_ ( .D(N94), .CP(n420), .Q(o_wb_data[16])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_15_ ( .D(N93), .CP(n422), .Q(o_wb_data[15])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_14_ ( .D(N92), .CP(n421), .Q(o_wb_data[14])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_13_ ( .D(N91), .CP(n426), .Q(o_wb_data[13])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_12_ ( .D(N90), .CP(n423), .Q(o_wb_data[12])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_11_ ( .D(N89), .CP(n424), .Q(o_wb_data[11])
         );
  DFQD2BWP12T30P140 o_wb_data_reg_9_ ( .D(N87), .CP(n420), .Q(o_wb_data[9]) );
  DFQD2BWP12T30P140 o_wb_data_reg_8_ ( .D(N86), .CP(n425), .Q(o_wb_data[8]) );
  DFQD2BWP12T30P140 o_wb_data_reg_7_ ( .D(N85), .CP(n420), .Q(o_wb_data[7]) );
  DFQD2BWP12T30P140 o_wb_data_reg_6_ ( .D(N84), .CP(n422), .Q(o_wb_data[6]) );
  DFQD2BWP12T30P140 o_wb_data_reg_5_ ( .D(N83), .CP(n421), .Q(o_wb_data[5]) );
  DFQD2BWP12T30P140 o_wb_data_reg_4_ ( .D(N82), .CP(n426), .Q(o_wb_data[4]) );
  DFQD2BWP12T30P140 o_wb_data_reg_3_ ( .D(N81), .CP(n423), .Q(o_wb_data[3]) );
  DFQD2BWP12T30P140 o_wb_data_reg_2_ ( .D(N80), .CP(n424), .Q(o_wb_data[2]) );
  DFQD2BWP12T30P140 o_wb_data_reg_1_ ( .D(N79), .CP(n427), .Q(o_wb_data[1]) );
  DFQD2BWP12T30P140 o_wb_data_reg_0_ ( .D(N78), .CP(n420), .Q(o_wb_data[0]) );
  DFQD2BWP12T30P140 o_int_reg ( .D(n177), .CP(n422), .Q(o_int) );
  DFQD2BWP12T30P140 next_samp_r_reg_8_ ( .D(n163), .CP(n427), .Q(
        next_samp_r[8]) );
  DFQD2BWP12T30P140 next_samp_r_reg_7_ ( .D(n162), .CP(n427), .Q(
        next_samp_r[7]) );
  DFQD2BWP12T30P140 next_samp_r_reg_6_ ( .D(n161), .CP(n427), .Q(
        next_samp_r[6]) );
  DFQD2BWP12T30P140 next_samp_r_reg_4_ ( .D(n159), .CP(n427), .Q(
        next_samp_r[4]) );
  DFQD2BWP12T30P140 next_samp_r_reg_3_ ( .D(n158), .CP(n427), .Q(
        next_samp_r[3]) );
  DFQD2BWP12T30P140 next_samp_r_reg_2_ ( .D(n157), .CP(n427), .Q(
        next_samp_r[2]) );
  DFQD2BWP12T30P140 next_samp_r_reg_1_ ( .D(n156), .CP(n427), .Q(
        next_samp_r[1]) );
  DFQD2BWP12T30P140 next_samp_r_reg_0_ ( .D(n155), .CP(n427), .Q(
        next_samp_r[0]) );
  DFQD2BWP12T30P140 nco_step_r_reg_7_ ( .D(n130), .CP(n425), .Q(nco_step_r[7])
         );
  DFQD2BWP12T30P140 reload_r_reg_13_ ( .D(n120), .CP(n425), .Q(reload_r[13])
         );
  DFQD2BWP12T30P140 reload_r_reg_12_ ( .D(n119), .CP(n425), .Q(reload_r[12])
         );
  DFQD2BWP12T30P140 reload_r_reg_11_ ( .D(n118), .CP(n425), .Q(reload_r[11])
         );
  DFQD2BWP12T30P140 reload_r_reg_10_ ( .D(n117), .CP(n425), .Q(reload_r[10])
         );
  DFQD2BWP12T30P140 reload_r_reg_9_ ( .D(n116), .CP(n425), .Q(reload_r[9]) );
  DFQD2BWP12T30P140 reload_r_reg_8_ ( .D(n115), .CP(n424), .Q(reload_r[8]) );
  DFQD2BWP12T30P140 reload_r_reg_7_ ( .D(n114), .CP(n424), .Q(reload_r[7]) );
  DFQD2BWP12T30P140 reload_r_reg_6_ ( .D(n113), .CP(n424), .Q(reload_r[6]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_0_ ( .D(n111), .CP(n424), .Q(
        sample_hold_r[0]) );
  DFQD2BWP12T30P140 reload_r_reg_4_ ( .D(n176), .CP(n420), .Q(reload_r[4]) );
  DFQD2BWP12T30P140 reload_r_reg_3_ ( .D(n175), .CP(n420), .Q(reload_r[3]) );
  DFQD2BWP12T30P140 reload_r_reg_2_ ( .D(n174), .CP(n420), .Q(reload_r[2]) );
  DFQD2BWP12T30P140 reload_r_reg_1_ ( .D(n173), .CP(n420), .Q(reload_r[1]) );
  DFQD2BWP12T30P140 reload_r_reg_0_ ( .D(n172), .CP(n420), .Q(reload_r[0]) );
  DFQD2BWP12T30P140 valid_r_reg ( .D(n171), .CP(n421), .Q(valid_r) );
  DFQD2BWP12T30P140 phase_r_reg_31_ ( .D(N74), .CP(n423), .Q(o_tx) );
  DFQD2BWP12T30P140 phase_r_reg_0_ ( .D(N43), .CP(n420), .Q(phase_r[0]) );
  DFQD2BWP12T30P140 timer_r_reg_1_ ( .D(N23), .CP(n420), .Q(timer_r[1]) );
  DFQD2BWP12T30P140 timer_r_reg_3_ ( .D(N25), .CP(n423), .Q(timer_r[3]) );
  DFQD2BWP12T30P140 timer_r_reg_5_ ( .D(N27), .CP(n424), .Q(timer_r[5]) );
  DFQD2BWP12T30P140 timer_r_reg_7_ ( .D(N29), .CP(n427), .Q(timer_r[7]) );
  DFQD2BWP12T30P140 timer_r_reg_9_ ( .D(N31), .CP(n423), .Q(timer_r[9]) );
  DFQD2BWP12T30P140 timer_r_reg_13_ ( .D(N35), .CP(n427), .Q(timer_r[13]) );
  DFQD2BWP12T30P140 nco_step_r_reg_31_ ( .D(n154), .CP(n427), .Q(
        nco_step_r[31]) );
  DFQD2BWP12T30P140 timer_r_reg_15_ ( .D(N37), .CP(n426), .Q(timer_r[15]) );
  DFQD2BWP12T30P140 reload_r_reg_14_ ( .D(n121), .CP(n425), .Q(reload_r[14])
         );
  DFQD2BWP12T30P140 reload_r_reg_15_ ( .D(n122), .CP(n425), .Q(reload_r[15])
         );
  DFQD2BWP12T30P140 timer_r_reg_2_ ( .D(N24), .CP(n420), .Q(timer_r[2]) );
  DFQD2BWP12T30P140 timer_r_reg_4_ ( .D(N26), .CP(n424), .Q(timer_r[4]) );
  DFQD2BWP12T30P140 timer_r_reg_6_ ( .D(N28), .CP(n425), .Q(timer_r[6]) );
  DFQD2BWP12T30P140 timer_r_reg_8_ ( .D(N30), .CP(n420), .Q(timer_r[8]) );
  DFQD2BWP12T30P140 timer_r_reg_10_ ( .D(N32), .CP(n422), .Q(timer_r[10]) );
  DFQD2BWP12T30P140 timer_r_reg_12_ ( .D(N34), .CP(n421), .Q(timer_r[12]) );
  DFQD2BWP12T30P140 timer_r_reg_0_ ( .D(N22), .CP(n420), .Q(timer_r[0]) );
  DFQD2BWP12T30P140 nco_step_r_reg_0_ ( .D(n123), .CP(n425), .Q(nco_step_r[0])
         );
  DFQD2BWP12T30P140 timer_r_reg_14_ ( .D(N36), .CP(n426), .Q(timer_r[14]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_14_ ( .D(n109), .CP(n424), .Q(
        sample_hold_r[14]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_13_ ( .D(n108), .CP(n424), .Q(
        sample_hold_r[13]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_12_ ( .D(n107), .CP(n424), .Q(
        sample_hold_r[12]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_11_ ( .D(n106), .CP(n424), .Q(
        sample_hold_r[11]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_10_ ( .D(n105), .CP(n424), .Q(
        sample_hold_r[10]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_9_ ( .D(n104), .CP(n424), .Q(
        sample_hold_r[9]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_8_ ( .D(n103), .CP(n423), .Q(
        sample_hold_r[8]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_7_ ( .D(n102), .CP(n423), .Q(
        sample_hold_r[7]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_6_ ( .D(n101), .CP(n423), .Q(
        sample_hold_r[6]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_5_ ( .D(n100), .CP(n423), .Q(
        sample_hold_r[5]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_4_ ( .D(n99), .CP(n423), .Q(
        sample_hold_r[4]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_3_ ( .D(n98), .CP(n423), .Q(
        sample_hold_r[3]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_2_ ( .D(n97), .CP(n423), .Q(
        sample_hold_r[2]) );
  DFQD2BWP12T30P140 sample_hold_r_reg_1_ ( .D(n96), .CP(n423), .Q(
        sample_hold_r[1]) );
  DFQD2BWP12T30P140 phase_r_reg_20_ ( .D(N63), .CP(n422), .Q(phase_r[20]) );
  DFQD2BWP12T30P140 phase_r_reg_19_ ( .D(N62), .CP(n422), .Q(phase_r[19]) );
  DFQD2BWP12T30P140 phase_r_reg_18_ ( .D(N61), .CP(n422), .Q(phase_r[18]) );
  DFQD2BWP12T30P140 phase_r_reg_17_ ( .D(N60), .CP(n422), .Q(phase_r[17]) );
  DFQD2BWP12T30P140 phase_r_reg_16_ ( .D(N59), .CP(n422), .Q(phase_r[16]) );
  DFQD2BWP12T30P140 phase_r_reg_15_ ( .D(N58), .CP(n421), .Q(phase_r[15]) );
  DFQD2BWP12T30P140 phase_r_reg_14_ ( .D(N57), .CP(n421), .Q(phase_r[14]) );
  DFQD2BWP12T30P140 phase_r_reg_13_ ( .D(N56), .CP(n421), .Q(phase_r[13]) );
  DFQD2BWP12T30P140 phase_r_reg_12_ ( .D(N55), .CP(n421), .Q(phase_r[12]) );
  DFQD2BWP12T30P140 phase_r_reg_11_ ( .D(N54), .CP(n421), .Q(phase_r[11]) );
  DFQD2BWP12T30P140 phase_r_reg_10_ ( .D(N53), .CP(n421), .Q(phase_r[10]) );
  DFQD2BWP12T30P140 phase_r_reg_9_ ( .D(N52), .CP(n421), .Q(phase_r[9]) );
  DFQD2BWP12T30P140 phase_r_reg_8_ ( .D(N51), .CP(n421), .Q(phase_r[8]) );
  DFQD2BWP12T30P140 phase_r_reg_6_ ( .D(N49), .CP(n421), .Q(phase_r[6]) );
  DFQD2BWP12T30P140 phase_r_reg_4_ ( .D(N47), .CP(n421), .Q(phase_r[4]) );
  DFQD2BWP12T30P140 phase_r_reg_3_ ( .D(N46), .CP(n420), .Q(phase_r[3]) );
  DFQD2BWP12T30P140 phase_r_reg_2_ ( .D(N45), .CP(n420), .Q(phase_r[2]) );
  DFQD2BWP12T30P140 phase_r_reg_1_ ( .D(N44), .CP(n420), .Q(phase_r[1]) );
  DFQD2BWP12T30P140 phase_r_reg_30_ ( .D(N73), .CP(n423), .Q(phase_r[30]) );
  DFQD2BWP12T30P140 phase_r_reg_29_ ( .D(N72), .CP(n423), .Q(phase_r[29]) );
  DFQD2BWP12T30P140 phase_r_reg_28_ ( .D(N71), .CP(n423), .Q(phase_r[28]) );
  DFQD2BWP12T30P140 phase_r_reg_27_ ( .D(N70), .CP(n422), .Q(phase_r[27]) );
  DFQD2BWP12T30P140 phase_r_reg_26_ ( .D(N69), .CP(n422), .Q(phase_r[26]) );
  DFQD2BWP12T30P140 phase_r_reg_25_ ( .D(N68), .CP(n422), .Q(phase_r[25]) );
  DFQD2BWP12T30P140 phase_r_reg_24_ ( .D(N67), .CP(n422), .Q(phase_r[24]) );
  DFQD2BWP12T30P140 phase_r_reg_23_ ( .D(N66), .CP(n422), .Q(phase_r[23]) );
  DFQD2BWP12T30P140 phase_r_reg_22_ ( .D(N65), .CP(n422), .Q(phase_r[22]) );
  DFQD2BWP12T30P140 phase_r_reg_7_ ( .D(N50), .CP(n421), .Q(phase_r[7]) );
  DFQD2BWP12T30P140 nco_step_r_reg_28_ ( .D(n151), .CP(n426), .Q(
        nco_step_r[28]) );
  DFQD2BWP12T30P140 nco_step_r_reg_27_ ( .D(n150), .CP(n426), .Q(
        nco_step_r[27]) );
  DFQD2BWP12T30P140 nco_step_r_reg_26_ ( .D(n149), .CP(n426), .Q(
        nco_step_r[26]) );
  DFQD2BWP12T30P140 nco_step_r_reg_25_ ( .D(n148), .CP(n426), .Q(
        nco_step_r[25]) );
  DFQD2BWP12T30P140 nco_step_r_reg_24_ ( .D(n147), .CP(n426), .Q(
        nco_step_r[24]) );
  DFQD2BWP12T30P140 nco_step_r_reg_23_ ( .D(n146), .CP(n426), .Q(
        nco_step_r[23]) );
  DFQD2BWP12T30P140 nco_step_r_reg_22_ ( .D(n145), .CP(n426), .Q(
        nco_step_r[22]) );
  DFQD2BWP12T30P140 nco_step_r_reg_21_ ( .D(n144), .CP(n426), .Q(
        nco_step_r[21]) );
  DFQD2BWP12T30P140 nco_step_r_reg_20_ ( .D(n143), .CP(n426), .Q(
        nco_step_r[20]) );
  DFQD2BWP12T30P140 nco_step_r_reg_19_ ( .D(n142), .CP(n426), .Q(
        nco_step_r[19]) );
  DFQD2BWP12T30P140 nco_step_r_reg_18_ ( .D(n141), .CP(n426), .Q(
        nco_step_r[18]) );
  DFQD2BWP12T30P140 nco_step_r_reg_17_ ( .D(n140), .CP(n426), .Q(
        nco_step_r[17]) );
  DFQD2BWP12T30P140 nco_step_r_reg_16_ ( .D(n139), .CP(n420), .Q(
        nco_step_r[16]) );
  DFQD2BWP12T30P140 nco_step_r_reg_15_ ( .D(n138), .CP(n422), .Q(
        nco_step_r[15]) );
  DFQD2BWP12T30P140 nco_step_r_reg_13_ ( .D(n136), .CP(n426), .Q(
        nco_step_r[13]) );
  DFQD2BWP12T30P140 nco_step_r_reg_12_ ( .D(n135), .CP(n423), .Q(
        nco_step_r[12]) );
  DFQD2BWP12T30P140 nco_step_r_reg_11_ ( .D(n134), .CP(n424), .Q(
        nco_step_r[11]) );
  DFQD2BWP12T30P140 nco_step_r_reg_10_ ( .D(n133), .CP(n427), .Q(
        nco_step_r[10]) );
  DFQD2BWP12T30P140 nco_step_r_reg_9_ ( .D(n132), .CP(n424), .Q(nco_step_r[9])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_8_ ( .D(n131), .CP(n427), .Q(nco_step_r[8])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_6_ ( .D(n129), .CP(n425), .Q(nco_step_r[6])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_5_ ( .D(n128), .CP(n425), .Q(nco_step_r[5])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_4_ ( .D(n127), .CP(n425), .Q(nco_step_r[4])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_3_ ( .D(n126), .CP(n425), .Q(nco_step_r[3])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_2_ ( .D(n125), .CP(n425), .Q(nco_step_r[2])
         );
  DFQD2BWP12T30P140 nco_step_r_reg_1_ ( .D(n124), .CP(n425), .Q(nco_step_r[1])
         );
  DFQD1BWP12T30P140 o_wb_data_reg_25_ ( .D(N103), .CP(n422), .Q(o_wb_data[25])
         );
  DFQD1BWP12T30P140 o_wb_data_reg_10_ ( .D(N88), .CP(n425), .Q(o_wb_data[10])
         );
  DFQD1BWP12T30P140 next_samp_r_reg_5_ ( .D(n160), .CP(n427), .Q(
        next_samp_r[5]) );
  DFQD1BWP12T30P140 reload_r_reg_5_ ( .D(n112), .CP(n424), .Q(reload_r[5]) );
  DFQD1BWP12T30P140 timer_r_reg_11_ ( .D(N33), .CP(n423), .Q(timer_r[11]) );
  DFQD1BWP12T30P140 nco_step_r_reg_30_ ( .D(n153), .CP(n427), .Q(
        nco_step_r[30]) );
  DFQD1BWP12T30P140 phase_r_reg_21_ ( .D(N64), .CP(n422), .Q(phase_r[21]) );
  DFQD1BWP12T30P140 phase_r_reg_5_ ( .D(N48), .CP(n421), .Q(phase_r[5]) );
  DFQD1BWP12T30P140 nco_step_r_reg_29_ ( .D(n152), .CP(n427), .Q(
        nco_step_r[29]) );
  DFQD1BWP12T30P140 nco_step_r_reg_14_ ( .D(n137), .CP(n421), .Q(
        nco_step_r[14]) );
  DFQD1BWP12T30P140 sample_hold_r_reg_15_ ( .D(n110), .CP(n424), .Q(
        sample_hold_r[15]) );
  TIEHBWP12T30P140 U230 ( .Z(n179) );
  INVD1BWP12T30P140 U231 ( .I(n179), .ZN(o_wb_stall) );
  CKBD0BWP12T30P140 U232 ( .I(n370), .Z(n377) );
  CKBD0BWP12T30P140 U233 ( .I(n356), .Z(n379) );
  CKBD0BWP12T30P140 U234 ( .I(i_wb_addr), .Z(n244) );
  CKBD0BWP12T30P140 U235 ( .I(i_clk), .Z(n426) );
  CKBD0BWP12T30P140 U236 ( .I(i_clk), .Z(n421) );
  CKBD0BWP12T30P140 U237 ( .I(i_clk), .Z(n422) );
  AO22D0BWP12T30P140 U238 ( .A1(n356), .A2(reload_r[15]), .B1(timer_r[15]), 
        .B2(n193), .Z(N37) );
  CKBD0BWP12T30P140 U239 ( .I(i_clk), .Z(n420) );
  CKBD0BWP12T30P140 U240 ( .I(i_clk), .Z(n425) );
  AN2D0BWP12T30P140 U241 ( .A1(i_wb_stb), .A2(i_wb_cyc), .Z(N110) );
  INVD0BWP12T30P140 U242 ( .I(reload_r[15]), .ZN(n259) );
  NR4D0BWP12T30P140 U243 ( .A1(i_wb_data[21]), .A2(i_wb_data[22]), .A3(
        i_wb_data[23]), .A4(i_wb_data[24]), .ZN(n183) );
  NR4D0BWP12T30P140 U244 ( .A1(i_wb_data[25]), .A2(i_wb_data[26]), .A3(
        i_wb_data[27]), .A4(i_wb_data[28]), .ZN(n182) );
  NR4D0BWP12T30P140 U245 ( .A1(i_wb_data[29]), .A2(i_wb_data[30]), .A3(
        i_wb_data[31]), .A4(i_wb_data[16]), .ZN(n181) );
  NR4D0BWP12T30P140 U246 ( .A1(i_wb_data[17]), .A2(i_wb_data[18]), .A3(
        i_wb_data[19]), .A4(i_wb_data[20]), .ZN(n180) );
  AN4D0BWP12T30P140 U247 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .Z(n184) );
  ND3D0BWP12T30P140 U248 ( .A1(n250), .A2(i_wb_we), .A3(N110), .ZN(n264) );
  INVD0BWP12T30P140 U249 ( .I(n264), .ZN(n268) );
  INVD0BWP12T30P140 U250 ( .I(n268), .ZN(n266) );
  NR2D0BWP12T30P140 U251 ( .A1(n184), .A2(n266), .ZN(n214) );
  INVD0BWP12T30P140 U252 ( .I(i_wb_data[31]), .ZN(n194) );
  OAI22D0BWP12T30P140 U253 ( .A1(n259), .A2(n214), .B1(n266), .B2(n194), .ZN(
        n122) );
  INVD0BWP12T30P140 U254 ( .I(reload_r[14]), .ZN(n256) );
  INVD0BWP12T30P140 U255 ( .I(i_wb_data[30]), .ZN(n186) );
  OAI22D0BWP12T30P140 U256 ( .A1(n256), .A2(n214), .B1(n266), .B2(n186), .ZN(
        n121) );
  INVD0BWP12T30P140 U257 ( .I(i_wb_data[15]), .ZN(n296) );
  INVD0BWP12T30P140 U258 ( .I(next_samp_r[15]), .ZN(n378) );
  AOI22D0BWP12T30P140 U259 ( .A1(n268), .A2(n296), .B1(n378), .B2(n264), .ZN(
        n170) );
  NR2D0BWP12T30P140 U260 ( .A1(timer_r[0]), .A2(timer_r[1]), .ZN(n211) );
  IND2D1BWP12T30P140 U261 ( .A1(timer_r[2]), .B1(n211), .ZN(n209) );
  NR2D0BWP12T30P140 U262 ( .A1(timer_r[3]), .A2(n209), .ZN(n208) );
  IND2D1BWP12T30P140 U263 ( .A1(timer_r[4]), .B1(n208), .ZN(n206) );
  NR2D0BWP12T30P140 U264 ( .A1(timer_r[5]), .A2(n206), .ZN(n205) );
  IND2D1BWP12T30P140 U265 ( .A1(timer_r[6]), .B1(n205), .ZN(n203) );
  NR2D0BWP12T30P140 U266 ( .A1(timer_r[7]), .A2(n203), .ZN(n355) );
  IND2D1BWP12T30P140 U267 ( .A1(timer_r[8]), .B1(n355), .ZN(n358) );
  NR2D0BWP12T30P140 U268 ( .A1(timer_r[9]), .A2(n358), .ZN(n201) );
  IND2D1BWP12T30P140 U269 ( .A1(timer_r[10]), .B1(n201), .ZN(n199) );
  NR2D0BWP12T30P140 U270 ( .A1(timer_r[11]), .A2(n199), .ZN(n198) );
  IND2D1BWP12T30P140 U271 ( .A1(timer_r[12]), .B1(n198), .ZN(n196) );
  NR2D0BWP12T30P140 U272 ( .A1(timer_r[13]), .A2(n196), .ZN(n195) );
  IND2D1BWP12T30P140 U273 ( .A1(timer_r[14]), .B1(n195), .ZN(n193) );
  NR2D0BWP12T30P140 U274 ( .A1(timer_r[15]), .A2(n193), .ZN(n356) );
  INVD0BWP12T30P140 U275 ( .I(next_samp_r[1]), .ZN(n217) );
  INVD0BWP12T30P140 U276 ( .I(sample_hold_r[1]), .ZN(n227) );
  INVD0BWP12T30P140 U277 ( .I(n379), .ZN(n213) );
  AOI22D0BWP12T30P140 U278 ( .A1(n356), .A2(n217), .B1(n227), .B2(n213), .ZN(
        n96) );
  INVD0BWP12T30P140 U279 ( .I(next_samp_r[2]), .ZN(n218) );
  INVD0BWP12T30P140 U280 ( .I(sample_hold_r[2]), .ZN(n228) );
  AOI22D0BWP12T30P140 U281 ( .A1(n356), .A2(n218), .B1(n228), .B2(n213), .ZN(
        n97) );
  INVD0BWP12T30P140 U282 ( .I(next_samp_r[3]), .ZN(n219) );
  INVD0BWP12T30P140 U283 ( .I(sample_hold_r[3]), .ZN(n229) );
  AOI22D0BWP12T30P140 U284 ( .A1(n356), .A2(n219), .B1(n229), .B2(n213), .ZN(
        n98) );
  INVD0BWP12T30P140 U285 ( .I(next_samp_r[4]), .ZN(n220) );
  INVD0BWP12T30P140 U286 ( .I(sample_hold_r[4]), .ZN(n230) );
  AOI22D0BWP12T30P140 U287 ( .A1(n379), .A2(n220), .B1(n230), .B2(n213), .ZN(
        n99) );
  INVD0BWP12T30P140 U288 ( .I(next_samp_r[5]), .ZN(n221) );
  INVD0BWP12T30P140 U289 ( .I(sample_hold_r[5]), .ZN(n231) );
  AOI22D0BWP12T30P140 U290 ( .A1(n356), .A2(n221), .B1(n231), .B2(n213), .ZN(
        n100) );
  INVD0BWP12T30P140 U291 ( .I(next_samp_r[6]), .ZN(n222) );
  INVD0BWP12T30P140 U292 ( .I(sample_hold_r[6]), .ZN(n232) );
  AOI22D0BWP12T30P140 U293 ( .A1(n379), .A2(n222), .B1(n232), .B2(n213), .ZN(
        n101) );
  INVD0BWP12T30P140 U294 ( .I(next_samp_r[7]), .ZN(n223) );
  INVD0BWP12T30P140 U295 ( .I(sample_hold_r[7]), .ZN(n233) );
  AOI22D0BWP12T30P140 U296 ( .A1(n356), .A2(n223), .B1(n233), .B2(n213), .ZN(
        n102) );
  INVD0BWP12T30P140 U297 ( .I(next_samp_r[8]), .ZN(n225) );
  INVD0BWP12T30P140 U298 ( .I(sample_hold_r[8]), .ZN(n234) );
  AOI22D0BWP12T30P140 U299 ( .A1(n379), .A2(n225), .B1(n234), .B2(n213), .ZN(
        n103) );
  INVD0BWP12T30P140 U300 ( .I(next_samp_r[9]), .ZN(n260) );
  INVD0BWP12T30P140 U301 ( .I(sample_hold_r[9]), .ZN(n235) );
  AOI22D0BWP12T30P140 U302 ( .A1(n379), .A2(n260), .B1(n235), .B2(n213), .ZN(
        n104) );
  INVD0BWP12T30P140 U303 ( .I(next_samp_r[10]), .ZN(n261) );
  INVD0BWP12T30P140 U304 ( .I(sample_hold_r[10]), .ZN(n236) );
  AOI22D0BWP12T30P140 U305 ( .A1(n356), .A2(n261), .B1(n236), .B2(n213), .ZN(
        n105) );
  INVD0BWP12T30P140 U306 ( .I(next_samp_r[11]), .ZN(n262) );
  INVD0BWP12T30P140 U307 ( .I(sample_hold_r[11]), .ZN(n237) );
  AOI22D0BWP12T30P140 U308 ( .A1(n379), .A2(n262), .B1(n237), .B2(n213), .ZN(
        n106) );
  INVD0BWP12T30P140 U309 ( .I(next_samp_r[12]), .ZN(n263) );
  INVD0BWP12T30P140 U310 ( .I(sample_hold_r[12]), .ZN(n238) );
  AOI22D0BWP12T30P140 U311 ( .A1(n356), .A2(n263), .B1(n238), .B2(n213), .ZN(
        n107) );
  INVD0BWP12T30P140 U312 ( .I(next_samp_r[13]), .ZN(n265) );
  INVD0BWP12T30P140 U313 ( .I(sample_hold_r[13]), .ZN(n239) );
  AOI22D0BWP12T30P140 U314 ( .A1(n379), .A2(n265), .B1(n239), .B2(n213), .ZN(
        n108) );
  INVD0BWP12T30P140 U315 ( .I(next_samp_r[14]), .ZN(n267) );
  INVD0BWP12T30P140 U316 ( .I(sample_hold_r[14]), .ZN(n240) );
  AOI22D0BWP12T30P140 U317 ( .A1(n356), .A2(n267), .B1(n240), .B2(n213), .ZN(
        n109) );
  ND2D0BWP12T30P140 U318 ( .A1(N110), .A2(i_wb_we), .ZN(n185) );
  NR2D0BWP12T30P140 U319 ( .A1(n250), .A2(n185), .ZN(n370) );
  INVD0BWP12T30P140 U320 ( .I(nco_step_r[30]), .ZN(n257) );
  INVD0BWP12T30P140 U321 ( .I(n377), .ZN(n347) );
  AOI22D0BWP12T30P140 U322 ( .A1(n370), .A2(n186), .B1(n257), .B2(n347), .ZN(
        n153) );
  OAI22D0BWP12T30P140 U323 ( .A1(n213), .A2(reload_r[14]), .B1(timer_r[14]), 
        .B2(n195), .ZN(n187) );
  AOI21D0BWP12T30P140 U324 ( .A1(timer_r[14]), .A2(n195), .B(n187), .ZN(N36)
         );
  INVD0BWP12T30P140 U325 ( .I(i_wb_data[0]), .ZN(n216) );
  INVD0BWP12T30P140 U326 ( .I(nco_step_r[0]), .ZN(n226) );
  INVD0BWP12T30P140 U327 ( .I(n377), .ZN(n374) );
  AOI22D0BWP12T30P140 U328 ( .A1(n370), .A2(n216), .B1(n226), .B2(n374), .ZN(
        n123) );
  INVD0BWP12T30P140 U329 ( .I(reload_r[0]), .ZN(n241) );
  AOI21D0BWP12T30P140 U330 ( .A1(n241), .A2(n379), .B(timer_r[0]), .ZN(N22) );
  IND2D1BWP12T30P140 U331 ( .A1(n198), .B1(timer_r[12]), .ZN(n188) );
  INVD0BWP12T30P140 U332 ( .I(reload_r[12]), .ZN(n254) );
  AOI22D0BWP12T30P140 U333 ( .A1(n188), .A2(n196), .B1(n254), .B2(n356), .ZN(
        N34) );
  IND2D1BWP12T30P140 U334 ( .A1(n201), .B1(timer_r[10]), .ZN(n189) );
  INVD0BWP12T30P140 U335 ( .I(reload_r[10]), .ZN(n252) );
  AOI22D0BWP12T30P140 U336 ( .A1(n189), .A2(n199), .B1(n252), .B2(n379), .ZN(
        N32) );
  IND2D1BWP12T30P140 U337 ( .A1(n205), .B1(timer_r[6]), .ZN(n190) );
  INVD0BWP12T30P140 U338 ( .I(reload_r[6]), .ZN(n248) );
  AOI22D0BWP12T30P140 U339 ( .A1(n190), .A2(n203), .B1(n248), .B2(n379), .ZN(
        N28) );
  IND2D1BWP12T30P140 U340 ( .A1(n208), .B1(timer_r[4]), .ZN(n191) );
  INVD0BWP12T30P140 U341 ( .I(reload_r[4]), .ZN(n246) );
  AOI22D0BWP12T30P140 U342 ( .A1(n191), .A2(n206), .B1(n246), .B2(n356), .ZN(
        N26) );
  IND2D1BWP12T30P140 U343 ( .A1(n211), .B1(timer_r[2]), .ZN(n192) );
  INVD0BWP12T30P140 U344 ( .I(reload_r[2]), .ZN(n243) );
  AOI22D0BWP12T30P140 U345 ( .A1(n192), .A2(n209), .B1(n243), .B2(n379), .ZN(
        N24) );
  INVD0BWP12T30P140 U346 ( .I(nco_step_r[31]), .ZN(n416) );
  AOI22D0BWP12T30P140 U347 ( .A1(n377), .A2(n194), .B1(n416), .B2(n347), .ZN(
        n154) );
  INVD0BWP12T30P140 U348 ( .I(reload_r[13]), .ZN(n255) );
  AOI21D0BWP12T30P140 U349 ( .A1(timer_r[13]), .A2(n196), .B(n195), .ZN(n197)
         );
  AOI21D0BWP12T30P140 U350 ( .A1(n255), .A2(n379), .B(n197), .ZN(N35) );
  INVD0BWP12T30P140 U351 ( .I(reload_r[11]), .ZN(n253) );
  AOI21D0BWP12T30P140 U352 ( .A1(timer_r[11]), .A2(n199), .B(n198), .ZN(n200)
         );
  AOI21D0BWP12T30P140 U353 ( .A1(n253), .A2(n356), .B(n200), .ZN(N33) );
  INVD0BWP12T30P140 U354 ( .I(reload_r[9]), .ZN(n251) );
  AOI21D0BWP12T30P140 U355 ( .A1(timer_r[9]), .A2(n358), .B(n201), .ZN(n202)
         );
  AOI21D0BWP12T30P140 U356 ( .A1(n251), .A2(n379), .B(n202), .ZN(N31) );
  INVD0BWP12T30P140 U357 ( .I(reload_r[7]), .ZN(n249) );
  AOI21D0BWP12T30P140 U358 ( .A1(timer_r[7]), .A2(n203), .B(n355), .ZN(n204)
         );
  AOI21D0BWP12T30P140 U359 ( .A1(n249), .A2(n356), .B(n204), .ZN(N29) );
  INVD0BWP12T30P140 U360 ( .I(reload_r[5]), .ZN(n247) );
  AOI21D0BWP12T30P140 U361 ( .A1(timer_r[5]), .A2(n206), .B(n205), .ZN(n207)
         );
  AOI21D0BWP12T30P140 U362 ( .A1(n247), .A2(n379), .B(n207), .ZN(N27) );
  INVD0BWP12T30P140 U363 ( .I(reload_r[3]), .ZN(n245) );
  AOI21D0BWP12T30P140 U364 ( .A1(timer_r[3]), .A2(n209), .B(n208), .ZN(n210)
         );
  AOI21D0BWP12T30P140 U365 ( .A1(n245), .A2(n356), .B(n210), .ZN(N25) );
  INVD0BWP12T30P140 U366 ( .I(reload_r[1]), .ZN(n242) );
  AOI21D0BWP12T30P140 U367 ( .A1(timer_r[1]), .A2(timer_r[0]), .B(n211), .ZN(
        n212) );
  AOI21D0BWP12T30P140 U368 ( .A1(n242), .A2(n356), .B(n212), .ZN(N23) );
  INVD0BWP12T30P140 U369 ( .I(valid_r), .ZN(n177) );
  OAI21D0BWP12T30P140 U370 ( .A1(n379), .A2(n177), .B(n264), .ZN(n171) );
  INVD0BWP12T30P140 U371 ( .I(i_wb_data[16]), .ZN(n294) );
  OAI22D0BWP12T30P140 U372 ( .A1(n214), .A2(n241), .B1(n266), .B2(n294), .ZN(
        n172) );
  INVD0BWP12T30P140 U373 ( .I(i_wb_data[17]), .ZN(n292) );
  OAI22D0BWP12T30P140 U374 ( .A1(n214), .A2(n242), .B1(n266), .B2(n292), .ZN(
        n173) );
  INVD0BWP12T30P140 U375 ( .I(i_wb_data[18]), .ZN(n290) );
  OAI22D0BWP12T30P140 U376 ( .A1(n214), .A2(n243), .B1(n266), .B2(n290), .ZN(
        n174) );
  INVD0BWP12T30P140 U377 ( .I(i_wb_data[19]), .ZN(n288) );
  OAI22D0BWP12T30P140 U378 ( .A1(n214), .A2(n245), .B1(n266), .B2(n288), .ZN(
        n175) );
  INVD0BWP12T30P140 U379 ( .I(i_wb_data[20]), .ZN(n286) );
  OAI22D0BWP12T30P140 U380 ( .A1(n214), .A2(n246), .B1(n266), .B2(n286), .ZN(
        n176) );
  INVD0BWP12T30P140 U381 ( .I(next_samp_r[0]), .ZN(n215) );
  INVD0BWP12T30P140 U382 ( .I(sample_hold_r[0]), .ZN(n298) );
  AOI22D0BWP12T30P140 U383 ( .A1(n356), .A2(n215), .B1(n298), .B2(n213), .ZN(
        n111) );
  INVD0BWP12T30P140 U384 ( .I(i_wb_data[21]), .ZN(n284) );
  OAI22D0BWP12T30P140 U385 ( .A1(n214), .A2(n247), .B1(n266), .B2(n284), .ZN(
        n112) );
  INVD0BWP12T30P140 U386 ( .I(i_wb_data[22]), .ZN(n282) );
  OAI22D0BWP12T30P140 U387 ( .A1(n214), .A2(n248), .B1(n264), .B2(n282), .ZN(
        n113) );
  INVD0BWP12T30P140 U388 ( .I(i_wb_data[23]), .ZN(n276) );
  OAI22D0BWP12T30P140 U389 ( .A1(n214), .A2(n249), .B1(n266), .B2(n276), .ZN(
        n114) );
  INVD0BWP12T30P140 U390 ( .I(reload_r[8]), .ZN(n357) );
  INVD0BWP12T30P140 U391 ( .I(i_wb_data[24]), .ZN(n272) );
  OAI22D0BWP12T30P140 U392 ( .A1(n214), .A2(n357), .B1(n264), .B2(n272), .ZN(
        n115) );
  INVD0BWP12T30P140 U393 ( .I(i_wb_data[25]), .ZN(n280) );
  OAI22D0BWP12T30P140 U394 ( .A1(n214), .A2(n251), .B1(n266), .B2(n280), .ZN(
        n116) );
  INVD0BWP12T30P140 U395 ( .I(i_wb_data[26]), .ZN(n270) );
  OAI22D0BWP12T30P140 U396 ( .A1(n214), .A2(n252), .B1(n266), .B2(n270), .ZN(
        n117) );
  INVD0BWP12T30P140 U397 ( .I(i_wb_data[27]), .ZN(n274) );
  OAI22D0BWP12T30P140 U398 ( .A1(n214), .A2(n253), .B1(n264), .B2(n274), .ZN(
        n118) );
  INVD0BWP12T30P140 U399 ( .I(i_wb_data[28]), .ZN(n278) );
  OAI22D0BWP12T30P140 U400 ( .A1(n214), .A2(n254), .B1(n266), .B2(n278), .ZN(
        n119) );
  INVD0BWP12T30P140 U401 ( .I(i_wb_data[29]), .ZN(n349) );
  OAI22D0BWP12T30P140 U402 ( .A1(n214), .A2(n255), .B1(n264), .B2(n349), .ZN(
        n120) );
  INVD0BWP12T30P140 U403 ( .I(i_wb_data[7]), .ZN(n224) );
  INVD0BWP12T30P140 U404 ( .I(nco_step_r[7]), .ZN(n297) );
  AOI22D0BWP12T30P140 U405 ( .A1(n370), .A2(n224), .B1(n297), .B2(n374), .ZN(
        n130) );
  AOI22D0BWP12T30P140 U406 ( .A1(n268), .A2(n216), .B1(n215), .B2(n266), .ZN(
        n155) );
  INVD0BWP12T30P140 U407 ( .I(i_wb_data[1]), .ZN(n369) );
  AOI22D0BWP12T30P140 U408 ( .A1(n268), .A2(n369), .B1(n217), .B2(n264), .ZN(
        n156) );
  INVD0BWP12T30P140 U409 ( .I(i_wb_data[2]), .ZN(n367) );
  AOI22D0BWP12T30P140 U410 ( .A1(n268), .A2(n367), .B1(n218), .B2(n264), .ZN(
        n157) );
  INVD0BWP12T30P140 U411 ( .I(i_wb_data[3]), .ZN(n361) );
  AOI22D0BWP12T30P140 U412 ( .A1(n268), .A2(n361), .B1(n219), .B2(n266), .ZN(
        n158) );
  INVD0BWP12T30P140 U413 ( .I(i_wb_data[4]), .ZN(n376) );
  AOI22D0BWP12T30P140 U414 ( .A1(n268), .A2(n376), .B1(n220), .B2(n264), .ZN(
        n159) );
  INVD0BWP12T30P140 U415 ( .I(i_wb_data[5]), .ZN(n365) );
  AOI22D0BWP12T30P140 U416 ( .A1(n268), .A2(n365), .B1(n221), .B2(n264), .ZN(
        n160) );
  INVD0BWP12T30P140 U417 ( .I(i_wb_data[6]), .ZN(n354) );
  AOI22D0BWP12T30P140 U418 ( .A1(n268), .A2(n354), .B1(n222), .B2(n264), .ZN(
        n161) );
  AOI22D0BWP12T30P140 U419 ( .A1(n268), .A2(n224), .B1(n223), .B2(n264), .ZN(
        n162) );
  INVD0BWP12T30P140 U420 ( .I(i_wb_data[8]), .ZN(n363) );
  AOI22D0BWP12T30P140 U421 ( .A1(n268), .A2(n363), .B1(n225), .B2(n264), .ZN(
        n163) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n244), .A2(n226), .B1(o_int), .B2(n244), 
        .ZN(N78) );
  INVD0BWP12T30P140 U423 ( .I(nco_step_r[1]), .ZN(n368) );
  INVD0BWP12T30P140 U424 ( .I(i_wb_addr), .ZN(n258) );
  AOI22D0BWP12T30P140 U425 ( .A1(n244), .A2(n368), .B1(n227), .B2(n258), .ZN(
        N79) );
  INVD0BWP12T30P140 U426 ( .I(nco_step_r[2]), .ZN(n366) );
  AOI22D0BWP12T30P140 U427 ( .A1(n244), .A2(n366), .B1(n228), .B2(n258), .ZN(
        N80) );
  INVD0BWP12T30P140 U428 ( .I(nco_step_r[3]), .ZN(n360) );
  AOI22D0BWP12T30P140 U429 ( .A1(n244), .A2(n360), .B1(n229), .B2(n250), .ZN(
        N81) );
  INVD0BWP12T30P140 U430 ( .I(nco_step_r[4]), .ZN(n375) );
  AOI22D0BWP12T30P140 U431 ( .A1(n244), .A2(n375), .B1(n230), .B2(n258), .ZN(
        N82) );
  INVD0BWP12T30P140 U432 ( .I(nco_step_r[5]), .ZN(n364) );
  AOI22D0BWP12T30P140 U433 ( .A1(n244), .A2(n364), .B1(n231), .B2(n250), .ZN(
        N83) );
  INVD0BWP12T30P140 U434 ( .I(nco_step_r[6]), .ZN(n353) );
  AOI22D0BWP12T30P140 U435 ( .A1(n244), .A2(n353), .B1(n232), .B2(n258), .ZN(
        N84) );
  INVD0BWP12T30P140 U436 ( .I(i_wb_addr), .ZN(n250) );
  AOI22D0BWP12T30P140 U437 ( .A1(n244), .A2(n297), .B1(n233), .B2(n250), .ZN(
        N85) );
  INVD0BWP12T30P140 U438 ( .I(nco_step_r[8]), .ZN(n362) );
  AOI22D0BWP12T30P140 U439 ( .A1(n244), .A2(n362), .B1(n234), .B2(n250), .ZN(
        N86) );
  INVD0BWP12T30P140 U440 ( .I(nco_step_r[9]), .ZN(n345) );
  AOI22D0BWP12T30P140 U441 ( .A1(n244), .A2(n345), .B1(n235), .B2(n250), .ZN(
        N87) );
  INVD0BWP12T30P140 U442 ( .I(nco_step_r[10]), .ZN(n343) );
  AOI22D0BWP12T30P140 U443 ( .A1(n244), .A2(n343), .B1(n236), .B2(n250), .ZN(
        N88) );
  INVD0BWP12T30P140 U444 ( .I(nco_step_r[11]), .ZN(n341) );
  AOI22D0BWP12T30P140 U445 ( .A1(n244), .A2(n341), .B1(n237), .B2(n250), .ZN(
        N89) );
  INVD0BWP12T30P140 U446 ( .I(nco_step_r[12]), .ZN(n339) );
  AOI22D0BWP12T30P140 U447 ( .A1(n244), .A2(n339), .B1(n238), .B2(n250), .ZN(
        N90) );
  INVD0BWP12T30P140 U448 ( .I(nco_step_r[13]), .ZN(n337) );
  AOI22D0BWP12T30P140 U449 ( .A1(n244), .A2(n337), .B1(n239), .B2(n250), .ZN(
        N91) );
  INVD0BWP12T30P140 U450 ( .I(nco_step_r[14]), .ZN(n335) );
  AOI22D0BWP12T30P140 U451 ( .A1(n244), .A2(n335), .B1(n240), .B2(n250), .ZN(
        N92) );
  INVD0BWP12T30P140 U452 ( .I(nco_step_r[15]), .ZN(n295) );
  INVD0BWP12T30P140 U453 ( .I(sample_hold_r[15]), .ZN(n415) );
  AOI22D0BWP12T30P140 U454 ( .A1(n244), .A2(n295), .B1(n415), .B2(n250), .ZN(
        N93) );
  INVD0BWP12T30P140 U455 ( .I(nco_step_r[16]), .ZN(n293) );
  AOI22D0BWP12T30P140 U456 ( .A1(n244), .A2(n293), .B1(n241), .B2(n250), .ZN(
        N94) );
  INVD0BWP12T30P140 U457 ( .I(nco_step_r[17]), .ZN(n291) );
  AOI22D0BWP12T30P140 U458 ( .A1(n244), .A2(n291), .B1(n242), .B2(n250), .ZN(
        N95) );
  INVD0BWP12T30P140 U459 ( .I(nco_step_r[18]), .ZN(n289) );
  AOI22D0BWP12T30P140 U460 ( .A1(n244), .A2(n289), .B1(n243), .B2(n250), .ZN(
        N96) );
  INVD0BWP12T30P140 U461 ( .I(nco_step_r[19]), .ZN(n287) );
  AOI22D0BWP12T30P140 U462 ( .A1(i_wb_addr), .A2(n287), .B1(n245), .B2(n258), 
        .ZN(N97) );
  INVD0BWP12T30P140 U463 ( .I(nco_step_r[20]), .ZN(n285) );
  AOI22D0BWP12T30P140 U464 ( .A1(i_wb_addr), .A2(n285), .B1(n246), .B2(n258), 
        .ZN(N98) );
  INVD0BWP12T30P140 U465 ( .I(nco_step_r[21]), .ZN(n283) );
  AOI22D0BWP12T30P140 U466 ( .A1(i_wb_addr), .A2(n283), .B1(n247), .B2(n258), 
        .ZN(N99) );
  INVD0BWP12T30P140 U467 ( .I(nco_step_r[22]), .ZN(n281) );
  AOI22D0BWP12T30P140 U468 ( .A1(i_wb_addr), .A2(n281), .B1(n248), .B2(n258), 
        .ZN(N100) );
  INVD0BWP12T30P140 U469 ( .I(nco_step_r[23]), .ZN(n275) );
  AOI22D0BWP12T30P140 U470 ( .A1(i_wb_addr), .A2(n275), .B1(n249), .B2(n258), 
        .ZN(N101) );
  INVD0BWP12T30P140 U471 ( .I(nco_step_r[24]), .ZN(n271) );
  AOI22D0BWP12T30P140 U472 ( .A1(i_wb_addr), .A2(n271), .B1(n357), .B2(n258), 
        .ZN(N102) );
  INVD0BWP12T30P140 U473 ( .I(nco_step_r[25]), .ZN(n279) );
  AOI22D0BWP12T30P140 U474 ( .A1(i_wb_addr), .A2(n279), .B1(n251), .B2(n250), 
        .ZN(N103) );
  INVD0BWP12T30P140 U475 ( .I(nco_step_r[26]), .ZN(n269) );
  AOI22D0BWP12T30P140 U476 ( .A1(i_wb_addr), .A2(n269), .B1(n252), .B2(n258), 
        .ZN(N104) );
  INVD0BWP12T30P140 U477 ( .I(nco_step_r[27]), .ZN(n273) );
  AOI22D0BWP12T30P140 U478 ( .A1(i_wb_addr), .A2(n273), .B1(n253), .B2(n258), 
        .ZN(N105) );
  INVD0BWP12T30P140 U479 ( .I(nco_step_r[28]), .ZN(n277) );
  AOI22D0BWP12T30P140 U480 ( .A1(i_wb_addr), .A2(n277), .B1(n254), .B2(n258), 
        .ZN(N106) );
  INVD0BWP12T30P140 U481 ( .I(nco_step_r[29]), .ZN(n348) );
  AOI22D0BWP12T30P140 U482 ( .A1(i_wb_addr), .A2(n348), .B1(n255), .B2(n258), 
        .ZN(N107) );
  AOI22D0BWP12T30P140 U483 ( .A1(i_wb_addr), .A2(n257), .B1(n256), .B2(n258), 
        .ZN(N108) );
  AOI22D0BWP12T30P140 U484 ( .A1(i_wb_addr), .A2(n416), .B1(n259), .B2(n258), 
        .ZN(N109) );
  INVD0BWP12T30P140 U485 ( .I(i_wb_data[9]), .ZN(n346) );
  AOI22D0BWP12T30P140 U486 ( .A1(n268), .A2(n346), .B1(n260), .B2(n264), .ZN(
        n164) );
  INVD0BWP12T30P140 U487 ( .I(i_wb_data[10]), .ZN(n344) );
  AOI22D0BWP12T30P140 U488 ( .A1(n268), .A2(n344), .B1(n261), .B2(n266), .ZN(
        n165) );
  INVD0BWP12T30P140 U489 ( .I(i_wb_data[11]), .ZN(n342) );
  AOI22D0BWP12T30P140 U490 ( .A1(n268), .A2(n342), .B1(n262), .B2(n264), .ZN(
        n166) );
  INVD0BWP12T30P140 U491 ( .I(i_wb_data[12]), .ZN(n340) );
  AOI22D0BWP12T30P140 U492 ( .A1(n268), .A2(n340), .B1(n263), .B2(n266), .ZN(
        n167) );
  INVD0BWP12T30P140 U493 ( .I(i_wb_data[13]), .ZN(n338) );
  AOI22D0BWP12T30P140 U494 ( .A1(n268), .A2(n338), .B1(n265), .B2(n264), .ZN(
        n168) );
  INVD0BWP12T30P140 U495 ( .I(i_wb_data[14]), .ZN(n336) );
  AOI22D0BWP12T30P140 U496 ( .A1(n268), .A2(n336), .B1(n267), .B2(n266), .ZN(
        n169) );
  AOI22D0BWP12T30P140 U497 ( .A1(n370), .A2(n270), .B1(n269), .B2(n347), .ZN(
        n149) );
  AOI22D0BWP12T30P140 U498 ( .A1(n370), .A2(n272), .B1(n271), .B2(n347), .ZN(
        n147) );
  AOI22D0BWP12T30P140 U499 ( .A1(n377), .A2(n274), .B1(n273), .B2(n347), .ZN(
        n150) );
  AOI22D0BWP12T30P140 U500 ( .A1(n377), .A2(n276), .B1(n275), .B2(n347), .ZN(
        n146) );
  AOI22D0BWP12T30P140 U501 ( .A1(n370), .A2(n278), .B1(n277), .B2(n347), .ZN(
        n151) );
  AOI22D0BWP12T30P140 U502 ( .A1(n377), .A2(n280), .B1(n279), .B2(n347), .ZN(
        n148) );
  AOI22D0BWP12T30P140 U503 ( .A1(n370), .A2(n282), .B1(n281), .B2(n347), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U504 ( .A1(n377), .A2(n284), .B1(n283), .B2(n347), .ZN(
        n144) );
  AOI22D0BWP12T30P140 U505 ( .A1(n370), .A2(n286), .B1(n285), .B2(n347), .ZN(
        n143) );
  AOI22D0BWP12T30P140 U506 ( .A1(n377), .A2(n288), .B1(n287), .B2(n347), .ZN(
        n142) );
  AOI22D0BWP12T30P140 U507 ( .A1(n370), .A2(n290), .B1(n289), .B2(n347), .ZN(
        n141) );
  AOI22D0BWP12T30P140 U508 ( .A1(n377), .A2(n292), .B1(n291), .B2(n374), .ZN(
        n140) );
  AOI22D0BWP12T30P140 U509 ( .A1(n370), .A2(n294), .B1(n293), .B2(n347), .ZN(
        n139) );
  AOI22D0BWP12T30P140 U510 ( .A1(n377), .A2(n296), .B1(n295), .B2(n374), .ZN(
        n138) );
  AN2D0BWP12T30P140 U511 ( .A1(phase_r[0]), .A2(nco_step_r[0]), .Z(n408) );
  NR2D0BWP12T30P140 U512 ( .A1(n298), .A2(n297), .ZN(n399) );
  AOI21D0BWP12T30P140 U513 ( .A1(n298), .A2(n297), .B(n399), .ZN(n401) );
  FA1D1BWP12T30P140 U514 ( .A(nco_step_r[8]), .B(phase_r[8]), .CI(
        sample_hold_r[1]), .CO(n397), .S(n398) );
  FA1D1BWP12T30P140 U515 ( .A(nco_step_r[9]), .B(phase_r[9]), .CI(
        sample_hold_r[2]), .CO(n394), .S(n395) );
  FA1D1BWP12T30P140 U516 ( .A(nco_step_r[10]), .B(phase_r[10]), .CI(
        sample_hold_r[3]), .CO(n391), .S(n392) );
  FA1D1BWP12T30P140 U517 ( .A(nco_step_r[11]), .B(phase_r[11]), .CI(
        sample_hold_r[4]), .CO(n388), .S(n389) );
  FA1D1BWP12T30P140 U518 ( .A(nco_step_r[12]), .B(phase_r[12]), .CI(
        sample_hold_r[5]), .CO(n385), .S(n386) );
  FA1D1BWP12T30P140 U519 ( .A(nco_step_r[13]), .B(phase_r[13]), .CI(
        sample_hold_r[6]), .CO(n382), .S(n383) );
  FA1D1BWP12T30P140 U520 ( .A(nco_step_r[14]), .B(phase_r[14]), .CI(
        sample_hold_r[7]), .CO(n373), .S(n380) );
  FA1D1BWP12T30P140 U521 ( .A(nco_step_r[15]), .B(phase_r[15]), .CI(
        sample_hold_r[8]), .CO(n352), .S(n371) );
  FA1D1BWP12T30P140 U522 ( .A(nco_step_r[16]), .B(phase_r[16]), .CI(
        sample_hold_r[9]), .CO(n334), .S(n350) );
  FA1D1BWP12T30P140 U523 ( .A(nco_step_r[17]), .B(phase_r[17]), .CI(
        sample_hold_r[10]), .CO(n331), .S(n332) );
  FA1D1BWP12T30P140 U524 ( .A(nco_step_r[18]), .B(phase_r[18]), .CI(
        sample_hold_r[11]), .CO(n328), .S(n329) );
  FA1D1BWP12T30P140 U525 ( .A(nco_step_r[19]), .B(phase_r[19]), .CI(
        sample_hold_r[12]), .CO(n325), .S(n326) );
  FA1D1BWP12T30P140 U526 ( .A(nco_step_r[20]), .B(phase_r[20]), .CI(
        sample_hold_r[13]), .CO(n322), .S(n323) );
  FA1D1BWP12T30P140 U527 ( .A(nco_step_r[21]), .B(phase_r[21]), .CI(
        sample_hold_r[14]), .CO(n319), .S(n320) );
  FA1D1BWP12T30P140 U528 ( .A(phase_r[22]), .B(nco_step_r[22]), .CI(
        sample_hold_r[15]), .CO(n316), .S(n317) );
  FA1D1BWP12T30P140 U529 ( .A(phase_r[23]), .B(nco_step_r[23]), .CI(
        sample_hold_r[15]), .CO(n313), .S(n314) );
  FA1D1BWP12T30P140 U530 ( .A(phase_r[24]), .B(nco_step_r[24]), .CI(
        sample_hold_r[15]), .CO(n310), .S(n311) );
  FA1D1BWP12T30P140 U531 ( .A(phase_r[25]), .B(nco_step_r[25]), .CI(
        sample_hold_r[15]), .CO(n307), .S(n308) );
  FA1D1BWP12T30P140 U532 ( .A(phase_r[26]), .B(nco_step_r[26]), .CI(
        sample_hold_r[15]), .CO(n304), .S(n305) );
  FA1D1BWP12T30P140 U533 ( .A(phase_r[27]), .B(nco_step_r[27]), .CI(
        sample_hold_r[15]), .CO(n301), .S(n302) );
  FA1D1BWP12T30P140 U534 ( .A(phase_r[28]), .B(nco_step_r[28]), .CI(
        sample_hold_r[15]), .CO(n411), .S(n299) );
  FA1D1BWP12T30P140 U535 ( .A(n301), .B(n300), .CI(n299), .CO(n410), .S(N71)
         );
  FA1D1BWP12T30P140 U536 ( .A(n304), .B(n303), .CI(n302), .CO(n300), .S(N70)
         );
  FA1D1BWP12T30P140 U537 ( .A(n307), .B(n306), .CI(n305), .CO(n303), .S(N69)
         );
  FA1D1BWP12T30P140 U538 ( .A(n310), .B(n309), .CI(n308), .CO(n306), .S(N68)
         );
  FA1D1BWP12T30P140 U539 ( .A(n313), .B(n312), .CI(n311), .CO(n309), .S(N67)
         );
  FA1D1BWP12T30P140 U540 ( .A(n316), .B(n315), .CI(n314), .CO(n312), .S(N66)
         );
  FA1D1BWP12T30P140 U541 ( .A(n319), .B(n318), .CI(n317), .CO(n315), .S(N65)
         );
  FA1D1BWP12T30P140 U542 ( .A(n322), .B(n321), .CI(n320), .CO(n318), .S(N64)
         );
  FA1D1BWP12T30P140 U543 ( .A(n325), .B(n324), .CI(n323), .CO(n321), .S(N63)
         );
  FA1D1BWP12T30P140 U544 ( .A(n328), .B(n327), .CI(n326), .CO(n324), .S(N62)
         );
  FA1D1BWP12T30P140 U545 ( .A(n331), .B(n330), .CI(n329), .CO(n327), .S(N61)
         );
  FA1D1BWP12T30P140 U546 ( .A(n334), .B(n333), .CI(n332), .CO(n330), .S(N60)
         );
  AOI22D0BWP12T30P140 U547 ( .A1(n370), .A2(n336), .B1(n335), .B2(n347), .ZN(
        n137) );
  AOI22D0BWP12T30P140 U548 ( .A1(n377), .A2(n338), .B1(n337), .B2(n374), .ZN(
        n136) );
  AOI22D0BWP12T30P140 U549 ( .A1(n370), .A2(n340), .B1(n339), .B2(n374), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U550 ( .A1(n370), .A2(n342), .B1(n341), .B2(n374), .ZN(
        n134) );
  AOI22D0BWP12T30P140 U551 ( .A1(n377), .A2(n344), .B1(n343), .B2(n374), .ZN(
        n133) );
  AOI22D0BWP12T30P140 U552 ( .A1(n370), .A2(n346), .B1(n345), .B2(n374), .ZN(
        n132) );
  AOI22D0BWP12T30P140 U553 ( .A1(n377), .A2(n349), .B1(n348), .B2(n347), .ZN(
        n152) );
  FA1D1BWP12T30P140 U554 ( .A(n352), .B(n351), .CI(n350), .CO(n333), .S(N59)
         );
  AOI22D0BWP12T30P140 U555 ( .A1(n377), .A2(n354), .B1(n353), .B2(n374), .ZN(
        n129) );
  IND2D1BWP12T30P140 U556 ( .A1(n355), .B1(timer_r[8]), .ZN(n359) );
  AOI22D0BWP12T30P140 U557 ( .A1(n359), .A2(n358), .B1(n357), .B2(n356), .ZN(
        N30) );
  AOI22D0BWP12T30P140 U558 ( .A1(n370), .A2(n361), .B1(n360), .B2(n374), .ZN(
        n126) );
  AOI22D0BWP12T30P140 U559 ( .A1(n377), .A2(n363), .B1(n362), .B2(n374), .ZN(
        n131) );
  AOI22D0BWP12T30P140 U560 ( .A1(n370), .A2(n365), .B1(n364), .B2(n374), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U561 ( .A1(n377), .A2(n367), .B1(n366), .B2(n374), .ZN(
        n125) );
  AOI22D0BWP12T30P140 U562 ( .A1(n370), .A2(n369), .B1(n368), .B2(n374), .ZN(
        n124) );
  FA1D1BWP12T30P140 U563 ( .A(n373), .B(n372), .CI(n371), .CO(n351), .S(N58)
         );
  AOI22D0BWP12T30P140 U564 ( .A1(n377), .A2(n376), .B1(n375), .B2(n374), .ZN(
        n127) );
  AOI22D0BWP12T30P140 U565 ( .A1(n379), .A2(n378), .B1(n415), .B2(n213), .ZN(
        n110) );
  FA1D1BWP12T30P140 U566 ( .A(n382), .B(n381), .CI(n380), .CO(n372), .S(N57)
         );
  FA1D1BWP12T30P140 U567 ( .A(n385), .B(n384), .CI(n383), .CO(n381), .S(N56)
         );
  FA1D1BWP12T30P140 U568 ( .A(n388), .B(n387), .CI(n386), .CO(n384), .S(N55)
         );
  FA1D1BWP12T30P140 U569 ( .A(n391), .B(n390), .CI(n389), .CO(n387), .S(N54)
         );
  FA1D1BWP12T30P140 U570 ( .A(n394), .B(n393), .CI(n392), .CO(n390), .S(N53)
         );
  FA1D1BWP12T30P140 U571 ( .A(n397), .B(n396), .CI(n395), .CO(n393), .S(N52)
         );
  FA1D1BWP12T30P140 U572 ( .A(n400), .B(n399), .CI(n398), .CO(n396), .S(N51)
         );
  FA1D1BWP12T30P140 U573 ( .A(phase_r[7]), .B(n402), .CI(n401), .CO(n400), .S(
        N50) );
  FA1D1BWP12T30P140 U574 ( .A(nco_step_r[6]), .B(phase_r[6]), .CI(n403), .CO(
        n402), .S(N49) );
  FA1D1BWP12T30P140 U575 ( .A(nco_step_r[5]), .B(phase_r[5]), .CI(n404), .CO(
        n403), .S(N48) );
  FA1D1BWP12T30P140 U576 ( .A(nco_step_r[4]), .B(phase_r[4]), .CI(n405), .CO(
        n404), .S(N47) );
  FA1D1BWP12T30P140 U577 ( .A(nco_step_r[3]), .B(phase_r[3]), .CI(n406), .CO(
        n405), .S(N46) );
  FA1D1BWP12T30P140 U578 ( .A(nco_step_r[2]), .B(phase_r[2]), .CI(n407), .CO(
        n406), .S(N45) );
  FA1D1BWP12T30P140 U579 ( .A(nco_step_r[1]), .B(phase_r[1]), .CI(n408), .CO(
        n407), .S(N44) );
  CKBD0BWP12T30P140 U580 ( .I(i_clk), .Z(n427) );
  CKBD0BWP12T30P140 U581 ( .I(i_clk), .Z(n424) );
  CKBD0BWP12T30P140 U582 ( .I(i_clk), .Z(n423) );
  IAO21D0BWP12T30P140 U583 ( .A1(nco_step_r[0]), .A2(phase_r[0]), .B(n408), 
        .ZN(N43) );
  FA1D1BWP12T30P140 U584 ( .A(phase_r[29]), .B(nco_step_r[29]), .CI(
        sample_hold_r[15]), .CO(n414), .S(n409) );
  FA1D1BWP12T30P140 U585 ( .A(n411), .B(n410), .CI(n409), .CO(n413), .S(N72)
         );
  FA1D1BWP12T30P140 U586 ( .A(phase_r[30]), .B(sample_hold_r[15]), .CI(
        nco_step_r[30]), .CO(n419), .S(n412) );
  FA1D1BWP12T30P140 U587 ( .A(n414), .B(n413), .CI(n412), .CO(n418), .S(N73)
         );
  AOI22D0BWP12T30P140 U588 ( .A1(sample_hold_r[15]), .A2(n416), .B1(
        nco_step_r[31]), .B2(n415), .ZN(n417) );
  XNR4D0BWP12T30P140 U589 ( .A1(n419), .A2(n418), .A3(o_tx), .A4(n417), .ZN(
        N74) );
endmodule

