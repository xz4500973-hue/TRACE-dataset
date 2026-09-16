/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:57:31 2026
/////////////////////////////////////////////////////////////


module ps2_io_ctrl ( clk_i, rst_i, ps2_ctrl_clk_en_i_, ps2_ctrl_data_en_i_, 
        ps2_clk_pad_i, ps2_clk_pad_oe_o, ps2_data_pad_oe_o, inhibit_if_i, 
        ps2_ctrl_clk_o );
  input clk_i, rst_i, ps2_ctrl_clk_en_i_, ps2_ctrl_data_en_i_, ps2_clk_pad_i,
         inhibit_if_i;
  output ps2_clk_pad_oe_o, ps2_data_pad_oe_o, ps2_ctrl_clk_o;
  wire   N0, inhibit_if_previous, n1, n4;

  DFSNQD1BWP12T30P140 inhibit_if_previous_reg ( .D(inhibit_if_i), .CP(clk_i), 
        .SDN(n1), .Q(inhibit_if_previous) );
  DFCNQD1BWP12T30P140 ps2_data_pad_oe_o_reg ( .D(n4), .CP(clk_i), .CDN(n1), 
        .Q(ps2_data_pad_oe_o) );
  DFCNQD1BWP12T30P140 ps2_clk_pad_oe_o_reg ( .D(N0), .CP(clk_i), .CDN(n1), .Q(
        ps2_clk_pad_oe_o) );
  AO21D0BWP12T30P140 U3 ( .A1(inhibit_if_previous), .A2(ps2_clk_pad_oe_o), .B(
        ps2_clk_pad_i), .Z(ps2_ctrl_clk_o) );
  INVD0BWP12T30P140 U4 ( .I(ps2_ctrl_data_en_i_), .ZN(n4) );
  INVD0BWP12T30P140 U5 ( .I(rst_i), .ZN(n1) );
  IND2D1BWP12T30P140 U6 ( .A1(inhibit_if_i), .B1(ps2_ctrl_clk_en_i_), .ZN(N0)
         );
