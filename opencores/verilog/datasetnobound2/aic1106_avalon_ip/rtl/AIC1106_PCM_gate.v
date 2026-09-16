/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:07:19 2026
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
  wire   enable_r, pcmsyn_r, loopback_r, state_6, reset_req_r, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, tx_latch_r_12, tx_latch_r_11,
         tx_latch_r_10, tx_latch_r_9, tx_latch_r_8, tx_latch_r_7, tx_latch_r_6,
         tx_latch_r_5, tx_latch_r_4, tx_latch_r_3, tx_latch_r_2, tx_latch_r_1,
         tx_latch_r_0, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319;
  wire   [15:0] tx_shft_r;
  wire   [8:0] main_cnt;
  wire   [2:0] state;
  wire   [28:16] tx_latch_r;

  DFSNQD1BWP12T30P140 volume_r_reg_0_ ( .D(n104), .CP(csi_avalon_clk), .SDN(
        n103), .Q(state[0]) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_0_ ( .D(n102), .CPN(n319), .CDN(n313), 
        .QN(n295) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_1_ ( .D(n101), .CPN(n319), .CDN(n313), 
        .QN(n303) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_2_ ( .D(n100), .CPN(n319), .CDN(n313), 
        .QN(n296) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_3_ ( .D(n99), .CPN(n319), .CDN(n313), .QN(
        n304) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_4_ ( .D(n98), .CPN(n319), .CDN(n313), .QN(
        n297) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_5_ ( .D(n97), .CPN(n319), .CDN(n314), .QN(
        n305) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_6_ ( .D(n96), .CPN(n319), .CDN(n314), .QN(
        n298) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_7_ ( .D(n95), .CPN(n319), .CDN(n314), .QN(
        n306) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_8_ ( .D(n94), .CPN(n319), .CDN(n314), .QN(
        n299) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_9_ ( .D(n93), .CPN(n319), .CDN(n314), .QN(
        n307) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_10_ ( .D(n92), .CPN(n319), .CDN(n314), 
        .QN(n300) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_11_ ( .D(n91), .CPN(n319), .CDN(n314), 
        .QN(n308) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_12_ ( .D(n90), .CPN(n319), .CDN(n314), 
        .QN(n301) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_13_ ( .D(n89), .CPN(n319), .CDN(n314), 
        .QN(n309) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_14_ ( .D(n88), .CPN(n319), .CDN(n314), 
        .QN(n302) );
  DFNCND1BWP12T30P140 rx_shft_r_reg_15_ ( .D(n87), .CPN(n319), .CDN(n313), 
        .QN(n310) );
  DFCNQD1BWP12T30P140 mute_r_reg ( .D(n110), .CP(csi_avalon_clk), .CDN(n103), 
        .Q(coe_mute) );
  DFQD2BWP12T30P140 tx_latch_r_reg_1_ ( .D(n185), .CP(csi_audio_clk), .Q(
        tx_latch_r_1) );
  DFQD2BWP12T30P140 tx_latch_r_reg_3_ ( .D(n183), .CP(csi_audio_clk), .Q(
        tx_latch_r_3) );
  DFQD2BWP12T30P140 tx_latch_r_reg_5_ ( .D(n181), .CP(csi_audio_clk), .Q(
        tx_latch_r_5) );
  DFQD2BWP12T30P140 tx_latch_r_reg_7_ ( .D(n179), .CP(csi_audio_clk), .Q(
        tx_latch_r_7) );
  DFQD2BWP12T30P140 tx_latch_r_reg_10_ ( .D(n176), .CP(csi_audio_clk), .Q(
        tx_latch_r_10) );
  DFQD2BWP12T30P140 tx_latch_r_reg_11_ ( .D(n175), .CP(csi_audio_clk), .Q(
        tx_latch_r_11) );
  DFQD2BWP12T30P140 tx_latch_r_reg_12_ ( .D(n174), .CP(csi_audio_clk), .Q(
        tx_latch_r_12) );
  DFQD2BWP12T30P140 tx_latch_r_reg_16_ ( .D(n173), .CP(csi_audio_clk), .Q(
        tx_latch_r[16]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_18_ ( .D(n171), .CP(csi_audio_clk), .Q(
        tx_latch_r[18]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_19_ ( .D(n170), .CP(csi_audio_clk), .Q(
        tx_latch_r[19]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_23_ ( .D(n166), .CP(csi_audio_clk), .Q(
        tx_latch_r[23]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_5_ ( .D(n122), .CP(n317), .CDN(n86), .Q(
        aso_data[5]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_21_ ( .D(n121), .CP(n318), .CDN(n86), .Q(
        aso_data[21]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_4_ ( .D(n120), .CP(n315), .CDN(n86), .Q(
        aso_data[4]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_3_ ( .D(n118), .CP(n316), .CDN(n314), .Q(
        aso_data[3]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_19_ ( .D(n117), .CP(n316), .CDN(n86), .Q(
        aso_data[19]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_2_ ( .D(n116), .CP(n317), .CDN(n314), .Q(
        aso_data[2]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_18_ ( .D(n115), .CP(n318), .CDN(n86), .Q(
        aso_data[18]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_1_ ( .D(n114), .CP(n315), .CDN(n314), .Q(
        aso_data[1]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_17_ ( .D(n113), .CP(n316), .CDN(n86), .Q(
        aso_data[17]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_0_ ( .D(n112), .CP(n317), .CDN(n314), .Q(
        aso_data[0]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_16_ ( .D(n111), .CP(n317), .CDN(n86), .Q(
        aso_data[16]) );
  DFCNQD1BWP12T30P140 loopback_r_reg ( .D(n109), .CP(csi_avalon_clk), .CDN(
        n103), .Q(loopback_r) );
  DFCNQD1BWP12T30P140 reset_req_r_reg ( .D(n105), .CP(csi_avalon_clk), .CDN(
        n103), .Q(reset_req_r) );
  DFCNQD1BWP12T30P140 aso_valid_r_reg ( .D(n188), .CP(n316), .CDN(n312), .Q(
        aso_valid) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_15_ ( .D(n142), .CP(n317), .CDN(n311), 
        .Q(aso_data[15]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_31_ ( .D(n141), .CP(n317), .CDN(n311), 
        .Q(aso_data[31]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_14_ ( .D(n140), .CP(n317), .CDN(n311), 
        .Q(aso_data[14]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_30_ ( .D(n139), .CP(n317), .CDN(n311), 
        .Q(aso_data[30]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_13_ ( .D(n138), .CP(n317), .CDN(n311), 
        .Q(aso_data[13]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_29_ ( .D(n137), .CP(n317), .CDN(n311), 
        .Q(aso_data[29]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_12_ ( .D(n136), .CP(n317), .CDN(n314), 
        .Q(aso_data[12]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_28_ ( .D(n135), .CP(n317), .CDN(n86), .Q(
        aso_data[28]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_11_ ( .D(n134), .CP(n318), .CDN(n314), 
        .Q(aso_data[11]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_27_ ( .D(n133), .CP(n318), .CDN(n86), .Q(
        aso_data[27]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_10_ ( .D(n132), .CP(n318), .CDN(n314), 
        .Q(aso_data[10]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_26_ ( .D(n131), .CP(n318), .CDN(n86), .Q(
        aso_data[26]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_9_ ( .D(n130), .CP(n318), .CDN(n313), .Q(
        aso_data[9]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_25_ ( .D(n129), .CP(n318), .CDN(n314), 
        .Q(aso_data[25]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_8_ ( .D(n128), .CP(n318), .CDN(n86), .Q(
        aso_data[8]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_24_ ( .D(n127), .CP(n318), .CDN(n312), 
        .Q(aso_data[24]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_7_ ( .D(n126), .CP(n318), .CDN(n311), .Q(
        aso_data[7]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_23_ ( .D(n125), .CP(n318), .CDN(n313), 
        .Q(aso_data[23]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_6_ ( .D(n124), .CP(n318), .CDN(n314), .Q(
        aso_data[6]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_22_ ( .D(n123), .CP(n318), .CDN(n86), .Q(
        aso_data[22]) );
  DFCNQD1BWP12T30P140 rx_latch_r_reg_20_ ( .D(n119), .CP(n318), .CDN(n86), .Q(
        aso_data[20]) );
  DFCNQD1BWP12T30P140 underflow_r_reg ( .D(n159), .CP(n318), .CDN(n312), .Q(
        state_6) );
  DFCNQD1BWP12T30P140 asi_ready_r_reg ( .D(n160), .CP(n319), .CDN(n313), .Q(
        asi_ready) );
  DFCNQD1BWP12T30P140 volume_r_reg_2_ ( .D(n108), .CP(csi_avalon_clk), .CDN(
        n103), .Q(state[2]) );
  DFCNQD1BWP12T30P140 volume_r_reg_1_ ( .D(n107), .CP(csi_avalon_clk), .CDN(
        n103), .Q(state[1]) );
  DFCNQD1BWP12T30P140 pcmsyn_r_reg ( .D(n187), .CP(n315), .CDN(n312), .Q(
        pcmsyn_r) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_15_ ( .D(n143), .CP(n317), .CDN(n311), .Q(
        tx_shft_r[15]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_1_ ( .D(n157), .CP(n316), .CDN(n312), .Q(
        tx_shft_r[1]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_2_ ( .D(N29), .CP(n317), .CDN(n313), .Q(
        main_cnt[2]) );
  DFCNQD1BWP12T30P140 enable_r_reg ( .D(n106), .CP(csi_avalon_clk), .CDN(n103), 
        .Q(enable_r) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_2_ ( .D(n156), .CP(n316), .CDN(n312), .Q(
        tx_shft_r[2]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_3_ ( .D(n155), .CP(n318), .CDN(n311), .Q(
        tx_shft_r[3]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_4_ ( .D(n154), .CP(n316), .CDN(n312), .Q(
        tx_shft_r[4]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_5_ ( .D(n153), .CP(n319), .CDN(n312), .Q(
        tx_shft_r[5]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_6_ ( .D(n152), .CP(n315), .CDN(n312), .Q(
        tx_shft_r[6]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_7_ ( .D(n151), .CP(n316), .CDN(n312), .Q(
        tx_shft_r[7]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_8_ ( .D(n150), .CP(n317), .CDN(n312), .Q(
        tx_shft_r[8]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_9_ ( .D(n149), .CP(n318), .CDN(n312), .Q(
        tx_shft_r[9]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_10_ ( .D(n148), .CP(n315), .CDN(n311), .Q(
        tx_shft_r[10]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_11_ ( .D(n147), .CP(n317), .CDN(n311), .Q(
        tx_shft_r[11]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_12_ ( .D(n146), .CP(n317), .CDN(n311), .Q(
        tx_shft_r[12]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_13_ ( .D(n145), .CP(n317), .CDN(n311), .Q(
        tx_shft_r[13]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_14_ ( .D(n144), .CP(n317), .CDN(n311), .Q(
        tx_shft_r[14]) );
  DFCNQD1BWP12T30P140 tx_shft_r_reg_0_ ( .D(n158), .CP(n316), .CDN(n312), .Q(
        tx_shft_r[0]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_6_ ( .D(N33), .CP(n316), .CDN(n313), .Q(
        main_cnt[6]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_3_ ( .D(N30), .CP(n316), .CDN(n313), .Q(
        main_cnt[3]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_5_ ( .D(N32), .CP(n316), .CDN(n313), .Q(
        main_cnt[5]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_7_ ( .D(N34), .CP(n316), .CDN(n313), .Q(
        main_cnt[7]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_4_ ( .D(n182), .CP(n315), .Q(tx_latch_r_4)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_8_ ( .D(n178), .CP(n315), .Q(tx_latch_r_8)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_9_ ( .D(n177), .CP(n315), .Q(tx_latch_r_9)
         );
  DFQD2BWP12T30P140 tx_latch_r_reg_17_ ( .D(n172), .CP(n315), .Q(
        tx_latch_r[17]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_20_ ( .D(n169), .CP(n315), .Q(
        tx_latch_r[20]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_21_ ( .D(n168), .CP(n315), .Q(
        tx_latch_r[21]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_22_ ( .D(n167), .CP(n315), .Q(
        tx_latch_r[22]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_24_ ( .D(n165), .CP(n315), .Q(
        tx_latch_r[24]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_26_ ( .D(n163), .CP(n315), .Q(
        tx_latch_r[26]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_27_ ( .D(n162), .CP(n315), .Q(
        tx_latch_r[27]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_28_ ( .D(n161), .CP(n315), .Q(
        tx_latch_r[28]) );
  DFQD2BWP12T30P140 tx_latch_r_reg_2_ ( .D(n184), .CP(n316), .Q(tx_latch_r_2)
         );
  DFCNQD1BWP12T30P140 main_cnt_reg_4_ ( .D(N31), .CP(n316), .CDN(n313), .Q(
        main_cnt[4]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_1_ ( .D(N28), .CP(n316), .CDN(n313), .Q(
        main_cnt[1]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_8_ ( .D(N35), .CP(n318), .CDN(n313), .Q(
        main_cnt[8]) );
  DFCNQD1BWP12T30P140 main_cnt_reg_0_ ( .D(N27), .CP(n316), .CDN(n312), .Q(
        main_cnt[0]) );
  DFQD1BWP12T30P140 tx_latch_r_reg_25_ ( .D(n164), .CP(csi_audio_clk), .Q(
        tx_latch_r[25]) );
  DFQD1BWP12T30P140 reset_r_reg ( .D(n189), .CP(n315), .Q(coe_reset_n) );
  DFQD1BWP12T30P140 tx_latch_r_reg_0_ ( .D(n186), .CP(n316), .Q(tx_latch_r_0)
         );
  DFQD1BWP12T30P140 tx_latch_r_reg_6_ ( .D(n180), .CP(n316), .Q(tx_latch_r_6)
         );
  TIEHBWP12T30P140 U202 ( .Z(n218) );
  INVD0BWP12T30P140 U203 ( .I(n218), .ZN(coe_linsel) );
  INVD0BWP12T30P140 U204 ( .I(n218), .ZN(avs_creg_readdata[3]) );
  INVD0BWP12T30P140 U205 ( .I(n218), .ZN(avs_creg_readdata[7]) );
  INVD0BWP12T30P140 U206 ( .I(n218), .ZN(avs_creg_readdata[8]) );
  INVD0BWP12T30P140 U207 ( .I(n218), .ZN(avs_creg_readdata[9]) );
  INVD0BWP12T30P140 U208 ( .I(n218), .ZN(avs_creg_readdata[10]) );
  INVD0BWP12T30P140 U209 ( .I(n218), .ZN(avs_creg_readdata[11]) );
  INVD0BWP12T30P140 U210 ( .I(n218), .ZN(avs_creg_readdata[12]) );
  INVD0BWP12T30P140 U211 ( .I(n218), .ZN(avs_creg_readdata[13]) );
  INVD0BWP12T30P140 U212 ( .I(n218), .ZN(avs_creg_readdata[14]) );
  INVD0BWP12T30P140 U213 ( .I(n218), .ZN(avs_creg_readdata[15]) );
  INVD0BWP12T30P140 U214 ( .I(n218), .ZN(avs_creg_readdata[16]) );
  INVD0BWP12T30P140 U215 ( .I(n218), .ZN(avs_creg_readdata[17]) );
  INVD0BWP12T30P140 U216 ( .I(n218), .ZN(avs_creg_readdata[18]) );
  INVD0BWP12T30P140 U217 ( .I(n218), .ZN(avs_creg_readdata[19]) );
  INVD0BWP12T30P140 U218 ( .I(n218), .ZN(avs_creg_readdata[20]) );
  INVD0BWP12T30P140 U219 ( .I(n218), .ZN(avs_creg_readdata[21]) );
  INVD0BWP12T30P140 U220 ( .I(n218), .ZN(avs_creg_readdata[22]) );
  INVD0BWP12T30P140 U221 ( .I(n218), .ZN(avs_creg_readdata[23]) );
  INVD0BWP12T30P140 U222 ( .I(n218), .ZN(avs_creg_readdata[24]) );
  INVD0BWP12T30P140 U223 ( .I(n218), .ZN(avs_creg_readdata[25]) );
  INVD0BWP12T30P140 U224 ( .I(n218), .ZN(avs_creg_readdata[26]) );
  INVD0BWP12T30P140 U225 ( .I(n218), .ZN(avs_creg_readdata[27]) );
  INVD0BWP12T30P140 U226 ( .I(n218), .ZN(avs_creg_readdata[28]) );
  INVD0BWP12T30P140 U227 ( .I(n218), .ZN(avs_creg_readdata[29]) );
  INVD0BWP12T30P140 U228 ( .I(n218), .ZN(avs_creg_readdata[30]) );
  INVD0BWP12T30P140 U229 ( .I(n218), .ZN(avs_creg_readdata[31]) );
  NR2D0BWP12T30P140 U230 ( .A1(n293), .A2(n221), .ZN(n232) );
  INVD0BWP12T30P140 U231 ( .I(main_cnt[2]), .ZN(n240) );
  NR3D0BWP12T30P140 U232 ( .A1(main_cnt[5]), .A2(main_cnt[6]), .A3(main_cnt[7]), .ZN(n226) );
  INVD0BWP12T30P140 U233 ( .I(main_cnt[3]), .ZN(n224) );
  ND2D0BWP12T30P140 U234 ( .A1(n226), .A2(n224), .ZN(n222) );
  NR2D0BWP12T30P140 U235 ( .A1(n240), .A2(n222), .ZN(n219) );
  INVD0BWP12T30P140 U236 ( .I(main_cnt[1]), .ZN(n237) );
  ND4D0BWP12T30P140 U237 ( .A1(main_cnt[0]), .A2(main_cnt[4]), .A3(n219), .A4(
        n237), .ZN(n221) );
  NR2D0BWP12T30P140 U238 ( .A1(main_cnt[8]), .A2(n221), .ZN(n230) );
  CKBD0BWP12T30P140 U239 ( .I(n230), .Z(n229) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n229), .A2(n305), .B1(aso_data[5]), .B2(n230), .ZN(n122) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n229), .A2(n297), .B1(aso_data[4]), .B2(n230), .ZN(n120) );
  INVD0BWP12T30P140 U242 ( .I(main_cnt[0]), .ZN(N27) );
  INVD0BWP12T30P140 U243 ( .I(reset_req_r), .ZN(n86) );
  CKBD0BWP12T30P140 U244 ( .I(n86), .Z(n314) );
  NR2D0BWP12T30P140 U245 ( .A1(main_cnt[4]), .A2(n222), .ZN(n220) );
  ND2D0BWP12T30P140 U246 ( .A1(n220), .A2(n240), .ZN(n238) );
  NR2D0BWP12T30P140 U247 ( .A1(main_cnt[8]), .A2(n238), .ZN(n234) );
  ND3D0BWP12T30P140 U248 ( .A1(N27), .A2(n234), .A3(main_cnt[1]), .ZN(n233) );
  IND2D1BWP12T30P140 U249 ( .A1(n233), .B1(n314), .ZN(n255) );
  INR2D1BWP12T30P140 U250 ( .A1(asi_valid), .B1(n255), .ZN(n252) );
  CKBD0BWP12T30P140 U251 ( .I(n255), .Z(n251) );
  AO22D0BWP12T30P140 U252 ( .A1(asi_data[25]), .A2(n252), .B1(tx_latch_r[25]), 
        .B2(n251), .Z(n164) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n230), .A2(n304), .B1(aso_data[3]), .B2(n229), .ZN(n118) );
  AO22D0BWP12T30P140 U254 ( .A1(asi_data[23]), .A2(n252), .B1(tx_latch_r[23]), 
        .B2(n251), .Z(n166) );
  INVD0BWP12T30P140 U255 ( .I(main_cnt[8]), .ZN(n293) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n232), .A2(n305), .B1(aso_data[21]), .B2(
        n232), .ZN(n121) );
  CKBD0BWP12T30P140 U257 ( .I(n232), .Z(n231) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n231), .A2(n304), .B1(aso_data[19]), .B2(
        n232), .ZN(n117) );
  AO22D0BWP12T30P140 U259 ( .A1(asi_data[19]), .A2(n252), .B1(tx_latch_r[19]), 
        .B2(n251), .Z(n170) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n229), .A2(n296), .B1(aso_data[2]), .B2(n230), .ZN(n116) );
  CKBD0BWP12T30P140 U261 ( .I(n252), .Z(n256) );
  AO22D0BWP12T30P140 U262 ( .A1(asi_data[18]), .A2(n256), .B1(tx_latch_r[18]), 
        .B2(n251), .Z(n171) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n232), .A2(n296), .B1(aso_data[18]), .B2(
        n232), .ZN(n115) );
  AO22D0BWP12T30P140 U264 ( .A1(asi_data[16]), .A2(n256), .B1(tx_latch_r[16]), 
        .B2(n255), .Z(n173) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n230), .A2(n303), .B1(aso_data[1]), .B2(n229), .ZN(n114) );
  AO22D0BWP12T30P140 U266 ( .A1(asi_data[12]), .A2(n252), .B1(tx_latch_r_12), 
        .B2(n255), .Z(n174) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n231), .A2(n303), .B1(aso_data[17]), .B2(
        n231), .ZN(n113) );
  AO22D0BWP12T30P140 U268 ( .A1(asi_data[11]), .A2(n252), .B1(tx_latch_r_11), 
        .B2(n255), .Z(n175) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n230), .A2(n295), .B1(aso_data[0]), .B2(n230), .ZN(n112) );
  AO22D0BWP12T30P140 U270 ( .A1(asi_data[10]), .A2(n256), .B1(tx_latch_r_10), 
        .B2(n255), .Z(n176) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n231), .A2(n295), .B1(aso_data[16]), .B2(
        n232), .ZN(n111) );
  AO22D0BWP12T30P140 U272 ( .A1(asi_data[7]), .A2(n252), .B1(tx_latch_r_7), 
        .B2(n255), .Z(n179) );
  NR2D0BWP12T30P140 U273 ( .A1(avs_creg_address[0]), .A2(avs_creg_address[1]), 
        .ZN(n257) );
  ND3D0BWP12T30P140 U274 ( .A1(n257), .A2(avs_creg_write), .A3(
        avs_creg_chipselect), .ZN(n243) );
  CKMUX2D0BWP12T30P140 U275 ( .I0(avs_creg_writedata[5]), .I1(loopback_r), .S(
        n243), .Z(n109) );
  AO22D0BWP12T30P140 U276 ( .A1(asi_data[5]), .A2(n252), .B1(tx_latch_r_5), 
        .B2(n251), .Z(n181) );
  CKMUX2D0BWP12T30P140 U277 ( .I0(avs_creg_writedata[6]), .I1(reset_req_r), 
        .S(n243), .Z(n105) );
  AO22D0BWP12T30P140 U278 ( .A1(asi_data[3]), .A2(n252), .B1(tx_latch_r_3), 
        .B2(n251), .Z(n183) );
  NR3D0BWP12T30P140 U279 ( .A1(main_cnt[0]), .A2(n240), .A3(n222), .ZN(n236)
         );
  ND4D0BWP12T30P140 U280 ( .A1(main_cnt[1]), .A2(main_cnt[4]), .A3(main_cnt[8]), .A4(n236), .ZN(n223) );
  AO21D0BWP12T30P140 U281 ( .A1(aso_valid), .A2(n223), .B(n232), .Z(n188) );
  AO22D0BWP12T30P140 U282 ( .A1(asi_data[1]), .A2(n252), .B1(tx_latch_r_1), 
        .B2(n251), .Z(n185) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n229), .A2(n310), .B1(aso_data[15]), .B2(
        n229), .ZN(n142) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n232), .A2(n310), .B1(aso_data[31]), .B2(
        n231), .ZN(n141) );
  CKMUX2D0BWP12T30P140 U285 ( .I0(avs_creg_writedata[3]), .I1(coe_mute), .S(
        n243), .Z(n110) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n229), .A2(n302), .B1(aso_data[14]), .B2(
        n230), .ZN(n140) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n231), .A2(n302), .B1(aso_data[30]), .B2(
        n232), .ZN(n139) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n229), .A2(n309), .B1(aso_data[13]), .B2(
        n230), .ZN(n138) );
  OAI21D0BWP12T30P140 U289 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .B(
        main_cnt[2]), .ZN(n225) );
  ND2D0BWP12T30P140 U290 ( .A1(n225), .A2(n224), .ZN(n228) );
  OAI21D0BWP12T30P140 U291 ( .A1(main_cnt[4]), .A2(n228), .B(n226), .ZN(n227)
         );
  AOI21D0BWP12T30P140 U292 ( .A1(main_cnt[4]), .A2(n228), .B(n227), .ZN(n287)
         );
  INVD0BWP12T30P140 U293 ( .I(n287), .ZN(n254) );
  AOI22D0BWP12T30P140 U294 ( .A1(n287), .A2(n302), .B1(n310), .B2(n254), .ZN(
        n87) );
  MAOI22D0BWP12T30P140 U295 ( .A1(n231), .A2(n309), .B1(aso_data[29]), .B2(
        n232), .ZN(n137) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n229), .A2(n301), .B1(aso_data[12]), .B2(
        n230), .ZN(n136) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n231), .A2(n301), .B1(aso_data[28]), .B2(
        n232), .ZN(n135) );
  AOI22D0BWP12T30P140 U298 ( .A1(n287), .A2(n309), .B1(n302), .B2(n254), .ZN(
        n88) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n229), .A2(n308), .B1(aso_data[11]), .B2(
        n230), .ZN(n134) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n231), .A2(n308), .B1(aso_data[27]), .B2(
        n231), .ZN(n133) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n229), .A2(n300), .B1(aso_data[10]), .B2(
        n230), .ZN(n132) );
  INVD0BWP12T30P140 U302 ( .I(n254), .ZN(n281) );
  AOI22D0BWP12T30P140 U303 ( .A1(n281), .A2(n301), .B1(n309), .B2(n254), .ZN(
        n89) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n231), .A2(n300), .B1(aso_data[26]), .B2(
        n232), .ZN(n131) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n229), .A2(n307), .B1(aso_data[9]), .B2(n229), .ZN(n130) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n231), .A2(n307), .B1(aso_data[25]), .B2(
        n231), .ZN(n129) );
  AOI22D0BWP12T30P140 U307 ( .A1(n287), .A2(n308), .B1(n301), .B2(n254), .ZN(
        n90) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n229), .A2(n299), .B1(aso_data[8]), .B2(n230), .ZN(n128) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n231), .A2(n299), .B1(aso_data[24]), .B2(
        n231), .ZN(n127) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n229), .A2(n306), .B1(aso_data[7]), .B2(n230), .ZN(n126) );
  AOI22D0BWP12T30P140 U311 ( .A1(n281), .A2(n300), .B1(n308), .B2(n254), .ZN(
        n91) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n232), .A2(n306), .B1(aso_data[23]), .B2(
        n232), .ZN(n125) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n230), .A2(n298), .B1(aso_data[6]), .B2(n229), .ZN(n124) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n231), .A2(n298), .B1(aso_data[22]), .B2(
        n231), .ZN(n123) );
  AOI22D0BWP12T30P140 U315 ( .A1(n287), .A2(n307), .B1(n300), .B2(n254), .ZN(
        n92) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n232), .A2(n297), .B1(aso_data[20]), .B2(
        n232), .ZN(n119) );
  INVD0BWP12T30P140 U317 ( .I(state_6), .ZN(n258) );
  OAI21D0BWP12T30P140 U318 ( .A1(asi_valid), .A2(n233), .B(n258), .ZN(n159) );
  ND2D0BWP12T30P140 U319 ( .A1(n234), .A2(n237), .ZN(n235) );
  CKMUX2D0BWP12T30P140 U320 ( .I0(N27), .I1(asi_ready), .S(n235), .Z(n160) );
  AOI22D0BWP12T30P140 U321 ( .A1(n281), .A2(n299), .B1(n307), .B2(n254), .ZN(
        n93) );
  CKMUX2D0BWP12T30P140 U322 ( .I0(avs_creg_writedata[2]), .I1(state[2]), .S(
        n243), .Z(n108) );
  CKMUX2D0BWP12T30P140 U323 ( .I0(avs_creg_writedata[1]), .I1(state[1]), .S(
        n243), .Z(n107) );
  INVD0BWP12T30P140 U324 ( .I(main_cnt[4]), .ZN(n250) );
  ND3D0BWP12T30P140 U325 ( .A1(n250), .A2(n237), .A3(n236), .ZN(n239) );
  ND2D0BWP12T30P140 U326 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .ZN(n245) );
  NR2D0BWP12T30P140 U327 ( .A1(n238), .A2(n245), .ZN(n259) );
  AO21D0BWP12T30P140 U328 ( .A1(pcmsyn_r), .A2(n239), .B(n259), .Z(n187) );
  AOI22D0BWP12T30P140 U329 ( .A1(n287), .A2(n306), .B1(n299), .B2(n254), .ZN(
        n94) );
  NR2D0BWP12T30P140 U330 ( .A1(n287), .A2(n259), .ZN(n286) );
  AO222D0BWP12T30P140 U331 ( .A1(n281), .A2(tx_shft_r[0]), .B1(n286), .B2(
        tx_shft_r[1]), .C1(n259), .C2(state[1]), .Z(n157) );
  NR2D0BWP12T30P140 U332 ( .A1(n240), .A2(n245), .ZN(n244) );
  AOI21D0BWP12T30P140 U333 ( .A1(n240), .A2(n245), .B(n244), .ZN(N29) );
  AOI22D0BWP12T30P140 U334 ( .A1(n281), .A2(n298), .B1(n306), .B2(n254), .ZN(
        n95) );
  CKMUX2D0BWP12T30P140 U335 ( .I0(avs_creg_writedata[4]), .I1(enable_r), .S(
        n243), .Z(n106) );
  AO222D0BWP12T30P140 U336 ( .A1(n281), .A2(tx_shft_r[1]), .B1(n286), .B2(
        tx_shft_r[2]), .C1(n259), .C2(state[2]), .Z(n156) );
  AOI22D0BWP12T30P140 U337 ( .A1(n287), .A2(n305), .B1(n298), .B2(n254), .ZN(
        n96) );
  AOI22D0BWP12T30P140 U338 ( .A1(n287), .A2(n297), .B1(n305), .B2(n254), .ZN(
        n97) );
  AO22D0BWP12T30P140 U339 ( .A1(asi_data[0]), .A2(n256), .B1(tx_latch_r_0), 
        .B2(n255), .Z(n186) );
  AOI22D0BWP12T30P140 U340 ( .A1(n281), .A2(n303), .B1(n296), .B2(n254), .ZN(
        n100) );
  AO22D0BWP12T30P140 U341 ( .A1(asi_data[9]), .A2(n252), .B1(tx_latch_r_9), 
        .B2(n255), .Z(n177) );
  AN2D0BWP12T30P140 U342 ( .A1(tx_shft_r[15]), .A2(enable_r), .Z(coe_pcmi) );
  INVD0BWP12T30P140 U343 ( .I(loopback_r), .ZN(n241) );
  AOI22D0BWP12T30P140 U344 ( .A1(loopback_r), .A2(coe_pcmi), .B1(coe_pcmo), 
        .B2(n241), .ZN(n242) );
  AOI22D0BWP12T30P140 U345 ( .A1(n281), .A2(n242), .B1(n295), .B2(n254), .ZN(
        n102) );
  AO22D0BWP12T30P140 U346 ( .A1(n259), .A2(state[0]), .B1(n286), .B2(
        tx_shft_r[0]), .Z(n158) );
  CKMUX2D0BWP12T30P140 U347 ( .I0(avs_creg_writedata[0]), .I1(state[0]), .S(
        n243), .Z(n104) );
  AO22D0BWP12T30P140 U348 ( .A1(asi_data[24]), .A2(n256), .B1(tx_latch_r[24]), 
        .B2(n251), .Z(n165) );
  AO22D0BWP12T30P140 U349 ( .A1(asi_data[27]), .A2(n256), .B1(tx_latch_r[27]), 
        .B2(n251), .Z(n162) );
  AOI22D0BWP12T30P140 U350 ( .A1(n287), .A2(n304), .B1(n297), .B2(n254), .ZN(
        n98) );
  ND2D0BWP12T30P140 U351 ( .A1(main_cnt[3]), .A2(n244), .ZN(n249) );
  NR2D0BWP12T30P140 U352 ( .A1(n250), .A2(n249), .ZN(n248) );
  ND2D0BWP12T30P140 U353 ( .A1(main_cnt[5]), .A2(n248), .ZN(n246) );
  OA21D0BWP12T30P140 U354 ( .A1(main_cnt[5]), .A2(n248), .B(n246), .Z(N32) );
  OA21D0BWP12T30P140 U355 ( .A1(main_cnt[3]), .A2(n244), .B(n249), .Z(N30) );
  OA21D0BWP12T30P140 U356 ( .A1(main_cnt[0]), .A2(main_cnt[1]), .B(n245), .Z(
        N28) );
  NR2D0BWP12T30P140 U357 ( .A1(reset_req_r), .A2(csi_reset), .ZN(n189) );
  AO22D0BWP12T30P140 U358 ( .A1(asi_data[22]), .A2(n256), .B1(tx_latch_r[22]), 
        .B2(n251), .Z(n167) );
  AO22D0BWP12T30P140 U359 ( .A1(asi_data[28]), .A2(n256), .B1(tx_latch_r[28]), 
        .B2(n251), .Z(n161) );
  AO22D0BWP12T30P140 U360 ( .A1(asi_data[6]), .A2(n256), .B1(tx_latch_r_6), 
        .B2(n255), .Z(n180) );
  AO22D0BWP12T30P140 U361 ( .A1(asi_data[21]), .A2(n252), .B1(tx_latch_r[21]), 
        .B2(n251), .Z(n168) );
  INVD0BWP12T30P140 U362 ( .I(main_cnt[6]), .ZN(n247) );
  NR2D0BWP12T30P140 U363 ( .A1(n247), .A2(n246), .ZN(n253) );
  AOI21D0BWP12T30P140 U364 ( .A1(n247), .A2(n246), .B(n253), .ZN(N33) );
  AOI21D0BWP12T30P140 U365 ( .A1(n250), .A2(n249), .B(n248), .ZN(N31) );
  AO22D0BWP12T30P140 U366 ( .A1(asi_data[20]), .A2(n256), .B1(tx_latch_r[20]), 
        .B2(n251), .Z(n169) );
  AO22D0BWP12T30P140 U367 ( .A1(asi_data[2]), .A2(n256), .B1(tx_latch_r_2), 
        .B2(n255), .Z(n184) );
  AO22D0BWP12T30P140 U368 ( .A1(asi_data[17]), .A2(n252), .B1(tx_latch_r[17]), 
        .B2(n255), .Z(n172) );
  AOI22D0BWP12T30P140 U369 ( .A1(n287), .A2(n296), .B1(n304), .B2(n254), .ZN(
        n99) );
  AO22D0BWP12T30P140 U370 ( .A1(asi_data[26]), .A2(n252), .B1(tx_latch_r[26]), 
        .B2(n251), .Z(n163) );
  AO22D0BWP12T30P140 U371 ( .A1(asi_data[8]), .A2(n256), .B1(tx_latch_r_8), 
        .B2(n255), .Z(n178) );
  ND2D0BWP12T30P140 U372 ( .A1(main_cnt[7]), .A2(n253), .ZN(n292) );
  OA21D0BWP12T30P140 U373 ( .A1(main_cnt[7]), .A2(n253), .B(n292), .Z(N34) );
  AOI22D0BWP12T30P140 U374 ( .A1(n287), .A2(n295), .B1(n303), .B2(n254), .ZN(
        n101) );
  AO22D0BWP12T30P140 U375 ( .A1(asi_data[4]), .A2(n256), .B1(tx_latch_r_4), 
        .B2(n255), .Z(n182) );
  CKBD0BWP12T30P140 U376 ( .I(csi_audio_clk), .Z(n319) );
  CKBD0BWP12T30P140 U377 ( .I(csi_audio_clk), .Z(n315) );
  CKBD0BWP12T30P140 U378 ( .I(csi_audio_clk), .Z(n318) );
  CKBD0BWP12T30P140 U379 ( .I(csi_audio_clk), .Z(n317) );
  CKBD0BWP12T30P140 U380 ( .I(csi_audio_clk), .Z(n316) );
  CKBD0BWP12T30P140 U381 ( .I(n86), .Z(n313) );
  CKBD0BWP12T30P140 U382 ( .I(n86), .Z(n311) );
  CKBD0BWP12T30P140 U383 ( .I(n86), .Z(n312) );
  INVD0BWP12T30P140 U384 ( .I(csi_reset), .ZN(n103) );
  AN2D0BWP12T30P140 U385 ( .A1(pcmsyn_r), .A2(enable_r), .Z(coe_pcmsyn) );
  AN2D0BWP12T30P140 U386 ( .A1(enable_r), .A2(n315), .Z(coe_mclk) );
  AN2D0BWP12T30P140 U387 ( .A1(state[0]), .A2(n257), .Z(avs_creg_readdata[0])
         );
  INVD0BWP12T30P140 U388 ( .I(n257), .ZN(n294) );
  NR2D0BWP12T30P140 U389 ( .A1(coe_reset_n), .A2(n294), .ZN(
        avs_creg_readdata[4]) );
  NR2D0BWP12T30P140 U390 ( .A1(n258), .A2(n294), .ZN(avs_creg_readdata[6]) );
  AOI22D0BWP12T30P140 U391 ( .A1(n281), .A2(tx_shft_r[14]), .B1(n286), .B2(
        tx_shft_r[15]), .ZN(n262) );
  INVD0BWP12T30P140 U392 ( .I(n259), .ZN(n260) );
  NR2D0BWP12T30P140 U393 ( .A1(main_cnt[8]), .A2(n260), .ZN(n289) );
  NR2D0BWP12T30P140 U394 ( .A1(n293), .A2(n260), .ZN(n288) );
  AOI22D0BWP12T30P140 U395 ( .A1(tx_latch_r_12), .A2(n289), .B1(tx_latch_r[28]), .B2(n288), .ZN(n261) );
  ND2D0BWP12T30P140 U396 ( .A1(n262), .A2(n261), .ZN(n143) );
  AOI22D0BWP12T30P140 U397 ( .A1(n281), .A2(tx_shft_r[2]), .B1(n286), .B2(
        tx_shft_r[3]), .ZN(n264) );
  AOI22D0BWP12T30P140 U398 ( .A1(tx_latch_r_0), .A2(n289), .B1(tx_latch_r[16]), 
        .B2(n288), .ZN(n263) );
  ND2D0BWP12T30P140 U399 ( .A1(n264), .A2(n263), .ZN(n155) );
  AOI22D0BWP12T30P140 U400 ( .A1(n281), .A2(tx_shft_r[3]), .B1(n286), .B2(
        tx_shft_r[4]), .ZN(n266) );
  AOI22D0BWP12T30P140 U401 ( .A1(tx_latch_r_1), .A2(n289), .B1(tx_latch_r[17]), 
        .B2(n288), .ZN(n265) );
  ND2D0BWP12T30P140 U402 ( .A1(n266), .A2(n265), .ZN(n154) );
  AOI22D0BWP12T30P140 U403 ( .A1(n281), .A2(tx_shft_r[4]), .B1(n286), .B2(
        tx_shft_r[5]), .ZN(n268) );
  AOI22D0BWP12T30P140 U404 ( .A1(tx_latch_r_2), .A2(n289), .B1(tx_latch_r[18]), 
        .B2(n288), .ZN(n267) );
  ND2D0BWP12T30P140 U405 ( .A1(n268), .A2(n267), .ZN(n153) );
  AOI22D0BWP12T30P140 U406 ( .A1(n281), .A2(tx_shft_r[5]), .B1(n286), .B2(
        tx_shft_r[6]), .ZN(n270) );
  AOI22D0BWP12T30P140 U407 ( .A1(tx_latch_r_3), .A2(n289), .B1(tx_latch_r[19]), 
        .B2(n288), .ZN(n269) );
  ND2D0BWP12T30P140 U408 ( .A1(n270), .A2(n269), .ZN(n152) );
  AOI22D0BWP12T30P140 U409 ( .A1(n281), .A2(tx_shft_r[6]), .B1(n286), .B2(
        tx_shft_r[7]), .ZN(n272) );
  AOI22D0BWP12T30P140 U410 ( .A1(tx_latch_r_4), .A2(n289), .B1(tx_latch_r[20]), 
        .B2(n288), .ZN(n271) );
  ND2D0BWP12T30P140 U411 ( .A1(n272), .A2(n271), .ZN(n151) );
  AOI22D0BWP12T30P140 U412 ( .A1(n287), .A2(tx_shft_r[7]), .B1(n286), .B2(
        tx_shft_r[8]), .ZN(n274) );
  AOI22D0BWP12T30P140 U413 ( .A1(tx_latch_r_5), .A2(n289), .B1(tx_latch_r[21]), 
        .B2(n288), .ZN(n273) );
  ND2D0BWP12T30P140 U414 ( .A1(n274), .A2(n273), .ZN(n150) );
  AOI22D0BWP12T30P140 U415 ( .A1(n281), .A2(tx_shft_r[8]), .B1(n286), .B2(
        tx_shft_r[9]), .ZN(n276) );
  AOI22D0BWP12T30P140 U416 ( .A1(tx_latch_r_6), .A2(n289), .B1(tx_latch_r[22]), 
        .B2(n288), .ZN(n275) );
  ND2D0BWP12T30P140 U417 ( .A1(n276), .A2(n275), .ZN(n149) );
  AOI22D0BWP12T30P140 U418 ( .A1(n287), .A2(tx_shft_r[9]), .B1(n286), .B2(
        tx_shft_r[10]), .ZN(n278) );
  AOI22D0BWP12T30P140 U419 ( .A1(tx_latch_r_7), .A2(n289), .B1(tx_latch_r[23]), 
        .B2(n288), .ZN(n277) );
  ND2D0BWP12T30P140 U420 ( .A1(n278), .A2(n277), .ZN(n148) );
  AOI22D0BWP12T30P140 U421 ( .A1(n281), .A2(tx_shft_r[12]), .B1(n286), .B2(
        tx_shft_r[13]), .ZN(n280) );
  AOI22D0BWP12T30P140 U422 ( .A1(tx_latch_r_10), .A2(n289), .B1(tx_latch_r[26]), .B2(n288), .ZN(n279) );
  ND2D0BWP12T30P140 U423 ( .A1(n280), .A2(n279), .ZN(n145) );
  AOI22D0BWP12T30P140 U424 ( .A1(n281), .A2(tx_shft_r[10]), .B1(n286), .B2(
        tx_shft_r[11]), .ZN(n283) );
  AOI22D0BWP12T30P140 U425 ( .A1(tx_latch_r_8), .A2(n289), .B1(tx_latch_r[24]), 
        .B2(n288), .ZN(n282) );
  ND2D0BWP12T30P140 U426 ( .A1(n283), .A2(n282), .ZN(n147) );
  AOI22D0BWP12T30P140 U427 ( .A1(n287), .A2(tx_shft_r[13]), .B1(n286), .B2(
        tx_shft_r[14]), .ZN(n285) );
  AOI22D0BWP12T30P140 U428 ( .A1(tx_latch_r_11), .A2(n289), .B1(tx_latch_r[27]), .B2(n288), .ZN(n284) );
  ND2D0BWP12T30P140 U429 ( .A1(n285), .A2(n284), .ZN(n144) );
  AOI22D0BWP12T30P140 U430 ( .A1(n287), .A2(tx_shft_r[11]), .B1(n286), .B2(
        tx_shft_r[12]), .ZN(n291) );
  AOI22D0BWP12T30P140 U431 ( .A1(tx_latch_r_9), .A2(n289), .B1(tx_latch_r[25]), 
        .B2(n288), .ZN(n290) );
  ND2D0BWP12T30P140 U432 ( .A1(n291), .A2(n290), .ZN(n146) );
  MUX2ND0BWP12T30P140 U433 ( .I0(main_cnt[8]), .I1(n293), .S(n292), .ZN(N35)
         );
  INR2D1BWP12T30P140 U434 ( .A1(state[1]), .B1(n294), .ZN(avs_creg_readdata[1]) );
  INR2D1BWP12T30P140 U435 ( .A1(state[2]), .B1(n294), .ZN(avs_creg_readdata[2]) );
  INR2D1BWP12T30P140 U436 ( .A1(coe_mute), .B1(n294), .ZN(avs_creg_readdata[5]) );
endmodule

