/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:06:49 2026
/////////////////////////////////////////////////////////////


module AIC1106_PCM ( csi_avalon_clk, csi_reset, csi_audio_clk, 
        avs_creg_address, avs_creg_chipselect, avs_creg_write, avs_creg_read, 
        avs_creg_writedata, avs_creg_readdata, asi_data, asi_valid, asi_ready, 
        aso_data, aso_valid, coe_mclk, coe_pcmsyn, coe_pcmi, coe_pcmo, 
        coe_reset_n, coe_mute, coe_linsel );
  input [1:0] avs_creg_address;
  input [31:0] avs_creg_writedata;
  output [31:0] avs_creg_readdata;
  input [31:0] asi_data;
  output [31:0] aso_data;
  input csi_avalon_clk, csi_reset, csi_audio_clk, avs_creg_chipselect,
         avs_creg_write, avs_creg_read, asi_valid, coe_pcmo;
  output asi_ready, aso_valid, coe_mclk, coe_pcmsyn, coe_pcmi, coe_reset_n,
         coe_mute, coe_linsel;
  wire   enable_r, pcmsyn_r, loopback_r, state_6, reset_req_r, tx_latch_r_12,
         tx_latch_r_11, tx_latch_r_10, tx_latch_r_9, tx_latch_r_8,
         tx_latch_r_7, tx_latch_r_6, tx_latch_r_5, tx_latch_r_4, tx_latch_r_3,
         tx_latch_r_2, tx_latch_r_1, tx_latch_r_0, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327;
  wire   [15:0] tx_shft_r;
  wire   [2:0] state;
  wire   [8:0] main_cnt;
  wire   [28:16] tx_latch_r;

  DFSNQD1BWP12T30P140 volume_r_reg_0_ ( .D(n112), .CP(csi_avalon_clk), .SDN(
        n111), .Q(state[0]) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_0_ ( .D(n110), .CPN(n327), .CDN(n321), 
        .QN(n304) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_1_ ( .D(n109), .CPN(n327), .CDN(n321), 
        .QN(n312) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_2_ ( .D(n108), .CPN(n327), .CDN(n321), 
        .QN(n305) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_3_ ( .D(n107), .CPN(n327), .CDN(n321), 
        .QN(n313) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_4_ ( .D(n106), .CPN(n327), .CDN(n321), 
        .QN(n306) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_5_ ( .D(n105), .CPN(n327), .CDN(n321), 
        .QN(n314) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_6_ ( .D(n104), .CPN(n327), .CDN(n321), 
        .QN(n307) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_7_ ( .D(n103), .CPN(n327), .CDN(n321), 
        .QN(n315) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_8_ ( .D(n102), .CPN(n327), .CDN(n321), 
        .QN(n308) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_9_ ( .D(n101), .CPN(n327), .CDN(n321), 
        .QN(n316) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_10_ ( .D(n100), .CPN(n327), .CDN(n322), 
        .QN(n309) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_11_ ( .D(n99), .CPN(n327), .CDN(n322), 
        .QN(n317) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_12_ ( .D(n98), .CPN(n327), .CDN(n321), 
        .QN(n310) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_13_ ( .D(n97), .CPN(n327), .CDN(n322), 
        .QN(n318) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_14_ ( .D(n96), .CPN(n327), .CDN(n322), 
        .QN(n311) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_15_ ( .D(n95), .CPN(n327), .CDN(n321), 
        .QN(n319) );
  DFCNQD1BWP12T30P140 mute_r_reg ( .D(n118), .CP(csi_avalon_clk), .CDN(n111), 
        .Q(coe_mute) );
  DFQD2BWP12T30P140 tx_latch_r_reg_28_ ( .D(n192), .CP(csi_audio_clk), .Q(
        tx_latch_r[28]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_24_ ( .D(n188), .CP(csi_audio_clk), .Q(
        tx_latch_r[24]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_22_ ( .D(n186), .CP(csi_audio_clk), .Q(
        tx_latch_r[22]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_18_ ( .D(n182), .CP(csi_audio_clk), .Q(
        tx_latch_r[18]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_17_ ( .D(n181), .CP(csi_audio_clk), .Q(
        tx_latch_r[17]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_12_ ( .D(n179), .CP(csi_audio_clk), .Q(
        tx_latch_r_12) );
  DFQD2BWP12T30P140 tx_latch_r_reg_10_ ( .D(n177), .CP(csi_audio_clk), .Q(
        tx_latch_r_10) );
  DFQD2BWP12T30P140 tx_latch_r_reg_8_ ( .D(n175), .CP(csi_audio_clk), .Q(
        tx_latch_r_8) );
  DFQD2BWP12T30P140 tx_latch_r_reg_6_ ( .D(n173), .CP(csi_audio_clk), .Q(
        tx_latch_r_6) );
  DFQD2BWP12T30P140 tx_latch_r_reg_4_ ( .D(n171), .CP(csi_audio_clk), .Q(
        tx_latch_r_4) );
  DFQD2BWP12T30P140 tx_latch_r_reg_2_ ( .D(n169), .CP(csi_audio_clk), .Q(
        tx_latch_r_2) );
  DFCNQD1BWP12T30P140 loopback_r_reg ( .D(n117), .CP(csi_avalon_clk), .CDN(
        n111), .Q(loopback_r) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_15_ ( .D(n150), .CP(n324), .CDN(n320), 
        .Q(aso_data[15]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_31_ ( .D(n149), .CP(n324), .CDN(n320), 
        .Q(aso_data[31]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_14_ ( .D(n148), .CP(n324), .CDN(n320), 
        .Q(aso_data[14]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_30_ ( .D(n147), .CP(n324), .CDN(n320), 
        .Q(aso_data[30]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_13_ ( .D(n146), .CP(n324), .CDN(n320), 
        .Q(aso_data[13]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_29_ ( .D(n145), .CP(n324), .CDN(n320), 
        .Q(aso_data[29]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_12_ ( .D(n144), .CP(n324), .CDN(n320), 
        .Q(aso_data[12]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_28_ ( .D(n143), .CP(n325), .CDN(n94), .Q(
        aso_data[28]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_11_ ( .D(n142), .CP(n325), .CDN(n322), 
        .Q(aso_data[11]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_27_ ( .D(n141), .CP(n325), .CDN(n94), .Q(
        aso_data[27]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_10_ ( .D(n140), .CP(n325), .CDN(n322), 
        .Q(aso_data[10]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_26_ ( .D(n139), .CP(n325), .CDN(n94), .Q(
        aso_data[26]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_9_ ( .D(n138), .CP(n325), .CDN(n322), .Q(
        aso_data[9]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_25_ ( .D(n137), .CP(n325), .CDN(n94), .Q(
        aso_data[25]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_8_ ( .D(n136), .CP(n325), .CDN(n322), .Q(
        aso_data[8]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_24_ ( .D(n135), .CP(n325), .CDN(n321), 
        .Q(aso_data[24]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_7_ ( .D(n134), .CP(n325), .CDN(n94), .Q(
        aso_data[7]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_23_ ( .D(n133), .CP(n325), .CDN(n322), 
        .Q(aso_data[23]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_6_ ( .D(n132), .CP(n325), .CDN(n320), .Q(
        aso_data[6]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_22_ ( .D(n131), .CP(n326), .CDN(n94), .Q(
        aso_data[22]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_5_ ( .D(n130), .CP(n326), .CDN(n94), .Q(
        aso_data[5]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_21_ ( .D(n129), .CP(n326), .CDN(n322), 
        .Q(aso_data[21]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_4_ ( .D(n128), .CP(n326), .CDN(n94), .Q(
        aso_data[4]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_20_ ( .D(n127), .CP(n326), .CDN(n322), 
        .Q(aso_data[20]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_3_ ( .D(n126), .CP(n326), .CDN(n94), .Q(
        aso_data[3]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_19_ ( .D(n125), .CP(n326), .CDN(n322), 
        .Q(aso_data[19]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_2_ ( .D(n124), .CP(n326), .CDN(n94), .Q(
        aso_data[2]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_18_ ( .D(n123), .CP(n326), .CDN(n322), 
        .Q(aso_data[18]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_1_ ( .D(n122), .CP(n326), .CDN(n94), .Q(
        aso_data[1]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_17_ ( .D(n121), .CP(n326), .CDN(n322), 
        .Q(aso_data[17]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_0_ ( .D(n120), .CP(n326), .CDN(n94), .Q(
        aso_data[0]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_16_ ( .D(n119), .CP(n326), .CDN(n322), 
        .Q(aso_data[16]) );
  DFCNQD1BWP12T30P140 asi_ready_r_reg ( .D(n195), .CP(n324), .CDN(n320), .Q(
        asi_ready) );
  DFCNQD1BWP12T30P140 aso_valid_r_reg ( .D(n196), .CP(n323), .CDN(n320), .Q(
        aso_valid) );
  DFCNQD1BWP12T30P140 volume_r_reg_2_ ( .D(n116), .CP(csi_avalon_clk), .CDN(
        n111), .Q(state[2]) );
  DFCNQD1BWP12T30P140 volume_r_reg_1_ ( .D(n115), .CP(csi_avalon_clk), .CDN(
        n111), .Q(state[1]) );
  DFCNQD1BWP12T30P140 pcmsyn_r_reg ( .D(n194), .CP(n323), .CDN(n320), .Q(
        pcmsyn_r) );
  DFCNQD1BWP12T30P140 underflow_r_reg ( .D(n193), .CP(n324), .CDN(n94), .Q(
        state_6) );
  DFCNQD1BWP12T30P140 enable_r_reg ( .D(n114), .CP(csi_avalon_clk), .CDN(n111), 
        .Q(enable_r) );
  DFCNQD1BWP12T30P140 main_cnt_reg_6_ ( .D(N31), .CP(n323), .CDN(n321), .Q(
        main_cnt[6]) );
  DFCNQD1BWP12T30P140 reset_req_r_reg ( .D(n113), .CP(csi_avalon_clk), .CDN(
        n111), .Q(reset_req_r) );
  DFCNQD1BWP12T30P140 main_cnt_reg_4_ ( .D(N29), .CP(n324), .CDN(n321), .Q(
        main_cnt[4]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_7_ ( .D(N32), .CP(n324), .CDN(n321), .Q(
        main_cnt[7]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_5_ ( .D(N30), .CP(n323), .CDN(n321), .Q(
        main_cnt[5]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_26_ ( .D(n190), .CP(n327), .Q(
        tx_latch_r[26]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_20_ ( .D(n184), .CP(n323), .Q(
        tx_latch_r[20]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_16_ ( .D(n180), .CP(n325), .Q(
        tx_latch_r[16]) );
  DFQD2BWP12T30P140 tx_shft_r_reg_15_ ( .D(n151), .CP(n326), .Q(tx_shft_r[15])
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_11_ ( .D(n178), .CP(n323), .Q(tx_latch_r_11) );
  DFQD2BWP12T30P140 tx_latch_r_reg_9_ ( .D(n176), .CP(n326), .Q(tx_latch_r_9)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_7_ ( .D(n174), .CP(n326), .Q(tx_latch_r_7)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_5_ ( .D(n172), .CP(n324), .Q(tx_latch_r_5)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_3_ ( .D(n170), .CP(n324), .Q(tx_latch_r_3)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_1_ ( .D(n168), .CP(n325), .Q(tx_latch_r_1)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_0_ ( .D(n167), .CP(n325), .Q(tx_latch_r_0)
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_3_ ( .D(n163), .CP(n323), .Q(tx_shft_r[3])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_4_ ( .D(n162), .CP(n324), .Q(tx_shft_r[4])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_6_ ( .D(n160), .CP(n324), .Q(tx_shft_r[6])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_7_ ( .D(n159), .CP(n325), .Q(tx_shft_r[7])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_8_ ( .D(n158), .CP(n323), .Q(tx_shft_r[8])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_9_ ( .D(n157), .CP(n323), .Q(tx_shft_r[9])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_10_ ( .D(n156), .CP(n326), .Q(tx_shft_r[10])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_11_ ( .D(n155), .CP(n326), .Q(tx_shft_r[11])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_12_ ( .D(n154), .CP(n324), .Q(tx_shft_r[12])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_13_ ( .D(n153), .CP(n324), .Q(tx_shft_r[13])
         );
  DFQD2BWP12T30P140 tx_shft_r_reg_14_ ( .D(n152), .CP(n325), .Q(tx_shft_r[14])
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_27_ ( .D(n191), .CP(n323), .Q(
        tx_latch_r[27]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_25_ ( .D(n189), .CP(n323), .Q(
        tx_latch_r[25]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_23_ ( .D(n187), .CP(n323), .Q(
        tx_latch_r[23]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_21_ ( .D(n185), .CP(n323), .Q(
        tx_latch_r[21]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_1_ ( .D(N26), .CP(n323), .CDN(n320), .Q(
        main_cnt[1]) );
  DFQD2BWP12T30P140 tx_shft_r_reg_2_ ( .D(n164), .CP(n323), .Q(tx_shft_r[2])
         );
  DFCNQD1BWP12T30P140 main_cnt_reg_3_ ( .D(N28), .CP(n323), .CDN(n321), .Q(
        main_cnt[3]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_8_ ( .D(N33), .CP(n325), .CDN(n321), .Q(
        main_cnt[8]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_2_ ( .D(N27), .CP(n324), .CDN(n320), .Q(
        main_cnt[2]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_0_ ( .D(N25), .CP(n324), .CDN(n320), .Q(
        main_cnt[0]) );
  DFQD1BWP12T30P140 tx_shft_r_reg_1_ ( .D(n165), .CP(csi_audio_clk), .Q(
        tx_shft_r[1]) );
  DFQD1BWP12T30P140 reset_r_reg ( .D(n197), .CP(n325), .Q(coe_reset_n) );
  DFQD1BWP12T30P140 tx_shft_r_reg_5_ ( .D(n161), .CP(n326), .Q(tx_shft_r[5])
         );
  DFQD1BWP12T30P140 tx_latch_r_reg_19_ ( .D(n183), .CP(n323), .Q(
        tx_latch_r[19]) );
  DFQD1BWP12T30P140 tx_shft_r_reg_0_ ( .D(n166), .CP(n323), .Q(tx_shft_r[0])
         );
  TIEHBWP12T30P140 U210 ( .Z(n226) );
  INVD0BWP12T30P140 U211 ( .I(n226), .ZN(coe_linsel) );
  INVD0BWP12T30P140 U212 ( .I(n226), .ZN(avs_creg_readdata[3]) );
  INVD0BWP12T30P140 U213 ( .I(n226), .ZN(avs_creg_readdata[7]) );
  INVD0BWP12T30P140 U214 ( .I(n226), .ZN(avs_creg_readdata[8]) );
  INVD0BWP12T30P140 U215 ( .I(n226), .ZN(avs_creg_readdata[9]) );
  INVD0BWP12T30P140 U216 ( .I(n226), .ZN(avs_creg_readdata[10]) );
  INVD0BWP12T30P140 U217 ( .I(n226), .ZN(avs_creg_readdata[11]) );
  INVD0BWP12T30P140 U218 ( .I(n226), .ZN(avs_creg_readdata[12]) );
  INVD0BWP12T30P140 U219 ( .I(n226), .ZN(avs_creg_readdata[13]) );
  INVD0BWP12T30P140 U220 ( .I(n226), .ZN(avs_creg_readdata[14]) );
  INVD0BWP12T30P140 U221 ( .I(n226), .ZN(avs_creg_readdata[15]) );
  INVD0BWP12T30P140 U222 ( .I(n226), .ZN(avs_creg_readdata[16]) );
  INVD0BWP12T30P140 U223 ( .I(n226), .ZN(avs_creg_readdata[17]) );
  INVD0BWP12T30P140 U224 ( .I(n226), .ZN(avs_creg_readdata[18]) );
  INVD0BWP12T30P140 U225 ( .I(n226), .ZN(avs_creg_readdata[19]) );
  INVD0BWP12T30P140 U226 ( .I(n226), .ZN(avs_creg_readdata[20]) );
  INVD0BWP12T30P140 U227 ( .I(n226), .ZN(avs_creg_readdata[21]) );
  INVD0BWP12T30P140 U228 ( .I(n226), .ZN(avs_creg_readdata[22]) );
  INVD0BWP12T30P140 U229 ( .I(n226), .ZN(avs_creg_readdata[23]) );
  INVD0BWP12T30P140 U230 ( .I(n226), .ZN(avs_creg_readdata[24]) );
  INVD0BWP12T30P140 U231 ( .I(n226), .ZN(avs_creg_readdata[25]) );
  INVD0BWP12T30P140 U232 ( .I(n226), .ZN(avs_creg_readdata[26]) );
  INVD0BWP12T30P140 U233 ( .I(n226), .ZN(avs_creg_readdata[27]) );
  INVD0BWP12T30P140 U234 ( .I(n226), .ZN(avs_creg_readdata[28]) );
  INVD0BWP12T30P140 U235 ( .I(n226), .ZN(avs_creg_readdata[29]) );
  INVD0BWP12T30P140 U236 ( .I(n226), .ZN(avs_creg_readdata[30]) );
  INVD0BWP12T30P140 U237 ( .I(n226), .ZN(avs_creg_readdata[31]) );
  NR2D0BWP12T30P140 U238 ( .A1(avs_creg_address[0]), .A2(avs_creg_address[1]), 
        .ZN(n263) );
  ND3D0BWP12T30P140 U239 ( .A1(n263), .A2(avs_creg_write), .A3(
        avs_creg_chipselect), .ZN(n248) );
  CKMUX2D0BWP12T30P140 U240 ( .I0(avs_creg_writedata[0]), .I1(state[0]), .S(
        n248), .Z(n112) );
  INVD0BWP12T30P140 U241 ( .I(main_cnt[2]), .ZN(n252) );
  INVD0BWP12T30P140 U242 ( .I(main_cnt[4]), .ZN(n240) );
  NR3D0BWP12T30P140 U243 ( .A1(main_cnt[7]), .A2(main_cnt[5]), .A3(main_cnt[6]), .ZN(n236) );
  IND2D1BWP12T30P140 U244 ( .A1(main_cnt[3]), .B1(n236), .ZN(n265) );
  INVD0BWP12T30P140 U245 ( .I(main_cnt[1]), .ZN(n254) );
  ND2D0BWP12T30P140 U246 ( .A1(main_cnt[0]), .A2(n254), .ZN(n253) );
  NR4D0BWP12T30P140 U247 ( .A1(n252), .A2(n240), .A3(n265), .A4(n253), .ZN(
        n227) );
  INVD0BWP12T30P140 U248 ( .I(main_cnt[8]), .ZN(n302) );
  AN2D0BWP12T30P140 U249 ( .A1(n227), .A2(n302), .Z(n232) );
  CKBD0BWP12T30P140 U250 ( .I(n232), .Z(n234) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n234), .A2(n314), .B1(aso_data[5]), .B2(n232), .ZN(n130) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n232), .A2(n307), .B1(aso_data[6]), .B2(n234), .ZN(n132) );
  ND2D0BWP12T30P140 U253 ( .A1(main_cnt[8]), .A2(n227), .ZN(n267) );
  INVD0BWP12T30P140 U254 ( .I(n267), .ZN(n247) );
  CKBD0BWP12T30P140 U255 ( .I(n247), .Z(n246) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n246), .A2(n314), .B1(aso_data[21]), .B2(
        n247), .ZN(n129) );
  MAOI22D0BWP12T30P140 U257 ( .A1(n246), .A2(n315), .B1(aso_data[23]), .B2(
        n247), .ZN(n133) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n234), .A2(n306), .B1(aso_data[4]), .B2(n232), .ZN(n128) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n234), .A2(n315), .B1(aso_data[7]), .B2(n232), .ZN(n134) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n246), .A2(n306), .B1(aso_data[20]), .B2(
        n247), .ZN(n127) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n246), .A2(n308), .B1(aso_data[24]), .B2(
        n247), .ZN(n135) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n232), .A2(n313), .B1(aso_data[3]), .B2(n234), .ZN(n126) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n234), .A2(n308), .B1(aso_data[8]), .B2(n232), .ZN(n136) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n247), .A2(n313), .B1(aso_data[19]), .B2(
        n246), .ZN(n125) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n246), .A2(n316), .B1(aso_data[25]), .B2(
        n246), .ZN(n137) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n234), .A2(n305), .B1(aso_data[2]), .B2(n232), .ZN(n124) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n234), .A2(n316), .B1(aso_data[9]), .B2(n234), .ZN(n138) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n246), .A2(n305), .B1(aso_data[18]), .B2(
        n247), .ZN(n123) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n246), .A2(n309), .B1(aso_data[26]), .B2(
        n247), .ZN(n139) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n232), .A2(n312), .B1(aso_data[1]), .B2(n234), .ZN(n122) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n234), .A2(n309), .B1(aso_data[10]), .B2(
        n232), .ZN(n140) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n247), .A2(n312), .B1(aso_data[17]), .B2(
        n246), .ZN(n121) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n246), .A2(n317), .B1(aso_data[27]), .B2(
        n247), .ZN(n141) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n232), .A2(n304), .B1(aso_data[0]), .B2(n232), .ZN(n120) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n234), .A2(n317), .B1(aso_data[11]), .B2(
        n232), .ZN(n142) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n247), .A2(n304), .B1(aso_data[16]), .B2(
        n247), .ZN(n119) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n246), .A2(n310), .B1(aso_data[28]), .B2(
        n247), .ZN(n143) );
  INVD0BWP12T30P140 U278 ( .I(main_cnt[0]), .ZN(N25) );
  NR2D0BWP12T30P140 U279 ( .A1(main_cnt[4]), .A2(n265), .ZN(n229) );
  ND2D0BWP12T30P140 U280 ( .A1(n229), .A2(n252), .ZN(n230) );
  OR2D0BWP12T30P140 U281 ( .A1(n230), .A2(main_cnt[8]), .Z(n270) );
  ND2D0BWP12T30P140 U282 ( .A1(N25), .A2(n254), .ZN(n235) );
  OAI21D0BWP12T30P140 U283 ( .A1(n270), .A2(main_cnt[1]), .B(asi_ready), .ZN(
        n228) );
  OAI21D0BWP12T30P140 U284 ( .A1(n270), .A2(n235), .B(n228), .ZN(n195) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n234), .A2(n310), .B1(aso_data[12]), .B2(
        n232), .ZN(n144) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n246), .A2(n318), .B1(aso_data[29]), .B2(
        n247), .ZN(n145) );
  CKMUX2D0BWP12T30P140 U287 ( .I0(avs_creg_writedata[2]), .I1(state[2]), .S(
        n248), .Z(n116) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n234), .A2(n318), .B1(aso_data[13]), .B2(
        n232), .ZN(n146) );
  CKMUX2D0BWP12T30P140 U289 ( .I0(avs_creg_writedata[1]), .I1(state[1]), .S(
        n248), .Z(n115) );
  IND3D1BWP12T30P140 U290 ( .A1(n235), .B1(main_cnt[2]), .B2(n229), .ZN(n231)
         );
  ND2D0BWP12T30P140 U291 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .ZN(n269) );
  NR2D0BWP12T30P140 U292 ( .A1(n230), .A2(n269), .ZN(n239) );
  AO21D0BWP12T30P140 U293 ( .A1(pcmsyn_r), .A2(n231), .B(n239), .Z(n194) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n246), .A2(n311), .B1(aso_data[30]), .B2(
        n247), .ZN(n147) );
  NR3D0BWP12T30P140 U295 ( .A1(main_cnt[0]), .A2(n270), .A3(n254), .ZN(n241)
         );
  INVD0BWP12T30P140 U296 ( .I(asi_valid), .ZN(n242) );
  AO21D0BWP12T30P140 U297 ( .A1(n241), .A2(n242), .B(state_6), .Z(n193) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n234), .A2(n311), .B1(aso_data[14]), .B2(
        n232), .ZN(n148) );
  CKMUX2D0BWP12T30P140 U299 ( .I0(avs_creg_writedata[4]), .I1(enable_r), .S(
        n248), .Z(n114) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n246), .A2(n319), .B1(aso_data[31]), .B2(
        n246), .ZN(n149) );
  INVD0BWP12T30P140 U301 ( .I(main_cnt[6]), .ZN(n233) );
  NR2D0BWP12T30P140 U302 ( .A1(n252), .A2(n269), .ZN(n256) );
  ND2D0BWP12T30P140 U303 ( .A1(main_cnt[3]), .A2(n256), .ZN(n255) );
  NR2D0BWP12T30P140 U304 ( .A1(n240), .A2(n255), .ZN(n245) );
  ND2D0BWP12T30P140 U305 ( .A1(main_cnt[5]), .A2(n245), .ZN(n244) );
  NR2D0BWP12T30P140 U306 ( .A1(n233), .A2(n244), .ZN(n243) );
  AOI21D0BWP12T30P140 U307 ( .A1(n233), .A2(n244), .B(n243), .ZN(N31) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n234), .A2(n319), .B1(aso_data[15]), .B2(
        n234), .ZN(n150) );
  NR2D0BWP12T30P140 U309 ( .A1(reset_req_r), .A2(csi_reset), .ZN(n197) );
  CKMUX2D0BWP12T30P140 U310 ( .I0(avs_creg_writedata[5]), .I1(loopback_r), .S(
        n248), .Z(n117) );
  CKMUX2D0BWP12T30P140 U311 ( .I0(avs_creg_writedata[6]), .I1(reset_req_r), 
        .S(n248), .Z(n113) );
  INVD0BWP12T30P140 U312 ( .I(reset_req_r), .ZN(n94) );
  CKBD0BWP12T30P140 U313 ( .I(n94), .Z(n322) );
  AOI21D0BWP12T30P140 U314 ( .A1(main_cnt[2]), .A2(n235), .B(main_cnt[3]), 
        .ZN(n238) );
  OAI21D0BWP12T30P140 U315 ( .A1(n238), .A2(n240), .B(n236), .ZN(n237) );
  AOI21D0BWP12T30P140 U316 ( .A1(n238), .A2(n240), .B(n237), .ZN(n262) );
  OAI21D0BWP12T30P140 U317 ( .A1(n262), .A2(n239), .B(n322), .ZN(n295) );
  ND2D0BWP12T30P140 U318 ( .A1(n239), .A2(n322), .ZN(n268) );
  INVD0BWP12T30P140 U319 ( .I(n268), .ZN(n258) );
  INVD0BWP12T30P140 U320 ( .I(n262), .ZN(n261) );
  NR2D0BWP12T30P140 U321 ( .A1(reset_req_r), .A2(n261), .ZN(n297) );
  AO222D0BWP12T30P140 U322 ( .A1(n295), .A2(tx_shft_r[1]), .B1(n258), .B2(
        state[1]), .C1(n297), .C2(tx_shft_r[0]), .Z(n165) );
  AOI21D0BWP12T30P140 U323 ( .A1(n240), .A2(n255), .B(n245), .ZN(N29) );
  ND2D0BWP12T30P140 U324 ( .A1(n241), .A2(n322), .ZN(n257) );
  CKBD0BWP12T30P140 U325 ( .I(n257), .Z(n260) );
  NR2D0BWP12T30P140 U326 ( .A1(n260), .A2(n242), .ZN(n259) );
  CKBD0BWP12T30P140 U327 ( .I(n259), .Z(n249) );
  AO22D0BWP12T30P140 U328 ( .A1(tx_latch_r_2), .A2(n260), .B1(n249), .B2(
        asi_data[2]), .Z(n169) );
  AO22D0BWP12T30P140 U329 ( .A1(tx_latch_r_4), .A2(n260), .B1(n249), .B2(
        asi_data[4]), .Z(n171) );
  ND2D0BWP12T30P140 U330 ( .A1(main_cnt[7]), .A2(n243), .ZN(n301) );
  OA21D0BWP12T30P140 U331 ( .A1(main_cnt[7]), .A2(n243), .B(n301), .Z(N32) );
  AO22D0BWP12T30P140 U332 ( .A1(tx_latch_r_6), .A2(n260), .B1(n249), .B2(
        asi_data[6]), .Z(n173) );
  AO22D0BWP12T30P140 U333 ( .A1(tx_latch_r_8), .A2(n260), .B1(n249), .B2(
        asi_data[8]), .Z(n175) );
  OA21D0BWP12T30P140 U334 ( .A1(main_cnt[5]), .A2(n245), .B(n244), .Z(N30) );
  AO22D0BWP12T30P140 U335 ( .A1(tx_latch_r_10), .A2(n260), .B1(n249), .B2(
        asi_data[10]), .Z(n177) );
  AO22D0BWP12T30P140 U336 ( .A1(tx_latch_r_12), .A2(n257), .B1(n249), .B2(
        asi_data[12]), .Z(n179) );
  AO22D0BWP12T30P140 U337 ( .A1(tx_latch_r[26]), .A2(n257), .B1(n259), .B2(
        asi_data[26]), .Z(n190) );
  AO22D0BWP12T30P140 U338 ( .A1(tx_latch_r[17]), .A2(n257), .B1(n259), .B2(
        asi_data[17]), .Z(n181) );
  AO22D0BWP12T30P140 U339 ( .A1(tx_latch_r[20]), .A2(n260), .B1(n259), .B2(
        asi_data[20]), .Z(n184) );
  AO22D0BWP12T30P140 U340 ( .A1(tx_latch_r[18]), .A2(n260), .B1(n259), .B2(
        asi_data[18]), .Z(n182) );
  AO22D0BWP12T30P140 U341 ( .A1(tx_latch_r[16]), .A2(n260), .B1(n259), .B2(
        asi_data[16]), .Z(n180) );
  AO22D0BWP12T30P140 U342 ( .A1(tx_latch_r[22]), .A2(n260), .B1(n259), .B2(
        asi_data[22]), .Z(n186) );
  AO22D0BWP12T30P140 U343 ( .A1(tx_latch_r[24]), .A2(n260), .B1(n259), .B2(
        asi_data[24]), .Z(n188) );
  AO22D0BWP12T30P140 U344 ( .A1(tx_latch_r_11), .A2(n257), .B1(n249), .B2(
        asi_data[11]), .Z(n178) );
  AO22D0BWP12T30P140 U345 ( .A1(tx_latch_r[28]), .A2(n260), .B1(n249), .B2(
        asi_data[28]), .Z(n192) );
  AO22D0BWP12T30P140 U346 ( .A1(tx_latch_r_9), .A2(n257), .B1(n249), .B2(
        asi_data[9]), .Z(n176) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n247), .A2(n307), .B1(aso_data[22]), .B2(
        n246), .ZN(n131) );
  CKMUX2D0BWP12T30P140 U348 ( .I0(avs_creg_writedata[3]), .I1(coe_mute), .S(
        n248), .Z(n118) );
  AO22D0BWP12T30P140 U349 ( .A1(tx_latch_r_7), .A2(n257), .B1(n249), .B2(
        asi_data[7]), .Z(n174) );
  AO22D0BWP12T30P140 U350 ( .A1(tx_latch_r_5), .A2(n257), .B1(n249), .B2(
        asi_data[5]), .Z(n172) );
  AOI22D0BWP12T30P140 U351 ( .A1(n262), .A2(n311), .B1(n319), .B2(n261), .ZN(
        n95) );
  AO22D0BWP12T30P140 U352 ( .A1(tx_latch_r_3), .A2(n257), .B1(n249), .B2(
        asi_data[3]), .Z(n170) );
  AO22D0BWP12T30P140 U353 ( .A1(tx_latch_r_1), .A2(n257), .B1(n249), .B2(
        asi_data[1]), .Z(n168) );
  AOI22D0BWP12T30P140 U354 ( .A1(n262), .A2(n318), .B1(n311), .B2(n261), .ZN(
        n96) );
  AO22D0BWP12T30P140 U355 ( .A1(tx_latch_r_0), .A2(n260), .B1(n249), .B2(
        asi_data[0]), .Z(n167) );
  AO22D0BWP12T30P140 U356 ( .A1(tx_latch_r[23]), .A2(n257), .B1(n259), .B2(
        asi_data[23]), .Z(n187) );
  AOI22D0BWP12T30P140 U357 ( .A1(n262), .A2(n310), .B1(n318), .B2(n261), .ZN(
        n97) );
  AN2D0BWP12T30P140 U358 ( .A1(tx_shft_r[15]), .A2(enable_r), .Z(coe_pcmi) );
  INVD0BWP12T30P140 U359 ( .I(loopback_r), .ZN(n250) );
  AOI22D0BWP12T30P140 U360 ( .A1(loopback_r), .A2(coe_pcmi), .B1(coe_pcmo), 
        .B2(n250), .ZN(n251) );
  AOI22D0BWP12T30P140 U361 ( .A1(n262), .A2(n251), .B1(n304), .B2(n261), .ZN(
        n110) );
  AOI22D0BWP12T30P140 U362 ( .A1(n262), .A2(n317), .B1(n310), .B2(n261), .ZN(
        n98) );
  AO22D0BWP12T30P140 U363 ( .A1(tx_latch_r[21]), .A2(n257), .B1(n259), .B2(
        asi_data[21]), .Z(n185) );
  AOI22D0BWP12T30P140 U364 ( .A1(n262), .A2(n309), .B1(n317), .B2(n261), .ZN(
        n99) );
  AOI22D0BWP12T30P140 U365 ( .A1(n262), .A2(n313), .B1(n306), .B2(n261), .ZN(
        n106) );
  AO222D0BWP12T30P140 U366 ( .A1(n295), .A2(tx_shft_r[2]), .B1(n258), .B2(
        state[2]), .C1(n297), .C2(tx_shft_r[1]), .Z(n164) );
  AOI22D0BWP12T30P140 U367 ( .A1(n262), .A2(n316), .B1(n309), .B2(n261), .ZN(
        n100) );
  AOI21D0BWP12T30P140 U368 ( .A1(n252), .A2(n269), .B(n256), .ZN(N27) );
  AOI22D0BWP12T30P140 U369 ( .A1(n262), .A2(n305), .B1(n313), .B2(n261), .ZN(
        n107) );
  AOI22D0BWP12T30P140 U370 ( .A1(n262), .A2(n304), .B1(n312), .B2(n261), .ZN(
        n109) );
  AOI22D0BWP12T30P140 U371 ( .A1(n262), .A2(n308), .B1(n316), .B2(n261), .ZN(
        n101) );
  OAI21D0BWP12T30P140 U372 ( .A1(main_cnt[0]), .A2(n254), .B(n253), .ZN(N26)
         );
  OA21D0BWP12T30P140 U373 ( .A1(main_cnt[3]), .A2(n256), .B(n255), .Z(N28) );
  AOI22D0BWP12T30P140 U374 ( .A1(n262), .A2(n315), .B1(n308), .B2(n261), .ZN(
        n102) );
  AO22D0BWP12T30P140 U375 ( .A1(tx_latch_r[25]), .A2(n257), .B1(n259), .B2(
        asi_data[25]), .Z(n189) );
  AO22D0BWP12T30P140 U376 ( .A1(tx_latch_r[19]), .A2(n257), .B1(n259), .B2(
        asi_data[19]), .Z(n183) );
  AO22D0BWP12T30P140 U377 ( .A1(state[0]), .A2(n258), .B1(tx_shft_r[0]), .B2(
        n295), .Z(n166) );
  AO22D0BWP12T30P140 U378 ( .A1(tx_latch_r[27]), .A2(n260), .B1(n259), .B2(
        asi_data[27]), .Z(n191) );
  AOI22D0BWP12T30P140 U379 ( .A1(n262), .A2(n307), .B1(n315), .B2(n261), .ZN(
        n103) );
  AOI22D0BWP12T30P140 U380 ( .A1(n262), .A2(n312), .B1(n305), .B2(n261), .ZN(
        n108) );
  AOI22D0BWP12T30P140 U381 ( .A1(n262), .A2(n306), .B1(n314), .B2(n261), .ZN(
        n105) );
  AOI22D0BWP12T30P140 U382 ( .A1(n262), .A2(n314), .B1(n307), .B2(n261), .ZN(
        n104) );
  CKBD0BWP12T30P140 U383 ( .I(csi_audio_clk), .Z(n325) );
  CKBD0BWP12T30P140 U384 ( .I(csi_audio_clk), .Z(n323) );
  CKBD0BWP12T30P140 U385 ( .I(csi_audio_clk), .Z(n324) );
  CKBD0BWP12T30P140 U386 ( .I(csi_audio_clk), .Z(n326) );
  CKBD0BWP12T30P140 U387 ( .I(n94), .Z(n321) );
  INVD0BWP12T30P140 U388 ( .I(csi_reset), .ZN(n111) );
  CKBD0BWP12T30P140 U389 ( .I(n94), .Z(n320) );
  AN2D0BWP12T30P140 U390 ( .A1(pcmsyn_r), .A2(enable_r), .Z(coe_pcmsyn) );
  AN2D0BWP12T30P140 U391 ( .A1(state[0]), .A2(n263), .Z(avs_creg_readdata[0])
         );
  INVD0BWP12T30P140 U392 ( .I(n263), .ZN(n303) );
  NR2D0BWP12T30P140 U393 ( .A1(coe_reset_n), .A2(n303), .ZN(
        avs_creg_readdata[4]) );
  AN2D0BWP12T30P140 U394 ( .A1(state_6), .A2(n263), .Z(avs_creg_readdata[6])
         );
  CKBD0BWP12T30P140 U395 ( .I(csi_audio_clk), .Z(n327) );
  AN2D0BWP12T30P140 U396 ( .A1(enable_r), .A2(n327), .Z(coe_mclk) );
  ND4D0BWP12T30P140 U397 ( .A1(main_cnt[4]), .A2(main_cnt[2]), .A3(main_cnt[1]), .A4(N25), .ZN(n264) );
  OAI31D0BWP12T30P140 U398 ( .A1(n302), .A2(n265), .A3(n264), .B(aso_valid), 
        .ZN(n266) );
  ND2D0BWP12T30P140 U399 ( .A1(n267), .A2(n266), .ZN(n196) );
  NR2D0BWP12T30P140 U400 ( .A1(n302), .A2(n268), .ZN(n296) );
  AOI22D0BWP12T30P140 U401 ( .A1(tx_latch_r[28]), .A2(n296), .B1(tx_shft_r[15]), .B2(n295), .ZN(n272) );
  NR3D0BWP12T30P140 U402 ( .A1(reset_req_r), .A2(n270), .A3(n269), .ZN(n298)
         );
  AOI22D0BWP12T30P140 U403 ( .A1(n298), .A2(tx_latch_r_12), .B1(n297), .B2(
        tx_shft_r[14]), .ZN(n271) );
  ND2D0BWP12T30P140 U404 ( .A1(n272), .A2(n271), .ZN(n151) );
  AOI22D0BWP12T30P140 U405 ( .A1(tx_latch_r[16]), .A2(n296), .B1(tx_shft_r[3]), 
        .B2(n295), .ZN(n274) );
  AOI22D0BWP12T30P140 U406 ( .A1(n298), .A2(tx_latch_r_0), .B1(n297), .B2(
        tx_shft_r[2]), .ZN(n273) );
  ND2D0BWP12T30P140 U407 ( .A1(n274), .A2(n273), .ZN(n163) );
  AOI22D0BWP12T30P140 U408 ( .A1(tx_latch_r[17]), .A2(n296), .B1(tx_shft_r[4]), 
        .B2(n295), .ZN(n276) );
  AOI22D0BWP12T30P140 U409 ( .A1(n298), .A2(tx_latch_r_1), .B1(n297), .B2(
        tx_shft_r[3]), .ZN(n275) );
  ND2D0BWP12T30P140 U410 ( .A1(n276), .A2(n275), .ZN(n162) );
  AOI22D0BWP12T30P140 U411 ( .A1(tx_latch_r[18]), .A2(n296), .B1(tx_shft_r[5]), 
        .B2(n295), .ZN(n278) );
  AOI22D0BWP12T30P140 U412 ( .A1(n298), .A2(tx_latch_r_2), .B1(n297), .B2(
        tx_shft_r[4]), .ZN(n277) );
  ND2D0BWP12T30P140 U413 ( .A1(n278), .A2(n277), .ZN(n161) );
  AOI22D0BWP12T30P140 U414 ( .A1(tx_latch_r[19]), .A2(n296), .B1(tx_shft_r[6]), 
        .B2(n295), .ZN(n280) );
  AOI22D0BWP12T30P140 U415 ( .A1(n298), .A2(tx_latch_r_3), .B1(n297), .B2(
        tx_shft_r[5]), .ZN(n279) );
  ND2D0BWP12T30P140 U416 ( .A1(n280), .A2(n279), .ZN(n160) );
  AOI22D0BWP12T30P140 U417 ( .A1(tx_latch_r[20]), .A2(n296), .B1(tx_shft_r[7]), 
        .B2(n295), .ZN(n282) );
  AOI22D0BWP12T30P140 U418 ( .A1(n298), .A2(tx_latch_r_4), .B1(n297), .B2(
        tx_shft_r[6]), .ZN(n281) );
  ND2D0BWP12T30P140 U419 ( .A1(n282), .A2(n281), .ZN(n159) );
  AOI22D0BWP12T30P140 U420 ( .A1(tx_latch_r[21]), .A2(n296), .B1(tx_shft_r[8]), 
        .B2(n295), .ZN(n284) );
  AOI22D0BWP12T30P140 U421 ( .A1(n298), .A2(tx_latch_r_5), .B1(n297), .B2(
        tx_shft_r[7]), .ZN(n283) );
  ND2D0BWP12T30P140 U422 ( .A1(n284), .A2(n283), .ZN(n158) );
  AOI22D0BWP12T30P140 U423 ( .A1(tx_latch_r[22]), .A2(n296), .B1(tx_shft_r[9]), 
        .B2(n295), .ZN(n286) );
  AOI22D0BWP12T30P140 U424 ( .A1(n298), .A2(tx_latch_r_6), .B1(n297), .B2(
        tx_shft_r[8]), .ZN(n285) );
  ND2D0BWP12T30P140 U425 ( .A1(n286), .A2(n285), .ZN(n157) );
  AOI22D0BWP12T30P140 U426 ( .A1(tx_latch_r[23]), .A2(n296), .B1(tx_shft_r[10]), .B2(n295), .ZN(n288) );
  AOI22D0BWP12T30P140 U427 ( .A1(n298), .A2(tx_latch_r_7), .B1(n297), .B2(
        tx_shft_r[9]), .ZN(n287) );
  ND2D0BWP12T30P140 U428 ( .A1(n288), .A2(n287), .ZN(n156) );
  AOI22D0BWP12T30P140 U429 ( .A1(tx_latch_r[24]), .A2(n296), .B1(tx_shft_r[11]), .B2(n295), .ZN(n290) );
  AOI22D0BWP12T30P140 U430 ( .A1(n298), .A2(tx_latch_r_8), .B1(n297), .B2(
        tx_shft_r[10]), .ZN(n289) );
  ND2D0BWP12T30P140 U431 ( .A1(n290), .A2(n289), .ZN(n155) );
  AOI22D0BWP12T30P140 U432 ( .A1(tx_latch_r[25]), .A2(n296), .B1(tx_shft_r[12]), .B2(n295), .ZN(n292) );
  AOI22D0BWP12T30P140 U433 ( .A1(n298), .A2(tx_latch_r_9), .B1(n297), .B2(
        tx_shft_r[11]), .ZN(n291) );
  ND2D0BWP12T30P140 U434 ( .A1(n292), .A2(n291), .ZN(n154) );
  AOI22D0BWP12T30P140 U435 ( .A1(tx_latch_r[26]), .A2(n296), .B1(tx_shft_r[13]), .B2(n295), .ZN(n294) );
  AOI22D0BWP12T30P140 U436 ( .A1(n298), .A2(tx_latch_r_10), .B1(n297), .B2(
        tx_shft_r[12]), .ZN(n293) );
  ND2D0BWP12T30P140 U437 ( .A1(n294), .A2(n293), .ZN(n153) );
  AOI22D0BWP12T30P140 U438 ( .A1(tx_latch_r[27]), .A2(n296), .B1(tx_shft_r[14]), .B2(n295), .ZN(n300) );
  AOI22D0BWP12T30P140 U439 ( .A1(n298), .A2(tx_latch_r_11), .B1(n297), .B2(
        tx_shft_r[13]), .ZN(n299) );
  ND2D0BWP12T30P140 U440 ( .A1(n300), .A2(n299), .ZN(n152) );
  MUX2ND0BWP12T30P140 U441 ( .I0(main_cnt[8]), .I1(n302), .S(n301), .ZN(N33)
         );
  INR2D1BWP12T30P140 U442 ( .A1(state[1]), .B1(n303), .ZN(avs_creg_readdata[1]) );
  INR2D1BWP12T30P140 U443 ( .A1(state[2]), .B1(n303), .ZN(avs_creg_readdata[2]) );
  INR2D1BWP12T30P140 U444 ( .A1(coe_mute), .B1(n303), .ZN(avs_creg_readdata[5]) );
endmodule

