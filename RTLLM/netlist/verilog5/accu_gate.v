/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:57:26 2026
/////////////////////////////////////////////////////////////


module accu ( CLK, RST_N, DATA_IN, VALID_IN, VALID_OUT, DATA_OUT );
  input [7:0] DATA_IN;
  output [9:0] DATA_OUT;
  input CLK, RST_N, VALID_IN;
  output VALID_OUT;
  wire   N48, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147;
  wire   [1:0] cnt;
  wire   [9:0] accum;

  DFCNQD1BWP12T30P140 DATA_OUT_reg_0_ ( .D(n36), .CP(CLK), .CDN(RST_N), .Q(
        DATA_OUT[0]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_2_ ( .D(n34), .CP(n53), .CDN(n51), .Q(
        DATA_OUT[2]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_3_ ( .D(n33), .CP(CLK), .CDN(RST_N), .Q(
        DATA_OUT[3]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_4_ ( .D(n32), .CP(n53), .CDN(n51), .Q(
        DATA_OUT[4]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_5_ ( .D(n31), .CP(CLK), .CDN(RST_N), .Q(
        DATA_OUT[5]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_6_ ( .D(n30), .CP(n53), .CDN(n51), .Q(
        DATA_OUT[6]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_7_ ( .D(n29), .CP(CLK), .CDN(RST_N), .Q(
        DATA_OUT[7]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_1_ ( .D(n35), .CP(n53), .CDN(n51), .Q(
        DATA_OUT[1]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_8_ ( .D(n28), .CP(CLK), .CDN(RST_N), .Q(
        DATA_OUT[8]) );
  DFCNQD1BWP12T30P140 DATA_OUT_reg_9_ ( .D(n27), .CP(n53), .CDN(n51), .Q(
        DATA_OUT[9]) );
  DFCNQD1BWP12T30P140 VALID_OUT_reg ( .D(N48), .CP(CLK), .CDN(RST_N), .Q(
        VALID_OUT) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n47), .CP(CLK), .CDN(RST_N), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 accum_reg_9_ ( .D(n37), .CP(n53), .CDN(n51), .Q(accum[9]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n48), .CP(CLK), .CDN(RST_N), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 accum_reg_1_ ( .D(n45), .CP(n53), .CDN(n51), .Q(accum[1]) );
  DFCNQD1BWP12T30P140 accum_reg_0_ ( .D(n46), .CP(CLK), .CDN(RST_N), .Q(
        accum[0]) );
  DFCNQD1BWP12T30P140 accum_reg_8_ ( .D(n38), .CP(n53), .CDN(n51), .Q(accum[8]) );
  DFCNQD1BWP12T30P140 accum_reg_2_ ( .D(n44), .CP(CLK), .CDN(RST_N), .Q(
        accum[2]) );
  DFCNQD1BWP12T30P140 accum_reg_4_ ( .D(n42), .CP(n53), .CDN(n51), .Q(accum[4]) );
  DFCNQD1BWP12T30P140 accum_reg_6_ ( .D(n40), .CP(CLK), .CDN(RST_N), .Q(
        accum[6]) );
  DFCNQD1BWP12T30P140 accum_reg_3_ ( .D(n43), .CP(n53), .CDN(n51), .Q(accum[3]) );
  DFCNQD1BWP12T30P140 accum_reg_5_ ( .D(n41), .CP(n53), .CDN(n51), .Q(accum[5]) );
  DFCNQD1BWP12T30P140 accum_reg_7_ ( .D(n39), .CP(n53), .CDN(n51), .Q(accum[7]) );
  INVD0BWP12T30P140 U53 ( .I(RST_N), .ZN(n50) );
  INVD0BWP12T30P140 U54 ( .I(n50), .ZN(n51) );
  INVD0BWP12T30P140 U55 ( .I(CLK), .ZN(n52) );
  INVD0BWP12T30P140 U56 ( .I(n52), .ZN(n53) );
  INVD0BWP12T30P140 U57 ( .I(cnt[1]), .ZN(n74) );
  INR2D1BWP12T30P140 U58 ( .A1(VALID_OUT), .B1(VALID_IN), .ZN(n147) );
  INVD0BWP12T30P140 U59 ( .I(n147), .ZN(n105) );
  ND2D0BWP12T30P140 U60 ( .A1(cnt[0]), .A2(n105), .ZN(n81) );
  NR2D0BWP12T30P140 U61 ( .A1(n74), .A2(n81), .ZN(N48) );
  INVD0BWP12T30P140 U62 ( .I(DATA_OUT[1]), .ZN(n58) );
  INVD0BWP12T30P140 U63 ( .I(DATA_IN[1]), .ZN(n59) );
  ND2D0BWP12T30P140 U64 ( .A1(DATA_IN[0]), .A2(accum[0]), .ZN(n75) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n59), .A2(n75), .B1(n75), .B2(n59), .ZN(n55)
         );
  ND2D0BWP12T30P140 U66 ( .A1(accum[1]), .A2(n55), .ZN(n54) );
  OAI211D0BWP12T30P140 U67 ( .A1(accum[1]), .A2(n55), .B(N48), .C(n54), .ZN(
        n57) );
  NR2D0BWP12T30P140 U68 ( .A1(n147), .A2(N48), .ZN(n133) );
  NR2D0BWP12T30P140 U69 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n62) );
  INVD0BWP12T30P140 U70 ( .I(accum[1]), .ZN(n83) );
  NR2D0BWP12T30P140 U71 ( .A1(n62), .A2(n83), .ZN(n61) );
  NR2D0BWP12T30P140 U72 ( .A1(n62), .A2(n75), .ZN(n77) );
  ND2D0BWP12T30P140 U73 ( .A1(n133), .A2(n82), .ZN(n56) );
  OAI211D0BWP12T30P140 U74 ( .A1(n105), .A2(n58), .B(n57), .C(n56), .ZN(n35)
         );
  INVD0BWP12T30P140 U75 ( .I(DATA_OUT[8]), .ZN(n66) );
  MAOI222D0BWP12T30P140 U76 ( .A(n75), .B(n83), .C(n59), .ZN(n112) );
  ND2D0BWP12T30P140 U77 ( .A1(accum[8]), .A2(n60), .ZN(n68) );
  OAI211D0BWP12T30P140 U78 ( .A1(accum[8]), .A2(n60), .B(N48), .C(n68), .ZN(
        n65) );
  INVD0BWP12T30P140 U79 ( .I(DATA_IN[7]), .ZN(n108) );
  INVD0BWP12T30P140 U80 ( .I(n62), .ZN(n99) );
  ND2D0BWP12T30P140 U81 ( .A1(accum[7]), .A2(n99), .ZN(n107) );
  INVD0BWP12T30P140 U82 ( .I(accum[6]), .ZN(n106) );
  NR2D0BWP12T30P140 U83 ( .A1(n62), .A2(n106), .ZN(n101) );
  INVD0BWP12T30P140 U84 ( .I(DATA_IN[5]), .ZN(n131) );
  ND2D0BWP12T30P140 U85 ( .A1(accum[5]), .A2(n99), .ZN(n130) );
  INVD0BWP12T30P140 U86 ( .I(accum[4]), .ZN(n98) );
  NR2D0BWP12T30P140 U87 ( .A1(n62), .A2(n98), .ZN(n94) );
  INVD0BWP12T30P140 U88 ( .I(DATA_IN[3]), .ZN(n119) );
  ND2D0BWP12T30P140 U89 ( .A1(accum[3]), .A2(n99), .ZN(n118) );
  INVD0BWP12T30P140 U90 ( .I(accum[2]), .ZN(n92) );
  NR2D0BWP12T30P140 U91 ( .A1(n62), .A2(n92), .ZN(n88) );
  FA1D0BWP12T30P140 U92 ( .A(DATA_IN[1]), .B(n61), .CI(n77), .CO(n91), .S(n82)
         );
  MAOI222D0BWP12T30P140 U93 ( .A(DATA_IN[2]), .B(n88), .C(n91), .ZN(n122) );
  MAOI222D0BWP12T30P140 U94 ( .A(n119), .B(n118), .C(n122), .ZN(n97) );
  MAOI222D0BWP12T30P140 U95 ( .A(DATA_IN[4]), .B(n94), .C(n97), .ZN(n135) );
  MAOI222D0BWP12T30P140 U96 ( .A(n131), .B(n130), .C(n135), .ZN(n104) );
  MAOI222D0BWP12T30P140 U97 ( .A(DATA_IN[6]), .B(n101), .C(n104), .ZN(n111) );
  MAOI222D0BWP12T30P140 U98 ( .A(n108), .B(n107), .C(n111), .ZN(n64) );
  INVD0BWP12T30P140 U99 ( .I(accum[8]), .ZN(n86) );
  NR2D0BWP12T30P140 U100 ( .A1(n62), .A2(n86), .ZN(n63) );
  ND2D0BWP12T30P140 U101 ( .A1(n64), .A2(accum[8]), .ZN(n70) );
  OAI211D0BWP12T30P140 U102 ( .A1(n64), .A2(n63), .B(n133), .C(n70), .ZN(n85)
         );
  OAI211D0BWP12T30P140 U103 ( .A1(n105), .A2(n66), .B(n65), .C(n85), .ZN(n28)
         );
  INVD0BWP12T30P140 U104 ( .I(DATA_OUT[9]), .ZN(n73) );
  INVD0BWP12T30P140 U105 ( .I(accum[9]), .ZN(n80) );
  ND2D0BWP12T30P140 U106 ( .A1(n80), .A2(n68), .ZN(n67) );
  OAI211D0BWP12T30P140 U107 ( .A1(n80), .A2(n68), .B(N48), .C(n67), .ZN(n72)
         );
  ND2D0BWP12T30P140 U108 ( .A1(accum[9]), .A2(n99), .ZN(n71) );
  ND2D0BWP12T30P140 U109 ( .A1(n71), .A2(n70), .ZN(n69) );
  OAI211D0BWP12T30P140 U110 ( .A1(n71), .A2(n70), .B(n133), .C(n69), .ZN(n79)
         );
  OAI211D0BWP12T30P140 U111 ( .A1(n105), .A2(n73), .B(n72), .C(n79), .ZN(n27)
         );
  AOI21D0BWP12T30P140 U112 ( .A1(n74), .A2(n81), .B(N48), .ZN(n47) );
  OA211D0BWP12T30P140 U113 ( .A1(DATA_IN[0]), .A2(accum[0]), .B(N48), .C(n75), 
        .Z(n78) );
  AOI21D0BWP12T30P140 U114 ( .A1(accum[0]), .A2(n99), .B(DATA_IN[0]), .ZN(n76)
         );
  INR3D1BWP12T30P140 U115 ( .A1(n133), .B1(n77), .B2(n76), .ZN(n84) );
  AO211D0BWP12T30P140 U116 ( .A1(n147), .A2(DATA_OUT[0]), .B(n78), .C(n84), 
        .Z(n36) );
  OAI21D0BWP12T30P140 U117 ( .A1(n80), .A2(n105), .B(n79), .ZN(n37) );
  OA21D0BWP12T30P140 U118 ( .A1(n105), .A2(cnt[0]), .B(n81), .Z(n48) );
  MOAI22D0BWP12T30P140 U119 ( .A1(n105), .A2(n83), .B1(n133), .B2(n82), .ZN(
        n45) );
  AO21D0BWP12T30P140 U120 ( .A1(accum[0]), .A2(n147), .B(n84), .Z(n46) );
  OAI21D0BWP12T30P140 U121 ( .A1(n86), .A2(n105), .B(n85), .ZN(n38) );
  AOI21D0BWP12T30P140 U122 ( .A1(accum[2]), .A2(n99), .B(DATA_IN[2]), .ZN(n87)
         );
  AOI21D0BWP12T30P140 U123 ( .A1(n88), .A2(DATA_IN[2]), .B(n87), .ZN(n90) );
  ND2D0BWP12T30P140 U124 ( .A1(n91), .A2(n90), .ZN(n89) );
  OAI211D0BWP12T30P140 U125 ( .A1(n91), .A2(n90), .B(n133), .C(n89), .ZN(n114)
         );
  OAI21D0BWP12T30P140 U126 ( .A1(n92), .A2(n105), .B(n114), .ZN(n44) );
  AOI21D0BWP12T30P140 U127 ( .A1(accum[4]), .A2(n99), .B(DATA_IN[4]), .ZN(n93)
         );
  AOI21D0BWP12T30P140 U128 ( .A1(n94), .A2(DATA_IN[4]), .B(n93), .ZN(n96) );
  ND2D0BWP12T30P140 U129 ( .A1(n97), .A2(n96), .ZN(n95) );
  OAI211D0BWP12T30P140 U130 ( .A1(n97), .A2(n96), .B(n133), .C(n95), .ZN(n126)
         );
  OAI21D0BWP12T30P140 U131 ( .A1(n98), .A2(n105), .B(n126), .ZN(n42) );
  AOI21D0BWP12T30P140 U132 ( .A1(accum[6]), .A2(n99), .B(DATA_IN[6]), .ZN(n100) );
  AOI21D0BWP12T30P140 U133 ( .A1(n101), .A2(DATA_IN[6]), .B(n100), .ZN(n103)
         );
  ND2D0BWP12T30P140 U134 ( .A1(n104), .A2(n103), .ZN(n102) );
  OAI211D0BWP12T30P140 U135 ( .A1(n104), .A2(n103), .B(n133), .C(n102), .ZN(
        n139) );
  OAI21D0BWP12T30P140 U136 ( .A1(n106), .A2(n105), .B(n139), .ZN(n40) );
  MUX2ND0BWP12T30P140 U137 ( .I0(n108), .I1(DATA_IN[7]), .S(n107), .ZN(n110)
         );
  ND2D0BWP12T30P140 U138 ( .A1(n111), .A2(n110), .ZN(n109) );
  OAI211D0BWP12T30P140 U139 ( .A1(n111), .A2(n110), .B(n133), .C(n109), .ZN(
        n143) );
  IOA21D0BWP12T30P140 U140 ( .A1(accum[7]), .A2(n147), .B(n143), .ZN(n39) );
  FA1D0BWP12T30P140 U141 ( .A(accum[2]), .B(DATA_IN[2]), .CI(n112), .CO(n116), 
        .S(n113) );
  AOI22D0BWP12T30P140 U142 ( .A1(n147), .A2(DATA_OUT[2]), .B1(N48), .B2(n113), 
        .ZN(n115) );
  ND2D0BWP12T30P140 U143 ( .A1(n115), .A2(n114), .ZN(n34) );
  FA1D0BWP12T30P140 U144 ( .A(accum[3]), .B(DATA_IN[3]), .CI(n116), .CO(n124), 
        .S(n117) );
  AOI22D0BWP12T30P140 U145 ( .A1(n147), .A2(DATA_OUT[3]), .B1(N48), .B2(n117), 
        .ZN(n123) );
  MUX2ND0BWP12T30P140 U146 ( .I0(n119), .I1(DATA_IN[3]), .S(n118), .ZN(n121)
         );
  ND2D0BWP12T30P140 U147 ( .A1(n122), .A2(n121), .ZN(n120) );
  OAI211D0BWP12T30P140 U148 ( .A1(n122), .A2(n121), .B(n133), .C(n120), .ZN(
        n145) );
  ND2D0BWP12T30P140 U149 ( .A1(n123), .A2(n145), .ZN(n33) );
  FA1D0BWP12T30P140 U150 ( .A(accum[4]), .B(DATA_IN[4]), .CI(n124), .CO(n128), 
        .S(n125) );
  AOI22D0BWP12T30P140 U151 ( .A1(n147), .A2(DATA_OUT[4]), .B1(N48), .B2(n125), 
        .ZN(n127) );
  ND2D0BWP12T30P140 U152 ( .A1(n127), .A2(n126), .ZN(n32) );
  FA1D0BWP12T30P140 U153 ( .A(accum[5]), .B(DATA_IN[5]), .CI(n128), .CO(n137), 
        .S(n129) );
  AOI22D0BWP12T30P140 U154 ( .A1(n147), .A2(DATA_OUT[5]), .B1(N48), .B2(n129), 
        .ZN(n136) );
  MUX2ND0BWP12T30P140 U155 ( .I0(n131), .I1(DATA_IN[5]), .S(n130), .ZN(n134)
         );
  ND2D0BWP12T30P140 U156 ( .A1(n135), .A2(n134), .ZN(n132) );
  OAI211D0BWP12T30P140 U157 ( .A1(n135), .A2(n134), .B(n133), .C(n132), .ZN(
        n146) );
  ND2D0BWP12T30P140 U158 ( .A1(n136), .A2(n146), .ZN(n31) );
  FA1D0BWP12T30P140 U159 ( .A(accum[6]), .B(DATA_IN[6]), .CI(n137), .CO(n141), 
        .S(n138) );
  AOI22D0BWP12T30P140 U160 ( .A1(n147), .A2(DATA_OUT[6]), .B1(N48), .B2(n138), 
        .ZN(n140) );
  ND2D0BWP12T30P140 U161 ( .A1(n140), .A2(n139), .ZN(n30) );
  FA1D0BWP12T30P140 U162 ( .A(accum[7]), .B(DATA_IN[7]), .CI(n141), .CO(n60), 
        .S(n142) );
  AOI22D0BWP12T30P140 U163 ( .A1(n147), .A2(DATA_OUT[7]), .B1(N48), .B2(n142), 
        .ZN(n144) );
  ND2D0BWP12T30P140 U164 ( .A1(n144), .A2(n143), .ZN(n29) );
  IOA21D0BWP12T30P140 U165 ( .A1(accum[3]), .A2(n147), .B(n145), .ZN(n43) );
  IOA21D0BWP12T30P140 U166 ( .A1(accum[5]), .A2(n147), .B(n146), .ZN(n41) );
endmodule

