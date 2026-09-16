/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:41:03 2026
/////////////////////////////////////////////////////////////


module scct_counter ( clk, rst, counter, counter_changed, irq_enable_i, 
        irq_enable_i_wen, irq_status_i, irq_status_i_wen, prescaler_i, 
        prescaler_i_wen, irq_status_o, prescaler_o );
  output [31:0] counter;
  input [31:0] prescaler_i;
  output [31:0] prescaler_o;
  input clk, rst, irq_enable_i, irq_enable_i_wen, irq_status_i,
         irq_status_i_wen, prescaler_i_wen;
  output counter_changed, irq_status_o;
  wire   prescaler_match, my_counter_32_, irq_enable, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279;
  wire   [31:0] prescaler_count;
  wire   [31:0] prescaler_shadow;

  DFCNQD1BWP12T30P140 my_counter_reg_20_ ( .D(n117), .CP(n275), .CDN(n71), .Q(
        counter[20]) );
  DFCNQD1BWP12T30P140 my_counter_reg_16_ ( .D(n121), .CP(n276), .CDN(n267), 
        .Q(counter[16]) );
  DFCNQD1BWP12T30P140 my_counter_reg_12_ ( .D(n125), .CP(n277), .CDN(n272), 
        .Q(counter[12]) );
  DFCNQD1BWP12T30P140 my_counter_reg_8_ ( .D(n129), .CP(n274), .CDN(n272), .Q(
        counter[8]) );
  DFCNQD1BWP12T30P140 my_counter_reg_4_ ( .D(n133), .CP(n273), .CDN(n271), .Q(
        counter[4]) );
  DFCNQD1BWP12T30P140 my_counter_reg_24_ ( .D(n113), .CP(n277), .CDN(n272), 
        .Q(counter[24]) );
  DFCNQD1BWP12T30P140 my_counter_reg_30_ ( .D(n107), .CP(n278), .CDN(n71), .Q(
        counter[30]) );
  DFCNQD1BWP12T30P140 my_counter_reg_28_ ( .D(n109), .CP(n278), .CDN(n272), 
        .Q(counter[28]) );
  DFCNQD1BWP12T30P140 my_counter_reg_26_ ( .D(n111), .CP(n279), .CDN(n71), .Q(
        counter[26]) );
  DFCNQD1BWP12T30P140 my_counter_reg_22_ ( .D(n115), .CP(n278), .CDN(n272), 
        .Q(counter[22]) );
  DFCNQD1BWP12T30P140 my_counter_reg_18_ ( .D(n119), .CP(n279), .CDN(n272), 
        .Q(counter[18]) );
  DFCNQD1BWP12T30P140 my_counter_reg_14_ ( .D(n123), .CP(n273), .CDN(n272), 
        .Q(counter[14]) );
  DFCNQD1BWP12T30P140 my_counter_reg_10_ ( .D(n127), .CP(n274), .CDN(n272), 
        .Q(counter[10]) );
  DFCNQD1BWP12T30P140 my_counter_reg_6_ ( .D(n131), .CP(n275), .CDN(n267), .Q(
        counter[6]) );
  DFCNQD1BWP12T30P140 my_counter_reg_2_ ( .D(n135), .CP(n276), .CDN(n270), .Q(
        counter[2]) );
  DFCNQD1BWP12T30P140 my_counter_reg_7_ ( .D(n130), .CP(n277), .CDN(n71), .Q(
        counter[7]) );
  DFCNQD1BWP12T30P140 my_counter_reg_15_ ( .D(n122), .CP(n273), .CDN(n272), 
        .Q(counter[15]) );
  DFCNQD1BWP12T30P140 my_counter_reg_31_ ( .D(n106), .CP(n279), .CDN(n71), .Q(
        counter[31]) );
  DFCNQD1BWP12T30P140 my_counter_reg_29_ ( .D(n108), .CP(n274), .CDN(n272), 
        .Q(counter[29]) );
  DFCNQD1BWP12T30P140 my_counter_reg_27_ ( .D(n110), .CP(n273), .CDN(n71), .Q(
        counter[27]) );
  DFCNQD1BWP12T30P140 my_counter_reg_25_ ( .D(n112), .CP(n274), .CDN(n272), 
        .Q(counter[25]) );
  DFCNQD1BWP12T30P140 my_counter_reg_23_ ( .D(n114), .CP(clk), .CDN(n71), .Q(
        counter[23]) );
  DFCNQD1BWP12T30P140 my_counter_reg_21_ ( .D(n116), .CP(n274), .CDN(n71), .Q(
        counter[21]) );
  DFCNQD1BWP12T30P140 my_counter_reg_19_ ( .D(n118), .CP(n275), .CDN(n71), .Q(
        counter[19]) );
  DFCNQD1BWP12T30P140 my_counter_reg_11_ ( .D(n126), .CP(n276), .CDN(n272), 
        .Q(counter[11]) );
  DFCNQD1BWP12T30P140 my_counter_reg_0_ ( .D(n137), .CP(n279), .CDN(n271), .Q(
        counter[0]) );
  DFCNQD1BWP12T30P140 my_counter_reg_17_ ( .D(n120), .CP(n273), .CDN(n71), .Q(
        counter[17]) );
  DFCNQD1BWP12T30P140 my_counter_reg_13_ ( .D(n124), .CP(n274), .CDN(n272), 
        .Q(counter[13]) );
  DFCNQD1BWP12T30P140 my_counter_reg_9_ ( .D(n128), .CP(n275), .CDN(n71), .Q(
        counter[9]) );
  DFCNQD1BWP12T30P140 my_counter_reg_5_ ( .D(n132), .CP(n276), .CDN(n269), .Q(
        counter[5]) );
  DFCNQD1BWP12T30P140 my_counter_reg_1_ ( .D(n136), .CP(n278), .CDN(n270), .Q(
        counter[1]) );
  DFCNQD1BWP12T30P140 my_counter_reg_3_ ( .D(n134), .CP(n277), .CDN(n270), .Q(
        counter[3]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_28_ ( .D(N101), .CP(n274), .CDN(n270), .Q(prescaler_count[28]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_30_ ( .D(N103), .CP(n274), .CDN(n270), .Q(prescaler_count[30]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_2_ ( .D(N75), .CP(n277), .CDN(n268), 
        .Q(prescaler_count[2]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_4_ ( .D(N77), .CP(n276), .CDN(n268), 
        .Q(prescaler_count[4]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_6_ ( .D(N79), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[6]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_8_ ( .D(N81), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[8]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_10_ ( .D(N83), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[10]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_12_ ( .D(N85), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[12]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_14_ ( .D(N87), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[14]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_16_ ( .D(N89), .CP(n275), .CDN(n269), 
        .Q(prescaler_count[16]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_18_ ( .D(N91), .CP(n275), .CDN(n269), 
        .Q(prescaler_count[18]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_20_ ( .D(N93), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[20]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_22_ ( .D(N95), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[22]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_24_ ( .D(N97), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[24]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_26_ ( .D(N99), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[26]) );
  DFCNQD1BWP12T30P140 my_counter_reg_32_ ( .D(n138), .CP(clk), .CDN(n272), .Q(
        my_counter_32_) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_0_ ( .D(n139), .CP(clk), .CDN(n71), 
        .Q(prescaler_shadow[0]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_31_ ( .D(N104), .CP(n274), .CDN(n270), .Q(prescaler_count[31]) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(n105), .CP(clk), .CDN(n272), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n104), .CP(n279), .CDN(n269), .Q(
        irq_enable) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_27_ ( .D(N100), .CP(n274), .CDN(n270), .Q(prescaler_count[27]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_29_ ( .D(N102), .CP(n274), .CDN(n270), .Q(prescaler_count[29]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_22_ ( .D(n161), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[22]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_20_ ( .D(n159), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[20]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_18_ ( .D(n157), .CP(n273), .CDN(
        n267), .Q(prescaler_shadow[18]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_16_ ( .D(n155), .CP(n273), .CDN(
        n268), .Q(prescaler_shadow[16]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_14_ ( .D(n153), .CP(n273), .CDN(
        n269), .Q(prescaler_shadow[14]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_6_ ( .D(n145), .CP(n273), .CDN(n71), 
        .Q(prescaler_shadow[6]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_24_ ( .D(n163), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[24]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_23_ ( .D(n162), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[23]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_21_ ( .D(n160), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[21]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_19_ ( .D(n158), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[19]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_17_ ( .D(n156), .CP(n273), .CDN(
        n267), .Q(prescaler_shadow[17]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_15_ ( .D(n154), .CP(n273), .CDN(
        n271), .Q(prescaler_shadow[15]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_13_ ( .D(n152), .CP(n273), .CDN(
        n270), .Q(prescaler_shadow[13]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_1_ ( .D(N74), .CP(n277), .CDN(n268), 
        .Q(prescaler_count[1]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_3_ ( .D(N76), .CP(n276), .CDN(n268), 
        .Q(prescaler_count[3]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_5_ ( .D(N78), .CP(n276), .CDN(n268), 
        .Q(prescaler_count[5]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_7_ ( .D(N80), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[7]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_9_ ( .D(N82), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[9]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_11_ ( .D(N84), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[11]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_13_ ( .D(N86), .CP(n276), .CDN(n269), 
        .Q(prescaler_count[13]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_15_ ( .D(N88), .CP(n275), .CDN(n269), 
        .Q(prescaler_count[15]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_17_ ( .D(N90), .CP(n275), .CDN(n269), 
        .Q(prescaler_count[17]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_19_ ( .D(N92), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[19]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_21_ ( .D(N94), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[21]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_23_ ( .D(N96), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[23]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_25_ ( .D(N98), .CP(n275), .CDN(n270), 
        .Q(prescaler_count[25]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_30_ ( .D(n169), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[30]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_28_ ( .D(n167), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[28]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_26_ ( .D(n165), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[26]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_7_ ( .D(n146), .CP(n274), .CDN(n270), .Q(prescaler_shadow[7]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_31_ ( .D(n170), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[31]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_29_ ( .D(n168), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[29]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_27_ ( .D(n166), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[27]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_25_ ( .D(n164), .CP(n274), .CDN(
        n271), .Q(prescaler_shadow[25]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_11_ ( .D(n150), .CP(n278), .CDN(
        n268), .Q(prescaler_shadow[11]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_9_ ( .D(n148), .CP(n276), .CDN(n271), .Q(prescaler_shadow[9]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_5_ ( .D(n144), .CP(n279), .CDN(n268), .Q(prescaler_shadow[5]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_3_ ( .D(n142), .CP(n277), .CDN(n272), .Q(prescaler_shadow[3]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_1_ ( .D(n140), .CP(n275), .CDN(n272), .Q(prescaler_shadow[1]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_12_ ( .D(n151), .CP(n279), .CDN(
        n267), .Q(prescaler_shadow[12]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_10_ ( .D(n149), .CP(n277), .CDN(
        n268), .Q(prescaler_shadow[10]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_8_ ( .D(n147), .CP(n275), .CDN(n269), .Q(prescaler_shadow[8]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_4_ ( .D(n143), .CP(n278), .CDN(n272), .Q(prescaler_shadow[4]) );
  DFCNQD1BWP12T30P140 prescaler_shadow_reg_2_ ( .D(n141), .CP(n276), .CDN(n272), .Q(prescaler_shadow[2]) );
  DFCNQD1BWP12T30P140 prescaler_reg_31_ ( .D(n103), .CP(n279), .CDN(n270), .Q(
        prescaler_o[31]) );
  DFCNQD1BWP12T30P140 prescaler_reg_30_ ( .D(n102), .CP(n279), .CDN(n271), .Q(
        prescaler_o[30]) );
  DFCNQD1BWP12T30P140 prescaler_reg_29_ ( .D(n101), .CP(n279), .CDN(n269), .Q(
        prescaler_o[29]) );
  DFCNQD1BWP12T30P140 prescaler_reg_28_ ( .D(n100), .CP(n279), .CDN(n267), .Q(
        prescaler_o[28]) );
  DFCNQD1BWP12T30P140 prescaler_reg_27_ ( .D(n99), .CP(n279), .CDN(n268), .Q(
        prescaler_o[27]) );
  DFCNQD1BWP12T30P140 prescaler_reg_26_ ( .D(n98), .CP(n279), .CDN(n270), .Q(
        prescaler_o[26]) );
  DFCNQD1BWP12T30P140 prescaler_reg_25_ ( .D(n97), .CP(n279), .CDN(n271), .Q(
        prescaler_o[25]) );
  DFCNQD1BWP12T30P140 prescaler_reg_24_ ( .D(n96), .CP(n279), .CDN(n269), .Q(
        prescaler_o[24]) );
  DFCNQD1BWP12T30P140 prescaler_reg_23_ ( .D(n95), .CP(n279), .CDN(n71), .Q(
        prescaler_o[23]) );
  DFCNQD1BWP12T30P140 prescaler_reg_22_ ( .D(n94), .CP(n279), .CDN(n268), .Q(
        prescaler_o[22]) );
  DFCNQD1BWP12T30P140 prescaler_reg_21_ ( .D(n93), .CP(n279), .CDN(n271), .Q(
        prescaler_o[21]) );
  DFCNQD1BWP12T30P140 prescaler_reg_20_ ( .D(n92), .CP(n278), .CDN(n269), .Q(
        prescaler_o[20]) );
  DFCNQD1BWP12T30P140 prescaler_reg_19_ ( .D(n91), .CP(n278), .CDN(n267), .Q(
        prescaler_o[19]) );
  DFCNQD1BWP12T30P140 prescaler_reg_18_ ( .D(n90), .CP(n278), .CDN(n267), .Q(
        prescaler_o[18]) );
  DFCNQD1BWP12T30P140 prescaler_reg_17_ ( .D(n89), .CP(n278), .CDN(n267), .Q(
        prescaler_o[17]) );
  DFCNQD1BWP12T30P140 prescaler_reg_16_ ( .D(n88), .CP(n278), .CDN(n267), .Q(
        prescaler_o[16]) );
  DFCNQD1BWP12T30P140 prescaler_reg_15_ ( .D(n87), .CP(n278), .CDN(n267), .Q(
        prescaler_o[15]) );
  DFCNQD1BWP12T30P140 prescaler_reg_14_ ( .D(n86), .CP(n278), .CDN(n267), .Q(
        prescaler_o[14]) );
  DFCNQD1BWP12T30P140 prescaler_reg_13_ ( .D(n85), .CP(n278), .CDN(n267), .Q(
        prescaler_o[13]) );
  DFCNQD1BWP12T30P140 prescaler_reg_12_ ( .D(n84), .CP(n278), .CDN(n267), .Q(
        prescaler_o[12]) );
  DFCNQD1BWP12T30P140 prescaler_reg_11_ ( .D(n83), .CP(n278), .CDN(n267), .Q(
        prescaler_o[11]) );
  DFCNQD1BWP12T30P140 prescaler_reg_10_ ( .D(n82), .CP(n278), .CDN(n267), .Q(
        prescaler_o[10]) );
  DFCNQD1BWP12T30P140 prescaler_reg_9_ ( .D(n81), .CP(n278), .CDN(n267), .Q(
        prescaler_o[9]) );
  DFCNQD1BWP12T30P140 prescaler_reg_8_ ( .D(n80), .CP(n277), .CDN(n267), .Q(
        prescaler_o[8]) );
  DFCNQD1BWP12T30P140 prescaler_reg_7_ ( .D(n79), .CP(n277), .CDN(n267), .Q(
        prescaler_o[7]) );
  DFCNQD1BWP12T30P140 prescaler_reg_6_ ( .D(n78), .CP(n277), .CDN(n268), .Q(
        prescaler_o[6]) );
  DFCNQD1BWP12T30P140 prescaler_reg_5_ ( .D(n77), .CP(n277), .CDN(n268), .Q(
        prescaler_o[5]) );
  DFCNQD1BWP12T30P140 prescaler_reg_4_ ( .D(n76), .CP(n277), .CDN(n268), .Q(
        prescaler_o[4]) );
  DFCNQD1BWP12T30P140 prescaler_reg_3_ ( .D(n75), .CP(n277), .CDN(n268), .Q(
        prescaler_o[3]) );
  DFCNQD1BWP12T30P140 prescaler_reg_2_ ( .D(n74), .CP(n277), .CDN(n268), .Q(
        prescaler_o[2]) );
  DFCNQD1BWP12T30P140 prescaler_reg_1_ ( .D(n73), .CP(n277), .CDN(n268), .Q(
        prescaler_o[1]) );
  DFCNQD1BWP12T30P140 prescaler_reg_0_ ( .D(n72), .CP(n277), .CDN(n268), .Q(
        prescaler_o[0]) );
  DFCNQD1BWP12T30P140 prescaler_count_reg_0_ ( .D(N73), .CP(n277), .CDN(n268), 
        .Q(prescaler_count[0]) );
  DFCNQD1BWP12T30P140 counter_changed_reg ( .D(prescaler_match), .CP(clk), 
        .CDN(n272), .Q(counter_changed) );
  INVD0BWP12T30P140 U3 ( .I(prescaler_count[7]), .ZN(n2) );
  INVD0BWP12T30P140 U4 ( .I(prescaler_count[6]), .ZN(n192) );
  OAI22D0BWP12T30P140 U5 ( .A1(prescaler_shadow[6]), .A2(n192), .B1(
        prescaler_shadow[7]), .B2(n2), .ZN(n1) );
  AOI221D0BWP12T30P140 U6 ( .A1(n2), .A2(prescaler_shadow[7]), .B1(n192), .B2(
        prescaler_shadow[6]), .C(n1), .ZN(n13) );
  INVD0BWP12T30P140 U7 ( .I(prescaler_count[5]), .ZN(n4) );
  INVD0BWP12T30P140 U8 ( .I(prescaler_count[4]), .ZN(n195) );
  OAI22D0BWP12T30P140 U9 ( .A1(prescaler_shadow[4]), .A2(n195), .B1(
        prescaler_shadow[5]), .B2(n4), .ZN(n3) );
  AOI221D0BWP12T30P140 U10 ( .A1(n4), .A2(prescaler_shadow[5]), .B1(n195), 
        .B2(prescaler_shadow[4]), .C(n3), .ZN(n12) );
  INVD0BWP12T30P140 U11 ( .I(prescaler_count[3]), .ZN(n6) );
  INVD0BWP12T30P140 U12 ( .I(prescaler_count[2]), .ZN(n198) );
  OAI22D0BWP12T30P140 U13 ( .A1(prescaler_shadow[2]), .A2(n198), .B1(
        prescaler_shadow[3]), .B2(n6), .ZN(n5) );
  AOI221D0BWP12T30P140 U14 ( .A1(n6), .A2(prescaler_shadow[3]), .B1(n198), 
        .B2(prescaler_shadow[2]), .C(n5), .ZN(n11) );
  INVD0BWP12T30P140 U15 ( .I(prescaler_count[1]), .ZN(n9) );
  INVD0BWP12T30P140 U16 ( .I(prescaler_count[0]), .ZN(n8) );
  OAI22D0BWP12T30P140 U17 ( .A1(prescaler_shadow[0]), .A2(n8), .B1(
        prescaler_shadow[1]), .B2(n9), .ZN(n7) );
  AOI221D0BWP12T30P140 U18 ( .A1(n9), .A2(prescaler_shadow[1]), .B1(n8), .B2(
        prescaler_shadow[0]), .C(n7), .ZN(n10) );
  ND4D0BWP12T30P140 U19 ( .A1(n13), .A2(n12), .A3(n11), .A4(n10), .ZN(n52) );
  INVD0BWP12T30P140 U20 ( .I(prescaler_count[15]), .ZN(n15) );
  INVD0BWP12T30P140 U21 ( .I(prescaler_count[14]), .ZN(n180) );
  OAI22D0BWP12T30P140 U22 ( .A1(prescaler_shadow[14]), .A2(n180), .B1(
        prescaler_shadow[15]), .B2(n15), .ZN(n14) );
  AOI221D0BWP12T30P140 U23 ( .A1(n15), .A2(prescaler_shadow[15]), .B1(n180), 
        .B2(prescaler_shadow[14]), .C(n14), .ZN(n25) );
  INVD0BWP12T30P140 U24 ( .I(prescaler_count[13]), .ZN(n17) );
  INVD0BWP12T30P140 U25 ( .I(prescaler_count[12]), .ZN(n183) );
  OAI22D0BWP12T30P140 U26 ( .A1(prescaler_shadow[12]), .A2(n183), .B1(
        prescaler_shadow[13]), .B2(n17), .ZN(n16) );
  AOI221D0BWP12T30P140 U27 ( .A1(n17), .A2(prescaler_shadow[13]), .B1(n183), 
        .B2(prescaler_shadow[12]), .C(n16), .ZN(n24) );
  INVD0BWP12T30P140 U28 ( .I(prescaler_count[11]), .ZN(n19) );
  INVD0BWP12T30P140 U29 ( .I(prescaler_count[10]), .ZN(n186) );
  OAI22D0BWP12T30P140 U30 ( .A1(prescaler_shadow[10]), .A2(n186), .B1(
        prescaler_shadow[11]), .B2(n19), .ZN(n18) );
  AOI221D0BWP12T30P140 U31 ( .A1(n19), .A2(prescaler_shadow[11]), .B1(n186), 
        .B2(prescaler_shadow[10]), .C(n18), .ZN(n23) );
  INVD0BWP12T30P140 U32 ( .I(prescaler_count[9]), .ZN(n21) );
  INVD0BWP12T30P140 U33 ( .I(prescaler_count[8]), .ZN(n189) );
  OAI22D0BWP12T30P140 U34 ( .A1(prescaler_shadow[8]), .A2(n189), .B1(
        prescaler_shadow[9]), .B2(n21), .ZN(n20) );
  AOI221D0BWP12T30P140 U35 ( .A1(n21), .A2(prescaler_shadow[9]), .B1(n189), 
        .B2(prescaler_shadow[8]), .C(n20), .ZN(n22) );
  ND4D0BWP12T30P140 U36 ( .A1(n25), .A2(n24), .A3(n23), .A4(n22), .ZN(n51) );
  INVD0BWP12T30P140 U37 ( .I(prescaler_count[23]), .ZN(n27) );
  INVD0BWP12T30P140 U38 ( .I(prescaler_count[22]), .ZN(n68) );
  OAI22D0BWP12T30P140 U39 ( .A1(prescaler_shadow[22]), .A2(n68), .B1(
        prescaler_shadow[23]), .B2(n27), .ZN(n26) );
  AOI221D0BWP12T30P140 U40 ( .A1(n27), .A2(prescaler_shadow[23]), .B1(n68), 
        .B2(prescaler_shadow[22]), .C(n26), .ZN(n37) );
  INVD0BWP12T30P140 U41 ( .I(prescaler_count[21]), .ZN(n29) );
  INVD0BWP12T30P140 U42 ( .I(prescaler_count[20]), .ZN(n171) );
  OAI22D0BWP12T30P140 U43 ( .A1(prescaler_shadow[20]), .A2(n171), .B1(
        prescaler_shadow[21]), .B2(n29), .ZN(n28) );
  AOI221D0BWP12T30P140 U44 ( .A1(n29), .A2(prescaler_shadow[21]), .B1(n171), 
        .B2(prescaler_shadow[20]), .C(n28), .ZN(n36) );
  INVD0BWP12T30P140 U45 ( .I(prescaler_count[19]), .ZN(n31) );
  INVD0BWP12T30P140 U46 ( .I(prescaler_count[18]), .ZN(n174) );
  OAI22D0BWP12T30P140 U47 ( .A1(prescaler_shadow[18]), .A2(n174), .B1(
        prescaler_shadow[19]), .B2(n31), .ZN(n30) );
  AOI221D0BWP12T30P140 U48 ( .A1(n31), .A2(prescaler_shadow[19]), .B1(n174), 
        .B2(prescaler_shadow[18]), .C(n30), .ZN(n35) );
  INVD0BWP12T30P140 U49 ( .I(prescaler_count[17]), .ZN(n33) );
  INVD0BWP12T30P140 U50 ( .I(prescaler_count[16]), .ZN(n177) );
  OAI22D0BWP12T30P140 U51 ( .A1(prescaler_shadow[16]), .A2(n177), .B1(
        prescaler_shadow[17]), .B2(n33), .ZN(n32) );
  AOI221D0BWP12T30P140 U52 ( .A1(n33), .A2(prescaler_shadow[17]), .B1(n177), 
        .B2(prescaler_shadow[16]), .C(n32), .ZN(n34) );
  ND4D0BWP12T30P140 U53 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .ZN(n50) );
  INVD0BWP12T30P140 U54 ( .I(prescaler_count[30]), .ZN(n201) );
  INVD0BWP12T30P140 U55 ( .I(prescaler_count[29]), .ZN(n39) );
  OAI22D0BWP12T30P140 U56 ( .A1(prescaler_shadow[29]), .A2(n39), .B1(
        prescaler_shadow[30]), .B2(n201), .ZN(n38) );
  AOI221D0BWP12T30P140 U57 ( .A1(n201), .A2(prescaler_shadow[30]), .B1(n39), 
        .B2(prescaler_shadow[29]), .C(n38), .ZN(n48) );
  INVD0BWP12T30P140 U58 ( .I(prescaler_count[28]), .ZN(n205) );
  INVD0BWP12T30P140 U59 ( .I(prescaler_count[27]), .ZN(n41) );
  OAI22D0BWP12T30P140 U60 ( .A1(prescaler_shadow[27]), .A2(n41), .B1(
        prescaler_shadow[28]), .B2(n205), .ZN(n40) );
  AOI221D0BWP12T30P140 U61 ( .A1(n205), .A2(prescaler_shadow[28]), .B1(n41), 
        .B2(prescaler_shadow[27]), .C(n40), .ZN(n47) );
  INVD0BWP12T30P140 U62 ( .I(prescaler_count[26]), .ZN(n62) );
  INVD0BWP12T30P140 U63 ( .I(prescaler_count[25]), .ZN(n43) );
  OAI22D0BWP12T30P140 U64 ( .A1(prescaler_shadow[25]), .A2(n43), .B1(
        prescaler_shadow[26]), .B2(n62), .ZN(n42) );
  AOI221D0BWP12T30P140 U65 ( .A1(n62), .A2(prescaler_shadow[26]), .B1(n43), 
        .B2(prescaler_shadow[25]), .C(n42), .ZN(n46) );
  INVD0BWP12T30P140 U66 ( .I(prescaler_count[24]), .ZN(n65) );
  INVD0BWP12T30P140 U67 ( .I(prescaler_count[31]), .ZN(n57) );
  OAI22D0BWP12T30P140 U68 ( .A1(prescaler_shadow[31]), .A2(n57), .B1(
        prescaler_shadow[24]), .B2(n65), .ZN(n44) );
  AOI221D0BWP12T30P140 U69 ( .A1(n65), .A2(prescaler_shadow[24]), .B1(n57), 
        .B2(prescaler_shadow[31]), .C(n44), .ZN(n45) );
  ND4D0BWP12T30P140 U70 ( .A1(n48), .A2(n47), .A3(n46), .A4(n45), .ZN(n49) );
  NR4D0BWP12T30P140 U71 ( .A1(n52), .A2(n51), .A3(n50), .A4(n49), .ZN(
        prescaler_match) );
  CKBD0BWP12T30P140 U72 ( .I(prescaler_match), .Z(n55) );
  CKBD0BWP12T30P140 U73 ( .I(n55), .Z(n231) );
  NR2D0BWP12T30P140 U74 ( .A1(prescaler_count[0]), .A2(n231), .ZN(N73) );
  CKBD0BWP12T30P140 U75 ( .I(prescaler_i_wen), .Z(n53) );
  CKMUX2D0BWP12T30P140 U76 ( .I0(prescaler_o[0]), .I1(prescaler_i[0]), .S(n53), 
        .Z(n72) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(prescaler_o[1]), .I1(prescaler_i[1]), .S(n53), 
        .Z(n73) );
  CKMUX2D0BWP12T30P140 U78 ( .I0(prescaler_o[2]), .I1(prescaler_i[2]), .S(n53), 
        .Z(n74) );
  CKMUX2D0BWP12T30P140 U79 ( .I0(prescaler_o[3]), .I1(prescaler_i[3]), .S(n53), 
        .Z(n75) );
  CKMUX2D0BWP12T30P140 U80 ( .I0(prescaler_o[4]), .I1(prescaler_i[4]), .S(n53), 
        .Z(n76) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(prescaler_o[5]), .I1(prescaler_i[5]), .S(n53), 
        .Z(n77) );
  CKMUX2D0BWP12T30P140 U82 ( .I0(prescaler_o[6]), .I1(prescaler_i[6]), .S(n53), 
        .Z(n78) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(prescaler_o[7]), .I1(prescaler_i[7]), .S(
        prescaler_i_wen), .Z(n79) );
  CKMUX2D0BWP12T30P140 U84 ( .I0(prescaler_o[8]), .I1(prescaler_i[8]), .S(n53), 
        .Z(n80) );
  CKMUX2D0BWP12T30P140 U85 ( .I0(prescaler_o[9]), .I1(prescaler_i[9]), .S(
        prescaler_i_wen), .Z(n81) );
  CKMUX2D0BWP12T30P140 U86 ( .I0(prescaler_o[10]), .I1(prescaler_i[10]), .S(
        n53), .Z(n82) );
  CKMUX2D0BWP12T30P140 U87 ( .I0(prescaler_o[11]), .I1(prescaler_i[11]), .S(
        prescaler_i_wen), .Z(n83) );
  CKMUX2D0BWP12T30P140 U88 ( .I0(prescaler_o[12]), .I1(prescaler_i[12]), .S(
        n53), .Z(n84) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(prescaler_o[13]), .I1(prescaler_i[13]), .S(
        prescaler_i_wen), .Z(n85) );
  CKMUX2D0BWP12T30P140 U90 ( .I0(prescaler_o[14]), .I1(prescaler_i[14]), .S(
        n53), .Z(n86) );
  CKMUX2D0BWP12T30P140 U91 ( .I0(prescaler_o[15]), .I1(prescaler_i[15]), .S(
        prescaler_i_wen), .Z(n87) );
  CKMUX2D0BWP12T30P140 U92 ( .I0(prescaler_o[16]), .I1(prescaler_i[16]), .S(
        n53), .Z(n88) );
  CKMUX2D0BWP12T30P140 U93 ( .I0(prescaler_o[17]), .I1(prescaler_i[17]), .S(
        prescaler_i_wen), .Z(n89) );
  CKMUX2D0BWP12T30P140 U94 ( .I0(prescaler_o[18]), .I1(prescaler_i[18]), .S(
        n53), .Z(n90) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(prescaler_o[19]), .I1(prescaler_i[19]), .S(
        prescaler_i_wen), .Z(n91) );
  CKMUX2D0BWP12T30P140 U96 ( .I0(prescaler_o[20]), .I1(prescaler_i[20]), .S(
        prescaler_i_wen), .Z(n92) );
  CKMUX2D0BWP12T30P140 U97 ( .I0(prescaler_o[21]), .I1(prescaler_i[21]), .S(
        prescaler_i_wen), .Z(n93) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(prescaler_o[22]), .I1(prescaler_i[22]), .S(
        prescaler_i_wen), .Z(n94) );
  CKMUX2D0BWP12T30P140 U99 ( .I0(prescaler_o[23]), .I1(prescaler_i[23]), .S(
        prescaler_i_wen), .Z(n95) );
  CKMUX2D0BWP12T30P140 U100 ( .I0(prescaler_o[24]), .I1(prescaler_i[24]), .S(
        n53), .Z(n96) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(prescaler_o[25]), .I1(prescaler_i[25]), .S(
        prescaler_i_wen), .Z(n97) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(prescaler_o[26]), .I1(prescaler_i[26]), .S(
        n53), .Z(n98) );
  CKMUX2D0BWP12T30P140 U103 ( .I0(prescaler_o[27]), .I1(prescaler_i[27]), .S(
        prescaler_i_wen), .Z(n99) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(prescaler_o[28]), .I1(prescaler_i[28]), .S(
        n53), .Z(n100) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(prescaler_o[29]), .I1(prescaler_i[29]), .S(
        prescaler_i_wen), .Z(n101) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(prescaler_o[30]), .I1(prescaler_i[30]), .S(
        n53), .Z(n102) );
  CKMUX2D0BWP12T30P140 U107 ( .I0(prescaler_o[31]), .I1(prescaler_i[31]), .S(
        prescaler_i_wen), .Z(n103) );
  INVD0BWP12T30P140 U108 ( .I(n55), .ZN(n58) );
  OA22D0BWP12T30P140 U109 ( .A1(n58), .A2(prescaler_o[2]), .B1(
        prescaler_shadow[2]), .B2(prescaler_match), .Z(n141) );
  OA22D0BWP12T30P140 U110 ( .A1(n58), .A2(prescaler_o[4]), .B1(
        prescaler_shadow[4]), .B2(prescaler_match), .Z(n143) );
  OA22D0BWP12T30P140 U111 ( .A1(n58), .A2(prescaler_o[8]), .B1(
        prescaler_shadow[8]), .B2(prescaler_match), .Z(n147) );
  OA22D0BWP12T30P140 U112 ( .A1(n58), .A2(prescaler_o[10]), .B1(
        prescaler_shadow[10]), .B2(prescaler_match), .Z(n149) );
  CKBD0BWP12T30P140 U113 ( .I(prescaler_match), .Z(n202) );
  OA22D0BWP12T30P140 U114 ( .A1(n58), .A2(prescaler_o[12]), .B1(
        prescaler_shadow[12]), .B2(n202), .Z(n151) );
  OA22D0BWP12T30P140 U115 ( .A1(n58), .A2(prescaler_o[1]), .B1(
        prescaler_shadow[1]), .B2(prescaler_match), .Z(n140) );
  OA22D0BWP12T30P140 U116 ( .A1(n58), .A2(prescaler_o[3]), .B1(
        prescaler_shadow[3]), .B2(n55), .Z(n142) );
  OA22D0BWP12T30P140 U117 ( .A1(n58), .A2(prescaler_o[5]), .B1(
        prescaler_shadow[5]), .B2(n55), .Z(n144) );
  OA22D0BWP12T30P140 U118 ( .A1(n58), .A2(prescaler_o[9]), .B1(
        prescaler_shadow[9]), .B2(n55), .Z(n148) );
  OA22D0BWP12T30P140 U119 ( .A1(n58), .A2(prescaler_o[11]), .B1(
        prescaler_shadow[11]), .B2(n55), .Z(n150) );
  INVD0BWP12T30P140 U120 ( .I(n55), .ZN(n219) );
  OA22D0BWP12T30P140 U121 ( .A1(n219), .A2(prescaler_o[25]), .B1(
        prescaler_shadow[25]), .B2(n202), .Z(n164) );
  OA22D0BWP12T30P140 U122 ( .A1(n219), .A2(prescaler_o[27]), .B1(
        prescaler_shadow[27]), .B2(n202), .Z(n166) );
  OA22D0BWP12T30P140 U123 ( .A1(n219), .A2(prescaler_o[29]), .B1(
        prescaler_shadow[29]), .B2(n202), .Z(n168) );
  OA22D0BWP12T30P140 U124 ( .A1(n219), .A2(prescaler_o[31]), .B1(
        prescaler_shadow[31]), .B2(n202), .Z(n170) );
  OA22D0BWP12T30P140 U125 ( .A1(n58), .A2(prescaler_o[7]), .B1(
        prescaler_shadow[7]), .B2(n55), .Z(n146) );
  OA22D0BWP12T30P140 U126 ( .A1(n219), .A2(prescaler_o[26]), .B1(
        prescaler_shadow[26]), .B2(n202), .Z(n165) );
  OA22D0BWP12T30P140 U127 ( .A1(n219), .A2(prescaler_o[28]), .B1(
        prescaler_shadow[28]), .B2(n202), .Z(n167) );
  OA22D0BWP12T30P140 U128 ( .A1(n219), .A2(prescaler_o[30]), .B1(
        prescaler_shadow[30]), .B2(n202), .Z(n169) );
  ND2D0BWP12T30P140 U129 ( .A1(prescaler_count[1]), .A2(prescaler_count[0]), 
        .ZN(n197) );
  NR2D0BWP12T30P140 U130 ( .A1(n198), .A2(n197), .ZN(n196) );
  ND2D0BWP12T30P140 U131 ( .A1(prescaler_count[3]), .A2(n196), .ZN(n194) );
  NR2D0BWP12T30P140 U132 ( .A1(n195), .A2(n194), .ZN(n193) );
  ND2D0BWP12T30P140 U133 ( .A1(prescaler_count[5]), .A2(n193), .ZN(n191) );
  NR2D0BWP12T30P140 U134 ( .A1(n192), .A2(n191), .ZN(n190) );
  ND2D0BWP12T30P140 U135 ( .A1(prescaler_count[7]), .A2(n190), .ZN(n188) );
  NR2D0BWP12T30P140 U136 ( .A1(n189), .A2(n188), .ZN(n187) );
  ND2D0BWP12T30P140 U137 ( .A1(prescaler_count[9]), .A2(n187), .ZN(n185) );
  NR2D0BWP12T30P140 U138 ( .A1(n186), .A2(n185), .ZN(n184) );
  ND2D0BWP12T30P140 U139 ( .A1(prescaler_count[11]), .A2(n184), .ZN(n182) );
  NR2D0BWP12T30P140 U140 ( .A1(n183), .A2(n182), .ZN(n181) );
  ND2D0BWP12T30P140 U141 ( .A1(prescaler_count[13]), .A2(n181), .ZN(n179) );
  NR2D0BWP12T30P140 U142 ( .A1(n180), .A2(n179), .ZN(n178) );
  ND2D0BWP12T30P140 U143 ( .A1(prescaler_count[15]), .A2(n178), .ZN(n176) );
  NR2D0BWP12T30P140 U144 ( .A1(n177), .A2(n176), .ZN(n175) );
  ND2D0BWP12T30P140 U145 ( .A1(prescaler_count[17]), .A2(n175), .ZN(n173) );
  NR2D0BWP12T30P140 U146 ( .A1(n174), .A2(n173), .ZN(n172) );
  ND2D0BWP12T30P140 U147 ( .A1(prescaler_count[19]), .A2(n172), .ZN(n70) );
  NR2D0BWP12T30P140 U148 ( .A1(n171), .A2(n70), .ZN(n69) );
  ND2D0BWP12T30P140 U149 ( .A1(prescaler_count[21]), .A2(n69), .ZN(n67) );
  NR2D0BWP12T30P140 U150 ( .A1(n68), .A2(n67), .ZN(n66) );
  ND2D0BWP12T30P140 U151 ( .A1(prescaler_count[23]), .A2(n66), .ZN(n64) );
  NR2D0BWP12T30P140 U152 ( .A1(n65), .A2(n64), .ZN(n63) );
  ND2D0BWP12T30P140 U153 ( .A1(prescaler_count[25]), .A2(n63), .ZN(n61) );
  INVD0BWP12T30P140 U154 ( .I(n55), .ZN(n208) );
  OA211D0BWP12T30P140 U155 ( .A1(prescaler_count[25]), .A2(n63), .B(n61), .C(
        n208), .Z(N98) );
  OA211D0BWP12T30P140 U156 ( .A1(prescaler_count[23]), .A2(n66), .B(n64), .C(
        n208), .Z(N96) );
  OA211D0BWP12T30P140 U157 ( .A1(prescaler_count[21]), .A2(n69), .B(n67), .C(
        n208), .Z(N94) );
  OA211D0BWP12T30P140 U158 ( .A1(prescaler_count[19]), .A2(n172), .B(n70), .C(
        n208), .Z(N92) );
  OA211D0BWP12T30P140 U159 ( .A1(prescaler_count[17]), .A2(n175), .B(n173), 
        .C(n208), .Z(N90) );
  INVD0BWP12T30P140 U160 ( .I(n55), .ZN(n229) );
  OA211D0BWP12T30P140 U161 ( .A1(prescaler_count[15]), .A2(n178), .B(n176), 
        .C(n229), .Z(N88) );
  OA211D0BWP12T30P140 U162 ( .A1(prescaler_count[13]), .A2(n181), .B(n179), 
        .C(n229), .Z(N86) );
  OA211D0BWP12T30P140 U163 ( .A1(prescaler_count[11]), .A2(n184), .B(n182), 
        .C(n229), .Z(N84) );
  OA211D0BWP12T30P140 U164 ( .A1(prescaler_count[9]), .A2(n187), .B(n185), .C(
        n208), .Z(N82) );
  OA211D0BWP12T30P140 U165 ( .A1(prescaler_count[7]), .A2(n190), .B(n188), .C(
        n229), .Z(N80) );
  OA211D0BWP12T30P140 U166 ( .A1(prescaler_count[5]), .A2(n193), .B(n191), .C(
        n229), .Z(N78) );
  OA211D0BWP12T30P140 U167 ( .A1(prescaler_count[3]), .A2(n196), .B(n194), .C(
        n229), .Z(N76) );
  OA211D0BWP12T30P140 U168 ( .A1(prescaler_count[1]), .A2(prescaler_count[0]), 
        .B(n197), .C(n208), .Z(N74) );
  OA22D0BWP12T30P140 U169 ( .A1(n58), .A2(prescaler_o[13]), .B1(
        prescaler_shadow[13]), .B2(n55), .Z(n152) );
  OA22D0BWP12T30P140 U170 ( .A1(n208), .A2(prescaler_o[15]), .B1(
        prescaler_shadow[15]), .B2(n55), .Z(n154) );
  OA22D0BWP12T30P140 U171 ( .A1(n208), .A2(prescaler_o[17]), .B1(
        prescaler_shadow[17]), .B2(n55), .Z(n156) );
  OA22D0BWP12T30P140 U172 ( .A1(n208), .A2(prescaler_o[19]), .B1(
        prescaler_shadow[19]), .B2(n202), .Z(n158) );
  OA22D0BWP12T30P140 U173 ( .A1(n58), .A2(prescaler_o[21]), .B1(
        prescaler_shadow[21]), .B2(n202), .Z(n160) );
  OA22D0BWP12T30P140 U174 ( .A1(n58), .A2(prescaler_o[23]), .B1(
        prescaler_shadow[23]), .B2(n202), .Z(n162) );
  OA22D0BWP12T30P140 U175 ( .A1(n58), .A2(prescaler_o[24]), .B1(
        prescaler_shadow[24]), .B2(n202), .Z(n163) );
  OA22D0BWP12T30P140 U176 ( .A1(n58), .A2(prescaler_o[6]), .B1(
        prescaler_shadow[6]), .B2(prescaler_match), .Z(n145) );
  OA22D0BWP12T30P140 U177 ( .A1(n208), .A2(prescaler_o[14]), .B1(
        prescaler_shadow[14]), .B2(prescaler_match), .Z(n153) );
  OA22D0BWP12T30P140 U178 ( .A1(n208), .A2(prescaler_o[16]), .B1(
        prescaler_shadow[16]), .B2(n55), .Z(n155) );
  OA22D0BWP12T30P140 U179 ( .A1(n208), .A2(prescaler_o[18]), .B1(
        prescaler_shadow[18]), .B2(n202), .Z(n157) );
  OA22D0BWP12T30P140 U180 ( .A1(n208), .A2(prescaler_o[20]), .B1(
        prescaler_shadow[20]), .B2(n202), .Z(n159) );
  OA22D0BWP12T30P140 U181 ( .A1(n58), .A2(prescaler_o[22]), .B1(
        prescaler_shadow[22]), .B2(n202), .Z(n161) );
  NR2D0BWP12T30P140 U182 ( .A1(n62), .A2(n61), .ZN(n60) );
  ND2D0BWP12T30P140 U183 ( .A1(prescaler_count[27]), .A2(n60), .ZN(n204) );
  NR2D0BWP12T30P140 U184 ( .A1(n205), .A2(n204), .ZN(n203) );
  ND2D0BWP12T30P140 U185 ( .A1(prescaler_count[29]), .A2(n203), .ZN(n200) );
  OA211D0BWP12T30P140 U186 ( .A1(prescaler_count[29]), .A2(n203), .B(n200), 
        .C(n208), .Z(N102) );
  OA211D0BWP12T30P140 U187 ( .A1(prescaler_count[27]), .A2(n60), .B(n204), .C(
        n208), .Z(N100) );
  CKMUX2D0BWP12T30P140 U188 ( .I0(irq_enable), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n104) );
  AOI21D0BWP12T30P140 U189 ( .A1(irq_status_i), .A2(irq_status_i_wen), .B(
        my_counter_32_), .ZN(n54) );
  AO22D0BWP12T30P140 U190 ( .A1(my_counter_32_), .A2(irq_enable), .B1(
        irq_status_o), .B2(n54), .Z(n105) );
  NR2D0BWP12T30P140 U191 ( .A1(n201), .A2(n200), .ZN(n199) );
  INVD0BWP12T30P140 U192 ( .I(n199), .ZN(n56) );
  AOI221D0BWP12T30P140 U193 ( .A1(prescaler_count[31]), .A2(n199), .B1(n57), 
        .B2(n56), .C(n55), .ZN(N104) );
  OA22D0BWP12T30P140 U194 ( .A1(n58), .A2(prescaler_o[0]), .B1(
        prescaler_shadow[0]), .B2(prescaler_match), .Z(n139) );
  INVD0BWP12T30P140 U195 ( .I(counter[24]), .ZN(n244) );
  INVD0BWP12T30P140 U196 ( .I(counter[22]), .ZN(n266) );
  INVD0BWP12T30P140 U197 ( .I(counter[2]), .ZN(n246) );
  INVD0BWP12T30P140 U198 ( .I(counter[0]), .ZN(n218) );
  INR3D1BWP12T30P140 U199 ( .A1(counter[1]), .B1(n246), .B2(n218), .ZN(n206)
         );
  ND3D0BWP12T30P140 U200 ( .A1(n206), .A2(counter[4]), .A3(counter[3]), .ZN(
        n210) );
  INVD0BWP12T30P140 U201 ( .I(counter[6]), .ZN(n250) );
  INVD0BWP12T30P140 U202 ( .I(counter[5]), .ZN(n209) );
  NR3D0BWP12T30P140 U203 ( .A1(n210), .A2(n250), .A3(n209), .ZN(n230) );
  ND3D0BWP12T30P140 U204 ( .A1(n230), .A2(counter[8]), .A3(counter[7]), .ZN(
        n212) );
  INVD0BWP12T30P140 U205 ( .I(counter[10]), .ZN(n254) );
  INVD0BWP12T30P140 U206 ( .I(counter[9]), .ZN(n211) );
  NR3D0BWP12T30P140 U207 ( .A1(n212), .A2(n254), .A3(n211), .ZN(n220) );
  ND3D0BWP12T30P140 U208 ( .A1(n220), .A2(counter[12]), .A3(counter[11]), .ZN(
        n214) );
  INVD0BWP12T30P140 U209 ( .I(counter[14]), .ZN(n258) );
  INVD0BWP12T30P140 U210 ( .I(counter[13]), .ZN(n213) );
  NR3D0BWP12T30P140 U211 ( .A1(n214), .A2(n258), .A3(n213), .ZN(n227) );
  ND3D0BWP12T30P140 U212 ( .A1(n227), .A2(counter[16]), .A3(counter[15]), .ZN(
        n216) );
  INVD0BWP12T30P140 U213 ( .I(counter[18]), .ZN(n262) );
  INVD0BWP12T30P140 U214 ( .I(counter[17]), .ZN(n215) );
  NR3D0BWP12T30P140 U215 ( .A1(n216), .A2(n262), .A3(n215), .ZN(n222) );
  ND3D0BWP12T30P140 U216 ( .A1(n222), .A2(counter[20]), .A3(counter[19]), .ZN(
        n59) );
  NR2D0BWP12T30P140 U217 ( .A1(n208), .A2(n59), .ZN(n224) );
  ND2D0BWP12T30P140 U218 ( .A1(counter[21]), .A2(n224), .ZN(n265) );
  NR2D0BWP12T30P140 U219 ( .A1(n266), .A2(n265), .ZN(n225) );
  ND2D0BWP12T30P140 U220 ( .A1(n225), .A2(counter[23]), .ZN(n243) );
  NR2D0BWP12T30P140 U221 ( .A1(n244), .A2(n243), .ZN(n242) );
  ND2D0BWP12T30P140 U222 ( .A1(n242), .A2(counter[25]), .ZN(n235) );
  INVD0BWP12T30P140 U223 ( .I(counter[26]), .ZN(n234) );
  NR2D0BWP12T30P140 U224 ( .A1(n235), .A2(n234), .ZN(n233) );
  ND2D0BWP12T30P140 U225 ( .A1(n233), .A2(counter[27]), .ZN(n238) );
  INVD0BWP12T30P140 U226 ( .I(counter[28]), .ZN(n237) );
  NR2D0BWP12T30P140 U227 ( .A1(n238), .A2(n237), .ZN(n236) );
  ND2D0BWP12T30P140 U228 ( .A1(n236), .A2(counter[29]), .ZN(n241) );
  INVD0BWP12T30P140 U229 ( .I(counter[30]), .ZN(n240) );
  NR2D0BWP12T30P140 U230 ( .A1(n241), .A2(n240), .ZN(n239) );
  ND2D0BWP12T30P140 U231 ( .A1(n239), .A2(counter[31]), .ZN(n226) );
  NR2D0BWP12T30P140 U232 ( .A1(my_counter_32_), .A2(n226), .ZN(n138) );
  AOI211D0BWP12T30P140 U233 ( .A1(n62), .A2(n61), .B(n60), .C(n202), .ZN(N99)
         );
  AOI211D0BWP12T30P140 U234 ( .A1(n65), .A2(n64), .B(n63), .C(n202), .ZN(N97)
         );
  AOI211D0BWP12T30P140 U235 ( .A1(n68), .A2(n67), .B(n66), .C(n202), .ZN(N95)
         );
  AOI211D0BWP12T30P140 U236 ( .A1(n171), .A2(n70), .B(n69), .C(n231), .ZN(N93)
         );
  AOI211D0BWP12T30P140 U237 ( .A1(n174), .A2(n173), .B(n172), .C(n231), .ZN(
        N91) );
  AOI211D0BWP12T30P140 U238 ( .A1(n177), .A2(n176), .B(n175), .C(n231), .ZN(
        N89) );
  AOI211D0BWP12T30P140 U239 ( .A1(n180), .A2(n179), .B(n178), .C(n231), .ZN(
        N87) );
  AOI211D0BWP12T30P140 U240 ( .A1(n183), .A2(n182), .B(n181), .C(n231), .ZN(
        N85) );
  AOI211D0BWP12T30P140 U241 ( .A1(n186), .A2(n185), .B(n184), .C(n231), .ZN(
        N83) );
  AOI211D0BWP12T30P140 U242 ( .A1(n189), .A2(n188), .B(n187), .C(n231), .ZN(
        N81) );
  AOI211D0BWP12T30P140 U243 ( .A1(n192), .A2(n191), .B(n190), .C(n231), .ZN(
        N79) );
  AOI211D0BWP12T30P140 U244 ( .A1(n195), .A2(n194), .B(n193), .C(n231), .ZN(
        N77) );
  AOI211D0BWP12T30P140 U245 ( .A1(n198), .A2(n197), .B(n196), .C(n231), .ZN(
        N75) );
  AOI211D0BWP12T30P140 U246 ( .A1(n201), .A2(n200), .B(n199), .C(n202), .ZN(
        N103) );
  AOI211D0BWP12T30P140 U247 ( .A1(n205), .A2(n204), .B(n203), .C(n202), .ZN(
        N101) );
  INR2D1BWP12T30P140 U248 ( .A1(n206), .B1(n229), .ZN(n207) );
  ND3D0BWP12T30P140 U249 ( .A1(n231), .A2(n206), .A3(counter[3]), .ZN(n247) );
  OA21D0BWP12T30P140 U250 ( .A1(counter[3]), .A2(n207), .B(n247), .Z(n134) );
  NR2D0BWP12T30P140 U251 ( .A1(n208), .A2(n218), .ZN(n217) );
  ND3D0BWP12T30P140 U252 ( .A1(n231), .A2(counter[1]), .A3(counter[0]), .ZN(
        n245) );
  OA21D0BWP12T30P140 U253 ( .A1(counter[1]), .A2(n217), .B(n245), .Z(n136) );
  NR3D0BWP12T30P140 U254 ( .A1(n229), .A2(n210), .A3(n209), .ZN(n249) );
  AOI221D0BWP12T30P140 U255 ( .A1(n210), .A2(n209), .B1(n219), .B2(n209), .C(
        n249), .ZN(n132) );
  NR3D0BWP12T30P140 U256 ( .A1(n229), .A2(n212), .A3(n211), .ZN(n253) );
  AOI221D0BWP12T30P140 U257 ( .A1(n212), .A2(n211), .B1(n219), .B2(n211), .C(
        n253), .ZN(n128) );
  NR3D0BWP12T30P140 U258 ( .A1(n229), .A2(n214), .A3(n213), .ZN(n257) );
  AOI221D0BWP12T30P140 U259 ( .A1(n214), .A2(n213), .B1(n219), .B2(n213), .C(
        n257), .ZN(n124) );
  NR3D0BWP12T30P140 U260 ( .A1(n229), .A2(n216), .A3(n215), .ZN(n261) );
  AOI221D0BWP12T30P140 U261 ( .A1(n216), .A2(n215), .B1(n219), .B2(n215), .C(
        n261), .ZN(n120) );
  AOI21D0BWP12T30P140 U262 ( .A1(n219), .A2(n218), .B(n217), .ZN(n137) );
  INR2D1BWP12T30P140 U263 ( .A1(n220), .B1(n229), .ZN(n221) );
  ND3D0BWP12T30P140 U264 ( .A1(n231), .A2(n220), .A3(counter[11]), .ZN(n255)
         );
  OA21D0BWP12T30P140 U265 ( .A1(counter[11]), .A2(n221), .B(n255), .Z(n126) );
  INR2D1BWP12T30P140 U266 ( .A1(n222), .B1(n229), .ZN(n223) );
  ND3D0BWP12T30P140 U267 ( .A1(n231), .A2(n222), .A3(counter[19]), .ZN(n263)
         );
  OA21D0BWP12T30P140 U268 ( .A1(counter[19]), .A2(n223), .B(n263), .Z(n118) );
  OA21D0BWP12T30P140 U269 ( .A1(counter[21]), .A2(n224), .B(n265), .Z(n116) );
  OA21D0BWP12T30P140 U270 ( .A1(n225), .A2(counter[23]), .B(n243), .Z(n114) );
  OA21D0BWP12T30P140 U271 ( .A1(n242), .A2(counter[25]), .B(n235), .Z(n112) );
  OA21D0BWP12T30P140 U272 ( .A1(n233), .A2(counter[27]), .B(n238), .Z(n110) );
  OA21D0BWP12T30P140 U273 ( .A1(n236), .A2(counter[29]), .B(n241), .Z(n108) );
  OA21D0BWP12T30P140 U274 ( .A1(n239), .A2(counter[31]), .B(n226), .Z(n106) );
  INR2D1BWP12T30P140 U275 ( .A1(n227), .B1(n229), .ZN(n228) );
  ND3D0BWP12T30P140 U276 ( .A1(n231), .A2(n227), .A3(counter[15]), .ZN(n259)
         );
  OA21D0BWP12T30P140 U277 ( .A1(counter[15]), .A2(n228), .B(n259), .Z(n122) );
  INR2D1BWP12T30P140 U278 ( .A1(n230), .B1(n229), .ZN(n232) );
  ND3D0BWP12T30P140 U279 ( .A1(n231), .A2(n230), .A3(counter[7]), .ZN(n251) );
  OA21D0BWP12T30P140 U280 ( .A1(counter[7]), .A2(n232), .B(n251), .Z(n130) );
  AOI21D0BWP12T30P140 U281 ( .A1(n235), .A2(n234), .B(n233), .ZN(n111) );
  AOI21D0BWP12T30P140 U282 ( .A1(n238), .A2(n237), .B(n236), .ZN(n109) );
  AOI21D0BWP12T30P140 U283 ( .A1(n241), .A2(n240), .B(n239), .ZN(n107) );
  AOI21D0BWP12T30P140 U284 ( .A1(n244), .A2(n243), .B(n242), .ZN(n113) );
  CKBD0BWP12T30P140 U285 ( .I(clk), .Z(n279) );
  CKBD0BWP12T30P140 U286 ( .I(clk), .Z(n274) );
  CKBD0BWP12T30P140 U287 ( .I(clk), .Z(n275) );
  CKBD0BWP12T30P140 U288 ( .I(clk), .Z(n276) );
  CKBD0BWP12T30P140 U289 ( .I(clk), .Z(n273) );
  CKBD0BWP12T30P140 U290 ( .I(clk), .Z(n277) );
  CKBD0BWP12T30P140 U291 ( .I(clk), .Z(n278) );
  INVD0BWP12T30P140 U292 ( .I(rst), .ZN(n71) );
  CKBD0BWP12T30P140 U293 ( .I(n71), .Z(n269) );
  CKBD0BWP12T30P140 U294 ( .I(n71), .Z(n271) );
  CKBD0BWP12T30P140 U295 ( .I(n71), .Z(n270) );
  CKBD0BWP12T30P140 U296 ( .I(n71), .Z(n272) );
  CKBD0BWP12T30P140 U297 ( .I(n71), .Z(n268) );
  CKBD0BWP12T30P140 U298 ( .I(n71), .Z(n267) );
  MUX2ND0BWP12T30P140 U299 ( .I0(counter[2]), .I1(n246), .S(n245), .ZN(n135)
         );
  INVD0BWP12T30P140 U300 ( .I(counter[4]), .ZN(n248) );
  MUX2ND0BWP12T30P140 U301 ( .I0(counter[4]), .I1(n248), .S(n247), .ZN(n133)
         );
  MUX2ND0BWP12T30P140 U302 ( .I0(n250), .I1(counter[6]), .S(n249), .ZN(n131)
         );
  INVD0BWP12T30P140 U303 ( .I(counter[8]), .ZN(n252) );
  MUX2ND0BWP12T30P140 U304 ( .I0(counter[8]), .I1(n252), .S(n251), .ZN(n129)
         );
  MUX2ND0BWP12T30P140 U305 ( .I0(n254), .I1(counter[10]), .S(n253), .ZN(n127)
         );
  INVD0BWP12T30P140 U306 ( .I(counter[12]), .ZN(n256) );
  MUX2ND0BWP12T30P140 U307 ( .I0(counter[12]), .I1(n256), .S(n255), .ZN(n125)
         );
  MUX2ND0BWP12T30P140 U308 ( .I0(n258), .I1(counter[14]), .S(n257), .ZN(n123)
         );
  INVD0BWP12T30P140 U309 ( .I(counter[16]), .ZN(n260) );
  MUX2ND0BWP12T30P140 U310 ( .I0(counter[16]), .I1(n260), .S(n259), .ZN(n121)
         );
  MUX2ND0BWP12T30P140 U311 ( .I0(n262), .I1(counter[18]), .S(n261), .ZN(n119)
         );
  INVD0BWP12T30P140 U312 ( .I(counter[20]), .ZN(n264) );
  MUX2ND0BWP12T30P140 U313 ( .I0(counter[20]), .I1(n264), .S(n263), .ZN(n117)
         );
  MUX2ND0BWP12T30P140 U314 ( .I0(counter[22]), .I1(n266), .S(n265), .ZN(n115)
         );
endmodule


module scct_channel_7 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95, n96;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n94), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(clk), .CDN(n93), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n95), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n95), .CDN(n93), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n96), .CDN(n94), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n96), .CDN(n94), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n96), .CDN(n94), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n96), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n96), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n96), .CDN(n94), .Q(
        icoc_action_o[1]) );
  NR2D0BWP12T30P140 U3 ( .A1(n8), .A2(i_cc_reg_wen), .ZN(n4) );
  INVD0BWP12T30P140 U4 ( .I(last_input_state), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(pin_i), .ZN(n1) );
  AOI33D0BWP12T30P140 U6 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n2), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n1), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(icoc_select_o), .A2(n3), .ZN(n92) );
  CKBD0BWP12T30P140 U8 ( .I(n92), .Z(n8) );
  CKBD0BWP12T30P140 U9 ( .I(n4), .Z(n7) );
  NR2D0BWP12T30P140 U10 ( .A1(n8), .A2(n7), .ZN(n5) );
  AO222D0BWP12T30P140 U11 ( .A1(counter[8]), .A2(n92), .B1(cc_reg_o[8]), .B2(
        n4), .C1(n5), .C2(i_cc_reg[8]), .Z(n143) );
  CKBD0BWP12T30P140 U12 ( .I(n5), .Z(n6) );
  AO222D0BWP12T30P140 U13 ( .A1(counter[9]), .A2(n8), .B1(cc_reg_o[9]), .B2(n4), .C1(n6), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U14 ( .A1(counter[11]), .A2(n92), .B1(cc_reg_o[11]), 
        .B2(n4), .C1(n6), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U15 ( .A1(counter[13]), .A2(n92), .B1(cc_reg_o[13]), 
        .B2(n4), .C1(n6), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U16 ( .A1(counter[15]), .A2(n8), .B1(cc_reg_o[15]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U17 ( .A1(counter[17]), .A2(n8), .B1(cc_reg_o[17]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U18 ( .A1(counter[19]), .A2(n8), .B1(cc_reg_o[19]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n8), .B1(cc_reg_o[0]), .B2(n7), .C1(n6), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[2]), .A2(n92), .B1(cc_reg_o[2]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[3]), .A2(n8), .B1(cc_reg_o[3]), .B2(n7), .C1(n6), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[4]), .A2(n92), .B1(cc_reg_o[4]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[5]), .A2(n8), .B1(cc_reg_o[5]), .B2(n7), .C1(n6), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U24 ( .A1(counter[6]), .A2(n92), .B1(cc_reg_o[6]), .B2(
        n4), .C1(n6), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U25 ( .A1(counter[7]), .A2(n8), .B1(cc_reg_o[7]), .B2(n4), .C1(n5), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[10]), .A2(n92), .B1(cc_reg_o[10]), 
        .B2(n4), .C1(n5), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U27 ( .A1(counter[12]), .A2(n92), .B1(cc_reg_o[12]), 
        .B2(n4), .C1(n5), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U28 ( .A1(counter[14]), .A2(n92), .B1(cc_reg_o[14]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U29 ( .A1(counter[16]), .A2(n92), .B1(cc_reg_o[16]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U30 ( .A1(counter[18]), .A2(n92), .B1(cc_reg_o[18]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U31 ( .A1(counter[20]), .A2(n92), .B1(cc_reg_o[20]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U32 ( .A1(counter[21]), .A2(n8), .B1(cc_reg_o[21]), .B2(
        n4), .C1(n5), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U33 ( .A1(counter[22]), .A2(n92), .B1(cc_reg_o[22]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U34 ( .A1(counter[23]), .A2(n8), .B1(cc_reg_o[23]), .B2(
        n4), .C1(n5), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U35 ( .A1(counter[24]), .A2(n92), .B1(cc_reg_o[24]), 
        .B2(n4), .C1(n6), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U36 ( .A1(counter[25]), .A2(n8), .B1(cc_reg_o[25]), .B2(
        n7), .C1(n5), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U37 ( .A1(counter[26]), .A2(n92), .B1(cc_reg_o[26]), 
        .B2(n7), .C1(n6), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U38 ( .A1(counter[27]), .A2(n92), .B1(cc_reg_o[27]), 
        .B2(n7), .C1(n5), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U39 ( .A1(counter[28]), .A2(n8), .B1(cc_reg_o[28]), .B2(
        n7), .C1(n6), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U40 ( .A1(counter[29]), .A2(n8), .B1(cc_reg_o[29]), .B2(
        n7), .C1(n5), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U41 ( .A1(counter[30]), .A2(n8), .B1(cc_reg_o[30]), .B2(
        n7), .C1(n6), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U42 ( .A1(counter[31]), .A2(n8), .B1(cc_reg_o[31]), .B2(
        n7), .C1(n5), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U43 ( .A1(counter[1]), .A2(n8), .B1(cc_reg_o[1]), .B2(n7), .C1(n6), .C2(i_cc_reg[1]), .Z(n136) );
  INVD0BWP12T30P140 U44 ( .I(cc_reg_o[7]), .ZN(n11) );
  INVD0BWP12T30P140 U45 ( .I(cc_reg_o[6]), .ZN(n10) );
  OAI22D0BWP12T30P140 U46 ( .A1(counter[6]), .A2(n10), .B1(counter[7]), .B2(
        n11), .ZN(n9) );
  AOI221D0BWP12T30P140 U47 ( .A1(n11), .A2(counter[7]), .B1(n10), .B2(
        counter[6]), .C(n9), .ZN(n77) );
  INVD0BWP12T30P140 U48 ( .I(cc_reg_o[5]), .ZN(n14) );
  INVD0BWP12T30P140 U49 ( .I(cc_reg_o[4]), .ZN(n13) );
  OAI22D0BWP12T30P140 U50 ( .A1(counter[4]), .A2(n13), .B1(counter[5]), .B2(
        n14), .ZN(n12) );
  AOI221D0BWP12T30P140 U51 ( .A1(n14), .A2(counter[5]), .B1(n13), .B2(
        counter[4]), .C(n12), .ZN(n23) );
  INVD0BWP12T30P140 U52 ( .I(cc_reg_o[3]), .ZN(n17) );
  INVD0BWP12T30P140 U53 ( .I(cc_reg_o[2]), .ZN(n16) );
  OAI22D0BWP12T30P140 U54 ( .A1(counter[2]), .A2(n16), .B1(counter[3]), .B2(
        n17), .ZN(n15) );
  AOI221D0BWP12T30P140 U55 ( .A1(n17), .A2(counter[3]), .B1(n16), .B2(
        counter[2]), .C(n15), .ZN(n22) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[31]), .ZN(n20) );
  INVD0BWP12T30P140 U57 ( .I(cc_reg_o[1]), .ZN(n19) );
  OAI22D0BWP12T30P140 U58 ( .A1(counter[1]), .A2(n19), .B1(counter[31]), .B2(
        n20), .ZN(n18) );
  AOI221D0BWP12T30P140 U59 ( .A1(n20), .A2(counter[31]), .B1(n19), .B2(
        counter[1]), .C(n18), .ZN(n21) );
  AN4D0BWP12T30P140 U60 ( .A1(n23), .A2(n22), .A3(counter_changed), .A4(n21), 
        .Z(n76) );
  INVD0BWP12T30P140 U61 ( .I(cc_reg_o[0]), .ZN(n26) );
  INVD0BWP12T30P140 U62 ( .I(cc_reg_o[30]), .ZN(n25) );
  OAI22D0BWP12T30P140 U63 ( .A1(counter[30]), .A2(n25), .B1(counter[0]), .B2(
        n26), .ZN(n24) );
  AOI221D0BWP12T30P140 U64 ( .A1(n26), .A2(counter[0]), .B1(n25), .B2(
        counter[30]), .C(n24), .ZN(n39) );
  INVD0BWP12T30P140 U65 ( .I(cc_reg_o[29]), .ZN(n29) );
  INVD0BWP12T30P140 U66 ( .I(cc_reg_o[28]), .ZN(n28) );
  OAI22D0BWP12T30P140 U67 ( .A1(counter[28]), .A2(n28), .B1(counter[29]), .B2(
        n29), .ZN(n27) );
  AOI221D0BWP12T30P140 U68 ( .A1(n29), .A2(counter[29]), .B1(n28), .B2(
        counter[28]), .C(n27), .ZN(n38) );
  INVD0BWP12T30P140 U69 ( .I(cc_reg_o[27]), .ZN(n32) );
  INVD0BWP12T30P140 U70 ( .I(cc_reg_o[26]), .ZN(n31) );
  OAI22D0BWP12T30P140 U71 ( .A1(counter[26]), .A2(n31), .B1(counter[27]), .B2(
        n32), .ZN(n30) );
  AOI221D0BWP12T30P140 U72 ( .A1(n32), .A2(counter[27]), .B1(n31), .B2(
        counter[26]), .C(n30), .ZN(n37) );
  INVD0BWP12T30P140 U73 ( .I(cc_reg_o[25]), .ZN(n35) );
  INVD0BWP12T30P140 U74 ( .I(cc_reg_o[24]), .ZN(n34) );
  OAI22D0BWP12T30P140 U75 ( .A1(counter[24]), .A2(n34), .B1(counter[25]), .B2(
        n35), .ZN(n33) );
  AOI221D0BWP12T30P140 U76 ( .A1(n35), .A2(counter[25]), .B1(n34), .B2(
        counter[24]), .C(n33), .ZN(n36) );
  ND4D0BWP12T30P140 U77 ( .A1(n39), .A2(n38), .A3(n37), .A4(n36), .ZN(n74) );
  INVD0BWP12T30P140 U78 ( .I(cc_reg_o[23]), .ZN(n42) );
  INVD0BWP12T30P140 U79 ( .I(cc_reg_o[22]), .ZN(n41) );
  OAI22D0BWP12T30P140 U80 ( .A1(counter[22]), .A2(n41), .B1(counter[23]), .B2(
        n42), .ZN(n40) );
  AOI221D0BWP12T30P140 U81 ( .A1(n42), .A2(counter[23]), .B1(n41), .B2(
        counter[22]), .C(n40), .ZN(n55) );
  INVD0BWP12T30P140 U82 ( .I(cc_reg_o[21]), .ZN(n45) );
  INVD0BWP12T30P140 U83 ( .I(cc_reg_o[20]), .ZN(n44) );
  OAI22D0BWP12T30P140 U84 ( .A1(counter[20]), .A2(n44), .B1(counter[21]), .B2(
        n45), .ZN(n43) );
  AOI221D0BWP12T30P140 U85 ( .A1(n45), .A2(counter[21]), .B1(n44), .B2(
        counter[20]), .C(n43), .ZN(n54) );
  INVD0BWP12T30P140 U86 ( .I(cc_reg_o[19]), .ZN(n48) );
  INVD0BWP12T30P140 U87 ( .I(cc_reg_o[18]), .ZN(n47) );
  OAI22D0BWP12T30P140 U88 ( .A1(counter[18]), .A2(n47), .B1(counter[19]), .B2(
        n48), .ZN(n46) );
  AOI221D0BWP12T30P140 U89 ( .A1(n48), .A2(counter[19]), .B1(n47), .B2(
        counter[18]), .C(n46), .ZN(n53) );
  INVD0BWP12T30P140 U90 ( .I(cc_reg_o[17]), .ZN(n51) );
  INVD0BWP12T30P140 U91 ( .I(cc_reg_o[16]), .ZN(n50) );
  OAI22D0BWP12T30P140 U92 ( .A1(counter[16]), .A2(n50), .B1(counter[17]), .B2(
        n51), .ZN(n49) );
  AOI221D0BWP12T30P140 U93 ( .A1(n51), .A2(counter[17]), .B1(n50), .B2(
        counter[16]), .C(n49), .ZN(n52) );
  ND4D0BWP12T30P140 U94 ( .A1(n55), .A2(n54), .A3(n53), .A4(n52), .ZN(n73) );
  INVD0BWP12T30P140 U95 ( .I(cc_reg_o[15]), .ZN(n58) );
  INVD0BWP12T30P140 U96 ( .I(cc_reg_o[14]), .ZN(n57) );
  OAI22D0BWP12T30P140 U97 ( .A1(counter[14]), .A2(n57), .B1(counter[15]), .B2(
        n58), .ZN(n56) );
  AOI221D0BWP12T30P140 U98 ( .A1(n58), .A2(counter[15]), .B1(n57), .B2(
        counter[14]), .C(n56), .ZN(n71) );
  INVD0BWP12T30P140 U99 ( .I(cc_reg_o[13]), .ZN(n61) );
  INVD0BWP12T30P140 U100 ( .I(cc_reg_o[12]), .ZN(n60) );
  OAI22D0BWP12T30P140 U101 ( .A1(counter[12]), .A2(n60), .B1(counter[13]), 
        .B2(n61), .ZN(n59) );
  AOI221D0BWP12T30P140 U102 ( .A1(n61), .A2(counter[13]), .B1(n60), .B2(
        counter[12]), .C(n59), .ZN(n70) );
  INVD0BWP12T30P140 U103 ( .I(cc_reg_o[11]), .ZN(n64) );
  INVD0BWP12T30P140 U104 ( .I(cc_reg_o[10]), .ZN(n63) );
  OAI22D0BWP12T30P140 U105 ( .A1(counter[10]), .A2(n63), .B1(counter[11]), 
        .B2(n64), .ZN(n62) );
  AOI221D0BWP12T30P140 U106 ( .A1(n64), .A2(counter[11]), .B1(n63), .B2(
        counter[10]), .C(n62), .ZN(n69) );
  INVD0BWP12T30P140 U107 ( .I(cc_reg_o[9]), .ZN(n67) );
  INVD0BWP12T30P140 U108 ( .I(cc_reg_o[8]), .ZN(n66) );
  OAI22D0BWP12T30P140 U109 ( .A1(counter[8]), .A2(n66), .B1(counter[9]), .B2(
        n67), .ZN(n65) );
  AOI221D0BWP12T30P140 U110 ( .A1(n67), .A2(counter[9]), .B1(n66), .B2(
        counter[8]), .C(n65), .ZN(n68) );
  ND4D0BWP12T30P140 U111 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .ZN(n72) );
  NR3D0BWP12T30P140 U112 ( .A1(n74), .A2(n73), .A3(n72), .ZN(n75) );
  ND3D0BWP12T30P140 U113 ( .A1(n77), .A2(n76), .A3(n75), .ZN(n83) );
  INVD0BWP12T30P140 U114 ( .I(icoc_select_o), .ZN(n82) );
  ND2D0BWP12T30P140 U115 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n89)
         );
  INVD0BWP12T30P140 U116 ( .I(icoc_select_i_wen), .ZN(n90) );
  INVD0BWP12T30P140 U117 ( .I(n90), .ZN(n80) );
  ND2D0BWP12T30P140 U118 ( .A1(n80), .A2(icoc_select_i), .ZN(n79) );
  ND3D0BWP12T30P140 U119 ( .A1(n89), .A2(n79), .A3(ocirq), .ZN(n78) );
  OAI21D0BWP12T30P140 U120 ( .A1(n83), .A2(n82), .B(n78), .ZN(n133) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), 
        .S(icoc_action_i_wen), .Z(n132) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), 
        .S(icoc_action_i_wen), .Z(n130) );
  OAI21D0BWP12T30P140 U124 ( .A1(n80), .A2(n82), .B(n79), .ZN(n126) );
  CKBD0BWP12T30P140 U125 ( .I(clk), .Z(n96) );
  CKBD0BWP12T30P140 U126 ( .I(clk), .Z(n95) );
  INVD0BWP12T30P140 U127 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U128 ( .I(n88), .Z(n93) );
  CKBD0BWP12T30P140 U129 ( .I(n88), .Z(n94) );
  OAI211D0BWP12T30P140 U130 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n89), .ZN(n81) );
  IAO21D0BWP12T30P140 U131 ( .A1(ocirq), .A2(n82), .B(n81), .ZN(N25) );
  ND2D0BWP12T30P140 U132 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n84) );
  AOI21D0BWP12T30P140 U133 ( .A1(n84), .A2(n83), .B(n82), .ZN(n87) );
  INVD0BWP12T30P140 U134 ( .I(pin_o), .ZN(n86) );
  AOI21D0BWP12T30P140 U135 ( .A1(n87), .A2(icoc_action_o[1]), .B(n86), .ZN(n85) );
  AO31D0BWP12T30P140 U136 ( .A1(icoc_action_o[0]), .A2(n87), .A3(n86), .B(n85), 
        .Z(n134) );
  OAI211D0BWP12T30P140 U137 ( .A1(icoc_select_i), .A2(n90), .B(icirq), .C(n89), 
        .ZN(n91) );
  IND2D1BWP12T30P140 U138 ( .A1(n92), .B1(n91), .ZN(n135) );
endmodule


module scct_channel_6 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95, n96;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n94), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(clk), .CDN(n93), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n95), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n95), .CDN(n93), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n96), .CDN(n94), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n96), .CDN(n94), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n96), .CDN(n94), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n96), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n96), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n96), .CDN(n94), .Q(
        icoc_action_o[1]) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), .S(
        icoc_action_i_wen), .Z(n132) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), .S(
        icoc_action_i_wen), .Z(n130) );
  INVD0BWP12T30P140 U5 ( .I(icoc_select_i_wen), .ZN(n90) );
  INVD0BWP12T30P140 U6 ( .I(n90), .ZN(n1) );
  INVD0BWP12T30P140 U7 ( .I(icoc_select_o), .ZN(n82) );
  ND2D0BWP12T30P140 U8 ( .A1(n1), .A2(icoc_select_i), .ZN(n79) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n82), .B(n79), .ZN(n126) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  INVD0BWP12T30P140 U11 ( .I(last_input_state), .ZN(n3) );
  INVD0BWP12T30P140 U12 ( .I(pin_i), .ZN(n2) );
  AOI33D0BWP12T30P140 U13 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n3), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n2), .ZN(n4) );
  NR2D0BWP12T30P140 U14 ( .A1(icoc_select_o), .A2(n4), .ZN(n92) );
  CKBD0BWP12T30P140 U15 ( .I(n92), .Z(n7) );
  NR2D0BWP12T30P140 U16 ( .A1(n7), .A2(i_cc_reg_wen), .ZN(n9) );
  CKBD0BWP12T30P140 U17 ( .I(n9), .Z(n6) );
  NR2D0BWP12T30P140 U18 ( .A1(n7), .A2(n6), .ZN(n5) );
  CKBD0BWP12T30P140 U19 ( .I(n5), .Z(n8) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[0]), .A2(n7), .B1(cc_reg_o[0]), .B2(n6), .C1(n8), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[1]), .A2(n7), .B1(cc_reg_o[1]), .B2(n6), .C1(n8), .C2(i_cc_reg[1]), .Z(n136) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[3]), .A2(n7), .B1(cc_reg_o[3]), .B2(n6), .C1(n8), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[4]), .A2(n92), .B1(cc_reg_o[4]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U24 ( .A1(counter[5]), .A2(n7), .B1(cc_reg_o[5]), .B2(n6), .C1(n8), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U25 ( .A1(counter[6]), .A2(n92), .B1(cc_reg_o[6]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[7]), .A2(n7), .B1(cc_reg_o[7]), .B2(n9), .C1(n5), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U27 ( .A1(counter[8]), .A2(n92), .B1(cc_reg_o[8]), .B2(
        n9), .C1(n5), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U28 ( .A1(counter[9]), .A2(n7), .B1(cc_reg_o[9]), .B2(n9), .C1(n8), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U29 ( .A1(counter[11]), .A2(n92), .B1(cc_reg_o[11]), 
        .B2(n9), .C1(n8), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U30 ( .A1(counter[13]), .A2(n92), .B1(cc_reg_o[13]), 
        .B2(n9), .C1(n8), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U31 ( .A1(counter[15]), .A2(n7), .B1(cc_reg_o[15]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U32 ( .A1(counter[17]), .A2(n7), .B1(cc_reg_o[17]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U33 ( .A1(counter[19]), .A2(n7), .B1(cc_reg_o[19]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U34 ( .A1(counter[10]), .A2(n92), .B1(cc_reg_o[10]), 
        .B2(n9), .C1(n5), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U35 ( .A1(counter[12]), .A2(n92), .B1(cc_reg_o[12]), 
        .B2(n9), .C1(n5), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U36 ( .A1(counter[14]), .A2(n92), .B1(cc_reg_o[14]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U37 ( .A1(counter[16]), .A2(n92), .B1(cc_reg_o[16]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U38 ( .A1(counter[18]), .A2(n92), .B1(cc_reg_o[18]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U39 ( .A1(counter[20]), .A2(n92), .B1(cc_reg_o[20]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U40 ( .A1(counter[21]), .A2(n7), .B1(cc_reg_o[21]), .B2(
        n9), .C1(n5), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U41 ( .A1(counter[22]), .A2(n92), .B1(cc_reg_o[22]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U42 ( .A1(counter[23]), .A2(n7), .B1(cc_reg_o[23]), .B2(
        n9), .C1(n5), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U43 ( .A1(counter[24]), .A2(n92), .B1(cc_reg_o[24]), 
        .B2(n9), .C1(n8), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U44 ( .A1(counter[25]), .A2(n7), .B1(cc_reg_o[25]), .B2(
        n6), .C1(n5), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U45 ( .A1(counter[26]), .A2(n92), .B1(cc_reg_o[26]), 
        .B2(n6), .C1(n8), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U46 ( .A1(counter[27]), .A2(n92), .B1(cc_reg_o[27]), 
        .B2(n6), .C1(n5), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U47 ( .A1(counter[28]), .A2(n7), .B1(cc_reg_o[28]), .B2(
        n6), .C1(n8), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U48 ( .A1(counter[29]), .A2(n7), .B1(cc_reg_o[29]), .B2(
        n6), .C1(n5), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U49 ( .A1(counter[30]), .A2(n7), .B1(cc_reg_o[30]), .B2(
        n6), .C1(n8), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U50 ( .A1(counter[31]), .A2(n7), .B1(cc_reg_o[31]), .B2(
        n6), .C1(n5), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U51 ( .A1(counter[2]), .A2(n92), .B1(cc_reg_o[2]), .B2(
        n9), .C1(n8), .C2(i_cc_reg[2]), .Z(n137) );
  INVD0BWP12T30P140 U52 ( .I(cc_reg_o[7]), .ZN(n12) );
  INVD0BWP12T30P140 U53 ( .I(cc_reg_o[6]), .ZN(n11) );
  OAI22D0BWP12T30P140 U54 ( .A1(counter[6]), .A2(n11), .B1(counter[7]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U55 ( .A1(n12), .A2(counter[7]), .B1(n11), .B2(
        counter[6]), .C(n10), .ZN(n78) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[5]), .ZN(n15) );
  INVD0BWP12T30P140 U57 ( .I(cc_reg_o[4]), .ZN(n14) );
  OAI22D0BWP12T30P140 U58 ( .A1(counter[4]), .A2(n14), .B1(counter[5]), .B2(
        n15), .ZN(n13) );
  AOI221D0BWP12T30P140 U59 ( .A1(n15), .A2(counter[5]), .B1(n14), .B2(
        counter[4]), .C(n13), .ZN(n24) );
  INVD0BWP12T30P140 U60 ( .I(cc_reg_o[3]), .ZN(n18) );
  INVD0BWP12T30P140 U61 ( .I(cc_reg_o[2]), .ZN(n17) );
  OAI22D0BWP12T30P140 U62 ( .A1(counter[2]), .A2(n17), .B1(counter[3]), .B2(
        n18), .ZN(n16) );
  AOI221D0BWP12T30P140 U63 ( .A1(n18), .A2(counter[3]), .B1(n17), .B2(
        counter[2]), .C(n16), .ZN(n23) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[31]), .ZN(n21) );
  INVD0BWP12T30P140 U65 ( .I(cc_reg_o[1]), .ZN(n20) );
  OAI22D0BWP12T30P140 U66 ( .A1(counter[1]), .A2(n20), .B1(counter[31]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U67 ( .A1(n21), .A2(counter[31]), .B1(n20), .B2(
        counter[1]), .C(n19), .ZN(n22) );
  AN4D0BWP12T30P140 U68 ( .A1(n24), .A2(n23), .A3(counter_changed), .A4(n22), 
        .Z(n77) );
  INVD0BWP12T30P140 U69 ( .I(cc_reg_o[0]), .ZN(n27) );
  INVD0BWP12T30P140 U70 ( .I(cc_reg_o[30]), .ZN(n26) );
  OAI22D0BWP12T30P140 U71 ( .A1(counter[30]), .A2(n26), .B1(counter[0]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U72 ( .A1(n27), .A2(counter[0]), .B1(n26), .B2(
        counter[30]), .C(n25), .ZN(n40) );
  INVD0BWP12T30P140 U73 ( .I(cc_reg_o[29]), .ZN(n30) );
  INVD0BWP12T30P140 U74 ( .I(cc_reg_o[28]), .ZN(n29) );
  OAI22D0BWP12T30P140 U75 ( .A1(counter[28]), .A2(n29), .B1(counter[29]), .B2(
        n30), .ZN(n28) );
  AOI221D0BWP12T30P140 U76 ( .A1(n30), .A2(counter[29]), .B1(n29), .B2(
        counter[28]), .C(n28), .ZN(n39) );
  INVD0BWP12T30P140 U77 ( .I(cc_reg_o[27]), .ZN(n33) );
  INVD0BWP12T30P140 U78 ( .I(cc_reg_o[26]), .ZN(n32) );
  OAI22D0BWP12T30P140 U79 ( .A1(counter[26]), .A2(n32), .B1(counter[27]), .B2(
        n33), .ZN(n31) );
  AOI221D0BWP12T30P140 U80 ( .A1(n33), .A2(counter[27]), .B1(n32), .B2(
        counter[26]), .C(n31), .ZN(n38) );
  INVD0BWP12T30P140 U81 ( .I(cc_reg_o[25]), .ZN(n36) );
  INVD0BWP12T30P140 U82 ( .I(cc_reg_o[24]), .ZN(n35) );
  OAI22D0BWP12T30P140 U83 ( .A1(counter[24]), .A2(n35), .B1(counter[25]), .B2(
        n36), .ZN(n34) );
  AOI221D0BWP12T30P140 U84 ( .A1(n36), .A2(counter[25]), .B1(n35), .B2(
        counter[24]), .C(n34), .ZN(n37) );
  ND4D0BWP12T30P140 U85 ( .A1(n40), .A2(n39), .A3(n38), .A4(n37), .ZN(n75) );
  INVD0BWP12T30P140 U86 ( .I(cc_reg_o[23]), .ZN(n43) );
  INVD0BWP12T30P140 U87 ( .I(cc_reg_o[22]), .ZN(n42) );
  OAI22D0BWP12T30P140 U88 ( .A1(counter[22]), .A2(n42), .B1(counter[23]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U89 ( .A1(n43), .A2(counter[23]), .B1(n42), .B2(
        counter[22]), .C(n41), .ZN(n56) );
  INVD0BWP12T30P140 U90 ( .I(cc_reg_o[21]), .ZN(n46) );
  INVD0BWP12T30P140 U91 ( .I(cc_reg_o[20]), .ZN(n45) );
  OAI22D0BWP12T30P140 U92 ( .A1(counter[20]), .A2(n45), .B1(counter[21]), .B2(
        n46), .ZN(n44) );
  AOI221D0BWP12T30P140 U93 ( .A1(n46), .A2(counter[21]), .B1(n45), .B2(
        counter[20]), .C(n44), .ZN(n55) );
  INVD0BWP12T30P140 U94 ( .I(cc_reg_o[19]), .ZN(n49) );
  INVD0BWP12T30P140 U95 ( .I(cc_reg_o[18]), .ZN(n48) );
  OAI22D0BWP12T30P140 U96 ( .A1(counter[18]), .A2(n48), .B1(counter[19]), .B2(
        n49), .ZN(n47) );
  AOI221D0BWP12T30P140 U97 ( .A1(n49), .A2(counter[19]), .B1(n48), .B2(
        counter[18]), .C(n47), .ZN(n54) );
  INVD0BWP12T30P140 U98 ( .I(cc_reg_o[17]), .ZN(n52) );
  INVD0BWP12T30P140 U99 ( .I(cc_reg_o[16]), .ZN(n51) );
  OAI22D0BWP12T30P140 U100 ( .A1(counter[16]), .A2(n51), .B1(counter[17]), 
        .B2(n52), .ZN(n50) );
  AOI221D0BWP12T30P140 U101 ( .A1(n52), .A2(counter[17]), .B1(n51), .B2(
        counter[16]), .C(n50), .ZN(n53) );
  ND4D0BWP12T30P140 U102 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n74) );
  INVD0BWP12T30P140 U103 ( .I(cc_reg_o[15]), .ZN(n59) );
  INVD0BWP12T30P140 U104 ( .I(cc_reg_o[14]), .ZN(n58) );
  OAI22D0BWP12T30P140 U105 ( .A1(counter[14]), .A2(n58), .B1(counter[15]), 
        .B2(n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U106 ( .A1(n59), .A2(counter[15]), .B1(n58), .B2(
        counter[14]), .C(n57), .ZN(n72) );
  INVD0BWP12T30P140 U107 ( .I(cc_reg_o[13]), .ZN(n62) );
  INVD0BWP12T30P140 U108 ( .I(cc_reg_o[12]), .ZN(n61) );
  OAI22D0BWP12T30P140 U109 ( .A1(counter[12]), .A2(n61), .B1(counter[13]), 
        .B2(n62), .ZN(n60) );
  AOI221D0BWP12T30P140 U110 ( .A1(n62), .A2(counter[13]), .B1(n61), .B2(
        counter[12]), .C(n60), .ZN(n71) );
  INVD0BWP12T30P140 U111 ( .I(cc_reg_o[11]), .ZN(n65) );
  INVD0BWP12T30P140 U112 ( .I(cc_reg_o[10]), .ZN(n64) );
  OAI22D0BWP12T30P140 U113 ( .A1(counter[10]), .A2(n64), .B1(counter[11]), 
        .B2(n65), .ZN(n63) );
  AOI221D0BWP12T30P140 U114 ( .A1(n65), .A2(counter[11]), .B1(n64), .B2(
        counter[10]), .C(n63), .ZN(n70) );
  INVD0BWP12T30P140 U115 ( .I(cc_reg_o[9]), .ZN(n68) );
  INVD0BWP12T30P140 U116 ( .I(cc_reg_o[8]), .ZN(n67) );
  OAI22D0BWP12T30P140 U117 ( .A1(counter[8]), .A2(n67), .B1(counter[9]), .B2(
        n68), .ZN(n66) );
  AOI221D0BWP12T30P140 U118 ( .A1(n68), .A2(counter[9]), .B1(n67), .B2(
        counter[8]), .C(n66), .ZN(n69) );
  ND4D0BWP12T30P140 U119 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NR3D0BWP12T30P140 U120 ( .A1(n75), .A2(n74), .A3(n73), .ZN(n76) );
  ND3D0BWP12T30P140 U121 ( .A1(n78), .A2(n77), .A3(n76), .ZN(n83) );
  ND2D0BWP12T30P140 U122 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n89)
         );
  ND3D0BWP12T30P140 U123 ( .A1(n89), .A2(n79), .A3(ocirq), .ZN(n80) );
  OAI21D0BWP12T30P140 U124 ( .A1(n83), .A2(n82), .B(n80), .ZN(n133) );
  CKBD0BWP12T30P140 U125 ( .I(clk), .Z(n95) );
  CKBD0BWP12T30P140 U126 ( .I(clk), .Z(n96) );
  INVD0BWP12T30P140 U127 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U128 ( .I(n88), .Z(n93) );
  CKBD0BWP12T30P140 U129 ( .I(n88), .Z(n94) );
  OAI211D0BWP12T30P140 U130 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n89), .ZN(n81) );
  IAO21D0BWP12T30P140 U131 ( .A1(ocirq), .A2(n82), .B(n81), .ZN(N25) );
  ND2D0BWP12T30P140 U132 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n84) );
  AOI21D0BWP12T30P140 U133 ( .A1(n84), .A2(n83), .B(n82), .ZN(n87) );
  INVD0BWP12T30P140 U134 ( .I(pin_o), .ZN(n86) );
  AOI21D0BWP12T30P140 U135 ( .A1(n87), .A2(icoc_action_o[1]), .B(n86), .ZN(n85) );
  AO31D0BWP12T30P140 U136 ( .A1(icoc_action_o[0]), .A2(n87), .A3(n86), .B(n85), 
        .Z(n134) );
  OAI211D0BWP12T30P140 U137 ( .A1(icoc_select_i), .A2(n90), .B(icirq), .C(n89), 
        .ZN(n91) );
  IND2D1BWP12T30P140 U138 ( .A1(n92), .B1(n91), .ZN(n135) );
endmodule


module scct_channel_5 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95, n96;

  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n95), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n94), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n96), .CDN(n94), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(n96), .CDN(n94), .Q(ocirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n96), .CDN(n93), .Q(pin_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(clk), .CDN(n94), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(clk), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n95), .CDN(n94), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n96), .CDN(n94), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n96), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n96), .CDN(n93), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n96), .CDN(n94), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n96), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n96), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n96), .CDN(n94), .Q(
        icoc_action_o[1]) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), .S(
        icoc_action_i_wen), .Z(n132) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), .S(
        icoc_action_i_wen), .Z(n130) );
  INVD0BWP12T30P140 U5 ( .I(icoc_select_i_wen), .ZN(n90) );
  INVD0BWP12T30P140 U6 ( .I(n90), .ZN(n1) );
  INVD0BWP12T30P140 U7 ( .I(icoc_select_o), .ZN(n87) );
  ND2D0BWP12T30P140 U8 ( .A1(n1), .A2(icoc_select_i), .ZN(n79) );
  OAI21D0BWP12T30P140 U9 ( .A1(n1), .A2(n87), .B(n79), .ZN(n126) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  INVD0BWP12T30P140 U11 ( .I(last_input_state), .ZN(n3) );
  INVD0BWP12T30P140 U12 ( .I(pin_i), .ZN(n2) );
  AOI33D0BWP12T30P140 U13 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n3), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n2), .ZN(n4) );
  NR2D0BWP12T30P140 U14 ( .A1(icoc_select_o), .A2(n4), .ZN(n92) );
  CKBD0BWP12T30P140 U15 ( .I(n92), .Z(n9) );
  NR2D0BWP12T30P140 U16 ( .A1(n9), .A2(i_cc_reg_wen), .ZN(n8) );
  CKBD0BWP12T30P140 U17 ( .I(n8), .Z(n5) );
  NR2D0BWP12T30P140 U18 ( .A1(n9), .A2(n5), .ZN(n6) );
  CKBD0BWP12T30P140 U19 ( .I(n6), .Z(n7) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[1]), .A2(n9), .B1(cc_reg_o[1]), .B2(n5), .C1(n7), .C2(i_cc_reg[1]), .Z(n136) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[2]), .A2(n92), .B1(cc_reg_o[2]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[3]), .A2(n9), .B1(cc_reg_o[3]), .B2(n5), .C1(n7), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[4]), .A2(n92), .B1(cc_reg_o[4]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U24 ( .A1(counter[5]), .A2(n9), .B1(cc_reg_o[5]), .B2(n5), .C1(n7), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U25 ( .A1(counter[6]), .A2(n92), .B1(cc_reg_o[6]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[7]), .A2(n9), .B1(cc_reg_o[7]), .B2(n8), .C1(n6), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U27 ( .A1(counter[8]), .A2(n92), .B1(cc_reg_o[8]), .B2(
        n8), .C1(n6), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U28 ( .A1(counter[9]), .A2(n9), .B1(cc_reg_o[9]), .B2(n8), .C1(n7), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U29 ( .A1(counter[11]), .A2(n92), .B1(cc_reg_o[11]), 
        .B2(n8), .C1(n7), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U30 ( .A1(counter[14]), .A2(n92), .B1(cc_reg_o[14]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U31 ( .A1(counter[17]), .A2(n9), .B1(cc_reg_o[17]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U32 ( .A1(counter[19]), .A2(n9), .B1(cc_reg_o[19]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U33 ( .A1(counter[0]), .A2(n9), .B1(cc_reg_o[0]), .B2(n5), .C1(n7), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U34 ( .A1(counter[10]), .A2(n92), .B1(cc_reg_o[10]), 
        .B2(n8), .C1(n6), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U35 ( .A1(counter[13]), .A2(n92), .B1(cc_reg_o[13]), 
        .B2(n8), .C1(n7), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U36 ( .A1(counter[16]), .A2(n92), .B1(cc_reg_o[16]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U37 ( .A1(counter[18]), .A2(n92), .B1(cc_reg_o[18]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U38 ( .A1(counter[20]), .A2(n92), .B1(cc_reg_o[20]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U39 ( .A1(counter[21]), .A2(n9), .B1(cc_reg_o[21]), .B2(
        n8), .C1(n6), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U40 ( .A1(counter[22]), .A2(n92), .B1(cc_reg_o[22]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U41 ( .A1(counter[23]), .A2(n9), .B1(cc_reg_o[23]), .B2(
        n8), .C1(n6), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U42 ( .A1(counter[24]), .A2(n92), .B1(cc_reg_o[24]), 
        .B2(n8), .C1(n7), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U43 ( .A1(counter[25]), .A2(n9), .B1(cc_reg_o[25]), .B2(
        n5), .C1(n6), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U44 ( .A1(counter[26]), .A2(n92), .B1(cc_reg_o[26]), 
        .B2(n5), .C1(n7), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U45 ( .A1(counter[27]), .A2(n92), .B1(cc_reg_o[27]), 
        .B2(n5), .C1(n6), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U46 ( .A1(counter[28]), .A2(n9), .B1(cc_reg_o[28]), .B2(
        n5), .C1(n7), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U47 ( .A1(counter[29]), .A2(n9), .B1(cc_reg_o[29]), .B2(
        n5), .C1(n6), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U48 ( .A1(counter[30]), .A2(n9), .B1(cc_reg_o[30]), .B2(
        n5), .C1(n7), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U49 ( .A1(counter[31]), .A2(n9), .B1(cc_reg_o[31]), .B2(
        n5), .C1(n6), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U50 ( .A1(counter[12]), .A2(n92), .B1(cc_reg_o[12]), 
        .B2(n8), .C1(n6), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U51 ( .A1(counter[15]), .A2(n9), .B1(cc_reg_o[15]), .B2(
        n8), .C1(n7), .C2(i_cc_reg[15]), .Z(n150) );
  INVD0BWP12T30P140 U52 ( .I(cc_reg_o[7]), .ZN(n12) );
  INVD0BWP12T30P140 U53 ( .I(cc_reg_o[6]), .ZN(n11) );
  OAI22D0BWP12T30P140 U54 ( .A1(counter[6]), .A2(n11), .B1(counter[7]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U55 ( .A1(n12), .A2(counter[7]), .B1(n11), .B2(
        counter[6]), .C(n10), .ZN(n78) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[5]), .ZN(n15) );
  INVD0BWP12T30P140 U57 ( .I(cc_reg_o[4]), .ZN(n14) );
  OAI22D0BWP12T30P140 U58 ( .A1(counter[4]), .A2(n14), .B1(counter[5]), .B2(
        n15), .ZN(n13) );
  AOI221D0BWP12T30P140 U59 ( .A1(n15), .A2(counter[5]), .B1(n14), .B2(
        counter[4]), .C(n13), .ZN(n24) );
  INVD0BWP12T30P140 U60 ( .I(cc_reg_o[3]), .ZN(n18) );
  INVD0BWP12T30P140 U61 ( .I(cc_reg_o[2]), .ZN(n17) );
  OAI22D0BWP12T30P140 U62 ( .A1(counter[2]), .A2(n17), .B1(counter[3]), .B2(
        n18), .ZN(n16) );
  AOI221D0BWP12T30P140 U63 ( .A1(n18), .A2(counter[3]), .B1(n17), .B2(
        counter[2]), .C(n16), .ZN(n23) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[31]), .ZN(n21) );
  INVD0BWP12T30P140 U65 ( .I(cc_reg_o[1]), .ZN(n20) );
  OAI22D0BWP12T30P140 U66 ( .A1(counter[1]), .A2(n20), .B1(counter[31]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U67 ( .A1(n21), .A2(counter[31]), .B1(n20), .B2(
        counter[1]), .C(n19), .ZN(n22) );
  AN4D0BWP12T30P140 U68 ( .A1(n24), .A2(n23), .A3(counter_changed), .A4(n22), 
        .Z(n77) );
  INVD0BWP12T30P140 U69 ( .I(cc_reg_o[0]), .ZN(n27) );
  INVD0BWP12T30P140 U70 ( .I(cc_reg_o[30]), .ZN(n26) );
  OAI22D0BWP12T30P140 U71 ( .A1(counter[30]), .A2(n26), .B1(counter[0]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U72 ( .A1(n27), .A2(counter[0]), .B1(n26), .B2(
        counter[30]), .C(n25), .ZN(n40) );
  INVD0BWP12T30P140 U73 ( .I(cc_reg_o[29]), .ZN(n30) );
  INVD0BWP12T30P140 U74 ( .I(cc_reg_o[28]), .ZN(n29) );
  OAI22D0BWP12T30P140 U75 ( .A1(counter[28]), .A2(n29), .B1(counter[29]), .B2(
        n30), .ZN(n28) );
  AOI221D0BWP12T30P140 U76 ( .A1(n30), .A2(counter[29]), .B1(n29), .B2(
        counter[28]), .C(n28), .ZN(n39) );
  INVD0BWP12T30P140 U77 ( .I(cc_reg_o[27]), .ZN(n33) );
  INVD0BWP12T30P140 U78 ( .I(cc_reg_o[26]), .ZN(n32) );
  OAI22D0BWP12T30P140 U79 ( .A1(counter[26]), .A2(n32), .B1(counter[27]), .B2(
        n33), .ZN(n31) );
  AOI221D0BWP12T30P140 U80 ( .A1(n33), .A2(counter[27]), .B1(n32), .B2(
        counter[26]), .C(n31), .ZN(n38) );
  INVD0BWP12T30P140 U81 ( .I(cc_reg_o[25]), .ZN(n36) );
  INVD0BWP12T30P140 U82 ( .I(cc_reg_o[24]), .ZN(n35) );
  OAI22D0BWP12T30P140 U83 ( .A1(counter[24]), .A2(n35), .B1(counter[25]), .B2(
        n36), .ZN(n34) );
  AOI221D0BWP12T30P140 U84 ( .A1(n36), .A2(counter[25]), .B1(n35), .B2(
        counter[24]), .C(n34), .ZN(n37) );
  ND4D0BWP12T30P140 U85 ( .A1(n40), .A2(n39), .A3(n38), .A4(n37), .ZN(n75) );
  INVD0BWP12T30P140 U86 ( .I(cc_reg_o[23]), .ZN(n43) );
  INVD0BWP12T30P140 U87 ( .I(cc_reg_o[22]), .ZN(n42) );
  OAI22D0BWP12T30P140 U88 ( .A1(counter[22]), .A2(n42), .B1(counter[23]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U89 ( .A1(n43), .A2(counter[23]), .B1(n42), .B2(
        counter[22]), .C(n41), .ZN(n56) );
  INVD0BWP12T30P140 U90 ( .I(cc_reg_o[21]), .ZN(n46) );
  INVD0BWP12T30P140 U91 ( .I(cc_reg_o[20]), .ZN(n45) );
  OAI22D0BWP12T30P140 U92 ( .A1(counter[20]), .A2(n45), .B1(counter[21]), .B2(
        n46), .ZN(n44) );
  AOI221D0BWP12T30P140 U93 ( .A1(n46), .A2(counter[21]), .B1(n45), .B2(
        counter[20]), .C(n44), .ZN(n55) );
  INVD0BWP12T30P140 U94 ( .I(cc_reg_o[19]), .ZN(n49) );
  INVD0BWP12T30P140 U95 ( .I(cc_reg_o[18]), .ZN(n48) );
  OAI22D0BWP12T30P140 U96 ( .A1(counter[18]), .A2(n48), .B1(counter[19]), .B2(
        n49), .ZN(n47) );
  AOI221D0BWP12T30P140 U97 ( .A1(n49), .A2(counter[19]), .B1(n48), .B2(
        counter[18]), .C(n47), .ZN(n54) );
  INVD0BWP12T30P140 U98 ( .I(cc_reg_o[17]), .ZN(n52) );
  INVD0BWP12T30P140 U99 ( .I(cc_reg_o[16]), .ZN(n51) );
  OAI22D0BWP12T30P140 U100 ( .A1(counter[16]), .A2(n51), .B1(counter[17]), 
        .B2(n52), .ZN(n50) );
  AOI221D0BWP12T30P140 U101 ( .A1(n52), .A2(counter[17]), .B1(n51), .B2(
        counter[16]), .C(n50), .ZN(n53) );
  ND4D0BWP12T30P140 U102 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n74) );
  INVD0BWP12T30P140 U103 ( .I(cc_reg_o[15]), .ZN(n59) );
  INVD0BWP12T30P140 U104 ( .I(cc_reg_o[14]), .ZN(n58) );
  OAI22D0BWP12T30P140 U105 ( .A1(counter[14]), .A2(n58), .B1(counter[15]), 
        .B2(n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U106 ( .A1(n59), .A2(counter[15]), .B1(n58), .B2(
        counter[14]), .C(n57), .ZN(n72) );
  INVD0BWP12T30P140 U107 ( .I(cc_reg_o[13]), .ZN(n62) );
  INVD0BWP12T30P140 U108 ( .I(cc_reg_o[12]), .ZN(n61) );
  OAI22D0BWP12T30P140 U109 ( .A1(counter[12]), .A2(n61), .B1(counter[13]), 
        .B2(n62), .ZN(n60) );
  AOI221D0BWP12T30P140 U110 ( .A1(n62), .A2(counter[13]), .B1(n61), .B2(
        counter[12]), .C(n60), .ZN(n71) );
  INVD0BWP12T30P140 U111 ( .I(cc_reg_o[11]), .ZN(n65) );
  INVD0BWP12T30P140 U112 ( .I(cc_reg_o[10]), .ZN(n64) );
  OAI22D0BWP12T30P140 U113 ( .A1(counter[10]), .A2(n64), .B1(counter[11]), 
        .B2(n65), .ZN(n63) );
  AOI221D0BWP12T30P140 U114 ( .A1(n65), .A2(counter[11]), .B1(n64), .B2(
        counter[10]), .C(n63), .ZN(n70) );
  INVD0BWP12T30P140 U115 ( .I(cc_reg_o[9]), .ZN(n68) );
  INVD0BWP12T30P140 U116 ( .I(cc_reg_o[8]), .ZN(n67) );
  OAI22D0BWP12T30P140 U117 ( .A1(counter[8]), .A2(n67), .B1(counter[9]), .B2(
        n68), .ZN(n66) );
  AOI221D0BWP12T30P140 U118 ( .A1(n68), .A2(counter[9]), .B1(n67), .B2(
        counter[8]), .C(n66), .ZN(n69) );
  ND4D0BWP12T30P140 U119 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NR3D0BWP12T30P140 U120 ( .A1(n75), .A2(n74), .A3(n73), .ZN(n76) );
  ND3D0BWP12T30P140 U121 ( .A1(n78), .A2(n77), .A3(n76), .ZN(n81) );
  ND2D0BWP12T30P140 U122 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n89)
         );
  ND3D0BWP12T30P140 U123 ( .A1(n89), .A2(n79), .A3(ocirq), .ZN(n80) );
  OAI21D0BWP12T30P140 U124 ( .A1(n81), .A2(n87), .B(n80), .ZN(n133) );
  CKBD0BWP12T30P140 U125 ( .I(clk), .Z(n96) );
  CKBD0BWP12T30P140 U126 ( .I(clk), .Z(n95) );
  INVD0BWP12T30P140 U127 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U128 ( .I(n88), .Z(n93) );
  CKBD0BWP12T30P140 U129 ( .I(n88), .Z(n94) );
  ND2D0BWP12T30P140 U130 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n82) );
  AOI21D0BWP12T30P140 U131 ( .A1(n82), .A2(n81), .B(n87), .ZN(n85) );
  INVD0BWP12T30P140 U132 ( .I(pin_o), .ZN(n84) );
  AOI21D0BWP12T30P140 U133 ( .A1(n85), .A2(icoc_action_o[1]), .B(n84), .ZN(n83) );
  AO31D0BWP12T30P140 U134 ( .A1(icoc_action_o[0]), .A2(n85), .A3(n84), .B(n83), 
        .Z(n134) );
  OAI211D0BWP12T30P140 U135 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n89), .ZN(n86) );
  IAO21D0BWP12T30P140 U136 ( .A1(ocirq), .A2(n87), .B(n86), .ZN(N25) );
  OAI211D0BWP12T30P140 U137 ( .A1(icoc_select_i), .A2(n90), .B(icirq), .C(n89), 
        .ZN(n91) );
  IND2D1BWP12T30P140 U138 ( .A1(n92), .B1(n91), .ZN(n135) );
endmodule


module scct_channel_4 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n93), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(clk), .CDN(n92), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n94), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n94), .CDN(n92), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n95), .CDN(n93), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n93), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n95), .CDN(n93), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n95), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n95), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n95), .CDN(n93), .Q(
        icoc_action_o[1]) );
  NR2D0BWP12T30P140 U3 ( .A1(n77), .A2(i_cc_reg_wen), .ZN(n76) );
  INVD0BWP12T30P140 U4 ( .I(last_input_state), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(pin_i), .ZN(n1) );
  AOI33D0BWP12T30P140 U6 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n2), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n1), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(icoc_select_o), .A2(n3), .ZN(n91) );
  CKBD0BWP12T30P140 U8 ( .I(n91), .Z(n77) );
  CKBD0BWP12T30P140 U9 ( .I(n76), .Z(n79) );
  NR2D0BWP12T30P140 U10 ( .A1(n77), .A2(n79), .ZN(n75) );
  CKBD0BWP12T30P140 U11 ( .I(n75), .Z(n78) );
  AO222D0BWP12T30P140 U12 ( .A1(counter[30]), .A2(n77), .B1(cc_reg_o[30]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U13 ( .A1(counter[31]), .A2(n77), .B1(cc_reg_o[31]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U14 ( .A1(counter[10]), .A2(n91), .B1(cc_reg_o[10]), 
        .B2(n76), .C1(n75), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U15 ( .A1(counter[12]), .A2(n91), .B1(cc_reg_o[12]), 
        .B2(n76), .C1(n75), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U16 ( .A1(counter[14]), .A2(n91), .B1(cc_reg_o[14]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U17 ( .A1(counter[5]), .A2(n77), .B1(cc_reg_o[5]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[5]), .Z(n140) );
  INVD0BWP12T30P140 U18 ( .I(cc_reg_o[7]), .ZN(n6) );
  INVD0BWP12T30P140 U19 ( .I(cc_reg_o[6]), .ZN(n5) );
  OAI22D0BWP12T30P140 U20 ( .A1(counter[6]), .A2(n5), .B1(counter[7]), .B2(n6), 
        .ZN(n4) );
  AOI221D0BWP12T30P140 U21 ( .A1(n6), .A2(counter[7]), .B1(n5), .B2(counter[6]), .C(n4), .ZN(n72) );
  INVD0BWP12T30P140 U22 ( .I(cc_reg_o[5]), .ZN(n9) );
  INVD0BWP12T30P140 U23 ( .I(cc_reg_o[4]), .ZN(n8) );
  OAI22D0BWP12T30P140 U24 ( .A1(counter[4]), .A2(n8), .B1(counter[5]), .B2(n9), 
        .ZN(n7) );
  AOI221D0BWP12T30P140 U25 ( .A1(n9), .A2(counter[5]), .B1(n8), .B2(counter[4]), .C(n7), .ZN(n18) );
  INVD0BWP12T30P140 U26 ( .I(cc_reg_o[3]), .ZN(n12) );
  INVD0BWP12T30P140 U27 ( .I(cc_reg_o[2]), .ZN(n11) );
  OAI22D0BWP12T30P140 U28 ( .A1(counter[2]), .A2(n11), .B1(counter[3]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U29 ( .A1(n12), .A2(counter[3]), .B1(n11), .B2(
        counter[2]), .C(n10), .ZN(n17) );
  INVD0BWP12T30P140 U30 ( .I(cc_reg_o[31]), .ZN(n15) );
  INVD0BWP12T30P140 U31 ( .I(cc_reg_o[1]), .ZN(n14) );
  OAI22D0BWP12T30P140 U32 ( .A1(counter[1]), .A2(n14), .B1(counter[31]), .B2(
        n15), .ZN(n13) );
  AOI221D0BWP12T30P140 U33 ( .A1(n15), .A2(counter[31]), .B1(n14), .B2(
        counter[1]), .C(n13), .ZN(n16) );
  AN4D0BWP12T30P140 U34 ( .A1(n18), .A2(n17), .A3(counter_changed), .A4(n16), 
        .Z(n71) );
  INVD0BWP12T30P140 U35 ( .I(cc_reg_o[0]), .ZN(n21) );
  INVD0BWP12T30P140 U36 ( .I(cc_reg_o[30]), .ZN(n20) );
  OAI22D0BWP12T30P140 U37 ( .A1(counter[30]), .A2(n20), .B1(counter[0]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U38 ( .A1(n21), .A2(counter[0]), .B1(n20), .B2(
        counter[30]), .C(n19), .ZN(n34) );
  INVD0BWP12T30P140 U39 ( .I(cc_reg_o[29]), .ZN(n24) );
  INVD0BWP12T30P140 U40 ( .I(cc_reg_o[28]), .ZN(n23) );
  OAI22D0BWP12T30P140 U41 ( .A1(counter[28]), .A2(n23), .B1(counter[29]), .B2(
        n24), .ZN(n22) );
  AOI221D0BWP12T30P140 U42 ( .A1(n24), .A2(counter[29]), .B1(n23), .B2(
        counter[28]), .C(n22), .ZN(n33) );
  INVD0BWP12T30P140 U43 ( .I(cc_reg_o[27]), .ZN(n27) );
  INVD0BWP12T30P140 U44 ( .I(cc_reg_o[26]), .ZN(n26) );
  OAI22D0BWP12T30P140 U45 ( .A1(counter[26]), .A2(n26), .B1(counter[27]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U46 ( .A1(n27), .A2(counter[27]), .B1(n26), .B2(
        counter[26]), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U47 ( .I(cc_reg_o[25]), .ZN(n30) );
  INVD0BWP12T30P140 U48 ( .I(cc_reg_o[24]), .ZN(n29) );
  OAI22D0BWP12T30P140 U49 ( .A1(counter[24]), .A2(n29), .B1(counter[25]), .B2(
        n30), .ZN(n28) );
  AOI221D0BWP12T30P140 U50 ( .A1(n30), .A2(counter[25]), .B1(n29), .B2(
        counter[24]), .C(n28), .ZN(n31) );
  ND4D0BWP12T30P140 U51 ( .A1(n34), .A2(n33), .A3(n32), .A4(n31), .ZN(n69) );
  INVD0BWP12T30P140 U52 ( .I(cc_reg_o[23]), .ZN(n37) );
  INVD0BWP12T30P140 U53 ( .I(cc_reg_o[22]), .ZN(n36) );
  OAI22D0BWP12T30P140 U54 ( .A1(counter[22]), .A2(n36), .B1(counter[23]), .B2(
        n37), .ZN(n35) );
  AOI221D0BWP12T30P140 U55 ( .A1(n37), .A2(counter[23]), .B1(n36), .B2(
        counter[22]), .C(n35), .ZN(n50) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[21]), .ZN(n40) );
  INVD0BWP12T30P140 U57 ( .I(cc_reg_o[20]), .ZN(n39) );
  OAI22D0BWP12T30P140 U58 ( .A1(counter[20]), .A2(n39), .B1(counter[21]), .B2(
        n40), .ZN(n38) );
  AOI221D0BWP12T30P140 U59 ( .A1(n40), .A2(counter[21]), .B1(n39), .B2(
        counter[20]), .C(n38), .ZN(n49) );
  INVD0BWP12T30P140 U60 ( .I(cc_reg_o[19]), .ZN(n43) );
  INVD0BWP12T30P140 U61 ( .I(cc_reg_o[18]), .ZN(n42) );
  OAI22D0BWP12T30P140 U62 ( .A1(counter[18]), .A2(n42), .B1(counter[19]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U63 ( .A1(n43), .A2(counter[19]), .B1(n42), .B2(
        counter[18]), .C(n41), .ZN(n48) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[17]), .ZN(n46) );
  INVD0BWP12T30P140 U65 ( .I(cc_reg_o[16]), .ZN(n45) );
  OAI22D0BWP12T30P140 U66 ( .A1(counter[16]), .A2(n45), .B1(counter[17]), .B2(
        n46), .ZN(n44) );
  AOI221D0BWP12T30P140 U67 ( .A1(n46), .A2(counter[17]), .B1(n45), .B2(
        counter[16]), .C(n44), .ZN(n47) );
  ND4D0BWP12T30P140 U68 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n68) );
  INVD0BWP12T30P140 U69 ( .I(cc_reg_o[15]), .ZN(n53) );
  INVD0BWP12T30P140 U70 ( .I(cc_reg_o[14]), .ZN(n52) );
  OAI22D0BWP12T30P140 U71 ( .A1(counter[14]), .A2(n52), .B1(counter[15]), .B2(
        n53), .ZN(n51) );
  AOI221D0BWP12T30P140 U72 ( .A1(n53), .A2(counter[15]), .B1(n52), .B2(
        counter[14]), .C(n51), .ZN(n66) );
  INVD0BWP12T30P140 U73 ( .I(cc_reg_o[13]), .ZN(n56) );
  INVD0BWP12T30P140 U74 ( .I(cc_reg_o[12]), .ZN(n55) );
  OAI22D0BWP12T30P140 U75 ( .A1(counter[12]), .A2(n55), .B1(counter[13]), .B2(
        n56), .ZN(n54) );
  AOI221D0BWP12T30P140 U76 ( .A1(n56), .A2(counter[13]), .B1(n55), .B2(
        counter[12]), .C(n54), .ZN(n65) );
  INVD0BWP12T30P140 U77 ( .I(cc_reg_o[11]), .ZN(n59) );
  INVD0BWP12T30P140 U78 ( .I(cc_reg_o[10]), .ZN(n58) );
  OAI22D0BWP12T30P140 U79 ( .A1(counter[10]), .A2(n58), .B1(counter[11]), .B2(
        n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U80 ( .A1(n59), .A2(counter[11]), .B1(n58), .B2(
        counter[10]), .C(n57), .ZN(n64) );
  INVD0BWP12T30P140 U81 ( .I(cc_reg_o[9]), .ZN(n62) );
  INVD0BWP12T30P140 U82 ( .I(cc_reg_o[8]), .ZN(n61) );
  OAI22D0BWP12T30P140 U83 ( .A1(counter[8]), .A2(n61), .B1(counter[9]), .B2(
        n62), .ZN(n60) );
  AOI221D0BWP12T30P140 U84 ( .A1(n62), .A2(counter[9]), .B1(n61), .B2(
        counter[8]), .C(n60), .ZN(n63) );
  ND4D0BWP12T30P140 U85 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  NR3D0BWP12T30P140 U86 ( .A1(n69), .A2(n68), .A3(n67), .ZN(n70) );
  ND3D0BWP12T30P140 U87 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n82) );
  INVD0BWP12T30P140 U88 ( .I(icoc_select_o), .ZN(n81) );
  ND2D0BWP12T30P140 U89 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n87)
         );
  ND2D0BWP12T30P140 U90 ( .A1(icoc_select_i_wen), .A2(icoc_select_i), .ZN(n74)
         );
  ND3D0BWP12T30P140 U91 ( .A1(n87), .A2(n74), .A3(ocirq), .ZN(n73) );
  OAI21D0BWP12T30P140 U92 ( .A1(n82), .A2(n81), .B(n73), .ZN(n133) );
  AO222D0BWP12T30P140 U93 ( .A1(counter[29]), .A2(n77), .B1(cc_reg_o[29]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U94 ( .A1(counter[28]), .A2(n77), .B1(cc_reg_o[28]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[28]), .Z(n163) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), .S(
        icoc_action_i_wen), .Z(n130) );
  CKMUX2D0BWP12T30P140 U96 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), .S(
        icoc_action_i_wen), .Z(n132) );
  OAI21D0BWP12T30P140 U97 ( .A1(icoc_select_i_wen), .A2(n81), .B(n74), .ZN(
        n126) );
  AO222D0BWP12T30P140 U98 ( .A1(counter[18]), .A2(n91), .B1(cc_reg_o[18]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U99 ( .A1(counter[16]), .A2(n91), .B1(cc_reg_o[16]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U100 ( .A1(counter[15]), .A2(n77), .B1(cc_reg_o[15]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U101 ( .A1(counter[20]), .A2(n91), .B1(cc_reg_o[20]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U102 ( .A1(counter[13]), .A2(n91), .B1(cc_reg_o[13]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U103 ( .A1(counter[11]), .A2(n91), .B1(cc_reg_o[11]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U104 ( .A1(counter[21]), .A2(n77), .B1(cc_reg_o[21]), 
        .B2(n76), .C1(n75), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U105 ( .A1(counter[9]), .A2(n77), .B1(cc_reg_o[9]), .B2(
        n76), .C1(n78), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U106 ( .A1(counter[8]), .A2(n91), .B1(cc_reg_o[8]), .B2(
        n76), .C1(n75), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U107 ( .A1(counter[22]), .A2(n91), .B1(cc_reg_o[22]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U108 ( .A1(counter[7]), .A2(n77), .B1(cc_reg_o[7]), .B2(
        n76), .C1(n75), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U109 ( .A1(counter[6]), .A2(n91), .B1(cc_reg_o[6]), .B2(
        n76), .C1(n78), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U110 ( .A1(counter[23]), .A2(n77), .B1(cc_reg_o[23]), 
        .B2(n76), .C1(n75), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U111 ( .A1(counter[4]), .A2(n91), .B1(cc_reg_o[4]), .B2(
        n76), .C1(n78), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U112 ( .A1(counter[24]), .A2(n91), .B1(cc_reg_o[24]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U113 ( .A1(counter[3]), .A2(n77), .B1(cc_reg_o[3]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[3]), .Z(n138) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  AO222D0BWP12T30P140 U115 ( .A1(counter[2]), .A2(n91), .B1(cc_reg_o[2]), .B2(
        n76), .C1(n78), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U116 ( .A1(counter[0]), .A2(n77), .B1(cc_reg_o[0]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U117 ( .A1(counter[25]), .A2(n77), .B1(cc_reg_o[25]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U118 ( .A1(counter[1]), .A2(n77), .B1(cc_reg_o[1]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[1]), .Z(n136) );
  AO222D0BWP12T30P140 U119 ( .A1(counter[27]), .A2(n91), .B1(cc_reg_o[27]), 
        .B2(n79), .C1(n75), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U120 ( .A1(counter[19]), .A2(n77), .B1(cc_reg_o[19]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U121 ( .A1(counter[17]), .A2(n77), .B1(cc_reg_o[17]), 
        .B2(n76), .C1(n78), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U122 ( .A1(counter[26]), .A2(n91), .B1(cc_reg_o[26]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[26]), .Z(n161) );
  CKBD0BWP12T30P140 U123 ( .I(clk), .Z(n95) );
  CKBD0BWP12T30P140 U124 ( .I(clk), .Z(n94) );
  INVD0BWP12T30P140 U125 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U126 ( .I(n88), .Z(n92) );
  CKBD0BWP12T30P140 U127 ( .I(n88), .Z(n93) );
  OAI211D0BWP12T30P140 U128 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n87), .ZN(n80) );
  IAO21D0BWP12T30P140 U129 ( .A1(ocirq), .A2(n81), .B(n80), .ZN(N25) );
  ND2D0BWP12T30P140 U130 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(n83), .A2(n82), .B(n81), .ZN(n86) );
  INVD0BWP12T30P140 U132 ( .I(pin_o), .ZN(n85) );
  AOI21D0BWP12T30P140 U133 ( .A1(n86), .A2(icoc_action_o[1]), .B(n85), .ZN(n84) );
  AO31D0BWP12T30P140 U134 ( .A1(icoc_action_o[0]), .A2(n86), .A3(n85), .B(n84), 
        .Z(n134) );
  INVD0BWP12T30P140 U135 ( .I(icoc_select_i_wen), .ZN(n89) );
  OAI211D0BWP12T30P140 U136 ( .A1(icoc_select_i), .A2(n89), .B(icirq), .C(n87), 
        .ZN(n90) );
  IND2D1BWP12T30P140 U137 ( .A1(n91), .B1(n90), .ZN(n135) );
endmodule


module scct_channel_3 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n93), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(clk), .CDN(n92), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n93), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n94), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n94), .CDN(n92), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n95), .CDN(n93), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n95), .CDN(n93), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n95), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n95), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n95), .CDN(n93), .Q(
        icoc_action_o[1]) );
  CKBD0BWP12T30P140 U3 ( .I(n75), .Z(n77) );
  INVD0BWP12T30P140 U4 ( .I(cc_reg_o[7]), .ZN(n3) );
  INVD0BWP12T30P140 U5 ( .I(cc_reg_o[6]), .ZN(n2) );
  OAI22D0BWP12T30P140 U6 ( .A1(counter[6]), .A2(n2), .B1(counter[7]), .B2(n3), 
        .ZN(n1) );
  AOI221D0BWP12T30P140 U7 ( .A1(n3), .A2(counter[7]), .B1(n2), .B2(counter[6]), 
        .C(n1), .ZN(n69) );
  INVD0BWP12T30P140 U8 ( .I(cc_reg_o[5]), .ZN(n6) );
  INVD0BWP12T30P140 U9 ( .I(cc_reg_o[4]), .ZN(n5) );
  OAI22D0BWP12T30P140 U10 ( .A1(counter[4]), .A2(n5), .B1(counter[5]), .B2(n6), 
        .ZN(n4) );
  AOI221D0BWP12T30P140 U11 ( .A1(n6), .A2(counter[5]), .B1(n5), .B2(counter[4]), .C(n4), .ZN(n15) );
  INVD0BWP12T30P140 U12 ( .I(cc_reg_o[3]), .ZN(n9) );
  INVD0BWP12T30P140 U13 ( .I(cc_reg_o[2]), .ZN(n8) );
  OAI22D0BWP12T30P140 U14 ( .A1(counter[2]), .A2(n8), .B1(counter[3]), .B2(n9), 
        .ZN(n7) );
  AOI221D0BWP12T30P140 U15 ( .A1(n9), .A2(counter[3]), .B1(n8), .B2(counter[2]), .C(n7), .ZN(n14) );
  INVD0BWP12T30P140 U16 ( .I(cc_reg_o[31]), .ZN(n12) );
  INVD0BWP12T30P140 U17 ( .I(cc_reg_o[1]), .ZN(n11) );
  OAI22D0BWP12T30P140 U18 ( .A1(counter[1]), .A2(n11), .B1(counter[31]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U19 ( .A1(n12), .A2(counter[31]), .B1(n11), .B2(
        counter[1]), .C(n10), .ZN(n13) );
  AN4D0BWP12T30P140 U20 ( .A1(n15), .A2(n14), .A3(counter_changed), .A4(n13), 
        .Z(n68) );
  INVD0BWP12T30P140 U21 ( .I(cc_reg_o[0]), .ZN(n18) );
  INVD0BWP12T30P140 U22 ( .I(cc_reg_o[30]), .ZN(n17) );
  OAI22D0BWP12T30P140 U23 ( .A1(counter[30]), .A2(n17), .B1(counter[0]), .B2(
        n18), .ZN(n16) );
  AOI221D0BWP12T30P140 U24 ( .A1(n18), .A2(counter[0]), .B1(n17), .B2(
        counter[30]), .C(n16), .ZN(n31) );
  INVD0BWP12T30P140 U25 ( .I(cc_reg_o[29]), .ZN(n21) );
  INVD0BWP12T30P140 U26 ( .I(cc_reg_o[28]), .ZN(n20) );
  OAI22D0BWP12T30P140 U27 ( .A1(counter[28]), .A2(n20), .B1(counter[29]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U28 ( .A1(n21), .A2(counter[29]), .B1(n20), .B2(
        counter[28]), .C(n19), .ZN(n30) );
  INVD0BWP12T30P140 U29 ( .I(cc_reg_o[27]), .ZN(n24) );
  INVD0BWP12T30P140 U30 ( .I(cc_reg_o[26]), .ZN(n23) );
  OAI22D0BWP12T30P140 U31 ( .A1(counter[26]), .A2(n23), .B1(counter[27]), .B2(
        n24), .ZN(n22) );
  AOI221D0BWP12T30P140 U32 ( .A1(n24), .A2(counter[27]), .B1(n23), .B2(
        counter[26]), .C(n22), .ZN(n29) );
  INVD0BWP12T30P140 U33 ( .I(cc_reg_o[25]), .ZN(n27) );
  INVD0BWP12T30P140 U34 ( .I(cc_reg_o[24]), .ZN(n26) );
  OAI22D0BWP12T30P140 U35 ( .A1(counter[24]), .A2(n26), .B1(counter[25]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U36 ( .A1(n27), .A2(counter[25]), .B1(n26), .B2(
        counter[24]), .C(n25), .ZN(n28) );
  ND4D0BWP12T30P140 U37 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .ZN(n66) );
  INVD0BWP12T30P140 U38 ( .I(cc_reg_o[23]), .ZN(n34) );
  INVD0BWP12T30P140 U39 ( .I(cc_reg_o[22]), .ZN(n33) );
  OAI22D0BWP12T30P140 U40 ( .A1(counter[22]), .A2(n33), .B1(counter[23]), .B2(
        n34), .ZN(n32) );
  AOI221D0BWP12T30P140 U41 ( .A1(n34), .A2(counter[23]), .B1(n33), .B2(
        counter[22]), .C(n32), .ZN(n47) );
  INVD0BWP12T30P140 U42 ( .I(cc_reg_o[21]), .ZN(n37) );
  INVD0BWP12T30P140 U43 ( .I(cc_reg_o[20]), .ZN(n36) );
  OAI22D0BWP12T30P140 U44 ( .A1(counter[20]), .A2(n36), .B1(counter[21]), .B2(
        n37), .ZN(n35) );
  AOI221D0BWP12T30P140 U45 ( .A1(n37), .A2(counter[21]), .B1(n36), .B2(
        counter[20]), .C(n35), .ZN(n46) );
  INVD0BWP12T30P140 U46 ( .I(cc_reg_o[19]), .ZN(n40) );
  INVD0BWP12T30P140 U47 ( .I(cc_reg_o[18]), .ZN(n39) );
  OAI22D0BWP12T30P140 U48 ( .A1(counter[18]), .A2(n39), .B1(counter[19]), .B2(
        n40), .ZN(n38) );
  AOI221D0BWP12T30P140 U49 ( .A1(n40), .A2(counter[19]), .B1(n39), .B2(
        counter[18]), .C(n38), .ZN(n45) );
  INVD0BWP12T30P140 U50 ( .I(cc_reg_o[17]), .ZN(n43) );
  INVD0BWP12T30P140 U51 ( .I(cc_reg_o[16]), .ZN(n42) );
  OAI22D0BWP12T30P140 U52 ( .A1(counter[16]), .A2(n42), .B1(counter[17]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U53 ( .A1(n43), .A2(counter[17]), .B1(n42), .B2(
        counter[16]), .C(n41), .ZN(n44) );
  ND4D0BWP12T30P140 U54 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .ZN(n65) );
  INVD0BWP12T30P140 U55 ( .I(cc_reg_o[15]), .ZN(n50) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[14]), .ZN(n49) );
  OAI22D0BWP12T30P140 U57 ( .A1(counter[14]), .A2(n49), .B1(counter[15]), .B2(
        n50), .ZN(n48) );
  AOI221D0BWP12T30P140 U58 ( .A1(n50), .A2(counter[15]), .B1(n49), .B2(
        counter[14]), .C(n48), .ZN(n63) );
  INVD0BWP12T30P140 U59 ( .I(cc_reg_o[13]), .ZN(n53) );
  INVD0BWP12T30P140 U60 ( .I(cc_reg_o[12]), .ZN(n52) );
  OAI22D0BWP12T30P140 U61 ( .A1(counter[12]), .A2(n52), .B1(counter[13]), .B2(
        n53), .ZN(n51) );
  AOI221D0BWP12T30P140 U62 ( .A1(n53), .A2(counter[13]), .B1(n52), .B2(
        counter[12]), .C(n51), .ZN(n62) );
  INVD0BWP12T30P140 U63 ( .I(cc_reg_o[11]), .ZN(n56) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[10]), .ZN(n55) );
  OAI22D0BWP12T30P140 U65 ( .A1(counter[10]), .A2(n55), .B1(counter[11]), .B2(
        n56), .ZN(n54) );
  AOI221D0BWP12T30P140 U66 ( .A1(n56), .A2(counter[11]), .B1(n55), .B2(
        counter[10]), .C(n54), .ZN(n61) );
  INVD0BWP12T30P140 U67 ( .I(cc_reg_o[9]), .ZN(n59) );
  INVD0BWP12T30P140 U68 ( .I(cc_reg_o[8]), .ZN(n58) );
  OAI22D0BWP12T30P140 U69 ( .A1(counter[8]), .A2(n58), .B1(counter[9]), .B2(
        n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U70 ( .A1(n59), .A2(counter[9]), .B1(n58), .B2(
        counter[8]), .C(n57), .ZN(n60) );
  ND4D0BWP12T30P140 U71 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .ZN(n64) );
  NR3D0BWP12T30P140 U72 ( .A1(n66), .A2(n65), .A3(n64), .ZN(n67) );
  ND3D0BWP12T30P140 U73 ( .A1(n69), .A2(n68), .A3(n67), .ZN(n82) );
  INVD0BWP12T30P140 U74 ( .I(icoc_select_o), .ZN(n81) );
  ND2D0BWP12T30P140 U75 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n87)
         );
  ND2D0BWP12T30P140 U76 ( .A1(icoc_select_i_wen), .A2(icoc_select_i), .ZN(n79)
         );
  ND3D0BWP12T30P140 U77 ( .A1(n87), .A2(n79), .A3(ocirq), .ZN(n70) );
  OAI21D0BWP12T30P140 U78 ( .A1(n82), .A2(n81), .B(n70), .ZN(n133) );
  INVD0BWP12T30P140 U79 ( .I(last_input_state), .ZN(n72) );
  INVD0BWP12T30P140 U80 ( .I(pin_i), .ZN(n71) );
  AOI33D0BWP12T30P140 U81 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n72), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n71), .ZN(n73) );
  NR2D0BWP12T30P140 U82 ( .A1(icoc_select_o), .A2(n73), .ZN(n91) );
  CKBD0BWP12T30P140 U83 ( .I(n91), .Z(n78) );
  NR2D0BWP12T30P140 U84 ( .A1(n78), .A2(i_cc_reg_wen), .ZN(n75) );
  NR2D0BWP12T30P140 U85 ( .A1(n78), .A2(n77), .ZN(n74) );
  CKBD0BWP12T30P140 U86 ( .I(n74), .Z(n76) );
  AO222D0BWP12T30P140 U87 ( .A1(counter[6]), .A2(n91), .B1(cc_reg_o[6]), .B2(
        n75), .C1(n76), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U88 ( .A1(counter[31]), .A2(n78), .B1(cc_reg_o[31]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U89 ( .A1(counter[30]), .A2(n78), .B1(cc_reg_o[30]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U90 ( .A1(counter[29]), .A2(n78), .B1(cc_reg_o[29]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U91 ( .A1(counter[28]), .A2(n78), .B1(cc_reg_o[28]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U92 ( .A1(counter[27]), .A2(n91), .B1(cc_reg_o[27]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U93 ( .A1(counter[26]), .A2(n91), .B1(cc_reg_o[26]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U94 ( .A1(counter[25]), .A2(n78), .B1(cc_reg_o[25]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U95 ( .A1(counter[24]), .A2(n91), .B1(cc_reg_o[24]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U96 ( .A1(counter[23]), .A2(n78), .B1(cc_reg_o[23]), 
        .B2(n75), .C1(n74), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U97 ( .A1(counter[22]), .A2(n91), .B1(cc_reg_o[22]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U98 ( .A1(counter[21]), .A2(n78), .B1(cc_reg_o[21]), 
        .B2(n75), .C1(n74), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U99 ( .A1(counter[20]), .A2(n91), .B1(cc_reg_o[20]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U100 ( .A1(counter[18]), .A2(n91), .B1(cc_reg_o[18]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U101 ( .A1(counter[16]), .A2(n91), .B1(cc_reg_o[16]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U102 ( .A1(counter[14]), .A2(n91), .B1(cc_reg_o[14]), 
        .B2(n77), .C1(n74), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U103 ( .A1(counter[12]), .A2(n91), .B1(cc_reg_o[12]), 
        .B2(n75), .C1(n74), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U104 ( .A1(counter[10]), .A2(n91), .B1(cc_reg_o[10]), 
        .B2(n75), .C1(n74), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U105 ( .A1(counter[19]), .A2(n78), .B1(cc_reg_o[19]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U106 ( .A1(counter[17]), .A2(n78), .B1(cc_reg_o[17]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U107 ( .A1(counter[15]), .A2(n78), .B1(cc_reg_o[15]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U108 ( .A1(counter[13]), .A2(n91), .B1(cc_reg_o[13]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U109 ( .A1(counter[11]), .A2(n91), .B1(cc_reg_o[11]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U110 ( .A1(counter[9]), .A2(n78), .B1(cc_reg_o[9]), .B2(
        n75), .C1(n76), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U111 ( .A1(counter[8]), .A2(n91), .B1(cc_reg_o[8]), .B2(
        n75), .C1(n74), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U112 ( .A1(counter[7]), .A2(n78), .B1(cc_reg_o[7]), .B2(
        n75), .C1(n74), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U113 ( .A1(counter[5]), .A2(n78), .B1(cc_reg_o[5]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U114 ( .A1(counter[4]), .A2(n91), .B1(cc_reg_o[4]), .B2(
        n75), .C1(n76), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U115 ( .A1(counter[3]), .A2(n78), .B1(cc_reg_o[3]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[3]), .Z(n138) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), 
        .S(icoc_action_i_wen), .Z(n132) );
  AO222D0BWP12T30P140 U117 ( .A1(counter[2]), .A2(n91), .B1(cc_reg_o[2]), .B2(
        n75), .C1(n76), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U118 ( .A1(counter[1]), .A2(n78), .B1(cc_reg_o[1]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[1]), .Z(n136) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), 
        .S(icoc_action_i_wen), .Z(n130) );
  AO222D0BWP12T30P140 U120 ( .A1(counter[0]), .A2(n78), .B1(cc_reg_o[0]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[0]), .Z(n167) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  OAI21D0BWP12T30P140 U122 ( .A1(icoc_select_i_wen), .A2(n81), .B(n79), .ZN(
        n126) );
  CKBD0BWP12T30P140 U123 ( .I(clk), .Z(n94) );
  CKBD0BWP12T30P140 U124 ( .I(clk), .Z(n95) );
  INVD0BWP12T30P140 U125 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U126 ( .I(n88), .Z(n92) );
  CKBD0BWP12T30P140 U127 ( .I(n88), .Z(n93) );
  OAI211D0BWP12T30P140 U128 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n87), .ZN(n80) );
  IAO21D0BWP12T30P140 U129 ( .A1(ocirq), .A2(n81), .B(n80), .ZN(N25) );
  ND2D0BWP12T30P140 U130 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(n83), .A2(n82), .B(n81), .ZN(n86) );
  INVD0BWP12T30P140 U132 ( .I(pin_o), .ZN(n85) );
  AOI21D0BWP12T30P140 U133 ( .A1(n86), .A2(icoc_action_o[1]), .B(n85), .ZN(n84) );
  AO31D0BWP12T30P140 U134 ( .A1(icoc_action_o[0]), .A2(n86), .A3(n85), .B(n84), 
        .Z(n134) );
  INVD0BWP12T30P140 U135 ( .I(icoc_select_i_wen), .ZN(n89) );
  OAI211D0BWP12T30P140 U136 ( .A1(icoc_select_i), .A2(n89), .B(icirq), .C(n87), 
        .ZN(n90) );
  IND2D1BWP12T30P140 U137 ( .A1(n91), .B1(n90), .ZN(n135) );
endmodule


module scct_channel_2 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n93), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(clk), .CDN(n92), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n93), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n94), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n94), .CDN(n92), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n95), .CDN(n93), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n95), .CDN(n93), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n95), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n95), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n95), .CDN(n93), .Q(
        icoc_action_o[1]) );
  CKBD0BWP12T30P140 U3 ( .I(n91), .Z(n79) );
  INVD0BWP12T30P140 U4 ( .I(last_input_state), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(pin_i), .ZN(n1) );
  AOI33D0BWP12T30P140 U6 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n2), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n1), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(icoc_select_o), .A2(n3), .ZN(n91) );
  NR2D0BWP12T30P140 U8 ( .A1(n79), .A2(i_cc_reg_wen), .ZN(n78) );
  CKBD0BWP12T30P140 U9 ( .I(n78), .Z(n75) );
  NR2D0BWP12T30P140 U10 ( .A1(n79), .A2(n75), .ZN(n76) );
  AO222D0BWP12T30P140 U11 ( .A1(counter[20]), .A2(n91), .B1(cc_reg_o[20]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U12 ( .A1(counter[21]), .A2(n79), .B1(cc_reg_o[21]), 
        .B2(n78), .C1(n76), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U13 ( .A1(counter[22]), .A2(n91), .B1(cc_reg_o[22]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U14 ( .A1(counter[23]), .A2(n79), .B1(cc_reg_o[23]), 
        .B2(n78), .C1(n76), .C2(i_cc_reg[23]), .Z(n158) );
  CKBD0BWP12T30P140 U15 ( .I(n76), .Z(n77) );
  AO222D0BWP12T30P140 U16 ( .A1(counter[24]), .A2(n91), .B1(cc_reg_o[24]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U17 ( .A1(counter[25]), .A2(n79), .B1(cc_reg_o[25]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U18 ( .A1(counter[26]), .A2(n91), .B1(cc_reg_o[26]), 
        .B2(n75), .C1(n77), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U19 ( .A1(counter[27]), .A2(n91), .B1(cc_reg_o[27]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[28]), .A2(n79), .B1(cc_reg_o[28]), 
        .B2(n75), .C1(n77), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[29]), .A2(n79), .B1(cc_reg_o[29]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[30]), .A2(n79), .B1(cc_reg_o[30]), 
        .B2(n75), .C1(n77), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[17]), .A2(n79), .B1(cc_reg_o[17]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U24 ( .A1(counter[31]), .A2(n79), .B1(cc_reg_o[31]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U25 ( .A1(counter[10]), .A2(n91), .B1(cc_reg_o[10]), 
        .B2(n78), .C1(n76), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[12]), .A2(n91), .B1(cc_reg_o[12]), 
        .B2(n78), .C1(n76), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U27 ( .A1(counter[14]), .A2(n91), .B1(cc_reg_o[14]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[14]), .Z(n149) );
  AO222D0BWP12T30P140 U28 ( .A1(counter[4]), .A2(n91), .B1(cc_reg_o[4]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[4]), .Z(n139) );
  INVD0BWP12T30P140 U29 ( .I(cc_reg_o[7]), .ZN(n6) );
  INVD0BWP12T30P140 U30 ( .I(cc_reg_o[6]), .ZN(n5) );
  OAI22D0BWP12T30P140 U31 ( .A1(counter[6]), .A2(n5), .B1(counter[7]), .B2(n6), 
        .ZN(n4) );
  AOI221D0BWP12T30P140 U32 ( .A1(n6), .A2(counter[7]), .B1(n5), .B2(counter[6]), .C(n4), .ZN(n72) );
  INVD0BWP12T30P140 U33 ( .I(cc_reg_o[5]), .ZN(n9) );
  INVD0BWP12T30P140 U34 ( .I(cc_reg_o[4]), .ZN(n8) );
  OAI22D0BWP12T30P140 U35 ( .A1(counter[4]), .A2(n8), .B1(counter[5]), .B2(n9), 
        .ZN(n7) );
  AOI221D0BWP12T30P140 U36 ( .A1(n9), .A2(counter[5]), .B1(n8), .B2(counter[4]), .C(n7), .ZN(n18) );
  INVD0BWP12T30P140 U37 ( .I(cc_reg_o[3]), .ZN(n12) );
  INVD0BWP12T30P140 U38 ( .I(cc_reg_o[2]), .ZN(n11) );
  OAI22D0BWP12T30P140 U39 ( .A1(counter[2]), .A2(n11), .B1(counter[3]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U40 ( .A1(n12), .A2(counter[3]), .B1(n11), .B2(
        counter[2]), .C(n10), .ZN(n17) );
  INVD0BWP12T30P140 U41 ( .I(cc_reg_o[31]), .ZN(n15) );
  INVD0BWP12T30P140 U42 ( .I(cc_reg_o[1]), .ZN(n14) );
  OAI22D0BWP12T30P140 U43 ( .A1(counter[1]), .A2(n14), .B1(counter[31]), .B2(
        n15), .ZN(n13) );
  AOI221D0BWP12T30P140 U44 ( .A1(n15), .A2(counter[31]), .B1(n14), .B2(
        counter[1]), .C(n13), .ZN(n16) );
  AN4D0BWP12T30P140 U45 ( .A1(n18), .A2(n17), .A3(counter_changed), .A4(n16), 
        .Z(n71) );
  INVD0BWP12T30P140 U46 ( .I(cc_reg_o[0]), .ZN(n21) );
  INVD0BWP12T30P140 U47 ( .I(cc_reg_o[30]), .ZN(n20) );
  OAI22D0BWP12T30P140 U48 ( .A1(counter[30]), .A2(n20), .B1(counter[0]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U49 ( .A1(n21), .A2(counter[0]), .B1(n20), .B2(
        counter[30]), .C(n19), .ZN(n34) );
  INVD0BWP12T30P140 U50 ( .I(cc_reg_o[29]), .ZN(n24) );
  INVD0BWP12T30P140 U51 ( .I(cc_reg_o[28]), .ZN(n23) );
  OAI22D0BWP12T30P140 U52 ( .A1(counter[28]), .A2(n23), .B1(counter[29]), .B2(
        n24), .ZN(n22) );
  AOI221D0BWP12T30P140 U53 ( .A1(n24), .A2(counter[29]), .B1(n23), .B2(
        counter[28]), .C(n22), .ZN(n33) );
  INVD0BWP12T30P140 U54 ( .I(cc_reg_o[27]), .ZN(n27) );
  INVD0BWP12T30P140 U55 ( .I(cc_reg_o[26]), .ZN(n26) );
  OAI22D0BWP12T30P140 U56 ( .A1(counter[26]), .A2(n26), .B1(counter[27]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U57 ( .A1(n27), .A2(counter[27]), .B1(n26), .B2(
        counter[26]), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U58 ( .I(cc_reg_o[25]), .ZN(n30) );
  INVD0BWP12T30P140 U59 ( .I(cc_reg_o[24]), .ZN(n29) );
  OAI22D0BWP12T30P140 U60 ( .A1(counter[24]), .A2(n29), .B1(counter[25]), .B2(
        n30), .ZN(n28) );
  AOI221D0BWP12T30P140 U61 ( .A1(n30), .A2(counter[25]), .B1(n29), .B2(
        counter[24]), .C(n28), .ZN(n31) );
  ND4D0BWP12T30P140 U62 ( .A1(n34), .A2(n33), .A3(n32), .A4(n31), .ZN(n69) );
  INVD0BWP12T30P140 U63 ( .I(cc_reg_o[23]), .ZN(n37) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[22]), .ZN(n36) );
  OAI22D0BWP12T30P140 U65 ( .A1(counter[22]), .A2(n36), .B1(counter[23]), .B2(
        n37), .ZN(n35) );
  AOI221D0BWP12T30P140 U66 ( .A1(n37), .A2(counter[23]), .B1(n36), .B2(
        counter[22]), .C(n35), .ZN(n50) );
  INVD0BWP12T30P140 U67 ( .I(cc_reg_o[21]), .ZN(n40) );
  INVD0BWP12T30P140 U68 ( .I(cc_reg_o[20]), .ZN(n39) );
  OAI22D0BWP12T30P140 U69 ( .A1(counter[20]), .A2(n39), .B1(counter[21]), .B2(
        n40), .ZN(n38) );
  AOI221D0BWP12T30P140 U70 ( .A1(n40), .A2(counter[21]), .B1(n39), .B2(
        counter[20]), .C(n38), .ZN(n49) );
  INVD0BWP12T30P140 U71 ( .I(cc_reg_o[19]), .ZN(n43) );
  INVD0BWP12T30P140 U72 ( .I(cc_reg_o[18]), .ZN(n42) );
  OAI22D0BWP12T30P140 U73 ( .A1(counter[18]), .A2(n42), .B1(counter[19]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U74 ( .A1(n43), .A2(counter[19]), .B1(n42), .B2(
        counter[18]), .C(n41), .ZN(n48) );
  INVD0BWP12T30P140 U75 ( .I(cc_reg_o[17]), .ZN(n46) );
  INVD0BWP12T30P140 U76 ( .I(cc_reg_o[16]), .ZN(n45) );
  OAI22D0BWP12T30P140 U77 ( .A1(counter[16]), .A2(n45), .B1(counter[17]), .B2(
        n46), .ZN(n44) );
  AOI221D0BWP12T30P140 U78 ( .A1(n46), .A2(counter[17]), .B1(n45), .B2(
        counter[16]), .C(n44), .ZN(n47) );
  ND4D0BWP12T30P140 U79 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n68) );
  INVD0BWP12T30P140 U80 ( .I(cc_reg_o[15]), .ZN(n53) );
  INVD0BWP12T30P140 U81 ( .I(cc_reg_o[14]), .ZN(n52) );
  OAI22D0BWP12T30P140 U82 ( .A1(counter[14]), .A2(n52), .B1(counter[15]), .B2(
        n53), .ZN(n51) );
  AOI221D0BWP12T30P140 U83 ( .A1(n53), .A2(counter[15]), .B1(n52), .B2(
        counter[14]), .C(n51), .ZN(n66) );
  INVD0BWP12T30P140 U84 ( .I(cc_reg_o[13]), .ZN(n56) );
  INVD0BWP12T30P140 U85 ( .I(cc_reg_o[12]), .ZN(n55) );
  OAI22D0BWP12T30P140 U86 ( .A1(counter[12]), .A2(n55), .B1(counter[13]), .B2(
        n56), .ZN(n54) );
  AOI221D0BWP12T30P140 U87 ( .A1(n56), .A2(counter[13]), .B1(n55), .B2(
        counter[12]), .C(n54), .ZN(n65) );
  INVD0BWP12T30P140 U88 ( .I(cc_reg_o[11]), .ZN(n59) );
  INVD0BWP12T30P140 U89 ( .I(cc_reg_o[10]), .ZN(n58) );
  OAI22D0BWP12T30P140 U90 ( .A1(counter[10]), .A2(n58), .B1(counter[11]), .B2(
        n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U91 ( .A1(n59), .A2(counter[11]), .B1(n58), .B2(
        counter[10]), .C(n57), .ZN(n64) );
  INVD0BWP12T30P140 U92 ( .I(cc_reg_o[9]), .ZN(n62) );
  INVD0BWP12T30P140 U93 ( .I(cc_reg_o[8]), .ZN(n61) );
  OAI22D0BWP12T30P140 U94 ( .A1(counter[8]), .A2(n61), .B1(counter[9]), .B2(
        n62), .ZN(n60) );
  AOI221D0BWP12T30P140 U95 ( .A1(n62), .A2(counter[9]), .B1(n61), .B2(
        counter[8]), .C(n60), .ZN(n63) );
  ND4D0BWP12T30P140 U96 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  NR3D0BWP12T30P140 U97 ( .A1(n69), .A2(n68), .A3(n67), .ZN(n70) );
  ND3D0BWP12T30P140 U98 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n80) );
  INVD0BWP12T30P140 U99 ( .I(icoc_select_o), .ZN(n86) );
  ND2D0BWP12T30P140 U100 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n87)
         );
  ND2D0BWP12T30P140 U101 ( .A1(icoc_select_i_wen), .A2(icoc_select_i), .ZN(n74) );
  ND3D0BWP12T30P140 U102 ( .A1(n87), .A2(n74), .A3(ocirq), .ZN(n73) );
  OAI21D0BWP12T30P140 U103 ( .A1(n80), .A2(n86), .B(n73), .ZN(n133) );
  AO222D0BWP12T30P140 U104 ( .A1(counter[15]), .A2(n79), .B1(cc_reg_o[15]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[15]), .Z(n150) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), 
        .S(icoc_action_i_wen), .Z(n132) );
  AO222D0BWP12T30P140 U106 ( .A1(counter[0]), .A2(n79), .B1(cc_reg_o[0]), .B2(
        n75), .C1(n77), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U107 ( .A1(counter[13]), .A2(n91), .B1(cc_reg_o[13]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U108 ( .A1(counter[1]), .A2(n79), .B1(cc_reg_o[1]), .B2(
        n75), .C1(n77), .C2(i_cc_reg[1]), .Z(n136) );
  CKMUX2D0BWP12T30P140 U109 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), 
        .S(icoc_action_i_wen), .Z(n130) );
  AO222D0BWP12T30P140 U110 ( .A1(counter[2]), .A2(n91), .B1(cc_reg_o[2]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U111 ( .A1(counter[11]), .A2(n91), .B1(cc_reg_o[11]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U112 ( .A1(counter[3]), .A2(n79), .B1(cc_reg_o[3]), .B2(
        n75), .C1(n77), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U113 ( .A1(counter[9]), .A2(n79), .B1(cc_reg_o[9]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U114 ( .A1(counter[5]), .A2(n79), .B1(cc_reg_o[5]), .B2(
        n75), .C1(n77), .C2(i_cc_reg[5]), .Z(n140) );
  OAI21D0BWP12T30P140 U115 ( .A1(icoc_select_i_wen), .A2(n86), .B(n74), .ZN(
        n126) );
  AO222D0BWP12T30P140 U116 ( .A1(counter[6]), .A2(n91), .B1(cc_reg_o[6]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U117 ( .A1(counter[18]), .A2(n91), .B1(cc_reg_o[18]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U118 ( .A1(counter[16]), .A2(n91), .B1(cc_reg_o[16]), 
        .B2(n75), .C1(n76), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U119 ( .A1(counter[8]), .A2(n91), .B1(cc_reg_o[8]), .B2(
        n78), .C1(n76), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U120 ( .A1(counter[7]), .A2(n79), .B1(cc_reg_o[7]), .B2(
        n78), .C1(n76), .C2(i_cc_reg[7]), .Z(n142) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  AO222D0BWP12T30P140 U122 ( .A1(counter[19]), .A2(n79), .B1(cc_reg_o[19]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[19]), .Z(n154) );
  CKBD0BWP12T30P140 U123 ( .I(clk), .Z(n95) );
  CKBD0BWP12T30P140 U124 ( .I(clk), .Z(n94) );
  INVD0BWP12T30P140 U125 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U126 ( .I(n88), .Z(n93) );
  CKBD0BWP12T30P140 U127 ( .I(n88), .Z(n92) );
  ND2D0BWP12T30P140 U128 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n81) );
  AOI21D0BWP12T30P140 U129 ( .A1(n81), .A2(n80), .B(n86), .ZN(n84) );
  INVD0BWP12T30P140 U130 ( .I(pin_o), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(n84), .A2(icoc_action_o[1]), .B(n83), .ZN(n82) );
  AO31D0BWP12T30P140 U132 ( .A1(icoc_action_o[0]), .A2(n84), .A3(n83), .B(n82), 
        .Z(n134) );
  OAI211D0BWP12T30P140 U133 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n87), .ZN(n85) );
  IAO21D0BWP12T30P140 U134 ( .A1(ocirq), .A2(n86), .B(n85), .ZN(N25) );
  INVD0BWP12T30P140 U135 ( .I(icoc_select_i_wen), .ZN(n89) );
  OAI211D0BWP12T30P140 U136 ( .A1(icoc_select_i), .A2(n89), .B(icirq), .C(n87), 
        .ZN(n90) );
  IND2D1BWP12T30P140 U137 ( .A1(n91), .B1(n90), .ZN(n135) );
endmodule


module scct_channel_1 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n93), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(clk), .CDN(n92), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n94), .CDN(n88), .Q(icirq) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n94), .CDN(n92), .Q(pin_o) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n95), .CDN(n93), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n93), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n95), .CDN(n93), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n95), .CDN(n93), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n95), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n95), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n95), .CDN(n93), .Q(
        icoc_action_o[1]) );
  CKBD0BWP12T30P140 U3 ( .I(n91), .Z(n4) );
  INVD0BWP12T30P140 U4 ( .I(last_input_state), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(pin_i), .ZN(n1) );
  AOI33D0BWP12T30P140 U6 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n2), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n1), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(icoc_select_o), .A2(n3), .ZN(n91) );
  NR2D0BWP12T30P140 U8 ( .A1(n4), .A2(i_cc_reg_wen), .ZN(n77) );
  CKBD0BWP12T30P140 U9 ( .I(n77), .Z(n79) );
  NR2D0BWP12T30P140 U10 ( .A1(n4), .A2(n79), .ZN(n78) );
  AO222D0BWP12T30P140 U11 ( .A1(counter[31]), .A2(n4), .B1(cc_reg_o[31]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[31]), .Z(n166) );
  CKBD0BWP12T30P140 U12 ( .I(n78), .Z(n76) );
  AO222D0BWP12T30P140 U13 ( .A1(counter[30]), .A2(n4), .B1(cc_reg_o[30]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U14 ( .A1(counter[29]), .A2(n4), .B1(cc_reg_o[29]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U15 ( .A1(counter[28]), .A2(n4), .B1(cc_reg_o[28]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U16 ( .A1(counter[27]), .A2(n91), .B1(cc_reg_o[27]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U17 ( .A1(counter[26]), .A2(n91), .B1(cc_reg_o[26]), 
        .B2(n79), .C1(n76), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U18 ( .A1(counter[25]), .A2(n4), .B1(cc_reg_o[25]), .B2(
        n79), .C1(n78), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U19 ( .A1(counter[24]), .A2(n91), .B1(cc_reg_o[24]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[23]), .A2(n4), .B1(cc_reg_o[23]), .B2(
        n77), .C1(n78), .C2(i_cc_reg[23]), .Z(n158) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[22]), .A2(n91), .B1(cc_reg_o[22]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[21]), .A2(n4), .B1(cc_reg_o[21]), .B2(
        n77), .C1(n78), .C2(i_cc_reg[21]), .Z(n156) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[20]), .A2(n91), .B1(cc_reg_o[20]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[20]), .Z(n155) );
  CKMUX2D0BWP12T30P140 U24 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), .S(
        icoc_action_i_wen), .Z(n132) );
  CKMUX2D0BWP12T30P140 U25 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), .S(
        icoc_action_i_wen), .Z(n130) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[18]), .A2(n91), .B1(cc_reg_o[18]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[18]), .Z(n153) );
  INVD0BWP12T30P140 U27 ( .I(icoc_select_o), .ZN(n86) );
  ND2D0BWP12T30P140 U28 ( .A1(icoc_select_i_wen), .A2(icoc_select_i), .ZN(n74)
         );
  OAI21D0BWP12T30P140 U29 ( .A1(icoc_select_i_wen), .A2(n86), .B(n74), .ZN(
        n126) );
  CKMUX2D0BWP12T30P140 U30 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  AO222D0BWP12T30P140 U31 ( .A1(counter[16]), .A2(n91), .B1(cc_reg_o[16]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U32 ( .A1(counter[17]), .A2(n4), .B1(cc_reg_o[17]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U33 ( .A1(counter[7]), .A2(n4), .B1(cc_reg_o[7]), .B2(
        n77), .C1(n78), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U34 ( .A1(counter[19]), .A2(n4), .B1(cc_reg_o[19]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[19]), .Z(n154) );
  AO222D0BWP12T30P140 U35 ( .A1(counter[8]), .A2(n91), .B1(cc_reg_o[8]), .B2(
        n77), .C1(n78), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U36 ( .A1(counter[6]), .A2(n91), .B1(cc_reg_o[6]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[6]), .Z(n141) );
  AO222D0BWP12T30P140 U37 ( .A1(counter[9]), .A2(n4), .B1(cc_reg_o[9]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U38 ( .A1(counter[11]), .A2(n91), .B1(cc_reg_o[11]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U39 ( .A1(counter[5]), .A2(n4), .B1(cc_reg_o[5]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U40 ( .A1(counter[13]), .A2(n91), .B1(cc_reg_o[13]), 
        .B2(n77), .C1(n76), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U41 ( .A1(counter[15]), .A2(n4), .B1(cc_reg_o[15]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U42 ( .A1(counter[4]), .A2(n91), .B1(cc_reg_o[4]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[4]), .Z(n139) );
  AO222D0BWP12T30P140 U43 ( .A1(counter[0]), .A2(n4), .B1(cc_reg_o[0]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U44 ( .A1(counter[3]), .A2(n4), .B1(cc_reg_o[3]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U45 ( .A1(counter[1]), .A2(n4), .B1(cc_reg_o[1]), .B2(
        n79), .C1(n76), .C2(i_cc_reg[1]), .Z(n136) );
  INVD0BWP12T30P140 U46 ( .I(cc_reg_o[7]), .ZN(n7) );
  INVD0BWP12T30P140 U47 ( .I(cc_reg_o[6]), .ZN(n6) );
  OAI22D0BWP12T30P140 U48 ( .A1(counter[6]), .A2(n6), .B1(counter[7]), .B2(n7), 
        .ZN(n5) );
  AOI221D0BWP12T30P140 U49 ( .A1(n7), .A2(counter[7]), .B1(n6), .B2(counter[6]), .C(n5), .ZN(n73) );
  INVD0BWP12T30P140 U50 ( .I(cc_reg_o[5]), .ZN(n10) );
  INVD0BWP12T30P140 U51 ( .I(cc_reg_o[4]), .ZN(n9) );
  OAI22D0BWP12T30P140 U52 ( .A1(counter[4]), .A2(n9), .B1(counter[5]), .B2(n10), .ZN(n8) );
  AOI221D0BWP12T30P140 U53 ( .A1(n10), .A2(counter[5]), .B1(n9), .B2(
        counter[4]), .C(n8), .ZN(n19) );
  INVD0BWP12T30P140 U54 ( .I(cc_reg_o[3]), .ZN(n13) );
  INVD0BWP12T30P140 U55 ( .I(cc_reg_o[2]), .ZN(n12) );
  OAI22D0BWP12T30P140 U56 ( .A1(counter[2]), .A2(n12), .B1(counter[3]), .B2(
        n13), .ZN(n11) );
  AOI221D0BWP12T30P140 U57 ( .A1(n13), .A2(counter[3]), .B1(n12), .B2(
        counter[2]), .C(n11), .ZN(n18) );
  INVD0BWP12T30P140 U58 ( .I(cc_reg_o[31]), .ZN(n16) );
  INVD0BWP12T30P140 U59 ( .I(cc_reg_o[1]), .ZN(n15) );
  OAI22D0BWP12T30P140 U60 ( .A1(counter[1]), .A2(n15), .B1(counter[31]), .B2(
        n16), .ZN(n14) );
  AOI221D0BWP12T30P140 U61 ( .A1(n16), .A2(counter[31]), .B1(n15), .B2(
        counter[1]), .C(n14), .ZN(n17) );
  AN4D0BWP12T30P140 U62 ( .A1(n19), .A2(n18), .A3(counter_changed), .A4(n17), 
        .Z(n72) );
  INVD0BWP12T30P140 U63 ( .I(cc_reg_o[0]), .ZN(n22) );
  INVD0BWP12T30P140 U64 ( .I(cc_reg_o[30]), .ZN(n21) );
  OAI22D0BWP12T30P140 U65 ( .A1(counter[30]), .A2(n21), .B1(counter[0]), .B2(
        n22), .ZN(n20) );
  AOI221D0BWP12T30P140 U66 ( .A1(n22), .A2(counter[0]), .B1(n21), .B2(
        counter[30]), .C(n20), .ZN(n35) );
  INVD0BWP12T30P140 U67 ( .I(cc_reg_o[29]), .ZN(n25) );
  INVD0BWP12T30P140 U68 ( .I(cc_reg_o[28]), .ZN(n24) );
  OAI22D0BWP12T30P140 U69 ( .A1(counter[28]), .A2(n24), .B1(counter[29]), .B2(
        n25), .ZN(n23) );
  AOI221D0BWP12T30P140 U70 ( .A1(n25), .A2(counter[29]), .B1(n24), .B2(
        counter[28]), .C(n23), .ZN(n34) );
  INVD0BWP12T30P140 U71 ( .I(cc_reg_o[27]), .ZN(n28) );
  INVD0BWP12T30P140 U72 ( .I(cc_reg_o[26]), .ZN(n27) );
  OAI22D0BWP12T30P140 U73 ( .A1(counter[26]), .A2(n27), .B1(counter[27]), .B2(
        n28), .ZN(n26) );
  AOI221D0BWP12T30P140 U74 ( .A1(n28), .A2(counter[27]), .B1(n27), .B2(
        counter[26]), .C(n26), .ZN(n33) );
  INVD0BWP12T30P140 U75 ( .I(cc_reg_o[25]), .ZN(n31) );
  INVD0BWP12T30P140 U76 ( .I(cc_reg_o[24]), .ZN(n30) );
  OAI22D0BWP12T30P140 U77 ( .A1(counter[24]), .A2(n30), .B1(counter[25]), .B2(
        n31), .ZN(n29) );
  AOI221D0BWP12T30P140 U78 ( .A1(n31), .A2(counter[25]), .B1(n30), .B2(
        counter[24]), .C(n29), .ZN(n32) );
  ND4D0BWP12T30P140 U79 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .ZN(n70) );
  INVD0BWP12T30P140 U80 ( .I(cc_reg_o[23]), .ZN(n38) );
  INVD0BWP12T30P140 U81 ( .I(cc_reg_o[22]), .ZN(n37) );
  OAI22D0BWP12T30P140 U82 ( .A1(counter[22]), .A2(n37), .B1(counter[23]), .B2(
        n38), .ZN(n36) );
  AOI221D0BWP12T30P140 U83 ( .A1(n38), .A2(counter[23]), .B1(n37), .B2(
        counter[22]), .C(n36), .ZN(n51) );
  INVD0BWP12T30P140 U84 ( .I(cc_reg_o[21]), .ZN(n41) );
  INVD0BWP12T30P140 U85 ( .I(cc_reg_o[20]), .ZN(n40) );
  OAI22D0BWP12T30P140 U86 ( .A1(counter[20]), .A2(n40), .B1(counter[21]), .B2(
        n41), .ZN(n39) );
  AOI221D0BWP12T30P140 U87 ( .A1(n41), .A2(counter[21]), .B1(n40), .B2(
        counter[20]), .C(n39), .ZN(n50) );
  INVD0BWP12T30P140 U88 ( .I(cc_reg_o[19]), .ZN(n44) );
  INVD0BWP12T30P140 U89 ( .I(cc_reg_o[18]), .ZN(n43) );
  OAI22D0BWP12T30P140 U90 ( .A1(counter[18]), .A2(n43), .B1(counter[19]), .B2(
        n44), .ZN(n42) );
  AOI221D0BWP12T30P140 U91 ( .A1(n44), .A2(counter[19]), .B1(n43), .B2(
        counter[18]), .C(n42), .ZN(n49) );
  INVD0BWP12T30P140 U92 ( .I(cc_reg_o[17]), .ZN(n47) );
  INVD0BWP12T30P140 U93 ( .I(cc_reg_o[16]), .ZN(n46) );
  OAI22D0BWP12T30P140 U94 ( .A1(counter[16]), .A2(n46), .B1(counter[17]), .B2(
        n47), .ZN(n45) );
  AOI221D0BWP12T30P140 U95 ( .A1(n47), .A2(counter[17]), .B1(n46), .B2(
        counter[16]), .C(n45), .ZN(n48) );
  ND4D0BWP12T30P140 U96 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .ZN(n69) );
  INVD0BWP12T30P140 U97 ( .I(cc_reg_o[15]), .ZN(n54) );
  INVD0BWP12T30P140 U98 ( .I(cc_reg_o[14]), .ZN(n53) );
  OAI22D0BWP12T30P140 U99 ( .A1(counter[14]), .A2(n53), .B1(counter[15]), .B2(
        n54), .ZN(n52) );
  AOI221D0BWP12T30P140 U100 ( .A1(n54), .A2(counter[15]), .B1(n53), .B2(
        counter[14]), .C(n52), .ZN(n67) );
  INVD0BWP12T30P140 U101 ( .I(cc_reg_o[13]), .ZN(n57) );
  INVD0BWP12T30P140 U102 ( .I(cc_reg_o[12]), .ZN(n56) );
  OAI22D0BWP12T30P140 U103 ( .A1(counter[12]), .A2(n56), .B1(counter[13]), 
        .B2(n57), .ZN(n55) );
  AOI221D0BWP12T30P140 U104 ( .A1(n57), .A2(counter[13]), .B1(n56), .B2(
        counter[12]), .C(n55), .ZN(n66) );
  INVD0BWP12T30P140 U105 ( .I(cc_reg_o[11]), .ZN(n60) );
  INVD0BWP12T30P140 U106 ( .I(cc_reg_o[10]), .ZN(n59) );
  OAI22D0BWP12T30P140 U107 ( .A1(counter[10]), .A2(n59), .B1(counter[11]), 
        .B2(n60), .ZN(n58) );
  AOI221D0BWP12T30P140 U108 ( .A1(n60), .A2(counter[11]), .B1(n59), .B2(
        counter[10]), .C(n58), .ZN(n65) );
  INVD0BWP12T30P140 U109 ( .I(cc_reg_o[9]), .ZN(n63) );
  INVD0BWP12T30P140 U110 ( .I(cc_reg_o[8]), .ZN(n62) );
  OAI22D0BWP12T30P140 U111 ( .A1(counter[8]), .A2(n62), .B1(counter[9]), .B2(
        n63), .ZN(n61) );
  AOI221D0BWP12T30P140 U112 ( .A1(n63), .A2(counter[9]), .B1(n62), .B2(
        counter[8]), .C(n61), .ZN(n64) );
  ND4D0BWP12T30P140 U113 ( .A1(n67), .A2(n66), .A3(n65), .A4(n64), .ZN(n68) );
  NR3D0BWP12T30P140 U114 ( .A1(n70), .A2(n69), .A3(n68), .ZN(n71) );
  ND3D0BWP12T30P140 U115 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n80) );
  ND2D0BWP12T30P140 U116 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n87)
         );
  ND3D0BWP12T30P140 U117 ( .A1(n87), .A2(n74), .A3(ocirq), .ZN(n75) );
  OAI21D0BWP12T30P140 U118 ( .A1(n80), .A2(n86), .B(n75), .ZN(n133) );
  AO222D0BWP12T30P140 U119 ( .A1(counter[2]), .A2(n91), .B1(cc_reg_o[2]), .B2(
        n77), .C1(n76), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U120 ( .A1(counter[12]), .A2(n91), .B1(cc_reg_o[12]), 
        .B2(n77), .C1(n78), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U121 ( .A1(counter[10]), .A2(n91), .B1(cc_reg_o[10]), 
        .B2(n77), .C1(n78), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U122 ( .A1(counter[14]), .A2(n91), .B1(cc_reg_o[14]), 
        .B2(n79), .C1(n78), .C2(i_cc_reg[14]), .Z(n149) );
  CKBD0BWP12T30P140 U123 ( .I(clk), .Z(n94) );
  CKBD0BWP12T30P140 U124 ( .I(clk), .Z(n95) );
  INVD0BWP12T30P140 U125 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U126 ( .I(n88), .Z(n92) );
  CKBD0BWP12T30P140 U127 ( .I(n88), .Z(n93) );
  ND2D0BWP12T30P140 U128 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n81) );
  AOI21D0BWP12T30P140 U129 ( .A1(n81), .A2(n80), .B(n86), .ZN(n84) );
  INVD0BWP12T30P140 U130 ( .I(pin_o), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(n84), .A2(icoc_action_o[1]), .B(n83), .ZN(n82) );
  AO31D0BWP12T30P140 U132 ( .A1(icoc_action_o[0]), .A2(n84), .A3(n83), .B(n82), 
        .Z(n134) );
  OAI211D0BWP12T30P140 U133 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n87), .ZN(n85) );
  IAO21D0BWP12T30P140 U134 ( .A1(ocirq), .A2(n86), .B(n85), .ZN(N25) );
  INVD0BWP12T30P140 U135 ( .I(icoc_select_i_wen), .ZN(n89) );
  OAI211D0BWP12T30P140 U136 ( .A1(icoc_select_i), .A2(n89), .B(icirq), .C(n87), 
        .ZN(n90) );
  IND2D1BWP12T30P140 U137 ( .A1(n91), .B1(n90), .ZN(n135) );
endmodule


module scct_channel_0 ( clk, rst, counter, counter_changed, icoc_select_i, 
        icoc_select_i_wen, icoc_action_i, icoc_action_i_wen, i_cc_reg, 
        i_cc_reg_wen, irq_enable_i, irq_enable_i_wen, irq_status_i, 
        irq_status_i_wen, force_oc_i, force_oc_i_wen, icoc_select_o, 
        icoc_action_o, cc_reg_o, irq_enable_o, irq_status_o, pin_i, pin_o );
  input [31:0] counter;
  input [1:0] icoc_action_i;
  input [31:0] i_cc_reg;
  output [1:0] icoc_action_o;
  output [31:0] cc_reg_o;
  input clk, rst, counter_changed, icoc_select_i, icoc_select_i_wen,
         icoc_action_i_wen, i_cc_reg_wen, irq_enable_i, irq_enable_i_wen,
         irq_status_i, irq_status_i_wen, force_oc_i, force_oc_i_wen, pin_i;
  output icoc_select_o, irq_enable_o, irq_status_o, pin_o;
  wire   icirq, ocirq, last_input_state, N25, n88, n126, n128, n130, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n90, n91, n92, n93, n94, n95;

  DFCNQD1BWP12T30P140 ocirq_reg ( .D(n133), .CP(clk), .CDN(n93), .Q(ocirq) );
  DFCNQD1BWP12T30P140 cc_reg_reg_4_ ( .D(n139), .CP(clk), .CDN(n92), .Q(
        cc_reg_o[4]) );
  DFCNQD1BWP12T30P140 outval_reg ( .D(n134), .CP(n94), .CDN(n92), .Q(pin_o) );
  DFCNQD1BWP12T30P140 icirq_reg ( .D(n135), .CP(n95), .CDN(n93), .Q(icirq) );
  DFCNQD1BWP12T30P140 last_input_state_reg ( .D(pin_i), .CP(n95), .CDN(n88), 
        .Q(last_input_state) );
  DFCNQD1BWP12T30P140 irq_status_reg ( .D(N25), .CP(n95), .CDN(n93), .Q(
        irq_status_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_15_ ( .D(n150), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[15]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_13_ ( .D(n148), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[13]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_11_ ( .D(n146), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[11]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_9_ ( .D(n144), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[9]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_31_ ( .D(n166), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[31]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_30_ ( .D(n165), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[30]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_29_ ( .D(n164), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[29]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_28_ ( .D(n163), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[28]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_27_ ( .D(n162), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[27]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_26_ ( .D(n161), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[26]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_25_ ( .D(n160), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[25]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_24_ ( .D(n159), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[24]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_23_ ( .D(n158), .CP(n94), .CDN(n92), .Q(
        cc_reg_o[23]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_22_ ( .D(n157), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[22]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_21_ ( .D(n156), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[21]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_20_ ( .D(n155), .CP(n94), .CDN(n88), .Q(
        cc_reg_o[20]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_19_ ( .D(n154), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[19]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_17_ ( .D(n152), .CP(n94), .CDN(n93), .Q(
        cc_reg_o[17]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_14_ ( .D(n149), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[14]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_12_ ( .D(n147), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[12]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_10_ ( .D(n145), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[10]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_8_ ( .D(n143), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[8]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_7_ ( .D(n142), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[7]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_6_ ( .D(n141), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[6]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_5_ ( .D(n140), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[5]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_3_ ( .D(n138), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[3]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_2_ ( .D(n137), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[2]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_1_ ( .D(n136), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[1]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_0_ ( .D(n167), .CP(n95), .CDN(n92), .Q(
        cc_reg_o[0]) );
  DFCNQD1BWP12T30P140 irq_enable_reg ( .D(n128), .CP(n95), .CDN(n93), .Q(
        irq_enable_o) );
  DFCNQD1BWP12T30P140 cc_reg_reg_18_ ( .D(n153), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[18]) );
  DFCNQD1BWP12T30P140 cc_reg_reg_16_ ( .D(n151), .CP(n95), .CDN(n88), .Q(
        cc_reg_o[16]) );
  DFCNQD1BWP12T30P140 icoc_select_reg ( .D(n126), .CP(n95), .CDN(n88), .Q(
        icoc_select_o) );
  DFCNQD1BWP12T30P140 icoc_action_reg_0_ ( .D(n130), .CP(n95), .CDN(n88), .Q(
        icoc_action_o[0]) );
  DFCNQD1BWP12T30P140 icoc_action_reg_1_ ( .D(n132), .CP(n95), .CDN(n93), .Q(
        icoc_action_o[1]) );
  CKBD0BWP12T30P140 U3 ( .I(n78), .Z(n76) );
  INVD0BWP12T30P140 U4 ( .I(last_input_state), .ZN(n2) );
  INVD0BWP12T30P140 U5 ( .I(pin_i), .ZN(n1) );
  AOI33D0BWP12T30P140 U6 ( .A1(pin_i), .A2(icoc_action_o[0]), .A3(n2), .B1(
        last_input_state), .B2(icoc_action_o[1]), .B3(n1), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(icoc_select_o), .A2(n3), .ZN(n91) );
  CKBD0BWP12T30P140 U8 ( .I(n91), .Z(n79) );
  NR2D0BWP12T30P140 U9 ( .A1(n79), .A2(i_cc_reg_wen), .ZN(n78) );
  NR2D0BWP12T30P140 U10 ( .A1(n79), .A2(n76), .ZN(n77) );
  AO222D0BWP12T30P140 U11 ( .A1(counter[22]), .A2(n91), .B1(cc_reg_o[22]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[22]), .Z(n157) );
  AO222D0BWP12T30P140 U12 ( .A1(counter[23]), .A2(n79), .B1(cc_reg_o[23]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[23]), .Z(n158) );
  CKBD0BWP12T30P140 U13 ( .I(n77), .Z(n74) );
  AO222D0BWP12T30P140 U14 ( .A1(counter[24]), .A2(n91), .B1(cc_reg_o[24]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[24]), .Z(n159) );
  AO222D0BWP12T30P140 U15 ( .A1(counter[25]), .A2(n79), .B1(cc_reg_o[25]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[25]), .Z(n160) );
  AO222D0BWP12T30P140 U16 ( .A1(counter[26]), .A2(n91), .B1(cc_reg_o[26]), 
        .B2(n76), .C1(n74), .C2(i_cc_reg[26]), .Z(n161) );
  AO222D0BWP12T30P140 U17 ( .A1(counter[27]), .A2(n91), .B1(cc_reg_o[27]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[27]), .Z(n162) );
  AO222D0BWP12T30P140 U18 ( .A1(counter[28]), .A2(n79), .B1(cc_reg_o[28]), 
        .B2(n76), .C1(n74), .C2(i_cc_reg[28]), .Z(n163) );
  AO222D0BWP12T30P140 U19 ( .A1(counter[29]), .A2(n79), .B1(cc_reg_o[29]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[29]), .Z(n164) );
  AO222D0BWP12T30P140 U20 ( .A1(counter[30]), .A2(n79), .B1(cc_reg_o[30]), 
        .B2(n76), .C1(n74), .C2(i_cc_reg[30]), .Z(n165) );
  AO222D0BWP12T30P140 U21 ( .A1(counter[31]), .A2(n79), .B1(cc_reg_o[31]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[31]), .Z(n166) );
  AO222D0BWP12T30P140 U22 ( .A1(counter[9]), .A2(n79), .B1(cc_reg_o[9]), .B2(
        n78), .C1(n74), .C2(i_cc_reg[9]), .Z(n144) );
  AO222D0BWP12T30P140 U23 ( .A1(counter[11]), .A2(n91), .B1(cc_reg_o[11]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[11]), .Z(n146) );
  AO222D0BWP12T30P140 U24 ( .A1(counter[13]), .A2(n91), .B1(cc_reg_o[13]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[13]), .Z(n148) );
  AO222D0BWP12T30P140 U25 ( .A1(counter[15]), .A2(n79), .B1(cc_reg_o[15]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[15]), .Z(n150) );
  AO222D0BWP12T30P140 U26 ( .A1(counter[4]), .A2(n91), .B1(cc_reg_o[4]), .B2(
        n78), .C1(n74), .C2(i_cc_reg[4]), .Z(n139) );
  INVD0BWP12T30P140 U27 ( .I(cc_reg_o[7]), .ZN(n6) );
  INVD0BWP12T30P140 U28 ( .I(cc_reg_o[6]), .ZN(n5) );
  OAI22D0BWP12T30P140 U29 ( .A1(counter[6]), .A2(n5), .B1(counter[7]), .B2(n6), 
        .ZN(n4) );
  AOI221D0BWP12T30P140 U30 ( .A1(n6), .A2(counter[7]), .B1(n5), .B2(counter[6]), .C(n4), .ZN(n72) );
  INVD0BWP12T30P140 U31 ( .I(cc_reg_o[5]), .ZN(n9) );
  INVD0BWP12T30P140 U32 ( .I(cc_reg_o[4]), .ZN(n8) );
  OAI22D0BWP12T30P140 U33 ( .A1(counter[4]), .A2(n8), .B1(counter[5]), .B2(n9), 
        .ZN(n7) );
  AOI221D0BWP12T30P140 U34 ( .A1(n9), .A2(counter[5]), .B1(n8), .B2(counter[4]), .C(n7), .ZN(n18) );
  INVD0BWP12T30P140 U35 ( .I(cc_reg_o[3]), .ZN(n12) );
  INVD0BWP12T30P140 U36 ( .I(cc_reg_o[2]), .ZN(n11) );
  OAI22D0BWP12T30P140 U37 ( .A1(counter[2]), .A2(n11), .B1(counter[3]), .B2(
        n12), .ZN(n10) );
  AOI221D0BWP12T30P140 U38 ( .A1(n12), .A2(counter[3]), .B1(n11), .B2(
        counter[2]), .C(n10), .ZN(n17) );
  INVD0BWP12T30P140 U39 ( .I(cc_reg_o[31]), .ZN(n15) );
  INVD0BWP12T30P140 U40 ( .I(cc_reg_o[1]), .ZN(n14) );
  OAI22D0BWP12T30P140 U41 ( .A1(counter[1]), .A2(n14), .B1(counter[31]), .B2(
        n15), .ZN(n13) );
  AOI221D0BWP12T30P140 U42 ( .A1(n15), .A2(counter[31]), .B1(n14), .B2(
        counter[1]), .C(n13), .ZN(n16) );
  AN4D0BWP12T30P140 U43 ( .A1(n18), .A2(n17), .A3(counter_changed), .A4(n16), 
        .Z(n71) );
  INVD0BWP12T30P140 U44 ( .I(cc_reg_o[0]), .ZN(n21) );
  INVD0BWP12T30P140 U45 ( .I(cc_reg_o[30]), .ZN(n20) );
  OAI22D0BWP12T30P140 U46 ( .A1(counter[30]), .A2(n20), .B1(counter[0]), .B2(
        n21), .ZN(n19) );
  AOI221D0BWP12T30P140 U47 ( .A1(n21), .A2(counter[0]), .B1(n20), .B2(
        counter[30]), .C(n19), .ZN(n34) );
  INVD0BWP12T30P140 U48 ( .I(cc_reg_o[29]), .ZN(n24) );
  INVD0BWP12T30P140 U49 ( .I(cc_reg_o[28]), .ZN(n23) );
  OAI22D0BWP12T30P140 U50 ( .A1(counter[28]), .A2(n23), .B1(counter[29]), .B2(
        n24), .ZN(n22) );
  AOI221D0BWP12T30P140 U51 ( .A1(n24), .A2(counter[29]), .B1(n23), .B2(
        counter[28]), .C(n22), .ZN(n33) );
  INVD0BWP12T30P140 U52 ( .I(cc_reg_o[27]), .ZN(n27) );
  INVD0BWP12T30P140 U53 ( .I(cc_reg_o[26]), .ZN(n26) );
  OAI22D0BWP12T30P140 U54 ( .A1(counter[26]), .A2(n26), .B1(counter[27]), .B2(
        n27), .ZN(n25) );
  AOI221D0BWP12T30P140 U55 ( .A1(n27), .A2(counter[27]), .B1(n26), .B2(
        counter[26]), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U56 ( .I(cc_reg_o[25]), .ZN(n30) );
  INVD0BWP12T30P140 U57 ( .I(cc_reg_o[24]), .ZN(n29) );
  OAI22D0BWP12T30P140 U58 ( .A1(counter[24]), .A2(n29), .B1(counter[25]), .B2(
        n30), .ZN(n28) );
  AOI221D0BWP12T30P140 U59 ( .A1(n30), .A2(counter[25]), .B1(n29), .B2(
        counter[24]), .C(n28), .ZN(n31) );
  ND4D0BWP12T30P140 U60 ( .A1(n34), .A2(n33), .A3(n32), .A4(n31), .ZN(n69) );
  INVD0BWP12T30P140 U61 ( .I(cc_reg_o[23]), .ZN(n37) );
  INVD0BWP12T30P140 U62 ( .I(cc_reg_o[22]), .ZN(n36) );
  OAI22D0BWP12T30P140 U63 ( .A1(counter[22]), .A2(n36), .B1(counter[23]), .B2(
        n37), .ZN(n35) );
  AOI221D0BWP12T30P140 U64 ( .A1(n37), .A2(counter[23]), .B1(n36), .B2(
        counter[22]), .C(n35), .ZN(n50) );
  INVD0BWP12T30P140 U65 ( .I(cc_reg_o[21]), .ZN(n40) );
  INVD0BWP12T30P140 U66 ( .I(cc_reg_o[20]), .ZN(n39) );
  OAI22D0BWP12T30P140 U67 ( .A1(counter[20]), .A2(n39), .B1(counter[21]), .B2(
        n40), .ZN(n38) );
  AOI221D0BWP12T30P140 U68 ( .A1(n40), .A2(counter[21]), .B1(n39), .B2(
        counter[20]), .C(n38), .ZN(n49) );
  INVD0BWP12T30P140 U69 ( .I(cc_reg_o[19]), .ZN(n43) );
  INVD0BWP12T30P140 U70 ( .I(cc_reg_o[18]), .ZN(n42) );
  OAI22D0BWP12T30P140 U71 ( .A1(counter[18]), .A2(n42), .B1(counter[19]), .B2(
        n43), .ZN(n41) );
  AOI221D0BWP12T30P140 U72 ( .A1(n43), .A2(counter[19]), .B1(n42), .B2(
        counter[18]), .C(n41), .ZN(n48) );
  INVD0BWP12T30P140 U73 ( .I(cc_reg_o[17]), .ZN(n46) );
  INVD0BWP12T30P140 U74 ( .I(cc_reg_o[16]), .ZN(n45) );
  OAI22D0BWP12T30P140 U75 ( .A1(counter[16]), .A2(n45), .B1(counter[17]), .B2(
        n46), .ZN(n44) );
  AOI221D0BWP12T30P140 U76 ( .A1(n46), .A2(counter[17]), .B1(n45), .B2(
        counter[16]), .C(n44), .ZN(n47) );
  ND4D0BWP12T30P140 U77 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n68) );
  INVD0BWP12T30P140 U78 ( .I(cc_reg_o[15]), .ZN(n53) );
  INVD0BWP12T30P140 U79 ( .I(cc_reg_o[14]), .ZN(n52) );
  OAI22D0BWP12T30P140 U80 ( .A1(counter[14]), .A2(n52), .B1(counter[15]), .B2(
        n53), .ZN(n51) );
  AOI221D0BWP12T30P140 U81 ( .A1(n53), .A2(counter[15]), .B1(n52), .B2(
        counter[14]), .C(n51), .ZN(n66) );
  INVD0BWP12T30P140 U82 ( .I(cc_reg_o[13]), .ZN(n56) );
  INVD0BWP12T30P140 U83 ( .I(cc_reg_o[12]), .ZN(n55) );
  OAI22D0BWP12T30P140 U84 ( .A1(counter[12]), .A2(n55), .B1(counter[13]), .B2(
        n56), .ZN(n54) );
  AOI221D0BWP12T30P140 U85 ( .A1(n56), .A2(counter[13]), .B1(n55), .B2(
        counter[12]), .C(n54), .ZN(n65) );
  INVD0BWP12T30P140 U86 ( .I(cc_reg_o[11]), .ZN(n59) );
  INVD0BWP12T30P140 U87 ( .I(cc_reg_o[10]), .ZN(n58) );
  OAI22D0BWP12T30P140 U88 ( .A1(counter[10]), .A2(n58), .B1(counter[11]), .B2(
        n59), .ZN(n57) );
  AOI221D0BWP12T30P140 U89 ( .A1(n59), .A2(counter[11]), .B1(n58), .B2(
        counter[10]), .C(n57), .ZN(n64) );
  INVD0BWP12T30P140 U90 ( .I(cc_reg_o[9]), .ZN(n62) );
  INVD0BWP12T30P140 U91 ( .I(cc_reg_o[8]), .ZN(n61) );
  OAI22D0BWP12T30P140 U92 ( .A1(counter[8]), .A2(n61), .B1(counter[9]), .B2(
        n62), .ZN(n60) );
  AOI221D0BWP12T30P140 U93 ( .A1(n62), .A2(counter[9]), .B1(n61), .B2(
        counter[8]), .C(n60), .ZN(n63) );
  ND4D0BWP12T30P140 U94 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  NR3D0BWP12T30P140 U95 ( .A1(n69), .A2(n68), .A3(n67), .ZN(n70) );
  ND3D0BWP12T30P140 U96 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n82) );
  INVD0BWP12T30P140 U97 ( .I(icoc_select_o), .ZN(n81) );
  ND2D0BWP12T30P140 U98 ( .A1(irq_status_i), .A2(irq_status_i_wen), .ZN(n87)
         );
  ND2D0BWP12T30P140 U99 ( .A1(icoc_select_i_wen), .A2(icoc_select_i), .ZN(n75)
         );
  ND3D0BWP12T30P140 U100 ( .A1(n87), .A2(n75), .A3(ocirq), .ZN(n73) );
  OAI21D0BWP12T30P140 U101 ( .A1(n82), .A2(n81), .B(n73), .ZN(n133) );
  AO222D0BWP12T30P140 U102 ( .A1(counter[2]), .A2(n91), .B1(cc_reg_o[2]), .B2(
        n78), .C1(n74), .C2(i_cc_reg[2]), .Z(n137) );
  AO222D0BWP12T30P140 U103 ( .A1(counter[3]), .A2(n79), .B1(cc_reg_o[3]), .B2(
        n76), .C1(n74), .C2(i_cc_reg[3]), .Z(n138) );
  AO222D0BWP12T30P140 U104 ( .A1(counter[0]), .A2(n79), .B1(cc_reg_o[0]), .B2(
        n76), .C1(n74), .C2(i_cc_reg[0]), .Z(n167) );
  AO222D0BWP12T30P140 U105 ( .A1(counter[5]), .A2(n79), .B1(cc_reg_o[5]), .B2(
        n76), .C1(n74), .C2(i_cc_reg[5]), .Z(n140) );
  AO222D0BWP12T30P140 U106 ( .A1(counter[6]), .A2(n91), .B1(cc_reg_o[6]), .B2(
        n78), .C1(n74), .C2(i_cc_reg[6]), .Z(n141) );
  CKMUX2D0BWP12T30P140 U107 ( .I0(irq_enable_o), .I1(irq_enable_i), .S(
        irq_enable_i_wen), .Z(n128) );
  AO222D0BWP12T30P140 U108 ( .A1(counter[7]), .A2(n79), .B1(cc_reg_o[7]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[7]), .Z(n142) );
  AO222D0BWP12T30P140 U109 ( .A1(counter[18]), .A2(n91), .B1(cc_reg_o[18]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[18]), .Z(n153) );
  AO222D0BWP12T30P140 U110 ( .A1(counter[8]), .A2(n91), .B1(cc_reg_o[8]), .B2(
        n78), .C1(n77), .C2(i_cc_reg[8]), .Z(n143) );
  AO222D0BWP12T30P140 U111 ( .A1(counter[10]), .A2(n91), .B1(cc_reg_o[10]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[10]), .Z(n145) );
  AO222D0BWP12T30P140 U112 ( .A1(counter[16]), .A2(n91), .B1(cc_reg_o[16]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[16]), .Z(n151) );
  AO222D0BWP12T30P140 U113 ( .A1(counter[12]), .A2(n91), .B1(cc_reg_o[12]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[12]), .Z(n147) );
  AO222D0BWP12T30P140 U114 ( .A1(counter[1]), .A2(n79), .B1(cc_reg_o[1]), .B2(
        n76), .C1(n74), .C2(i_cc_reg[1]), .Z(n136) );
  AO222D0BWP12T30P140 U115 ( .A1(counter[19]), .A2(n79), .B1(cc_reg_o[19]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[19]), .Z(n154) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(icoc_action_o[0]), .I1(icoc_action_i[0]), 
        .S(icoc_action_i_wen), .Z(n130) );
  AO222D0BWP12T30P140 U117 ( .A1(counter[17]), .A2(n79), .B1(cc_reg_o[17]), 
        .B2(n78), .C1(n74), .C2(i_cc_reg[17]), .Z(n152) );
  AO222D0BWP12T30P140 U118 ( .A1(counter[14]), .A2(n91), .B1(cc_reg_o[14]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[14]), .Z(n149) );
  OAI21D0BWP12T30P140 U119 ( .A1(icoc_select_i_wen), .A2(n81), .B(n75), .ZN(
        n126) );
  AO222D0BWP12T30P140 U120 ( .A1(counter[20]), .A2(n91), .B1(cc_reg_o[20]), 
        .B2(n76), .C1(n77), .C2(i_cc_reg[20]), .Z(n155) );
  AO222D0BWP12T30P140 U121 ( .A1(counter[21]), .A2(n79), .B1(cc_reg_o[21]), 
        .B2(n78), .C1(n77), .C2(i_cc_reg[21]), .Z(n156) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(icoc_action_o[1]), .I1(icoc_action_i[1]), 
        .S(icoc_action_i_wen), .Z(n132) );
  CKBD0BWP12T30P140 U123 ( .I(clk), .Z(n94) );
  CKBD0BWP12T30P140 U124 ( .I(clk), .Z(n95) );
  INVD0BWP12T30P140 U125 ( .I(rst), .ZN(n88) );
  CKBD0BWP12T30P140 U126 ( .I(n88), .Z(n92) );
  CKBD0BWP12T30P140 U127 ( .I(n88), .Z(n93) );
  OAI211D0BWP12T30P140 U128 ( .A1(icoc_select_o), .A2(icirq), .B(irq_enable_o), 
        .C(n87), .ZN(n80) );
  IAO21D0BWP12T30P140 U129 ( .A1(ocirq), .A2(n81), .B(n80), .ZN(N25) );
  ND2D0BWP12T30P140 U130 ( .A1(force_oc_i), .A2(force_oc_i_wen), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(n83), .A2(n82), .B(n81), .ZN(n86) );
  INVD0BWP12T30P140 U132 ( .I(pin_o), .ZN(n85) );
  AOI21D0BWP12T30P140 U133 ( .A1(n86), .A2(icoc_action_o[1]), .B(n85), .ZN(n84) );
  AO31D0BWP12T30P140 U134 ( .A1(icoc_action_o[0]), .A2(n86), .A3(n85), .B(n84), 
        .Z(n134) );
  INVD0BWP12T30P140 U135 ( .I(icoc_select_i_wen), .ZN(n89) );
  OAI211D0BWP12T30P140 U136 ( .A1(icoc_select_i), .A2(n89), .B(icirq), .C(n87), 
        .ZN(n90) );
  IND2D1BWP12T30P140 U137 ( .A1(n91), .B1(n90), .ZN(n135) );
endmodule


module scct ( clk, rst, address, read, readdata, writedata, write, irq, pins_i, 
        pins_o );
  input [4:0] address;
  output [31:0] readdata;
  input [31:0] writedata;
  input [7:0] pins_i;
  output [7:0] pins_o;
  input clk, rst, read, write;
  output irq;
  wire   ctr_irq_status_o, ctr_counter_changed, ctr_irq_enable_i,
         ctr_irq_enable_i_wen, ctr_irq_status_i, ctr_irq_status_i_wen,
         ctr_prescaler_i_wen, ch_icoc_select_i_wen, ch_icoc_action_i_wen,
         ch_irq_enable_i_wen, ch_irq_status_i_wen, ch_force_oc_i_wen, n404,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161,
         n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201,
         n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211,
         n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221,
         n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231,
         n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241,
         n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261,
         n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271,
         n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281,
         n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291;
  wire   [7:0] ch_irq_status_o;
  wire   [31:0] counter;
  wire   [31:0] ctr_prescaler_i;
  wire   [31:0] ctr_prescaler_o;
  wire   [7:0] ch_icoc_select_i;
  wire   [15:0] ch_icoc_action_i;
  wire   [255:0] ch_i_cc_reg;
  wire   [7:0] ch_i_cc_reg_wen;
  wire   [7:0] ch_irq_enable_i;
  wire   [7:0] ch_irq_status_i;
  wire   [7:0] ch_force_oc_i;
  wire   [7:0] ch_icoc_select_o;
  wire   [15:0] ch_icoc_action_o;
  wire   [255:0] ch_cc_reg_o;
  wire   [7:0] ch_irq_enable_o;

  scct_counter my_counter ( .clk(n1272), .rst(rst), .counter(counter), 
        .counter_changed(ctr_counter_changed), .irq_enable_i(ctr_irq_enable_i), 
        .irq_enable_i_wen(ctr_irq_enable_i_wen), .irq_status_i(
        ctr_irq_status_i), .irq_status_i_wen(ctr_irq_status_i_wen), 
        .prescaler_i(ctr_prescaler_i), .prescaler_i_wen(ctr_prescaler_i_wen), 
        .irq_status_o(ctr_irq_status_o), .prescaler_o(ctr_prescaler_o) );
  scct_channel_7 channel0 ( .clk(n1273), .rst(rst), .counter({n1271, n1270, 
        n1269, n1268, n1267, n1266, n1265, n1264, n1263, n1262, n1261, n1260, 
        n1259, n1258, n1257, n1256, n1255, n1254, n1253, n1252, n1251, n1250, 
        n1249, n1248, n1247, n1246, n1245, n1244, n1243, n1242, n1241, n1240}), 
        .counter_changed(ctr_counter_changed), .icoc_select_i(
        ch_icoc_select_i[0]), .icoc_select_i_wen(ch_icoc_select_i_wen), 
        .icoc_action_i(ch_icoc_action_i[1:0]), .icoc_action_i_wen(
        ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[255:224]), .i_cc_reg_wen(
        ch_i_cc_reg_wen[0]), .irq_enable_i(ch_irq_enable_i[0]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[0]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[0]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[0]), .icoc_action_o(
        ch_icoc_action_o[1:0]), .cc_reg_o(ch_cc_reg_o[255:224]), 
        .irq_enable_o(ch_irq_enable_o[0]), .irq_status_o(ch_irq_status_o[0]), 
        .pin_i(pins_i[0]), .pin_o(pins_o[0]) );
  scct_channel_6 channel1 ( .clk(n1273), .rst(rst), .counter({n1271, n1270, 
        n1269, n1268, n1267, n1266, n1265, n1264, n1263, n1262, n1261, n1260, 
        n1259, n1258, n1257, n1256, n1255, n1254, n1253, n1252, n1251, n1250, 
        n1249, n1248, n1247, n1246, n1245, n1244, n1243, n1242, n1241, n1240}), 
        .counter_changed(ctr_counter_changed), .icoc_select_i(
        ch_icoc_select_i[1]), .icoc_select_i_wen(ch_icoc_select_i_wen), 
        .icoc_action_i(ch_icoc_action_i[3:2]), .icoc_action_i_wen(
        ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[223:192]), .i_cc_reg_wen(
        ch_i_cc_reg_wen[1]), .irq_enable_i(ch_irq_enable_i[1]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[1]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[1]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[1]), .icoc_action_o(
        ch_icoc_action_o[3:2]), .cc_reg_o(ch_cc_reg_o[223:192]), 
        .irq_enable_o(ch_irq_enable_o[1]), .irq_status_o(ch_irq_status_o[1]), 
        .pin_i(pins_i[1]), .pin_o(pins_o[1]) );
  scct_channel_5 channel2 ( .clk(n1274), .rst(rst), .counter(counter), 
        .counter_changed(ctr_counter_changed), .icoc_select_i(
        ch_icoc_select_i[2]), .icoc_select_i_wen(ch_icoc_select_i_wen), 
        .icoc_action_i(ch_icoc_action_i[5:4]), .icoc_action_i_wen(
        ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[191:160]), .i_cc_reg_wen(
        ch_i_cc_reg_wen[2]), .irq_enable_i(ch_irq_enable_i[2]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[2]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[2]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[2]), .icoc_action_o(
        ch_icoc_action_o[5:4]), .cc_reg_o(ch_cc_reg_o[191:160]), 
        .irq_enable_o(ch_irq_enable_o[2]), .irq_status_o(ch_irq_status_o[2]), 
        .pin_i(pins_i[2]), .pin_o(pins_o[2]) );
  scct_channel_4 channel3 ( .clk(n1273), .rst(rst), .counter({counter[31:21], 
        n1260, n1259, counter[18:17], n1256, n1255, counter[14:13], n1252, 
        n1251, counter[10:9], n1248, n1247, counter[6:5], n1244, n1243, 
        counter[2], n1241, counter[0]}), .counter_changed(ctr_counter_changed), 
        .icoc_select_i(ch_icoc_select_i[3]), .icoc_select_i_wen(
        ch_icoc_select_i_wen), .icoc_action_i(ch_icoc_action_i[7:6]), 
        .icoc_action_i_wen(ch_icoc_action_i_wen), .i_cc_reg(
        ch_i_cc_reg[159:128]), .i_cc_reg_wen(ch_i_cc_reg_wen[3]), 
        .irq_enable_i(ch_irq_enable_i[3]), .irq_enable_i_wen(
        ch_irq_enable_i_wen), .irq_status_i(ch_irq_status_i[3]), 
        .irq_status_i_wen(ch_irq_status_i_wen), .force_oc_i(ch_force_oc_i[3]), 
        .force_oc_i_wen(ch_force_oc_i_wen), .icoc_select_o(ch_icoc_select_o[3]), .icoc_action_o(ch_icoc_action_o[7:6]), .cc_reg_o(ch_cc_reg_o[159:128]), 
        .irq_enable_o(ch_irq_enable_o[3]), .irq_status_o(ch_irq_status_o[3]), 
        .pin_i(pins_i[3]), .pin_o(pins_o[3]) );
  scct_channel_3 channel4 ( .clk(n1273), .rst(rst), .counter({n1271, n1270, 
        n1269, n1268, n1267, n1266, n1265, n1264, n1263, n1262, n1261, 
        counter[20:19], n1258, n1257, counter[16:15], n1254, n1253, 
        counter[12:11], n1250, n1249, counter[8:7], n1246, n1245, counter[4:3], 
        n1242, counter[1], n1240}), .counter_changed(ctr_counter_changed), 
        .icoc_select_i(ch_icoc_select_i[4]), .icoc_select_i_wen(
        ch_icoc_select_i_wen), .icoc_action_i(ch_icoc_action_i[9:8]), 
        .icoc_action_i_wen(ch_icoc_action_i_wen), .i_cc_reg(
        ch_i_cc_reg[127:96]), .i_cc_reg_wen(ch_i_cc_reg_wen[4]), 
        .irq_enable_i(ch_irq_enable_i[4]), .irq_enable_i_wen(
        ch_irq_enable_i_wen), .irq_status_i(ch_irq_status_i[4]), 
        .irq_status_i_wen(ch_irq_status_i_wen), .force_oc_i(ch_force_oc_i[4]), 
        .force_oc_i_wen(ch_force_oc_i_wen), .icoc_select_o(ch_icoc_select_o[4]), .icoc_action_o(ch_icoc_action_o[9:8]), .cc_reg_o(ch_cc_reg_o[127:96]), 
        .irq_enable_o(ch_irq_enable_o[4]), .irq_status_o(ch_irq_status_o[4]), 
        .pin_i(pins_i[4]), .pin_o(pins_o[4]) );
  scct_channel_2 channel5 ( .clk(n1273), .rst(rst), .counter({counter[31:21], 
        n1260, n1259, counter[18:17], n1256, n1255, counter[14:13], n1252, 
        n1251, counter[10:9], n1248, n1247, counter[6:5], n1244, n1243, 
        counter[2], n1241, counter[0]}), .counter_changed(ctr_counter_changed), 
        .icoc_select_i(ch_icoc_select_i[5]), .icoc_select_i_wen(
        ch_icoc_select_i_wen), .icoc_action_i(ch_icoc_action_i[11:10]), 
        .icoc_action_i_wen(ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[95:64]), .i_cc_reg_wen(ch_i_cc_reg_wen[5]), .irq_enable_i(ch_irq_enable_i[5]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[5]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[5]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[5]), .icoc_action_o(
        ch_icoc_action_o[11:10]), .cc_reg_o(ch_cc_reg_o[95:64]), 
        .irq_enable_o(ch_irq_enable_o[5]), .irq_status_o(ch_irq_status_o[5]), 
        .pin_i(pins_i[5]), .pin_o(pins_o[5]) );
  scct_channel_1 channel6 ( .clk(n1272), .rst(rst), .counter({n1271, n1270, 
        n1269, n1268, n1267, n1266, n1265, n1264, n1263, n1262, n1261, 
        counter[20:19], n1258, n1257, counter[16:15], n1254, n1253, 
        counter[12:11], n1250, n1249, counter[8:7], n1246, n1245, counter[4:3], 
        n1242, counter[1], n1240}), .counter_changed(ctr_counter_changed), 
        .icoc_select_i(ch_icoc_select_i[6]), .icoc_select_i_wen(
        ch_icoc_select_i_wen), .icoc_action_i(ch_icoc_action_i[13:12]), 
        .icoc_action_i_wen(ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[63:32]), .i_cc_reg_wen(ch_i_cc_reg_wen[6]), .irq_enable_i(ch_irq_enable_i[6]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[6]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[6]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[6]), .icoc_action_o(
        ch_icoc_action_o[13:12]), .cc_reg_o(ch_cc_reg_o[63:32]), 
        .irq_enable_o(ch_irq_enable_o[6]), .irq_status_o(ch_irq_status_o[6]), 
        .pin_i(pins_i[6]), .pin_o(pins_o[6]) );
  scct_channel_0 channel7 ( .clk(n1272), .rst(rst), .counter({counter[31:21], 
        n1260, n1259, counter[18:17], n1256, n1255, counter[14:13], n1252, 
        n1251, counter[10:9], n1248, n1247, counter[6:5], n1244, n1243, 
        counter[2], n1241, counter[0]}), .counter_changed(ctr_counter_changed), 
        .icoc_select_i(ch_icoc_select_i[7]), .icoc_select_i_wen(
        ch_icoc_select_i_wen), .icoc_action_i(ch_icoc_action_i[15:14]), 
        .icoc_action_i_wen(ch_icoc_action_i_wen), .i_cc_reg(ch_i_cc_reg[31:0]), 
        .i_cc_reg_wen(ch_i_cc_reg_wen[7]), .irq_enable_i(ch_irq_enable_i[7]), 
        .irq_enable_i_wen(ch_irq_enable_i_wen), .irq_status_i(
        ch_irq_status_i[7]), .irq_status_i_wen(ch_irq_status_i_wen), 
        .force_oc_i(ch_force_oc_i[7]), .force_oc_i_wen(ch_force_oc_i_wen), 
        .icoc_select_o(ch_icoc_select_o[7]), .icoc_action_o(
        ch_icoc_action_o[15:14]), .cc_reg_o(ch_cc_reg_o[31:0]), .irq_enable_o(
        ch_irq_enable_o[7]), .irq_status_o(ch_irq_status_o[7]), .pin_i(
        pins_i[7]), .pin_o(pins_o[7]) );
  DFCNQD1BWP12T30P140 ctr_prescaler_i_wen_reg ( .D(n523), .CP(n1233), .CDN(
        n404), .Q(ctr_prescaler_i_wen) );
  DFCNQD1BWP12T30P140 readdata_reg_26_ ( .D(n460), .CP(n1291), .CDN(n1239), 
        .Q(readdata[26]) );
  DFCNQD1BWP12T30P140 ctr_irq_status_i_wen_reg ( .D(n527), .CP(n1291), .CDN(
        n404), .Q(ctr_irq_status_i_wen) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_7_ ( .D(n484), .CP(n1291), .CDN(n404), .Q(ch_i_cc_reg_wen[7]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_6_ ( .D(n485), .CP(n1291), .CDN(n404), .Q(ch_i_cc_reg_wen[6]) );
  DFCNQD1BWP12T30P140 ctr_irq_enable_i_wen_reg ( .D(n525), .CP(n1291), .CDN(
        n1239), .Q(ctr_irq_enable_i_wen) );
  DFCNQD1BWP12T30P140 readdata_reg_16_ ( .D(n470), .CP(n1291), .CDN(n1238), 
        .Q(readdata[16]) );
  DFCNQD1BWP12T30P140 readdata_reg_17_ ( .D(n469), .CP(n1232), .CDN(n1238), 
        .Q(readdata[17]) );
  DFCNQD1BWP12T30P140 readdata_reg_18_ ( .D(n468), .CP(n1233), .CDN(n1238), 
        .Q(readdata[18]) );
  DFCNQD1BWP12T30P140 readdata_reg_19_ ( .D(n467), .CP(n1291), .CDN(n1238), 
        .Q(readdata[19]) );
  DFCNQD1BWP12T30P140 readdata_reg_20_ ( .D(n466), .CP(n1232), .CDN(n1238), 
        .Q(readdata[20]) );
  DFCNQD1BWP12T30P140 readdata_reg_21_ ( .D(n465), .CP(n1233), .CDN(n1238), 
        .Q(readdata[21]) );
  DFCNQD1BWP12T30P140 readdata_reg_22_ ( .D(n464), .CP(n1291), .CDN(n1238), 
        .Q(readdata[22]) );
  DFCNQD1BWP12T30P140 readdata_reg_23_ ( .D(n463), .CP(n1232), .CDN(n1238), 
        .Q(readdata[23]) );
  DFCNQD1BWP12T30P140 readdata_reg_24_ ( .D(n462), .CP(n1233), .CDN(n1238), 
        .Q(readdata[24]) );
  DFCNQD1BWP12T30P140 readdata_reg_25_ ( .D(n461), .CP(n1291), .CDN(n1239), 
        .Q(readdata[25]) );
  DFCNQD1BWP12T30P140 readdata_reg_27_ ( .D(n459), .CP(n1232), .CDN(n1239), 
        .Q(readdata[27]) );
  DFCNQD1BWP12T30P140 readdata_reg_28_ ( .D(n458), .CP(n1233), .CDN(n1239), 
        .Q(readdata[28]) );
  DFCNQD1BWP12T30P140 readdata_reg_29_ ( .D(n457), .CP(n1291), .CDN(n1239), 
        .Q(readdata[29]) );
  DFCNQD1BWP12T30P140 readdata_reg_30_ ( .D(n456), .CP(n1232), .CDN(n1239), 
        .Q(readdata[30]) );
  DFCNQD1BWP12T30P140 readdata_reg_31_ ( .D(n455), .CP(n1233), .CDN(n1239), 
        .Q(readdata[31]) );
  DFCNQD1BWP12T30P140 readdata_reg_1_ ( .D(n482), .CP(n1291), .CDN(n1239), .Q(
        readdata[1]) );
  DFCNQD1BWP12T30P140 readdata_reg_0_ ( .D(n483), .CP(n1233), .CDN(n1239), .Q(
        readdata[0]) );
  DFCNQD1BWP12T30P140 readdata_reg_8_ ( .D(n476), .CP(n1290), .CDN(n1239), .Q(
        readdata[8]) );
  DFCNQD1BWP12T30P140 readdata_reg_9_ ( .D(n475), .CP(n1290), .CDN(n404), .Q(
        readdata[9]) );
  DFCNQD1BWP12T30P140 readdata_reg_10_ ( .D(n474), .CP(n1290), .CDN(n1239), 
        .Q(readdata[10]) );
  DFCNQD1BWP12T30P140 readdata_reg_11_ ( .D(n473), .CP(n1290), .CDN(n404), .Q(
        readdata[11]) );
  DFCNQD1BWP12T30P140 readdata_reg_12_ ( .D(n472), .CP(n1290), .CDN(n1238), 
        .Q(readdata[12]) );
  DFCNQD1BWP12T30P140 readdata_reg_13_ ( .D(n471), .CP(n1290), .CDN(n1238), 
        .Q(readdata[13]) );
  DFCNQD1BWP12T30P140 readdata_reg_14_ ( .D(n454), .CP(n1290), .CDN(n1238), 
        .Q(readdata[14]) );
  DFCNQD1BWP12T30P140 readdata_reg_15_ ( .D(n453), .CP(n1290), .CDN(n1238), 
        .Q(readdata[15]) );
  DFCNQD1BWP12T30P140 readdata_reg_2_ ( .D(n481), .CP(n1290), .CDN(n1238), .Q(
        readdata[2]) );
  DFCNQD1BWP12T30P140 readdata_reg_3_ ( .D(n480), .CP(n1290), .CDN(n1239), .Q(
        readdata[3]) );
  DFCNQD1BWP12T30P140 readdata_reg_4_ ( .D(n479), .CP(n1290), .CDN(n1238), .Q(
        readdata[4]) );
  DFCNQD1BWP12T30P140 readdata_reg_5_ ( .D(n478), .CP(n1290), .CDN(n1239), .Q(
        readdata[5]) );
  DFCNQD1BWP12T30P140 readdata_reg_6_ ( .D(n477), .CP(n1290), .CDN(n1238), .Q(
        readdata[6]) );
  DFCNQD1BWP12T30P140 readdata_reg_7_ ( .D(n452), .CP(n1290), .CDN(n404), .Q(
        readdata[7]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_5_ ( .D(n486), .CP(n1290), .CDN(n404), .Q(ch_i_cc_reg_wen[5]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_4_ ( .D(n487), .CP(n1290), .CDN(n404), .Q(ch_i_cc_reg_wen[4]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_3_ ( .D(n488), .CP(n1290), .CDN(n404), .Q(ch_i_cc_reg_wen[3]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_2_ ( .D(n489), .CP(n1290), .CDN(
        n1239), .Q(ch_i_cc_reg_wen[2]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_1_ ( .D(n490), .CP(n1290), .CDN(
        n1238), .Q(ch_i_cc_reg_wen[1]) );
  DFCNQD1BWP12T30P140 ch_i_cc_reg_wen_reg_0_ ( .D(n837), .CP(n1290), .CDN(
        n1239), .Q(ch_i_cc_reg_wen[0]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_0_ ( .D(n579), .CP(n1274), .Q(
        ch_force_oc_i[0]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__15_ ( .D(n661), .CP(n1274), .Q(
        ch_i_cc_reg[175]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__14_ ( .D(n662), .CP(n1274), .Q(
        ch_i_cc_reg[174]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__13_ ( .D(n663), .CP(n1274), .Q(
        ch_i_cc_reg[173]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__12_ ( .D(n664), .CP(n1274), .Q(
        ch_i_cc_reg[172]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__11_ ( .D(n665), .CP(n1274), .Q(
        ch_i_cc_reg[171]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__10_ ( .D(n666), .CP(n1274), .Q(
        ch_i_cc_reg[170]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__9_ ( .D(n667), .CP(n1274), .Q(
        ch_i_cc_reg[169]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__8_ ( .D(n668), .CP(n1274), .Q(
        ch_i_cc_reg[168]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__7_ ( .D(n669), .CP(n1274), .Q(
        ch_i_cc_reg[167]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__6_ ( .D(n670), .CP(n1274), .Q(
        ch_i_cc_reg[166]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__5_ ( .D(n671), .CP(n1274), .Q(
        ch_i_cc_reg[165]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__4_ ( .D(n672), .CP(n1274), .Q(
        ch_i_cc_reg[164]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__3_ ( .D(n673), .CP(n1274), .Q(
        ch_i_cc_reg[163]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__2_ ( .D(n674), .CP(n1274), .Q(
        ch_i_cc_reg[162]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__14_ ( .D(n758), .CP(n1291), .Q(
        ch_i_cc_reg[78]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_7_ ( .D(n563), .CP(n1281), .Q(
        ch_irq_status_i[7]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_6_ ( .D(n564), .CP(n1281), .Q(
        ch_irq_status_i[6]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_5_ ( .D(n565), .CP(n1281), .Q(
        ch_irq_status_i[5]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_4_ ( .D(n566), .CP(n1281), .Q(
        ch_irq_status_i[4]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_3_ ( .D(n567), .CP(n1281), .Q(
        ch_irq_status_i[3]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_2_ ( .D(n568), .CP(n1281), .Q(
        ch_irq_status_i[2]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_1_ ( .D(n569), .CP(n1281), .Q(
        ch_irq_status_i[1]) );
  DFQD2BWP12T30P140 ch_irq_status_i_reg_0_ ( .D(n570), .CP(n1281), .Q(
        ch_irq_status_i[0]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_7_ ( .D(n572), .CP(n1233), .Q(
        ch_force_oc_i[7]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_6_ ( .D(n573), .CP(n1232), .Q(
        ch_force_oc_i[6]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_5_ ( .D(n574), .CP(n1291), .Q(
        ch_force_oc_i[5]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_4_ ( .D(n575), .CP(n1233), .Q(
        ch_force_oc_i[4]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_3_ ( .D(n576), .CP(n1232), .Q(
        ch_force_oc_i[3]) );
  DFQD2BWP12T30P140 ch_force_oc_i_reg_1_ ( .D(n578), .CP(n1288), .Q(
        ch_force_oc_i[1]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__31_ ( .D(n596), .CP(n1278), .Q(
        ch_i_cc_reg[255]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__30_ ( .D(n597), .CP(n1278), .Q(
        ch_i_cc_reg[254]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__29_ ( .D(n598), .CP(n1278), .Q(
        ch_i_cc_reg[253]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__28_ ( .D(n599), .CP(n1278), .Q(
        ch_i_cc_reg[252]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__27_ ( .D(n600), .CP(n1278), .Q(
        ch_i_cc_reg[251]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__26_ ( .D(n601), .CP(n1278), .Q(
        ch_i_cc_reg[250]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__25_ ( .D(n602), .CP(n1278), .Q(
        ch_i_cc_reg[249]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__24_ ( .D(n603), .CP(n1278), .Q(
        ch_i_cc_reg[248]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__23_ ( .D(n604), .CP(n1278), .Q(
        ch_i_cc_reg[247]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__22_ ( .D(n605), .CP(n1278), .Q(
        ch_i_cc_reg[246]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__21_ ( .D(n606), .CP(n1278), .Q(
        ch_i_cc_reg[245]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__20_ ( .D(n607), .CP(n1278), .Q(
        ch_i_cc_reg[244]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__19_ ( .D(n608), .CP(n1278), .Q(
        ch_i_cc_reg[243]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__17_ ( .D(n610), .CP(n1278), .Q(
        ch_i_cc_reg[241]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__16_ ( .D(n611), .CP(n1278), .Q(
        ch_i_cc_reg[240]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__15_ ( .D(n612), .CP(n1278), .Q(
        ch_i_cc_reg[239]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__14_ ( .D(n581), .CP(n1278), .Q(
        ch_i_cc_reg[238]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__13_ ( .D(n582), .CP(n1278), .Q(
        ch_i_cc_reg[237]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__12_ ( .D(n583), .CP(n1277), .Q(
        ch_i_cc_reg[236]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__11_ ( .D(n584), .CP(n1277), .Q(
        ch_i_cc_reg[235]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__10_ ( .D(n585), .CP(n1277), .Q(
        ch_i_cc_reg[234]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__9_ ( .D(n586), .CP(n1277), .Q(
        ch_i_cc_reg[233]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__8_ ( .D(n587), .CP(n1277), .Q(
        ch_i_cc_reg[232]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__7_ ( .D(n588), .CP(n1277), .Q(
        ch_i_cc_reg[231]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__6_ ( .D(n589), .CP(n1277), .Q(
        ch_i_cc_reg[230]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__5_ ( .D(n590), .CP(n1277), .Q(
        ch_i_cc_reg[229]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__4_ ( .D(n591), .CP(n1277), .Q(
        ch_i_cc_reg[228]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__2_ ( .D(n593), .CP(n1277), .Q(
        ch_i_cc_reg[226]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__1_ ( .D(n594), .CP(n1277), .Q(
        ch_i_cc_reg[225]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_0__0_ ( .D(n595), .CP(n1277), .Q(
        ch_i_cc_reg[224]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__31_ ( .D(n613), .CP(n1277), .Q(
        ch_i_cc_reg[223]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__30_ ( .D(n614), .CP(n1277), .Q(
        ch_i_cc_reg[222]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__29_ ( .D(n615), .CP(n1277), .Q(
        ch_i_cc_reg[221]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__28_ ( .D(n616), .CP(n1277), .Q(
        ch_i_cc_reg[220]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__27_ ( .D(n617), .CP(n1277), .Q(
        ch_i_cc_reg[219]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__26_ ( .D(n618), .CP(n1277), .Q(
        ch_i_cc_reg[218]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__25_ ( .D(n619), .CP(n1277), .Q(
        ch_i_cc_reg[217]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__24_ ( .D(n620), .CP(n1276), .Q(
        ch_i_cc_reg[216]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__23_ ( .D(n621), .CP(n1276), .Q(
        ch_i_cc_reg[215]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__22_ ( .D(n622), .CP(n1276), .Q(
        ch_i_cc_reg[214]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__21_ ( .D(n623), .CP(n1276), .Q(
        ch_i_cc_reg[213]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__19_ ( .D(n625), .CP(n1276), .Q(
        ch_i_cc_reg[211]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__18_ ( .D(n626), .CP(n1276), .Q(
        ch_i_cc_reg[210]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__17_ ( .D(n627), .CP(n1276), .Q(
        ch_i_cc_reg[209]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__16_ ( .D(n628), .CP(n1276), .Q(
        ch_i_cc_reg[208]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__15_ ( .D(n629), .CP(n1276), .Q(
        ch_i_cc_reg[207]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__14_ ( .D(n630), .CP(n1276), .Q(
        ch_i_cc_reg[206]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__13_ ( .D(n631), .CP(n1276), .Q(
        ch_i_cc_reg[205]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__12_ ( .D(n632), .CP(n1276), .Q(
        ch_i_cc_reg[204]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__11_ ( .D(n633), .CP(n1276), .Q(
        ch_i_cc_reg[203]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__10_ ( .D(n634), .CP(n1276), .Q(
        ch_i_cc_reg[202]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__9_ ( .D(n635), .CP(n1276), .Q(
        ch_i_cc_reg[201]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__8_ ( .D(n636), .CP(n1276), .Q(
        ch_i_cc_reg[200]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__7_ ( .D(n637), .CP(n1276), .Q(
        ch_i_cc_reg[199]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__6_ ( .D(n638), .CP(n1276), .Q(
        ch_i_cc_reg[198]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__4_ ( .D(n640), .CP(n1275), .Q(
        ch_i_cc_reg[196]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__3_ ( .D(n641), .CP(n1275), .Q(
        ch_i_cc_reg[195]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__2_ ( .D(n642), .CP(n1275), .Q(
        ch_i_cc_reg[194]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__1_ ( .D(n643), .CP(n1275), .Q(
        ch_i_cc_reg[193]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_1__0_ ( .D(n644), .CP(n1275), .Q(
        ch_i_cc_reg[192]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__31_ ( .D(n645), .CP(n1275), .Q(
        ch_i_cc_reg[191]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__30_ ( .D(n646), .CP(n1275), .Q(
        ch_i_cc_reg[190]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__29_ ( .D(n647), .CP(n1275), .Q(
        ch_i_cc_reg[189]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__28_ ( .D(n648), .CP(n1275), .Q(
        ch_i_cc_reg[188]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__27_ ( .D(n649), .CP(n1275), .Q(
        ch_i_cc_reg[187]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__26_ ( .D(n650), .CP(n1275), .Q(
        ch_i_cc_reg[186]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__25_ ( .D(n651), .CP(n1275), .Q(
        ch_i_cc_reg[185]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__24_ ( .D(n652), .CP(n1275), .Q(
        ch_i_cc_reg[184]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__23_ ( .D(n653), .CP(n1275), .Q(
        ch_i_cc_reg[183]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__21_ ( .D(n655), .CP(n1275), .Q(
        ch_i_cc_reg[181]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__20_ ( .D(n656), .CP(n1275), .Q(
        ch_i_cc_reg[180]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__19_ ( .D(n657), .CP(n1275), .Q(
        ch_i_cc_reg[179]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__18_ ( .D(n658), .CP(n1275), .Q(
        ch_i_cc_reg[178]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__17_ ( .D(n659), .CP(n1275), .Q(
        ch_i_cc_reg[177]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__1_ ( .D(n675), .CP(n1278), .Q(
        ch_i_cc_reg[161]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_2__0_ ( .D(n676), .CP(n1285), .Q(
        ch_i_cc_reg[160]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__31_ ( .D(n689), .CP(n1285), .Q(
        ch_i_cc_reg[159]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__30_ ( .D(n690), .CP(n1285), .Q(
        ch_i_cc_reg[158]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__29_ ( .D(n691), .CP(n1286), .Q(
        ch_i_cc_reg[157]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__28_ ( .D(n692), .CP(n1286), .Q(
        ch_i_cc_reg[156]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__27_ ( .D(n693), .CP(n1286), .Q(
        ch_i_cc_reg[155]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__26_ ( .D(n694), .CP(n1286), .Q(
        ch_i_cc_reg[154]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__25_ ( .D(n695), .CP(n1286), .Q(
        ch_i_cc_reg[153]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__23_ ( .D(n697), .CP(n1286), .Q(
        ch_i_cc_reg[151]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__22_ ( .D(n698), .CP(n1286), .Q(
        ch_i_cc_reg[150]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__21_ ( .D(n699), .CP(n1286), .Q(
        ch_i_cc_reg[149]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__20_ ( .D(n700), .CP(n1286), .Q(
        ch_i_cc_reg[148]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__19_ ( .D(n701), .CP(n1286), .Q(
        ch_i_cc_reg[147]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__18_ ( .D(n702), .CP(n1286), .Q(
        ch_i_cc_reg[146]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__17_ ( .D(n703), .CP(n1286), .Q(
        ch_i_cc_reg[145]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__16_ ( .D(n704), .CP(n1286), .Q(
        ch_i_cc_reg[144]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__15_ ( .D(n705), .CP(n1286), .Q(
        ch_i_cc_reg[143]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__14_ ( .D(n706), .CP(n1286), .Q(
        ch_i_cc_reg[142]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__13_ ( .D(n707), .CP(n1286), .Q(
        ch_i_cc_reg[141]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__12_ ( .D(n708), .CP(n1286), .Q(
        ch_i_cc_reg[140]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__11_ ( .D(n677), .CP(n1286), .Q(
        ch_i_cc_reg[139]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__10_ ( .D(n678), .CP(n1286), .Q(
        ch_i_cc_reg[138]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__8_ ( .D(n680), .CP(n1287), .Q(
        ch_i_cc_reg[136]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__7_ ( .D(n681), .CP(n1287), .Q(
        ch_i_cc_reg[135]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__6_ ( .D(n682), .CP(n1287), .Q(
        ch_i_cc_reg[134]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__5_ ( .D(n683), .CP(n1287), .Q(
        ch_i_cc_reg[133]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__4_ ( .D(n684), .CP(n1287), .Q(
        ch_i_cc_reg[132]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__3_ ( .D(n685), .CP(n1287), .Q(
        ch_i_cc_reg[131]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__2_ ( .D(n686), .CP(n1287), .Q(
        ch_i_cc_reg[130]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__1_ ( .D(n687), .CP(n1287), .Q(
        ch_i_cc_reg[129]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_3__0_ ( .D(n688), .CP(n1287), .Q(
        ch_i_cc_reg[128]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__31_ ( .D(n709), .CP(n1287), .Q(
        ch_i_cc_reg[127]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__30_ ( .D(n710), .CP(n1287), .Q(
        ch_i_cc_reg[126]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__29_ ( .D(n711), .CP(n1287), .Q(
        ch_i_cc_reg[125]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__28_ ( .D(n712), .CP(n1287), .Q(
        ch_i_cc_reg[124]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__27_ ( .D(n713), .CP(n1287), .Q(
        ch_i_cc_reg[123]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__25_ ( .D(n715), .CP(n1287), .Q(
        ch_i_cc_reg[121]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__24_ ( .D(n716), .CP(n1287), .Q(
        ch_i_cc_reg[120]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__23_ ( .D(n717), .CP(n1287), .Q(
        ch_i_cc_reg[119]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__22_ ( .D(n718), .CP(n1287), .Q(
        ch_i_cc_reg[118]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__21_ ( .D(n719), .CP(n1288), .Q(
        ch_i_cc_reg[117]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__20_ ( .D(n720), .CP(n1288), .Q(
        ch_i_cc_reg[116]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__19_ ( .D(n721), .CP(n1288), .Q(
        ch_i_cc_reg[115]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__18_ ( .D(n722), .CP(n1288), .Q(
        ch_i_cc_reg[114]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__17_ ( .D(n723), .CP(n1288), .Q(
        ch_i_cc_reg[113]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__16_ ( .D(n724), .CP(n1288), .Q(
        ch_i_cc_reg[112]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__15_ ( .D(n725), .CP(n1288), .Q(
        ch_i_cc_reg[111]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__14_ ( .D(n726), .CP(n1288), .Q(
        ch_i_cc_reg[110]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__13_ ( .D(n727), .CP(n1288), .Q(
        ch_i_cc_reg[109]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__12_ ( .D(n728), .CP(n1288), .Q(
        ch_i_cc_reg[108]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__10_ ( .D(n730), .CP(n1288), .Q(
        ch_i_cc_reg[106]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__9_ ( .D(n731), .CP(n1288), .Q(
        ch_i_cc_reg[105]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__8_ ( .D(n732), .CP(n1288), .Q(
        ch_i_cc_reg[104]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__7_ ( .D(n733), .CP(n1288), .Q(
        ch_i_cc_reg[103]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__6_ ( .D(n734), .CP(n1288), .Q(
        ch_i_cc_reg[102]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__5_ ( .D(n735), .CP(n1288), .Q(
        ch_i_cc_reg[101]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__4_ ( .D(n736), .CP(n1288), .Q(
        ch_i_cc_reg[100]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__3_ ( .D(n737), .CP(n1289), .Q(
        ch_i_cc_reg[99]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__2_ ( .D(n738), .CP(n1289), .Q(
        ch_i_cc_reg[98]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__1_ ( .D(n739), .CP(n1289), .Q(
        ch_i_cc_reg[97]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_4__0_ ( .D(n740), .CP(n1289), .Q(
        ch_i_cc_reg[96]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__31_ ( .D(n741), .CP(n1289), .Q(
        ch_i_cc_reg[95]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__30_ ( .D(n742), .CP(n1289), .Q(
        ch_i_cc_reg[94]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__29_ ( .D(n743), .CP(n1289), .Q(
        ch_i_cc_reg[93]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__27_ ( .D(n745), .CP(n1289), .Q(
        ch_i_cc_reg[91]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__26_ ( .D(n746), .CP(n1289), .Q(
        ch_i_cc_reg[90]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__25_ ( .D(n747), .CP(n1289), .Q(
        ch_i_cc_reg[89]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__24_ ( .D(n748), .CP(n1289), .Q(
        ch_i_cc_reg[88]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__23_ ( .D(n749), .CP(n1289), .Q(
        ch_i_cc_reg[87]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__22_ ( .D(n750), .CP(n1289), .Q(
        ch_i_cc_reg[86]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__21_ ( .D(n751), .CP(n1289), .Q(
        ch_i_cc_reg[85]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__20_ ( .D(n752), .CP(n1289), .Q(
        ch_i_cc_reg[84]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__19_ ( .D(n753), .CP(n1289), .Q(
        ch_i_cc_reg[83]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__18_ ( .D(n754), .CP(n1289), .Q(
        ch_i_cc_reg[82]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__17_ ( .D(n755), .CP(n1289), .Q(
        ch_i_cc_reg[81]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__16_ ( .D(n756), .CP(n1289), .Q(
        ch_i_cc_reg[80]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__13_ ( .D(n759), .CP(n1288), .Q(
        ch_i_cc_reg[77]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__12_ ( .D(n760), .CP(n1285), .Q(
        ch_i_cc_reg[76]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__10_ ( .D(n762), .CP(n1285), .Q(
        ch_i_cc_reg[74]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__9_ ( .D(n763), .CP(n1285), .Q(
        ch_i_cc_reg[73]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__8_ ( .D(n764), .CP(n1285), .Q(
        ch_i_cc_reg[72]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__7_ ( .D(n765), .CP(n1285), .Q(
        ch_i_cc_reg[71]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__6_ ( .D(n766), .CP(n1285), .Q(
        ch_i_cc_reg[70]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__5_ ( .D(n767), .CP(n1285), .Q(
        ch_i_cc_reg[69]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__4_ ( .D(n768), .CP(n1285), .Q(
        ch_i_cc_reg[68]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__3_ ( .D(n769), .CP(n1285), .Q(
        ch_i_cc_reg[67]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__2_ ( .D(n770), .CP(n1285), .Q(
        ch_i_cc_reg[66]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__1_ ( .D(n771), .CP(n1285), .Q(
        ch_i_cc_reg[65]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_5__0_ ( .D(n772), .CP(n1285), .Q(
        ch_i_cc_reg[64]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__31_ ( .D(n782), .CP(n1285), .Q(
        ch_i_cc_reg[63]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__30_ ( .D(n783), .CP(n1285), .Q(
        ch_i_cc_reg[62]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__29_ ( .D(n784), .CP(n1285), .Q(
        ch_i_cc_reg[61]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__27_ ( .D(n786), .CP(n1284), .Q(
        ch_i_cc_reg[59]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__26_ ( .D(n787), .CP(n1284), .Q(
        ch_i_cc_reg[58]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__25_ ( .D(n788), .CP(n1284), .Q(
        ch_i_cc_reg[57]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__24_ ( .D(n789), .CP(n1284), .Q(
        ch_i_cc_reg[56]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__23_ ( .D(n790), .CP(n1284), .Q(
        ch_i_cc_reg[55]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__22_ ( .D(n791), .CP(n1284), .Q(
        ch_i_cc_reg[54]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__21_ ( .D(n792), .CP(n1284), .Q(
        ch_i_cc_reg[53]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__20_ ( .D(n793), .CP(n1284), .Q(
        ch_i_cc_reg[52]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__19_ ( .D(n794), .CP(n1284), .Q(
        ch_i_cc_reg[51]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__18_ ( .D(n795), .CP(n1284), .Q(
        ch_i_cc_reg[50]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__17_ ( .D(n796), .CP(n1284), .Q(
        ch_i_cc_reg[49]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__16_ ( .D(n797), .CP(n1284), .Q(
        ch_i_cc_reg[48]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__15_ ( .D(n798), .CP(n1284), .Q(
        ch_i_cc_reg[47]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__14_ ( .D(n799), .CP(n1284), .Q(
        ch_i_cc_reg[46]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__12_ ( .D(n801), .CP(n1284), .Q(
        ch_i_cc_reg[44]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__11_ ( .D(n802), .CP(n1284), .Q(
        ch_i_cc_reg[43]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__10_ ( .D(n803), .CP(n1284), .Q(
        ch_i_cc_reg[42]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__9_ ( .D(n804), .CP(n1284), .Q(
        ch_i_cc_reg[41]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__8_ ( .D(n773), .CP(n1284), .Q(
        ch_i_cc_reg[40]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__7_ ( .D(n774), .CP(n1283), .Q(
        ch_i_cc_reg[39]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__6_ ( .D(n775), .CP(n1283), .Q(
        ch_i_cc_reg[38]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__5_ ( .D(n776), .CP(n1283), .Q(
        ch_i_cc_reg[37]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__4_ ( .D(n777), .CP(n1283), .Q(
        ch_i_cc_reg[36]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__3_ ( .D(n778), .CP(n1283), .Q(
        ch_i_cc_reg[35]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__2_ ( .D(n779), .CP(n1283), .Q(
        ch_i_cc_reg[34]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__1_ ( .D(n780), .CP(n1283), .Q(
        ch_i_cc_reg[33]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_6__0_ ( .D(n781), .CP(n1283), .Q(
        ch_i_cc_reg[32]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__31_ ( .D(n835), .CP(n1283), .Q(
        ch_i_cc_reg[31]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__29_ ( .D(n833), .CP(n1283), .Q(
        ch_i_cc_reg[29]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__28_ ( .D(n832), .CP(n1283), .Q(
        ch_i_cc_reg[28]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__27_ ( .D(n831), .CP(n1283), .Q(
        ch_i_cc_reg[27]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__26_ ( .D(n830), .CP(n1283), .Q(
        ch_i_cc_reg[26]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__25_ ( .D(n829), .CP(n1283), .Q(
        ch_i_cc_reg[25]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__24_ ( .D(n828), .CP(n1283), .Q(
        ch_i_cc_reg[24]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__23_ ( .D(n827), .CP(n1283), .Q(
        ch_i_cc_reg[23]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__22_ ( .D(n826), .CP(n1283), .Q(
        ch_i_cc_reg[22]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__21_ ( .D(n825), .CP(n1283), .Q(
        ch_i_cc_reg[21]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__20_ ( .D(n824), .CP(n1283), .Q(
        ch_i_cc_reg[20]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__19_ ( .D(n823), .CP(n1282), .Q(
        ch_i_cc_reg[19]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__18_ ( .D(n822), .CP(n1282), .Q(
        ch_i_cc_reg[18]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__17_ ( .D(n821), .CP(n1282), .Q(
        ch_i_cc_reg[17]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__16_ ( .D(n820), .CP(n1282), .Q(
        ch_i_cc_reg[16]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__14_ ( .D(n818), .CP(n1282), .Q(
        ch_i_cc_reg[14]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__13_ ( .D(n817), .CP(n1282), .Q(
        ch_i_cc_reg[13]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__12_ ( .D(n816), .CP(n1282), .Q(
        ch_i_cc_reg[12]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__11_ ( .D(n815), .CP(n1282), .Q(
        ch_i_cc_reg[11]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__10_ ( .D(n814), .CP(n1282), .Q(
        ch_i_cc_reg[10]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__9_ ( .D(n813), .CP(n1282), .Q(
        ch_i_cc_reg[9]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__8_ ( .D(n812), .CP(n1282), .Q(
        ch_i_cc_reg[8]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__7_ ( .D(n811), .CP(n1282), .Q(
        ch_i_cc_reg[7]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__6_ ( .D(n810), .CP(n1282), .Q(
        ch_i_cc_reg[6]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__5_ ( .D(n809), .CP(n1282), .Q(
        ch_i_cc_reg[5]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__4_ ( .D(n808), .CP(n1282), .Q(
        ch_i_cc_reg[4]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__3_ ( .D(n836), .CP(n1282), .Q(
        ch_i_cc_reg[3]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__2_ ( .D(n807), .CP(n1282), .Q(
        ch_i_cc_reg[2]) );
  DFQD2BWP12T30P140 ch_i_cc_reg_reg_7__1_ ( .D(n806), .CP(n1282), .Q(
        ch_i_cc_reg[1]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_15_ ( .D(n537), .CP(n1233), .Q(
        ch_icoc_action_i[15]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_14_ ( .D(n538), .CP(n1232), .Q(
        ch_icoc_action_i[14]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_13_ ( .D(n539), .CP(n1233), .Q(
        ch_icoc_action_i[13]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_12_ ( .D(n540), .CP(n1232), .Q(
        ch_icoc_action_i[12]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_11_ ( .D(n541), .CP(n1233), .Q(
        ch_icoc_action_i[11]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_10_ ( .D(n542), .CP(n1232), .Q(
        ch_icoc_action_i[10]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_9_ ( .D(n543), .CP(n1233), .Q(
        ch_icoc_action_i[9]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_8_ ( .D(n544), .CP(n1232), .Q(
        ch_icoc_action_i[8]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_7_ ( .D(n545), .CP(n1233), .Q(
        ch_icoc_action_i[7]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_6_ ( .D(n546), .CP(n1232), .Q(
        ch_icoc_action_i[6]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_5_ ( .D(n547), .CP(n1233), .Q(
        ch_icoc_action_i[5]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_4_ ( .D(n548), .CP(n1232), .Q(
        ch_icoc_action_i[4]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_3_ ( .D(n549), .CP(n1233), .Q(
        ch_icoc_action_i[3]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_2_ ( .D(n550), .CP(n1281), .Q(
        ch_icoc_action_i[2]) );
  DFQD2BWP12T30P140 ch_icoc_action_i_reg_0_ ( .D(n552), .CP(n1281), .Q(
        ch_icoc_action_i[0]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_7_ ( .D(n554), .CP(n1281), .Q(
        ch_irq_enable_i[7]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_6_ ( .D(n555), .CP(n1280), .Q(
        ch_irq_enable_i[6]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_5_ ( .D(n556), .CP(n1280), .Q(
        ch_irq_enable_i[5]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_4_ ( .D(n557), .CP(n1280), .Q(
        ch_irq_enable_i[4]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_3_ ( .D(n558), .CP(n1280), .Q(
        ch_irq_enable_i[3]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_2_ ( .D(n559), .CP(n1280), .Q(
        ch_irq_enable_i[2]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_1_ ( .D(n560), .CP(n1280), .Q(
        ch_irq_enable_i[1]) );
  DFQD2BWP12T30P140 ch_irq_enable_i_reg_0_ ( .D(n561), .CP(n1280), .Q(
        ch_irq_enable_i[0]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_31_ ( .D(n521), .CP(n1280), .Q(
        ctr_prescaler_i[31]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_30_ ( .D(n520), .CP(n1280), .Q(
        ctr_prescaler_i[30]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_29_ ( .D(n519), .CP(n1280), .Q(
        ctr_prescaler_i[29]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_28_ ( .D(n518), .CP(n1280), .Q(
        ctr_prescaler_i[28]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_27_ ( .D(n517), .CP(n1280), .Q(
        ctr_prescaler_i[27]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_25_ ( .D(n515), .CP(n1280), .Q(
        ctr_prescaler_i[25]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_24_ ( .D(n514), .CP(n1280), .Q(
        ctr_prescaler_i[24]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_23_ ( .D(n513), .CP(n1232), .Q(
        ctr_prescaler_i[23]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_22_ ( .D(n512), .CP(n1280), .Q(
        ctr_prescaler_i[22]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_21_ ( .D(n511), .CP(n1280), .Q(
        ctr_prescaler_i[21]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_20_ ( .D(n510), .CP(n1280), .Q(
        ctr_prescaler_i[20]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_19_ ( .D(n509), .CP(n1279), .Q(
        ctr_prescaler_i[19]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_18_ ( .D(n508), .CP(n1279), .Q(
        ctr_prescaler_i[18]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_17_ ( .D(n507), .CP(n1279), .Q(
        ctr_prescaler_i[17]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_16_ ( .D(n506), .CP(n1279), .Q(
        ctr_prescaler_i[16]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_15_ ( .D(n505), .CP(n1279), .Q(
        ctr_prescaler_i[15]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_14_ ( .D(n504), .CP(n1279), .Q(
        ctr_prescaler_i[14]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_13_ ( .D(n503), .CP(n1279), .Q(
        ctr_prescaler_i[13]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_12_ ( .D(n502), .CP(n1279), .Q(
        ctr_prescaler_i[12]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_10_ ( .D(n500), .CP(n1279), .Q(
        ctr_prescaler_i[10]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_9_ ( .D(n499), .CP(n1279), .Q(
        ctr_prescaler_i[9]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_8_ ( .D(n498), .CP(n1279), .Q(
        ctr_prescaler_i[8]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_7_ ( .D(n497), .CP(n1279), .Q(
        ctr_prescaler_i[7]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_6_ ( .D(n496), .CP(n1279), .Q(
        ctr_prescaler_i[6]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_5_ ( .D(n495), .CP(n1279), .Q(
        ctr_prescaler_i[5]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_4_ ( .D(n494), .CP(n1279), .Q(
        ctr_prescaler_i[4]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_3_ ( .D(n493), .CP(n1279), .Q(
        ctr_prescaler_i[3]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_2_ ( .D(n492), .CP(n1279), .Q(
        ctr_prescaler_i[2]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_1_ ( .D(n491), .CP(n1279), .Q(
        ctr_prescaler_i[1]) );
  DFQD2BWP12T30P140 ctr_prescaler_i_reg_0_ ( .D(n522), .CP(n1279), .Q(
        ctr_prescaler_i[0]) );
  DFQD2BWP12T30P140 ctr_irq_status_i_reg ( .D(n526), .CP(n1280), .Q(
        ctr_irq_status_i) );
  DFQD2BWP12T30P140 ctr_irq_enable_i_reg ( .D(n524), .CP(n1280), .Q(
        ctr_irq_enable_i) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_7_ ( .D(n528), .CP(n1281), .Q(
        ch_icoc_select_i[7]) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_5_ ( .D(n530), .CP(n1281), .Q(
        ch_icoc_select_i[5]) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_4_ ( .D(n531), .CP(n1281), .Q(
        ch_icoc_select_i[4]) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_3_ ( .D(n532), .CP(n1281), .Q(
        ch_icoc_select_i[3]) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_2_ ( .D(n533), .CP(n1281), .Q(
        ch_icoc_select_i[2]) );
  DFQD2BWP12T30P140 ch_icoc_select_i_reg_1_ ( .D(n534), .CP(n1281), .Q(
        ch_icoc_select_i[1]) );
  DFCNQD1BWP12T30P140 ch_irq_status_i_wen_reg ( .D(n571), .CP(n1291), .CDN(
        n404), .Q(ch_irq_status_i_wen) );
  DFCNQD1BWP12T30P140 ch_force_oc_i_wen_reg ( .D(n580), .CP(n1291), .CDN(n404), 
        .Q(ch_force_oc_i_wen) );
  DFCNQD1BWP12T30P140 ch_irq_enable_i_wen_reg ( .D(n562), .CP(n1291), .CDN(
        n1239), .Q(ch_irq_enable_i_wen) );
  DFCNQD1BWP12T30P140 ch_icoc_select_i_wen_reg ( .D(n536), .CP(n1291), .CDN(
        n404), .Q(ch_icoc_select_i_wen) );
  DFCNQD1BWP12T30P140 ch_icoc_action_i_wen_reg ( .D(n553), .CP(n1291), .CDN(
        n404), .Q(ch_icoc_action_i_wen) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_2__16_ ( .D(n660), .CP(n1274), .Q(
        ch_i_cc_reg[176]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_5__15_ ( .D(n757), .CP(n1232), .Q(
        ch_i_cc_reg[79]) );
  DFQD1BWP12T30P140 ch_force_oc_i_reg_2_ ( .D(n577), .CP(n1291), .Q(
        ch_force_oc_i[2]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_0__18_ ( .D(n609), .CP(n1278), .Q(
        ch_i_cc_reg[242]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_0__3_ ( .D(n592), .CP(n1277), .Q(
        ch_i_cc_reg[227]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_1__20_ ( .D(n624), .CP(n1276), .Q(
        ch_i_cc_reg[212]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_1__5_ ( .D(n639), .CP(n1276), .Q(
        ch_i_cc_reg[197]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_2__22_ ( .D(n654), .CP(n1275), .Q(
        ch_i_cc_reg[182]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_3__24_ ( .D(n696), .CP(n1286), .Q(
        ch_i_cc_reg[152]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_3__9_ ( .D(n679), .CP(n1287), .Q(
        ch_i_cc_reg[137]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_4__26_ ( .D(n714), .CP(n1287), .Q(
        ch_i_cc_reg[122]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_4__11_ ( .D(n729), .CP(n1288), .Q(
        ch_i_cc_reg[107]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_5__28_ ( .D(n744), .CP(n1289), .Q(
        ch_i_cc_reg[92]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_5__11_ ( .D(n761), .CP(n1285), .Q(
        ch_i_cc_reg[75]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_6__28_ ( .D(n785), .CP(n1285), .Q(
        ch_i_cc_reg[60]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_6__13_ ( .D(n800), .CP(n1284), .Q(
        ch_i_cc_reg[45]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_7__30_ ( .D(n834), .CP(n1283), .Q(
        ch_i_cc_reg[30]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_7__15_ ( .D(n819), .CP(n1282), .Q(
        ch_i_cc_reg[15]) );
  DFQD1BWP12T30P140 ch_i_cc_reg_reg_7__0_ ( .D(n805), .CP(n1282), .Q(
        ch_i_cc_reg[0]) );
  DFQD1BWP12T30P140 ch_icoc_action_i_reg_1_ ( .D(n551), .CP(n1281), .Q(
        ch_icoc_action_i[1]) );
  DFQD1BWP12T30P140 ctr_prescaler_i_reg_26_ ( .D(n516), .CP(n1280), .Q(
        ctr_prescaler_i[26]) );
  DFQD1BWP12T30P140 ctr_prescaler_i_reg_11_ ( .D(n501), .CP(n1279), .Q(
        ctr_prescaler_i[11]) );
  DFQD1BWP12T30P140 ch_icoc_select_i_reg_6_ ( .D(n529), .CP(n1281), .Q(
        ch_icoc_select_i[6]) );
  DFQD1BWP12T30P140 ch_icoc_select_i_reg_0_ ( .D(n535), .CP(n1281), .Q(
        ch_icoc_select_i[0]) );
  CKBD0BWP12T30P140 U794 ( .I(clk), .Z(n1233) );
  ND2D0BWP12T30P140 U795 ( .A1(n971), .A2(n849), .ZN(n862) );
  NR2D0BWP12T30P140 U796 ( .A1(n1091), .A2(n862), .ZN(n854) );
  NR2D0BWP12T30P140 U797 ( .A1(n1021), .A2(n862), .ZN(n863) );
  ND3D0BWP12T30P140 U798 ( .A1(n838), .A2(n896), .A3(address[1]), .ZN(n1148)
         );
  INVD0BWP12T30P140 U799 ( .I(address[2]), .ZN(n838) );
  INVD0BWP12T30P140 U800 ( .I(address[1]), .ZN(n897) );
  ND3D0BWP12T30P140 U801 ( .A1(n838), .A2(n897), .A3(address[0]), .ZN(n1052)
         );
  NR2D0BWP12T30P140 U802 ( .A1(address[4]), .A2(address[3]), .ZN(n1102) );
  ND2D0BWP12T30P140 U803 ( .A1(n1102), .A2(write), .ZN(n1147) );
  MOAI22D0BWP12T30P140 U804 ( .A1(n1052), .A2(n1147), .B1(write), .B2(
        ctr_prescaler_i_wen), .ZN(n523) );
  INVD0BWP12T30P140 U805 ( .I(address[4]), .ZN(n847) );
  NR2D0BWP12T30P140 U806 ( .A1(address[3]), .A2(n847), .ZN(n971) );
  INVD0BWP12T30P140 U807 ( .I(write), .ZN(n1105) );
  NR2D0BWP12T30P140 U808 ( .A1(n1105), .A2(rst), .ZN(n849) );
  NR2D0BWP12T30P140 U809 ( .A1(n1052), .A2(n862), .ZN(n845) );
  CKBD0BWP12T30P140 U810 ( .I(n845), .Z(n846) );
  INVD0BWP12T30P140 U811 ( .I(writedata[14]), .ZN(n1037) );
  CKBD0BWP12T30P140 U812 ( .I(n845), .Z(n843) );
  MAOI22D0BWP12T30P140 U813 ( .A1(n846), .A2(n1037), .B1(ch_i_cc_reg[206]), 
        .B2(n843), .ZN(n630) );
  CKBD0BWP12T30P140 U814 ( .I(n845), .Z(n844) );
  INVD0BWP12T30P140 U815 ( .I(writedata[13]), .ZN(n1035) );
  MAOI22D0BWP12T30P140 U816 ( .A1(n844), .A2(n1035), .B1(ch_i_cc_reg[205]), 
        .B2(n846), .ZN(n631) );
  INVD0BWP12T30P140 U817 ( .I(writedata[12]), .ZN(n1022) );
  MAOI22D0BWP12T30P140 U818 ( .A1(n844), .A2(n1022), .B1(ch_i_cc_reg[204]), 
        .B2(n844), .ZN(n632) );
  INVD0BWP12T30P140 U819 ( .I(writedata[11]), .ZN(n1020) );
  MAOI22D0BWP12T30P140 U820 ( .A1(n844), .A2(n1020), .B1(ch_i_cc_reg[203]), 
        .B2(n845), .ZN(n633) );
  INVD0BWP12T30P140 U821 ( .I(writedata[10]), .ZN(n1013) );
  MAOI22D0BWP12T30P140 U822 ( .A1(n844), .A2(n1013), .B1(ch_i_cc_reg[202]), 
        .B2(n843), .ZN(n634) );
  INVD0BWP12T30P140 U823 ( .I(writedata[9]), .ZN(n1108) );
  MAOI22D0BWP12T30P140 U824 ( .A1(n844), .A2(n1108), .B1(ch_i_cc_reg[201]), 
        .B2(n846), .ZN(n635) );
  INVD0BWP12T30P140 U825 ( .I(writedata[8]), .ZN(n993) );
  MAOI22D0BWP12T30P140 U826 ( .A1(n844), .A2(n993), .B1(ch_i_cc_reg[200]), 
        .B2(n845), .ZN(n636) );
  INVD0BWP12T30P140 U827 ( .I(writedata[7]), .ZN(n1092) );
  MAOI22D0BWP12T30P140 U828 ( .A1(n844), .A2(n1092), .B1(ch_i_cc_reg[199]), 
        .B2(n843), .ZN(n637) );
  INVD0BWP12T30P140 U829 ( .I(writedata[6]), .ZN(n1230) );
  MAOI22D0BWP12T30P140 U830 ( .A1(n844), .A2(n1230), .B1(ch_i_cc_reg[198]), 
        .B2(n843), .ZN(n638) );
  INVD0BWP12T30P140 U831 ( .I(writedata[5]), .ZN(n1171) );
  MAOI22D0BWP12T30P140 U832 ( .A1(n844), .A2(n1171), .B1(ch_i_cc_reg[197]), 
        .B2(n843), .ZN(n639) );
  INVD0BWP12T30P140 U833 ( .I(writedata[4]), .ZN(n1227) );
  MAOI22D0BWP12T30P140 U834 ( .A1(n844), .A2(n1227), .B1(ch_i_cc_reg[196]), 
        .B2(n843), .ZN(n640) );
  INVD0BWP12T30P140 U835 ( .I(writedata[3]), .ZN(n1149) );
  MAOI22D0BWP12T30P140 U836 ( .A1(n844), .A2(n1149), .B1(ch_i_cc_reg[195]), 
        .B2(n843), .ZN(n641) );
  INVD0BWP12T30P140 U837 ( .I(writedata[2]), .ZN(n1225) );
  MAOI22D0BWP12T30P140 U838 ( .A1(n844), .A2(n1225), .B1(ch_i_cc_reg[194]), 
        .B2(n843), .ZN(n642) );
  INVD0BWP12T30P140 U839 ( .I(writedata[1]), .ZN(n1110) );
  MAOI22D0BWP12T30P140 U840 ( .A1(n844), .A2(n1110), .B1(ch_i_cc_reg[193]), 
        .B2(n843), .ZN(n643) );
  INVD0BWP12T30P140 U841 ( .I(writedata[0]), .ZN(n1101) );
  MAOI22D0BWP12T30P140 U842 ( .A1(n844), .A2(n1101), .B1(ch_i_cc_reg[192]), 
        .B2(n843), .ZN(n644) );
  INVD0BWP12T30P140 U843 ( .I(address[0]), .ZN(n896) );
  NR2D0BWP12T30P140 U844 ( .A1(n1148), .A2(n862), .ZN(n1053) );
  CKBD0BWP12T30P140 U845 ( .I(n1053), .Z(n1055) );
  INVD0BWP12T30P140 U846 ( .I(writedata[31]), .ZN(n865) );
  CKBD0BWP12T30P140 U847 ( .I(n1053), .Z(n1036) );
  MAOI22D0BWP12T30P140 U848 ( .A1(n1055), .A2(n865), .B1(ch_i_cc_reg[191]), 
        .B2(n1036), .ZN(n645) );
  INVD0BWP12T30P140 U849 ( .I(writedata[30]), .ZN(n866) );
  MAOI22D0BWP12T30P140 U850 ( .A1(n1053), .A2(n866), .B1(ch_i_cc_reg[190]), 
        .B2(n1036), .ZN(n646) );
  INVD0BWP12T30P140 U851 ( .I(writedata[29]), .ZN(n867) );
  MAOI22D0BWP12T30P140 U852 ( .A1(n1055), .A2(n867), .B1(ch_i_cc_reg[189]), 
        .B2(n1036), .ZN(n647) );
  CKBD0BWP12T30P140 U853 ( .I(n1053), .Z(n1044) );
  INVD0BWP12T30P140 U854 ( .I(writedata[28]), .ZN(n868) );
  MAOI22D0BWP12T30P140 U855 ( .A1(n1044), .A2(n868), .B1(ch_i_cc_reg[188]), 
        .B2(n1036), .ZN(n648) );
  INVD0BWP12T30P140 U856 ( .I(writedata[27]), .ZN(n869) );
  MAOI22D0BWP12T30P140 U857 ( .A1(n1036), .A2(n869), .B1(ch_i_cc_reg[187]), 
        .B2(n1053), .ZN(n649) );
  INVD0BWP12T30P140 U858 ( .I(writedata[26]), .ZN(n870) );
  MAOI22D0BWP12T30P140 U859 ( .A1(n1055), .A2(n870), .B1(ch_i_cc_reg[186]), 
        .B2(n1055), .ZN(n650) );
  INVD0BWP12T30P140 U860 ( .I(writedata[25]), .ZN(n871) );
  MAOI22D0BWP12T30P140 U861 ( .A1(n1044), .A2(n871), .B1(ch_i_cc_reg[185]), 
        .B2(n1036), .ZN(n651) );
  INVD0BWP12T30P140 U862 ( .I(writedata[24]), .ZN(n874) );
  MAOI22D0BWP12T30P140 U863 ( .A1(n1055), .A2(n874), .B1(ch_i_cc_reg[184]), 
        .B2(n1053), .ZN(n652) );
  INVD0BWP12T30P140 U864 ( .I(writedata[23]), .ZN(n875) );
  MAOI22D0BWP12T30P140 U865 ( .A1(n1055), .A2(n875), .B1(ch_i_cc_reg[183]), 
        .B2(n1053), .ZN(n653) );
  INVD0BWP12T30P140 U866 ( .I(writedata[15]), .ZN(n1045) );
  MAOI22D0BWP12T30P140 U867 ( .A1(n846), .A2(n1045), .B1(ch_i_cc_reg[207]), 
        .B2(n844), .ZN(n629) );
  INVD0BWP12T30P140 U868 ( .I(writedata[22]), .ZN(n876) );
  MAOI22D0BWP12T30P140 U869 ( .A1(n1055), .A2(n876), .B1(ch_i_cc_reg[182]), 
        .B2(n1053), .ZN(n654) );
  INVD0BWP12T30P140 U870 ( .I(writedata[21]), .ZN(n877) );
  MAOI22D0BWP12T30P140 U871 ( .A1(n1055), .A2(n877), .B1(ch_i_cc_reg[181]), 
        .B2(n1053), .ZN(n655) );
  INVD0BWP12T30P140 U872 ( .I(writedata[20]), .ZN(n878) );
  MAOI22D0BWP12T30P140 U873 ( .A1(n1055), .A2(n878), .B1(ch_i_cc_reg[180]), 
        .B2(n1053), .ZN(n656) );
  INVD0BWP12T30P140 U874 ( .I(writedata[19]), .ZN(n879) );
  MAOI22D0BWP12T30P140 U875 ( .A1(n1055), .A2(n879), .B1(ch_i_cc_reg[179]), 
        .B2(n1053), .ZN(n657) );
  INVD0BWP12T30P140 U876 ( .I(writedata[18]), .ZN(n880) );
  MAOI22D0BWP12T30P140 U877 ( .A1(n1055), .A2(n880), .B1(ch_i_cc_reg[178]), 
        .B2(n1053), .ZN(n658) );
  INVD0BWP12T30P140 U878 ( .I(writedata[17]), .ZN(n881) );
  MAOI22D0BWP12T30P140 U879 ( .A1(n1055), .A2(n881), .B1(ch_i_cc_reg[177]), 
        .B2(n1053), .ZN(n659) );
  MAOI22D0BWP12T30P140 U880 ( .A1(n1044), .A2(n1110), .B1(ch_i_cc_reg[161]), 
        .B2(n1036), .ZN(n675) );
  MAOI22D0BWP12T30P140 U881 ( .A1(n1044), .A2(n1101), .B1(ch_i_cc_reg[160]), 
        .B2(n1036), .ZN(n676) );
  NR3D0BWP12T30P140 U882 ( .A1(address[2]), .A2(n897), .A3(n896), .ZN(n1103)
         );
  INVD0BWP12T30P140 U883 ( .I(n1103), .ZN(n1021) );
  CKBD0BWP12T30P140 U884 ( .I(n863), .Z(n864) );
  MAOI22D0BWP12T30P140 U885 ( .A1(n864), .A2(n865), .B1(ch_i_cc_reg[159]), 
        .B2(n863), .ZN(n689) );
  MAOI22D0BWP12T30P140 U886 ( .A1(n864), .A2(n866), .B1(ch_i_cc_reg[158]), 
        .B2(n863), .ZN(n690) );
  MAOI22D0BWP12T30P140 U887 ( .A1(n864), .A2(n867), .B1(ch_i_cc_reg[157]), 
        .B2(n863), .ZN(n691) );
  MAOI22D0BWP12T30P140 U888 ( .A1(n864), .A2(n868), .B1(ch_i_cc_reg[156]), 
        .B2(n863), .ZN(n692) );
  CKBD0BWP12T30P140 U889 ( .I(n863), .Z(n873) );
  MAOI22D0BWP12T30P140 U890 ( .A1(n864), .A2(n869), .B1(ch_i_cc_reg[155]), 
        .B2(n873), .ZN(n693) );
  CKBD0BWP12T30P140 U891 ( .I(n863), .Z(n872) );
  MAOI22D0BWP12T30P140 U892 ( .A1(n864), .A2(n870), .B1(ch_i_cc_reg[154]), 
        .B2(n872), .ZN(n694) );
  MAOI22D0BWP12T30P140 U893 ( .A1(n873), .A2(n871), .B1(ch_i_cc_reg[153]), 
        .B2(n864), .ZN(n695) );
  MAOI22D0BWP12T30P140 U894 ( .A1(n873), .A2(n874), .B1(ch_i_cc_reg[152]), 
        .B2(n873), .ZN(n696) );
  MAOI22D0BWP12T30P140 U895 ( .A1(n873), .A2(n875), .B1(ch_i_cc_reg[151]), 
        .B2(n863), .ZN(n697) );
  MAOI22D0BWP12T30P140 U896 ( .A1(n873), .A2(n876), .B1(ch_i_cc_reg[150]), 
        .B2(n872), .ZN(n698) );
  MAOI22D0BWP12T30P140 U897 ( .A1(n873), .A2(n877), .B1(ch_i_cc_reg[149]), 
        .B2(n864), .ZN(n699) );
  MAOI22D0BWP12T30P140 U898 ( .A1(n873), .A2(n878), .B1(ch_i_cc_reg[148]), 
        .B2(n863), .ZN(n700) );
  MAOI22D0BWP12T30P140 U899 ( .A1(n873), .A2(n879), .B1(ch_i_cc_reg[147]), 
        .B2(n872), .ZN(n701) );
  MAOI22D0BWP12T30P140 U900 ( .A1(n873), .A2(n880), .B1(ch_i_cc_reg[146]), 
        .B2(n872), .ZN(n702) );
  MAOI22D0BWP12T30P140 U901 ( .A1(n873), .A2(n881), .B1(ch_i_cc_reg[145]), 
        .B2(n872), .ZN(n703) );
  NR2D0BWP12T30P140 U902 ( .A1(address[1]), .A2(address[0]), .ZN(n848) );
  ND2D0BWP12T30P140 U903 ( .A1(n848), .A2(n838), .ZN(n1229) );
  NR2D0BWP12T30P140 U904 ( .A1(n1229), .A2(n862), .ZN(n841) );
  CKBD0BWP12T30P140 U905 ( .I(n841), .Z(n842) );
  MAOI22D0BWP12T30P140 U906 ( .A1(n842), .A2(n865), .B1(ch_i_cc_reg[255]), 
        .B2(n841), .ZN(n596) );
  CKBD0BWP12T30P140 U907 ( .I(n841), .Z(n840) );
  MAOI22D0BWP12T30P140 U908 ( .A1(n842), .A2(n866), .B1(ch_i_cc_reg[254]), 
        .B2(n840), .ZN(n597) );
  CKBD0BWP12T30P140 U909 ( .I(n841), .Z(n839) );
  MAOI22D0BWP12T30P140 U910 ( .A1(n842), .A2(n867), .B1(ch_i_cc_reg[253]), 
        .B2(n839), .ZN(n598) );
  MAOI22D0BWP12T30P140 U911 ( .A1(n840), .A2(n868), .B1(ch_i_cc_reg[252]), 
        .B2(n842), .ZN(n599) );
  MAOI22D0BWP12T30P140 U912 ( .A1(n840), .A2(n869), .B1(ch_i_cc_reg[251]), 
        .B2(n840), .ZN(n600) );
  MAOI22D0BWP12T30P140 U913 ( .A1(n840), .A2(n870), .B1(ch_i_cc_reg[250]), 
        .B2(n841), .ZN(n601) );
  MAOI22D0BWP12T30P140 U914 ( .A1(n840), .A2(n871), .B1(ch_i_cc_reg[249]), 
        .B2(n839), .ZN(n602) );
  MAOI22D0BWP12T30P140 U915 ( .A1(n840), .A2(n874), .B1(ch_i_cc_reg[248]), 
        .B2(n842), .ZN(n603) );
  MAOI22D0BWP12T30P140 U916 ( .A1(n840), .A2(n875), .B1(ch_i_cc_reg[247]), 
        .B2(n841), .ZN(n604) );
  MAOI22D0BWP12T30P140 U917 ( .A1(n840), .A2(n876), .B1(ch_i_cc_reg[246]), 
        .B2(n839), .ZN(n605) );
  MAOI22D0BWP12T30P140 U918 ( .A1(n840), .A2(n877), .B1(ch_i_cc_reg[245]), 
        .B2(n839), .ZN(n606) );
  MAOI22D0BWP12T30P140 U919 ( .A1(n840), .A2(n878), .B1(ch_i_cc_reg[244]), 
        .B2(n839), .ZN(n607) );
  MAOI22D0BWP12T30P140 U920 ( .A1(n840), .A2(n879), .B1(ch_i_cc_reg[243]), 
        .B2(n839), .ZN(n608) );
  MAOI22D0BWP12T30P140 U921 ( .A1(n840), .A2(n880), .B1(ch_i_cc_reg[242]), 
        .B2(n839), .ZN(n609) );
  MAOI22D0BWP12T30P140 U922 ( .A1(n840), .A2(n881), .B1(ch_i_cc_reg[241]), 
        .B2(n839), .ZN(n610) );
  INVD0BWP12T30P140 U923 ( .I(writedata[16]), .ZN(n1054) );
  MAOI22D0BWP12T30P140 U924 ( .A1(n840), .A2(n1054), .B1(ch_i_cc_reg[240]), 
        .B2(n839), .ZN(n611) );
  MAOI22D0BWP12T30P140 U925 ( .A1(n840), .A2(n1045), .B1(ch_i_cc_reg[239]), 
        .B2(n839), .ZN(n612) );
  MAOI22D0BWP12T30P140 U926 ( .A1(n842), .A2(n1037), .B1(ch_i_cc_reg[238]), 
        .B2(n839), .ZN(n581) );
  MAOI22D0BWP12T30P140 U927 ( .A1(n841), .A2(n1035), .B1(ch_i_cc_reg[237]), 
        .B2(n839), .ZN(n582) );
  MAOI22D0BWP12T30P140 U928 ( .A1(n842), .A2(n1022), .B1(ch_i_cc_reg[236]), 
        .B2(n839), .ZN(n583) );
  MAOI22D0BWP12T30P140 U929 ( .A1(n840), .A2(n1020), .B1(ch_i_cc_reg[235]), 
        .B2(n839), .ZN(n584) );
  MAOI22D0BWP12T30P140 U930 ( .A1(n839), .A2(n1013), .B1(ch_i_cc_reg[234]), 
        .B2(n841), .ZN(n585) );
  MAOI22D0BWP12T30P140 U931 ( .A1(n842), .A2(n1108), .B1(ch_i_cc_reg[233]), 
        .B2(n842), .ZN(n586) );
  MAOI22D0BWP12T30P140 U932 ( .A1(n840), .A2(n993), .B1(ch_i_cc_reg[232]), 
        .B2(n839), .ZN(n587) );
  MAOI22D0BWP12T30P140 U933 ( .A1(n842), .A2(n1092), .B1(ch_i_cc_reg[231]), 
        .B2(n841), .ZN(n588) );
  MAOI22D0BWP12T30P140 U934 ( .A1(n842), .A2(n1230), .B1(ch_i_cc_reg[230]), 
        .B2(n841), .ZN(n589) );
  MAOI22D0BWP12T30P140 U935 ( .A1(n842), .A2(n1171), .B1(ch_i_cc_reg[229]), 
        .B2(n841), .ZN(n590) );
  MAOI22D0BWP12T30P140 U936 ( .A1(n842), .A2(n1227), .B1(ch_i_cc_reg[228]), 
        .B2(n841), .ZN(n591) );
  MAOI22D0BWP12T30P140 U937 ( .A1(n842), .A2(n1149), .B1(ch_i_cc_reg[227]), 
        .B2(n841), .ZN(n592) );
  MAOI22D0BWP12T30P140 U938 ( .A1(n842), .A2(n1225), .B1(ch_i_cc_reg[226]), 
        .B2(n841), .ZN(n593) );
  MAOI22D0BWP12T30P140 U939 ( .A1(n842), .A2(n1110), .B1(ch_i_cc_reg[225]), 
        .B2(n841), .ZN(n594) );
  MAOI22D0BWP12T30P140 U940 ( .A1(n842), .A2(n1101), .B1(ch_i_cc_reg[224]), 
        .B2(n841), .ZN(n595) );
  MAOI22D0BWP12T30P140 U941 ( .A1(n846), .A2(n865), .B1(ch_i_cc_reg[223]), 
        .B2(n843), .ZN(n613) );
  MAOI22D0BWP12T30P140 U942 ( .A1(n845), .A2(n866), .B1(ch_i_cc_reg[222]), 
        .B2(n843), .ZN(n614) );
  MAOI22D0BWP12T30P140 U943 ( .A1(n846), .A2(n867), .B1(ch_i_cc_reg[221]), 
        .B2(n843), .ZN(n615) );
  MAOI22D0BWP12T30P140 U944 ( .A1(n844), .A2(n868), .B1(ch_i_cc_reg[220]), 
        .B2(n843), .ZN(n616) );
  MAOI22D0BWP12T30P140 U945 ( .A1(n843), .A2(n869), .B1(ch_i_cc_reg[219]), 
        .B2(n845), .ZN(n617) );
  MAOI22D0BWP12T30P140 U946 ( .A1(n846), .A2(n870), .B1(ch_i_cc_reg[218]), 
        .B2(n846), .ZN(n618) );
  MAOI22D0BWP12T30P140 U947 ( .A1(n844), .A2(n871), .B1(ch_i_cc_reg[217]), 
        .B2(n843), .ZN(n619) );
  MAOI22D0BWP12T30P140 U948 ( .A1(n846), .A2(n874), .B1(ch_i_cc_reg[216]), 
        .B2(n845), .ZN(n620) );
  MAOI22D0BWP12T30P140 U949 ( .A1(n846), .A2(n875), .B1(ch_i_cc_reg[215]), 
        .B2(n845), .ZN(n621) );
  MAOI22D0BWP12T30P140 U950 ( .A1(n846), .A2(n876), .B1(ch_i_cc_reg[214]), 
        .B2(n845), .ZN(n622) );
  MAOI22D0BWP12T30P140 U951 ( .A1(n846), .A2(n877), .B1(ch_i_cc_reg[213]), 
        .B2(n845), .ZN(n623) );
  MAOI22D0BWP12T30P140 U952 ( .A1(n846), .A2(n878), .B1(ch_i_cc_reg[212]), 
        .B2(n845), .ZN(n624) );
  MAOI22D0BWP12T30P140 U953 ( .A1(n846), .A2(n879), .B1(ch_i_cc_reg[211]), 
        .B2(n845), .ZN(n625) );
  MAOI22D0BWP12T30P140 U954 ( .A1(n846), .A2(n880), .B1(ch_i_cc_reg[210]), 
        .B2(n845), .ZN(n626) );
  MAOI22D0BWP12T30P140 U955 ( .A1(n846), .A2(n881), .B1(ch_i_cc_reg[209]), 
        .B2(n845), .ZN(n627) );
  MAOI22D0BWP12T30P140 U956 ( .A1(n846), .A2(n1054), .B1(ch_i_cc_reg[208]), 
        .B2(n845), .ZN(n628) );
  ND2D0BWP12T30P140 U957 ( .A1(address[3]), .A2(n847), .ZN(n918) );
  ND2D0BWP12T30P140 U958 ( .A1(address[2]), .A2(n848), .ZN(n994) );
  INVD0BWP12T30P140 U959 ( .I(n849), .ZN(n895) );
  NR3D0BWP12T30P140 U960 ( .A1(n918), .A2(n994), .A3(n895), .ZN(n1226) );
  MAOI22D0BWP12T30P140 U961 ( .A1(n1226), .A2(n1110), .B1(ch_force_oc_i[1]), 
        .B2(n1226), .ZN(n578) );
  ND2D0BWP12T30P140 U962 ( .A1(n1102), .A2(n849), .ZN(n888) );
  NR2D0BWP12T30P140 U963 ( .A1(n1052), .A2(n888), .ZN(n892) );
  CKBD0BWP12T30P140 U964 ( .I(n892), .Z(n893) );
  CKBD0BWP12T30P140 U965 ( .I(n892), .Z(n891) );
  MAOI22D0BWP12T30P140 U966 ( .A1(n893), .A2(n881), .B1(ctr_prescaler_i[17]), 
        .B2(n891), .ZN(n507) );
  CKBD0BWP12T30P140 U967 ( .I(n892), .Z(n890) );
  MAOI22D0BWP12T30P140 U968 ( .A1(n893), .A2(n880), .B1(ctr_prescaler_i[18]), 
        .B2(n890), .ZN(n508) );
  MAOI22D0BWP12T30P140 U969 ( .A1(n891), .A2(n879), .B1(ctr_prescaler_i[19]), 
        .B2(n893), .ZN(n509) );
  MAOI22D0BWP12T30P140 U970 ( .A1(n891), .A2(n878), .B1(ctr_prescaler_i[20]), 
        .B2(n891), .ZN(n510) );
  MAOI22D0BWP12T30P140 U971 ( .A1(n891), .A2(n877), .B1(ctr_prescaler_i[21]), 
        .B2(n892), .ZN(n511) );
  MAOI22D0BWP12T30P140 U972 ( .A1(n891), .A2(n876), .B1(ctr_prescaler_i[22]), 
        .B2(n890), .ZN(n512) );
  MAOI22D0BWP12T30P140 U973 ( .A1(n891), .A2(n875), .B1(ctr_prescaler_i[23]), 
        .B2(n893), .ZN(n513) );
  MAOI22D0BWP12T30P140 U974 ( .A1(n891), .A2(n874), .B1(ctr_prescaler_i[24]), 
        .B2(n892), .ZN(n514) );
  MAOI22D0BWP12T30P140 U975 ( .A1(n891), .A2(n871), .B1(ctr_prescaler_i[25]), 
        .B2(n890), .ZN(n515) );
  MAOI22D0BWP12T30P140 U976 ( .A1(n891), .A2(n870), .B1(ctr_prescaler_i[26]), 
        .B2(n890), .ZN(n516) );
  MAOI22D0BWP12T30P140 U977 ( .A1(n891), .A2(n869), .B1(ctr_prescaler_i[27]), 
        .B2(n890), .ZN(n517) );
  MAOI22D0BWP12T30P140 U978 ( .A1(n891), .A2(n868), .B1(ctr_prescaler_i[28]), 
        .B2(n890), .ZN(n518) );
  MAOI22D0BWP12T30P140 U979 ( .A1(n891), .A2(n867), .B1(ctr_prescaler_i[29]), 
        .B2(n890), .ZN(n519) );
  MAOI22D0BWP12T30P140 U980 ( .A1(n891), .A2(n866), .B1(ctr_prescaler_i[30]), 
        .B2(n890), .ZN(n520) );
  MAOI22D0BWP12T30P140 U981 ( .A1(n891), .A2(n865), .B1(ctr_prescaler_i[31]), 
        .B2(n890), .ZN(n521) );
  NR2D0BWP12T30P140 U982 ( .A1(n918), .A2(n1148), .ZN(n1176) );
  INR2D1BWP12T30P140 U983 ( .A1(n1176), .B1(n895), .ZN(n850) );
  MAOI22D0BWP12T30P140 U984 ( .A1(n850), .A2(n1101), .B1(ch_irq_enable_i[0]), 
        .B2(n850), .ZN(n561) );
  MAOI22D0BWP12T30P140 U985 ( .A1(n850), .A2(n1110), .B1(ch_irq_enable_i[1]), 
        .B2(n850), .ZN(n560) );
  MAOI22D0BWP12T30P140 U986 ( .A1(n850), .A2(n1225), .B1(ch_irq_enable_i[2]), 
        .B2(n850), .ZN(n559) );
  MAOI22D0BWP12T30P140 U987 ( .A1(n850), .A2(n1149), .B1(ch_irq_enable_i[3]), 
        .B2(n850), .ZN(n558) );
  MAOI22D0BWP12T30P140 U988 ( .A1(n850), .A2(n1227), .B1(ch_irq_enable_i[4]), 
        .B2(n850), .ZN(n557) );
  MAOI22D0BWP12T30P140 U989 ( .A1(n850), .A2(n1171), .B1(ch_irq_enable_i[5]), 
        .B2(n850), .ZN(n556) );
  MAOI22D0BWP12T30P140 U990 ( .A1(n850), .A2(n1230), .B1(ch_irq_enable_i[6]), 
        .B2(n850), .ZN(n555) );
  MAOI22D0BWP12T30P140 U991 ( .A1(n850), .A2(n1092), .B1(ch_irq_enable_i[7]), 
        .B2(n850), .ZN(n554) );
  OR2D0BWP12T30P140 U992 ( .A1(n1052), .A2(n918), .Z(n908) );
  NR2D0BWP12T30P140 U993 ( .A1(n908), .A2(n895), .ZN(n852) );
  CKBD0BWP12T30P140 U994 ( .I(n852), .Z(n851) );
  MAOI22D0BWP12T30P140 U995 ( .A1(n851), .A2(n1101), .B1(ch_icoc_action_i[0]), 
        .B2(n851), .ZN(n552) );
  MAOI22D0BWP12T30P140 U996 ( .A1(n851), .A2(n1110), .B1(ch_icoc_action_i[1]), 
        .B2(n852), .ZN(n551) );
  MAOI22D0BWP12T30P140 U997 ( .A1(n851), .A2(n1225), .B1(ch_icoc_action_i[2]), 
        .B2(n852), .ZN(n550) );
  MAOI22D0BWP12T30P140 U998 ( .A1(n851), .A2(n1149), .B1(ch_icoc_action_i[3]), 
        .B2(n852), .ZN(n549) );
  MAOI22D0BWP12T30P140 U999 ( .A1(n851), .A2(n1227), .B1(ch_icoc_action_i[4]), 
        .B2(n852), .ZN(n548) );
  MAOI22D0BWP12T30P140 U1000 ( .A1(n851), .A2(n1171), .B1(ch_icoc_action_i[5]), 
        .B2(n852), .ZN(n547) );
  MAOI22D0BWP12T30P140 U1001 ( .A1(n851), .A2(n1230), .B1(ch_icoc_action_i[6]), 
        .B2(n851), .ZN(n546) );
  MAOI22D0BWP12T30P140 U1002 ( .A1(n851), .A2(n1092), .B1(ch_icoc_action_i[7]), 
        .B2(n852), .ZN(n545) );
  MAOI22D0BWP12T30P140 U1003 ( .A1(n851), .A2(n993), .B1(ch_icoc_action_i[8]), 
        .B2(n852), .ZN(n544) );
  MAOI22D0BWP12T30P140 U1004 ( .A1(n852), .A2(n1108), .B1(ch_icoc_action_i[9]), 
        .B2(n851), .ZN(n543) );
  MAOI22D0BWP12T30P140 U1005 ( .A1(n851), .A2(n1013), .B1(ch_icoc_action_i[10]), .B2(n852), .ZN(n542) );
  MAOI22D0BWP12T30P140 U1006 ( .A1(n851), .A2(n1020), .B1(ch_icoc_action_i[11]), .B2(n852), .ZN(n541) );
  MAOI22D0BWP12T30P140 U1007 ( .A1(n852), .A2(n1022), .B1(ch_icoc_action_i[12]), .B2(n851), .ZN(n540) );
  MAOI22D0BWP12T30P140 U1008 ( .A1(n851), .A2(n1035), .B1(ch_icoc_action_i[13]), .B2(n852), .ZN(n539) );
  MAOI22D0BWP12T30P140 U1009 ( .A1(n852), .A2(n1037), .B1(ch_icoc_action_i[14]), .B2(n851), .ZN(n538) );
  MAOI22D0BWP12T30P140 U1010 ( .A1(n852), .A2(n1045), .B1(ch_icoc_action_i[15]), .B2(n852), .ZN(n537) );
  ND3D0BWP12T30P140 U1011 ( .A1(address[1]), .A2(address[0]), .A3(address[2]), 
        .ZN(n1091) );
  CKBD0BWP12T30P140 U1012 ( .I(n854), .Z(n853) );
  CKBD0BWP12T30P140 U1013 ( .I(n854), .Z(n855) );
  MAOI22D0BWP12T30P140 U1014 ( .A1(n853), .A2(n1101), .B1(ch_i_cc_reg[0]), 
        .B2(n855), .ZN(n805) );
  MAOI22D0BWP12T30P140 U1015 ( .A1(n854), .A2(n1110), .B1(ch_i_cc_reg[1]), 
        .B2(n855), .ZN(n806) );
  MAOI22D0BWP12T30P140 U1016 ( .A1(n853), .A2(n1225), .B1(ch_i_cc_reg[2]), 
        .B2(n855), .ZN(n807) );
  CKBD0BWP12T30P140 U1017 ( .I(n854), .Z(n856) );
  MAOI22D0BWP12T30P140 U1018 ( .A1(n856), .A2(n1149), .B1(ch_i_cc_reg[3]), 
        .B2(n855), .ZN(n836) );
  MAOI22D0BWP12T30P140 U1019 ( .A1(n856), .A2(n1227), .B1(ch_i_cc_reg[4]), 
        .B2(n855), .ZN(n808) );
  MAOI22D0BWP12T30P140 U1020 ( .A1(n855), .A2(n1171), .B1(ch_i_cc_reg[5]), 
        .B2(n854), .ZN(n809) );
  MAOI22D0BWP12T30P140 U1021 ( .A1(n853), .A2(n1230), .B1(ch_i_cc_reg[6]), 
        .B2(n853), .ZN(n810) );
  MAOI22D0BWP12T30P140 U1022 ( .A1(n856), .A2(n1092), .B1(ch_i_cc_reg[7]), 
        .B2(n855), .ZN(n811) );
  MAOI22D0BWP12T30P140 U1023 ( .A1(n853), .A2(n993), .B1(ch_i_cc_reg[8]), .B2(
        n854), .ZN(n812) );
  MAOI22D0BWP12T30P140 U1024 ( .A1(n853), .A2(n1108), .B1(ch_i_cc_reg[9]), 
        .B2(n854), .ZN(n813) );
  MAOI22D0BWP12T30P140 U1025 ( .A1(n853), .A2(n1013), .B1(ch_i_cc_reg[10]), 
        .B2(n854), .ZN(n814) );
  MAOI22D0BWP12T30P140 U1026 ( .A1(n853), .A2(n1020), .B1(ch_i_cc_reg[11]), 
        .B2(n854), .ZN(n815) );
  MAOI22D0BWP12T30P140 U1027 ( .A1(n853), .A2(n1022), .B1(ch_i_cc_reg[12]), 
        .B2(n854), .ZN(n816) );
  MAOI22D0BWP12T30P140 U1028 ( .A1(n853), .A2(n1035), .B1(ch_i_cc_reg[13]), 
        .B2(n854), .ZN(n817) );
  MAOI22D0BWP12T30P140 U1029 ( .A1(n853), .A2(n1037), .B1(ch_i_cc_reg[14]), 
        .B2(n854), .ZN(n818) );
  MAOI22D0BWP12T30P140 U1030 ( .A1(n853), .A2(n1045), .B1(ch_i_cc_reg[15]), 
        .B2(n854), .ZN(n819) );
  MAOI22D0BWP12T30P140 U1031 ( .A1(n853), .A2(n1054), .B1(ch_i_cc_reg[16]), 
        .B2(n854), .ZN(n820) );
  MAOI22D0BWP12T30P140 U1032 ( .A1(n853), .A2(n881), .B1(ch_i_cc_reg[17]), 
        .B2(n856), .ZN(n821) );
  MAOI22D0BWP12T30P140 U1033 ( .A1(n853), .A2(n880), .B1(ch_i_cc_reg[18]), 
        .B2(n855), .ZN(n822) );
  MAOI22D0BWP12T30P140 U1034 ( .A1(n856), .A2(n879), .B1(ch_i_cc_reg[19]), 
        .B2(n853), .ZN(n823) );
  MAOI22D0BWP12T30P140 U1035 ( .A1(n856), .A2(n878), .B1(ch_i_cc_reg[20]), 
        .B2(n856), .ZN(n824) );
  MAOI22D0BWP12T30P140 U1036 ( .A1(n856), .A2(n877), .B1(ch_i_cc_reg[21]), 
        .B2(n854), .ZN(n825) );
  MAOI22D0BWP12T30P140 U1037 ( .A1(n856), .A2(n876), .B1(ch_i_cc_reg[22]), 
        .B2(n855), .ZN(n826) );
  MAOI22D0BWP12T30P140 U1038 ( .A1(n856), .A2(n875), .B1(ch_i_cc_reg[23]), 
        .B2(n853), .ZN(n827) );
  MAOI22D0BWP12T30P140 U1039 ( .A1(n856), .A2(n874), .B1(ch_i_cc_reg[24]), 
        .B2(n854), .ZN(n828) );
  MAOI22D0BWP12T30P140 U1040 ( .A1(n856), .A2(n871), .B1(ch_i_cc_reg[25]), 
        .B2(n855), .ZN(n829) );
  MAOI22D0BWP12T30P140 U1041 ( .A1(n856), .A2(n870), .B1(ch_i_cc_reg[26]), 
        .B2(n855), .ZN(n830) );
  MAOI22D0BWP12T30P140 U1042 ( .A1(n856), .A2(n869), .B1(ch_i_cc_reg[27]), 
        .B2(n855), .ZN(n831) );
  MAOI22D0BWP12T30P140 U1043 ( .A1(n856), .A2(n868), .B1(ch_i_cc_reg[28]), 
        .B2(n855), .ZN(n832) );
  MAOI22D0BWP12T30P140 U1044 ( .A1(n856), .A2(n867), .B1(ch_i_cc_reg[29]), 
        .B2(n855), .ZN(n833) );
  MAOI22D0BWP12T30P140 U1045 ( .A1(n856), .A2(n866), .B1(ch_i_cc_reg[30]), 
        .B2(n855), .ZN(n834) );
  MAOI22D0BWP12T30P140 U1046 ( .A1(n856), .A2(n865), .B1(ch_i_cc_reg[31]), 
        .B2(n855), .ZN(n835) );
  MAOI22D0BWP12T30P140 U1047 ( .A1(n893), .A2(n1054), .B1(ctr_prescaler_i[16]), 
        .B2(n892), .ZN(n506) );
  ND3D0BWP12T30P140 U1048 ( .A1(n896), .A2(address[2]), .A3(address[1]), .ZN(
        n1106) );
  NR2D0BWP12T30P140 U1049 ( .A1(n1106), .A2(n862), .ZN(n859) );
  CKBD0BWP12T30P140 U1050 ( .I(n859), .Z(n860) );
  MAOI22D0BWP12T30P140 U1051 ( .A1(n860), .A2(n1101), .B1(ch_i_cc_reg[32]), 
        .B2(n859), .ZN(n781) );
  MAOI22D0BWP12T30P140 U1052 ( .A1(n860), .A2(n1110), .B1(ch_i_cc_reg[33]), 
        .B2(n859), .ZN(n780) );
  CKBD0BWP12T30P140 U1053 ( .I(n859), .Z(n858) );
  CKBD0BWP12T30P140 U1054 ( .I(n859), .Z(n857) );
  MAOI22D0BWP12T30P140 U1055 ( .A1(n858), .A2(n1225), .B1(ch_i_cc_reg[34]), 
        .B2(n857), .ZN(n779) );
  MAOI22D0BWP12T30P140 U1056 ( .A1(n860), .A2(n1149), .B1(ch_i_cc_reg[35]), 
        .B2(n860), .ZN(n778) );
  MAOI22D0BWP12T30P140 U1057 ( .A1(n857), .A2(n1227), .B1(ch_i_cc_reg[36]), 
        .B2(n859), .ZN(n777) );
  MAOI22D0BWP12T30P140 U1058 ( .A1(n858), .A2(n1171), .B1(ch_i_cc_reg[37]), 
        .B2(n857), .ZN(n776) );
  MAOI22D0BWP12T30P140 U1059 ( .A1(n860), .A2(n1230), .B1(ch_i_cc_reg[38]), 
        .B2(n857), .ZN(n775) );
  MAOI22D0BWP12T30P140 U1060 ( .A1(n859), .A2(n1092), .B1(ch_i_cc_reg[39]), 
        .B2(n857), .ZN(n774) );
  MAOI22D0BWP12T30P140 U1061 ( .A1(n860), .A2(n993), .B1(ch_i_cc_reg[40]), 
        .B2(n857), .ZN(n773) );
  MAOI22D0BWP12T30P140 U1062 ( .A1(n858), .A2(n1108), .B1(ch_i_cc_reg[41]), 
        .B2(n857), .ZN(n804) );
  MAOI22D0BWP12T30P140 U1063 ( .A1(n858), .A2(n1013), .B1(ch_i_cc_reg[42]), 
        .B2(n857), .ZN(n803) );
  MAOI22D0BWP12T30P140 U1064 ( .A1(n858), .A2(n1020), .B1(ch_i_cc_reg[43]), 
        .B2(n857), .ZN(n802) );
  MAOI22D0BWP12T30P140 U1065 ( .A1(n858), .A2(n1022), .B1(ch_i_cc_reg[44]), 
        .B2(n857), .ZN(n801) );
  MAOI22D0BWP12T30P140 U1066 ( .A1(n858), .A2(n1035), .B1(ch_i_cc_reg[45]), 
        .B2(n857), .ZN(n800) );
  MAOI22D0BWP12T30P140 U1067 ( .A1(n858), .A2(n1037), .B1(ch_i_cc_reg[46]), 
        .B2(n857), .ZN(n799) );
  MAOI22D0BWP12T30P140 U1068 ( .A1(n858), .A2(n1045), .B1(ch_i_cc_reg[47]), 
        .B2(n857), .ZN(n798) );
  MAOI22D0BWP12T30P140 U1069 ( .A1(n858), .A2(n1054), .B1(ch_i_cc_reg[48]), 
        .B2(n857), .ZN(n797) );
  MAOI22D0BWP12T30P140 U1070 ( .A1(n858), .A2(n881), .B1(ch_i_cc_reg[49]), 
        .B2(n859), .ZN(n796) );
  MAOI22D0BWP12T30P140 U1071 ( .A1(n858), .A2(n880), .B1(ch_i_cc_reg[50]), 
        .B2(n860), .ZN(n795) );
  MAOI22D0BWP12T30P140 U1072 ( .A1(n858), .A2(n879), .B1(ch_i_cc_reg[51]), 
        .B2(n857), .ZN(n794) );
  MAOI22D0BWP12T30P140 U1073 ( .A1(n858), .A2(n878), .B1(ch_i_cc_reg[52]), 
        .B2(n859), .ZN(n793) );
  MAOI22D0BWP12T30P140 U1074 ( .A1(n858), .A2(n877), .B1(ch_i_cc_reg[53]), 
        .B2(n858), .ZN(n792) );
  MAOI22D0BWP12T30P140 U1075 ( .A1(n858), .A2(n876), .B1(ch_i_cc_reg[54]), 
        .B2(n860), .ZN(n791) );
  MAOI22D0BWP12T30P140 U1076 ( .A1(n860), .A2(n875), .B1(ch_i_cc_reg[55]), 
        .B2(n857), .ZN(n790) );
  MAOI22D0BWP12T30P140 U1077 ( .A1(n860), .A2(n874), .B1(ch_i_cc_reg[56]), 
        .B2(n858), .ZN(n789) );
  MAOI22D0BWP12T30P140 U1078 ( .A1(n860), .A2(n871), .B1(ch_i_cc_reg[57]), 
        .B2(n859), .ZN(n788) );
  MAOI22D0BWP12T30P140 U1079 ( .A1(n860), .A2(n870), .B1(ch_i_cc_reg[58]), 
        .B2(n859), .ZN(n787) );
  MAOI22D0BWP12T30P140 U1080 ( .A1(n860), .A2(n869), .B1(ch_i_cc_reg[59]), 
        .B2(n859), .ZN(n786) );
  MAOI22D0BWP12T30P140 U1081 ( .A1(n860), .A2(n868), .B1(ch_i_cc_reg[60]), 
        .B2(n859), .ZN(n785) );
  MAOI22D0BWP12T30P140 U1082 ( .A1(n860), .A2(n867), .B1(ch_i_cc_reg[61]), 
        .B2(n859), .ZN(n784) );
  MAOI22D0BWP12T30P140 U1083 ( .A1(n860), .A2(n866), .B1(ch_i_cc_reg[62]), 
        .B2(n859), .ZN(n783) );
  MAOI22D0BWP12T30P140 U1084 ( .A1(n860), .A2(n865), .B1(ch_i_cc_reg[63]), 
        .B2(n859), .ZN(n782) );
  ND3D0BWP12T30P140 U1085 ( .A1(n897), .A2(address[2]), .A3(address[0]), .ZN(
        n972) );
  NR2D0BWP12T30P140 U1086 ( .A1(n972), .A2(n862), .ZN(n861) );
  CKBD0BWP12T30P140 U1087 ( .I(n861), .Z(n931) );
  CKBD0BWP12T30P140 U1088 ( .I(n861), .Z(n917) );
  MAOI22D0BWP12T30P140 U1089 ( .A1(n931), .A2(n1101), .B1(ch_i_cc_reg[64]), 
        .B2(n917), .ZN(n772) );
  MAOI22D0BWP12T30P140 U1090 ( .A1(n931), .A2(n1110), .B1(ch_i_cc_reg[65]), 
        .B2(n917), .ZN(n771) );
  MAOI22D0BWP12T30P140 U1091 ( .A1(n931), .A2(n1225), .B1(ch_i_cc_reg[66]), 
        .B2(n917), .ZN(n770) );
  MAOI22D0BWP12T30P140 U1092 ( .A1(n931), .A2(n1149), .B1(ch_i_cc_reg[67]), 
        .B2(n917), .ZN(n769) );
  MAOI22D0BWP12T30P140 U1093 ( .A1(n931), .A2(n1227), .B1(ch_i_cc_reg[68]), 
        .B2(n917), .ZN(n768) );
  MAOI22D0BWP12T30P140 U1094 ( .A1(n931), .A2(n1171), .B1(ch_i_cc_reg[69]), 
        .B2(n917), .ZN(n767) );
  MAOI22D0BWP12T30P140 U1095 ( .A1(n931), .A2(n1230), .B1(ch_i_cc_reg[70]), 
        .B2(n917), .ZN(n766) );
  MAOI22D0BWP12T30P140 U1096 ( .A1(n931), .A2(n1092), .B1(ch_i_cc_reg[71]), 
        .B2(n917), .ZN(n765) );
  MAOI22D0BWP12T30P140 U1097 ( .A1(n931), .A2(n993), .B1(ch_i_cc_reg[72]), 
        .B2(n861), .ZN(n764) );
  CKBD0BWP12T30P140 U1098 ( .I(n861), .Z(n932) );
  MAOI22D0BWP12T30P140 U1099 ( .A1(n931), .A2(n1108), .B1(ch_i_cc_reg[73]), 
        .B2(n932), .ZN(n763) );
  MAOI22D0BWP12T30P140 U1100 ( .A1(n931), .A2(n1013), .B1(ch_i_cc_reg[74]), 
        .B2(n917), .ZN(n762) );
  MAOI22D0BWP12T30P140 U1101 ( .A1(n931), .A2(n1020), .B1(ch_i_cc_reg[75]), 
        .B2(n861), .ZN(n761) );
  MAOI22D0BWP12T30P140 U1102 ( .A1(n931), .A2(n1022), .B1(ch_i_cc_reg[76]), 
        .B2(n931), .ZN(n760) );
  MAOI22D0BWP12T30P140 U1103 ( .A1(n931), .A2(n1035), .B1(ch_i_cc_reg[77]), 
        .B2(n932), .ZN(n759) );
  MAOI22D0BWP12T30P140 U1104 ( .A1(n932), .A2(n1054), .B1(ch_i_cc_reg[80]), 
        .B2(n861), .ZN(n756) );
  MAOI22D0BWP12T30P140 U1105 ( .A1(n932), .A2(n881), .B1(ch_i_cc_reg[81]), 
        .B2(n861), .ZN(n755) );
  MAOI22D0BWP12T30P140 U1106 ( .A1(n932), .A2(n880), .B1(ch_i_cc_reg[82]), 
        .B2(n861), .ZN(n754) );
  MAOI22D0BWP12T30P140 U1107 ( .A1(n932), .A2(n879), .B1(ch_i_cc_reg[83]), 
        .B2(n861), .ZN(n753) );
  MAOI22D0BWP12T30P140 U1108 ( .A1(n932), .A2(n878), .B1(ch_i_cc_reg[84]), 
        .B2(n861), .ZN(n752) );
  MAOI22D0BWP12T30P140 U1109 ( .A1(n932), .A2(n877), .B1(ch_i_cc_reg[85]), 
        .B2(n861), .ZN(n751) );
  MAOI22D0BWP12T30P140 U1110 ( .A1(n932), .A2(n876), .B1(ch_i_cc_reg[86]), 
        .B2(n861), .ZN(n750) );
  MAOI22D0BWP12T30P140 U1111 ( .A1(n932), .A2(n875), .B1(ch_i_cc_reg[87]), 
        .B2(n861), .ZN(n749) );
  MAOI22D0BWP12T30P140 U1112 ( .A1(n932), .A2(n874), .B1(ch_i_cc_reg[88]), 
        .B2(n861), .ZN(n748) );
  MAOI22D0BWP12T30P140 U1113 ( .A1(n931), .A2(n871), .B1(ch_i_cc_reg[89]), 
        .B2(n917), .ZN(n747) );
  MAOI22D0BWP12T30P140 U1114 ( .A1(n932), .A2(n870), .B1(ch_i_cc_reg[90]), 
        .B2(n932), .ZN(n746) );
  MAOI22D0BWP12T30P140 U1115 ( .A1(n917), .A2(n869), .B1(ch_i_cc_reg[91]), 
        .B2(n861), .ZN(n745) );
  MAOI22D0BWP12T30P140 U1116 ( .A1(n931), .A2(n868), .B1(ch_i_cc_reg[92]), 
        .B2(n917), .ZN(n744) );
  MAOI22D0BWP12T30P140 U1117 ( .A1(n932), .A2(n867), .B1(ch_i_cc_reg[93]), 
        .B2(n917), .ZN(n743) );
  MAOI22D0BWP12T30P140 U1118 ( .A1(n861), .A2(n866), .B1(ch_i_cc_reg[94]), 
        .B2(n917), .ZN(n742) );
  MAOI22D0BWP12T30P140 U1119 ( .A1(n932), .A2(n865), .B1(ch_i_cc_reg[95]), 
        .B2(n917), .ZN(n741) );
  NR2D0BWP12T30P140 U1120 ( .A1(n994), .A2(n862), .ZN(n894) );
  CKBD0BWP12T30P140 U1121 ( .I(n894), .Z(n1109) );
  CKBD0BWP12T30P140 U1122 ( .I(n894), .Z(n883) );
  MAOI22D0BWP12T30P140 U1123 ( .A1(n1109), .A2(n1101), .B1(ch_i_cc_reg[96]), 
        .B2(n883), .ZN(n740) );
  MAOI22D0BWP12T30P140 U1124 ( .A1(n1109), .A2(n1110), .B1(ch_i_cc_reg[97]), 
        .B2(n883), .ZN(n739) );
  MAOI22D0BWP12T30P140 U1125 ( .A1(n1109), .A2(n1225), .B1(ch_i_cc_reg[98]), 
        .B2(n883), .ZN(n738) );
  MAOI22D0BWP12T30P140 U1126 ( .A1(n1109), .A2(n1149), .B1(ch_i_cc_reg[99]), 
        .B2(n883), .ZN(n737) );
  MAOI22D0BWP12T30P140 U1127 ( .A1(n1109), .A2(n1227), .B1(ch_i_cc_reg[100]), 
        .B2(n883), .ZN(n736) );
  MAOI22D0BWP12T30P140 U1128 ( .A1(n1109), .A2(n1171), .B1(ch_i_cc_reg[101]), 
        .B2(n883), .ZN(n735) );
  MAOI22D0BWP12T30P140 U1129 ( .A1(n1109), .A2(n1230), .B1(ch_i_cc_reg[102]), 
        .B2(n883), .ZN(n734) );
  MAOI22D0BWP12T30P140 U1130 ( .A1(n1109), .A2(n1092), .B1(ch_i_cc_reg[103]), 
        .B2(n883), .ZN(n733) );
  MAOI22D0BWP12T30P140 U1131 ( .A1(n893), .A2(n1045), .B1(ctr_prescaler_i[15]), 
        .B2(n892), .ZN(n505) );
  MAOI22D0BWP12T30P140 U1132 ( .A1(n873), .A2(n1045), .B1(ch_i_cc_reg[143]), 
        .B2(n872), .ZN(n705) );
  MAOI22D0BWP12T30P140 U1133 ( .A1(n873), .A2(n1037), .B1(ch_i_cc_reg[142]), 
        .B2(n872), .ZN(n706) );
  MAOI22D0BWP12T30P140 U1134 ( .A1(n873), .A2(n1035), .B1(ch_i_cc_reg[141]), 
        .B2(n872), .ZN(n707) );
  MAOI22D0BWP12T30P140 U1135 ( .A1(n873), .A2(n1022), .B1(ch_i_cc_reg[140]), 
        .B2(n872), .ZN(n708) );
  MAOI22D0BWP12T30P140 U1136 ( .A1(n864), .A2(n1020), .B1(ch_i_cc_reg[139]), 
        .B2(n872), .ZN(n677) );
  MAOI22D0BWP12T30P140 U1137 ( .A1(n863), .A2(n1013), .B1(ch_i_cc_reg[138]), 
        .B2(n872), .ZN(n678) );
  MAOI22D0BWP12T30P140 U1138 ( .A1(n864), .A2(n1108), .B1(ch_i_cc_reg[137]), 
        .B2(n872), .ZN(n679) );
  MAOI22D0BWP12T30P140 U1139 ( .A1(n873), .A2(n993), .B1(ch_i_cc_reg[136]), 
        .B2(n872), .ZN(n680) );
  MAOI22D0BWP12T30P140 U1140 ( .A1(n872), .A2(n1092), .B1(ch_i_cc_reg[135]), 
        .B2(n863), .ZN(n681) );
  MAOI22D0BWP12T30P140 U1141 ( .A1(n864), .A2(n1230), .B1(ch_i_cc_reg[134]), 
        .B2(n864), .ZN(n682) );
  MAOI22D0BWP12T30P140 U1142 ( .A1(n873), .A2(n1171), .B1(ch_i_cc_reg[133]), 
        .B2(n872), .ZN(n683) );
  MAOI22D0BWP12T30P140 U1143 ( .A1(n864), .A2(n1227), .B1(ch_i_cc_reg[132]), 
        .B2(n863), .ZN(n684) );
  MAOI22D0BWP12T30P140 U1144 ( .A1(n864), .A2(n1149), .B1(ch_i_cc_reg[131]), 
        .B2(n863), .ZN(n685) );
  MAOI22D0BWP12T30P140 U1145 ( .A1(n864), .A2(n1225), .B1(ch_i_cc_reg[130]), 
        .B2(n863), .ZN(n686) );
  MAOI22D0BWP12T30P140 U1146 ( .A1(n864), .A2(n1110), .B1(ch_i_cc_reg[129]), 
        .B2(n863), .ZN(n687) );
  MAOI22D0BWP12T30P140 U1147 ( .A1(n864), .A2(n1101), .B1(ch_i_cc_reg[128]), 
        .B2(n863), .ZN(n688) );
  CKBD0BWP12T30P140 U1148 ( .I(n894), .Z(n1107) );
  MAOI22D0BWP12T30P140 U1149 ( .A1(n1107), .A2(n865), .B1(ch_i_cc_reg[127]), 
        .B2(n883), .ZN(n709) );
  MAOI22D0BWP12T30P140 U1150 ( .A1(n894), .A2(n866), .B1(ch_i_cc_reg[126]), 
        .B2(n883), .ZN(n710) );
  MAOI22D0BWP12T30P140 U1151 ( .A1(n1107), .A2(n867), .B1(ch_i_cc_reg[125]), 
        .B2(n883), .ZN(n711) );
  MAOI22D0BWP12T30P140 U1152 ( .A1(n1109), .A2(n868), .B1(ch_i_cc_reg[124]), 
        .B2(n883), .ZN(n712) );
  MAOI22D0BWP12T30P140 U1153 ( .A1(n883), .A2(n869), .B1(ch_i_cc_reg[123]), 
        .B2(n894), .ZN(n713) );
  MAOI22D0BWP12T30P140 U1154 ( .A1(n1107), .A2(n870), .B1(ch_i_cc_reg[122]), 
        .B2(n1107), .ZN(n714) );
  MAOI22D0BWP12T30P140 U1155 ( .A1(n1109), .A2(n871), .B1(ch_i_cc_reg[121]), 
        .B2(n883), .ZN(n715) );
  MAOI22D0BWP12T30P140 U1156 ( .A1(n873), .A2(n1054), .B1(ch_i_cc_reg[144]), 
        .B2(n872), .ZN(n704) );
  MAOI22D0BWP12T30P140 U1157 ( .A1(n1107), .A2(n874), .B1(ch_i_cc_reg[120]), 
        .B2(n894), .ZN(n716) );
  MAOI22D0BWP12T30P140 U1158 ( .A1(n1107), .A2(n875), .B1(ch_i_cc_reg[119]), 
        .B2(n894), .ZN(n717) );
  MAOI22D0BWP12T30P140 U1159 ( .A1(n1107), .A2(n876), .B1(ch_i_cc_reg[118]), 
        .B2(n894), .ZN(n718) );
  MAOI22D0BWP12T30P140 U1160 ( .A1(n1107), .A2(n877), .B1(ch_i_cc_reg[117]), 
        .B2(n894), .ZN(n719) );
  MAOI22D0BWP12T30P140 U1161 ( .A1(n1107), .A2(n878), .B1(ch_i_cc_reg[116]), 
        .B2(n894), .ZN(n720) );
  MAOI22D0BWP12T30P140 U1162 ( .A1(n1107), .A2(n879), .B1(ch_i_cc_reg[115]), 
        .B2(n894), .ZN(n721) );
  MAOI22D0BWP12T30P140 U1163 ( .A1(n1107), .A2(n880), .B1(ch_i_cc_reg[114]), 
        .B2(n894), .ZN(n722) );
  MAOI22D0BWP12T30P140 U1164 ( .A1(n1107), .A2(n881), .B1(ch_i_cc_reg[113]), 
        .B2(n894), .ZN(n723) );
  MAOI22D0BWP12T30P140 U1165 ( .A1(n1107), .A2(n1054), .B1(ch_i_cc_reg[112]), 
        .B2(n894), .ZN(n724) );
  MAOI22D0BWP12T30P140 U1166 ( .A1(n1107), .A2(n1045), .B1(ch_i_cc_reg[111]), 
        .B2(n1109), .ZN(n725) );
  MAOI22D0BWP12T30P140 U1167 ( .A1(n1107), .A2(n1037), .B1(ch_i_cc_reg[110]), 
        .B2(n883), .ZN(n726) );
  MAOI22D0BWP12T30P140 U1168 ( .A1(n1109), .A2(n1035), .B1(ch_i_cc_reg[109]), 
        .B2(n1107), .ZN(n727) );
  MAOI22D0BWP12T30P140 U1169 ( .A1(n1109), .A2(n1022), .B1(ch_i_cc_reg[108]), 
        .B2(n1109), .ZN(n728) );
  INVD0BWP12T30P140 U1170 ( .I(ch_icoc_action_i_wen), .ZN(n882) );
  AOI21D0BWP12T30P140 U1171 ( .A1(n908), .A2(n882), .B(n1105), .ZN(n553) );
  MAOI22D0BWP12T30P140 U1172 ( .A1(n1109), .A2(n1020), .B1(ch_i_cc_reg[107]), 
        .B2(n894), .ZN(n729) );
  NR2D0BWP12T30P140 U1173 ( .A1(n918), .A2(n1229), .ZN(n1174) );
  OA21D0BWP12T30P140 U1174 ( .A1(n1174), .A2(ch_icoc_select_i_wen), .B(write), 
        .Z(n536) );
  OA21D0BWP12T30P140 U1175 ( .A1(n1176), .A2(ch_irq_enable_i_wen), .B(write), 
        .Z(n562) );
  MAOI22D0BWP12T30P140 U1176 ( .A1(n1109), .A2(n1013), .B1(ch_i_cc_reg[106]), 
        .B2(n883), .ZN(n730) );
  OR2D0BWP12T30P140 U1177 ( .A1(n994), .A2(n918), .Z(n885) );
  INVD0BWP12T30P140 U1178 ( .I(ch_force_oc_i_wen), .ZN(n884) );
  AOI21D0BWP12T30P140 U1179 ( .A1(n885), .A2(n884), .B(n1105), .ZN(n580) );
  NR2D0BWP12T30P140 U1180 ( .A1(n918), .A2(n1021), .ZN(n973) );
  OA21D0BWP12T30P140 U1181 ( .A1(n973), .A2(ch_irq_status_i_wen), .B(write), 
        .Z(n571) );
  INR2D1BWP12T30P140 U1182 ( .A1(n1174), .B1(n895), .ZN(n886) );
  MAOI22D0BWP12T30P140 U1183 ( .A1(n886), .A2(n1101), .B1(ch_icoc_select_i[0]), 
        .B2(n886), .ZN(n535) );
  MAOI22D0BWP12T30P140 U1184 ( .A1(n886), .A2(n1110), .B1(ch_icoc_select_i[1]), 
        .B2(n886), .ZN(n534) );
  MAOI22D0BWP12T30P140 U1185 ( .A1(n886), .A2(n1225), .B1(ch_icoc_select_i[2]), 
        .B2(n886), .ZN(n533) );
  MAOI22D0BWP12T30P140 U1186 ( .A1(n886), .A2(n1149), .B1(ch_icoc_select_i[3]), 
        .B2(n886), .ZN(n532) );
  MAOI22D0BWP12T30P140 U1187 ( .A1(n886), .A2(n1227), .B1(ch_icoc_select_i[4]), 
        .B2(n886), .ZN(n531) );
  MAOI22D0BWP12T30P140 U1188 ( .A1(n886), .A2(n1171), .B1(ch_icoc_select_i[5]), 
        .B2(n886), .ZN(n530) );
  MAOI22D0BWP12T30P140 U1189 ( .A1(n886), .A2(n1230), .B1(ch_icoc_select_i[6]), 
        .B2(n886), .ZN(n529) );
  MAOI22D0BWP12T30P140 U1190 ( .A1(n886), .A2(n1092), .B1(ch_icoc_select_i[7]), 
        .B2(n886), .ZN(n528) );
  NR2D0BWP12T30P140 U1191 ( .A1(n1148), .A2(n888), .ZN(n887) );
  CKMUX2D0BWP12T30P140 U1192 ( .I0(ctr_irq_enable_i), .I1(writedata[0]), .S(
        n887), .Z(n524) );
  NR2D0BWP12T30P140 U1193 ( .A1(n1021), .A2(n888), .ZN(n889) );
  CKMUX2D0BWP12T30P140 U1194 ( .I0(ctr_irq_status_i), .I1(writedata[0]), .S(
        n889), .Z(n526) );
  MAOI22D0BWP12T30P140 U1195 ( .A1(n891), .A2(n1101), .B1(ctr_prescaler_i[0]), 
        .B2(n890), .ZN(n522) );
  MAOI22D0BWP12T30P140 U1196 ( .A1(n893), .A2(n1110), .B1(ctr_prescaler_i[1]), 
        .B2(n890), .ZN(n491) );
  MAOI22D0BWP12T30P140 U1197 ( .A1(n892), .A2(n1225), .B1(ctr_prescaler_i[2]), 
        .B2(n890), .ZN(n492) );
  MAOI22D0BWP12T30P140 U1198 ( .A1(n893), .A2(n1149), .B1(ctr_prescaler_i[3]), 
        .B2(n890), .ZN(n493) );
  MAOI22D0BWP12T30P140 U1199 ( .A1(n891), .A2(n1227), .B1(ctr_prescaler_i[4]), 
        .B2(n890), .ZN(n494) );
  MAOI22D0BWP12T30P140 U1200 ( .A1(n890), .A2(n1171), .B1(ctr_prescaler_i[5]), 
        .B2(n892), .ZN(n495) );
  MAOI22D0BWP12T30P140 U1201 ( .A1(n893), .A2(n1230), .B1(ctr_prescaler_i[6]), 
        .B2(n893), .ZN(n496) );
  MAOI22D0BWP12T30P140 U1202 ( .A1(n891), .A2(n1092), .B1(ctr_prescaler_i[7]), 
        .B2(n890), .ZN(n497) );
  MAOI22D0BWP12T30P140 U1203 ( .A1(n893), .A2(n993), .B1(ctr_prescaler_i[8]), 
        .B2(n892), .ZN(n498) );
  MAOI22D0BWP12T30P140 U1204 ( .A1(n893), .A2(n1108), .B1(ctr_prescaler_i[9]), 
        .B2(n892), .ZN(n499) );
  MAOI22D0BWP12T30P140 U1205 ( .A1(n893), .A2(n1013), .B1(ctr_prescaler_i[10]), 
        .B2(n892), .ZN(n500) );
  MAOI22D0BWP12T30P140 U1206 ( .A1(n893), .A2(n1020), .B1(ctr_prescaler_i[11]), 
        .B2(n892), .ZN(n501) );
  MAOI22D0BWP12T30P140 U1207 ( .A1(n893), .A2(n1022), .B1(ctr_prescaler_i[12]), 
        .B2(n892), .ZN(n502) );
  MAOI22D0BWP12T30P140 U1208 ( .A1(n893), .A2(n1035), .B1(ctr_prescaler_i[13]), 
        .B2(n892), .ZN(n503) );
  MAOI22D0BWP12T30P140 U1209 ( .A1(n893), .A2(n1037), .B1(ctr_prescaler_i[14]), 
        .B2(n892), .ZN(n504) );
  MAOI22D0BWP12T30P140 U1210 ( .A1(n1109), .A2(n993), .B1(ch_i_cc_reg[104]), 
        .B2(n894), .ZN(n732) );
  INVD0BWP12T30P140 U1211 ( .I(n973), .ZN(n1179) );
  NR2D0BWP12T30P140 U1212 ( .A1(n1179), .A2(n895), .ZN(n1231) );
  MAOI22D0BWP12T30P140 U1213 ( .A1(n1231), .A2(n1092), .B1(ch_irq_status_i[7]), 
        .B2(n1231), .ZN(n563) );
  CKBD0BWP12T30P140 U1214 ( .I(counter[18]), .Z(n1258) );
  ND2D0BWP12T30P140 U1215 ( .A1(n971), .A2(read), .ZN(n900) );
  NR2D0BWP12T30P140 U1216 ( .A1(n1052), .A2(n900), .ZN(n1172) );
  NR2D0BWP12T30P140 U1217 ( .A1(n1229), .A2(n900), .ZN(n1164) );
  AOI22D0BWP12T30P140 U1218 ( .A1(n1172), .A2(ch_cc_reg_o[210]), .B1(n1164), 
        .B2(ch_cc_reg_o[242]), .ZN(n907) );
  NR2D0BWP12T30P140 U1219 ( .A1(n900), .A2(n994), .ZN(n1192) );
  NR2D0BWP12T30P140 U1220 ( .A1(n1148), .A2(n900), .ZN(n1191) );
  AOI22D0BWP12T30P140 U1221 ( .A1(n1192), .A2(ch_cc_reg_o[114]), .B1(n1191), 
        .B2(ch_cc_reg_o[178]), .ZN(n906) );
  NR2D0BWP12T30P140 U1222 ( .A1(n897), .A2(n896), .ZN(n898) );
  OAI22D0BWP12T30P140 U1223 ( .A1(address[4]), .A2(address[2]), .B1(n898), 
        .B2(n918), .ZN(n899) );
  OAI21D0BWP12T30P140 U1224 ( .A1(n971), .A2(n899), .B(read), .ZN(n1198) );
  INVD0BWP12T30P140 U1225 ( .I(n1198), .ZN(n1185) );
  INVD0BWP12T30P140 U1226 ( .I(n1185), .ZN(n1217) );
  NR2D0BWP12T30P140 U1227 ( .A1(n900), .A2(n1091), .ZN(n1194) );
  CKBD0BWP12T30P140 U1228 ( .I(n1194), .Z(n1208) );
  NR2D0BWP12T30P140 U1229 ( .A1(n1106), .A2(n900), .ZN(n1193) );
  AO22D0BWP12T30P140 U1230 ( .A1(n1208), .A2(ch_cc_reg_o[18]), .B1(n1193), 
        .B2(ch_cc_reg_o[50]), .Z(n902) );
  NR2D0BWP12T30P140 U1231 ( .A1(n1021), .A2(n900), .ZN(n1220) );
  CKBD0BWP12T30P140 U1232 ( .I(n1220), .Z(n1180) );
  NR2D0BWP12T30P140 U1233 ( .A1(n972), .A2(n900), .ZN(n1195) );
  AO22D0BWP12T30P140 U1234 ( .A1(n1180), .A2(ch_cc_reg_o[146]), .B1(n1195), 
        .B2(ch_cc_reg_o[82]), .Z(n901) );
  AOI211D0BWP12T30P140 U1235 ( .A1(readdata[18]), .A2(n1217), .B(n902), .C(
        n901), .ZN(n905) );
  ND2D0BWP12T30P140 U1236 ( .A1(n1185), .A2(n1102), .ZN(n903) );
  NR2D0BWP12T30P140 U1237 ( .A1(n903), .A2(n1052), .ZN(n1200) );
  NR2D0BWP12T30P140 U1238 ( .A1(n1229), .A2(n903), .ZN(n1199) );
  AOI22D0BWP12T30P140 U1239 ( .A1(n1200), .A2(ctr_prescaler_o[18]), .B1(n1199), 
        .B2(n1258), .ZN(n904) );
  ND4D0BWP12T30P140 U1240 ( .A1(n907), .A2(n906), .A3(n905), .A4(n904), .ZN(
        n468) );
  CKBD0BWP12T30P140 U1241 ( .I(counter[9]), .Z(n1249) );
  NR2D0BWP12T30P140 U1242 ( .A1(n1217), .A2(n908), .ZN(n1206) );
  CKBD0BWP12T30P140 U1243 ( .I(n1195), .Z(n1205) );
  AOI22D0BWP12T30P140 U1244 ( .A1(n1206), .A2(ch_icoc_action_o[9]), .B1(n1205), 
        .B2(ch_cc_reg_o[73]), .ZN(n916) );
  CKBD0BWP12T30P140 U1245 ( .I(n1193), .Z(n1207) );
  AOI22D0BWP12T30P140 U1246 ( .A1(n1208), .A2(ch_cc_reg_o[9]), .B1(n1207), 
        .B2(ch_cc_reg_o[41]), .ZN(n911) );
  AOI22D0BWP12T30P140 U1247 ( .A1(n1192), .A2(ch_cc_reg_o[105]), .B1(n1191), 
        .B2(ch_cc_reg_o[169]), .ZN(n910) );
  CKBD0BWP12T30P140 U1248 ( .I(n1172), .Z(n1212) );
  CKBD0BWP12T30P140 U1249 ( .I(n1164), .Z(n1211) );
  AOI22D0BWP12T30P140 U1250 ( .A1(n1212), .A2(ch_cc_reg_o[201]), .B1(n1211), 
        .B2(ch_cc_reg_o[233]), .ZN(n909) );
  ND3D0BWP12T30P140 U1251 ( .A1(n911), .A2(n910), .A3(n909), .ZN(n912) );
  AOI21D0BWP12T30P140 U1252 ( .A1(readdata[9]), .A2(n1198), .B(n912), .ZN(n915) );
  AOI22D0BWP12T30P140 U1253 ( .A1(n1200), .A2(ctr_prescaler_o[9]), .B1(n1199), 
        .B2(n1249), .ZN(n914) );
  ND2D0BWP12T30P140 U1254 ( .A1(n1220), .A2(ch_cc_reg_o[137]), .ZN(n913) );
  ND4D0BWP12T30P140 U1255 ( .A1(n916), .A2(n915), .A3(n914), .A4(n913), .ZN(
        n475) );
  MAOI22D0BWP12T30P140 U1256 ( .A1(n932), .A2(n1037), .B1(ch_i_cc_reg[78]), 
        .B2(n917), .ZN(n758) );
  CKBD0BWP12T30P140 U1257 ( .I(counter[6]), .Z(n1246) );
  AOI22D0BWP12T30P140 U1258 ( .A1(n1200), .A2(ctr_prescaler_o[6]), .B1(n1199), 
        .B2(n1246), .ZN(n930) );
  AOI22D0BWP12T30P140 U1259 ( .A1(n1192), .A2(ch_cc_reg_o[102]), .B1(n1172), 
        .B2(ch_cc_reg_o[198]), .ZN(n929) );
  INVD0BWP12T30P140 U1260 ( .I(ch_irq_status_o[6]), .ZN(n921) );
  NR2D0BWP12T30P140 U1261 ( .A1(n918), .A2(n972), .ZN(n1173) );
  AOI22D0BWP12T30P140 U1262 ( .A1(n1174), .A2(ch_icoc_select_o[6]), .B1(n1173), 
        .B2(pins_i[6]), .ZN(n920) );
  NR2D0BWP12T30P140 U1263 ( .A1(n918), .A2(n1106), .ZN(n1175) );
  AOI22D0BWP12T30P140 U1264 ( .A1(n1176), .A2(ch_irq_enable_o[6]), .B1(n1175), 
        .B2(pins_o[6]), .ZN(n919) );
  OAI211D0BWP12T30P140 U1265 ( .A1(n1179), .A2(n921), .B(n920), .C(n919), .ZN(
        n926) );
  AOI22D0BWP12T30P140 U1266 ( .A1(n1211), .A2(ch_cc_reg_o[230]), .B1(n1220), 
        .B2(ch_cc_reg_o[134]), .ZN(n924) );
  AOI22D0BWP12T30P140 U1267 ( .A1(n1195), .A2(ch_cc_reg_o[70]), .B1(n1194), 
        .B2(ch_cc_reg_o[6]), .ZN(n923) );
  AOI22D0BWP12T30P140 U1268 ( .A1(n1193), .A2(ch_cc_reg_o[38]), .B1(n1191), 
        .B2(ch_cc_reg_o[166]), .ZN(n922) );
  ND3D0BWP12T30P140 U1269 ( .A1(n924), .A2(n923), .A3(n922), .ZN(n925) );
  AOI221D0BWP12T30P140 U1270 ( .A1(readdata[6]), .A2(n1217), .B1(n926), .B2(
        n1185), .C(n925), .ZN(n928) );
  ND2D0BWP12T30P140 U1271 ( .A1(n1206), .A2(ch_icoc_action_o[6]), .ZN(n927) );
  ND4D0BWP12T30P140 U1272 ( .A1(n930), .A2(n929), .A3(n928), .A4(n927), .ZN(
        n477) );
  MAOI22D0BWP12T30P140 U1273 ( .A1(n932), .A2(n1045), .B1(ch_i_cc_reg[79]), 
        .B2(n931), .ZN(n757) );
  CKBD0BWP12T30P140 U1274 ( .I(counter[19]), .Z(n1259) );
  AOI22D0BWP12T30P140 U1275 ( .A1(n1212), .A2(ch_cc_reg_o[211]), .B1(n1211), 
        .B2(ch_cc_reg_o[243]), .ZN(n938) );
  CKBD0BWP12T30P140 U1276 ( .I(n1192), .Z(n1210) );
  CKBD0BWP12T30P140 U1277 ( .I(n1191), .Z(n1209) );
  AOI22D0BWP12T30P140 U1278 ( .A1(n1210), .A2(ch_cc_reg_o[115]), .B1(n1209), 
        .B2(ch_cc_reg_o[179]), .ZN(n937) );
  AO22D0BWP12T30P140 U1279 ( .A1(n1194), .A2(ch_cc_reg_o[19]), .B1(n1193), 
        .B2(ch_cc_reg_o[51]), .Z(n934) );
  AO22D0BWP12T30P140 U1280 ( .A1(n1180), .A2(ch_cc_reg_o[147]), .B1(n1195), 
        .B2(ch_cc_reg_o[83]), .Z(n933) );
  AOI211D0BWP12T30P140 U1281 ( .A1(readdata[19]), .A2(n1198), .B(n934), .C(
        n933), .ZN(n936) );
  CKBD0BWP12T30P140 U1282 ( .I(n1200), .Z(n1219) );
  CKBD0BWP12T30P140 U1283 ( .I(n1199), .Z(n1218) );
  AOI22D0BWP12T30P140 U1284 ( .A1(n1219), .A2(ctr_prescaler_o[19]), .B1(n1218), 
        .B2(n1259), .ZN(n935) );
  ND4D0BWP12T30P140 U1285 ( .A1(n938), .A2(n937), .A3(n936), .A4(n935), .ZN(
        n467) );
  MAOI22D0BWP12T30P140 U1286 ( .A1(n1044), .A2(n1225), .B1(ch_i_cc_reg[162]), 
        .B2(n1036), .ZN(n674) );
  MAOI22D0BWP12T30P140 U1287 ( .A1(n1044), .A2(n1149), .B1(ch_i_cc_reg[163]), 
        .B2(n1036), .ZN(n673) );
  CKBD0BWP12T30P140 U1288 ( .I(counter[8]), .Z(n1248) );
  AOI22D0BWP12T30P140 U1289 ( .A1(n1206), .A2(ch_icoc_action_o[8]), .B1(n1195), 
        .B2(ch_cc_reg_o[72]), .ZN(n946) );
  AOI22D0BWP12T30P140 U1290 ( .A1(n1208), .A2(ch_cc_reg_o[8]), .B1(n1193), 
        .B2(ch_cc_reg_o[40]), .ZN(n941) );
  AOI22D0BWP12T30P140 U1291 ( .A1(n1192), .A2(ch_cc_reg_o[104]), .B1(n1191), 
        .B2(ch_cc_reg_o[168]), .ZN(n940) );
  AOI22D0BWP12T30P140 U1292 ( .A1(n1212), .A2(ch_cc_reg_o[200]), .B1(n1164), 
        .B2(ch_cc_reg_o[232]), .ZN(n939) );
  ND3D0BWP12T30P140 U1293 ( .A1(n941), .A2(n940), .A3(n939), .ZN(n942) );
  AOI21D0BWP12T30P140 U1294 ( .A1(readdata[8]), .A2(n1198), .B(n942), .ZN(n945) );
  AOI22D0BWP12T30P140 U1295 ( .A1(n1200), .A2(ctr_prescaler_o[8]), .B1(n1199), 
        .B2(n1248), .ZN(n944) );
  ND2D0BWP12T30P140 U1296 ( .A1(n1180), .A2(ch_cc_reg_o[136]), .ZN(n943) );
  ND4D0BWP12T30P140 U1297 ( .A1(n946), .A2(n945), .A3(n944), .A4(n943), .ZN(
        n476) );
  CKBD0BWP12T30P140 U1298 ( .I(counter[7]), .Z(n1247) );
  AOI22D0BWP12T30P140 U1299 ( .A1(n1219), .A2(ctr_prescaler_o[7]), .B1(n1218), 
        .B2(n1247), .ZN(n958) );
  AOI22D0BWP12T30P140 U1300 ( .A1(n1210), .A2(ch_cc_reg_o[103]), .B1(n1172), 
        .B2(ch_cc_reg_o[199]), .ZN(n957) );
  INVD0BWP12T30P140 U1301 ( .I(ch_irq_status_o[7]), .ZN(n949) );
  AOI22D0BWP12T30P140 U1302 ( .A1(n1174), .A2(ch_icoc_select_o[7]), .B1(n1173), 
        .B2(pins_i[7]), .ZN(n948) );
  AOI22D0BWP12T30P140 U1303 ( .A1(n1176), .A2(ch_irq_enable_o[7]), .B1(n1175), 
        .B2(pins_o[7]), .ZN(n947) );
  OAI211D0BWP12T30P140 U1304 ( .A1(n1179), .A2(n949), .B(n948), .C(n947), .ZN(
        n954) );
  AOI22D0BWP12T30P140 U1305 ( .A1(n1211), .A2(ch_cc_reg_o[231]), .B1(n1220), 
        .B2(ch_cc_reg_o[135]), .ZN(n952) );
  AOI22D0BWP12T30P140 U1306 ( .A1(n1205), .A2(ch_cc_reg_o[71]), .B1(n1194), 
        .B2(ch_cc_reg_o[7]), .ZN(n951) );
  AOI22D0BWP12T30P140 U1307 ( .A1(n1207), .A2(ch_cc_reg_o[39]), .B1(n1209), 
        .B2(ch_cc_reg_o[167]), .ZN(n950) );
  ND3D0BWP12T30P140 U1308 ( .A1(n952), .A2(n951), .A3(n950), .ZN(n953) );
  AOI221D0BWP12T30P140 U1309 ( .A1(readdata[7]), .A2(n1198), .B1(n954), .B2(
        n1185), .C(n953), .ZN(n956) );
  ND2D0BWP12T30P140 U1310 ( .A1(n1206), .A2(ch_icoc_action_o[7]), .ZN(n955) );
  ND4D0BWP12T30P140 U1311 ( .A1(n958), .A2(n957), .A3(n956), .A4(n955), .ZN(
        n452) );
  CKBD0BWP12T30P140 U1312 ( .I(counter[20]), .Z(n1260) );
  AOI22D0BWP12T30P140 U1313 ( .A1(n1172), .A2(ch_cc_reg_o[212]), .B1(n1164), 
        .B2(ch_cc_reg_o[244]), .ZN(n964) );
  AOI22D0BWP12T30P140 U1314 ( .A1(n1192), .A2(ch_cc_reg_o[116]), .B1(n1191), 
        .B2(ch_cc_reg_o[180]), .ZN(n963) );
  AO22D0BWP12T30P140 U1315 ( .A1(n1208), .A2(ch_cc_reg_o[20]), .B1(n1193), 
        .B2(ch_cc_reg_o[52]), .Z(n960) );
  AO22D0BWP12T30P140 U1316 ( .A1(n1180), .A2(ch_cc_reg_o[148]), .B1(n1195), 
        .B2(ch_cc_reg_o[84]), .Z(n959) );
  AOI211D0BWP12T30P140 U1317 ( .A1(readdata[20]), .A2(n1217), .B(n960), .C(
        n959), .ZN(n962) );
  AOI22D0BWP12T30P140 U1318 ( .A1(n1200), .A2(ctr_prescaler_o[20]), .B1(n1199), 
        .B2(n1260), .ZN(n961) );
  ND4D0BWP12T30P140 U1319 ( .A1(n964), .A2(n963), .A3(n962), .A4(n961), .ZN(
        n466) );
  MAOI22D0BWP12T30P140 U1320 ( .A1(n1044), .A2(n1227), .B1(ch_i_cc_reg[164]), 
        .B2(n1036), .ZN(n672) );
  MAOI22D0BWP12T30P140 U1321 ( .A1(n1044), .A2(n1171), .B1(ch_i_cc_reg[165]), 
        .B2(n1036), .ZN(n671) );
  CKBD0BWP12T30P140 U1322 ( .I(counter[21]), .Z(n1261) );
  AOI22D0BWP12T30P140 U1323 ( .A1(n1212), .A2(ch_cc_reg_o[213]), .B1(n1211), 
        .B2(ch_cc_reg_o[245]), .ZN(n970) );
  AOI22D0BWP12T30P140 U1324 ( .A1(n1210), .A2(ch_cc_reg_o[117]), .B1(n1209), 
        .B2(ch_cc_reg_o[181]), .ZN(n969) );
  AO22D0BWP12T30P140 U1325 ( .A1(n1208), .A2(ch_cc_reg_o[21]), .B1(n1193), 
        .B2(ch_cc_reg_o[53]), .Z(n966) );
  AO22D0BWP12T30P140 U1326 ( .A1(n1220), .A2(ch_cc_reg_o[149]), .B1(n1195), 
        .B2(ch_cc_reg_o[85]), .Z(n965) );
  AOI211D0BWP12T30P140 U1327 ( .A1(readdata[21]), .A2(n1198), .B(n966), .C(
        n965), .ZN(n968) );
  AOI22D0BWP12T30P140 U1328 ( .A1(n1219), .A2(ctr_prescaler_o[21]), .B1(n1218), 
        .B2(n1261), .ZN(n967) );
  ND4D0BWP12T30P140 U1329 ( .A1(n970), .A2(n969), .A3(n968), .A4(n967), .ZN(
        n465) );
  MAOI22D0BWP12T30P140 U1330 ( .A1(n1044), .A2(n1230), .B1(ch_i_cc_reg[166]), 
        .B2(n1036), .ZN(n670) );
  ND2D0BWP12T30P140 U1331 ( .A1(n971), .A2(write), .ZN(n1228) );
  MOAI22D0BWP12T30P140 U1332 ( .A1(n972), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[5]), .ZN(n486) );
  CKBD0BWP12T30P140 U1333 ( .I(counter[0]), .Z(n1240) );
  AOI22D0BWP12T30P140 U1334 ( .A1(n1200), .A2(ctr_prescaler_o[0]), .B1(n1199), 
        .B2(n1240), .ZN(n986) );
  AOI22D0BWP12T30P140 U1335 ( .A1(n1192), .A2(ch_cc_reg_o[96]), .B1(n1172), 
        .B2(ch_cc_reg_o[192]), .ZN(n985) );
  AOI22D0BWP12T30P140 U1336 ( .A1(n1173), .A2(pins_i[0]), .B1(n973), .B2(
        ch_irq_status_o[0]), .ZN(n977) );
  AOI22D0BWP12T30P140 U1337 ( .A1(n1174), .A2(ch_icoc_select_o[0]), .B1(n1176), 
        .B2(ch_irq_enable_o[0]), .ZN(n976) );
  ND2D0BWP12T30P140 U1338 ( .A1(n1175), .A2(pins_o[0]), .ZN(n975) );
  ND3D0BWP12T30P140 U1339 ( .A1(n1103), .A2(n1102), .A3(ctr_irq_status_o), 
        .ZN(n974) );
  ND4D0BWP12T30P140 U1340 ( .A1(n977), .A2(n976), .A3(n975), .A4(n974), .ZN(
        n982) );
  AOI22D0BWP12T30P140 U1341 ( .A1(n1211), .A2(ch_cc_reg_o[224]), .B1(n1180), 
        .B2(ch_cc_reg_o[128]), .ZN(n980) );
  AOI22D0BWP12T30P140 U1342 ( .A1(n1205), .A2(ch_cc_reg_o[64]), .B1(n1194), 
        .B2(ch_cc_reg_o[0]), .ZN(n979) );
  AOI22D0BWP12T30P140 U1343 ( .A1(n1207), .A2(ch_cc_reg_o[32]), .B1(n1191), 
        .B2(ch_cc_reg_o[160]), .ZN(n978) );
  ND3D0BWP12T30P140 U1344 ( .A1(n980), .A2(n979), .A3(n978), .ZN(n981) );
  AOI221D0BWP12T30P140 U1345 ( .A1(readdata[0]), .A2(n1217), .B1(n982), .B2(
        n1185), .C(n981), .ZN(n984) );
  ND2D0BWP12T30P140 U1346 ( .A1(n1206), .A2(ch_icoc_action_o[0]), .ZN(n983) );
  ND4D0BWP12T30P140 U1347 ( .A1(n986), .A2(n985), .A3(n984), .A4(n983), .ZN(
        n483) );
  MAOI22D0BWP12T30P140 U1348 ( .A1(n1044), .A2(n1092), .B1(ch_i_cc_reg[167]), 
        .B2(n1036), .ZN(n669) );
  CKBD0BWP12T30P140 U1349 ( .I(counter[22]), .Z(n1262) );
  AOI22D0BWP12T30P140 U1350 ( .A1(n1172), .A2(ch_cc_reg_o[214]), .B1(n1164), 
        .B2(ch_cc_reg_o[246]), .ZN(n992) );
  AOI22D0BWP12T30P140 U1351 ( .A1(n1192), .A2(ch_cc_reg_o[118]), .B1(n1191), 
        .B2(ch_cc_reg_o[182]), .ZN(n991) );
  AO22D0BWP12T30P140 U1352 ( .A1(n1194), .A2(ch_cc_reg_o[22]), .B1(n1193), 
        .B2(ch_cc_reg_o[54]), .Z(n988) );
  AO22D0BWP12T30P140 U1353 ( .A1(n1180), .A2(ch_cc_reg_o[150]), .B1(n1195), 
        .B2(ch_cc_reg_o[86]), .Z(n987) );
  AOI211D0BWP12T30P140 U1354 ( .A1(readdata[22]), .A2(n1198), .B(n988), .C(
        n987), .ZN(n990) );
  AOI22D0BWP12T30P140 U1355 ( .A1(n1200), .A2(ctr_prescaler_o[22]), .B1(n1199), 
        .B2(n1262), .ZN(n989) );
  ND4D0BWP12T30P140 U1356 ( .A1(n992), .A2(n991), .A3(n990), .A4(n989), .ZN(
        n464) );
  MAOI22D0BWP12T30P140 U1357 ( .A1(n1044), .A2(n993), .B1(ch_i_cc_reg[168]), 
        .B2(n1053), .ZN(n668) );
  MOAI22D0BWP12T30P140 U1358 ( .A1(n994), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[4]), .ZN(n487) );
  MAOI22D0BWP12T30P140 U1359 ( .A1(n1044), .A2(n1108), .B1(ch_i_cc_reg[169]), 
        .B2(n1055), .ZN(n667) );
  CKBD0BWP12T30P140 U1360 ( .I(counter[23]), .Z(n1263) );
  AOI22D0BWP12T30P140 U1361 ( .A1(n1172), .A2(ch_cc_reg_o[215]), .B1(n1164), 
        .B2(ch_cc_reg_o[247]), .ZN(n1000) );
  AOI22D0BWP12T30P140 U1362 ( .A1(n1210), .A2(ch_cc_reg_o[119]), .B1(n1209), 
        .B2(ch_cc_reg_o[183]), .ZN(n999) );
  AO22D0BWP12T30P140 U1363 ( .A1(n1208), .A2(ch_cc_reg_o[23]), .B1(n1207), 
        .B2(ch_cc_reg_o[55]), .Z(n996) );
  AO22D0BWP12T30P140 U1364 ( .A1(n1220), .A2(ch_cc_reg_o[151]), .B1(n1205), 
        .B2(ch_cc_reg_o[87]), .Z(n995) );
  AOI211D0BWP12T30P140 U1365 ( .A1(readdata[23]), .A2(n1217), .B(n996), .C(
        n995), .ZN(n998) );
  AOI22D0BWP12T30P140 U1366 ( .A1(n1219), .A2(ctr_prescaler_o[23]), .B1(n1218), 
        .B2(n1263), .ZN(n997) );
  ND4D0BWP12T30P140 U1367 ( .A1(n1000), .A2(n999), .A3(n998), .A4(n997), .ZN(
        n463) );
  CKBD0BWP12T30P140 U1368 ( .I(counter[1]), .Z(n1241) );
  AOI22D0BWP12T30P140 U1369 ( .A1(n1219), .A2(ctr_prescaler_o[1]), .B1(n1218), 
        .B2(n1241), .ZN(n1012) );
  AOI22D0BWP12T30P140 U1370 ( .A1(n1210), .A2(ch_cc_reg_o[97]), .B1(n1212), 
        .B2(ch_cc_reg_o[193]), .ZN(n1011) );
  INVD0BWP12T30P140 U1371 ( .I(ch_irq_status_o[1]), .ZN(n1003) );
  AOI22D0BWP12T30P140 U1372 ( .A1(n1174), .A2(ch_icoc_select_o[1]), .B1(n1173), 
        .B2(pins_i[1]), .ZN(n1002) );
  AOI22D0BWP12T30P140 U1373 ( .A1(n1176), .A2(ch_irq_enable_o[1]), .B1(n1175), 
        .B2(pins_o[1]), .ZN(n1001) );
  OAI211D0BWP12T30P140 U1374 ( .A1(n1179), .A2(n1003), .B(n1002), .C(n1001), 
        .ZN(n1008) );
  AOI22D0BWP12T30P140 U1375 ( .A1(n1211), .A2(ch_cc_reg_o[225]), .B1(n1220), 
        .B2(ch_cc_reg_o[129]), .ZN(n1006) );
  AOI22D0BWP12T30P140 U1376 ( .A1(n1205), .A2(ch_cc_reg_o[65]), .B1(n1208), 
        .B2(ch_cc_reg_o[1]), .ZN(n1005) );
  AOI22D0BWP12T30P140 U1377 ( .A1(n1207), .A2(ch_cc_reg_o[33]), .B1(n1209), 
        .B2(ch_cc_reg_o[161]), .ZN(n1004) );
  ND3D0BWP12T30P140 U1378 ( .A1(n1006), .A2(n1005), .A3(n1004), .ZN(n1007) );
  AOI221D0BWP12T30P140 U1379 ( .A1(readdata[1]), .A2(n1217), .B1(n1008), .B2(
        n1185), .C(n1007), .ZN(n1010) );
  ND2D0BWP12T30P140 U1380 ( .A1(n1206), .A2(ch_icoc_action_o[1]), .ZN(n1009)
         );
  ND4D0BWP12T30P140 U1381 ( .A1(n1012), .A2(n1011), .A3(n1010), .A4(n1009), 
        .ZN(n482) );
  MAOI22D0BWP12T30P140 U1382 ( .A1(n1044), .A2(n1013), .B1(ch_i_cc_reg[170]), 
        .B2(n1036), .ZN(n666) );
  CKBD0BWP12T30P140 U1383 ( .I(counter[24]), .Z(n1264) );
  AOI22D0BWP12T30P140 U1384 ( .A1(n1212), .A2(ch_cc_reg_o[216]), .B1(n1164), 
        .B2(ch_cc_reg_o[248]), .ZN(n1019) );
  AOI22D0BWP12T30P140 U1385 ( .A1(n1192), .A2(ch_cc_reg_o[120]), .B1(n1191), 
        .B2(ch_cc_reg_o[184]), .ZN(n1018) );
  AO22D0BWP12T30P140 U1386 ( .A1(n1194), .A2(ch_cc_reg_o[24]), .B1(n1193), 
        .B2(ch_cc_reg_o[56]), .Z(n1015) );
  AO22D0BWP12T30P140 U1387 ( .A1(n1180), .A2(ch_cc_reg_o[152]), .B1(n1195), 
        .B2(ch_cc_reg_o[88]), .Z(n1014) );
  AOI211D0BWP12T30P140 U1388 ( .A1(readdata[24]), .A2(n1198), .B(n1015), .C(
        n1014), .ZN(n1017) );
  AOI22D0BWP12T30P140 U1389 ( .A1(n1200), .A2(ctr_prescaler_o[24]), .B1(n1199), 
        .B2(n1264), .ZN(n1016) );
  ND4D0BWP12T30P140 U1390 ( .A1(n1019), .A2(n1018), .A3(n1017), .A4(n1016), 
        .ZN(n462) );
  MAOI22D0BWP12T30P140 U1391 ( .A1(n1044), .A2(n1020), .B1(ch_i_cc_reg[171]), 
        .B2(n1053), .ZN(n665) );
  MOAI22D0BWP12T30P140 U1392 ( .A1(n1021), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[3]), .ZN(n488) );
  MAOI22D0BWP12T30P140 U1393 ( .A1(n1044), .A2(n1022), .B1(ch_i_cc_reg[172]), 
        .B2(n1044), .ZN(n664) );
  CKBD0BWP12T30P140 U1394 ( .I(counter[31]), .Z(n1271) );
  AOI22D0BWP12T30P140 U1395 ( .A1(n1212), .A2(ch_cc_reg_o[223]), .B1(n1164), 
        .B2(ch_cc_reg_o[255]), .ZN(n1028) );
  AOI22D0BWP12T30P140 U1396 ( .A1(n1210), .A2(ch_cc_reg_o[127]), .B1(n1209), 
        .B2(ch_cc_reg_o[191]), .ZN(n1027) );
  AO22D0BWP12T30P140 U1397 ( .A1(n1208), .A2(ch_cc_reg_o[31]), .B1(n1207), 
        .B2(ch_cc_reg_o[63]), .Z(n1024) );
  AO22D0BWP12T30P140 U1398 ( .A1(n1180), .A2(ch_cc_reg_o[159]), .B1(n1205), 
        .B2(ch_cc_reg_o[95]), .Z(n1023) );
  AOI211D0BWP12T30P140 U1399 ( .A1(readdata[31]), .A2(n1198), .B(n1024), .C(
        n1023), .ZN(n1026) );
  AOI22D0BWP12T30P140 U1400 ( .A1(n1219), .A2(ctr_prescaler_o[31]), .B1(n1218), 
        .B2(n1271), .ZN(n1025) );
  ND4D0BWP12T30P140 U1401 ( .A1(n1028), .A2(n1027), .A3(n1026), .A4(n1025), 
        .ZN(n455) );
  CKBD0BWP12T30P140 U1402 ( .I(counter[25]), .Z(n1265) );
  AOI22D0BWP12T30P140 U1403 ( .A1(n1172), .A2(ch_cc_reg_o[217]), .B1(n1164), 
        .B2(ch_cc_reg_o[249]), .ZN(n1034) );
  AOI22D0BWP12T30P140 U1404 ( .A1(n1210), .A2(ch_cc_reg_o[121]), .B1(n1209), 
        .B2(ch_cc_reg_o[185]), .ZN(n1033) );
  AO22D0BWP12T30P140 U1405 ( .A1(n1208), .A2(ch_cc_reg_o[25]), .B1(n1207), 
        .B2(ch_cc_reg_o[57]), .Z(n1030) );
  AO22D0BWP12T30P140 U1406 ( .A1(n1220), .A2(ch_cc_reg_o[153]), .B1(n1205), 
        .B2(ch_cc_reg_o[89]), .Z(n1029) );
  AOI211D0BWP12T30P140 U1407 ( .A1(readdata[25]), .A2(n1217), .B(n1030), .C(
        n1029), .ZN(n1032) );
  AOI22D0BWP12T30P140 U1408 ( .A1(n1219), .A2(ctr_prescaler_o[25]), .B1(n1218), 
        .B2(n1265), .ZN(n1031) );
  ND4D0BWP12T30P140 U1409 ( .A1(n1034), .A2(n1033), .A3(n1032), .A4(n1031), 
        .ZN(n461) );
  MAOI22D0BWP12T30P140 U1410 ( .A1(n1044), .A2(n1035), .B1(ch_i_cc_reg[173]), 
        .B2(n1055), .ZN(n663) );
  MOAI22D0BWP12T30P140 U1411 ( .A1(n1148), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[2]), .ZN(n489) );
  MAOI22D0BWP12T30P140 U1412 ( .A1(n1055), .A2(n1037), .B1(ch_i_cc_reg[174]), 
        .B2(n1036), .ZN(n662) );
  CKBD0BWP12T30P140 U1413 ( .I(counter[27]), .Z(n1267) );
  AOI22D0BWP12T30P140 U1414 ( .A1(n1172), .A2(ch_cc_reg_o[219]), .B1(n1164), 
        .B2(ch_cc_reg_o[251]), .ZN(n1043) );
  AOI22D0BWP12T30P140 U1415 ( .A1(n1210), .A2(ch_cc_reg_o[123]), .B1(n1209), 
        .B2(ch_cc_reg_o[187]), .ZN(n1042) );
  AO22D0BWP12T30P140 U1416 ( .A1(n1208), .A2(ch_cc_reg_o[27]), .B1(n1207), 
        .B2(ch_cc_reg_o[59]), .Z(n1039) );
  AO22D0BWP12T30P140 U1417 ( .A1(n1180), .A2(ch_cc_reg_o[155]), .B1(n1205), 
        .B2(ch_cc_reg_o[91]), .Z(n1038) );
  AOI211D0BWP12T30P140 U1418 ( .A1(readdata[27]), .A2(n1217), .B(n1039), .C(
        n1038), .ZN(n1041) );
  AOI22D0BWP12T30P140 U1419 ( .A1(n1219), .A2(ctr_prescaler_o[27]), .B1(n1218), 
        .B2(n1267), .ZN(n1040) );
  ND4D0BWP12T30P140 U1420 ( .A1(n1043), .A2(n1042), .A3(n1041), .A4(n1040), 
        .ZN(n459) );
  MAOI22D0BWP12T30P140 U1421 ( .A1(n1055), .A2(n1045), .B1(ch_i_cc_reg[175]), 
        .B2(n1044), .ZN(n661) );
  CKBD0BWP12T30P140 U1422 ( .I(counter[30]), .Z(n1270) );
  AOI22D0BWP12T30P140 U1423 ( .A1(n1172), .A2(ch_cc_reg_o[222]), .B1(n1211), 
        .B2(ch_cc_reg_o[254]), .ZN(n1051) );
  AOI22D0BWP12T30P140 U1424 ( .A1(n1210), .A2(ch_cc_reg_o[126]), .B1(n1209), 
        .B2(ch_cc_reg_o[190]), .ZN(n1050) );
  AO22D0BWP12T30P140 U1425 ( .A1(n1194), .A2(ch_cc_reg_o[30]), .B1(n1193), 
        .B2(ch_cc_reg_o[62]), .Z(n1047) );
  AO22D0BWP12T30P140 U1426 ( .A1(n1220), .A2(ch_cc_reg_o[158]), .B1(n1195), 
        .B2(ch_cc_reg_o[94]), .Z(n1046) );
  AOI211D0BWP12T30P140 U1427 ( .A1(readdata[30]), .A2(n1217), .B(n1047), .C(
        n1046), .ZN(n1049) );
  AOI22D0BWP12T30P140 U1428 ( .A1(n1219), .A2(ctr_prescaler_o[30]), .B1(n1218), 
        .B2(n1270), .ZN(n1048) );
  ND4D0BWP12T30P140 U1429 ( .A1(n1051), .A2(n1050), .A3(n1049), .A4(n1048), 
        .ZN(n456) );
  MOAI22D0BWP12T30P140 U1430 ( .A1(n1052), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[1]), .ZN(n490) );
  MAOI22D0BWP12T30P140 U1431 ( .A1(n1055), .A2(n1054), .B1(ch_i_cc_reg[176]), 
        .B2(n1053), .ZN(n660) );
  CKBD0BWP12T30P140 U1432 ( .I(counter[28]), .Z(n1268) );
  AOI22D0BWP12T30P140 U1433 ( .A1(n1212), .A2(ch_cc_reg_o[220]), .B1(n1211), 
        .B2(ch_cc_reg_o[252]), .ZN(n1061) );
  AOI22D0BWP12T30P140 U1434 ( .A1(n1210), .A2(ch_cc_reg_o[124]), .B1(n1209), 
        .B2(ch_cc_reg_o[188]), .ZN(n1060) );
  AO22D0BWP12T30P140 U1435 ( .A1(n1194), .A2(ch_cc_reg_o[28]), .B1(n1193), 
        .B2(ch_cc_reg_o[60]), .Z(n1057) );
  AO22D0BWP12T30P140 U1436 ( .A1(n1220), .A2(ch_cc_reg_o[156]), .B1(n1195), 
        .B2(ch_cc_reg_o[92]), .Z(n1056) );
  AOI211D0BWP12T30P140 U1437 ( .A1(readdata[28]), .A2(n1217), .B(n1057), .C(
        n1056), .ZN(n1059) );
  AOI22D0BWP12T30P140 U1438 ( .A1(n1219), .A2(ctr_prescaler_o[28]), .B1(n1218), 
        .B2(n1268), .ZN(n1058) );
  ND4D0BWP12T30P140 U1439 ( .A1(n1061), .A2(n1060), .A3(n1059), .A4(n1058), 
        .ZN(n458) );
  MAOI22D0BWP12T30P140 U1440 ( .A1(n1226), .A2(n1101), .B1(ch_force_oc_i[0]), 
        .B2(n1226), .ZN(n579) );
  CKBD0BWP12T30P140 U1441 ( .I(counter[29]), .Z(n1269) );
  AOI22D0BWP12T30P140 U1442 ( .A1(n1212), .A2(ch_cc_reg_o[221]), .B1(n1164), 
        .B2(ch_cc_reg_o[253]), .ZN(n1067) );
  AOI22D0BWP12T30P140 U1443 ( .A1(n1210), .A2(ch_cc_reg_o[125]), .B1(n1209), 
        .B2(ch_cc_reg_o[189]), .ZN(n1066) );
  AO22D0BWP12T30P140 U1444 ( .A1(n1208), .A2(ch_cc_reg_o[29]), .B1(n1207), 
        .B2(ch_cc_reg_o[61]), .Z(n1063) );
  AO22D0BWP12T30P140 U1445 ( .A1(n1180), .A2(ch_cc_reg_o[157]), .B1(n1205), 
        .B2(ch_cc_reg_o[93]), .Z(n1062) );
  AOI211D0BWP12T30P140 U1446 ( .A1(readdata[29]), .A2(n1198), .B(n1063), .C(
        n1062), .ZN(n1065) );
  AOI22D0BWP12T30P140 U1447 ( .A1(n1219), .A2(ctr_prescaler_o[29]), .B1(n1218), 
        .B2(n1269), .ZN(n1064) );
  ND4D0BWP12T30P140 U1448 ( .A1(n1067), .A2(n1066), .A3(n1065), .A4(n1064), 
        .ZN(n457) );
  CKBD0BWP12T30P140 U1449 ( .I(counter[5]), .Z(n1245) );
  AOI22D0BWP12T30P140 U1450 ( .A1(n1219), .A2(ctr_prescaler_o[5]), .B1(n1218), 
        .B2(n1245), .ZN(n1078) );
  AOI22D0BWP12T30P140 U1451 ( .A1(n1210), .A2(ch_cc_reg_o[101]), .B1(n1172), 
        .B2(ch_cc_reg_o[197]), .ZN(n1077) );
  INVD0BWP12T30P140 U1452 ( .I(ch_irq_status_o[5]), .ZN(n1234) );
  AOI22D0BWP12T30P140 U1453 ( .A1(n1174), .A2(ch_icoc_select_o[5]), .B1(n1173), 
        .B2(pins_i[5]), .ZN(n1069) );
  AOI22D0BWP12T30P140 U1454 ( .A1(n1176), .A2(ch_irq_enable_o[5]), .B1(n1175), 
        .B2(pins_o[5]), .ZN(n1068) );
  OAI211D0BWP12T30P140 U1455 ( .A1(n1179), .A2(n1234), .B(n1069), .C(n1068), 
        .ZN(n1074) );
  AOI22D0BWP12T30P140 U1456 ( .A1(n1211), .A2(ch_cc_reg_o[229]), .B1(n1180), 
        .B2(ch_cc_reg_o[133]), .ZN(n1072) );
  AOI22D0BWP12T30P140 U1457 ( .A1(n1205), .A2(ch_cc_reg_o[69]), .B1(n1194), 
        .B2(ch_cc_reg_o[5]), .ZN(n1071) );
  AOI22D0BWP12T30P140 U1458 ( .A1(n1207), .A2(ch_cc_reg_o[37]), .B1(n1209), 
        .B2(ch_cc_reg_o[165]), .ZN(n1070) );
  ND3D0BWP12T30P140 U1459 ( .A1(n1072), .A2(n1071), .A3(n1070), .ZN(n1073) );
  AOI221D0BWP12T30P140 U1460 ( .A1(readdata[5]), .A2(n1217), .B1(n1074), .B2(
        n1185), .C(n1073), .ZN(n1076) );
  ND2D0BWP12T30P140 U1461 ( .A1(n1206), .A2(ch_icoc_action_o[5]), .ZN(n1075)
         );
  ND4D0BWP12T30P140 U1462 ( .A1(n1078), .A2(n1077), .A3(n1076), .A4(n1075), 
        .ZN(n478) );
  MAOI22D0BWP12T30P140 U1463 ( .A1(n1226), .A2(n1230), .B1(ch_force_oc_i[6]), 
        .B2(n1226), .ZN(n573) );
  CKBD0BWP12T30P140 U1464 ( .I(counter[2]), .Z(n1242) );
  AOI22D0BWP12T30P140 U1465 ( .A1(n1200), .A2(ctr_prescaler_o[2]), .B1(n1199), 
        .B2(n1242), .ZN(n1090) );
  AOI22D0BWP12T30P140 U1466 ( .A1(n1192), .A2(ch_cc_reg_o[98]), .B1(n1172), 
        .B2(ch_cc_reg_o[194]), .ZN(n1089) );
  INVD0BWP12T30P140 U1467 ( .I(ch_irq_status_o[2]), .ZN(n1081) );
  AOI22D0BWP12T30P140 U1468 ( .A1(n1174), .A2(ch_icoc_select_o[2]), .B1(n1173), 
        .B2(pins_i[2]), .ZN(n1080) );
  AOI22D0BWP12T30P140 U1469 ( .A1(n1176), .A2(ch_irq_enable_o[2]), .B1(n1175), 
        .B2(pins_o[2]), .ZN(n1079) );
  OAI211D0BWP12T30P140 U1470 ( .A1(n1179), .A2(n1081), .B(n1080), .C(n1079), 
        .ZN(n1086) );
  AOI22D0BWP12T30P140 U1471 ( .A1(n1211), .A2(ch_cc_reg_o[226]), .B1(n1220), 
        .B2(ch_cc_reg_o[130]), .ZN(n1084) );
  AOI22D0BWP12T30P140 U1472 ( .A1(n1205), .A2(ch_cc_reg_o[66]), .B1(n1194), 
        .B2(ch_cc_reg_o[2]), .ZN(n1083) );
  AOI22D0BWP12T30P140 U1473 ( .A1(n1207), .A2(ch_cc_reg_o[34]), .B1(n1191), 
        .B2(ch_cc_reg_o[162]), .ZN(n1082) );
  ND3D0BWP12T30P140 U1474 ( .A1(n1084), .A2(n1083), .A3(n1082), .ZN(n1085) );
  AOI221D0BWP12T30P140 U1475 ( .A1(readdata[2]), .A2(n1217), .B1(n1086), .B2(
        n1185), .C(n1085), .ZN(n1088) );
  ND2D0BWP12T30P140 U1476 ( .A1(n1206), .A2(ch_icoc_action_o[2]), .ZN(n1087)
         );
  ND4D0BWP12T30P140 U1477 ( .A1(n1090), .A2(n1089), .A3(n1088), .A4(n1087), 
        .ZN(n481) );
  MOAI22D0BWP12T30P140 U1478 ( .A1(n1091), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[7]), .ZN(n484) );
  MAOI22D0BWP12T30P140 U1479 ( .A1(n1226), .A2(n1092), .B1(ch_force_oc_i[7]), 
        .B2(n1226), .ZN(n572) );
  CKBD0BWP12T30P140 U1480 ( .I(counter[12]), .Z(n1252) );
  AOI22D0BWP12T30P140 U1481 ( .A1(n1206), .A2(ch_icoc_action_o[12]), .B1(n1195), .B2(ch_cc_reg_o[76]), .ZN(n1100) );
  AOI22D0BWP12T30P140 U1482 ( .A1(n1194), .A2(ch_cc_reg_o[12]), .B1(n1193), 
        .B2(ch_cc_reg_o[44]), .ZN(n1095) );
  AOI22D0BWP12T30P140 U1483 ( .A1(n1192), .A2(ch_cc_reg_o[108]), .B1(n1191), 
        .B2(ch_cc_reg_o[172]), .ZN(n1094) );
  AOI22D0BWP12T30P140 U1484 ( .A1(n1212), .A2(ch_cc_reg_o[204]), .B1(n1211), 
        .B2(ch_cc_reg_o[236]), .ZN(n1093) );
  ND3D0BWP12T30P140 U1485 ( .A1(n1095), .A2(n1094), .A3(n1093), .ZN(n1096) );
  AOI21D0BWP12T30P140 U1486 ( .A1(readdata[12]), .A2(n1198), .B(n1096), .ZN(
        n1099) );
  AOI22D0BWP12T30P140 U1487 ( .A1(n1200), .A2(ctr_prescaler_o[12]), .B1(n1199), 
        .B2(n1252), .ZN(n1098) );
  ND2D0BWP12T30P140 U1488 ( .A1(n1220), .A2(ch_cc_reg_o[140]), .ZN(n1097) );
  ND4D0BWP12T30P140 U1489 ( .A1(n1100), .A2(n1099), .A3(n1098), .A4(n1097), 
        .ZN(n472) );
  MAOI22D0BWP12T30P140 U1490 ( .A1(n1226), .A2(n1171), .B1(ch_force_oc_i[5]), 
        .B2(n1226), .ZN(n574) );
  MAOI22D0BWP12T30P140 U1491 ( .A1(n1231), .A2(n1101), .B1(ch_irq_status_i[0]), 
        .B2(n1231), .ZN(n570) );
  AOI21D0BWP12T30P140 U1492 ( .A1(n1103), .A2(n1102), .B(ctr_irq_status_i_wen), 
        .ZN(n1104) );
  NR2D0BWP12T30P140 U1493 ( .A1(n1105), .A2(n1104), .ZN(n527) );
  MOAI22D0BWP12T30P140 U1494 ( .A1(n1106), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[6]), .ZN(n485) );
  MAOI22D0BWP12T30P140 U1495 ( .A1(n1109), .A2(n1108), .B1(ch_i_cc_reg[105]), 
        .B2(n1107), .ZN(n731) );
  MAOI22D0BWP12T30P140 U1496 ( .A1(n1231), .A2(n1110), .B1(ch_irq_status_i[1]), 
        .B2(n1231), .ZN(n569) );
  CKBD0BWP12T30P140 U1497 ( .I(counter[3]), .Z(n1243) );
  AOI22D0BWP12T30P140 U1498 ( .A1(n1219), .A2(ctr_prescaler_o[3]), .B1(n1218), 
        .B2(n1243), .ZN(n1122) );
  AOI22D0BWP12T30P140 U1499 ( .A1(n1210), .A2(ch_cc_reg_o[99]), .B1(n1212), 
        .B2(ch_cc_reg_o[195]), .ZN(n1121) );
  INVD0BWP12T30P140 U1500 ( .I(ch_irq_status_o[3]), .ZN(n1113) );
  AOI22D0BWP12T30P140 U1501 ( .A1(n1174), .A2(ch_icoc_select_o[3]), .B1(n1173), 
        .B2(pins_i[3]), .ZN(n1112) );
  AOI22D0BWP12T30P140 U1502 ( .A1(n1176), .A2(ch_irq_enable_o[3]), .B1(n1175), 
        .B2(pins_o[3]), .ZN(n1111) );
  OAI211D0BWP12T30P140 U1503 ( .A1(n1179), .A2(n1113), .B(n1112), .C(n1111), 
        .ZN(n1118) );
  AOI22D0BWP12T30P140 U1504 ( .A1(n1211), .A2(ch_cc_reg_o[227]), .B1(n1220), 
        .B2(ch_cc_reg_o[131]), .ZN(n1116) );
  AOI22D0BWP12T30P140 U1505 ( .A1(n1205), .A2(ch_cc_reg_o[67]), .B1(n1208), 
        .B2(ch_cc_reg_o[3]), .ZN(n1115) );
  AOI22D0BWP12T30P140 U1506 ( .A1(n1207), .A2(ch_cc_reg_o[35]), .B1(n1209), 
        .B2(ch_cc_reg_o[163]), .ZN(n1114) );
  ND3D0BWP12T30P140 U1507 ( .A1(n1116), .A2(n1115), .A3(n1114), .ZN(n1117) );
  AOI221D0BWP12T30P140 U1508 ( .A1(readdata[3]), .A2(n1217), .B1(n1118), .B2(
        n1185), .C(n1117), .ZN(n1120) );
  ND2D0BWP12T30P140 U1509 ( .A1(n1206), .A2(ch_icoc_action_o[3]), .ZN(n1119)
         );
  ND4D0BWP12T30P140 U1510 ( .A1(n1122), .A2(n1121), .A3(n1120), .A4(n1119), 
        .ZN(n480) );
  MAOI22D0BWP12T30P140 U1511 ( .A1(n1226), .A2(n1227), .B1(ch_force_oc_i[4]), 
        .B2(n1226), .ZN(n575) );
  CKBD0BWP12T30P140 U1512 ( .I(counter[15]), .Z(n1255) );
  AOI22D0BWP12T30P140 U1513 ( .A1(n1206), .A2(ch_icoc_action_o[15]), .B1(n1195), .B2(ch_cc_reg_o[79]), .ZN(n1130) );
  AOI22D0BWP12T30P140 U1514 ( .A1(n1208), .A2(ch_cc_reg_o[15]), .B1(n1193), 
        .B2(ch_cc_reg_o[47]), .ZN(n1125) );
  AOI22D0BWP12T30P140 U1515 ( .A1(n1210), .A2(ch_cc_reg_o[111]), .B1(n1209), 
        .B2(ch_cc_reg_o[175]), .ZN(n1124) );
  AOI22D0BWP12T30P140 U1516 ( .A1(n1172), .A2(ch_cc_reg_o[207]), .B1(n1164), 
        .B2(ch_cc_reg_o[239]), .ZN(n1123) );
  ND3D0BWP12T30P140 U1517 ( .A1(n1125), .A2(n1124), .A3(n1123), .ZN(n1126) );
  AOI21D0BWP12T30P140 U1518 ( .A1(readdata[15]), .A2(n1198), .B(n1126), .ZN(
        n1129) );
  AOI22D0BWP12T30P140 U1519 ( .A1(n1219), .A2(ctr_prescaler_o[15]), .B1(n1218), 
        .B2(n1255), .ZN(n1128) );
  ND2D0BWP12T30P140 U1520 ( .A1(n1180), .A2(ch_cc_reg_o[143]), .ZN(n1127) );
  ND4D0BWP12T30P140 U1521 ( .A1(n1130), .A2(n1129), .A3(n1128), .A4(n1127), 
        .ZN(n453) );
  CKBD0BWP12T30P140 U1522 ( .I(counter[11]), .Z(n1251) );
  AOI22D0BWP12T30P140 U1523 ( .A1(n1206), .A2(ch_icoc_action_o[11]), .B1(n1205), .B2(ch_cc_reg_o[75]), .ZN(n1138) );
  AOI22D0BWP12T30P140 U1524 ( .A1(n1208), .A2(ch_cc_reg_o[11]), .B1(n1207), 
        .B2(ch_cc_reg_o[43]), .ZN(n1133) );
  AOI22D0BWP12T30P140 U1525 ( .A1(n1192), .A2(ch_cc_reg_o[107]), .B1(n1191), 
        .B2(ch_cc_reg_o[171]), .ZN(n1132) );
  AOI22D0BWP12T30P140 U1526 ( .A1(n1212), .A2(ch_cc_reg_o[203]), .B1(n1164), 
        .B2(ch_cc_reg_o[235]), .ZN(n1131) );
  ND3D0BWP12T30P140 U1527 ( .A1(n1133), .A2(n1132), .A3(n1131), .ZN(n1134) );
  AOI21D0BWP12T30P140 U1528 ( .A1(readdata[11]), .A2(n1198), .B(n1134), .ZN(
        n1137) );
  AOI22D0BWP12T30P140 U1529 ( .A1(n1200), .A2(ctr_prescaler_o[11]), .B1(n1199), 
        .B2(n1251), .ZN(n1136) );
  ND2D0BWP12T30P140 U1530 ( .A1(n1180), .A2(ch_cc_reg_o[139]), .ZN(n1135) );
  ND4D0BWP12T30P140 U1531 ( .A1(n1138), .A2(n1137), .A3(n1136), .A4(n1135), 
        .ZN(n473) );
  CKBD0BWP12T30P140 U1532 ( .I(counter[13]), .Z(n1253) );
  AOI22D0BWP12T30P140 U1533 ( .A1(n1206), .A2(ch_icoc_action_o[13]), .B1(n1205), .B2(ch_cc_reg_o[77]), .ZN(n1146) );
  AOI22D0BWP12T30P140 U1534 ( .A1(n1208), .A2(ch_cc_reg_o[13]), .B1(n1207), 
        .B2(ch_cc_reg_o[45]), .ZN(n1141) );
  AOI22D0BWP12T30P140 U1535 ( .A1(n1210), .A2(ch_cc_reg_o[109]), .B1(n1209), 
        .B2(ch_cc_reg_o[173]), .ZN(n1140) );
  AOI22D0BWP12T30P140 U1536 ( .A1(n1212), .A2(ch_cc_reg_o[205]), .B1(n1211), 
        .B2(ch_cc_reg_o[237]), .ZN(n1139) );
  ND3D0BWP12T30P140 U1537 ( .A1(n1141), .A2(n1140), .A3(n1139), .ZN(n1142) );
  AOI21D0BWP12T30P140 U1538 ( .A1(readdata[13]), .A2(n1198), .B(n1142), .ZN(
        n1145) );
  AOI22D0BWP12T30P140 U1539 ( .A1(n1219), .A2(ctr_prescaler_o[13]), .B1(n1218), 
        .B2(n1253), .ZN(n1144) );
  ND2D0BWP12T30P140 U1540 ( .A1(n1220), .A2(ch_cc_reg_o[141]), .ZN(n1143) );
  ND4D0BWP12T30P140 U1541 ( .A1(n1146), .A2(n1145), .A3(n1144), .A4(n1143), 
        .ZN(n471) );
  MAOI22D0BWP12T30P140 U1542 ( .A1(n1231), .A2(n1225), .B1(ch_irq_status_i[2]), 
        .B2(n1231), .ZN(n568) );
  MOAI22D0BWP12T30P140 U1543 ( .A1(n1148), .A2(n1147), .B1(write), .B2(
        ctr_irq_enable_i_wen), .ZN(n525) );
  MAOI22D0BWP12T30P140 U1544 ( .A1(n1231), .A2(n1149), .B1(ch_irq_status_i[3]), 
        .B2(n1231), .ZN(n567) );
  MAOI22D0BWP12T30P140 U1545 ( .A1(n1226), .A2(n1149), .B1(ch_force_oc_i[3]), 
        .B2(n1226), .ZN(n576) );
  CKBD0BWP12T30P140 U1546 ( .I(counter[10]), .Z(n1250) );
  AOI22D0BWP12T30P140 U1547 ( .A1(n1206), .A2(ch_icoc_action_o[10]), .B1(n1195), .B2(ch_cc_reg_o[74]), .ZN(n1157) );
  AOI22D0BWP12T30P140 U1548 ( .A1(n1208), .A2(ch_cc_reg_o[10]), .B1(n1193), 
        .B2(ch_cc_reg_o[42]), .ZN(n1152) );
  AOI22D0BWP12T30P140 U1549 ( .A1(n1192), .A2(ch_cc_reg_o[106]), .B1(n1191), 
        .B2(ch_cc_reg_o[170]), .ZN(n1151) );
  AOI22D0BWP12T30P140 U1550 ( .A1(n1212), .A2(ch_cc_reg_o[202]), .B1(n1164), 
        .B2(ch_cc_reg_o[234]), .ZN(n1150) );
  ND3D0BWP12T30P140 U1551 ( .A1(n1152), .A2(n1151), .A3(n1150), .ZN(n1153) );
  AOI21D0BWP12T30P140 U1552 ( .A1(readdata[10]), .A2(n1198), .B(n1153), .ZN(
        n1156) );
  AOI22D0BWP12T30P140 U1553 ( .A1(n1200), .A2(ctr_prescaler_o[10]), .B1(n1199), 
        .B2(n1250), .ZN(n1155) );
  ND2D0BWP12T30P140 U1554 ( .A1(n1180), .A2(ch_cc_reg_o[138]), .ZN(n1154) );
  ND4D0BWP12T30P140 U1555 ( .A1(n1157), .A2(n1156), .A3(n1155), .A4(n1154), 
        .ZN(n474) );
  CKBD0BWP12T30P140 U1556 ( .I(counter[26]), .Z(n1266) );
  AOI22D0BWP12T30P140 U1557 ( .A1(n1212), .A2(ch_cc_reg_o[218]), .B1(n1164), 
        .B2(ch_cc_reg_o[250]), .ZN(n1163) );
  AOI22D0BWP12T30P140 U1558 ( .A1(n1192), .A2(ch_cc_reg_o[122]), .B1(n1191), 
        .B2(ch_cc_reg_o[186]), .ZN(n1162) );
  AO22D0BWP12T30P140 U1559 ( .A1(n1194), .A2(ch_cc_reg_o[26]), .B1(n1193), 
        .B2(ch_cc_reg_o[58]), .Z(n1159) );
  AO22D0BWP12T30P140 U1560 ( .A1(n1180), .A2(ch_cc_reg_o[154]), .B1(n1195), 
        .B2(ch_cc_reg_o[90]), .Z(n1158) );
  AOI211D0BWP12T30P140 U1561 ( .A1(readdata[26]), .A2(n1198), .B(n1159), .C(
        n1158), .ZN(n1161) );
  AOI22D0BWP12T30P140 U1562 ( .A1(n1200), .A2(ctr_prescaler_o[26]), .B1(n1199), 
        .B2(n1266), .ZN(n1160) );
  ND4D0BWP12T30P140 U1563 ( .A1(n1163), .A2(n1162), .A3(n1161), .A4(n1160), 
        .ZN(n460) );
  CKBD0BWP12T30P140 U1564 ( .I(counter[17]), .Z(n1257) );
  AOI22D0BWP12T30P140 U1565 ( .A1(n1172), .A2(ch_cc_reg_o[209]), .B1(n1164), 
        .B2(ch_cc_reg_o[241]), .ZN(n1170) );
  AOI22D0BWP12T30P140 U1566 ( .A1(n1210), .A2(ch_cc_reg_o[113]), .B1(n1209), 
        .B2(ch_cc_reg_o[177]), .ZN(n1169) );
  AO22D0BWP12T30P140 U1567 ( .A1(n1194), .A2(ch_cc_reg_o[17]), .B1(n1207), 
        .B2(ch_cc_reg_o[49]), .Z(n1166) );
  AO22D0BWP12T30P140 U1568 ( .A1(n1180), .A2(ch_cc_reg_o[145]), .B1(n1205), 
        .B2(ch_cc_reg_o[81]), .Z(n1165) );
  AOI211D0BWP12T30P140 U1569 ( .A1(readdata[17]), .A2(n1217), .B(n1166), .C(
        n1165), .ZN(n1168) );
  AOI22D0BWP12T30P140 U1570 ( .A1(n1219), .A2(ctr_prescaler_o[17]), .B1(n1218), 
        .B2(n1257), .ZN(n1167) );
  ND4D0BWP12T30P140 U1571 ( .A1(n1170), .A2(n1169), .A3(n1168), .A4(n1167), 
        .ZN(n469) );
  MAOI22D0BWP12T30P140 U1572 ( .A1(n1231), .A2(n1171), .B1(ch_irq_status_i[5]), 
        .B2(n1231), .ZN(n565) );
  CKBD0BWP12T30P140 U1573 ( .I(counter[4]), .Z(n1244) );
  AOI22D0BWP12T30P140 U1574 ( .A1(n1200), .A2(ctr_prescaler_o[4]), .B1(n1199), 
        .B2(n1244), .ZN(n1190) );
  AOI22D0BWP12T30P140 U1575 ( .A1(n1192), .A2(ch_cc_reg_o[100]), .B1(n1172), 
        .B2(ch_cc_reg_o[196]), .ZN(n1189) );
  INVD0BWP12T30P140 U1576 ( .I(ch_irq_status_o[4]), .ZN(n1235) );
  AOI22D0BWP12T30P140 U1577 ( .A1(n1174), .A2(ch_icoc_select_o[4]), .B1(n1173), 
        .B2(pins_i[4]), .ZN(n1178) );
  AOI22D0BWP12T30P140 U1578 ( .A1(n1176), .A2(ch_irq_enable_o[4]), .B1(n1175), 
        .B2(pins_o[4]), .ZN(n1177) );
  OAI211D0BWP12T30P140 U1579 ( .A1(n1179), .A2(n1235), .B(n1178), .C(n1177), 
        .ZN(n1186) );
  AOI22D0BWP12T30P140 U1580 ( .A1(n1211), .A2(ch_cc_reg_o[228]), .B1(n1180), 
        .B2(ch_cc_reg_o[132]), .ZN(n1183) );
  AOI22D0BWP12T30P140 U1581 ( .A1(n1205), .A2(ch_cc_reg_o[68]), .B1(n1194), 
        .B2(ch_cc_reg_o[4]), .ZN(n1182) );
  AOI22D0BWP12T30P140 U1582 ( .A1(n1207), .A2(ch_cc_reg_o[36]), .B1(n1191), 
        .B2(ch_cc_reg_o[164]), .ZN(n1181) );
  ND3D0BWP12T30P140 U1583 ( .A1(n1183), .A2(n1182), .A3(n1181), .ZN(n1184) );
  AOI221D0BWP12T30P140 U1584 ( .A1(readdata[4]), .A2(n1217), .B1(n1186), .B2(
        n1185), .C(n1184), .ZN(n1188) );
  ND2D0BWP12T30P140 U1585 ( .A1(n1206), .A2(ch_icoc_action_o[4]), .ZN(n1187)
         );
  ND4D0BWP12T30P140 U1586 ( .A1(n1190), .A2(n1189), .A3(n1188), .A4(n1187), 
        .ZN(n479) );
  CKBD0BWP12T30P140 U1587 ( .I(counter[16]), .Z(n1256) );
  AOI22D0BWP12T30P140 U1588 ( .A1(n1212), .A2(ch_cc_reg_o[208]), .B1(n1211), 
        .B2(ch_cc_reg_o[240]), .ZN(n1204) );
  AOI22D0BWP12T30P140 U1589 ( .A1(n1192), .A2(ch_cc_reg_o[112]), .B1(n1191), 
        .B2(ch_cc_reg_o[176]), .ZN(n1203) );
  AO22D0BWP12T30P140 U1590 ( .A1(n1194), .A2(ch_cc_reg_o[16]), .B1(n1193), 
        .B2(ch_cc_reg_o[48]), .Z(n1197) );
  AO22D0BWP12T30P140 U1591 ( .A1(n1220), .A2(ch_cc_reg_o[144]), .B1(n1195), 
        .B2(ch_cc_reg_o[80]), .Z(n1196) );
  AOI211D0BWP12T30P140 U1592 ( .A1(readdata[16]), .A2(n1198), .B(n1197), .C(
        n1196), .ZN(n1202) );
  AOI22D0BWP12T30P140 U1593 ( .A1(n1200), .A2(ctr_prescaler_o[16]), .B1(n1199), 
        .B2(n1256), .ZN(n1201) );
  ND4D0BWP12T30P140 U1594 ( .A1(n1204), .A2(n1203), .A3(n1202), .A4(n1201), 
        .ZN(n470) );
  CKBD0BWP12T30P140 U1595 ( .I(counter[14]), .Z(n1254) );
  AOI22D0BWP12T30P140 U1596 ( .A1(n1206), .A2(ch_icoc_action_o[14]), .B1(n1205), .B2(ch_cc_reg_o[78]), .ZN(n1224) );
  AOI22D0BWP12T30P140 U1597 ( .A1(n1208), .A2(ch_cc_reg_o[14]), .B1(n1207), 
        .B2(ch_cc_reg_o[46]), .ZN(n1215) );
  AOI22D0BWP12T30P140 U1598 ( .A1(n1210), .A2(ch_cc_reg_o[110]), .B1(n1209), 
        .B2(ch_cc_reg_o[174]), .ZN(n1214) );
  AOI22D0BWP12T30P140 U1599 ( .A1(n1212), .A2(ch_cc_reg_o[206]), .B1(n1211), 
        .B2(ch_cc_reg_o[238]), .ZN(n1213) );
  ND3D0BWP12T30P140 U1600 ( .A1(n1215), .A2(n1214), .A3(n1213), .ZN(n1216) );
  AOI21D0BWP12T30P140 U1601 ( .A1(readdata[14]), .A2(n1217), .B(n1216), .ZN(
        n1223) );
  AOI22D0BWP12T30P140 U1602 ( .A1(n1219), .A2(ctr_prescaler_o[14]), .B1(n1218), 
        .B2(n1254), .ZN(n1222) );
  ND2D0BWP12T30P140 U1603 ( .A1(n1220), .A2(ch_cc_reg_o[142]), .ZN(n1221) );
  ND4D0BWP12T30P140 U1604 ( .A1(n1224), .A2(n1223), .A3(n1222), .A4(n1221), 
        .ZN(n454) );
  MAOI22D0BWP12T30P140 U1605 ( .A1(n1226), .A2(n1225), .B1(ch_force_oc_i[2]), 
        .B2(n1226), .ZN(n577) );
  MAOI22D0BWP12T30P140 U1606 ( .A1(n1231), .A2(n1227), .B1(ch_irq_status_i[4]), 
        .B2(n1231), .ZN(n566) );
  MOAI22D0BWP12T30P140 U1607 ( .A1(n1229), .A2(n1228), .B1(write), .B2(
        ch_i_cc_reg_wen[0]), .ZN(n837) );
  MAOI22D0BWP12T30P140 U1608 ( .A1(n1231), .A2(n1230), .B1(ch_irq_status_i[6]), 
        .B2(n1231), .ZN(n564) );
  CKBD0BWP12T30P140 U1609 ( .I(clk), .Z(n1232) );
  CKBD0BWP12T30P140 U1610 ( .I(n1232), .Z(n1284) );
  CKBD0BWP12T30P140 U1611 ( .I(clk), .Z(n1291) );
  CKBD0BWP12T30P140 U1612 ( .I(clk), .Z(n1289) );
  CKBD0BWP12T30P140 U1613 ( .I(clk), .Z(n1279) );
  CKBD0BWP12T30P140 U1614 ( .I(clk), .Z(n1280) );
  CKBD0BWP12T30P140 U1615 ( .I(clk), .Z(n1282) );
  CKBD0BWP12T30P140 U1616 ( .I(n1232), .Z(n1283) );
  CKBD0BWP12T30P140 U1617 ( .I(clk), .Z(n1288) );
  CKBD0BWP12T30P140 U1618 ( .I(clk), .Z(n1281) );
  CKBD0BWP12T30P140 U1619 ( .I(clk), .Z(n1277) );
  CKBD0BWP12T30P140 U1620 ( .I(clk), .Z(n1278) );
  CKBD0BWP12T30P140 U1621 ( .I(clk), .Z(n1285) );
  CKBD0BWP12T30P140 U1622 ( .I(clk), .Z(n1286) );
  CKBD0BWP12T30P140 U1623 ( .I(clk), .Z(n1287) );
  CKBD0BWP12T30P140 U1624 ( .I(clk), .Z(n1276) );
  CKBD0BWP12T30P140 U1625 ( .I(clk), .Z(n1274) );
  CKBD0BWP12T30P140 U1626 ( .I(n1233), .Z(n1273) );
  CKBD0BWP12T30P140 U1627 ( .I(clk), .Z(n1290) );
  CKBD0BWP12T30P140 U1628 ( .I(n1233), .Z(n1272) );
  CKBD0BWP12T30P140 U1629 ( .I(clk), .Z(n1275) );
  INVD0BWP12T30P140 U1630 ( .I(rst), .ZN(n404) );
  CKBD0BWP12T30P140 U1631 ( .I(n404), .Z(n1238) );
  CKBD0BWP12T30P140 U1632 ( .I(n404), .Z(n1239) );
  NR3D0BWP12T30P140 U1633 ( .A1(ch_irq_status_o[0]), .A2(ch_irq_status_o[6]), 
        .A3(ch_irq_status_o[7]), .ZN(n1237) );
  NR4D0BWP12T30P140 U1634 ( .A1(ctr_irq_status_o), .A2(ch_irq_status_o[1]), 
        .A3(ch_irq_status_o[2]), .A4(ch_irq_status_o[3]), .ZN(n1236) );
  ND4D0BWP12T30P140 U1635 ( .A1(n1237), .A2(n1236), .A3(n1235), .A4(n1234), 
        .ZN(irq) );
endmodule

