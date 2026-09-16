/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:01:44 2026
/////////////////////////////////////////////////////////////


module calendar ( CLK, RST, Hours, Mins, Secs );
  output [5:0] Hours;
  output [5:0] Mins;
  output [5:0] Secs;
  input CLK, RST;
  wire   N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
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
         n321, n322, n323, n324;
  wire   [16:0] total_secs;
  wire   [5:0] h;
  wire   [5:0] m;
  wire   [5:2] s;

  DFCNQD1BWP12T30P140 Mins_reg_5_ ( .D(m[5]), .CP(CLK), .CDN(n7), .Q(Mins[5])
         );
  DFCNQD1BWP12T30P140 Mins_reg_4_ ( .D(m[4]), .CP(n324), .CDN(n323), .Q(
        Mins[4]) );
  DFCNQD1BWP12T30P140 Mins_reg_3_ ( .D(m[3]), .CP(CLK), .CDN(n323), .Q(Mins[3]) );
  DFCNQD1BWP12T30P140 Mins_reg_2_ ( .D(m[2]), .CP(n324), .CDN(n323), .Q(
        Mins[2]) );
  DFCNQD1BWP12T30P140 Mins_reg_1_ ( .D(m[1]), .CP(CLK), .CDN(n323), .Q(Mins[1]) );
  DFCNQD1BWP12T30P140 Mins_reg_0_ ( .D(m[0]), .CP(n324), .CDN(n7), .Q(Mins[0])
         );
  DFCNQD1BWP12T30P140 Secs_reg_5_ ( .D(s[5]), .CP(CLK), .CDN(n323), .Q(Secs[5]) );
  DFCNQD1BWP12T30P140 Secs_reg_4_ ( .D(s[4]), .CP(n324), .CDN(n7), .Q(Secs[4])
         );
  DFCNQD1BWP12T30P140 Secs_reg_3_ ( .D(s[3]), .CP(n324), .CDN(n323), .Q(
        Secs[3]) );
  DFCNQD1BWP12T30P140 Secs_reg_2_ ( .D(s[2]), .CP(n324), .CDN(n323), .Q(
        Secs[2]) );
  DFCNQD1BWP12T30P140 Secs_reg_1_ ( .D(total_secs[1]), .CP(n324), .CDN(n323), 
        .Q(Secs[1]) );
  DFCNQD1BWP12T30P140 Secs_reg_0_ ( .D(total_secs[0]), .CP(n324), .CDN(n323), 
        .Q(Secs[0]) );
  DFCNQD1BWP12T30P140 Hours_reg_5_ ( .D(h[5]), .CP(n324), .CDN(n323), .Q(
        Hours[5]) );
  DFCNQD1BWP12T30P140 Hours_reg_4_ ( .D(h[4]), .CP(n324), .CDN(n323), .Q(
        Hours[4]) );
  DFCNQD1BWP12T30P140 Hours_reg_3_ ( .D(h[3]), .CP(n324), .CDN(n323), .Q(
        Hours[3]) );
  DFCNQD1BWP12T30P140 Hours_reg_2_ ( .D(h[2]), .CP(n324), .CDN(n323), .Q(
        Hours[2]) );
  DFCNQD1BWP12T30P140 Hours_reg_1_ ( .D(h[1]), .CP(n324), .CDN(n323), .Q(
        Hours[1]) );
  DFCNQD1BWP12T30P140 Hours_reg_0_ ( .D(h[0]), .CP(n324), .CDN(n323), .Q(
        Hours[0]) );
  DFCNQD1BWP12T30P140 total_secs_reg_7_ ( .D(N40), .CP(CLK), .CDN(n7), .Q(
        total_secs[7]) );
  DFCNQD1BWP12T30P140 total_secs_reg_13_ ( .D(N46), .CP(n324), .CDN(n323), .Q(
        total_secs[13]) );
  DFCNQD1BWP12T30P140 total_secs_reg_9_ ( .D(N42), .CP(CLK), .CDN(n7), .Q(
        total_secs[9]) );
  DFCNQD1BWP12T30P140 total_secs_reg_16_ ( .D(N49), .CP(CLK), .CDN(n7), .Q(
        total_secs[16]) );
  DFCNQD1BWP12T30P140 total_secs_reg_3_ ( .D(N36), .CP(CLK), .CDN(n323), .Q(
        total_secs[3]) );
  DFCNQD1BWP12T30P140 total_secs_reg_6_ ( .D(N39), .CP(CLK), .CDN(n7), .Q(
        total_secs[6]) );
  DFCNQD1BWP12T30P140 total_secs_reg_5_ ( .D(N38), .CP(CLK), .CDN(n323), .Q(
        total_secs[5]) );
  DFCNQD1BWP12T30P140 total_secs_reg_2_ ( .D(N35), .CP(CLK), .CDN(n7), .Q(
        total_secs[2]) );
  DFCNQD1BWP12T30P140 total_secs_reg_15_ ( .D(N48), .CP(n324), .CDN(n7), .Q(
        total_secs[15]) );
  DFCNQD1BWP12T30P140 total_secs_reg_4_ ( .D(N37), .CP(CLK), .CDN(n7), .Q(
        total_secs[4]) );
  DFCNQD1BWP12T30P140 total_secs_reg_1_ ( .D(N34), .CP(CLK), .CDN(n7), .Q(
        total_secs[1]) );
  DFCNQD1BWP12T30P140 total_secs_reg_11_ ( .D(N44), .CP(CLK), .CDN(n7), .Q(
        total_secs[11]) );
  DFCNQD1BWP12T30P140 total_secs_reg_8_ ( .D(N41), .CP(CLK), .CDN(n7), .Q(
        total_secs[8]) );
  DFCNQD1BWP12T30P140 total_secs_reg_0_ ( .D(N33), .CP(n324), .CDN(n7), .Q(
        total_secs[0]) );
  DFCNQD1BWP12T30P140 total_secs_reg_12_ ( .D(N45), .CP(CLK), .CDN(n7), .Q(
        total_secs[12]) );
  DFCNQD1BWP12T30P140 total_secs_reg_14_ ( .D(N47), .CP(n324), .CDN(n7), .Q(
        total_secs[14]) );
  DFCNQD1BWP12T30P140 total_secs_reg_10_ ( .D(N43), .CP(CLK), .CDN(n7), .Q(
        total_secs[10]) );
  INVD0BWP12T30P140 U29 ( .I(total_secs[9]), .ZN(n315) );
  INVD0BWP12T30P140 U30 ( .I(total_secs[7]), .ZN(n319) );
  INVD0BWP12T30P140 U31 ( .I(total_secs[5]), .ZN(n299) );
  INVD0BWP12T30P140 U32 ( .I(total_secs[3]), .ZN(n271) );
  ND3D0BWP12T30P140 U33 ( .A1(total_secs[2]), .A2(total_secs[0]), .A3(
        total_secs[1]), .ZN(n110) );
  NR2D0BWP12T30P140 U34 ( .A1(n271), .A2(n110), .ZN(n281) );
  ND2D0BWP12T30P140 U35 ( .A1(total_secs[4]), .A2(n281), .ZN(n291) );
  NR2D0BWP12T30P140 U36 ( .A1(n299), .A2(n291), .ZN(n294) );
  ND2D0BWP12T30P140 U37 ( .A1(total_secs[6]), .A2(n294), .ZN(n318) );
  NR2D0BWP12T30P140 U38 ( .A1(n319), .A2(n318), .ZN(n317) );
  ND2D0BWP12T30P140 U39 ( .A1(total_secs[8]), .A2(n317), .ZN(n314) );
  NR2D0BWP12T30P140 U40 ( .A1(n315), .A2(n314), .ZN(n313) );
  ND2D0BWP12T30P140 U41 ( .A1(total_secs[10]), .A2(n313), .ZN(n113) );
  OA21D0BWP12T30P140 U42 ( .A1(total_secs[10]), .A2(n313), .B(n113), .Z(N43)
         );
  INVD0BWP12T30P140 U43 ( .I(total_secs[0]), .ZN(N33) );
  INR2D1BWP12T30P140 U44 ( .A1(total_secs[1]), .B1(N33), .ZN(n322) );
  OA21D0BWP12T30P140 U45 ( .A1(total_secs[2]), .A2(n322), .B(n110), .Z(N35) );
  INVD0BWP12T30P140 U46 ( .I(total_secs[13]), .ZN(n280) );
  INVD0BWP12T30P140 U47 ( .I(total_secs[11]), .ZN(n126) );
  NR2D0BWP12T30P140 U48 ( .A1(n126), .A2(n113), .ZN(n112) );
  ND2D0BWP12T30P140 U49 ( .A1(total_secs[12]), .A2(n112), .ZN(n279) );
  NR2D0BWP12T30P140 U50 ( .A1(n280), .A2(n279), .ZN(n278) );
  ND2D0BWP12T30P140 U51 ( .A1(total_secs[14]), .A2(n278), .ZN(n286) );
  INVD0BWP12T30P140 U52 ( .I(total_secs[15]), .ZN(n287) );
  ND4D0BWP12T30P140 U53 ( .A1(total_secs[12]), .A2(total_secs[8]), .A3(n287), 
        .A4(n319), .ZN(n10) );
  NR3D0BWP12T30P140 U54 ( .A1(total_secs[11]), .A2(total_secs[9]), .A3(
        total_secs[10]), .ZN(n8) );
  ND4D0BWP12T30P140 U55 ( .A1(n8), .A2(total_secs[16]), .A3(total_secs[14]), 
        .A4(n280), .ZN(n9) );
  NR3D0BWP12T30P140 U56 ( .A1(n318), .A2(n10), .A3(n9), .ZN(n316) );
  INVD0BWP12T30P140 U57 ( .I(n316), .ZN(n111) );
  OA211D0BWP12T30P140 U58 ( .A1(total_secs[14]), .A2(n278), .B(n286), .C(n111), 
        .Z(N47) );
  INVD0BWP12T30P140 U59 ( .I(total_secs[16]), .ZN(n289) );
  ND3D0BWP12T30P140 U60 ( .A1(total_secs[16]), .A2(total_secs[14]), .A3(
        total_secs[15]), .ZN(n114) );
  ND4D0BWP12T30P140 U61 ( .A1(total_secs[12]), .A2(total_secs[13]), .A3(
        total_secs[14]), .A4(n114), .ZN(n20) );
  NR2D0BWP12T30P140 U62 ( .A1(n280), .A2(n114), .ZN(n11) );
  NR2D0BWP12T30P140 U63 ( .A1(n11), .A2(n287), .ZN(n18) );
  ND2D0BWP12T30P140 U64 ( .A1(total_secs[13]), .A2(n114), .ZN(n16) );
  AOI221D0BWP12T30P140 U65 ( .A1(n287), .A2(n289), .B1(n20), .B2(n289), .C(n11), .ZN(n13) );
  ND2D0BWP12T30P140 U66 ( .A1(total_secs[12]), .A2(n13), .ZN(n15) );
  NR2D0BWP12T30P140 U67 ( .A1(n16), .A2(n15), .ZN(n14) );
  IND2D1BWP12T30P140 U68 ( .A1(n11), .B1(total_secs[14]), .ZN(n12) );
  XNR2D0BWP12T30P140 U69 ( .A1(n14), .A2(n12), .ZN(n29) );
  OAI21D0BWP12T30P140 U70 ( .A1(total_secs[12]), .A2(n13), .B(n15), .ZN(n24)
         );
  AOI21D0BWP12T30P140 U71 ( .A1(n16), .A2(n15), .B(n14), .ZN(n22) );
  IND3D1BWP12T30P140 U72 ( .A1(n24), .B1(total_secs[11]), .B2(n22), .ZN(n28)
         );
  INR2D1BWP12T30P140 U73 ( .A1(n29), .B1(n28), .ZN(n17) );
  AOI21D0BWP12T30P140 U74 ( .A1(n18), .A2(n20), .B(n17), .ZN(n19) );
  OAI21D0BWP12T30P140 U75 ( .A1(n289), .A2(n20), .B(n19), .ZN(n25) );
  MUX2ND0BWP12T30P140 U76 ( .I0(total_secs[11]), .I1(n126), .S(n25), .ZN(n34)
         );
  ND2D0BWP12T30P140 U77 ( .A1(total_secs[11]), .A2(n25), .ZN(n23) );
  NR2D0BWP12T30P140 U78 ( .A1(n24), .A2(n23), .ZN(n21) );
  XNR2D0BWP12T30P140 U79 ( .A1(n22), .A2(n21), .ZN(n40) );
  INVD0BWP12T30P140 U80 ( .I(n40), .ZN(n31) );
  CKXOR2D0BWP12T30P140 U81 ( .A1(n24), .A2(n23), .Z(n36) );
  INVD0BWP12T30P140 U82 ( .I(total_secs[10]), .ZN(n32) );
  INR3D1BWP12T30P140 U83 ( .A1(n36), .B1(n32), .B2(n34), .ZN(n41) );
  INVD0BWP12T30P140 U84 ( .I(n25), .ZN(n27) );
  ND2D0BWP12T30P140 U85 ( .A1(n29), .A2(n28), .ZN(n26) );
  OAI31D0BWP12T30P140 U86 ( .A1(n29), .A2(n28), .A3(n27), .B(n26), .ZN(n30) );
  AO21D0BWP12T30P140 U87 ( .A1(n31), .A2(n41), .B(n30), .Z(n38) );
  ND2D0BWP12T30P140 U88 ( .A1(n38), .A2(total_secs[10]), .ZN(n33) );
  XNR2D0BWP12T30P140 U89 ( .A1(n34), .A2(n33), .ZN(n43) );
  MUX2ND0BWP12T30P140 U90 ( .I0(total_secs[10]), .I1(n32), .S(n38), .ZN(n45)
         );
  NR3D0BWP12T30P140 U91 ( .A1(n315), .A2(n45), .A3(n43), .ZN(n50) );
  NR2D0BWP12T30P140 U92 ( .A1(n34), .A2(n33), .ZN(n35) );
  XNR2D0BWP12T30P140 U93 ( .A1(n36), .A2(n35), .ZN(n49) );
  INR2D1BWP12T30P140 U94 ( .A1(n50), .B1(n49), .ZN(n37) );
  AOI31D0BWP12T30P140 U95 ( .A1(n41), .A2(n38), .A3(n40), .B(n37), .ZN(n39) );
  OAI21D0BWP12T30P140 U96 ( .A1(n41), .A2(n40), .B(n39), .ZN(n47) );
  ND2D0BWP12T30P140 U97 ( .A1(total_secs[9]), .A2(n47), .ZN(n44) );
  NR2D0BWP12T30P140 U98 ( .A1(n45), .A2(n44), .ZN(n42) );
  CKXOR2D0BWP12T30P140 U99 ( .A1(n43), .A2(n42), .Z(n60) );
  CKXOR2D0BWP12T30P140 U100 ( .A1(n45), .A2(n44), .Z(n53) );
  MUX2ND0BWP12T30P140 U101 ( .I0(n315), .I1(total_secs[9]), .S(n47), .ZN(n55)
         );
  ND3D0BWP12T30P140 U102 ( .A1(total_secs[8]), .A2(n53), .A3(n55), .ZN(n51) );
  NR2D0BWP12T30P140 U103 ( .A1(n60), .A2(n51), .ZN(n46) );
  AOI31D0BWP12T30P140 U104 ( .A1(n50), .A2(n47), .A3(n49), .B(n46), .ZN(n48)
         );
  OAI21D0BWP12T30P140 U105 ( .A1(n50), .A2(n49), .B(n48), .ZN(n59) );
  INVD0BWP12T30P140 U106 ( .I(n51), .ZN(n58) );
  INVD0BWP12T30P140 U107 ( .I(total_secs[8]), .ZN(n120) );
  INR2D1BWP12T30P140 U108 ( .A1(n59), .B1(n120), .ZN(n54) );
  ND2D0BWP12T30P140 U109 ( .A1(n55), .A2(n54), .ZN(n52) );
  CKXOR2D0BWP12T30P140 U110 ( .A1(n53), .A2(n52), .Z(n71) );
  CKXOR2D0BWP12T30P140 U111 ( .A1(n55), .A2(n54), .Z(n64) );
  MUX2ND0BWP12T30P140 U112 ( .I0(total_secs[8]), .I1(n120), .S(n59), .ZN(n66)
         );
  INVD0BWP12T30P140 U113 ( .I(n66), .ZN(n62) );
  AN3D0BWP12T30P140 U114 ( .A1(n64), .A2(total_secs[7]), .A3(n62), .Z(n69) );
  IND2D1BWP12T30P140 U115 ( .A1(n71), .B1(n69), .ZN(n56) );
  OAI21D0BWP12T30P140 U116 ( .A1(n60), .A2(n58), .B(n56), .ZN(n57) );
  AOI31D0BWP12T30P140 U117 ( .A1(n60), .A2(n59), .A3(n58), .B(n57), .ZN(n61)
         );
  MUX2ND0BWP12T30P140 U118 ( .I0(n319), .I1(total_secs[7]), .S(n61), .ZN(n73)
         );
  INVD0BWP12T30P140 U119 ( .I(n61), .ZN(n70) );
  NR2D0BWP12T30P140 U120 ( .A1(n61), .A2(n319), .ZN(n65) );
  ND2D0BWP12T30P140 U121 ( .A1(n62), .A2(n65), .ZN(n63) );
  CKXOR2D0BWP12T30P140 U122 ( .A1(n64), .A2(n63), .Z(n79) );
  INVD0BWP12T30P140 U123 ( .I(total_secs[6]), .ZN(n172) );
  CKXOR2D0BWP12T30P140 U124 ( .A1(n66), .A2(n65), .Z(n75) );
  NR3D0BWP12T30P140 U125 ( .A1(n172), .A2(n73), .A3(n75), .ZN(n80) );
  IND2D1BWP12T30P140 U126 ( .A1(n79), .B1(n80), .ZN(n67) );
  OAI21D0BWP12T30P140 U127 ( .A1(n71), .A2(n69), .B(n67), .ZN(n68) );
  AO31D0BWP12T30P140 U128 ( .A1(n71), .A2(n70), .A3(n69), .B(n68), .Z(n77) );
  ND2D0BWP12T30P140 U129 ( .A1(n77), .A2(total_secs[6]), .ZN(n72) );
  XNR2D0BWP12T30P140 U130 ( .A1(n73), .A2(n72), .ZN(n82) );
  MUX2ND0BWP12T30P140 U131 ( .I0(total_secs[6]), .I1(n172), .S(n77), .ZN(n84)
         );
  NR3D0BWP12T30P140 U132 ( .A1(n299), .A2(n82), .A3(n84), .ZN(n89) );
  NR2D0BWP12T30P140 U133 ( .A1(n73), .A2(n72), .ZN(n74) );
  CKXOR2D0BWP12T30P140 U134 ( .A1(n75), .A2(n74), .Z(n88) );
  INR2D1BWP12T30P140 U135 ( .A1(n89), .B1(n88), .ZN(n76) );
  AOI31D0BWP12T30P140 U136 ( .A1(n80), .A2(n77), .A3(n79), .B(n76), .ZN(n78)
         );
  OAI21D0BWP12T30P140 U137 ( .A1(n80), .A2(n79), .B(n78), .ZN(n86) );
  ND2D0BWP12T30P140 U138 ( .A1(total_secs[5]), .A2(n86), .ZN(n83) );
  NR2D0BWP12T30P140 U139 ( .A1(n84), .A2(n83), .ZN(n81) );
  CKXOR2D0BWP12T30P140 U140 ( .A1(n82), .A2(n81), .Z(n100) );
  MUX2ND0BWP12T30P140 U141 ( .I0(n299), .I1(total_secs[5]), .S(n86), .ZN(n94)
         );
  CKXOR2D0BWP12T30P140 U142 ( .A1(n84), .A2(n83), .Z(n92) );
  ND3D0BWP12T30P140 U143 ( .A1(total_secs[4]), .A2(n94), .A3(n92), .ZN(n90) );
  NR2D0BWP12T30P140 U144 ( .A1(n100), .A2(n90), .ZN(n85) );
  AOI31D0BWP12T30P140 U145 ( .A1(n89), .A2(n86), .A3(n88), .B(n85), .ZN(n87)
         );
  OAI21D0BWP12T30P140 U146 ( .A1(n89), .A2(n88), .B(n87), .ZN(n99) );
  INVD0BWP12T30P140 U147 ( .I(n90), .ZN(n98) );
  AN2D0BWP12T30P140 U148 ( .A1(n99), .A2(total_secs[4]), .Z(n93) );
  ND2D0BWP12T30P140 U149 ( .A1(n94), .A2(n93), .ZN(n91) );
  CKXOR2D0BWP12T30P140 U150 ( .A1(n92), .A2(n91), .Z(n107) );
  CKXOR2D0BWP12T30P140 U151 ( .A1(n94), .A2(n93), .Z(n102) );
  INVD0BWP12T30P140 U152 ( .I(total_secs[4]), .ZN(n297) );
  MUX2ND0BWP12T30P140 U153 ( .I0(total_secs[4]), .I1(n297), .S(n99), .ZN(n104)
         );
  INVD0BWP12T30P140 U154 ( .I(n104), .ZN(n95) );
  AN3D0BWP12T30P140 U155 ( .A1(n102), .A2(total_secs[3]), .A3(n95), .Z(n108)
         );
  IND2D1BWP12T30P140 U156 ( .A1(n107), .B1(n108), .ZN(n96) );
  OAI21D0BWP12T30P140 U157 ( .A1(n100), .A2(n98), .B(n96), .ZN(n97) );
  AO31D0BWP12T30P140 U158 ( .A1(n100), .A2(n99), .A3(n98), .B(n97), .Z(n105)
         );
  MUX2ND0BWP12T30P140 U159 ( .I0(total_secs[3]), .I1(n271), .S(n105), .ZN(n109) );
  ND2D0BWP12T30P140 U160 ( .A1(total_secs[3]), .A2(n105), .ZN(n103) );
  NR2D0BWP12T30P140 U161 ( .A1(n104), .A2(n103), .ZN(n101) );
  XNR2D0BWP12T30P140 U162 ( .A1(n102), .A2(n101), .ZN(n284) );
  CKXOR2D0BWP12T30P140 U163 ( .A1(n104), .A2(n103), .Z(n320) );
  IND3D1BWP12T30P140 U164 ( .A1(n109), .B1(total_secs[2]), .B2(n320), .ZN(n283) );
  NR2D0BWP12T30P140 U165 ( .A1(n284), .A2(n283), .ZN(n282) );
  AOI31D0BWP12T30P140 U166 ( .A1(n108), .A2(n105), .A3(n107), .B(n282), .ZN(
        n106) );
  OAI21D0BWP12T30P140 U167 ( .A1(n108), .A2(n107), .B(n106), .ZN(n293) );
  ND2D0BWP12T30P140 U168 ( .A1(total_secs[2]), .A2(n293), .ZN(n292) );
  NR2D0BWP12T30P140 U169 ( .A1(n109), .A2(n292), .ZN(n321) );
  AOI21D0BWP12T30P140 U170 ( .A1(n109), .A2(n292), .B(n321), .ZN(s[3]) );
  OA211D0BWP12T30P140 U171 ( .A1(total_secs[12]), .A2(n112), .B(n279), .C(n111), .Z(N45) );
  AOI21D0BWP12T30P140 U172 ( .A1(n271), .A2(n110), .B(n281), .ZN(N36) );
  OA211D0BWP12T30P140 U173 ( .A1(total_secs[8]), .A2(n317), .B(n314), .C(n111), 
        .Z(N41) );
  AOI21D0BWP12T30P140 U174 ( .A1(n126), .A2(n113), .B(n112), .ZN(N44) );
  NR4D0BWP12T30P140 U175 ( .A1(total_secs[11]), .A2(total_secs[9]), .A3(
        total_secs[10]), .A4(total_secs[12]), .ZN(n115) );
  AOI21D0BWP12T30P140 U176 ( .A1(n115), .A2(n280), .B(n114), .ZN(h[5]) );
  AOI21D0BWP12T30P140 U177 ( .A1(n115), .A2(h[5]), .B(n280), .ZN(n134) );
  ND2D0BWP12T30P140 U178 ( .A1(h[5]), .A2(n315), .ZN(n121) );
  NR2D0BWP12T30P140 U179 ( .A1(total_secs[10]), .A2(n121), .ZN(n125) );
  ND2D0BWP12T30P140 U180 ( .A1(n125), .A2(n126), .ZN(n116) );
  AOI22D0BWP12T30P140 U181 ( .A1(total_secs[12]), .A2(n116), .B1(n115), .B2(
        h[5]), .ZN(n139) );
  OAI21D0BWP12T30P140 U182 ( .A1(h[5]), .A2(n315), .B(n121), .ZN(n124) );
  NR2D0BWP12T30P140 U183 ( .A1(total_secs[8]), .A2(n124), .ZN(n122) );
  INVD0BWP12T30P140 U184 ( .I(n122), .ZN(n117) );
  NR3D0BWP12T30P140 U185 ( .A1(n117), .A2(total_secs[10]), .A3(total_secs[11]), 
        .ZN(n127) );
  ND2D0BWP12T30P140 U186 ( .A1(n139), .A2(n127), .ZN(n136) );
  ND2D0BWP12T30P140 U187 ( .A1(n134), .A2(n136), .ZN(n130) );
  INVD0BWP12T30P140 U188 ( .I(h[5]), .ZN(n119) );
  ND3D0BWP12T30P140 U189 ( .A1(n119), .A2(total_secs[14]), .A3(total_secs[15]), 
        .ZN(n118) );
  OAI22D0BWP12T30P140 U190 ( .A1(h[5]), .A2(n289), .B1(n130), .B2(n118), .ZN(
        h[4]) );
  INVD0BWP12T30P140 U191 ( .I(h[4]), .ZN(n137) );
  ND2D0BWP12T30P140 U192 ( .A1(total_secs[14]), .A2(n119), .ZN(n132) );
  NR3D0BWP12T30P140 U193 ( .A1(n137), .A2(n132), .A3(n130), .ZN(n143) );
  ND2D0BWP12T30P140 U194 ( .A1(total_secs[15]), .A2(n119), .ZN(n142) );
  OAI22D0BWP12T30P140 U195 ( .A1(n120), .A2(h[4]), .B1(n137), .B2(
        total_secs[8]), .ZN(n183) );
  INVD0BWP12T30P140 U196 ( .I(n183), .ZN(n154) );
  AO21D0BWP12T30P140 U197 ( .A1(n121), .A2(total_secs[10]), .B(n125), .Z(n123)
         );
  ND2D0BWP12T30P140 U198 ( .A1(n122), .A2(h[4]), .ZN(n151) );
  NR2D0BWP12T30P140 U199 ( .A1(total_secs[10]), .A2(n151), .ZN(n128) );
  AOI21D0BWP12T30P140 U200 ( .A1(n123), .A2(n151), .B(n128), .ZN(n155) );
  OAI21D0BWP12T30P140 U201 ( .A1(total_secs[8]), .A2(n137), .B(n124), .ZN(n150) );
  ND4D0BWP12T30P140 U202 ( .A1(n154), .A2(n155), .A3(n319), .A4(n150), .ZN(
        n144) );
  MUX2ND0BWP12T30P140 U203 ( .I0(total_secs[11]), .I1(n126), .S(n125), .ZN(
        n129) );
  ND2D0BWP12T30P140 U204 ( .A1(n127), .A2(h[4]), .ZN(n135) );
  OAI21D0BWP12T30P140 U205 ( .A1(n129), .A2(n128), .B(n135), .ZN(n146) );
  NR2D0BWP12T30P140 U206 ( .A1(n144), .A2(n146), .ZN(n147) );
  OR2D0BWP12T30P140 U207 ( .A1(n130), .A2(n137), .Z(n131) );
  AOI21D0BWP12T30P140 U208 ( .A1(n132), .A2(n131), .B(n143), .ZN(n162) );
  INVD0BWP12T30P140 U209 ( .I(n162), .ZN(n161) );
  AOI21D0BWP12T30P140 U210 ( .A1(n136), .A2(h[4]), .B(n134), .ZN(n133) );
  AO31D0BWP12T30P140 U211 ( .A1(n136), .A2(h[4]), .A3(n134), .B(n133), .Z(n160) );
  NR3D0BWP12T30P140 U212 ( .A1(n147), .A2(n161), .A3(n160), .ZN(n140) );
  INVD0BWP12T30P140 U213 ( .I(n135), .ZN(n138) );
  OAI22D0BWP12T30P140 U214 ( .A1(n139), .A2(n138), .B1(n137), .B2(n136), .ZN(
        n148) );
  AOI22D0BWP12T30P140 U215 ( .A1(n140), .A2(n148), .B1(n143), .B2(n142), .ZN(
        n141) );
  OAI21D0BWP12T30P140 U216 ( .A1(n143), .A2(n142), .B(n141), .ZN(h[3]) );
  INVD0BWP12T30P140 U217 ( .I(h[3]), .ZN(n152) );
  NR2D0BWP12T30P140 U218 ( .A1(n144), .A2(n152), .ZN(n156) );
  INVD0BWP12T30P140 U219 ( .I(n156), .ZN(n145) );
  AOI22D0BWP12T30P140 U220 ( .A1(n147), .A2(h[3]), .B1(n146), .B2(n145), .ZN(
        n165) );
  NR2D0BWP12T30P140 U221 ( .A1(n147), .A2(n152), .ZN(n149) );
  ND2D0BWP12T30P140 U222 ( .A1(n149), .A2(n148), .ZN(n159) );
  OAI21D0BWP12T30P140 U223 ( .A1(n149), .A2(n148), .B(n159), .ZN(n200) );
  ND2D0BWP12T30P140 U224 ( .A1(n319), .A2(h[3]), .ZN(n182) );
  NR2D0BWP12T30P140 U225 ( .A1(n183), .A2(n182), .ZN(n181) );
  ND2D0BWP12T30P140 U226 ( .A1(n181), .A2(n150), .ZN(n157) );
  AOI32D0BWP12T30P140 U227 ( .A1(n151), .A2(n157), .A3(n150), .B1(n181), .B2(
        n157), .ZN(n171) );
  OAI22D0BWP12T30P140 U228 ( .A1(n319), .A2(h[3]), .B1(n152), .B2(
        total_secs[7]), .ZN(n186) );
  INVD0BWP12T30P140 U229 ( .I(n186), .ZN(n153) );
  ND2D0BWP12T30P140 U230 ( .A1(n154), .A2(n153), .ZN(n296) );
  NR3D0BWP12T30P140 U231 ( .A1(total_secs[6]), .A2(n171), .A3(n296), .ZN(n166)
         );
  INVD0BWP12T30P140 U232 ( .I(n155), .ZN(n158) );
  AOI21D0BWP12T30P140 U233 ( .A1(n158), .A2(n157), .B(n156), .ZN(n169) );
  ND2D0BWP12T30P140 U234 ( .A1(n166), .A2(n169), .ZN(n167) );
  ND2D0BWP12T30P140 U235 ( .A1(n160), .A2(n159), .ZN(n173) );
  ND2D0BWP12T30P140 U236 ( .A1(n167), .A2(n173), .ZN(n163) );
  NR2D0BWP12T30P140 U237 ( .A1(n160), .A2(n159), .ZN(n177) );
  MUX2ND0BWP12T30P140 U238 ( .I0(n162), .I1(n161), .S(n177), .ZN(n168) );
  OAI31D0BWP12T30P140 U239 ( .A1(n165), .A2(n200), .A3(n163), .B(n168), .ZN(
        h[2]) );
  ND2D0BWP12T30P140 U240 ( .A1(n167), .A2(h[2]), .ZN(n164) );
  IND3D1BWP12T30P140 U241 ( .A1(n165), .B1(h[2]), .B2(n167), .ZN(n201) );
  IOA21D0BWP12T30P140 U242 ( .A1(n165), .A2(n164), .B(n201), .ZN(n311) );
  AN2D0BWP12T30P140 U243 ( .A1(n166), .A2(h[2]), .Z(n170) );
  OAI22D0BWP12T30P140 U244 ( .A1(n169), .A2(n170), .B1(n168), .B2(n167), .ZN(
        n303) );
  IND2D1BWP12T30P140 U245 ( .A1(n311), .B1(n303), .ZN(n304) );
  NR2D0BWP12T30P140 U246 ( .A1(n200), .A2(n304), .ZN(n179) );
  ND2D0BWP12T30P140 U247 ( .A1(n172), .A2(h[2]), .ZN(n187) );
  AOI221D0BWP12T30P140 U248 ( .A1(n296), .A2(n171), .B1(n187), .B2(n171), .C(
        n170), .ZN(n312) );
  OAI21D0BWP12T30P140 U249 ( .A1(h[2]), .A2(n172), .B(n187), .ZN(n295) );
  NR3D0BWP12T30P140 U250 ( .A1(total_secs[5]), .A2(n296), .A3(n295), .ZN(n300)
         );
  ND2D0BWP12T30P140 U251 ( .A1(n312), .A2(n300), .ZN(n196) );
  NR2D0BWP12T30P140 U252 ( .A1(n200), .A2(n201), .ZN(n176) );
  INVD0BWP12T30P140 U253 ( .I(n173), .ZN(n175) );
  ND2D0BWP12T30P140 U254 ( .A1(n176), .A2(n175), .ZN(n174) );
  OAI31D0BWP12T30P140 U255 ( .A1(n177), .A2(n176), .A3(n175), .B(n174), .ZN(
        n178) );
  AOI21D0BWP12T30P140 U256 ( .A1(n179), .A2(n196), .B(n178), .ZN(n305) );
  INVD0BWP12T30P140 U257 ( .I(n300), .ZN(n190) );
  OAI21D0BWP12T30P140 U258 ( .A1(n305), .A2(n190), .B(n312), .ZN(n180) );
  OAI31D0BWP12T30P140 U259 ( .A1(n305), .A2(n312), .A3(n190), .B(n180), .ZN(
        n212) );
  NR2D0BWP12T30P140 U260 ( .A1(n186), .A2(n187), .ZN(n189) );
  AOI21D0BWP12T30P140 U261 ( .A1(n183), .A2(n182), .B(n181), .ZN(n185) );
  ND2D0BWP12T30P140 U262 ( .A1(n189), .A2(n185), .ZN(n184) );
  OAI21D0BWP12T30P140 U263 ( .A1(n189), .A2(n185), .B(n184), .ZN(n193) );
  NR2D0BWP12T30P140 U264 ( .A1(total_secs[5]), .A2(n305), .ZN(n194) );
  INR2D1BWP12T30P140 U265 ( .A1(n194), .B1(n295), .ZN(n208) );
  AN2D0BWP12T30P140 U266 ( .A1(n187), .A2(n186), .Z(n188) );
  NR2D0BWP12T30P140 U267 ( .A1(n189), .A2(n188), .ZN(n195) );
  ND2D0BWP12T30P140 U268 ( .A1(n208), .A2(n195), .ZN(n192) );
  NR2D0BWP12T30P140 U269 ( .A1(n305), .A2(n190), .ZN(n191) );
  AOI21D0BWP12T30P140 U270 ( .A1(n193), .A2(n192), .B(n191), .ZN(n204) );
  INR2D1BWP12T30P140 U271 ( .A1(n295), .B1(n194), .ZN(n207) );
  MUX2ND0BWP12T30P140 U272 ( .I0(total_secs[5]), .I1(n299), .S(n305), .ZN(n237) );
  XNR2D0BWP12T30P140 U273 ( .A1(n208), .A2(n195), .ZN(n210) );
  NR4D0BWP12T30P140 U274 ( .A1(total_secs[4]), .A2(n207), .A3(n237), .A4(n210), 
        .ZN(n203) );
  ND2D0BWP12T30P140 U275 ( .A1(n204), .A2(n203), .ZN(n205) );
  INR2D1BWP12T30P140 U276 ( .A1(n196), .B1(n305), .ZN(n197) );
  ND2D0BWP12T30P140 U277 ( .A1(n197), .A2(n303), .ZN(n198) );
  OAI21D0BWP12T30P140 U278 ( .A1(n197), .A2(n303), .B(n198), .ZN(n214) );
  AN2D0BWP12T30P140 U279 ( .A1(n311), .A2(n198), .Z(n218) );
  IND2D1BWP12T30P140 U280 ( .A1(n218), .B1(n205), .ZN(n202) );
  NR2D0BWP12T30P140 U281 ( .A1(n311), .A2(n198), .ZN(n215) );
  ND2D0BWP12T30P140 U282 ( .A1(n200), .A2(n201), .ZN(n199) );
  OAI21D0BWP12T30P140 U283 ( .A1(n201), .A2(n200), .B(n199), .ZN(n307) );
  INVD0BWP12T30P140 U284 ( .I(n307), .ZN(n308) );
  XNR2D0BWP12T30P140 U285 ( .A1(n215), .A2(n308), .ZN(n206) );
  OAI31D0BWP12T30P140 U286 ( .A1(n212), .A2(n214), .A3(n202), .B(n206), .ZN(
        n254) );
  ND2D0BWP12T30P140 U287 ( .A1(n205), .A2(n254), .ZN(n211) );
  NR2D0BWP12T30P140 U288 ( .A1(n212), .A2(n211), .ZN(n213) );
  XNR2D0BWP12T30P140 U289 ( .A1(n213), .A2(n214), .ZN(n224) );
  AN2D0BWP12T30P140 U290 ( .A1(n203), .A2(n254), .Z(n209) );
  OA22D0BWP12T30P140 U291 ( .A1(n206), .A2(n205), .B1(n204), .B2(n209), .Z(
        n230) );
  ND2D0BWP12T30P140 U292 ( .A1(n297), .A2(n254), .ZN(n253) );
  NR2D0BWP12T30P140 U293 ( .A1(n237), .A2(n253), .ZN(n236) );
  NR2D0BWP12T30P140 U294 ( .A1(n208), .A2(n207), .ZN(n222) );
  ND2D0BWP12T30P140 U295 ( .A1(n236), .A2(n222), .ZN(n221) );
  AOI21D0BWP12T30P140 U296 ( .A1(n210), .A2(n221), .B(n209), .ZN(n233) );
  CKXOR2D0BWP12T30P140 U297 ( .A1(n212), .A2(n211), .Z(n219) );
  INVD0BWP12T30P140 U298 ( .I(n219), .ZN(n220) );
  NR3D0BWP12T30P140 U299 ( .A1(n230), .A2(n233), .A3(n220), .ZN(n226) );
  ND2D0BWP12T30P140 U300 ( .A1(n224), .A2(n226), .ZN(n225) );
  IND2D1BWP12T30P140 U301 ( .A1(n214), .B1(n213), .ZN(n217) );
  OAI21D0BWP12T30P140 U302 ( .A1(n218), .A2(n215), .B(n217), .ZN(n216) );
  OAI21D0BWP12T30P140 U303 ( .A1(n218), .A2(n217), .B(n216), .ZN(n232) );
  ND2D0BWP12T30P140 U304 ( .A1(n225), .A2(n232), .ZN(m[5]) );
  INR2D1BWP12T30P140 U305 ( .A1(m[5]), .B1(n233), .ZN(n231) );
  INVD0BWP12T30P140 U306 ( .I(n231), .ZN(n229) );
  NR2D0BWP12T30P140 U307 ( .A1(n230), .A2(n229), .ZN(n228) );
  MUX2ND0BWP12T30P140 U308 ( .I0(n220), .I1(n219), .S(n228), .ZN(n241) );
  AOI211D0BWP12T30P140 U309 ( .A1(n233), .A2(n232), .B(n230), .C(n231), .ZN(
        n223) );
  OAI21D0BWP12T30P140 U310 ( .A1(n236), .A2(n222), .B(n221), .ZN(n240) );
  AN2D0BWP12T30P140 U311 ( .A1(n223), .A2(n240), .Z(n243) );
  ND2D0BWP12T30P140 U312 ( .A1(n241), .A2(n243), .ZN(n242) );
  AOI32D0BWP12T30P140 U313 ( .A1(n226), .A2(n225), .A3(m[5]), .B1(n224), .B2(
        n225), .ZN(n227) );
  ND2D0BWP12T30P140 U314 ( .A1(n242), .A2(n227), .ZN(m[4]) );
  AOI21D0BWP12T30P140 U315 ( .A1(n230), .A2(n229), .B(n228), .ZN(n235) );
  AOI21D0BWP12T30P140 U316 ( .A1(n233), .A2(n232), .B(n231), .ZN(n238) );
  ND3D0BWP12T30P140 U317 ( .A1(m[4]), .A2(n240), .A3(n238), .ZN(n247) );
  ND2D0BWP12T30P140 U318 ( .A1(n235), .A2(n247), .ZN(n234) );
  OAI21D0BWP12T30P140 U319 ( .A1(n235), .A2(n247), .B(n234), .ZN(n244) );
  AOI21D0BWP12T30P140 U320 ( .A1(n237), .A2(n253), .B(n236), .ZN(n252) );
  AOI21D0BWP12T30P140 U321 ( .A1(n240), .A2(m[4]), .B(n238), .ZN(n249) );
  ND2D0BWP12T30P140 U322 ( .A1(n240), .A2(m[4]), .ZN(n239) );
  OAI21D0BWP12T30P140 U323 ( .A1(m[4]), .A2(n240), .B(n239), .ZN(n261) );
  NR3D0BWP12T30P140 U324 ( .A1(n252), .A2(n249), .A3(n261), .ZN(n246) );
  ND2D0BWP12T30P140 U325 ( .A1(n244), .A2(n246), .ZN(n245) );
  AOI32D0BWP12T30P140 U326 ( .A1(n243), .A2(n242), .A3(m[4]), .B1(n241), .B2(
        n242), .ZN(n251) );
  ND2D0BWP12T30P140 U327 ( .A1(n245), .A2(n251), .ZN(m[3]) );
  AOI32D0BWP12T30P140 U328 ( .A1(n246), .A2(n245), .A3(m[3]), .B1(n244), .B2(
        n245), .ZN(n257) );
  INVD0BWP12T30P140 U329 ( .I(n247), .ZN(n250) );
  IND2D1BWP12T30P140 U330 ( .A1(n252), .B1(m[3]), .ZN(n260) );
  NR2D0BWP12T30P140 U331 ( .A1(n261), .A2(n260), .ZN(n259) );
  ND2D0BWP12T30P140 U332 ( .A1(n259), .A2(n249), .ZN(n248) );
  OAI31D0BWP12T30P140 U333 ( .A1(n250), .A2(n259), .A3(n249), .B(n248), .ZN(
        n266) );
  IOA21D0BWP12T30P140 U334 ( .A1(n252), .A2(n251), .B(n260), .ZN(n255) );
  OAI21D0BWP12T30P140 U335 ( .A1(n254), .A2(n297), .B(n253), .ZN(n256) );
  INVD0BWP12T30P140 U336 ( .I(n256), .ZN(n258) );
  OR2D0BWP12T30P140 U337 ( .A1(n255), .A2(n258), .Z(n263) );
  NR2D0BWP12T30P140 U338 ( .A1(n261), .A2(n263), .ZN(n268) );
  ND2D0BWP12T30P140 U339 ( .A1(n266), .A2(n268), .ZN(n267) );
  ND2D0BWP12T30P140 U340 ( .A1(n257), .A2(n267), .ZN(m[2]) );
  AOI221D0BWP12T30P140 U341 ( .A1(n258), .A2(n257), .B1(n256), .B2(m[2]), .C(
        n255), .ZN(n269) );
  ND2D0BWP12T30P140 U342 ( .A1(total_secs[3]), .A2(n269), .ZN(n277) );
  INVD0BWP12T30P140 U343 ( .I(m[2]), .ZN(n265) );
  AO21D0BWP12T30P140 U344 ( .A1(n261), .A2(n260), .B(n259), .Z(n264) );
  OAI21D0BWP12T30P140 U345 ( .A1(n265), .A2(n263), .B(n264), .ZN(n262) );
  OAI31D0BWP12T30P140 U346 ( .A1(n265), .A2(n264), .A3(n263), .B(n262), .ZN(
        n272) );
  AOI32D0BWP12T30P140 U347 ( .A1(n268), .A2(n267), .A3(m[2]), .B1(n266), .B2(
        n267), .ZN(n276) );
  OAI21D0BWP12T30P140 U348 ( .A1(n277), .A2(n272), .B(n276), .ZN(m[1]) );
  INVD0BWP12T30P140 U349 ( .I(n269), .ZN(n270) );
  AOI221D0BWP12T30P140 U350 ( .A1(total_secs[3]), .A2(m[1]), .B1(n271), .B2(
        n276), .C(n270), .ZN(n274) );
  INVD0BWP12T30P140 U351 ( .I(n272), .ZN(n273) );
  AOI22D0BWP12T30P140 U352 ( .A1(total_secs[2]), .A2(n274), .B1(n273), .B2(
        n277), .ZN(n275) );
  OAI21D0BWP12T30P140 U353 ( .A1(n277), .A2(n276), .B(n275), .ZN(m[0]) );
  AOI21D0BWP12T30P140 U354 ( .A1(n280), .A2(n279), .B(n278), .ZN(N46) );
  OA21D0BWP12T30P140 U355 ( .A1(total_secs[4]), .A2(n281), .B(n291), .Z(N37)
         );
  INVD0BWP12T30P140 U356 ( .I(n293), .ZN(n285) );
  AOI221D0BWP12T30P140 U357 ( .A1(n285), .A2(n284), .B1(n283), .B2(n284), .C(
        n282), .ZN(s[5]) );
  NR2D0BWP12T30P140 U358 ( .A1(n287), .A2(n286), .ZN(n290) );
  AOI21D0BWP12T30P140 U359 ( .A1(n287), .A2(n286), .B(n290), .ZN(N48) );
  INVD0BWP12T30P140 U360 ( .I(n290), .ZN(n288) );
  AOI221D0BWP12T30P140 U361 ( .A1(total_secs[16]), .A2(n290), .B1(n289), .B2(
        n288), .C(n316), .ZN(N49) );
  AOI21D0BWP12T30P140 U362 ( .A1(n299), .A2(n291), .B(n294), .ZN(N38) );
  OA21D0BWP12T30P140 U363 ( .A1(total_secs[2]), .A2(n293), .B(n292), .Z(s[2])
         );
  OA21D0BWP12T30P140 U364 ( .A1(total_secs[6]), .A2(n294), .B(n318), .Z(N39)
         );
  INVD0BWP12T30P140 U365 ( .I(n305), .ZN(h[1]) );
  NR2D0BWP12T30P140 U366 ( .A1(n296), .A2(n295), .ZN(n298) );
  OAI211D0BWP12T30P140 U367 ( .A1(n299), .A2(h[1]), .B(n298), .C(n297), .ZN(
        n302) );
  OAI21D0BWP12T30P140 U368 ( .A1(n300), .A2(n303), .B(h[1]), .ZN(n301) );
  OAI211D0BWP12T30P140 U369 ( .A1(h[1]), .A2(n303), .B(n302), .C(n301), .ZN(
        n310) );
  NR2D0BWP12T30P140 U370 ( .A1(n305), .A2(n304), .ZN(n306) );
  MUX2ND0BWP12T30P140 U371 ( .I0(n308), .I1(n307), .S(n306), .ZN(n309) );
  OAI31D0BWP12T30P140 U372 ( .A1(n312), .A2(n311), .A3(n310), .B(n309), .ZN(
        h[0]) );
  AOI21D0BWP12T30P140 U373 ( .A1(n315), .A2(n314), .B(n313), .ZN(N42) );
  AOI211D0BWP12T30P140 U374 ( .A1(n319), .A2(n318), .B(n317), .C(n316), .ZN(
        N40) );
  CKBD0BWP12T30P140 U375 ( .I(CLK), .Z(n324) );
  INVD0BWP12T30P140 U376 ( .I(RST), .ZN(n7) );
  CKBD0BWP12T30P140 U377 ( .I(n7), .Z(n323) );
  CKXOR2D0BWP12T30P140 U378 ( .A1(n321), .A2(n320), .Z(s[4]) );
  IAO21D0BWP12T30P140 U379 ( .A1(total_secs[0]), .A2(total_secs[1]), .B(n322), 
        .ZN(N34) );
endmodule

