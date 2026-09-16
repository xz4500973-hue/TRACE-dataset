/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:34:29 2026
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
         tx_latch_r_2, tx_latch_r_1, tx_latch_r_0, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322;
  wire   [15:0] tx_shft_r;
  wire   [2:0] state;
  wire   [8:0] main_cnt;
  wire   [31:0] rx_latch_r;
  wire   [28:16] tx_latch_r;

  DFSNQD1BWP12T30P140 volume_r_reg_0_ ( .D(n107), .CP(csi_avalon_clk), .SDN(
        n106), .Q(state[0]) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_0_ ( .D(n105), .CPN(n321), .CDN(n315), 
        .QN(n297) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_1_ ( .D(n104), .CPN(n321), .CDN(n315), 
        .QN(n305) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_2_ ( .D(n103), .CPN(n321), .CDN(n315), 
        .QN(n298) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_3_ ( .D(n102), .CPN(n321), .CDN(n315), 
        .QN(n306) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_4_ ( .D(n101), .CPN(n321), .CDN(n315), 
        .QN(n299) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_5_ ( .D(n100), .CPN(n321), .CDN(n316), 
        .QN(n307) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_6_ ( .D(n99), .CPN(n321), .CDN(n316), .QN(
        n300) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_7_ ( .D(n98), .CPN(n321), .CDN(n316), .QN(
        n308) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_8_ ( .D(n97), .CPN(n321), .CDN(n316), .QN(
        n301) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_9_ ( .D(n96), .CPN(n321), .CDN(n316), .QN(
        n309) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_10_ ( .D(n95), .CPN(n321), .CDN(n316), 
        .QN(n302) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_11_ ( .D(n94), .CPN(n321), .CDN(n316), 
        .QN(n310) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_12_ ( .D(n93), .CPN(n321), .CDN(n316), 
        .QN(n303) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_13_ ( .D(n92), .CPN(n321), .CDN(n316), 
        .QN(n311) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_14_ ( .D(n91), .CPN(n321), .CDN(n316), 
        .QN(n304) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_15_ ( .D(n90), .CPN(n321), .CDN(n315), 
        .QN(n312) );
  DFQD2BWP12T30P140 aso_data_reg_31_ ( .D(rx_latch_r[31]), .CP(csi_avalon_clk), 
        .Q(aso_data[31]) );
  DFQD2BWP12T30P140 aso_data_reg_30_ ( .D(rx_latch_r[30]), .CP(csi_avalon_clk), 
        .Q(aso_data[30]) );
  DFQD2BWP12T30P140 aso_data_reg_29_ ( .D(rx_latch_r[29]), .CP(csi_avalon_clk), 
        .Q(aso_data[29]) );
  DFQD2BWP12T30P140 aso_data_reg_28_ ( .D(rx_latch_r[28]), .CP(csi_avalon_clk), 
        .Q(aso_data[28]) );
  DFQD2BWP12T30P140 aso_data_reg_27_ ( .D(rx_latch_r[27]), .CP(csi_avalon_clk), 
        .Q(aso_data[27]) );
  DFQD2BWP12T30P140 aso_data_reg_26_ ( .D(rx_latch_r[26]), .CP(csi_avalon_clk), 
        .Q(aso_data[26]) );
  DFQD2BWP12T30P140 aso_data_reg_25_ ( .D(rx_latch_r[25]), .CP(csi_avalon_clk), 
        .Q(aso_data[25]) );
  DFQD2BWP12T30P140 aso_data_reg_24_ ( .D(rx_latch_r[24]), .CP(csi_avalon_clk), 
        .Q(aso_data[24]) );
  DFQD2BWP12T30P140 aso_data_reg_23_ ( .D(rx_latch_r[23]), .CP(csi_avalon_clk), 
        .Q(aso_data[23]) );
  DFQD2BWP12T30P140 aso_data_reg_22_ ( .D(rx_latch_r[22]), .CP(csi_avalon_clk), 
        .Q(aso_data[22]) );
  DFQD2BWP12T30P140 aso_data_reg_21_ ( .D(rx_latch_r[21]), .CP(csi_avalon_clk), 
        .Q(aso_data[21]) );
  DFQD2BWP12T30P140 aso_data_reg_20_ ( .D(rx_latch_r[20]), .CP(csi_avalon_clk), 
        .Q(aso_data[20]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_3_ ( .D(n187), .CP(csi_audio_clk), .Q(
        tx_latch_r_3) );
  DFQD2BWP12T30P140 tx_latch_r_reg_5_ ( .D(n185), .CP(csi_audio_clk), .Q(
        tx_latch_r_5) );
  DFQD2BWP12T30P140 tx_latch_r_reg_7_ ( .D(n183), .CP(csi_audio_clk), .Q(
        tx_latch_r_7) );
  DFQD2BWP12T30P140 tx_latch_r_reg_10_ ( .D(n180), .CP(csi_audio_clk), .Q(
        tx_latch_r_10) );
  DFQD2BWP12T30P140 tx_latch_r_reg_11_ ( .D(n179), .CP(csi_audio_clk), .Q(
        tx_latch_r_11) );
  DFQD2BWP12T30P140 tx_latch_r_reg_12_ ( .D(n178), .CP(csi_audio_clk), .Q(
        tx_latch_r_12) );
  DFQD2BWP12T30P140 tx_latch_r_reg_16_ ( .D(n177), .CP(csi_audio_clk), .Q(
        tx_latch_r[16]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_18_ ( .D(n175), .CP(csi_audio_clk), .Q(
        tx_latch_r[18]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_19_ ( .D(n174), .CP(csi_audio_clk), .Q(
        tx_latch_r[19]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_23_ ( .D(n170), .CP(csi_audio_clk), .Q(
        tx_latch_r[23]) );
  DFCNQD1BWP12T30P140 asi_ready_r_reg ( .D(n114), .CP(n319), .CDN(n89), .Q(
        asi_ready) );
  DFCNQD1BWP12T30P140 reset_req_r_reg ( .D(n108), .CP(csi_avalon_clk), .CDN(
        n106), .Q(reset_req_r) );
  DFCNQD1BWP12T30P140 underflow_r_reg ( .D(n164), .CP(n318), .CDN(n314), .Q(
        state_6) );
  DFCNQD1BWP12T30P140 aso_valid_r_reg ( .D(n191), .CP(n318), .CDN(n315), .Q(
        aso_valid) );
  DFQD2BWP12T30P140 aso_data_reg_19_ ( .D(rx_latch_r[19]), .CP(n322), .Q(
        aso_data[19]) );
  DFQD2BWP12T30P140 aso_data_reg_18_ ( .D(rx_latch_r[18]), .CP(n322), .Q(
        aso_data[18]) );
  DFQD2BWP12T30P140 aso_data_reg_17_ ( .D(rx_latch_r[17]), .CP(n322), .Q(
        aso_data[17]) );
  DFQD2BWP12T30P140 aso_data_reg_16_ ( .D(rx_latch_r[16]), .CP(n322), .Q(
        aso_data[16]) );
  DFQD2BWP12T30P140 aso_data_reg_15_ ( .D(rx_latch_r[15]), .CP(n322), .Q(
        aso_data[15]) );
  DFQD2BWP12T30P140 aso_data_reg_14_ ( .D(rx_latch_r[14]), .CP(n322), .Q(
        aso_data[14]) );
  DFQD2BWP12T30P140 aso_data_reg_13_ ( .D(rx_latch_r[13]), .CP(n322), .Q(
        aso_data[13]) );
  DFQD2BWP12T30P140 aso_data_reg_12_ ( .D(rx_latch_r[12]), .CP(n322), .Q(
        aso_data[12]) );
  DFQD2BWP12T30P140 aso_data_reg_11_ ( .D(rx_latch_r[11]), .CP(n322), .Q(
        aso_data[11]) );
  DFQD2BWP12T30P140 aso_data_reg_10_ ( .D(rx_latch_r[10]), .CP(n322), .Q(
        aso_data[10]) );
  DFQD2BWP12T30P140 aso_data_reg_9_ ( .D(rx_latch_r[9]), .CP(n322), .Q(
        aso_data[9]) );
  DFQD2BWP12T30P140 aso_data_reg_6_ ( .D(rx_latch_r[6]), .CP(n322), .Q(
        aso_data[6]) );
  DFCNQD1BWP12T30P140 pcmsyn_r_reg ( .D(n163), .CP(n317), .CDN(n314), .Q(
        pcmsyn_r) );
  DFQD2BWP12T30P140 aso_data_reg_8_ ( .D(rx_latch_r[8]), .CP(n322), .Q(
        aso_data[8]) );
  DFQD2BWP12T30P140 aso_data_reg_5_ ( .D(rx_latch_r[5]), .CP(n322), .Q(
        aso_data[5]) );
  DFQD2BWP12T30P140 aso_data_reg_4_ ( .D(rx_latch_r[4]), .CP(csi_avalon_clk), 
        .Q(aso_data[4]) );
  DFQD2BWP12T30P140 aso_data_reg_3_ ( .D(rx_latch_r[3]), .CP(n322), .Q(
        aso_data[3]) );
  DFQD2BWP12T30P140 aso_data_reg_2_ ( .D(rx_latch_r[2]), .CP(n322), .Q(
        aso_data[2]) );
  DFQD2BWP12T30P140 aso_data_reg_1_ ( .D(rx_latch_r[1]), .CP(n322), .Q(
        aso_data[1]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_15_ ( .D(n147), .CP(n319), .CDN(n313), .Q(
        tx_shft_r[15]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_1_ ( .D(n161), .CP(n317), .CDN(n314), .Q(
        tx_shft_r[1]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_2_ ( .D(n160), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[2]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_3_ ( .D(n159), .CP(n317), .CDN(n314), .Q(
        tx_shft_r[3]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_4_ ( .D(n158), .CP(n318), .CDN(n313), .Q(
        tx_shft_r[4]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_5_ ( .D(n157), .CP(n317), .CDN(n314), .Q(
        tx_shft_r[5]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_6_ ( .D(n156), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[6]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_7_ ( .D(n155), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[7]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_8_ ( .D(n154), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[8]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_9_ ( .D(n153), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[9]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_10_ ( .D(n152), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[10]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_11_ ( .D(n151), .CP(n318), .CDN(n313), .Q(
        tx_shft_r[11]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_12_ ( .D(n150), .CP(n319), .CDN(n313), .Q(
        tx_shft_r[12]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_13_ ( .D(n149), .CP(n319), .CDN(n313), .Q(
        tx_shft_r[13]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_14_ ( .D(n148), .CP(n319), .CDN(n313), .Q(
        tx_shft_r[14]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_0_ ( .D(n162), .CP(n318), .CDN(n314), .Q(
        tx_shft_r[0]) );
  DFCNQD1BWP12T30P140 mute_r_reg ( .D(n113), .CP(csi_avalon_clk), .CDN(n106), 
        .Q(coe_mute) );
  DFCNQD1BWP12T30P140 main_cnt_reg_6_ ( .D(N30), .CP(n317), .CDN(n315), .Q(
        main_cnt[6]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_3_ ( .D(N27), .CP(n317), .CDN(n315), .Q(
        main_cnt[3]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_0_ ( .D(N24), .CP(n318), .CDN(n314), .Q(
        main_cnt[0]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_7_ ( .D(N31), .CP(n317), .CDN(n315), .Q(
        main_cnt[7]) );
  DFCNQD1BWP12T30P140 loopback_r_reg ( .D(n112), .CP(n322), .CDN(n106), .Q(
        loopback_r) );
  DFCNQD1BWP12T30P140 main_cnt_reg_5_ ( .D(N29), .CP(n317), .CDN(n315), .Q(
        main_cnt[5]) );
  DFCNQD1BWP12T30P140 volume_r_reg_2_ ( .D(n111), .CP(csi_avalon_clk), .CDN(
        n106), .Q(state[2]) );
  DFCNQD1BWP12T30P140 volume_r_reg_1_ ( .D(n110), .CP(n322), .CDN(n106), .Q(
        state[1]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_4_ ( .D(n186), .CP(n320), .Q(tx_latch_r_4)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_8_ ( .D(n182), .CP(n321), .Q(tx_latch_r_8)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_9_ ( .D(n181), .CP(n318), .Q(tx_latch_r_9)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_17_ ( .D(n176), .CP(n317), .Q(
        tx_latch_r[17]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_20_ ( .D(n173), .CP(n319), .Q(
        tx_latch_r[20]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_21_ ( .D(n172), .CP(n320), .Q(
        tx_latch_r[21]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_22_ ( .D(n171), .CP(n321), .Q(
        tx_latch_r[22]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_24_ ( .D(n169), .CP(n318), .Q(
        tx_latch_r[24]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_26_ ( .D(n167), .CP(n317), .Q(
        tx_latch_r[26]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_27_ ( .D(n166), .CP(n319), .Q(
        tx_latch_r[27]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_2_ ( .D(N26), .CP(n318), .CDN(n315), .Q(
        main_cnt[2]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_8_ ( .D(N32), .CP(n320), .CDN(n315), .Q(
        main_cnt[8]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_0_ ( .D(n190), .CP(n317), .Q(tx_latch_r_0)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_2_ ( .D(n188), .CP(n317), .Q(tx_latch_r_2)
         );
  DFCNQD1BWP12T30P140 enable_r_reg ( .D(n109), .CP(csi_avalon_clk), .CDN(n106), 
        .Q(enable_r) );
  DFCNQD1BWP12T30P140 main_cnt_reg_4_ ( .D(N28), .CP(n317), .CDN(n315), .Q(
        main_cnt[4]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_21_ ( .D(n125), .CP(n317), .CDN(n89), .Q(
        rx_latch_r[21]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_4_ ( .D(n124), .CP(n317), .CDN(n89), .Q(
        rx_latch_r[4]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_20_ ( .D(n123), .CP(n318), .CDN(n89), .Q(
        rx_latch_r[20]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_19_ ( .D(n121), .CP(n319), .CDN(n316), 
        .Q(rx_latch_r[19]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_2_ ( .D(n120), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[2]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_18_ ( .D(n119), .CP(n319), .CDN(n316), 
        .Q(rx_latch_r[18]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_1_ ( .D(n118), .CP(n317), .CDN(n89), .Q(
        rx_latch_r[1]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_17_ ( .D(n117), .CP(n318), .CDN(n316), 
        .Q(rx_latch_r[17]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_0_ ( .D(n116), .CP(n319), .CDN(n89), .Q(
        rx_latch_r[0]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_16_ ( .D(n115), .CP(n320), .CDN(n316), 
        .Q(rx_latch_r[16]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_15_ ( .D(n146), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[15]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_31_ ( .D(n145), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[31]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_14_ ( .D(n144), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[14]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_30_ ( .D(n143), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[30]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_13_ ( .D(n142), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[13]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_29_ ( .D(n141), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[29]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_12_ ( .D(n140), .CP(n319), .CDN(n313), 
        .Q(rx_latch_r[12]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_28_ ( .D(n139), .CP(n319), .CDN(n316), 
        .Q(rx_latch_r[28]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_11_ ( .D(n138), .CP(n319), .CDN(n89), .Q(
        rx_latch_r[11]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_27_ ( .D(n137), .CP(n320), .CDN(n316), 
        .Q(rx_latch_r[27]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_10_ ( .D(n136), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[10]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_26_ ( .D(n135), .CP(n320), .CDN(n316), 
        .Q(rx_latch_r[26]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_9_ ( .D(n134), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[9]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_25_ ( .D(n133), .CP(n320), .CDN(n315), 
        .Q(rx_latch_r[25]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_8_ ( .D(n132), .CP(n320), .CDN(n316), .Q(
        rx_latch_r[8]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_24_ ( .D(n131), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[24]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_7_ ( .D(n130), .CP(n320), .CDN(n314), .Q(
        rx_latch_r[7]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_23_ ( .D(n129), .CP(n320), .CDN(n313), 
        .Q(rx_latch_r[23]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_6_ ( .D(n128), .CP(n320), .CDN(n315), .Q(
        rx_latch_r[6]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_22_ ( .D(n127), .CP(n320), .CDN(n316), 
        .Q(rx_latch_r[22]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_5_ ( .D(n126), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[5]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_3_ ( .D(n122), .CP(n320), .CDN(n89), .Q(
        rx_latch_r[3]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_1_ ( .D(N25), .CP(n317), .CDN(n315), .Q(
        main_cnt[1]) );
  DFQD1BWP12T30P140 tx_latch_r_reg_1_ ( .D(n189), .CP(csi_audio_clk), .Q(
        tx_latch_r_1) );
  DFQD1BWP12T30P140 tx_latch_r_reg_25_ ( .D(n168), .CP(csi_audio_clk), .Q(
        tx_latch_r[25]) );
  DFQD1BWP12T30P140 aso_data_reg_7_ ( .D(rx_latch_r[7]), .CP(csi_avalon_clk), 
        .Q(aso_data[7]) );
  DFQD1BWP12T30P140 aso_data_reg_0_ ( .D(rx_latch_r[0]), .CP(n322), .Q(
        aso_data[0]) );
  DFQD1BWP12T30P140 reset_r_reg ( .D(n192), .CP(n317), .Q(coe_reset_n) );
  DFQD1BWP12T30P140 tx_latch_r_reg_28_ ( .D(n165), .CP(n320), .Q(
        tx_latch_r[28]) );
  DFQD1BWP12T30P140 tx_latch_r_reg_6_ ( .D(n184), .CP(n317), .Q(tx_latch_r_6)
         );
  TIEHBWP12T30P140 U205 ( .Z(n221) );
  INVD0BWP12T30P140 U206 ( .I(n221), .ZN(coe_linsel) );
  INVD0BWP12T30P140 U207 ( .I(n221), .ZN(avs_creg_readdata[3]) );
  INVD0BWP12T30P140 U208 ( .I(n221), .ZN(avs_creg_readdata[7]) );
  INVD0BWP12T30P140 U209 ( .I(n221), .ZN(avs_creg_readdata[8]) );
  INVD0BWP12T30P140 U210 ( .I(n221), .ZN(avs_creg_readdata[9]) );
  INVD0BWP12T30P140 U211 ( .I(n221), .ZN(avs_creg_readdata[10]) );
  INVD0BWP12T30P140 U212 ( .I(n221), .ZN(avs_creg_readdata[11]) );
  INVD0BWP12T30P140 U213 ( .I(n221), .ZN(avs_creg_readdata[12]) );
  INVD0BWP12T30P140 U214 ( .I(n221), .ZN(avs_creg_readdata[13]) );
  INVD0BWP12T30P140 U215 ( .I(n221), .ZN(avs_creg_readdata[14]) );
  INVD0BWP12T30P140 U216 ( .I(n221), .ZN(avs_creg_readdata[15]) );
  INVD0BWP12T30P140 U217 ( .I(n221), .ZN(avs_creg_readdata[16]) );
  INVD0BWP12T30P140 U218 ( .I(n221), .ZN(avs_creg_readdata[17]) );
  INVD0BWP12T30P140 U219 ( .I(n221), .ZN(avs_creg_readdata[18]) );
  INVD0BWP12T30P140 U220 ( .I(n221), .ZN(avs_creg_readdata[19]) );
  INVD0BWP12T30P140 U221 ( .I(n221), .ZN(avs_creg_readdata[20]) );
  INVD0BWP12T30P140 U222 ( .I(n221), .ZN(avs_creg_readdata[21]) );
  INVD0BWP12T30P140 U223 ( .I(n221), .ZN(avs_creg_readdata[22]) );
  INVD0BWP12T30P140 U224 ( .I(n221), .ZN(avs_creg_readdata[23]) );
  INVD0BWP12T30P140 U225 ( .I(n221), .ZN(avs_creg_readdata[24]) );
  INVD0BWP12T30P140 U226 ( .I(n221), .ZN(avs_creg_readdata[25]) );
  INVD0BWP12T30P140 U227 ( .I(n221), .ZN(avs_creg_readdata[26]) );
  INVD0BWP12T30P140 U228 ( .I(n221), .ZN(avs_creg_readdata[27]) );
  INVD0BWP12T30P140 U229 ( .I(n221), .ZN(avs_creg_readdata[28]) );
  INVD0BWP12T30P140 U230 ( .I(n221), .ZN(avs_creg_readdata[29]) );
  INVD0BWP12T30P140 U231 ( .I(n221), .ZN(avs_creg_readdata[30]) );
  INVD0BWP12T30P140 U232 ( .I(n221), .ZN(avs_creg_readdata[31]) );
  NR2D0BWP12T30P140 U233 ( .A1(n294), .A2(n238), .ZN(n296) );
  NR2D0BWP12T30P140 U234 ( .A1(avs_creg_address[0]), .A2(avs_creg_address[1]), 
        .ZN(n251) );
  ND3D0BWP12T30P140 U235 ( .A1(n251), .A2(avs_creg_write), .A3(
        avs_creg_chipselect), .ZN(n240) );
  CKMUX2D0BWP12T30P140 U236 ( .I0(avs_creg_writedata[0]), .I1(state[0]), .S(
        n240), .Z(n107) );
  NR3D0BWP12T30P140 U237 ( .A1(main_cnt[7]), .A2(main_cnt[5]), .A3(main_cnt[6]), .ZN(n223) );
  INVD0BWP12T30P140 U238 ( .I(main_cnt[3]), .ZN(n222) );
  ND2D0BWP12T30P140 U239 ( .A1(n223), .A2(n222), .ZN(n293) );
  NR2D0BWP12T30P140 U240 ( .A1(main_cnt[4]), .A2(n293), .ZN(n236) );
  INVD0BWP12T30P140 U241 ( .I(main_cnt[2]), .ZN(n231) );
  ND2D0BWP12T30P140 U242 ( .A1(n236), .A2(n231), .ZN(n229) );
  ND2D0BWP12T30P140 U243 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .ZN(n289) );
  NR2D0BWP12T30P140 U244 ( .A1(n229), .A2(n289), .ZN(n253) );
  NR2D0BWP12T30P140 U245 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .ZN(n288) );
  OAI21D0BWP12T30P140 U246 ( .A1(n288), .A2(n231), .B(n222), .ZN(n225) );
  OAI21D0BWP12T30P140 U247 ( .A1(main_cnt[4]), .A2(n225), .B(n223), .ZN(n224)
         );
  AOI21D0BWP12T30P140 U248 ( .A1(main_cnt[4]), .A2(n225), .B(n224), .ZN(n266)
         );
  NR2D0BWP12T30P140 U249 ( .A1(n266), .A2(n253), .ZN(n281) );
  AO22D0BWP12T30P140 U250 ( .A1(n253), .A2(state[0]), .B1(n281), .B2(
        tx_shft_r[0]), .Z(n162) );
  INVD0BWP12T30P140 U251 ( .I(main_cnt[6]), .ZN(n226) );
  INVD0BWP12T30P140 U252 ( .I(main_cnt[4]), .ZN(n234) );
  NR2D0BWP12T30P140 U253 ( .A1(n231), .A2(n289), .ZN(n230) );
  ND2D0BWP12T30P140 U254 ( .A1(main_cnt[3]), .A2(n230), .ZN(n233) );
  NR2D0BWP12T30P140 U255 ( .A1(n234), .A2(n233), .ZN(n232) );
  ND2D0BWP12T30P140 U256 ( .A1(main_cnt[5]), .A2(n232), .ZN(n228) );
  NR2D0BWP12T30P140 U257 ( .A1(n226), .A2(n228), .ZN(n227) );
  AOI21D0BWP12T30P140 U258 ( .A1(n226), .A2(n228), .B(n227), .ZN(N30) );
  NR2D0BWP12T30P140 U259 ( .A1(reset_req_r), .A2(csi_reset), .ZN(n192) );
  OA21D0BWP12T30P140 U260 ( .A1(main_cnt[3]), .A2(n230), .B(n233), .Z(N27) );
  ND2D0BWP12T30P140 U261 ( .A1(main_cnt[7]), .A2(n227), .ZN(n290) );
  OA21D0BWP12T30P140 U262 ( .A1(main_cnt[7]), .A2(n227), .B(n290), .Z(N31) );
  CKMUX2D0BWP12T30P140 U263 ( .I0(avs_creg_writedata[5]), .I1(loopback_r), .S(
        n240), .Z(n112) );
  OA21D0BWP12T30P140 U264 ( .A1(main_cnt[5]), .A2(n232), .B(n228), .Z(N29) );
  CKMUX2D0BWP12T30P140 U265 ( .I0(avs_creg_writedata[2]), .I1(state[2]), .S(
        n240), .Z(n111) );
  CKMUX2D0BWP12T30P140 U266 ( .I0(avs_creg_writedata[1]), .I1(state[1]), .S(
        n240), .Z(n110) );
  INVD0BWP12T30P140 U267 ( .I(main_cnt[0]), .ZN(N24) );
  INVD0BWP12T30P140 U268 ( .I(reset_req_r), .ZN(n89) );
  CKBD0BWP12T30P140 U269 ( .I(n89), .Z(n316) );
  NR2D0BWP12T30P140 U270 ( .A1(main_cnt[8]), .A2(n229), .ZN(n287) );
  ND3D0BWP12T30P140 U271 ( .A1(N24), .A2(n287), .A3(main_cnt[1]), .ZN(n239) );
  IND2D1BWP12T30P140 U272 ( .A1(n239), .B1(n316), .ZN(n244) );
  INR2D1BWP12T30P140 U273 ( .A1(asi_valid), .B1(n244), .ZN(n246) );
  CKBD0BWP12T30P140 U274 ( .I(n246), .Z(n243) );
  AO22D0BWP12T30P140 U275 ( .A1(asi_data[4]), .A2(n243), .B1(tx_latch_r_4), 
        .B2(n244), .Z(n186) );
  AO22D0BWP12T30P140 U276 ( .A1(asi_data[8]), .A2(n243), .B1(tx_latch_r_8), 
        .B2(n244), .Z(n182) );
  AO22D0BWP12T30P140 U277 ( .A1(asi_data[9]), .A2(n246), .B1(tx_latch_r_9), 
        .B2(n244), .Z(n181) );
  AO22D0BWP12T30P140 U278 ( .A1(asi_data[17]), .A2(n246), .B1(tx_latch_r[17]), 
        .B2(n244), .Z(n176) );
  CKBD0BWP12T30P140 U279 ( .I(n244), .Z(n245) );
  AO22D0BWP12T30P140 U280 ( .A1(asi_data[20]), .A2(n243), .B1(tx_latch_r[20]), 
        .B2(n245), .Z(n173) );
  AO22D0BWP12T30P140 U281 ( .A1(asi_data[21]), .A2(n246), .B1(tx_latch_r[21]), 
        .B2(n245), .Z(n172) );
  AO22D0BWP12T30P140 U282 ( .A1(asi_data[22]), .A2(n243), .B1(tx_latch_r[22]), 
        .B2(n245), .Z(n171) );
  AO22D0BWP12T30P140 U283 ( .A1(asi_data[24]), .A2(n243), .B1(tx_latch_r[24]), 
        .B2(n245), .Z(n169) );
  AO22D0BWP12T30P140 U284 ( .A1(asi_data[26]), .A2(n246), .B1(tx_latch_r[26]), 
        .B2(n245), .Z(n167) );
  INVD0BWP12T30P140 U285 ( .I(n266), .ZN(n248) );
  INVD0BWP12T30P140 U286 ( .I(n248), .ZN(n282) );
  AO222D0BWP12T30P140 U287 ( .A1(n282), .A2(tx_shft_r[1]), .B1(n281), .B2(
        tx_shft_r[2]), .C1(n253), .C2(state[2]), .Z(n160) );
  AO22D0BWP12T30P140 U288 ( .A1(asi_data[27]), .A2(n243), .B1(tx_latch_r[27]), 
        .B2(n245), .Z(n166) );
  AO22D0BWP12T30P140 U289 ( .A1(asi_data[28]), .A2(n243), .B1(tx_latch_r[28]), 
        .B2(n245), .Z(n165) );
  AO222D0BWP12T30P140 U290 ( .A1(n282), .A2(tx_shft_r[0]), .B1(n281), .B2(
        tx_shft_r[1]), .C1(n253), .C2(state[1]), .Z(n161) );
  AOI21D0BWP12T30P140 U291 ( .A1(n231), .A2(n289), .B(n230), .ZN(N26) );
  AO22D0BWP12T30P140 U292 ( .A1(asi_data[0]), .A2(n243), .B1(tx_latch_r_0), 
        .B2(n244), .Z(n190) );
  AO22D0BWP12T30P140 U293 ( .A1(asi_data[2]), .A2(n243), .B1(tx_latch_r_2), 
        .B2(n244), .Z(n188) );
  AO22D0BWP12T30P140 U294 ( .A1(asi_data[6]), .A2(n243), .B1(tx_latch_r_6), 
        .B2(n244), .Z(n184) );
  CKMUX2D0BWP12T30P140 U295 ( .I0(avs_creg_writedata[4]), .I1(enable_r), .S(
        n240), .Z(n109) );
  AOI21D0BWP12T30P140 U296 ( .A1(n234), .A2(n233), .B(n232), .ZN(N28) );
  INVD0BWP12T30P140 U297 ( .I(main_cnt[8]), .ZN(n294) );
  NR4D0BWP12T30P140 U298 ( .A1(main_cnt[1]), .A2(N24), .A3(n234), .A4(n293), 
        .ZN(n235) );
  ND2D0BWP12T30P140 U299 ( .A1(main_cnt[2]), .A2(n235), .ZN(n238) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n296), .A2(n307), .B1(rx_latch_r[21]), .B2(
        n296), .ZN(n125) );
  ND3D0BWP12T30P140 U301 ( .A1(main_cnt[2]), .A2(n236), .A3(n288), .ZN(n237)
         );
  AO21D0BWP12T30P140 U302 ( .A1(pcmsyn_r), .A2(n237), .B(n253), .Z(n163) );
  NR2D0BWP12T30P140 U303 ( .A1(main_cnt[8]), .A2(n238), .ZN(n249) );
  CKBD0BWP12T30P140 U304 ( .I(n249), .Z(n250) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n250), .A2(n299), .B1(rx_latch_r[4]), .B2(
        n249), .ZN(n124) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n296), .A2(n299), .B1(rx_latch_r[20]), .B2(
        n296), .ZN(n123) );
  CKBD0BWP12T30P140 U307 ( .I(n296), .Z(n247) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n247), .A2(n306), .B1(rx_latch_r[19]), .B2(
        n296), .ZN(n121) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n250), .A2(n298), .B1(rx_latch_r[2]), .B2(
        n249), .ZN(n120) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n296), .A2(n298), .B1(rx_latch_r[18]), .B2(
        n296), .ZN(n119) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n249), .A2(n305), .B1(rx_latch_r[1]), .B2(
        n250), .ZN(n118) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n247), .A2(n305), .B1(rx_latch_r[17]), .B2(
        n247), .ZN(n117) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n249), .A2(n297), .B1(rx_latch_r[0]), .B2(
        n249), .ZN(n116) );
  INVD0BWP12T30P140 U314 ( .I(state_6), .ZN(n252) );
  OAI21D0BWP12T30P140 U315 ( .A1(asi_valid), .A2(n239), .B(n252), .ZN(n164) );
  CKMUX2D0BWP12T30P140 U316 ( .I0(avs_creg_writedata[6]), .I1(reset_req_r), 
        .S(n240), .Z(n108) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n247), .A2(n297), .B1(rx_latch_r[16]), .B2(
        n296), .ZN(n115) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n250), .A2(n312), .B1(rx_latch_r[15]), .B2(
        n250), .ZN(n146) );
  AO22D0BWP12T30P140 U319 ( .A1(asi_data[25]), .A2(n246), .B1(tx_latch_r[25]), 
        .B2(n245), .Z(n168) );
  AO22D0BWP12T30P140 U320 ( .A1(asi_data[23]), .A2(n246), .B1(tx_latch_r[23]), 
        .B2(n245), .Z(n170) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n296), .A2(n312), .B1(rx_latch_r[31]), .B2(
        n247), .ZN(n145) );
  AO22D0BWP12T30P140 U322 ( .A1(asi_data[19]), .A2(n246), .B1(tx_latch_r[19]), 
        .B2(n245), .Z(n174) );
  CKMUX2D0BWP12T30P140 U323 ( .I0(avs_creg_writedata[3]), .I1(coe_mute), .S(
        n240), .Z(n113) );
  AO22D0BWP12T30P140 U324 ( .A1(asi_data[18]), .A2(n243), .B1(tx_latch_r[18]), 
        .B2(n245), .Z(n175) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n250), .A2(n304), .B1(rx_latch_r[14]), .B2(
        n249), .ZN(n144) );
  AO22D0BWP12T30P140 U326 ( .A1(asi_data[16]), .A2(n243), .B1(tx_latch_r[16]), 
        .B2(n244), .Z(n177) );
  AO22D0BWP12T30P140 U327 ( .A1(asi_data[12]), .A2(n246), .B1(tx_latch_r_12), 
        .B2(n244), .Z(n178) );
  AN2D0BWP12T30P140 U328 ( .A1(tx_shft_r[15]), .A2(enable_r), .Z(coe_pcmi) );
  INVD0BWP12T30P140 U329 ( .I(loopback_r), .ZN(n241) );
  AOI22D0BWP12T30P140 U330 ( .A1(loopback_r), .A2(coe_pcmi), .B1(coe_pcmo), 
        .B2(n241), .ZN(n242) );
  AOI22D0BWP12T30P140 U331 ( .A1(n282), .A2(n242), .B1(n297), .B2(n248), .ZN(
        n105) );
  MAOI22D0BWP12T30P140 U332 ( .A1(n247), .A2(n304), .B1(rx_latch_r[30]), .B2(
        n296), .ZN(n143) );
  AO22D0BWP12T30P140 U333 ( .A1(asi_data[11]), .A2(n246), .B1(tx_latch_r_11), 
        .B2(n244), .Z(n179) );
  AO22D0BWP12T30P140 U334 ( .A1(asi_data[10]), .A2(n243), .B1(tx_latch_r_10), 
        .B2(n244), .Z(n180) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n250), .A2(n311), .B1(rx_latch_r[13]), .B2(
        n249), .ZN(n142) );
  AOI22D0BWP12T30P140 U336 ( .A1(n266), .A2(n307), .B1(n300), .B2(n248), .ZN(
        n99) );
  AO22D0BWP12T30P140 U337 ( .A1(asi_data[7]), .A2(n246), .B1(tx_latch_r_7), 
        .B2(n244), .Z(n183) );
  AO22D0BWP12T30P140 U338 ( .A1(asi_data[5]), .A2(n246), .B1(tx_latch_r_5), 
        .B2(n245), .Z(n185) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n249), .A2(n306), .B1(rx_latch_r[3]), .B2(
        n250), .ZN(n122) );
  AOI22D0BWP12T30P140 U340 ( .A1(n266), .A2(n297), .B1(n305), .B2(n248), .ZN(
        n104) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n247), .A2(n311), .B1(rx_latch_r[29]), .B2(
        n296), .ZN(n141) );
  AOI22D0BWP12T30P140 U342 ( .A1(n266), .A2(n306), .B1(n299), .B2(n248), .ZN(
        n101) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n250), .A2(n307), .B1(rx_latch_r[5]), .B2(
        n249), .ZN(n126) );
  AO22D0BWP12T30P140 U344 ( .A1(asi_data[3]), .A2(n246), .B1(tx_latch_r_3), 
        .B2(n245), .Z(n187) );
  AOI22D0BWP12T30P140 U345 ( .A1(n282), .A2(n305), .B1(n298), .B2(n248), .ZN(
        n103) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n247), .A2(n310), .B1(rx_latch_r[27]), .B2(
        n247), .ZN(n137) );
  AO22D0BWP12T30P140 U347 ( .A1(asi_data[1]), .A2(n246), .B1(tx_latch_r_1), 
        .B2(n245), .Z(n189) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n247), .A2(n300), .B1(rx_latch_r[22]), .B2(
        n247), .ZN(n127) );
  AOI22D0BWP12T30P140 U349 ( .A1(n266), .A2(n298), .B1(n306), .B2(n248), .ZN(
        n102) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n250), .A2(n303), .B1(rx_latch_r[12]), .B2(
        n249), .ZN(n140) );
  AOI22D0BWP12T30P140 U351 ( .A1(n266), .A2(n311), .B1(n304), .B2(n248), .ZN(
        n91) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n249), .A2(n300), .B1(rx_latch_r[6]), .B2(
        n250), .ZN(n128) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n247), .A2(n301), .B1(rx_latch_r[24]), .B2(
        n247), .ZN(n131) );
  AOI22D0BWP12T30P140 U354 ( .A1(n282), .A2(n302), .B1(n310), .B2(n248), .ZN(
        n94) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n296), .A2(n308), .B1(rx_latch_r[23]), .B2(
        n296), .ZN(n129) );
  AOI22D0BWP12T30P140 U356 ( .A1(n266), .A2(n304), .B1(n312), .B2(n248), .ZN(
        n90) );
  AOI22D0BWP12T30P140 U357 ( .A1(n266), .A2(n299), .B1(n307), .B2(n248), .ZN(
        n100) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n247), .A2(n303), .B1(rx_latch_r[28]), .B2(
        n296), .ZN(n139) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n250), .A2(n308), .B1(rx_latch_r[7]), .B2(
        n249), .ZN(n130) );
  AOI22D0BWP12T30P140 U360 ( .A1(n282), .A2(n300), .B1(n308), .B2(n248), .ZN(
        n98) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n247), .A2(n309), .B1(rx_latch_r[25]), .B2(
        n247), .ZN(n133) );
  AOI22D0BWP12T30P140 U362 ( .A1(n282), .A2(n301), .B1(n309), .B2(n248), .ZN(
        n96) );
  AOI22D0BWP12T30P140 U363 ( .A1(n266), .A2(n310), .B1(n303), .B2(n248), .ZN(
        n93) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n250), .A2(n310), .B1(rx_latch_r[11]), .B2(
        n249), .ZN(n138) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n247), .A2(n302), .B1(rx_latch_r[26]), .B2(
        n296), .ZN(n135) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n250), .A2(n309), .B1(rx_latch_r[9]), .B2(
        n250), .ZN(n134) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n250), .A2(n301), .B1(rx_latch_r[8]), .B2(
        n249), .ZN(n132) );
  AOI22D0BWP12T30P140 U368 ( .A1(n282), .A2(n303), .B1(n311), .B2(n248), .ZN(
        n92) );
  AOI22D0BWP12T30P140 U369 ( .A1(n266), .A2(n308), .B1(n301), .B2(n248), .ZN(
        n97) );
  AOI22D0BWP12T30P140 U370 ( .A1(n266), .A2(n309), .B1(n302), .B2(n248), .ZN(
        n95) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n250), .A2(n302), .B1(rx_latch_r[10]), .B2(
        n249), .ZN(n136) );
  CKBD0BWP12T30P140 U372 ( .I(csi_audio_clk), .Z(n321) );
  CKBD0BWP12T30P140 U373 ( .I(csi_avalon_clk), .Z(n322) );
  CKBD0BWP12T30P140 U374 ( .I(csi_audio_clk), .Z(n320) );
  CKBD0BWP12T30P140 U375 ( .I(csi_audio_clk), .Z(n319) );
  CKBD0BWP12T30P140 U376 ( .I(csi_audio_clk), .Z(n318) );
  CKBD0BWP12T30P140 U377 ( .I(csi_audio_clk), .Z(n317) );
  INVD0BWP12T30P140 U378 ( .I(csi_reset), .ZN(n106) );
  CKBD0BWP12T30P140 U379 ( .I(n89), .Z(n315) );
  CKBD0BWP12T30P140 U380 ( .I(n89), .Z(n314) );
  CKBD0BWP12T30P140 U381 ( .I(n89), .Z(n313) );
  AN2D0BWP12T30P140 U382 ( .A1(pcmsyn_r), .A2(enable_r), .Z(coe_pcmsyn) );
  INVD0BWP12T30P140 U383 ( .I(n251), .ZN(n291) );
  NR2D0BWP12T30P140 U384 ( .A1(coe_reset_n), .A2(n291), .ZN(
        avs_creg_readdata[4]) );
  NR2D0BWP12T30P140 U385 ( .A1(n252), .A2(n291), .ZN(avs_creg_readdata[6]) );
  AN2D0BWP12T30P140 U386 ( .A1(enable_r), .A2(n318), .Z(coe_mclk) );
  INVD0BWP12T30P140 U387 ( .I(n287), .ZN(n285) );
  NR2D0BWP12T30P140 U388 ( .A1(n285), .A2(n289), .ZN(n280) );
  INR2D1BWP12T30P140 U389 ( .A1(n253), .B1(n294), .ZN(n279) );
  AOI22D0BWP12T30P140 U390 ( .A1(tx_latch_r_11), .A2(n280), .B1(tx_latch_r[27]), .B2(n279), .ZN(n255) );
  AOI22D0BWP12T30P140 U391 ( .A1(n266), .A2(tx_shft_r[13]), .B1(n281), .B2(
        tx_shft_r[14]), .ZN(n254) );
  ND2D0BWP12T30P140 U392 ( .A1(n255), .A2(n254), .ZN(n148) );
  AOI22D0BWP12T30P140 U393 ( .A1(tx_latch_r_10), .A2(n280), .B1(tx_latch_r[26]), .B2(n279), .ZN(n257) );
  AOI22D0BWP12T30P140 U394 ( .A1(n282), .A2(tx_shft_r[12]), .B1(n281), .B2(
        tx_shft_r[13]), .ZN(n256) );
  ND2D0BWP12T30P140 U395 ( .A1(n257), .A2(n256), .ZN(n149) );
  AOI22D0BWP12T30P140 U396 ( .A1(tx_latch_r_9), .A2(n280), .B1(tx_latch_r[25]), 
        .B2(n279), .ZN(n259) );
  AOI22D0BWP12T30P140 U397 ( .A1(n266), .A2(tx_shft_r[11]), .B1(n281), .B2(
        tx_shft_r[12]), .ZN(n258) );
  ND2D0BWP12T30P140 U398 ( .A1(n259), .A2(n258), .ZN(n150) );
  AOI22D0BWP12T30P140 U399 ( .A1(tx_latch_r_8), .A2(n280), .B1(tx_latch_r[24]), 
        .B2(n279), .ZN(n261) );
  AOI22D0BWP12T30P140 U400 ( .A1(n282), .A2(tx_shft_r[10]), .B1(n281), .B2(
        tx_shft_r[11]), .ZN(n260) );
  ND2D0BWP12T30P140 U401 ( .A1(n261), .A2(n260), .ZN(n151) );
  AOI22D0BWP12T30P140 U402 ( .A1(tx_latch_r_7), .A2(n280), .B1(tx_latch_r[23]), 
        .B2(n279), .ZN(n263) );
  AOI22D0BWP12T30P140 U403 ( .A1(n266), .A2(tx_shft_r[9]), .B1(n281), .B2(
        tx_shft_r[10]), .ZN(n262) );
  ND2D0BWP12T30P140 U404 ( .A1(n263), .A2(n262), .ZN(n152) );
  AOI22D0BWP12T30P140 U405 ( .A1(tx_latch_r_6), .A2(n280), .B1(tx_latch_r[22]), 
        .B2(n279), .ZN(n265) );
  AOI22D0BWP12T30P140 U406 ( .A1(n282), .A2(tx_shft_r[8]), .B1(n281), .B2(
        tx_shft_r[9]), .ZN(n264) );
  ND2D0BWP12T30P140 U407 ( .A1(n265), .A2(n264), .ZN(n153) );
  AOI22D0BWP12T30P140 U408 ( .A1(tx_latch_r_5), .A2(n280), .B1(tx_latch_r[21]), 
        .B2(n279), .ZN(n268) );
  AOI22D0BWP12T30P140 U409 ( .A1(n266), .A2(tx_shft_r[7]), .B1(n281), .B2(
        tx_shft_r[8]), .ZN(n267) );
  ND2D0BWP12T30P140 U410 ( .A1(n268), .A2(n267), .ZN(n154) );
  AOI22D0BWP12T30P140 U411 ( .A1(tx_latch_r_4), .A2(n280), .B1(tx_latch_r[20]), 
        .B2(n279), .ZN(n270) );
  AOI22D0BWP12T30P140 U412 ( .A1(n282), .A2(tx_shft_r[6]), .B1(n281), .B2(
        tx_shft_r[7]), .ZN(n269) );
  ND2D0BWP12T30P140 U413 ( .A1(n270), .A2(n269), .ZN(n155) );
  AOI22D0BWP12T30P140 U414 ( .A1(tx_latch_r_3), .A2(n280), .B1(tx_latch_r[19]), 
        .B2(n279), .ZN(n272) );
  AOI22D0BWP12T30P140 U415 ( .A1(n282), .A2(tx_shft_r[5]), .B1(n281), .B2(
        tx_shft_r[6]), .ZN(n271) );
  ND2D0BWP12T30P140 U416 ( .A1(n272), .A2(n271), .ZN(n156) );
  AOI22D0BWP12T30P140 U417 ( .A1(tx_latch_r_2), .A2(n280), .B1(tx_latch_r[18]), 
        .B2(n279), .ZN(n274) );
  AOI22D0BWP12T30P140 U418 ( .A1(n282), .A2(tx_shft_r[4]), .B1(n281), .B2(
        tx_shft_r[5]), .ZN(n273) );
  ND2D0BWP12T30P140 U419 ( .A1(n274), .A2(n273), .ZN(n157) );
  AOI22D0BWP12T30P140 U420 ( .A1(tx_latch_r_1), .A2(n280), .B1(tx_latch_r[17]), 
        .B2(n279), .ZN(n276) );
  AOI22D0BWP12T30P140 U421 ( .A1(n282), .A2(tx_shft_r[3]), .B1(n281), .B2(
        tx_shft_r[4]), .ZN(n275) );
  ND2D0BWP12T30P140 U422 ( .A1(n276), .A2(n275), .ZN(n158) );
  AOI22D0BWP12T30P140 U423 ( .A1(tx_latch_r_0), .A2(n280), .B1(tx_latch_r[16]), 
        .B2(n279), .ZN(n278) );
  AOI22D0BWP12T30P140 U424 ( .A1(n282), .A2(tx_shft_r[2]), .B1(n281), .B2(
        tx_shft_r[3]), .ZN(n277) );
  ND2D0BWP12T30P140 U425 ( .A1(n278), .A2(n277), .ZN(n159) );
  AOI22D0BWP12T30P140 U426 ( .A1(tx_latch_r_12), .A2(n280), .B1(tx_latch_r[28]), .B2(n279), .ZN(n284) );
  AOI22D0BWP12T30P140 U427 ( .A1(n282), .A2(tx_shft_r[14]), .B1(n281), .B2(
        tx_shft_r[15]), .ZN(n283) );
  ND2D0BWP12T30P140 U428 ( .A1(n284), .A2(n283), .ZN(n147) );
  OAI21D0BWP12T30P140 U429 ( .A1(n285), .A2(main_cnt[1]), .B(asi_ready), .ZN(
        n286) );
  IOA21D0BWP12T30P140 U430 ( .A1(n287), .A2(n288), .B(n286), .ZN(n114) );
  INR2D1BWP12T30P140 U431 ( .A1(n289), .B1(n288), .ZN(N25) );
  MUX2ND0BWP12T30P140 U432 ( .I0(main_cnt[8]), .I1(n294), .S(n290), .ZN(N32)
         );
  INR2D1BWP12T30P140 U433 ( .A1(state[0]), .B1(n291), .ZN(avs_creg_readdata[0]) );
  INR2D1BWP12T30P140 U434 ( .A1(state[1]), .B1(n291), .ZN(avs_creg_readdata[1]) );
  INR2D1BWP12T30P140 U435 ( .A1(state[2]), .B1(n291), .ZN(avs_creg_readdata[2]) );
  INR2D1BWP12T30P140 U436 ( .A1(coe_mute), .B1(n291), .ZN(avs_creg_readdata[5]) );
  ND4D0BWP12T30P140 U437 ( .A1(main_cnt[1]), .A2(main_cnt[2]), .A3(main_cnt[4]), .A4(N24), .ZN(n292) );
  OAI31D0BWP12T30P140 U438 ( .A1(n294), .A2(n293), .A3(n292), .B(aso_valid), 
        .ZN(n295) );
  IND2D1BWP12T30P140 U439 ( .A1(n296), .B1(n295), .ZN(n191) );
endmodule