endmodule



    module ps2_keyboard_TIMER_60USEC_VALUE_PP12_TIMER_60USEC_BITS_PP4_TIMER_5USEC_VALUE_PP500_TIMER_5USEC_BITS_PP16 ( 
        clk, reset, ps2_clk_en_o_, ps2_data_en_o_, ps2_clk_i, ps2_data_i, 
        rx_released, rx_scan_code, rx_data_ready, rx_read, tx_data, tx_write, 
        tx_write_ack_o, tx_error_no_keyboard_ack, translate, devide_reg_i );
  output [7:0] rx_scan_code;
  input [7:0] tx_data;
  input [15:0] devide_reg_i;
  input clk, reset, ps2_clk_i, ps2_data_i, rx_read, tx_write, translate;
  output ps2_clk_en_o_, ps2_data_en_o_, rx_released, rx_data_ready,
         tx_write_ack_o, tx_error_no_keyboard_ack;
  wire   ps2_clk_s, ps2_clk_ms, ps2_data_s, ps2_data_ms, m2_next_state,
         timer_done, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, hold_released, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320;
  wire   [3:0] m1_state;
  wire   [3:0] m1_next_state;
  wire   [10:0] q;
  wire   [3:0] bit_count;
  wire   [3:0] timer_60usec_count;
  wire   [15:0] timer_5usec;
  wire   [15:0] timer_5usec_count;

  DFSNQD1BWP12T30P140 timer_5usec_reg_0_ ( .D(n181), .CP(n320), .SDN(n316), 
        .Q(timer_5usec[0]) );
  DFSNQD1BWP12T30P140 m1_state_reg_0_ ( .D(m1_next_state[0]), .CP(n320), .SDN(
        n316), .Q(m1_state[0]) );
  DFCNQD1BWP12T30P140 rx_released_reg ( .D(n135), .CP(n320), .CDN(n316), .Q(
        rx_released) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_14_ ( .D(N209), .CP(n318), .CDN(n315), 
        .Q(timer_5usec[14]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_5_ ( .D(n141), .CP(n320), .CDN(n316), 
        .Q(rx_scan_code[5]) );
  DFCNQD1BWP12T30P140 bit_count_reg_1_ ( .D(n160), .CP(n319), .CDN(n316), .Q(
        bit_count[1]) );
  DFCNQD1BWP12T30P140 q_reg_10_ ( .D(n169), .CP(n317), .CDN(n316), .Q(q[10])
         );
  DFCNQD1BWP12T30P140 q_reg_9_ ( .D(n170), .CP(n319), .CDN(n134), .Q(q[9]) );
  DFCNQD1BWP12T30P140 bit_count_reg_3_ ( .D(n163), .CP(n319), .CDN(n134), .Q(
        bit_count[3]) );
  DFCNQD1BWP12T30P140 q_reg_0_ ( .D(n178), .CP(n320), .CDN(n316), .Q(q[0]) );
  DFCNQD1BWP12T30P140 hold_released_reg ( .D(n144), .CP(n319), .CDN(n134), .Q(
        hold_released) );
  DFCNQD1BWP12T30P140 q_reg_5_ ( .D(n174), .CP(n319), .CDN(n134), .Q(q[5]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_2_ ( .D(N197), .CP(n318), .CDN(n315), 
        .Q(timer_5usec[2]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_4_ ( .D(N199), .CP(n317), .CDN(n315), 
        .Q(timer_5usec[4]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_6_ ( .D(N201), .CP(n317), .CDN(n315), 
        .Q(timer_5usec[6]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_8_ ( .D(N203), .CP(n320), .CDN(n315), 
        .Q(timer_5usec[8]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_10_ ( .D(N205), .CP(n318), .CDN(n315), 
        .Q(timer_5usec[10]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_12_ ( .D(N207), .CP(n317), .CDN(n315), 
        .Q(timer_5usec[12]) );
  DFCNQD1BWP12T30P140 q_reg_6_ ( .D(n173), .CP(n319), .CDN(n316), .Q(q[6]) );
  DFCNQD1BWP12T30P140 bit_count_reg_2_ ( .D(n161), .CP(n319), .CDN(n134), .Q(
        bit_count[2]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_15_ ( .D(N210), .CP(n319), .CDN(n134), 
        .Q(timer_5usec[15]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_1_ ( .D(N196), .CP(n319), .CDN(n316), 
        .Q(timer_5usec[1]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_3_ ( .D(N198), .CP(n320), .CDN(n315), 
        .Q(timer_5usec[3]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_5_ ( .D(N200), .CP(n318), .CDN(n315), 
        .Q(timer_5usec[5]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_7_ ( .D(N202), .CP(n317), .CDN(n315), 
        .Q(timer_5usec[7]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_9_ ( .D(N204), .CP(n320), .CDN(n315), 
        .Q(timer_5usec[9]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_11_ ( .D(N206), .CP(n318), .CDN(n315), 
        .Q(timer_5usec[11]) );
  DFCNQD1BWP12T30P140 timer_5usec_reg_13_ ( .D(N208), .CP(n317), .CDN(n315), 
        .Q(timer_5usec[13]) );
  DFCNQD1BWP12T30P140 q_reg_7_ ( .D(n172), .CP(n319), .CDN(n134), .Q(q[7]) );
  DFCNQD1BWP12T30P140 q_reg_8_ ( .D(n171), .CP(n320), .CDN(n316), .Q(q[8]) );
  DFCNQD1BWP12T30P140 m2_state_reg ( .D(m2_next_state), .CP(n319), .CDN(n134), 
        .Q(rx_data_ready) );
  DFCNQD1BWP12T30P140 q_reg_4_ ( .D(n175), .CP(n318), .CDN(n316), .Q(q[4]) );
  DFCNQD1BWP12T30P140 q_reg_3_ ( .D(n176), .CP(n319), .CDN(n315), .Q(q[3]) );
  DFCNQD1BWP12T30P140 q_reg_2_ ( .D(n177), .CP(n319), .CDN(n316), .Q(q[2]) );
  DFCNQD1BWP12T30P140 q_reg_1_ ( .D(n179), .CP(n319), .CDN(n315), .Q(q[1]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_6_ ( .D(n154), .CP(n318), .Q(
        timer_5usec_count[6]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_14_ ( .D(n146), .CP(n317), .Q(
        timer_5usec_count[14]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_12_ ( .D(n148), .CP(n317), .Q(
        timer_5usec_count[12]) );
  DFQD2BWP12T30P140 timer_60usec_count_reg_3_ ( .D(n164), .CP(n317), .Q(
        timer_60usec_count[3]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_0_ ( .D(n136), .CP(n320), .CDN(n134), 
        .Q(rx_scan_code[0]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_13_ ( .D(n147), .CP(n317), .Q(
        timer_5usec_count[13]) );
  DFQD2BWP12T30P140 timer_60usec_count_reg_2_ ( .D(n165), .CP(n317), .Q(
        timer_60usec_count[2]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_15_ ( .D(n145), .CP(n317), .Q(
        timer_5usec_count[15]) );
  DFCNQD1BWP12T30P140 bit_count_reg_0_ ( .D(n162), .CP(n319), .CDN(n315), .Q(
        bit_count[0]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_4_ ( .D(n156), .CP(n318), .Q(
        timer_5usec_count[4]) );
  DFQD2BWP12T30P140 timer_60usec_count_reg_0_ ( .D(n166), .CP(n317), .Q(
        timer_60usec_count[0]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_10_ ( .D(n150), .CP(n318), .Q(
        timer_5usec_count[10]) );
  DFQD2BWP12T30P140 timer_done_reg ( .D(n168), .CP(n317), .Q(timer_done) );
  DFCNQD1BWP12T30P140 m1_state_reg_3_ ( .D(m1_next_state[3]), .CP(n320), .CDN(
        n316), .Q(m1_state[3]) );
  DFQD2BWP12T30P140 ps2_data_ms_reg ( .D(ps2_data_i), .CP(n317), .Q(
        ps2_data_ms) );
  DFQD2BWP12T30P140 ps2_clk_ms_reg ( .D(ps2_clk_i), .CP(n318), .Q(ps2_clk_ms)
         );
  DFQD2BWP12T30P140 timer_5usec_count_reg_8_ ( .D(n152), .CP(n318), .Q(
        timer_5usec_count[8]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_2_ ( .D(n158), .CP(n318), .Q(
        timer_5usec_count[2]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_11_ ( .D(n149), .CP(n318), .Q(
        timer_5usec_count[11]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_5_ ( .D(n155), .CP(n318), .Q(
        timer_5usec_count[5]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_1_ ( .D(n159), .CP(n318), .Q(
        timer_5usec_count[1]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_0_ ( .D(n180), .CP(n320), .Q(
        timer_5usec_count[0]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_6_ ( .D(n142), .CP(n319), .CDN(n134), 
        .Q(rx_scan_code[6]) );
  DFQD2BWP12T30P140 timer_5usec_count_reg_9_ ( .D(n151), .CP(n318), .Q(
        timer_5usec_count[9]) );
  DFCNQD1BWP12T30P140 m1_state_reg_1_ ( .D(m1_next_state[1]), .CP(n320), .CDN(
        n316), .Q(m1_state[1]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_3_ ( .D(n139), .CP(n320), .CDN(n316), 
        .Q(rx_scan_code[3]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_2_ ( .D(n138), .CP(n320), .CDN(n134), 
        .Q(rx_scan_code[2]) );
  DFQD2BWP12T30P140 ps2_clk_s_reg ( .D(ps2_clk_ms), .CP(n317), .Q(ps2_clk_s)
         );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_1_ ( .D(n137), .CP(n320), .CDN(n316), 
        .Q(rx_scan_code[1]) );
  DFCNQD1BWP12T30P140 m1_state_reg_2_ ( .D(m1_next_state[2]), .CP(n320), .CDN(
        n316), .Q(m1_state[2]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_4_ ( .D(n140), .CP(n319), .CDN(n134), 
        .Q(rx_scan_code[4]) );
  DFCNQD1BWP12T30P140 rx_scan_code_reg_7_ ( .D(n143), .CP(n319), .CDN(n134), 
        .Q(rx_scan_code[7]) );
  DFQD1BWP12T30P140 ps2_data_s_reg ( .D(ps2_data_ms), .CP(n317), .Q(ps2_data_s) );
  DFQD1BWP12T30P140 timer_60usec_count_reg_1_ ( .D(n167), .CP(n317), .Q(
        timer_60usec_count[1]) );
  DFQD1BWP12T30P140 timer_5usec_count_reg_7_ ( .D(n153), .CP(n318), .Q(
        timer_5usec_count[7]) );
  DFQD1BWP12T30P140 timer_5usec_count_reg_3_ ( .D(n157), .CP(n318), .Q(
        timer_5usec_count[3]) );
  NR2D0BWP12T30P140 U3 ( .A1(m1_state[1]), .A2(m1_state[3]), .ZN(n232) );
  INVD0BWP12T30P140 U4 ( .I(n232), .ZN(n243) );
  INVD0BWP12T30P140 U5 ( .I(tx_write), .ZN(n209) );
  NR3D0BWP12T30P140 U6 ( .A1(m1_state[2]), .A2(n243), .A3(n209), .ZN(
        tx_write_ack_o) );
  INVD0BWP12T30P140 U7 ( .I(m1_state[3]), .ZN(n214) );
  NR2D0BWP12T30P140 U8 ( .A1(m1_state[1]), .A2(n214), .ZN(n261) );
  ND2D0BWP12T30P140 U9 ( .A1(m1_state[0]), .A2(n261), .ZN(n287) );
  INVD0BWP12T30P140 U10 ( .I(n287), .ZN(n296) );
  NR2D0BWP12T30P140 U11 ( .A1(tx_write_ack_o), .A2(n296), .ZN(n283) );
  AO222D0BWP12T30P140 U12 ( .A1(tx_write_ack_o), .A2(tx_data[2]), .B1(q[3]), 
        .B2(n283), .C1(q[4]), .C2(n296), .Z(n176) );
  AO222D0BWP12T30P140 U13 ( .A1(tx_write_ack_o), .A2(tx_data[0]), .B1(q[2]), 
        .B2(n296), .C1(n283), .C2(q[1]), .Z(n179) );
  INVD0BWP12T30P140 U14 ( .I(timer_5usec_count[13]), .ZN(n75) );
  INVD0BWP12T30P140 U15 ( .I(devide_reg_i[13]), .ZN(n113) );
  AOI22D0BWP12T30P140 U16 ( .A1(devide_reg_i[13]), .A2(timer_5usec_count[13]), 
        .B1(n75), .B2(n113), .ZN(n58) );
  INVD0BWP12T30P140 U17 ( .I(devide_reg_i[6]), .ZN(n98) );
  INVD0BWP12T30P140 U18 ( .I(devide_reg_i[7]), .ZN(n115) );
  INVD0BWP12T30P140 U19 ( .I(devide_reg_i[2]), .ZN(n104) );
  NR2D0BWP12T30P140 U20 ( .A1(devide_reg_i[0]), .A2(devide_reg_i[1]), .ZN(n15)
         );
  ND2D0BWP12T30P140 U21 ( .A1(n104), .A2(n15), .ZN(n31) );
  INVD0BWP12T30P140 U22 ( .I(devide_reg_i[3]), .ZN(n94) );
  IND2D1BWP12T30P140 U23 ( .A1(n31), .B1(n94), .ZN(n19) );
  NR3D0BWP12T30P140 U24 ( .A1(devide_reg_i[5]), .A2(devide_reg_i[4]), .A3(n19), 
        .ZN(n23) );
  ND3D0BWP12T30P140 U25 ( .A1(n98), .A2(n115), .A3(n23), .ZN(n41) );
  OR2D0BWP12T30P140 U26 ( .A1(n41), .A2(devide_reg_i[8]), .Z(n3) );
  NR2D0BWP12T30P140 U27 ( .A1(n3), .A2(devide_reg_i[9]), .ZN(n45) );
  INVD0BWP12T30P140 U28 ( .I(n45), .ZN(n2) );
  NR3D0BWP12T30P140 U29 ( .A1(devide_reg_i[11]), .A2(devide_reg_i[10]), .A3(n2), .ZN(n46) );
  INVD0BWP12T30P140 U30 ( .I(devide_reg_i[12]), .ZN(n111) );
  ND2D0BWP12T30P140 U31 ( .A1(n46), .A2(n111), .ZN(n57) );
  INVD0BWP12T30P140 U32 ( .I(timer_5usec_count[14]), .ZN(n83) );
  INVD0BWP12T30P140 U33 ( .I(devide_reg_i[14]), .ZN(n24) );
  OAI22D0BWP12T30P140 U34 ( .A1(n83), .A2(devide_reg_i[14]), .B1(n24), .B2(
        timer_5usec_count[14]), .ZN(n53) );
  OA221D0BWP12T30P140 U35 ( .A1(n53), .A2(n75), .B1(devide_reg_i[13]), .B2(
        timer_5usec_count[13]), .C(timer_5usec_count[12]), .Z(n55) );
  INVD0BWP12T30P140 U36 ( .I(devide_reg_i[15]), .ZN(n100) );
  NR2D0BWP12T30P140 U37 ( .A1(timer_5usec_count[15]), .A2(n100), .ZN(n26) );
  INVD0BWP12T30P140 U38 ( .I(n57), .ZN(n1) );
  OAI211D0BWP12T30P140 U39 ( .A1(devide_reg_i[14]), .A2(n26), .B(n1), .C(n113), 
        .ZN(n52) );
  AOI21D0BWP12T30P140 U40 ( .A1(devide_reg_i[9]), .A2(n3), .B(n45), .ZN(n7) );
  INVD0BWP12T30P140 U41 ( .I(timer_5usec_count[10]), .ZN(n90) );
  INVD0BWP12T30P140 U42 ( .I(timer_5usec_count[11]), .ZN(n190) );
  INVD0BWP12T30P140 U43 ( .I(devide_reg_i[11]), .ZN(n110) );
  AOI22D0BWP12T30P140 U44 ( .A1(devide_reg_i[11]), .A2(timer_5usec_count[11]), 
        .B1(n190), .B2(n110), .ZN(n29) );
  AOI221D0BWP12T30P140 U45 ( .A1(devide_reg_i[10]), .A2(n90), .B1(n29), .B2(
        timer_5usec_count[10]), .C(n2), .ZN(n5) );
  ND2D0BWP12T30P140 U46 ( .A1(timer_5usec_count[8]), .A2(n41), .ZN(n40) );
  OAI22D0BWP12T30P140 U47 ( .A1(devide_reg_i[8]), .A2(n40), .B1(
        timer_5usec_count[8]), .B2(n3), .ZN(n4) );
  AOI211D0BWP12T30P140 U48 ( .A1(timer_5usec_count[9]), .A2(n7), .B(n5), .C(n4), .ZN(n6) );
  OAI21D0BWP12T30P140 U49 ( .A1(timer_5usec_count[9]), .A2(n7), .B(n6), .ZN(
        n51) );
  INVD0BWP12T30P140 U50 ( .I(timer_5usec_count[12]), .ZN(n64) );
  NR2D0BWP12T30P140 U51 ( .A1(n64), .A2(n46), .ZN(n49) );
  INVD0BWP12T30P140 U52 ( .I(devide_reg_i[10]), .ZN(n119) );
  AOI221D0BWP12T30P140 U53 ( .A1(devide_reg_i[10]), .A2(n90), .B1(n119), .B2(
        timer_5usec_count[10]), .C(n29), .ZN(n44) );
  INVD0BWP12T30P140 U54 ( .I(timer_5usec_count[1]), .ZN(n201) );
  INVD0BWP12T30P140 U55 ( .I(devide_reg_i[1]), .ZN(n103) );
  INVD0BWP12T30P140 U56 ( .I(devide_reg_i[0]), .ZN(n101) );
  AOI221D0BWP12T30P140 U57 ( .A1(devide_reg_i[1]), .A2(n201), .B1(n103), .B2(
        timer_5usec_count[1]), .C(n101), .ZN(n13) );
  INVD0BWP12T30P140 U58 ( .I(timer_5usec_count[3]), .ZN(n227) );
  INVD0BWP12T30P140 U59 ( .I(timer_5usec_count[4]), .ZN(n87) );
  INVD0BWP12T30P140 U60 ( .I(devide_reg_i[4]), .ZN(n95) );
  INVD0BWP12T30P140 U61 ( .I(timer_5usec_count[5]), .ZN(n198) );
  INVD0BWP12T30P140 U62 ( .I(devide_reg_i[5]), .ZN(n97) );
  AOI22D0BWP12T30P140 U63 ( .A1(devide_reg_i[5]), .A2(timer_5usec_count[5]), 
        .B1(n198), .B2(n97), .ZN(n28) );
  AOI221D0BWP12T30P140 U64 ( .A1(devide_reg_i[4]), .A2(n87), .B1(n95), .B2(
        timer_5usec_count[4]), .C(n28), .ZN(n8) );
  OAI21D0BWP12T30P140 U65 ( .A1(devide_reg_i[3]), .A2(n227), .B(n8), .ZN(n9)
         );
  OAI21D0BWP12T30P140 U66 ( .A1(devide_reg_i[3]), .A2(n31), .B(n9), .ZN(n12)
         );
  INVD0BWP12T30P140 U67 ( .I(n15), .ZN(n10) );
  ND2D0BWP12T30P140 U68 ( .A1(timer_5usec_count[2]), .A2(n10), .ZN(n14) );
  OAI211D0BWP12T30P140 U69 ( .A1(timer_5usec_count[2]), .A2(n10), .B(
        devide_reg_i[2]), .C(n14), .ZN(n11) );
  OAI211D0BWP12T30P140 U70 ( .A1(n13), .A2(timer_5usec_count[0]), .B(n12), .C(
        n11), .ZN(n39) );
  OAI22D0BWP12T30P140 U71 ( .A1(devide_reg_i[2]), .A2(n14), .B1(
        timer_5usec_count[2]), .B2(n31), .ZN(n38) );
  OA221D0BWP12T30P140 U72 ( .A1(n87), .A2(n28), .B1(timer_5usec_count[4]), 
        .B2(devide_reg_i[4]), .C(timer_5usec_count[3]), .Z(n20) );
  AOI22D0BWP12T30P140 U73 ( .A1(timer_5usec_count[15]), .A2(n100), .B1(n15), 
        .B2(n201), .ZN(n18) );
  NR2D0BWP12T30P140 U74 ( .A1(n103), .A2(n201), .ZN(n16) );
  OAI21D0BWP12T30P140 U75 ( .A1(devide_reg_i[0]), .A2(n16), .B(
        timer_5usec_count[0]), .ZN(n17) );
  OAI211D0BWP12T30P140 U76 ( .A1(n20), .A2(n19), .B(n18), .C(n17), .ZN(n37) );
  INVD0BWP12T30P140 U77 ( .I(timer_5usec_count[7]), .ZN(n194) );
  AOI22D0BWP12T30P140 U78 ( .A1(devide_reg_i[7]), .A2(timer_5usec_count[7]), 
        .B1(n194), .B2(n115), .ZN(n27) );
  AOI211D0BWP12T30P140 U79 ( .A1(timer_5usec_count[6]), .A2(n98), .B(n23), .C(
        n27), .ZN(n22) );
  INVD0BWP12T30P140 U80 ( .I(timer_5usec_count[6]), .ZN(n62) );
  MUX2ND0BWP12T30P140 U81 ( .I0(n27), .I1(devide_reg_i[6]), .S(n62), .ZN(n21)
         );
  CKMUX2D0BWP12T30P140 U82 ( .I0(n23), .I1(n22), .S(n21), .Z(n35) );
  ND2D0BWP12T30P140 U83 ( .A1(timer_5usec_count[14]), .A2(n24), .ZN(n25) );
  AOI22D0BWP12T30P140 U84 ( .A1(devide_reg_i[6]), .A2(n27), .B1(n26), .B2(n25), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U85 ( .A1(devide_reg_i[10]), .A2(n29), .B1(
        devide_reg_i[4]), .B2(n28), .ZN(n33) );
  ND2D0BWP12T30P140 U86 ( .A1(timer_5usec_count[3]), .A2(n31), .ZN(n30) );
  OAI211D0BWP12T30P140 U87 ( .A1(timer_5usec_count[3]), .A2(n31), .B(
        devide_reg_i[3]), .C(n30), .ZN(n32) );
  ND4D0BWP12T30P140 U88 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .ZN(n36) );
  NR4D0BWP12T30P140 U89 ( .A1(n39), .A2(n38), .A3(n37), .A4(n36), .ZN(n43) );
  OAI211D0BWP12T30P140 U90 ( .A1(timer_5usec_count[8]), .A2(n41), .B(
        devide_reg_i[8]), .C(n40), .ZN(n42) );
  OAI211D0BWP12T30P140 U91 ( .A1(n45), .A2(n44), .B(n43), .C(n42), .ZN(n48) );
  AOI211D0BWP12T30P140 U92 ( .A1(n46), .A2(n64), .B(n111), .C(n49), .ZN(n47)
         );
  AO211D0BWP12T30P140 U93 ( .A1(n111), .A2(n49), .B(n48), .C(n47), .Z(n50) );
  AOI211D0BWP12T30P140 U94 ( .A1(n53), .A2(n52), .B(n51), .C(n50), .ZN(n54) );
  OAI21D0BWP12T30P140 U95 ( .A1(n55), .A2(n57), .B(n54), .ZN(n56) );
  AOI21D0BWP12T30P140 U96 ( .A1(n58), .A2(n57), .B(n56), .ZN(n59) );
  NR2D0BWP12T30P140 U97 ( .A1(m1_state[0]), .A2(m1_state[2]), .ZN(n211) );
  ND2D0BWP12T30P140 U98 ( .A1(n211), .A2(m1_state[1]), .ZN(n185) );
  NR2D0BWP12T30P140 U99 ( .A1(n59), .A2(n185), .ZN(n226) );
  INVD0BWP12T30P140 U100 ( .I(n226), .ZN(n230) );
  INVD0BWP12T30P140 U101 ( .I(timer_5usec_count[2]), .ZN(n186) );
  ND2D0BWP12T30P140 U102 ( .A1(timer_5usec_count[1]), .A2(timer_5usec_count[0]), .ZN(n188) );
  NR2D0BWP12T30P140 U103 ( .A1(n186), .A2(n188), .ZN(n225) );
  ND2D0BWP12T30P140 U104 ( .A1(timer_5usec_count[3]), .A2(n225), .ZN(n89) );
  NR2D0BWP12T30P140 U105 ( .A1(n87), .A2(n89), .ZN(n197) );
  ND2D0BWP12T30P140 U106 ( .A1(timer_5usec_count[5]), .A2(n197), .ZN(n61) );
  INVD0BWP12T30P140 U107 ( .I(n59), .ZN(n208) );
  AO31D0BWP12T30P140 U108 ( .A1(timer_5usec_count[5]), .A2(n197), .A3(n208), 
        .B(n185), .Z(n60) );
  OAI32D0BWP12T30P140 U109 ( .A1(timer_5usec_count[6]), .A2(n230), .A3(n61), 
        .B1(n60), .B2(n62), .ZN(n154) );
  INVD0BWP12T30P140 U110 ( .I(timer_5usec_count[8]), .ZN(n182) );
  NR2D0BWP12T30P140 U111 ( .A1(n62), .A2(n61), .ZN(n193) );
  ND2D0BWP12T30P140 U112 ( .A1(timer_5usec_count[7]), .A2(n193), .ZN(n184) );
  NR2D0BWP12T30P140 U113 ( .A1(n182), .A2(n184), .ZN(n204) );
  ND2D0BWP12T30P140 U114 ( .A1(timer_5usec_count[9]), .A2(n204), .ZN(n92) );
  NR2D0BWP12T30P140 U115 ( .A1(n90), .A2(n92), .ZN(n189) );
  ND2D0BWP12T30P140 U116 ( .A1(timer_5usec_count[11]), .A2(n189), .ZN(n66) );
  NR2D0BWP12T30P140 U117 ( .A1(n64), .A2(n66), .ZN(n63) );
  ND3D0BWP12T30P140 U118 ( .A1(timer_5usec_count[13]), .A2(n226), .A3(n63), 
        .ZN(n82) );
  INVD0BWP12T30P140 U119 ( .I(n63), .ZN(n73) );
  NR2D0BWP12T30P140 U120 ( .A1(n208), .A2(n185), .ZN(n233) );
  AOI21D0BWP12T30P140 U121 ( .A1(n226), .A2(n73), .B(n233), .ZN(n76) );
  ND2D0BWP12T30P140 U122 ( .A1(n226), .A2(n75), .ZN(n74) );
  ND2D0BWP12T30P140 U123 ( .A1(n76), .A2(n74), .ZN(n79) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n82), .A2(n83), .B1(n83), .B2(n79), .ZN(n146) );
  AO31D0BWP12T30P140 U125 ( .A1(timer_5usec_count[11]), .A2(n189), .A3(n208), 
        .B(n185), .Z(n65) );
  OAI32D0BWP12T30P140 U126 ( .A1(timer_5usec_count[12]), .A2(n230), .A3(n66), 
        .B1(n65), .B2(n64), .ZN(n148) );
  ND2D0BWP12T30P140 U127 ( .A1(n214), .A2(m1_state[1]), .ZN(n84) );
  INVD0BWP12T30P140 U128 ( .I(n84), .ZN(n221) );
  INVD0BWP12T30P140 U129 ( .I(m1_state[0]), .ZN(n260) );
  NR2D0BWP12T30P140 U130 ( .A1(m1_state[2]), .A2(n260), .ZN(n128) );
  ND2D0BWP12T30P140 U131 ( .A1(n221), .A2(n128), .ZN(ps2_clk_en_o_) );
  INVD0BWP12T30P140 U132 ( .I(timer_60usec_count[1]), .ZN(n72) );
  ND2D0BWP12T30P140 U133 ( .A1(timer_60usec_count[0]), .A2(timer_done), .ZN(
        n314) );
  NR2D0BWP12T30P140 U134 ( .A1(n72), .A2(n314), .ZN(n78) );
  AO31D0BWP12T30P140 U135 ( .A1(timer_60usec_count[1]), .A2(
        timer_60usec_count[0]), .A3(timer_60usec_count[2]), .B(
        timer_60usec_count[3]), .Z(n67) );
  ND2D0BWP12T30P140 U136 ( .A1(timer_60usec_count[3]), .A2(
        timer_60usec_count[2]), .ZN(n85) );
  ND3D0BWP12T30P140 U137 ( .A1(n67), .A2(n85), .A3(timer_done), .ZN(n69) );
  INVD0BWP12T30P140 U138 ( .I(timer_60usec_count[3]), .ZN(n68) );
  INVD0BWP12T30P140 U139 ( .I(m1_state[2]), .ZN(n236) );
  INVD0BWP12T30P140 U140 ( .I(ps2_clk_en_o_), .ZN(n217) );
  AOI21D0BWP12T30P140 U141 ( .A1(n232), .A2(n236), .B(n217), .ZN(n313) );
  AOI221D0BWP12T30P140 U142 ( .A1(n78), .A2(n69), .B1(n68), .B2(n69), .C(n313), 
        .ZN(n164) );
  INVD0BWP12T30P140 U143 ( .I(bit_count[3]), .ZN(n288) );
  INVD0BWP12T30P140 U144 ( .I(bit_count[1]), .ZN(n298) );
  NR3D0BWP12T30P140 U145 ( .A1(bit_count[2]), .A2(n288), .A3(n298), .ZN(n213)
         );
  ND2D0BWP12T30P140 U146 ( .A1(bit_count[0]), .A2(n213), .ZN(n309) );
  INVD0BWP12T30P140 U147 ( .I(n309), .ZN(n292) );
  INVD0BWP12T30P140 U148 ( .I(q[6]), .ZN(n284) );
  INVD0BWP12T30P140 U149 ( .I(q[5]), .ZN(n240) );
  OR4D0BWP12T30P140 U150 ( .A1(n284), .A2(n240), .A3(q[1]), .A4(q[4]), .Z(n70)
         );
  NR4D0BWP12T30P140 U151 ( .A1(q[2]), .A2(q[3]), .A3(n309), .A4(n70), .ZN(n71)
         );
  ND4D0BWP12T30P140 U152 ( .A1(translate), .A2(q[7]), .A3(q[8]), .A4(n71), 
        .ZN(n308) );
  ND2D0BWP12T30P140 U153 ( .A1(n292), .A2(n308), .ZN(n271) );
  AO22D0BWP12T30P140 U154 ( .A1(n292), .A2(q[1]), .B1(rx_scan_code[0]), .B2(
        n271), .Z(n136) );
  AOI211D0BWP12T30P140 U155 ( .A1(n72), .A2(n314), .B(n78), .C(n313), .ZN(n167) );
  OAI22D0BWP12T30P140 U156 ( .A1(n76), .A2(n75), .B1(n74), .B2(n73), .ZN(n147)
         );
  NR2D0BWP12T30P140 U157 ( .A1(timer_60usec_count[2]), .A2(n78), .ZN(n77) );
  AOI211D0BWP12T30P140 U158 ( .A1(timer_60usec_count[2]), .A2(n78), .B(n313), 
        .C(n77), .ZN(n165) );
  AOI21D0BWP12T30P140 U159 ( .A1(n226), .A2(n83), .B(n79), .ZN(n81) );
  INVD0BWP12T30P140 U160 ( .I(timer_5usec_count[15]), .ZN(n80) );
  OAI32D0BWP12T30P140 U161 ( .A1(timer_5usec_count[15]), .A2(n83), .A3(n82), 
        .B1(n81), .B2(n80), .ZN(n145) );
  AO222D0BWP12T30P140 U162 ( .A1(tx_write_ack_o), .A2(tx_data[1]), .B1(q[3]), 
        .B2(n296), .C1(n283), .C2(q[2]), .Z(n177) );
  ND2D0BWP12T30P140 U163 ( .A1(m1_state[2]), .A2(n260), .ZN(n234) );
  NR2D0BWP12T30P140 U164 ( .A1(n84), .A2(n234), .ZN(n252) );
  INVD0BWP12T30P140 U165 ( .I(n252), .ZN(n220) );
  NR3D0BWP12T30P140 U166 ( .A1(timer_60usec_count[0]), .A2(
        timer_60usec_count[1]), .A3(n85), .ZN(n310) );
  INVD0BWP12T30P140 U167 ( .I(ps2_clk_s), .ZN(n219) );
  NR2D0BWP12T30P140 U168 ( .A1(n219), .A2(n243), .ZN(n210) );
  AOI31D0BWP12T30P140 U169 ( .A1(n310), .A2(n128), .A3(n210), .B(n296), .ZN(
        n86) );
  ND3D0BWP12T30P140 U170 ( .A1(n309), .A2(n220), .A3(n86), .ZN(n286) );
  INVD0BWP12T30P140 U171 ( .I(bit_count[0]), .ZN(n212) );
  AOI22D0BWP12T30P140 U172 ( .A1(bit_count[0]), .A2(n286), .B1(n287), .B2(n212), .ZN(n162) );
  AO31D0BWP12T30P140 U173 ( .A1(timer_5usec_count[3]), .A2(n225), .A3(n208), 
        .B(n185), .Z(n88) );
  OAI32D0BWP12T30P140 U174 ( .A1(timer_5usec_count[4]), .A2(n230), .A3(n89), 
        .B1(n88), .B2(n87), .ZN(n156) );
  AO31D0BWP12T30P140 U175 ( .A1(timer_5usec_count[9]), .A2(n204), .A3(n208), 
        .B(n185), .Z(n91) );
  OAI32D0BWP12T30P140 U176 ( .A1(timer_5usec_count[10]), .A2(n230), .A3(n92), 
        .B1(n91), .B2(n90), .ZN(n150) );
  OAI22D0BWP12T30P140 U177 ( .A1(n95), .A2(timer_5usec[4]), .B1(n94), .B2(
        timer_5usec[3]), .ZN(n93) );
  AOI221D0BWP12T30P140 U178 ( .A1(n95), .A2(timer_5usec[4]), .B1(
        timer_5usec[3]), .B2(n94), .C(n93), .ZN(n108) );
  OAI22D0BWP12T30P140 U179 ( .A1(n98), .A2(timer_5usec[6]), .B1(n97), .B2(
        timer_5usec[5]), .ZN(n96) );
  AOI221D0BWP12T30P140 U180 ( .A1(n98), .A2(timer_5usec[6]), .B1(
        timer_5usec[5]), .B2(n97), .C(n96), .ZN(n107) );
  OAI22D0BWP12T30P140 U181 ( .A1(n101), .A2(timer_5usec[0]), .B1(n100), .B2(
        timer_5usec[15]), .ZN(n99) );
  AOI221D0BWP12T30P140 U182 ( .A1(n101), .A2(timer_5usec[0]), .B1(
        timer_5usec[15]), .B2(n100), .C(n99), .ZN(n106) );
  OAI22D0BWP12T30P140 U183 ( .A1(n104), .A2(timer_5usec[2]), .B1(n103), .B2(
        timer_5usec[1]), .ZN(n102) );
  AOI221D0BWP12T30P140 U184 ( .A1(n104), .A2(timer_5usec[2]), .B1(
        timer_5usec[1]), .B2(n103), .C(n102), .ZN(n105) );
  ND4D0BWP12T30P140 U185 ( .A1(n108), .A2(n107), .A3(n106), .A4(n105), .ZN(
        n125) );
  OAI22D0BWP12T30P140 U186 ( .A1(n111), .A2(timer_5usec[12]), .B1(n110), .B2(
        timer_5usec[11]), .ZN(n109) );
  AOI221D0BWP12T30P140 U187 ( .A1(n111), .A2(timer_5usec[12]), .B1(
        timer_5usec[11]), .B2(n110), .C(n109), .ZN(n123) );
  INVD0BWP12T30P140 U188 ( .I(timer_5usec[14]), .ZN(n247) );
  OAI22D0BWP12T30P140 U189 ( .A1(n113), .A2(timer_5usec[13]), .B1(n247), .B2(
        devide_reg_i[14]), .ZN(n112) );
  AOI221D0BWP12T30P140 U190 ( .A1(n113), .A2(timer_5usec[13]), .B1(
        devide_reg_i[14]), .B2(n247), .C(n112), .ZN(n122) );
  INVD0BWP12T30P140 U191 ( .I(devide_reg_i[8]), .ZN(n116) );
  OAI22D0BWP12T30P140 U192 ( .A1(n116), .A2(timer_5usec[8]), .B1(n115), .B2(
        timer_5usec[7]), .ZN(n114) );
  AOI221D0BWP12T30P140 U193 ( .A1(n116), .A2(timer_5usec[8]), .B1(
        timer_5usec[7]), .B2(n115), .C(n114), .ZN(n121) );
  INVD0BWP12T30P140 U194 ( .I(devide_reg_i[9]), .ZN(n118) );
  OAI22D0BWP12T30P140 U195 ( .A1(n119), .A2(timer_5usec[10]), .B1(n118), .B2(
        timer_5usec[9]), .ZN(n117) );
  AOI221D0BWP12T30P140 U196 ( .A1(n119), .A2(timer_5usec[10]), .B1(
        timer_5usec[9]), .B2(n118), .C(n117), .ZN(n120) );
  ND4D0BWP12T30P140 U197 ( .A1(n123), .A2(n122), .A3(n121), .A4(n120), .ZN(
        n124) );
  NR2D0BWP12T30P140 U198 ( .A1(n125), .A2(n124), .ZN(n241) );
  NR2D0BWP12T30P140 U199 ( .A1(n313), .A2(reset), .ZN(n126) );
  CKMUX2D0BWP12T30P140 U200 ( .I0(timer_done), .I1(n241), .S(n126), .Z(n168)
         );
  ND2D0BWP12T30P140 U201 ( .A1(n211), .A2(n261), .ZN(n244) );
  INVD0BWP12T30P140 U202 ( .I(n244), .ZN(tx_error_no_keyboard_ack) );
  ND2D0BWP12T30P140 U203 ( .A1(n232), .A2(n128), .ZN(n259) );
  NR2D0BWP12T30P140 U204 ( .A1(ps2_clk_s), .A2(n259), .ZN(n127) );
  AOI211D0BWP12T30P140 U205 ( .A1(n211), .A2(n210), .B(n127), .C(
        tx_write_ack_o), .ZN(n237) );
  INVD0BWP12T30P140 U206 ( .I(ps2_data_s), .ZN(n282) );
  AOI22D0BWP12T30P140 U207 ( .A1(n217), .A2(n310), .B1(
        tx_error_no_keyboard_ack), .B2(n282), .ZN(n133) );
  OAI21D0BWP12T30P140 U208 ( .A1(n282), .A2(n220), .B(n244), .ZN(n131) );
  ND2D0BWP12T30P140 U209 ( .A1(n211), .A2(n221), .ZN(n242) );
  NR3D0BWP12T30P140 U210 ( .A1(n208), .A2(n219), .A3(n242), .ZN(n267) );
  ND3D0BWP12T30P140 U211 ( .A1(m1_state[1]), .A2(m1_state[3]), .A3(n128), .ZN(
        n258) );
  ND2D0BWP12T30P140 U212 ( .A1(m1_state[1]), .A2(m1_state[3]), .ZN(n130) );
  OAI21D0BWP12T30P140 U213 ( .A1(ps2_clk_s), .A2(n208), .B(n211), .ZN(n129) );
  OAI22D0BWP12T30P140 U214 ( .A1(n219), .A2(n258), .B1(n130), .B2(n129), .ZN(
        n216) );
  AOI211D0BWP12T30P140 U215 ( .A1(n219), .A2(n131), .B(n267), .C(n216), .ZN(
        n132) );
  ND3D0BWP12T30P140 U216 ( .A1(n237), .A2(n133), .A3(n132), .ZN(
        m1_next_state[3]) );
  AO31D0BWP12T30P140 U217 ( .A1(timer_5usec_count[7]), .A2(n193), .A3(n208), 
        .B(n185), .Z(n183) );
  OAI32D0BWP12T30P140 U218 ( .A1(timer_5usec_count[8]), .A2(n230), .A3(n184), 
        .B1(n183), .B2(n182), .ZN(n152) );
  AO31D0BWP12T30P140 U219 ( .A1(timer_5usec_count[0]), .A2(
        timer_5usec_count[1]), .A3(n208), .B(n185), .Z(n187) );
  OAI32D0BWP12T30P140 U220 ( .A1(timer_5usec_count[2]), .A2(n230), .A3(n188), 
        .B1(n187), .B2(n186), .ZN(n158) );
  INVD0BWP12T30P140 U221 ( .I(n189), .ZN(n192) );
  AOI21D0BWP12T30P140 U222 ( .A1(n226), .A2(n192), .B(n233), .ZN(n191) );
  OAI32D0BWP12T30P140 U223 ( .A1(timer_5usec_count[11]), .A2(n230), .A3(n192), 
        .B1(n191), .B2(n190), .ZN(n149) );
  INVD0BWP12T30P140 U224 ( .I(n193), .ZN(n196) );
  AOI21D0BWP12T30P140 U225 ( .A1(n226), .A2(n196), .B(n233), .ZN(n195) );
  OAI32D0BWP12T30P140 U226 ( .A1(timer_5usec_count[7]), .A2(n230), .A3(n196), 
        .B1(n195), .B2(n194), .ZN(n153) );
  INVD0BWP12T30P140 U227 ( .I(n197), .ZN(n200) );
  AOI21D0BWP12T30P140 U228 ( .A1(n226), .A2(n200), .B(n233), .ZN(n199) );
  OAI32D0BWP12T30P140 U229 ( .A1(timer_5usec_count[5]), .A2(n230), .A3(n200), 
        .B1(n199), .B2(n198), .ZN(n155) );
  INVD0BWP12T30P140 U230 ( .I(timer_5usec_count[0]), .ZN(n203) );
  AOI21D0BWP12T30P140 U231 ( .A1(n226), .A2(n203), .B(n233), .ZN(n202) );
  OAI32D0BWP12T30P140 U232 ( .A1(timer_5usec_count[1]), .A2(n203), .A3(n230), 
        .B1(n202), .B2(n201), .ZN(n159) );
  AO222D0BWP12T30P140 U233 ( .A1(tx_write_ack_o), .A2(tx_data[3]), .B1(q[5]), 
        .B2(n296), .C1(n283), .C2(q[4]), .Z(n175) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n230), .A2(n203), .B1(n203), .B2(n233), .ZN(
        n180) );
  INVD0BWP12T30P140 U235 ( .I(n271), .ZN(n285) );
  OA22D0BWP12T30P140 U236 ( .A1(n271), .A2(q[7]), .B1(rx_scan_code[6]), .B2(
        n285), .Z(n142) );
  INVD0BWP12T30P140 U237 ( .I(n204), .ZN(n207) );
  AOI21D0BWP12T30P140 U238 ( .A1(n226), .A2(n207), .B(n233), .ZN(n206) );
  INVD0BWP12T30P140 U239 ( .I(timer_5usec_count[9]), .ZN(n205) );
  OAI32D0BWP12T30P140 U240 ( .A1(timer_5usec_count[9]), .A2(n230), .A3(n207), 
        .B1(n206), .B2(n205), .ZN(n151) );
  NR2D0BWP12T30P140 U241 ( .A1(n208), .A2(n219), .ZN(n224) );
  NR2D0BWP12T30P140 U242 ( .A1(n260), .A2(n236), .ZN(n231) );
  AOI32D0BWP12T30P140 U243 ( .A1(n211), .A2(n210), .A3(n209), .B1(n231), .B2(
        n210), .ZN(n218) );
  ND2D0BWP12T30P140 U244 ( .A1(n213), .A2(n212), .ZN(n253) );
  AOI211D0BWP12T30P140 U245 ( .A1(n214), .A2(n253), .B(m1_state[1]), .C(n234), 
        .ZN(n215) );
  INR4D0BWP12T30P140 U246 ( .A1(n218), .B1(n217), .B2(n216), .B3(n215), .ZN(
        n223) );
  ND3D0BWP12T30P140 U247 ( .A1(m1_state[0]), .A2(m1_state[2]), .A3(n221), .ZN(
        n257) );
  AOI22D0BWP12T30P140 U248 ( .A1(ps2_clk_s), .A2(n220), .B1(n257), .B2(n219), 
        .ZN(n222) );
  OAI211D0BWP12T30P140 U249 ( .A1(n282), .A2(n222), .B(n221), .C(m1_state[2]), 
        .ZN(n239) );
  OAI211D0BWP12T30P140 U250 ( .A1(n224), .A2(n242), .B(n223), .C(n239), .ZN(
        m1_next_state[1]) );
  AO22D0BWP12T30P140 U251 ( .A1(n292), .A2(q[4]), .B1(rx_scan_code[3]), .B2(
        n271), .Z(n139) );
  AO22D0BWP12T30P140 U252 ( .A1(n292), .A2(q[3]), .B1(rx_scan_code[2]), .B2(
        n271), .Z(n138) );
  INVD0BWP12T30P140 U253 ( .I(n225), .ZN(n229) );
  AOI21D0BWP12T30P140 U254 ( .A1(n226), .A2(n229), .B(n233), .ZN(n228) );
  OAI32D0BWP12T30P140 U255 ( .A1(timer_5usec_count[3]), .A2(n230), .A3(n229), 
        .B1(n228), .B2(n227), .ZN(n157) );
  AO22D0BWP12T30P140 U256 ( .A1(n292), .A2(q[2]), .B1(rx_scan_code[1]), .B2(
        n271), .Z(n137) );
  AOI22D0BWP12T30P140 U257 ( .A1(n233), .A2(m1_state[3]), .B1(n232), .B2(n231), 
        .ZN(n256) );
  AOI21D0BWP12T30P140 U258 ( .A1(n256), .A2(n258), .B(ps2_clk_s), .ZN(n235) );
  NR2D0BWP12T30P140 U259 ( .A1(n243), .A2(n234), .ZN(n254) );
  AOI211D0BWP12T30P140 U260 ( .A1(n296), .A2(n236), .B(n235), .C(n254), .ZN(
        n238) );
  ND3D0BWP12T30P140 U261 ( .A1(n239), .A2(n238), .A3(n237), .ZN(
        m1_next_state[2]) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n285), .A2(n240), .B1(rx_scan_code[4]), .B2(
        n285), .ZN(n140) );
  OA22D0BWP12T30P140 U263 ( .A1(n271), .A2(q[8]), .B1(rx_scan_code[7]), .B2(
        n285), .Z(n143) );
  NR2D0BWP12T30P140 U264 ( .A1(n313), .A2(n241), .ZN(n307) );
  ND2D0BWP12T30P140 U265 ( .A1(timer_5usec[1]), .A2(timer_5usec[0]), .ZN(n273)
         );
  OA211D0BWP12T30P140 U266 ( .A1(timer_5usec[1]), .A2(timer_5usec[0]), .B(n307), .C(n273), .Z(N196) );
  INR3D1BWP12T30P140 U267 ( .A1(n242), .B1(m1_state[2]), .B2(n296), .ZN(n246)
         );
  AOI21D0BWP12T30P140 U268 ( .A1(m1_state[2]), .A2(n243), .B(q[0]), .ZN(n245)
         );
  OAI211D0BWP12T30P140 U269 ( .A1(n246), .A2(n245), .B(n313), .C(n244), .ZN(
        ps2_data_en_o_) );
  MAOI22D0BWP12T30P140 U270 ( .A1(rx_data_ready), .A2(rx_read), .B1(n285), 
        .B2(rx_data_ready), .ZN(m2_next_state) );
  INVD0BWP12T30P140 U271 ( .I(timer_5usec[12]), .ZN(n295) );
  INVD0BWP12T30P140 U272 ( .I(timer_5usec[10]), .ZN(n250) );
  INVD0BWP12T30P140 U273 ( .I(timer_5usec[8]), .ZN(n302) );
  INVD0BWP12T30P140 U274 ( .I(timer_5usec[6]), .ZN(n269) );
  INVD0BWP12T30P140 U275 ( .I(timer_5usec[4]), .ZN(n306) );
  INVD0BWP12T30P140 U276 ( .I(timer_5usec[2]), .ZN(n274) );
  NR2D0BWP12T30P140 U277 ( .A1(n274), .A2(n273), .ZN(n272) );
  ND2D0BWP12T30P140 U278 ( .A1(timer_5usec[3]), .A2(n272), .ZN(n305) );
  NR2D0BWP12T30P140 U279 ( .A1(n306), .A2(n305), .ZN(n304) );
  ND2D0BWP12T30P140 U280 ( .A1(timer_5usec[5]), .A2(n304), .ZN(n270) );
  NR2D0BWP12T30P140 U281 ( .A1(n269), .A2(n270), .ZN(n268) );
  ND2D0BWP12T30P140 U282 ( .A1(timer_5usec[7]), .A2(n268), .ZN(n301) );
  NR2D0BWP12T30P140 U283 ( .A1(n302), .A2(n301), .ZN(n300) );
  ND2D0BWP12T30P140 U284 ( .A1(timer_5usec[9]), .A2(n300), .ZN(n251) );
  NR2D0BWP12T30P140 U285 ( .A1(n250), .A2(n251), .ZN(n249) );
  ND2D0BWP12T30P140 U286 ( .A1(timer_5usec[11]), .A2(n249), .ZN(n294) );
  NR2D0BWP12T30P140 U287 ( .A1(n295), .A2(n294), .ZN(n293) );
  ND2D0BWP12T30P140 U288 ( .A1(timer_5usec[13]), .A2(n293), .ZN(n248) );
  NR2D0BWP12T30P140 U289 ( .A1(n247), .A2(n248), .ZN(n280) );
  INVD0BWP12T30P140 U290 ( .I(n307), .ZN(n303) );
  AOI211D0BWP12T30P140 U291 ( .A1(n247), .A2(n248), .B(n280), .C(n303), .ZN(
        N209) );
  AO222D0BWP12T30P140 U292 ( .A1(tx_write_ack_o), .A2(tx_data[7]), .B1(q[8]), 
        .B2(n283), .C1(q[9]), .C2(n296), .Z(n171) );
  AO222D0BWP12T30P140 U293 ( .A1(tx_write_ack_o), .A2(tx_data[6]), .B1(q[7]), 
        .B2(n283), .C1(q[8]), .C2(n296), .Z(n172) );
  OA211D0BWP12T30P140 U294 ( .A1(timer_5usec[13]), .A2(n293), .B(n307), .C(
        n248), .Z(N208) );
  OA211D0BWP12T30P140 U295 ( .A1(timer_5usec[11]), .A2(n249), .B(n307), .C(
        n294), .Z(N206) );
  AOI211D0BWP12T30P140 U296 ( .A1(n250), .A2(n251), .B(n249), .C(n303), .ZN(
        N205) );
  OA211D0BWP12T30P140 U297 ( .A1(timer_5usec[9]), .A2(n300), .B(n307), .C(n251), .Z(N204) );
  AOI22D0BWP12T30P140 U298 ( .A1(n254), .A2(n253), .B1(n252), .B2(n282), .ZN(
        n255) );
  AOI21D0BWP12T30P140 U299 ( .A1(n256), .A2(n255), .B(ps2_clk_s), .ZN(n266) );
  OAI211D0BWP12T30P140 U300 ( .A1(tx_write), .A2(n259), .B(n258), .C(n257), 
        .ZN(n265) );
  OAI211D0BWP12T30P140 U301 ( .A1(m1_state[1]), .A2(n260), .B(m1_state[3]), 
        .C(m1_state[2]), .ZN(n263) );
  ND4D0BWP12T30P140 U302 ( .A1(ps2_clk_s), .A2(ps2_data_s), .A3(n261), .A4(
        n260), .ZN(n262) );
  OAI211D0BWP12T30P140 U303 ( .A1(n310), .A2(ps2_clk_en_o_), .B(n263), .C(n262), .ZN(n264) );
  OR4D0BWP12T30P140 U304 ( .A1(n267), .A2(n266), .A3(n265), .A4(n264), .Z(
        m1_next_state[0]) );
  OA211D0BWP12T30P140 U305 ( .A1(timer_5usec[7]), .A2(n268), .B(n307), .C(n301), .Z(N202) );
  AOI211D0BWP12T30P140 U306 ( .A1(n269), .A2(n270), .B(n268), .C(n303), .ZN(
        N201) );
  OA211D0BWP12T30P140 U307 ( .A1(timer_5usec[5]), .A2(n304), .B(n307), .C(n270), .Z(N200) );
  CKMUX2D0BWP12T30P140 U308 ( .I0(hold_released), .I1(rx_released), .S(n271), 
        .Z(n135) );
  OA211D0BWP12T30P140 U309 ( .A1(timer_5usec[3]), .A2(n272), .B(n307), .C(n305), .Z(N198) );
  AOI211D0BWP12T30P140 U310 ( .A1(n274), .A2(n273), .B(n272), .C(n303), .ZN(
        N197) );
  INVD0BWP12T30P140 U311 ( .I(tx_data[5]), .ZN(n275) );
  MUX2ND0BWP12T30P140 U312 ( .I0(n275), .I1(tx_data[5]), .S(tx_data[4]), .ZN(
        n277) );
  XOR4D0BWP12T30P140 U313 ( .A1(tx_data[3]), .A2(tx_data[2]), .A3(tx_data[1]), 
        .A4(tx_data[0]), .Z(n276) );
  XNR4D0BWP12T30P140 U314 ( .A1(tx_data[7]), .A2(tx_data[6]), .A3(n277), .A4(
        n276), .ZN(n278) );
  AO222D0BWP12T30P140 U315 ( .A1(n278), .A2(tx_write_ack_o), .B1(n283), .B2(
        q[9]), .C1(n296), .C2(q[10]), .Z(n170) );
  AO222D0BWP12T30P140 U316 ( .A1(tx_write_ack_o), .A2(tx_data[4]), .B1(q[5]), 
        .B2(n283), .C1(q[6]), .C2(n296), .Z(n174) );
  OAI21D0BWP12T30P140 U317 ( .A1(timer_5usec[15]), .A2(n280), .B(n307), .ZN(
        n279) );
  AOI21D0BWP12T30P140 U318 ( .A1(timer_5usec[15]), .A2(n280), .B(n279), .ZN(
        N210) );
  AOI21D0BWP12T30P140 U319 ( .A1(q[10]), .A2(n287), .B(tx_write_ack_o), .ZN(
        n281) );
  OAI21D0BWP12T30P140 U320 ( .A1(n282), .A2(n287), .B(n281), .ZN(n169) );
  AO22D0BWP12T30P140 U321 ( .A1(n296), .A2(q[1]), .B1(n283), .B2(q[0]), .Z(
        n178) );
  AO222D0BWP12T30P140 U322 ( .A1(n296), .A2(q[7]), .B1(tx_data[5]), .B2(
        tx_write_ack_o), .C1(n283), .C2(q[6]), .Z(n173) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n285), .A2(n284), .B1(rx_scan_code[5]), .B2(
        n285), .ZN(n141) );
  INVD0BWP12T30P140 U324 ( .I(bit_count[2]), .ZN(n289) );
  ND3D0BWP12T30P140 U325 ( .A1(bit_count[0]), .A2(bit_count[1]), .A3(n296), 
        .ZN(n291) );
  OAI21D0BWP12T30P140 U326 ( .A1(bit_count[0]), .A2(n287), .B(n286), .ZN(n297)
         );
  AOI21D0BWP12T30P140 U327 ( .A1(n296), .A2(n298), .B(n297), .ZN(n290) );
  OAI32D0BWP12T30P140 U328 ( .A1(bit_count[3]), .A2(n289), .A3(n291), .B1(n290), .B2(n288), .ZN(n163) );
  OAI32D0BWP12T30P140 U329 ( .A1(bit_count[2]), .A2(n292), .A3(n291), .B1(n290), .B2(n289), .ZN(n161) );
  AOI211D0BWP12T30P140 U330 ( .A1(n295), .A2(n294), .B(n293), .C(n303), .ZN(
        N207) );
  ND2D0BWP12T30P140 U331 ( .A1(bit_count[0]), .A2(n296), .ZN(n299) );
  MAOI22D0BWP12T30P140 U332 ( .A1(n299), .A2(n298), .B1(n298), .B2(n297), .ZN(
        n160) );
  AOI211D0BWP12T30P140 U333 ( .A1(n302), .A2(n301), .B(n300), .C(n303), .ZN(
        N203) );
  AOI211D0BWP12T30P140 U334 ( .A1(n306), .A2(n305), .B(n304), .C(n303), .ZN(
        N199) );
  CKBD0BWP12T30P140 U335 ( .I(clk), .Z(n320) );
  CKBD0BWP12T30P140 U336 ( .I(clk), .Z(n317) );
  CKBD0BWP12T30P140 U337 ( .I(clk), .Z(n318) );
  CKBD0BWP12T30P140 U338 ( .I(clk), .Z(n319) );
  INVD0BWP12T30P140 U339 ( .I(reset), .ZN(n134) );
  CKBD0BWP12T30P140 U340 ( .I(n134), .Z(n315) );
  CKBD0BWP12T30P140 U341 ( .I(n134), .Z(n316) );
  ND2D0BWP12T30P140 U342 ( .A1(timer_5usec[0]), .A2(n307), .ZN(n181) );
  IOA21D0BWP12T30P140 U343 ( .A1(hold_released), .A2(n309), .B(n308), .ZN(n144) );
  INVD0BWP12T30P140 U344 ( .I(n310), .ZN(n311) );
  AOI21D0BWP12T30P140 U345 ( .A1(timer_done), .A2(n311), .B(
        timer_60usec_count[0]), .ZN(n312) );
  INR3D1BWP12T30P140 U346 ( .A1(n314), .B1(n313), .B2(n312), .ZN(n166) );
endmodule


module ps2_wb_if ( wb_clk_i, wb_rst_i, wb_cyc_i, wb_stb_i, wb_we_i, wb_sel_i, 
        wb_adr_i, wb_dat_i, wb_dat_o, wb_ack_o, wb_int_o, tx_kbd_write_ack_i, 
        tx_kbd_data_o, tx_kbd_write_o, rx_scancode_i, rx_kbd_data_ready_i, 
        rx_kbd_read_o, translate_o, ps2_kbd_clk_i, devide_reg_o, 
        inhibit_kbd_if_o );
  input [3:0] wb_sel_i;
  input [3:0] wb_adr_i;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  output [7:0] tx_kbd_data_o;
  input [7:0] rx_scancode_i;
  output [15:0] devide_reg_o;
  input wb_clk_i, wb_rst_i, wb_cyc_i, wb_stb_i, wb_we_i, tx_kbd_write_ack_i,
         rx_kbd_data_ready_i, ps2_kbd_clk_i;
  output wb_ack_o, wb_int_o, tx_kbd_write_o, rx_kbd_read_o, translate_o,
         inhibit_kbd_if_o;
  wire   read_input_buffer_reg, read_input_buffer, write_output_buffer_reg,
         write_output_buffer, read_status_register_reg, read_status_register,
         send_command_reg, send_command, write_devide_reg0, write_devide0,
         write_devide_reg1, write_devide1, command_byte_4_, command_byte_0,
         write_output_buffer_reg_previous, current_command_valid,
         cyc_i_previous, stb_i_previous, N256, N257, N259, N267,
         input_buffer_filled_from_command, N292, n139, n184, n186, n188, n190,
         n192, n194, n196, n198, n200, n202, n204, n206, n208, n210, n212,
         n214, n216, n218, n220, n222, n224, n226, n228, n230, n232, n234,
         n236, n238, n240, n242, n244, n246, n248, n250, n252, n254, n256,
         n258, n260, n262, n264, n266, n268, n270, n272, n274, n276, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n156, n157, n158, n159, n160, n161,
         n162, n163, n164;
  wire   [15:0] wb_dat_i_sampled;
  wire   [2:0] status_byte;
  wire   [7:0] current_command;
  wire   [7:0] input_buffer;

  DFSNQD1BWP12T30P140 enable1_reg ( .D(n308), .CP(n164), .SDN(n139), .Q(
        command_byte_4_) );
  DFCNQD1BWP12T30P140 wb_int_o_reg ( .D(N292), .CP(n164), .CDN(n158), .Q(
        wb_int_o) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_17_ ( .D(n283), .CP(n164), .CDN(n139), .Q(
        wb_dat_o[17]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_25_ ( .D(n282), .CP(n164), .CDN(n158), .Q(
        wb_dat_o[25]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(n280), .CP(n164), .CDN(n139), .Q(
        wb_dat_o[16]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_24_ ( .D(n279), .CP(n164), .CDN(n139), .Q(
        wb_dat_o[24]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_1_ ( .D(n284), .CP(n164), .CDN(n158), 
        .Q(input_buffer[1]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_0_ ( .D(n281), .CP(n164), .CDN(n158), 
        .Q(input_buffer[0]) );
  DFCNQD1BWP12T30P140 interrupt1_reg ( .D(n306), .CP(n162), .CDN(n156), .Q(
        command_byte_0) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_23_ ( .D(n301), .CP(n162), .CDN(n158), .Q(
        wb_dat_o[23]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_15_ ( .D(n300), .CP(n162), .CDN(n159), .Q(
        wb_dat_o[31]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_22_ ( .D(n298), .CP(n162), .CDN(n156), .Q(
        wb_dat_o[22]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_14_ ( .D(n297), .CP(n162), .CDN(n159), .Q(
        wb_dat_o[30]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_21_ ( .D(n295), .CP(n163), .CDN(n159), .Q(
        wb_dat_o[21]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_13_ ( .D(n294), .CP(n163), .CDN(n158), .Q(
        wb_dat_o[29]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_20_ ( .D(n292), .CP(n163), .CDN(n158), .Q(
        wb_dat_o[20]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_12_ ( .D(n291), .CP(n163), .CDN(n158), .Q(
        wb_dat_o[28]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_19_ ( .D(n289), .CP(n163), .CDN(n139), .Q(
        wb_dat_o[19]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_11_ ( .D(n288), .CP(n163), .CDN(n158), .Q(
        wb_dat_o[27]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_18_ ( .D(n286), .CP(n163), .CDN(n139), .Q(
        wb_dat_o[18]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_10_ ( .D(n285), .CP(n163), .CDN(n139), .Q(
        wb_dat_o[26]) );
  DFCNQD1BWP12T30P140 cyc_i_previous_reg ( .D(N256), .CP(n161), .CDN(n157), 
        .Q(cyc_i_previous) );
  DFCNQD1BWP12T30P140 stb_i_previous_reg ( .D(N257), .CP(n161), .CDN(n159), 
        .Q(stb_i_previous) );
  DFCNQD1BWP12T30P140 input_buffer_reg_2_ ( .D(n287), .CP(n163), .CDN(n158), 
        .Q(input_buffer[2]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_4_ ( .D(n293), .CP(n163), .CDN(n158), 
        .Q(input_buffer[4]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_7_ ( .D(n302), .CP(n162), .CDN(n139), 
        .Q(input_buffer[7]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_6_ ( .D(n299), .CP(n162), .CDN(n158), 
        .Q(input_buffer[6]) );
  DFCNQD1BWP12T30P140 input_buffer_reg_3_ ( .D(n290), .CP(n163), .CDN(n158), 
        .Q(input_buffer[3]) );
  DFCNQD1BWP12T30P140 input_buffer_filled_from_command_reg ( .D(n303), .CP(
        n162), .CDN(n139), .Q(input_buffer_filled_from_command) );
  DFCNQD1BWP12T30P140 input_buffer_reg_5_ ( .D(n296), .CP(n163), .CDN(n158), 
        .Q(input_buffer[5]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_7_ ( .D(n262), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[7]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_6_ ( .D(n260), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[6]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_5_ ( .D(n258), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[5]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_4_ ( .D(n256), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[4]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_3_ ( .D(n254), .CP(n162), .CDN(n159), .Q(wb_dat_i_sampled[3]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_2_ ( .D(n252), .CP(n164), .CDN(n139), .Q(wb_dat_i_sampled[2]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_1_ ( .D(n250), .CP(n162), .CDN(n159), .Q(wb_dat_i_sampled[1]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_0_ ( .D(n248), .CP(n163), .CDN(n139), .Q(wb_dat_i_sampled[0]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_15_ ( .D(n278), .CP(n161), .CDN(
        n156), .Q(wb_dat_i_sampled[15]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_14_ ( .D(n276), .CP(n160), .CDN(
        n156), .Q(wb_dat_i_sampled[14]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_13_ ( .D(n274), .CP(n160), .CDN(
        n156), .Q(wb_dat_i_sampled[13]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_12_ ( .D(n272), .CP(n160), .CDN(
        n156), .Q(wb_dat_i_sampled[12]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_11_ ( .D(n270), .CP(n160), .CDN(
        n156), .Q(wb_dat_i_sampled[11]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_10_ ( .D(n268), .CP(n160), .CDN(
        n156), .Q(wb_dat_i_sampled[10]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_9_ ( .D(n266), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[9]) );
  DFCNQD1BWP12T30P140 wb_dat_i_sampled_reg_8_ ( .D(n264), .CP(n160), .CDN(n156), .Q(wb_dat_i_sampled[8]) );
  DFCNQD1BWP12T30P140 write_output_buffer_reg_previous_reg ( .D(
        write_output_buffer_reg), .CP(n161), .CDN(n159), .Q(
        write_output_buffer_reg_previous) );
  DFCNQD1BWP12T30P140 current_command_reg_0_ ( .D(n246), .CP(n161), .CDN(n159), 
        .Q(current_command[0]) );
  DFCNQD1BWP12T30P140 current_command_reg_7_ ( .D(n244), .CP(n160), .CDN(n139), 
        .Q(current_command[7]) );
  DFCNQD1BWP12T30P140 system_reg ( .D(n305), .CP(n162), .CDN(n139), .Q(
        status_byte[2]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_15_ ( .D(n214), .CP(wb_clk_i), .CDN(n157), 
        .Q(devide_reg_o[15]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_12_ ( .D(n208), .CP(n164), .CDN(n157), 
        .Q(devide_reg_o[12]) );
  DFCNQD1BWP12T30P140 current_command_reg_5_ ( .D(n240), .CP(n163), .CDN(n159), 
        .Q(current_command[5]) );
  DFCNQD1BWP12T30P140 current_command_reg_6_ ( .D(n242), .CP(n164), .CDN(n159), 
        .Q(current_command[6]) );
  DFCNQD1BWP12T30P140 inhibit_kbd_if_o_reg ( .D(n304), .CP(n162), .CDN(n156), 
        .Q(inhibit_kbd_if_o) );
  DFCNQD1BWP12T30P140 output_buffer_full_reg ( .D(N267), .CP(n162), .CDN(n158), 
        .Q(tx_kbd_write_o) );
  DFCNQD1BWP12T30P140 devide_reg_reg_7_ ( .D(n198), .CP(n160), .CDN(n139), .Q(
        devide_reg_o[7]) );
  DFCNQD1BWP12T30P140 input_buffer_full_reg ( .D(n310), .CP(n161), .CDN(n157), 
        .Q(status_byte[0]) );
  DFCNQD1BWP12T30P140 current_command_reg_4_ ( .D(n238), .CP(n162), .CDN(n159), 
        .Q(current_command[4]) );
  DFCNQD1BWP12T30P140 wb_ack_o_reg ( .D(N259), .CP(n160), .CDN(n156), .Q(
        wb_ack_o) );
  DFCNQD1BWP12T30P140 output_buffer_reg_2_ ( .D(n220), .CP(n162), .CDN(n157), 
        .Q(tx_kbd_data_o[2]) );
  DFCNQD1BWP12T30P140 current_command_reg_2_ ( .D(n234), .CP(n163), .CDN(n159), 
        .Q(current_command[2]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_9_ ( .D(n202), .CP(wb_clk_i), .CDN(n139), 
        .Q(devide_reg_o[9]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_13_ ( .D(n210), .CP(n163), .CDN(n157), 
        .Q(devide_reg_o[13]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_2_ ( .D(n188), .CP(n164), .CDN(n159), .Q(
        devide_reg_o[2]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_6_ ( .D(n196), .CP(n162), .CDN(n159), .Q(
        devide_reg_o[6]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_1_ ( .D(n186), .CP(n163), .CDN(n158), .Q(
        devide_reg_o[1]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_0_ ( .D(n184), .CP(n161), .CDN(n159), .Q(
        devide_reg_o[0]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_11_ ( .D(n206), .CP(n161), .CDN(n157), 
        .Q(devide_reg_o[11]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_5_ ( .D(n194), .CP(n160), .CDN(n158), .Q(
        devide_reg_o[5]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_5_ ( .D(n226), .CP(n161), .CDN(n157), 
        .Q(tx_kbd_data_o[5]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_1_ ( .D(n218), .CP(n160), .CDN(n157), 
        .Q(tx_kbd_data_o[1]) );
  DFCNQD1BWP12T30P140 current_command_reg_3_ ( .D(n236), .CP(n161), .CDN(n159), 
        .Q(current_command[3]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_6_ ( .D(n228), .CP(n160), .CDN(n157), 
        .Q(tx_kbd_data_o[6]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_3_ ( .D(n222), .CP(n164), .CDN(n157), 
        .Q(tx_kbd_data_o[3]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_0_ ( .D(n216), .CP(n164), .CDN(n157), 
        .Q(tx_kbd_data_o[0]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_3_ ( .D(n190), .CP(n164), .CDN(n156), .Q(
        devide_reg_o[3]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_8_ ( .D(n200), .CP(n162), .CDN(n156), .Q(
        devide_reg_o[8]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_7_ ( .D(n230), .CP(n164), .CDN(n159), 
        .Q(tx_kbd_data_o[7]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_14_ ( .D(n212), .CP(n164), .CDN(n157), 
        .Q(devide_reg_o[14]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_10_ ( .D(n204), .CP(n163), .CDN(n157), 
        .Q(devide_reg_o[10]) );
  DFCNQD1BWP12T30P140 devide_reg_reg_4_ ( .D(n192), .CP(n161), .CDN(n139), .Q(
        devide_reg_o[4]) );
  DFCNQD1BWP12T30P140 output_buffer_reg_4_ ( .D(n224), .CP(n164), .CDN(n157), 
        .Q(tx_kbd_data_o[4]) );
  DFCNQD1BWP12T30P140 current_command_reg_1_ ( .D(n232), .CP(n160), .CDN(n159), 
        .Q(current_command[1]) );
  DFCNQD1BWP12T30P140 read_status_register_reg_reg ( .D(read_status_register), 
        .CP(n161), .CDN(n158), .Q(read_status_register_reg) );
  DFCNQD1BWP12T30P140 read_input_buffer_reg_reg ( .D(read_input_buffer), .CP(
        n161), .CDN(n157), .Q(read_input_buffer_reg) );
  DFCNQD1BWP12T30P140 current_command_valid_reg ( .D(n309), .CP(n161), .CDN(
        n139), .Q(current_command_valid) );
  DFCNQD1BWP12T30P140 send_command_reg_reg ( .D(send_command), .CP(n161), 
        .CDN(n158), .Q(send_command_reg) );
  DFCNQD1BWP12T30P140 write_devide_reg0_reg ( .D(write_devide0), .CP(n161), 
        .CDN(n157), .Q(write_devide_reg0) );
  DFCNQD1BWP12T30P140 translate_o_reg ( .D(n307), .CP(n162), .CDN(n157), .Q(
        translate_o) );
  DFCNQD1BWP12T30P140 write_devide_reg1_reg ( .D(write_devide1), .CP(n161), 
        .CDN(n157), .Q(write_devide_reg1) );
  DFCNQD1BWP12T30P140 write_output_buffer_reg_reg ( .D(write_output_buffer), 
        .CP(n161), .CDN(n156), .Q(write_output_buffer_reg) );
  ND3D1BWP12T30P140 U3 ( .A1(wb_we_i), .A2(wb_stb_i), .A3(wb_cyc_i), .ZN(n126)
         );
  CKBD0BWP12T30P140 U4 ( .I(wb_dat_o[16]), .Z(wb_dat_o[0]) );
  CKBD0BWP12T30P140 U5 ( .I(wb_dat_o[17]), .Z(wb_dat_o[1]) );
  CKBD0BWP12T30P140 U6 ( .I(wb_dat_o[18]), .Z(wb_dat_o[2]) );
  CKBD0BWP12T30P140 U7 ( .I(wb_dat_o[19]), .Z(wb_dat_o[3]) );
  CKBD0BWP12T30P140 U8 ( .I(wb_dat_o[20]), .Z(wb_dat_o[4]) );
  CKBD0BWP12T30P140 U9 ( .I(wb_dat_o[21]), .Z(wb_dat_o[5]) );
  CKBD0BWP12T30P140 U10 ( .I(wb_dat_o[22]), .Z(wb_dat_o[6]) );
  CKBD0BWP12T30P140 U11 ( .I(wb_dat_o[23]), .Z(wb_dat_o[7]) );
  CKBD0BWP12T30P140 U12 ( .I(wb_dat_o[24]), .Z(wb_dat_o[8]) );
  CKBD0BWP12T30P140 U13 ( .I(wb_dat_o[25]), .Z(wb_dat_o[9]) );
  CKBD0BWP12T30P140 U14 ( .I(wb_dat_o[26]), .Z(wb_dat_o[10]) );
  CKBD0BWP12T30P140 U15 ( .I(wb_dat_o[27]), .Z(wb_dat_o[11]) );
  CKBD0BWP12T30P140 U16 ( .I(wb_dat_o[28]), .Z(wb_dat_o[12]) );
  CKBD0BWP12T30P140 U17 ( .I(wb_dat_o[29]), .Z(wb_dat_o[13]) );
  CKBD0BWP12T30P140 U18 ( .I(wb_dat_o[30]), .Z(wb_dat_o[14]) );
  CKBD0BWP12T30P140 U19 ( .I(wb_dat_o[31]), .Z(wb_dat_o[15]) );
  INVD0BWP12T30P140 U20 ( .I(write_devide_reg0), .ZN(n61) );
  OA22D0BWP12T30P140 U21 ( .A1(n61), .A2(wb_dat_i_sampled[2]), .B1(
        devide_reg_o[2]), .B2(write_devide_reg0), .Z(n188) );
  INVD0BWP12T30P140 U22 ( .I(wb_dat_i_sampled[9]), .ZN(n55) );
  MAOI22D0BWP12T30P140 U23 ( .A1(write_devide_reg1), .A2(n55), .B1(
        devide_reg_o[9]), .B2(write_devide_reg1), .ZN(n202) );
  INVD0BWP12T30P140 U24 ( .I(wb_dat_i_sampled[10]), .ZN(n51) );
  INVD0BWP12T30P140 U25 ( .I(current_command[2]), .ZN(n33) );
  INVD0BWP12T30P140 U26 ( .I(send_command_reg), .ZN(n79) );
  AOI22D0BWP12T30P140 U27 ( .A1(send_command_reg), .A2(n51), .B1(n33), .B2(n79), .ZN(n234) );
  OA22D0BWP12T30P140 U28 ( .A1(n61), .A2(wb_dat_i_sampled[6]), .B1(
        devide_reg_o[6]), .B2(write_devide_reg0), .Z(n196) );
  INVD0BWP12T30P140 U29 ( .I(tx_kbd_data_o[2]), .ZN(n30) );
  INVD0BWP12T30P140 U30 ( .I(write_output_buffer_reg), .ZN(n137) );
  AOI22D0BWP12T30P140 U31 ( .A1(write_output_buffer_reg), .A2(n51), .B1(n30), 
        .B2(n137), .ZN(n220) );
  IND3D1BWP12T30P140 U32 ( .A1(wb_ack_o), .B1(stb_i_previous), .B2(
        cyc_i_previous), .ZN(n1) );
  INVD0BWP12T30P140 U33 ( .I(n1), .ZN(N259) );
  INVD0BWP12T30P140 U34 ( .I(wb_dat_i_sampled[13]), .ZN(n50) );
  MAOI22D0BWP12T30P140 U35 ( .A1(write_devide_reg1), .A2(n50), .B1(
        devide_reg_o[13]), .B2(write_devide_reg1), .ZN(n210) );
  INVD0BWP12T30P140 U36 ( .I(wb_dat_i_sampled[12]), .ZN(n83) );
  INVD0BWP12T30P140 U37 ( .I(current_command[4]), .ZN(n7) );
  AOI22D0BWP12T30P140 U38 ( .A1(send_command_reg), .A2(n83), .B1(n7), .B2(n79), 
        .ZN(n238) );
  INVD0BWP12T30P140 U39 ( .I(command_byte_4_), .ZN(n47) );
  ND2D0BWP12T30P140 U40 ( .A1(rx_kbd_data_ready_i), .A2(n47), .ZN(n90) );
  NR3D0BWP12T30P140 U41 ( .A1(status_byte[0]), .A2(current_command_valid), 
        .A3(n90), .ZN(n34) );
  INVD0BWP12T30P140 U42 ( .I(current_command[1]), .ZN(n54) );
  INVD0BWP12T30P140 U43 ( .I(current_command[0]), .ZN(n92) );
  ND2D0BWP12T30P140 U44 ( .A1(n92), .A2(n33), .ZN(n64) );
  INVD0BWP12T30P140 U45 ( .I(current_command[6]), .ZN(n12) );
  INVD0BWP12T30P140 U46 ( .I(current_command[7]), .ZN(n14) );
  NR2D0BWP12T30P140 U47 ( .A1(n12), .A2(n14), .ZN(n2) );
  INVD0BWP12T30P140 U48 ( .I(current_command[3]), .ZN(n52) );
  INVD0BWP12T30P140 U49 ( .I(current_command[5]), .ZN(n11) );
  ND4D0BWP12T30P140 U50 ( .A1(current_command[4]), .A2(n2), .A3(n52), .A4(n11), 
        .ZN(n62) );
  NR3D0BWP12T30P140 U51 ( .A1(n54), .A2(n64), .A3(n62), .ZN(n76) );
  AOI22D0BWP12T30P140 U52 ( .A1(current_command[1]), .A2(current_command[3]), 
        .B1(n33), .B2(n54), .ZN(n10) );
  NR4D0BWP12T30P140 U53 ( .A1(current_command[4]), .A2(current_command[6]), 
        .A3(n11), .A4(n14), .ZN(n4) );
  ND2D0BWP12T30P140 U54 ( .A1(current_command[0]), .A2(n4), .ZN(n66) );
  NR3D0BWP12T30P140 U55 ( .A1(current_command[1]), .A2(current_command[3]), 
        .A3(n64), .ZN(n6) );
  ND3D0BWP12T30P140 U56 ( .A1(current_command[6]), .A2(current_command[7]), 
        .A3(n6), .ZN(n5) );
  NR3D0BWP12T30P140 U57 ( .A1(current_command[1]), .A2(current_command[3]), 
        .A3(n33), .ZN(n72) );
  NR2D0BWP12T30P140 U58 ( .A1(current_command[4]), .A2(n5), .ZN(n26) );
  AOI31D0BWP12T30P140 U59 ( .A1(n4), .A2(n72), .A3(n92), .B(n26), .ZN(n22) );
  ND2D0BWP12T30P140 U60 ( .A1(current_command[1]), .A2(current_command[3]), 
        .ZN(n3) );
  INR2D1BWP12T30P140 U61 ( .A1(n4), .B1(n3), .ZN(n93) );
  IND2D1BWP12T30P140 U62 ( .A1(n64), .B1(n93), .ZN(n28) );
  AN2D0BWP12T30P140 U63 ( .A1(n22), .A2(n28), .Z(n25) );
  OAI21D0BWP12T30P140 U64 ( .A1(n5), .A2(current_command[5]), .B(n25), .ZN(n41) );
  INVD0BWP12T30P140 U65 ( .I(n41), .ZN(n9) );
  ND3D0BWP12T30P140 U66 ( .A1(n7), .A2(n6), .A3(current_command[5]), .ZN(n8)
         );
  NR2D0BWP12T30P140 U67 ( .A1(current_command[7]), .A2(n8), .ZN(n13) );
  ND2D0BWP12T30P140 U68 ( .A1(n13), .A2(n12), .ZN(n38) );
  OAI211D0BWP12T30P140 U69 ( .A1(n10), .A2(n66), .B(n9), .C(n38), .ZN(n75) );
  AOI32D0BWP12T30P140 U70 ( .A1(n76), .A2(current_command_valid), .A3(
        write_output_buffer_reg_previous), .B1(n75), .B2(current_command_valid), .ZN(n42) );
  INVD0BWP12T30P140 U71 ( .I(n42), .ZN(n91) );
  NR2D0BWP12T30P140 U72 ( .A1(n34), .A2(n91), .ZN(n43) );
  INVD0BWP12T30P140 U73 ( .I(status_byte[0]), .ZN(n135) );
  AOI21D0BWP12T30P140 U74 ( .A1(n43), .A2(n135), .B(read_input_buffer_reg), 
        .ZN(n310) );
  OA22D0BWP12T30P140 U75 ( .A1(n61), .A2(wb_dat_i_sampled[7]), .B1(
        devide_reg_o[7]), .B2(write_devide_reg0), .Z(n198) );
  INVD0BWP12T30P140 U76 ( .I(wb_dat_i_sampled[14]), .ZN(n53) );
  AOI22D0BWP12T30P140 U77 ( .A1(send_command_reg), .A2(n53), .B1(n12), .B2(n79), .ZN(n242) );
  AOI22D0BWP12T30P140 U78 ( .A1(send_command_reg), .A2(n50), .B1(n11), .B2(n79), .ZN(n240) );
  MAOI22D0BWP12T30P140 U79 ( .A1(write_devide_reg1), .A2(n83), .B1(
        devide_reg_o[12]), .B2(write_devide_reg1), .ZN(n208) );
  INVD0BWP12T30P140 U80 ( .I(wb_dat_i_sampled[15]), .ZN(n48) );
  MAOI22D0BWP12T30P140 U81 ( .A1(write_devide_reg1), .A2(n48), .B1(
        devide_reg_o[15]), .B2(write_devide_reg1), .ZN(n214) );
  INR2D1BWP12T30P140 U82 ( .A1(n13), .B1(n12), .ZN(n63) );
  ND3D0BWP12T30P140 U83 ( .A1(current_command_valid), .A2(
        write_output_buffer_reg_previous), .A3(n63), .ZN(n96) );
  INVD0BWP12T30P140 U84 ( .I(n96), .ZN(n94) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n94), .A2(n30), .B1(status_byte[2]), .B2(n94), 
        .ZN(n305) );
  AOI22D0BWP12T30P140 U86 ( .A1(send_command_reg), .A2(n48), .B1(n14), .B2(n79), .ZN(n244) );
  INVD0BWP12T30P140 U87 ( .I(wb_dat_i_sampled[8]), .ZN(n60) );
  AOI22D0BWP12T30P140 U88 ( .A1(send_command_reg), .A2(n60), .B1(n92), .B2(n79), .ZN(n246) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(wb_dat_i[24]), .I1(wb_dat_i_sampled[8]), .S(
        n126), .Z(n264) );
  CKMUX2D0BWP12T30P140 U90 ( .I0(wb_dat_i[25]), .I1(wb_dat_i_sampled[9]), .S(
        n126), .Z(n266) );
  CKMUX2D0BWP12T30P140 U91 ( .I0(wb_dat_i[26]), .I1(wb_dat_i_sampled[10]), .S(
        n126), .Z(n268) );
  CKMUX2D0BWP12T30P140 U92 ( .I0(wb_dat_i[27]), .I1(wb_dat_i_sampled[11]), .S(
        n126), .Z(n270) );
  CKMUX2D0BWP12T30P140 U93 ( .I0(wb_dat_i[28]), .I1(wb_dat_i_sampled[12]), .S(
        n126), .Z(n272) );
  CKMUX2D0BWP12T30P140 U94 ( .I0(wb_dat_i[29]), .I1(wb_dat_i_sampled[13]), .S(
        n126), .Z(n274) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(wb_dat_i[30]), .I1(wb_dat_i_sampled[14]), .S(
        n126), .Z(n276) );
  CKMUX2D0BWP12T30P140 U96 ( .I0(wb_dat_i[31]), .I1(wb_dat_i_sampled[15]), .S(
        n126), .Z(n278) );
  CKMUX2D0BWP12T30P140 U97 ( .I0(wb_dat_i[16]), .I1(wb_dat_i_sampled[0]), .S(
        n126), .Z(n248) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(wb_dat_i[17]), .I1(wb_dat_i_sampled[1]), .S(
        n126), .Z(n250) );
  CKMUX2D0BWP12T30P140 U99 ( .I0(wb_dat_i[19]), .I1(wb_dat_i_sampled[3]), .S(
        n126), .Z(n254) );
  CKMUX2D0BWP12T30P140 U100 ( .I0(wb_dat_i[20]), .I1(wb_dat_i_sampled[4]), .S(
        n126), .Z(n256) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(wb_dat_i[21]), .I1(wb_dat_i_sampled[5]), .S(
        n126), .Z(n258) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(wb_dat_i[22]), .I1(wb_dat_i_sampled[6]), .S(
        n126), .Z(n260) );
  CKMUX2D0BWP12T30P140 U103 ( .I0(wb_dat_i[23]), .I1(wb_dat_i_sampled[7]), .S(
        n126), .Z(n262) );
  INVD0BWP12T30P140 U104 ( .I(n76), .ZN(n39) );
  INVD0BWP12T30P140 U105 ( .I(tx_kbd_data_o[5]), .ZN(n49) );
  OAI211D0BWP12T30P140 U106 ( .A1(n39), .A2(n49), .B(n22), .C(n38), .ZN(n15)
         );
  AO222D0BWP12T30P140 U107 ( .A1(n15), .A2(n91), .B1(n43), .B2(input_buffer[5]), .C1(n34), .C2(rx_scancode_i[5]), .Z(n296) );
  ND2D0BWP12T30P140 U108 ( .A1(n76), .A2(n91), .ZN(n19) );
  INVD0BWP12T30P140 U109 ( .I(tx_kbd_data_o[3]), .ZN(n56) );
  AOI22D0BWP12T30P140 U110 ( .A1(n34), .A2(rx_scancode_i[3]), .B1(n43), .B2(
        input_buffer[3]), .ZN(n16) );
  ND2D0BWP12T30P140 U111 ( .A1(n26), .A2(n91), .ZN(n37) );
  OAI211D0BWP12T30P140 U112 ( .A1(n19), .A2(n56), .B(n16), .C(n37), .ZN(n290)
         );
  AOI22D0BWP12T30P140 U113 ( .A1(n34), .A2(rx_scancode_i[6]), .B1(n43), .B2(
        input_buffer[6]), .ZN(n18) );
  INVD0BWP12T30P140 U114 ( .I(n38), .ZN(n27) );
  AOI22D0BWP12T30P140 U115 ( .A1(n76), .A2(tx_kbd_data_o[6]), .B1(n27), .B2(
        translate_o), .ZN(n17) );
  AOI32D0BWP12T30P140 U116 ( .A1(n25), .A2(n18), .A3(n17), .B1(n42), .B2(n18), 
        .ZN(n299) );
  INVD0BWP12T30P140 U117 ( .I(n19), .ZN(n32) );
  AOI22D0BWP12T30P140 U118 ( .A1(n43), .A2(input_buffer[7]), .B1(
        tx_kbd_data_o[7]), .B2(n32), .ZN(n21) );
  ND2D0BWP12T30P140 U119 ( .A1(n34), .A2(rx_scancode_i[7]), .ZN(n20) );
  OAI211D0BWP12T30P140 U120 ( .A1(n22), .A2(n42), .B(n21), .C(n20), .ZN(n302)
         );
  AOI22D0BWP12T30P140 U121 ( .A1(n34), .A2(rx_scancode_i[4]), .B1(n43), .B2(
        input_buffer[4]), .ZN(n24) );
  AOI22D0BWP12T30P140 U122 ( .A1(command_byte_4_), .A2(n27), .B1(n76), .B2(
        tx_kbd_data_o[4]), .ZN(n23) );
  AOI32D0BWP12T30P140 U123 ( .A1(n25), .A2(n24), .A3(n23), .B1(n42), .B2(n24), 
        .ZN(n293) );
  AOI21D0BWP12T30P140 U124 ( .A1(n27), .A2(status_byte[2]), .B(n26), .ZN(n29)
         );
  OAI211D0BWP12T30P140 U125 ( .A1(n39), .A2(n30), .B(n29), .C(n28), .ZN(n31)
         );
  AO222D0BWP12T30P140 U126 ( .A1(n31), .A2(n91), .B1(n43), .B2(input_buffer[2]), .C1(n34), .C2(rx_scancode_i[2]), .Z(n287) );
  INVD0BWP12T30P140 U127 ( .I(wb_stb_i), .ZN(n84) );
  NR2D0BWP12T30P140 U128 ( .A1(wb_ack_o), .A2(n84), .ZN(N257) );
  AOI22D0BWP12T30P140 U129 ( .A1(n43), .A2(input_buffer[1]), .B1(n32), .B2(
        tx_kbd_data_o[1]), .ZN(n36) );
  INVD0BWP12T30P140 U130 ( .I(current_command_valid), .ZN(n82) );
  NR4D0BWP12T30P140 U131 ( .A1(current_command[1]), .A2(n82), .A3(n52), .A4(
        n66), .ZN(n98) );
  AOI22D0BWP12T30P140 U132 ( .A1(n34), .A2(rx_scancode_i[1]), .B1(n98), .B2(
        n33), .ZN(n35) );
  ND3D0BWP12T30P140 U133 ( .A1(n37), .A2(n36), .A3(n35), .ZN(n284) );
  INVD0BWP12T30P140 U134 ( .I(tx_kbd_data_o[0]), .ZN(n59) );
  INVD0BWP12T30P140 U135 ( .I(command_byte_0), .ZN(n134) );
  OAI22D0BWP12T30P140 U136 ( .A1(n39), .A2(n59), .B1(n38), .B2(n134), .ZN(n40)
         );
  OAI32D0BWP12T30P140 U137 ( .A1(n42), .A2(n41), .A3(n40), .B1(
        rx_scancode_i[0]), .B2(n91), .ZN(n45) );
  INVD0BWP12T30P140 U138 ( .I(n43), .ZN(n44) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n45), .A2(n44), .B1(n44), .B2(
        input_buffer[0]), .ZN(n281) );
  AOI22D0BWP12T30P140 U140 ( .A1(n94), .A2(n59), .B1(n134), .B2(n96), .ZN(n306) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(wb_dat_i[18]), .I1(wb_dat_i_sampled[2]), .S(
        n126), .Z(n252) );
  OA22D0BWP12T30P140 U142 ( .A1(n61), .A2(wb_dat_i_sampled[1]), .B1(
        devide_reg_o[1]), .B2(write_devide_reg0), .Z(n186) );
  OA22D0BWP12T30P140 U143 ( .A1(n61), .A2(wb_dat_i_sampled[0]), .B1(
        devide_reg_o[0]), .B2(write_devide_reg0), .Z(n184) );
  MAOI22D0BWP12T30P140 U144 ( .A1(write_devide_reg1), .A2(n60), .B1(
        devide_reg_o[8]), .B2(write_devide_reg1), .ZN(n200) );
  ND2D0BWP12T30P140 U145 ( .A1(status_byte[0]), .A2(read_input_buffer_reg), 
        .ZN(n78) );
  INVD0BWP12T30P140 U146 ( .I(rx_kbd_data_ready_i), .ZN(n46) );
  AOI221D0BWP12T30P140 U147 ( .A1(input_buffer_filled_from_command), .A2(n47), 
        .B1(n78), .B2(n47), .C(n46), .ZN(rx_kbd_read_o) );
  INVD0BWP12T30P140 U148 ( .I(wb_dat_i_sampled[11]), .ZN(n57) );
  MAOI22D0BWP12T30P140 U149 ( .A1(write_devide_reg1), .A2(n57), .B1(
        devide_reg_o[11]), .B2(write_devide_reg1), .ZN(n206) );
  MAOI22D0BWP12T30P140 U150 ( .A1(write_output_buffer_reg), .A2(n48), .B1(
        tx_kbd_data_o[7]), .B2(write_output_buffer_reg), .ZN(n230) );
  OA22D0BWP12T30P140 U151 ( .A1(n61), .A2(wb_dat_i_sampled[5]), .B1(
        devide_reg_o[5]), .B2(write_devide_reg0), .Z(n194) );
  MAOI22D0BWP12T30P140 U152 ( .A1(write_devide_reg1), .A2(n53), .B1(
        devide_reg_o[14]), .B2(write_devide_reg1), .ZN(n212) );
  AOI22D0BWP12T30P140 U153 ( .A1(write_output_buffer_reg), .A2(n50), .B1(n49), 
        .B2(n137), .ZN(n226) );
  MAOI22D0BWP12T30P140 U154 ( .A1(write_devide_reg1), .A2(n51), .B1(
        devide_reg_o[10]), .B2(write_devide_reg1), .ZN(n204) );
  MAOI22D0BWP12T30P140 U155 ( .A1(write_output_buffer_reg), .A2(n55), .B1(
        tx_kbd_data_o[1]), .B2(write_output_buffer_reg), .ZN(n218) );
  AOI22D0BWP12T30P140 U156 ( .A1(send_command_reg), .A2(n57), .B1(n52), .B2(
        n79), .ZN(n236) );
  INVD0BWP12T30P140 U157 ( .I(tx_kbd_data_o[6]), .ZN(n58) );
  AOI22D0BWP12T30P140 U158 ( .A1(write_output_buffer_reg), .A2(n53), .B1(n58), 
        .B2(n137), .ZN(n228) );
  AOI22D0BWP12T30P140 U159 ( .A1(send_command_reg), .A2(n55), .B1(n54), .B2(
        n79), .ZN(n232) );
  AOI22D0BWP12T30P140 U160 ( .A1(write_output_buffer_reg), .A2(n57), .B1(n56), 
        .B2(n137), .ZN(n222) );
  MAOI22D0BWP12T30P140 U161 ( .A1(n94), .A2(n58), .B1(translate_o), .B2(n94), 
        .ZN(n307) );
  AOI22D0BWP12T30P140 U162 ( .A1(write_output_buffer_reg), .A2(n60), .B1(n59), 
        .B2(n137), .ZN(n216) );
  OA22D0BWP12T30P140 U163 ( .A1(n61), .A2(wb_dat_i_sampled[3]), .B1(
        devide_reg_o[3]), .B2(write_devide_reg0), .Z(n190) );
  OA22D0BWP12T30P140 U164 ( .A1(n61), .A2(wb_dat_i_sampled[4]), .B1(
        devide_reg_o[4]), .B2(write_devide_reg0), .Z(n192) );
  AOI221D0BWP12T30P140 U165 ( .A1(current_command[0]), .A2(current_command[2]), 
        .B1(current_command[1]), .B2(current_command[2]), .C(n62), .ZN(n65) );
  AOI211D0BWP12T30P140 U166 ( .A1(n65), .A2(n64), .B(n63), .C(n76), .ZN(n74)
         );
  INVD0BWP12T30P140 U167 ( .I(n66), .ZN(n71) );
  NR4D0BWP12T30P140 U168 ( .A1(tx_kbd_data_o[3]), .A2(tx_kbd_data_o[1]), .A3(
        tx_kbd_data_o[0]), .A4(tx_kbd_data_o[2]), .ZN(n68) );
  NR4D0BWP12T30P140 U169 ( .A1(tx_kbd_data_o[7]), .A2(tx_kbd_data_o[4]), .A3(
        tx_kbd_data_o[5]), .A4(tx_kbd_data_o[6]), .ZN(n67) );
  ND4D0BWP12T30P140 U170 ( .A1(n72), .A2(n71), .A3(n68), .A4(n67), .ZN(n70) );
  INVD0BWP12T30P140 U171 ( .I(write_output_buffer_reg_previous), .ZN(n69) );
  AOI21D0BWP12T30P140 U172 ( .A1(n74), .A2(n70), .B(n69), .ZN(n81) );
  ND2D0BWP12T30P140 U173 ( .A1(n72), .A2(n71), .ZN(n73) );
  ND2D0BWP12T30P140 U174 ( .A1(n74), .A2(n73), .ZN(n136) );
  NR2D0BWP12T30P140 U175 ( .A1(n76), .A2(n75), .ZN(n77) );
  MUX2ND0BWP12T30P140 U176 ( .I0(n78), .I1(n136), .S(n77), .ZN(n80) );
  OAI32D0BWP12T30P140 U177 ( .A1(n82), .A2(n81), .A3(n80), .B1(
        current_command_valid), .B2(n79), .ZN(n309) );
  MAOI22D0BWP12T30P140 U178 ( .A1(write_output_buffer_reg), .A2(n83), .B1(
        tx_kbd_data_o[4]), .B2(write_output_buffer_reg), .ZN(n224) );
  INVD0BWP12T30P140 U179 ( .I(wb_cyc_i), .ZN(n85) );
  NR2D0BWP12T30P140 U180 ( .A1(wb_ack_o), .A2(n85), .ZN(N256) );
  CKBD0BWP12T30P140 U181 ( .I(wb_clk_i), .Z(n164) );
  CKBD0BWP12T30P140 U182 ( .I(wb_clk_i), .Z(n160) );
  CKBD0BWP12T30P140 U183 ( .I(wb_clk_i), .Z(n161) );
  CKBD0BWP12T30P140 U184 ( .I(wb_clk_i), .Z(n163) );
  CKBD0BWP12T30P140 U185 ( .I(wb_clk_i), .Z(n162) );
  INVD0BWP12T30P140 U186 ( .I(wb_rst_i), .ZN(n139) );
  CKBD0BWP12T30P140 U187 ( .I(n139), .Z(n157) );
  CKBD0BWP12T30P140 U188 ( .I(n139), .Z(n158) );
  CKBD0BWP12T30P140 U189 ( .I(n139), .Z(n159) );
  CKBD0BWP12T30P140 U190 ( .I(n159), .Z(n156) );
  NR4D0BWP12T30P140 U191 ( .A1(wb_we_i), .A2(wb_adr_i[0]), .A3(wb_adr_i[1]), 
        .A4(n84), .ZN(n125) );
  INVD0BWP12T30P140 U192 ( .I(wb_adr_i[3]), .ZN(n133) );
  NR3D0BWP12T30P140 U193 ( .A1(wb_adr_i[2]), .A2(n85), .A3(n133), .ZN(n86) );
  OAI211D0BWP12T30P140 U194 ( .A1(wb_sel_i[2]), .A2(wb_sel_i[3]), .B(n125), 
        .C(n86), .ZN(n87) );
  NR2D0BWP12T30P140 U195 ( .A1(read_status_register_reg), .A2(n87), .ZN(n122)
         );
  IND2D1BWP12T30P140 U196 ( .A1(read_status_register_reg), .B1(n87), .ZN(n88)
         );
  NR2D0BWP12T30P140 U197 ( .A1(read_input_buffer_reg), .A2(n88), .ZN(n121) );
  AOI22D0BWP12T30P140 U198 ( .A1(n122), .A2(devide_reg_o[13]), .B1(n121), .B2(
        wb_dat_o[29]), .ZN(n89) );
  INR2D1BWP12T30P140 U199 ( .A1(read_input_buffer_reg), .B1(n88), .ZN(n115) );
  ND2D0BWP12T30P140 U200 ( .A1(input_buffer[5]), .A2(n115), .ZN(n123) );
  ND2D0BWP12T30P140 U201 ( .A1(n89), .A2(n123), .ZN(n294) );
  IAO21D0BWP12T30P140 U202 ( .A1(ps2_kbd_clk_i), .A2(inhibit_kbd_if_o), .B(n90), .ZN(n304) );
  IAO21D0BWP12T30P140 U203 ( .A1(n91), .A2(input_buffer_filled_from_command), 
        .B(read_input_buffer_reg), .ZN(n303) );
  ND4D0BWP12T30P140 U204 ( .A1(current_command_valid), .A2(current_command[2]), 
        .A3(n93), .A4(n92), .ZN(n95) );
  AOI32D0BWP12T30P140 U205 ( .A1(command_byte_4_), .A2(n96), .A3(n95), .B1(
        tx_kbd_data_o[4]), .B2(n94), .ZN(n97) );
  IOA21D0BWP12T30P140 U206 ( .A1(current_command[2]), .A2(n98), .B(n97), .ZN(
        n308) );
  AOI22D0BWP12T30P140 U207 ( .A1(input_buffer[1]), .A2(n115), .B1(
        tx_kbd_write_o), .B2(read_status_register_reg), .ZN(n101) );
  AOI22D0BWP12T30P140 U208 ( .A1(n122), .A2(devide_reg_o[1]), .B1(n121), .B2(
        wb_dat_o[17]), .ZN(n99) );
  ND2D0BWP12T30P140 U209 ( .A1(n101), .A2(n99), .ZN(n283) );
  AOI22D0BWP12T30P140 U210 ( .A1(n122), .A2(devide_reg_o[9]), .B1(n121), .B2(
        wb_dat_o[25]), .ZN(n100) );
  ND2D0BWP12T30P140 U211 ( .A1(n101), .A2(n100), .ZN(n282) );
  AOI22D0BWP12T30P140 U212 ( .A1(status_byte[0]), .A2(read_status_register_reg), .B1(input_buffer[0]), .B2(n115), .ZN(n104) );
  AOI22D0BWP12T30P140 U213 ( .A1(n122), .A2(devide_reg_o[0]), .B1(n121), .B2(
        wb_dat_o[16]), .ZN(n102) );
  ND2D0BWP12T30P140 U214 ( .A1(n104), .A2(n102), .ZN(n280) );
  AOI22D0BWP12T30P140 U215 ( .A1(n122), .A2(devide_reg_o[8]), .B1(n121), .B2(
        wb_dat_o[24]), .ZN(n103) );
  ND2D0BWP12T30P140 U216 ( .A1(n104), .A2(n103), .ZN(n279) );
  AOI22D0BWP12T30P140 U217 ( .A1(input_buffer[2]), .A2(n115), .B1(
        status_byte[2]), .B2(read_status_register_reg), .ZN(n107) );
  AOI22D0BWP12T30P140 U218 ( .A1(n122), .A2(devide_reg_o[10]), .B1(n121), .B2(
        wb_dat_o[26]), .ZN(n105) );
  ND2D0BWP12T30P140 U219 ( .A1(n107), .A2(n105), .ZN(n285) );
  AOI22D0BWP12T30P140 U220 ( .A1(n122), .A2(devide_reg_o[2]), .B1(n121), .B2(
        wb_dat_o[18]), .ZN(n106) );
  ND2D0BWP12T30P140 U221 ( .A1(n107), .A2(n106), .ZN(n286) );
  AOI22D0BWP12T30P140 U222 ( .A1(devide_reg_o[7]), .A2(n122), .B1(n121), .B2(
        wb_dat_o[23]), .ZN(n108) );
  ND2D0BWP12T30P140 U223 ( .A1(input_buffer[7]), .A2(n115), .ZN(n110) );
  ND2D0BWP12T30P140 U224 ( .A1(n108), .A2(n110), .ZN(n301) );
  AOI22D0BWP12T30P140 U225 ( .A1(n122), .A2(devide_reg_o[11]), .B1(n121), .B2(
        wb_dat_o[27]), .ZN(n109) );
  ND2D0BWP12T30P140 U226 ( .A1(input_buffer[3]), .A2(n115), .ZN(n112) );
  ND2D0BWP12T30P140 U227 ( .A1(n109), .A2(n112), .ZN(n288) );
  AOI22D0BWP12T30P140 U228 ( .A1(n122), .A2(devide_reg_o[15]), .B1(n121), .B2(
        wb_dat_o[31]), .ZN(n111) );
  ND2D0BWP12T30P140 U229 ( .A1(n111), .A2(n110), .ZN(n300) );
  AOI22D0BWP12T30P140 U230 ( .A1(n122), .A2(devide_reg_o[3]), .B1(n121), .B2(
        wb_dat_o[19]), .ZN(n113) );
  ND2D0BWP12T30P140 U231 ( .A1(n113), .A2(n112), .ZN(n289) );
  AOI22D0BWP12T30P140 U232 ( .A1(n122), .A2(devide_reg_o[6]), .B1(n121), .B2(
        wb_dat_o[22]), .ZN(n114) );
  ND2D0BWP12T30P140 U233 ( .A1(input_buffer[6]), .A2(n115), .ZN(n117) );
  ND2D0BWP12T30P140 U234 ( .A1(n114), .A2(n117), .ZN(n298) );
  AOI22D0BWP12T30P140 U235 ( .A1(input_buffer[4]), .A2(n115), .B1(
        read_status_register_reg), .B2(ps2_kbd_clk_i), .ZN(n120) );
  AOI22D0BWP12T30P140 U236 ( .A1(n122), .A2(devide_reg_o[12]), .B1(n121), .B2(
        wb_dat_o[28]), .ZN(n116) );
  ND2D0BWP12T30P140 U237 ( .A1(n120), .A2(n116), .ZN(n291) );
  AOI22D0BWP12T30P140 U238 ( .A1(n122), .A2(devide_reg_o[14]), .B1(n121), .B2(
        wb_dat_o[30]), .ZN(n118) );
  ND2D0BWP12T30P140 U239 ( .A1(n118), .A2(n117), .ZN(n297) );
  AOI22D0BWP12T30P140 U240 ( .A1(n122), .A2(devide_reg_o[4]), .B1(n121), .B2(
        wb_dat_o[20]), .ZN(n119) );
  ND2D0BWP12T30P140 U241 ( .A1(n120), .A2(n119), .ZN(n292) );
  AOI22D0BWP12T30P140 U242 ( .A1(n122), .A2(devide_reg_o[5]), .B1(n121), .B2(
        wb_dat_o[21]), .ZN(n124) );
  ND2D0BWP12T30P140 U243 ( .A1(n124), .A2(n123), .ZN(n295) );
  ND4D0BWP12T30P140 U244 ( .A1(wb_sel_i[3]), .A2(n125), .A3(N256), .A4(n133), 
        .ZN(n127) );
  NR3D0BWP12T30P140 U245 ( .A1(read_input_buffer_reg), .A2(wb_adr_i[2]), .A3(
        n127), .ZN(read_input_buffer) );
  NR4D0BWP12T30P140 U246 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .A3(wb_ack_o), 
        .A4(n126), .ZN(n130) );
  ND2D0BWP12T30P140 U247 ( .A1(wb_sel_i[3]), .A2(n130), .ZN(n132) );
  IND2D1BWP12T30P140 U248 ( .A1(n132), .B1(n133), .ZN(n128) );
  NR3D0BWP12T30P140 U249 ( .A1(write_output_buffer_reg), .A2(wb_adr_i[2]), 
        .A3(n128), .ZN(write_output_buffer) );
  INVD0BWP12T30P140 U250 ( .I(wb_adr_i[2]), .ZN(n129) );
  NR3D0BWP12T30P140 U251 ( .A1(read_status_register_reg), .A2(n129), .A3(n127), 
        .ZN(read_status_register) );
  NR3D0BWP12T30P140 U252 ( .A1(send_command_reg), .A2(n129), .A3(n128), .ZN(
        send_command) );
  ND3D0BWP12T30P140 U253 ( .A1(wb_sel_i[2]), .A2(wb_adr_i[3]), .A3(n130), .ZN(
        n131) );
  NR3D0BWP12T30P140 U254 ( .A1(wb_adr_i[2]), .A2(write_devide_reg0), .A3(n131), 
        .ZN(write_devide0) );
  NR4D0BWP12T30P140 U255 ( .A1(wb_adr_i[2]), .A2(write_devide_reg1), .A3(n133), 
        .A4(n132), .ZN(write_devide1) );
  NR4D0BWP12T30P140 U256 ( .A1(command_byte_4_), .A2(read_input_buffer_reg), 
        .A3(n135), .A4(n134), .ZN(N292) );
  AOI22D0BWP12T30P140 U257 ( .A1(current_command_valid), .A2(n136), .B1(
        tx_kbd_write_o), .B2(tx_kbd_write_ack_i), .ZN(n138) );
  INR3D1BWP12T30P140 U258 ( .A1(n138), .B1(n137), .B2(command_byte_4_), .ZN(
        N267) );
endmodule


module ps2_translation_table ( reset_i, clock_i, translate_i, code_i, code_o, 
        address_i, we_i, re_i, data_o, rx_data_ready_i, 
        rx_translated_data_ready_o, rx_read_i, rx_read_o, rx_released_i );
  input [7:0] code_i;
  output [7:0] code_o;
  input [7:0] address_i;
  output [7:0] data_o;
  input reset_i, clock_i, translate_i, we_i, re_i, rx_data_ready_i, rx_read_i,
         rx_released_i;
  output rx_translated_data_ready_o, rx_read_o;
  wire   rx_translated_data_ready, N303, n245, n246, n248, n250, n252, n254,
         n256, n258, n260, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242;

  DFCNQD1BWP12T30P140 ram_out_reg_6_ ( .D(n258), .CP(clock_i), .CDN(n245), .Q(
        data_o[6]) );
  DFCNQD1BWP12T30P140 ram_out_reg_5_ ( .D(n256), .CP(clock_i), .CDN(n245), .Q(
        data_o[5]) );
  DFCNQD1BWP12T30P140 ram_out_reg_4_ ( .D(n254), .CP(clock_i), .CDN(n245), .Q(
        data_o[4]) );
  DFCNQD1BWP12T30P140 ram_out_reg_3_ ( .D(n252), .CP(clock_i), .CDN(n245), .Q(
        data_o[3]) );
  DFCNQD1BWP12T30P140 ram_out_reg_2_ ( .D(n250), .CP(clock_i), .CDN(n245), .Q(
        data_o[2]) );
  DFCNQD1BWP12T30P140 ram_out_reg_1_ ( .D(n248), .CP(clock_i), .CDN(n245), .Q(
        data_o[1]) );
  DFCNQD1BWP12T30P140 ram_out_reg_0_ ( .D(n246), .CP(clock_i), .CDN(n245), .Q(
        data_o[0]) );
  DFCNQD1BWP12T30P140 rx_translated_data_ready_reg ( .D(N303), .CP(clock_i), 
        .CDN(n245), .Q(rx_translated_data_ready) );
  DFCNQD1BWP12T30P140 ram_out_reg_7_ ( .D(n260), .CP(clock_i), .CDN(n245), .Q(
        data_o[7]) );
  CKBD0BWP12T30P140 U3 ( .I(rx_read_i), .Z(rx_read_o) );
  INVD0BWP12T30P140 U4 ( .I(data_o[5]), .ZN(n239) );
  INVD0BWP12T30P140 U5 ( .I(code_i[5]), .ZN(n222) );
  INVD0BWP12T30P140 U6 ( .I(translate_i), .ZN(n15) );
  AOI22D0BWP12T30P140 U7 ( .A1(translate_i), .A2(n239), .B1(n222), .B2(n15), 
        .ZN(code_o[5]) );
  INVD0BWP12T30P140 U8 ( .I(data_o[3]), .ZN(n133) );
  INVD0BWP12T30P140 U9 ( .I(code_i[3]), .ZN(n110) );
  AOI22D0BWP12T30P140 U10 ( .A1(translate_i), .A2(n133), .B1(n110), .B2(n15), 
        .ZN(code_o[3]) );
  INVD0BWP12T30P140 U11 ( .I(data_o[6]), .ZN(n33) );
  INVD0BWP12T30P140 U12 ( .I(code_i[6]), .ZN(n228) );
  AOI22D0BWP12T30P140 U13 ( .A1(translate_i), .A2(n33), .B1(n228), .B2(n15), 
        .ZN(code_o[6]) );
  INVD0BWP12T30P140 U14 ( .I(code_i[7]), .ZN(n64) );
  OAI21D0BWP12T30P140 U15 ( .A1(data_o[7]), .A2(rx_released_i), .B(translate_i), .ZN(n9) );
  OAI21D0BWP12T30P140 U16 ( .A1(translate_i), .A2(n64), .B(n9), .ZN(code_o[7])
         );
  INVD0BWP12T30P140 U17 ( .I(data_o[4]), .ZN(n175) );
  INVD0BWP12T30P140 U18 ( .I(code_i[4]), .ZN(n45) );
  AOI22D0BWP12T30P140 U19 ( .A1(translate_i), .A2(n175), .B1(n45), .B2(n15), 
        .ZN(code_o[4]) );
  INVD0BWP12T30P140 U20 ( .I(data_o[2]), .ZN(n102) );
  INVD0BWP12T30P140 U21 ( .I(code_i[2]), .ZN(n109) );
  AOI22D0BWP12T30P140 U22 ( .A1(translate_i), .A2(n102), .B1(n109), .B2(n15), 
        .ZN(code_o[2]) );
  INVD0BWP12T30P140 U23 ( .I(data_o[1]), .ZN(n79) );
  INVD0BWP12T30P140 U24 ( .I(code_i[1]), .ZN(n215) );
  AOI22D0BWP12T30P140 U25 ( .A1(translate_i), .A2(n79), .B1(n215), .B2(n15), 
        .ZN(code_o[1]) );
  INVD0BWP12T30P140 U26 ( .I(data_o[0]), .ZN(n55) );
  INVD0BWP12T30P140 U27 ( .I(code_i[0]), .ZN(n57) );
  AOI22D0BWP12T30P140 U28 ( .A1(translate_i), .A2(n55), .B1(n57), .B2(n15), 
        .ZN(code_o[0]) );
  OAI21D0BWP12T30P140 U29 ( .A1(code_i[6]), .A2(code_i[5]), .B(code_i[7]), 
        .ZN(n151) );
  ND2D0BWP12T30P140 U30 ( .A1(rx_data_ready_i), .A2(translate_i), .ZN(n238) );
  INVD0BWP12T30P140 U31 ( .I(n238), .ZN(n241) );
  NR2D0BWP12T30P140 U32 ( .A1(n228), .A2(code_i[7]), .ZN(n184) );
  NR2D0BWP12T30P140 U33 ( .A1(n222), .A2(code_i[7]), .ZN(n154) );
  ND2D0BWP12T30P140 U34 ( .A1(n228), .A2(n154), .ZN(n111) );
  INVD0BWP12T30P140 U35 ( .I(n111), .ZN(n112) );
  NR2D0BWP12T30P140 U36 ( .A1(n184), .A2(n112), .ZN(n140) );
  NR2D0BWP12T30P140 U37 ( .A1(code_i[3]), .A2(code_i[4]), .ZN(n42) );
  ND2D0BWP12T30P140 U38 ( .A1(n215), .A2(n57), .ZN(n158) );
  INR2D1BWP12T30P140 U39 ( .A1(n42), .B1(n158), .ZN(n12) );
  INVD0BWP12T30P140 U40 ( .I(n158), .ZN(n210) );
  ND2D0BWP12T30P140 U41 ( .A1(code_i[1]), .A2(code_i[0]), .ZN(n193) );
  NR2D0BWP12T30P140 U42 ( .A1(code_i[2]), .A2(n193), .ZN(n10) );
  AOI221D0BWP12T30P140 U43 ( .A1(n210), .A2(n42), .B1(n10), .B2(n42), .C(n64), 
        .ZN(n11) );
  AOI31D0BWP12T30P140 U44 ( .A1(n140), .A2(n12), .A3(n109), .B(n11), .ZN(n14)
         );
  INVD0BWP12T30P140 U45 ( .I(data_o[7]), .ZN(n13) );
  AOI32D0BWP12T30P140 U46 ( .A1(n151), .A2(n241), .A3(n14), .B1(n13), .B2(n238), .ZN(n260) );
  NR2D0BWP12T30P140 U47 ( .A1(rx_read_i), .A2(n238), .ZN(N303) );
  CKMUX2D0BWP12T30P140 U48 ( .I0(rx_translated_data_ready), .I1(
        rx_data_ready_i), .S(n15), .Z(rx_translated_data_ready_o) );
  NR2D0BWP12T30P140 U49 ( .A1(code_i[0]), .A2(n215), .ZN(n234) );
  NR2D0BWP12T30P140 U50 ( .A1(n109), .A2(n45), .ZN(n167) );
  INVD0BWP12T30P140 U51 ( .I(n167), .ZN(n214) );
  NR2D0BWP12T30P140 U52 ( .A1(code_i[3]), .A2(n214), .ZN(n204) );
  INVD0BWP12T30P140 U53 ( .I(n154), .ZN(n145) );
  NR2D0BWP12T30P140 U54 ( .A1(n109), .A2(n110), .ZN(n146) );
  ND2D0BWP12T30P140 U55 ( .A1(code_i[4]), .A2(n146), .ZN(n207) );
  INVD0BWP12T30P140 U56 ( .I(n207), .ZN(n141) );
  AOI211D0BWP12T30P140 U57 ( .A1(n204), .A2(n145), .B(code_i[7]), .C(n141), 
        .ZN(n17) );
  ND2D0BWP12T30P140 U58 ( .A1(n64), .A2(n222), .ZN(n197) );
  NR2D0BWP12T30P140 U59 ( .A1(n197), .A2(code_i[6]), .ZN(n169) );
  INVD0BWP12T30P140 U60 ( .I(n197), .ZN(n229) );
  NR2D0BWP12T30P140 U61 ( .A1(n229), .A2(n228), .ZN(n31) );
  AOI32D0BWP12T30P140 U62 ( .A1(n169), .A2(n109), .A3(n45), .B1(n31), .B2(n109), .ZN(n16) );
  OAI21D0BWP12T30P140 U63 ( .A1(n17), .A2(n228), .B(n16), .ZN(n21) );
  AOI21D0BWP12T30P140 U64 ( .A1(code_i[7]), .A2(n222), .B(n31), .ZN(n23) );
  ND2D0BWP12T30P140 U65 ( .A1(code_i[2]), .A2(n42), .ZN(n232) );
  NR2D0BWP12T30P140 U66 ( .A1(n154), .A2(n228), .ZN(n65) );
  AOI22D0BWP12T30P140 U67 ( .A1(n31), .A2(n204), .B1(n141), .B2(n65), .ZN(n19)
         );
  ND2D0BWP12T30P140 U68 ( .A1(n109), .A2(n45), .ZN(n221) );
  INVD0BWP12T30P140 U69 ( .I(n221), .ZN(n91) );
  ND2D0BWP12T30P140 U70 ( .A1(code_i[7]), .A2(n228), .ZN(n22) );
  NR2D0BWP12T30P140 U71 ( .A1(code_i[2]), .A2(code_i[3]), .ZN(n202) );
  NR2D0BWP12T30P140 U72 ( .A1(code_i[7]), .A2(code_i[6]), .ZN(n178) );
  ND2D0BWP12T30P140 U73 ( .A1(n109), .A2(code_i[4]), .ZN(n136) );
  NR2D0BWP12T30P140 U74 ( .A1(n110), .A2(n136), .ZN(n186) );
  INVD0BWP12T30P140 U75 ( .I(n186), .ZN(n224) );
  IAO21D0BWP12T30P140 U76 ( .A1(n178), .A2(n31), .B(n224), .ZN(n24) );
  AOI221D0BWP12T30P140 U77 ( .A1(n91), .A2(n22), .B1(n202), .B2(n22), .C(n24), 
        .ZN(n18) );
  OAI211D0BWP12T30P140 U78 ( .A1(n23), .A2(n232), .B(n19), .C(n18), .ZN(n20)
         );
  AOI22D0BWP12T30P140 U79 ( .A1(n234), .A2(n21), .B1(n210), .B2(n20), .ZN(n35)
         );
  NR2D0BWP12T30P140 U80 ( .A1(n169), .A2(n31), .ZN(n30) );
  NR2D0BWP12T30P140 U81 ( .A1(n110), .A2(n221), .ZN(n201) );
  INVD0BWP12T30P140 U82 ( .I(n201), .ZN(n187) );
  AOI221D0BWP12T30P140 U83 ( .A1(code_i[3]), .A2(n229), .B1(n228), .B2(n197), 
        .C(n136), .ZN(n28) );
  NR2D0BWP12T30P140 U84 ( .A1(n221), .A2(code_i[3]), .ZN(n98) );
  INVD0BWP12T30P140 U85 ( .I(n98), .ZN(n185) );
  MOAI22D0BWP12T30P140 U86 ( .A1(n23), .A2(n185), .B1(n22), .B2(code_i[2]), 
        .ZN(n27) );
  NR2D0BWP12T30P140 U87 ( .A1(n136), .A2(code_i[3]), .ZN(n212) );
  INVD0BWP12T30P140 U88 ( .I(n212), .ZN(n172) );
  AOI211D0BWP12T30P140 U89 ( .A1(n91), .A2(n169), .B(n31), .C(n24), .ZN(n25)
         );
  OAI21D0BWP12T30P140 U90 ( .A1(n228), .A2(n172), .B(n25), .ZN(n26) );
  OAI32D0BWP12T30P140 U91 ( .A1(n215), .A2(n28), .A3(n27), .B1(code_i[1]), 
        .B2(n26), .ZN(n29) );
  OAI21D0BWP12T30P140 U92 ( .A1(n30), .A2(n187), .B(n29), .ZN(n32) );
  ND2D0BWP12T30P140 U93 ( .A1(n45), .A2(n146), .ZN(n230) );
  INVD0BWP12T30P140 U94 ( .I(n230), .ZN(n199) );
  AOI22D0BWP12T30P140 U95 ( .A1(code_i[0]), .A2(n32), .B1(n31), .B2(n199), 
        .ZN(n34) );
  AOI32D0BWP12T30P140 U96 ( .A1(n35), .A2(n241), .A3(n34), .B1(n33), .B2(n238), 
        .ZN(n258) );
  INVD0BWP12T30P140 U97 ( .I(n184), .ZN(n223) );
  ND2D0BWP12T30P140 U98 ( .A1(n110), .A2(code_i[4]), .ZN(n144) );
  INVD0BWP12T30P140 U99 ( .I(n144), .ZN(n44) );
  INVD0BWP12T30P140 U100 ( .I(n169), .ZN(n166) );
  OAI211D0BWP12T30P140 U101 ( .A1(n223), .A2(n215), .B(n44), .C(n166), .ZN(n40) );
  ND2D0BWP12T30P140 U102 ( .A1(code_i[3]), .A2(code_i[4]), .ZN(n41) );
  INVD0BWP12T30P140 U103 ( .I(n41), .ZN(n152) );
  AOI32D0BWP12T30P140 U104 ( .A1(n152), .A2(n145), .A3(code_i[1]), .B1(n42), 
        .B2(n145), .ZN(n39) );
  NR2D0BWP12T30P140 U105 ( .A1(n228), .A2(n197), .ZN(n196) );
  NR2D0BWP12T30P140 U106 ( .A1(n178), .A2(n196), .ZN(n157) );
  INVD0BWP12T30P140 U107 ( .I(n157), .ZN(n122) );
  AOI22D0BWP12T30P140 U108 ( .A1(n184), .A2(n152), .B1(n110), .B2(n122), .ZN(
        n37) );
  NR2D0BWP12T30P140 U109 ( .A1(n228), .A2(n145), .ZN(n67) );
  NR2D0BWP12T30P140 U110 ( .A1(n67), .A2(n169), .ZN(n153) );
  INVD0BWP12T30P140 U111 ( .I(n153), .ZN(n108) );
  OAI222D0BWP12T30P140 U112 ( .A1(n144), .A2(n108), .B1(code_i[4]), .B2(n67), 
        .C1(n41), .C2(n112), .ZN(n36) );
  AOI22D0BWP12T30P140 U113 ( .A1(code_i[1]), .A2(n37), .B1(n36), .B2(n215), 
        .ZN(n38) );
  AOI32D0BWP12T30P140 U114 ( .A1(n40), .A2(n109), .A3(n39), .B1(code_i[2]), 
        .B2(n38), .ZN(n54) );
  INVD0BWP12T30P140 U115 ( .I(n140), .ZN(n139) );
  OAI22D0BWP12T30P140 U116 ( .A1(n229), .A2(n187), .B1(n41), .B2(n139), .ZN(
        n53) );
  AOI22D0BWP12T30P140 U117 ( .A1(n67), .A2(n152), .B1(n42), .B2(n64), .ZN(n51)
         );
  NR2D0BWP12T30P140 U118 ( .A1(code_i[4]), .A2(n140), .ZN(n43) );
  AOI32D0BWP12T30P140 U119 ( .A1(n44), .A2(n215), .A3(n122), .B1(n43), .B2(
        code_i[1]), .ZN(n50) );
  NR2D0BWP12T30P140 U120 ( .A1(n144), .A2(n145), .ZN(n48) );
  AOI221D0BWP12T30P140 U121 ( .A1(code_i[4]), .A2(n157), .B1(n45), .B2(n153), 
        .C(n110), .ZN(n47) );
  AOI22D0BWP12T30P140 U122 ( .A1(code_i[3]), .A2(n223), .B1(n153), .B2(n110), 
        .ZN(n46) );
  OAI32D0BWP12T30P140 U123 ( .A1(n215), .A2(n48), .A3(n47), .B1(code_i[1]), 
        .B2(n46), .ZN(n49) );
  AOI32D0BWP12T30P140 U124 ( .A1(n51), .A2(n109), .A3(n50), .B1(code_i[2]), 
        .B2(n49), .ZN(n52) );
  OAI32D0BWP12T30P140 U125 ( .A1(n57), .A2(n54), .A3(n53), .B1(code_i[0]), 
        .B2(n52), .ZN(n56) );
  AOI22D0BWP12T30P140 U126 ( .A1(n241), .A2(n56), .B1(n55), .B2(n238), .ZN(
        n246) );
  NR2D0BWP12T30P140 U127 ( .A1(n57), .A2(code_i[1]), .ZN(n220) );
  INVD0BWP12T30P140 U128 ( .I(n178), .ZN(n226) );
  INVD0BWP12T30P140 U129 ( .I(n67), .ZN(n165) );
  ND2D0BWP12T30P140 U130 ( .A1(n226), .A2(n165), .ZN(n119) );
  INVD0BWP12T30P140 U131 ( .I(n232), .ZN(n168) );
  NR2D0BWP12T30P140 U132 ( .A1(n184), .A2(n169), .ZN(n147) );
  INVD0BWP12T30P140 U133 ( .I(n147), .ZN(n129) );
  AOI22D0BWP12T30P140 U134 ( .A1(n199), .A2(n119), .B1(n168), .B2(n129), .ZN(
        n60) );
  NR2D0BWP12T30P140 U135 ( .A1(n223), .A2(n172), .ZN(n84) );
  INVD0BWP12T30P140 U136 ( .I(n196), .ZN(n181) );
  OAI22D0BWP12T30P140 U137 ( .A1(n181), .A2(n207), .B1(n165), .B2(n187), .ZN(
        n58) );
  AOI211D0BWP12T30P140 U138 ( .A1(n98), .A2(n64), .B(n84), .C(n58), .ZN(n59)
         );
  OAI211D0BWP12T30P140 U139 ( .A1(n140), .A2(n224), .B(n60), .C(n59), .ZN(n73)
         );
  OAI22D0BWP12T30P140 U140 ( .A1(n147), .A2(n230), .B1(code_i[7]), .B2(n224), 
        .ZN(n63) );
  ND2D0BWP12T30P140 U141 ( .A1(n181), .A2(n111), .ZN(n97) );
  AOI22D0BWP12T30P140 U142 ( .A1(n141), .A2(n119), .B1(n204), .B2(n97), .ZN(
        n61) );
  ND2D0BWP12T30P140 U143 ( .A1(n67), .A2(n212), .ZN(n124) );
  OAI211D0BWP12T30P140 U144 ( .A1(n232), .A2(n111), .B(n61), .C(n124), .ZN(n62) );
  AOI211D0BWP12T30P140 U145 ( .A1(n98), .A2(n122), .B(n63), .C(n62), .ZN(n71)
         );
  NR2D0BWP12T30P140 U146 ( .A1(code_i[4]), .A2(n109), .ZN(n192) );
  OAI22D0BWP12T30P140 U147 ( .A1(n178), .A2(n187), .B1(n172), .B2(n129), .ZN(
        n69) );
  NR2D0BWP12T30P140 U148 ( .A1(n64), .A2(n222), .ZN(n227) );
  INVD0BWP12T30P140 U149 ( .I(n227), .ZN(n225) );
  AOI21D0BWP12T30P140 U150 ( .A1(n197), .A2(n225), .B(code_i[6]), .ZN(n182) );
  OAI21D0BWP12T30P140 U151 ( .A1(n65), .A2(n182), .B(n98), .ZN(n66) );
  ND2D0BWP12T30P140 U152 ( .A1(n186), .A2(n111), .ZN(n123) );
  OAI211D0BWP12T30P140 U153 ( .A1(n67), .A2(n214), .B(n66), .C(n123), .ZN(n68)
         );
  AOI211D0BWP12T30P140 U154 ( .A1(n157), .A2(n192), .B(n69), .C(n68), .ZN(n70)
         );
  OAI22D0BWP12T30P140 U155 ( .A1(n71), .A2(n158), .B1(n70), .B2(n193), .ZN(n72) );
  AOI21D0BWP12T30P140 U156 ( .A1(n220), .A2(n73), .B(n72), .ZN(n81) );
  OAI22D0BWP12T30P140 U157 ( .A1(n122), .A2(n185), .B1(n139), .B2(n172), .ZN(
        n78) );
  OAI22D0BWP12T30P140 U158 ( .A1(n112), .A2(n207), .B1(n224), .B2(n129), .ZN(
        n77) );
  AOI22D0BWP12T30P140 U159 ( .A1(n204), .A2(n165), .B1(n201), .B2(n223), .ZN(
        n75) );
  ND2D0BWP12T30P140 U160 ( .A1(n199), .A2(n197), .ZN(n74) );
  OAI211D0BWP12T30P140 U161 ( .A1(n178), .A2(n232), .B(n75), .C(n74), .ZN(n76)
         );
  OAI31D0BWP12T30P140 U162 ( .A1(n78), .A2(n77), .A3(n76), .B(n234), .ZN(n80)
         );
  AOI32D0BWP12T30P140 U163 ( .A1(n81), .A2(n241), .A3(n80), .B1(n79), .B2(n238), .ZN(n248) );
  OAI22D0BWP12T30P140 U164 ( .A1(n223), .A2(n224), .B1(n145), .B2(n185), .ZN(
        n89) );
  AOI22D0BWP12T30P140 U165 ( .A1(code_i[7]), .A2(n141), .B1(n153), .B2(n204), 
        .ZN(n83) );
  ND2D0BWP12T30P140 U166 ( .A1(n201), .A2(n129), .ZN(n82) );
  OAI211D0BWP12T30P140 U167 ( .A1(n97), .A2(n230), .B(n83), .C(n82), .ZN(n88)
         );
  AOI22D0BWP12T30P140 U168 ( .A1(n178), .A2(n186), .B1(n196), .B2(n201), .ZN(
        n86) );
  NR2D0BWP12T30P140 U169 ( .A1(n197), .A2(n185), .ZN(n106) );
  AOI211D0BWP12T30P140 U170 ( .A1(n199), .A2(n197), .B(n84), .C(n106), .ZN(n85) );
  OAI211D0BWP12T30P140 U171 ( .A1(n169), .A2(n214), .B(n86), .C(n85), .ZN(n87)
         );
  OAI32D0BWP12T30P140 U172 ( .A1(code_i[1]), .A2(n89), .A3(n88), .B1(n215), 
        .B2(n87), .ZN(n90) );
  OAI21D0BWP12T30P140 U173 ( .A1(n129), .A2(n232), .B(n90), .ZN(n96) );
  AOI22D0BWP12T30P140 U174 ( .A1(n199), .A2(n166), .B1(n168), .B2(n181), .ZN(
        n94) );
  AOI22D0BWP12T30P140 U175 ( .A1(n229), .A2(n186), .B1(n147), .B2(n204), .ZN(
        n93) );
  AOI22D0BWP12T30P140 U176 ( .A1(n157), .A2(n141), .B1(n91), .B2(n139), .ZN(
        n92) );
  ND3D0BWP12T30P140 U177 ( .A1(n94), .A2(n93), .A3(n92), .ZN(n95) );
  AOI22D0BWP12T30P140 U178 ( .A1(code_i[0]), .A2(n96), .B1(n234), .B2(n95), 
        .ZN(n104) );
  NR2D0BWP12T30P140 U179 ( .A1(n197), .A2(n172), .ZN(n132) );
  AOI22D0BWP12T30P140 U180 ( .A1(n192), .A2(n140), .B1(n201), .B2(n129), .ZN(
        n100) );
  INVD0BWP12T30P140 U181 ( .I(n97), .ZN(n137) );
  AOI22D0BWP12T30P140 U182 ( .A1(n98), .A2(n119), .B1(n167), .B2(n137), .ZN(
        n99) );
  OAI211D0BWP12T30P140 U183 ( .A1(n153), .A2(n224), .B(n100), .C(n99), .ZN(
        n101) );
  OAI31D0BWP12T30P140 U184 ( .A1(n146), .A2(n132), .A3(n101), .B(n210), .ZN(
        n103) );
  AOI32D0BWP12T30P140 U185 ( .A1(n104), .A2(n241), .A3(n103), .B1(n102), .B2(
        n238), .ZN(n250) );
  MOAI22D0BWP12T30P140 U186 ( .A1(n137), .A2(n172), .B1(n140), .B2(n146), .ZN(
        n105) );
  AOI211D0BWP12T30P140 U187 ( .A1(n201), .A2(n166), .B(n106), .C(n105), .ZN(
        n107) );
  ND3D0BWP12T30P140 U188 ( .A1(n129), .A2(n110), .A3(code_i[2]), .ZN(n114) );
  OAI211D0BWP12T30P140 U189 ( .A1(n224), .A2(n108), .B(n107), .C(n114), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U190 ( .A1(n184), .A2(n204), .B1(n141), .B2(n166), .ZN(
        n118) );
  AOI22D0BWP12T30P140 U191 ( .A1(n157), .A2(n186), .B1(n169), .B2(n212), .ZN(
        n117) );
  AO222D0BWP12T30P140 U192 ( .A1(code_i[2]), .A2(n112), .B1(n111), .B2(n110), 
        .C1(n109), .C2(n229), .Z(n113) );
  AOI21D0BWP12T30P140 U193 ( .A1(n114), .A2(n113), .B(code_i[4]), .ZN(n131) );
  INVD0BWP12T30P140 U194 ( .I(n131), .ZN(n116) );
  INVD0BWP12T30P140 U195 ( .I(n220), .ZN(n115) );
  AOI31D0BWP12T30P140 U196 ( .A1(n118), .A2(n117), .A3(n116), .B(n115), .ZN(
        n127) );
  AOI22D0BWP12T30P140 U197 ( .A1(n199), .A2(n181), .B1(n141), .B2(n223), .ZN(
        n120) );
  ND2D0BWP12T30P140 U198 ( .A1(n168), .A2(n119), .ZN(n148) );
  OAI211D0BWP12T30P140 U199 ( .A1(n153), .A2(n185), .B(n120), .C(n148), .ZN(
        n121) );
  AOI221D0BWP12T30P140 U200 ( .A1(n201), .A2(n157), .B1(n204), .B2(n122), .C(
        n121), .ZN(n125) );
  AOI31D0BWP12T30P140 U201 ( .A1(n125), .A2(n124), .A3(n123), .B(n193), .ZN(
        n126) );
  AOI211D0BWP12T30P140 U202 ( .A1(n210), .A2(n128), .B(n127), .C(n126), .ZN(
        n135) );
  OAI22D0BWP12T30P140 U203 ( .A1(n154), .A2(n224), .B1(n207), .B2(n129), .ZN(
        n130) );
  OAI31D0BWP12T30P140 U204 ( .A1(n132), .A2(n131), .A3(n130), .B(n234), .ZN(
        n134) );
  AOI32D0BWP12T30P140 U205 ( .A1(n135), .A2(n241), .A3(n134), .B1(n133), .B2(
        n238), .ZN(n252) );
  INVD0BWP12T30P140 U206 ( .I(n136), .ZN(n183) );
  AOI22D0BWP12T30P140 U207 ( .A1(n184), .A2(n202), .B1(n183), .B2(n165), .ZN(
        n143) );
  OAI22D0BWP12T30P140 U208 ( .A1(n153), .A2(n232), .B1(n137), .B2(n187), .ZN(
        n138) );
  AOI221D0BWP12T30P140 U209 ( .A1(n141), .A2(n140), .B1(n199), .B2(n139), .C(
        n138), .ZN(n142) );
  OAI211D0BWP12T30P140 U210 ( .A1(n184), .A2(n144), .B(n143), .C(n142), .ZN(
        n164) );
  AOI22D0BWP12T30P140 U211 ( .A1(n183), .A2(n145), .B1(n167), .B2(n223), .ZN(
        n150) );
  ND2D0BWP12T30P140 U212 ( .A1(n178), .A2(n146), .ZN(n159) );
  OA211D0BWP12T30P140 U213 ( .A1(n185), .A2(n147), .B(n159), .C(n207), .Z(n149) );
  AOI31D0BWP12T30P140 U214 ( .A1(n150), .A2(n149), .A3(n148), .B(n193), .ZN(
        n163) );
  AOI22D0BWP12T30P140 U215 ( .A1(n152), .A2(n226), .B1(n168), .B2(n151), .ZN(
        n161) );
  NR2D0BWP12T30P140 U216 ( .A1(n153), .A2(n185), .ZN(n156) );
  OAI22D0BWP12T30P140 U217 ( .A1(n154), .A2(n214), .B1(n187), .B2(n165), .ZN(
        n155) );
  AOI211D0BWP12T30P140 U218 ( .A1(n212), .A2(n157), .B(n156), .C(n155), .ZN(
        n160) );
  AOI31D0BWP12T30P140 U219 ( .A1(n161), .A2(n160), .A3(n159), .B(n158), .ZN(
        n162) );
  AOI211D0BWP12T30P140 U220 ( .A1(n220), .A2(n164), .B(n163), .C(n162), .ZN(
        n177) );
  AOI21D0BWP12T30P140 U221 ( .A1(n185), .A2(n230), .B(n165), .ZN(n174) );
  AOI22D0BWP12T30P140 U222 ( .A1(code_i[7]), .A2(n167), .B1(n186), .B2(n166), 
        .ZN(n171) );
  AOI22D0BWP12T30P140 U223 ( .A1(n184), .A2(n201), .B1(n169), .B2(n168), .ZN(
        n170) );
  OAI211D0BWP12T30P140 U224 ( .A1(n229), .A2(n172), .B(n171), .C(n170), .ZN(
        n173) );
  OAI21D0BWP12T30P140 U225 ( .A1(n174), .A2(n173), .B(n234), .ZN(n176) );
  AOI32D0BWP12T30P140 U226 ( .A1(n177), .A2(n241), .A3(n176), .B1(n175), .B2(
        n238), .ZN(n254) );
  NR2D0BWP12T30P140 U227 ( .A1(n222), .A2(n184), .ZN(n203) );
  NR2D0BWP12T30P140 U228 ( .A1(n196), .A2(n203), .ZN(n188) );
  NR3D0BWP12T30P140 U229 ( .A1(n178), .A2(n222), .A3(n230), .ZN(n179) );
  IAO21D0BWP12T30P140 U230 ( .A1(n221), .A2(n188), .B(n179), .ZN(n180) );
  OAI211D0BWP12T30P140 U231 ( .A1(n207), .A2(n181), .B(n180), .C(n225), .ZN(
        n219) );
  ND2D0BWP12T30P140 U232 ( .A1(n188), .A2(n226), .ZN(n211) );
  AOI21D0BWP12T30P140 U233 ( .A1(code_i[5]), .A2(code_i[6]), .B(n182), .ZN(
        n231) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n183), .A2(n211), .B1(n232), .B2(n231), .ZN(
        n195) );
  NR2D0BWP12T30P140 U235 ( .A1(n184), .A2(n227), .ZN(n208) );
  INVD0BWP12T30P140 U236 ( .I(n208), .ZN(n191) );
  AOI21D0BWP12T30P140 U237 ( .A1(n226), .A2(n222), .B(n185), .ZN(n190) );
  MOAI22D0BWP12T30P140 U238 ( .A1(n188), .A2(n187), .B1(n186), .B2(n203), .ZN(
        n189) );
  AOI211D0BWP12T30P140 U239 ( .A1(n192), .A2(n191), .B(n190), .C(n189), .ZN(
        n194) );
  OAI22D0BWP12T30P140 U240 ( .A1(code_i[1]), .A2(n195), .B1(n194), .B2(n193), 
        .ZN(n218) );
  NR2D0BWP12T30P140 U241 ( .A1(n196), .A2(n227), .ZN(n216) );
  ND2D0BWP12T30P140 U242 ( .A1(code_i[7]), .A2(n222), .ZN(n200) );
  ND2D0BWP12T30P140 U243 ( .A1(n197), .A2(n225), .ZN(n198) );
  AOI22D0BWP12T30P140 U244 ( .A1(n201), .A2(n200), .B1(n199), .B2(n198), .ZN(
        n206) );
  AOI22D0BWP12T30P140 U245 ( .A1(n204), .A2(n203), .B1(n202), .B2(n211), .ZN(
        n205) );
  OAI211D0BWP12T30P140 U246 ( .A1(n208), .A2(n207), .B(n206), .C(n205), .ZN(
        n209) );
  AOI22D0BWP12T30P140 U247 ( .A1(n212), .A2(n211), .B1(n210), .B2(n209), .ZN(
        n213) );
  OAI31D0BWP12T30P140 U248 ( .A1(n216), .A2(n215), .A3(n214), .B(n213), .ZN(
        n217) );
  AOI211D0BWP12T30P140 U249 ( .A1(n220), .A2(n219), .B(n218), .C(n217), .ZN(
        n242) );
  AOI21D0BWP12T30P140 U250 ( .A1(n223), .A2(n222), .B(n221), .ZN(n237) );
  AOI21D0BWP12T30P140 U251 ( .A1(n226), .A2(n225), .B(n224), .ZN(n236) );
  AOI21D0BWP12T30P140 U252 ( .A1(n229), .A2(n228), .B(n227), .ZN(n233) );
  OAI22D0BWP12T30P140 U253 ( .A1(n233), .A2(n232), .B1(n231), .B2(n230), .ZN(
        n235) );
  OAI31D0BWP12T30P140 U254 ( .A1(n237), .A2(n236), .A3(n235), .B(n234), .ZN(
        n240) );
  AOI32D0BWP12T30P140 U255 ( .A1(n242), .A2(n241), .A3(n240), .B1(n239), .B2(
        n238), .ZN(n256) );
  INVD0BWP12T30P140 U256 ( .I(reset_i), .ZN(n245) );
endmodule


module ps2_top ( wb_clk_i, wb_rst_i, wb_cyc_i, wb_stb_i, wb_we_i, wb_sel_i, 
        wb_adr_i, wb_dat_i, wb_dat_o, wb_ack_o, wb_int_o, ps2_kbd_clk_pad_i, 
        ps2_kbd_data_pad_i, ps2_kbd_clk_pad_o, ps2_kbd_data_pad_o, 
        ps2_kbd_clk_pad_oe_o, ps2_kbd_data_pad_oe_o );
  input [3:0] wb_sel_i;
  input [3:0] wb_adr_i;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, wb_cyc_i, wb_stb_i, wb_we_i, ps2_kbd_clk_pad_i,
         ps2_kbd_data_pad_i;
  output wb_ack_o, wb_int_o, ps2_kbd_clk_pad_o, ps2_kbd_data_pad_o,
         ps2_kbd_clk_pad_oe_o, ps2_kbd_data_pad_oe_o;
  wire   n_Logic0_, ps2_ctrl_kbd_clk_en_, ps2_ctrl_kbd_data_en_,
         inhibit_kbd_if, ps2_ctrl_kbd_clk, rx_released, rx_kbd_data_ready,
         rx_kbd_read_tt, tx_kbd_write, tx_kbd_write_ack, translate,
         rx_translated_data_ready, rx_kbd_read_wb, n3, n4,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [7:0] rx_scan_code;
  wire   [7:0] tx_kbd_data;
  wire   [15:0] devide_reg;
  wire   [7:0] rx_translated_scan_code;

  ps2_io_ctrl i_ps2_io_ctrl_keyboard ( .clk_i(n4), .rst_i(wb_rst_i), 
        .ps2_ctrl_clk_en_i_(ps2_ctrl_kbd_clk_en_), .ps2_ctrl_data_en_i_(
        ps2_ctrl_kbd_data_en_), .ps2_clk_pad_i(ps2_kbd_clk_pad_i), 
        .ps2_clk_pad_oe_o(ps2_kbd_clk_pad_oe_o), .ps2_data_pad_oe_o(
        ps2_kbd_data_pad_oe_o), .inhibit_if_i(inhibit_kbd_if), 
        .ps2_ctrl_clk_o(ps2_ctrl_kbd_clk) );
  ps2_keyboard_TIMER_60USEC_VALUE_PP12_TIMER_60USEC_BITS_PP4_TIMER_5USEC_VALUE_PP500_TIMER_5USEC_BITS_PP16 i_ps2_keyboard ( 
        .clk(wb_clk_i), .reset(wb_rst_i), .ps2_clk_en_o_(ps2_ctrl_kbd_clk_en_), 
        .ps2_data_en_o_(ps2_ctrl_kbd_data_en_), .ps2_clk_i(ps2_ctrl_kbd_clk), 
        .ps2_data_i(ps2_kbd_data_pad_i), .rx_released(rx_released), 
        .rx_scan_code(rx_scan_code), .rx_data_ready(rx_kbd_data_ready), 
        .rx_read(rx_kbd_read_tt), .tx_data(tx_kbd_data), .tx_write(
        tx_kbd_write), .tx_write_ack_o(tx_kbd_write_ack), .translate(translate), .devide_reg_i(devide_reg) );
  ps2_wb_if i_ps2_wb_if ( .wb_clk_i(wb_clk_i), .wb_rst_i(wb_rst_i), .wb_cyc_i(
        wb_cyc_i), .wb_stb_i(wb_stb_i), .wb_we_i(wb_we_i), .wb_sel_i(wb_sel_i), 
        .wb_adr_i(wb_adr_i), .wb_dat_i(wb_dat_i), .wb_dat_o(wb_dat_o), 
        .wb_ack_o(wb_ack_o), .wb_int_o(wb_int_o), .tx_kbd_write_ack_i(
        tx_kbd_write_ack), .tx_kbd_data_o(tx_kbd_data), .tx_kbd_write_o(
        tx_kbd_write), .rx_scancode_i(rx_translated_scan_code), 
        .rx_kbd_data_ready_i(rx_translated_data_ready), .rx_kbd_read_o(
        rx_kbd_read_wb), .translate_o(translate), .ps2_kbd_clk_i(
        ps2_kbd_clk_pad_i), .devide_reg_o(devide_reg), .inhibit_kbd_if_o(
        inhibit_kbd_if) );
  ps2_translation_table i_ps2_translation_table ( .reset_i(wb_rst_i), 
        .clock_i(n4), .translate_i(translate), .code_i(rx_scan_code), .code_o(
        rx_translated_scan_code), .address_i({n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), .we_i(
        n_Logic0_), .re_i(n_Logic0_), .data_o({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}), .rx_data_ready_i(rx_kbd_data_ready), 
        .rx_translated_data_ready_o(rx_translated_data_ready), .rx_read_i(
        rx_kbd_read_wb), .rx_read_o(rx_kbd_read_tt), .rx_released_i(
        rx_released) );
  TIEHBWP12T30P140 U3 ( .Z(n3) );
  INVD0BWP12T30P140 U4 ( .I(n3), .ZN(ps2_kbd_data_pad_o) );
  INVD0BWP12T30P140 U5 ( .I(n3), .ZN(ps2_kbd_clk_pad_o) );
  TIELBWP12T30P140 U6 ( .ZN(n_Logic0_) );
  CKBD0BWP12T30P140 U7 ( .I(wb_clk_i), .Z(n4) );
endmodule

