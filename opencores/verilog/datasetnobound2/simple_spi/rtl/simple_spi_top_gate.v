/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:11:18 2026
/////////////////////////////////////////////////////////////


module fifo4_dw8_1 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [8:1] din;
  output [8:1] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   gb, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n85,
         n86, n87;
  wire   [1:0] wp;
  wire   [1:0] rp;
  wire   [31:0] mem;

  DFCNQD1BWP12T30P140 wp_reg_0_ ( .D(n84), .CP(n87), .CDN(rst), .Q(wp[0]) );
  DFQD2BWP12T30P140 mem_reg_0__8_ ( .D(n80), .CP(n87), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_1__8_ ( .D(n72), .CP(n87), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_2__8_ ( .D(n64), .CP(n86), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_3__8_ ( .D(n56), .CP(n87), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_0__7_ ( .D(n79), .CP(n87), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_0__6_ ( .D(n78), .CP(n87), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n77), .CP(n87), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_0__4_ ( .D(n76), .CP(n87), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n75), .CP(n87), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n74), .CP(n87), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n73), .CP(n87), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_1__7_ ( .D(n71), .CP(n86), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_1__6_ ( .D(n70), .CP(n86), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n69), .CP(n86), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n67), .CP(n86), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n66), .CP(n86), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n65), .CP(n86), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_2__7_ ( .D(n63), .CP(n86), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_2__6_ ( .D(n62), .CP(n86), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n61), .CP(n86), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n60), .CP(n86), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n59), .CP(n86), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n58), .CP(n87), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n57), .CP(n86), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_3__7_ ( .D(n55), .CP(n86), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_3__6_ ( .D(n54), .CP(n87), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n53), .CP(n86), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n52), .CP(n87), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n49), .CP(n87), .Q(mem[0]) );
  DFQD2BWP12T30P140 gb_reg ( .D(n48), .CP(n86), .Q(gb) );
  DFCNQD1BWP12T30P140 wp_reg_1_ ( .D(n83), .CP(n87), .CDN(rst), .Q(wp[1]) );
  DFCNQD1BWP12T30P140 rp_reg_1_ ( .D(n81), .CP(n87), .CDN(rst), .Q(rp[1]) );
  DFCNQD1BWP12T30P140 rp_reg_0_ ( .D(n82), .CP(n87), .CDN(rst), .Q(rp[0]) );
  DFQD1BWP12T30P140 mem_reg_3__2_ ( .D(n50), .CP(clk), .Q(mem[1]) );
  DFQD1BWP12T30P140 mem_reg_1__4_ ( .D(n68), .CP(n86), .Q(mem[19]) );
  DFQD1BWP12T30P140 mem_reg_3__3_ ( .D(n51), .CP(n86), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(wp[0]), .ZN(n2) );
  INVD0BWP12T30P140 U4 ( .I(rp[1]), .ZN(n20) );
  INVD0BWP12T30P140 U5 ( .I(wp[1]), .ZN(n15) );
  AOI22D0BWP12T30P140 U6 ( .A1(wp[1]), .A2(n20), .B1(rp[1]), .B2(n15), .ZN(n44) );
  ND2D0BWP12T30P140 U7 ( .A1(n2), .A2(rp[0]), .ZN(n1) );
  OAI211D0BWP12T30P140 U8 ( .A1(rp[0]), .A2(n2), .B(n44), .C(n1), .ZN(n41) );
  NR2D0BWP12T30P140 U9 ( .A1(gb), .A2(n41), .ZN(empty) );
  ND2D0BWP12T30P140 U10 ( .A1(we), .A2(n2), .ZN(n43) );
  AOI221D0BWP12T30P140 U11 ( .A1(we), .A2(n43), .B1(n2), .B2(n43), .C(clr), 
        .ZN(n84) );
  ND2D0BWP12T30P140 U12 ( .A1(wp[0]), .A2(we), .ZN(n45) );
  NR2D0BWP12T30P140 U13 ( .A1(n15), .A2(n45), .ZN(n14) );
  INVD0BWP12T30P140 U14 ( .I(din[2]), .ZN(n6) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n14), .A2(n6), .B1(mem[1]), .B2(n14), .ZN(n50) );
  NR2D0BWP12T30P140 U16 ( .A1(wp[1]), .A2(n43), .ZN(n4) );
  INVD0BWP12T30P140 U17 ( .I(din[8]), .ZN(n3) );
  MAOI22D0BWP12T30P140 U18 ( .A1(n4), .A2(n3), .B1(mem[31]), .B2(n4), .ZN(n80)
         );
  NR2D0BWP12T30P140 U19 ( .A1(wp[1]), .A2(n45), .ZN(n5) );
  MAOI22D0BWP12T30P140 U20 ( .A1(n5), .A2(n3), .B1(mem[23]), .B2(n5), .ZN(n72)
         );
  NR2D0BWP12T30P140 U21 ( .A1(n15), .A2(n43), .ZN(n7) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n7), .A2(n3), .B1(mem[15]), .B2(n7), .ZN(n64)
         );
  MAOI22D0BWP12T30P140 U23 ( .A1(n14), .A2(n3), .B1(mem[7]), .B2(n14), .ZN(n56) );
  INVD0BWP12T30P140 U24 ( .I(din[7]), .ZN(n8) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n4), .A2(n8), .B1(mem[30]), .B2(n4), .ZN(n79)
         );
  INVD0BWP12T30P140 U26 ( .I(din[6]), .ZN(n9) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n4), .A2(n9), .B1(mem[29]), .B2(n4), .ZN(n78)
         );
  INVD0BWP12T30P140 U28 ( .I(din[5]), .ZN(n10) );
  MAOI22D0BWP12T30P140 U29 ( .A1(n4), .A2(n10), .B1(mem[28]), .B2(n4), .ZN(n77) );
  INVD0BWP12T30P140 U30 ( .I(din[4]), .ZN(n11) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n4), .A2(n11), .B1(mem[27]), .B2(n4), .ZN(n76) );
  INVD0BWP12T30P140 U32 ( .I(din[3]), .ZN(n12) );
  MAOI22D0BWP12T30P140 U33 ( .A1(n4), .A2(n12), .B1(mem[26]), .B2(n4), .ZN(n75) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n4), .A2(n6), .B1(mem[25]), .B2(n4), .ZN(n74)
         );
  INVD0BWP12T30P140 U35 ( .I(din[1]), .ZN(n13) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n4), .A2(n13), .B1(mem[24]), .B2(n4), .ZN(n73) );
  MAOI22D0BWP12T30P140 U37 ( .A1(n5), .A2(n8), .B1(mem[22]), .B2(n5), .ZN(n71)
         );
  MAOI22D0BWP12T30P140 U38 ( .A1(n5), .A2(n9), .B1(mem[21]), .B2(n5), .ZN(n70)
         );
  MAOI22D0BWP12T30P140 U39 ( .A1(n5), .A2(n10), .B1(mem[20]), .B2(n5), .ZN(n69) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n5), .A2(n11), .B1(mem[19]), .B2(n5), .ZN(n68) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n5), .A2(n12), .B1(mem[18]), .B2(n5), .ZN(n67) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n5), .A2(n6), .B1(mem[17]), .B2(n5), .ZN(n66)
         );
  MAOI22D0BWP12T30P140 U43 ( .A1(n5), .A2(n13), .B1(mem[16]), .B2(n5), .ZN(n65) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n7), .A2(n8), .B1(mem[14]), .B2(n7), .ZN(n63)
         );
  MAOI22D0BWP12T30P140 U45 ( .A1(n7), .A2(n9), .B1(mem[13]), .B2(n7), .ZN(n62)
         );
  MAOI22D0BWP12T30P140 U46 ( .A1(n7), .A2(n10), .B1(mem[12]), .B2(n7), .ZN(n61) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n7), .A2(n11), .B1(mem[11]), .B2(n7), .ZN(n60) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n7), .A2(n12), .B1(mem[10]), .B2(n7), .ZN(n59) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n7), .A2(n6), .B1(mem[9]), .B2(n7), .ZN(n58)
         );
  MAOI22D0BWP12T30P140 U50 ( .A1(n7), .A2(n13), .B1(mem[8]), .B2(n7), .ZN(n57)
         );
  MAOI22D0BWP12T30P140 U51 ( .A1(n14), .A2(n8), .B1(mem[6]), .B2(n14), .ZN(n55) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n14), .A2(n9), .B1(mem[5]), .B2(n14), .ZN(n54) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n14), .A2(n10), .B1(mem[4]), .B2(n14), .ZN(
        n53) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n14), .A2(n11), .B1(mem[3]), .B2(n14), .ZN(
        n52) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n14), .A2(n12), .B1(mem[2]), .B2(n14), .ZN(
        n51) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n14), .A2(n13), .B1(mem[0]), .B2(n14), .ZN(
        n49) );
  INVD0BWP12T30P140 U57 ( .I(n45), .ZN(n16) );
  AOI221D0BWP12T30P140 U58 ( .A1(n16), .A2(wp[1]), .B1(n45), .B2(n15), .C(clr), 
        .ZN(n83) );
  INVD0BWP12T30P140 U59 ( .I(rp[0]), .ZN(n19) );
  INVD0BWP12T30P140 U60 ( .I(re), .ZN(n47) );
  NR2D0BWP12T30P140 U61 ( .A1(n19), .A2(n47), .ZN(n18) );
  INVD0BWP12T30P140 U62 ( .I(n18), .ZN(n17) );
  AOI221D0BWP12T30P140 U63 ( .A1(rp[1]), .A2(n18), .B1(n20), .B2(n17), .C(clr), 
        .ZN(n81) );
  AOI211D0BWP12T30P140 U64 ( .A1(n19), .A2(n47), .B(n18), .C(clr), .ZN(n82) );
  CKBD0BWP12T30P140 U65 ( .I(clk), .Z(n86) );
  CKBD0BWP12T30P140 U66 ( .I(clk), .Z(n87) );
  NR2D0BWP12T30P140 U67 ( .A1(rp[1]), .A2(n19), .ZN(n36) );
  NR2D0BWP12T30P140 U68 ( .A1(n20), .A2(n19), .ZN(n35) );
  AOI22D0BWP12T30P140 U69 ( .A1(n36), .A2(mem[16]), .B1(n35), .B2(mem[0]), 
        .ZN(n22) );
  NR2D0BWP12T30P140 U70 ( .A1(rp[1]), .A2(rp[0]), .ZN(n38) );
  NR2D0BWP12T30P140 U71 ( .A1(rp[0]), .A2(n20), .ZN(n37) );
  AOI22D0BWP12T30P140 U72 ( .A1(n38), .A2(mem[24]), .B1(n37), .B2(mem[8]), 
        .ZN(n21) );
  ND2D0BWP12T30P140 U73 ( .A1(n22), .A2(n21), .ZN(dout[1]) );
  AOI22D0BWP12T30P140 U74 ( .A1(n36), .A2(mem[17]), .B1(n35), .B2(mem[1]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U75 ( .A1(n38), .A2(mem[25]), .B1(n37), .B2(mem[9]), 
        .ZN(n23) );
  ND2D0BWP12T30P140 U76 ( .A1(n24), .A2(n23), .ZN(dout[2]) );
  AOI22D0BWP12T30P140 U77 ( .A1(n36), .A2(mem[18]), .B1(n35), .B2(mem[2]), 
        .ZN(n26) );
  AOI22D0BWP12T30P140 U78 ( .A1(n38), .A2(mem[26]), .B1(n37), .B2(mem[10]), 
        .ZN(n25) );
  ND2D0BWP12T30P140 U79 ( .A1(n26), .A2(n25), .ZN(dout[3]) );
  AOI22D0BWP12T30P140 U80 ( .A1(n36), .A2(mem[19]), .B1(n35), .B2(mem[3]), 
        .ZN(n28) );
  AOI22D0BWP12T30P140 U81 ( .A1(n38), .A2(mem[27]), .B1(n37), .B2(mem[11]), 
        .ZN(n27) );
  ND2D0BWP12T30P140 U82 ( .A1(n28), .A2(n27), .ZN(dout[4]) );
  AOI22D0BWP12T30P140 U83 ( .A1(n36), .A2(mem[20]), .B1(n35), .B2(mem[4]), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U84 ( .A1(n38), .A2(mem[28]), .B1(n37), .B2(mem[12]), 
        .ZN(n29) );
  ND2D0BWP12T30P140 U85 ( .A1(n30), .A2(n29), .ZN(dout[5]) );
  AOI22D0BWP12T30P140 U86 ( .A1(n36), .A2(mem[21]), .B1(n35), .B2(mem[5]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U87 ( .A1(n38), .A2(mem[29]), .B1(n37), .B2(mem[13]), 
        .ZN(n31) );
  ND2D0BWP12T30P140 U88 ( .A1(n32), .A2(n31), .ZN(dout[6]) );
  AOI22D0BWP12T30P140 U89 ( .A1(n36), .A2(mem[22]), .B1(n35), .B2(mem[6]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U90 ( .A1(n38), .A2(mem[30]), .B1(n37), .B2(mem[14]), 
        .ZN(n33) );
  ND2D0BWP12T30P140 U91 ( .A1(n34), .A2(n33), .ZN(dout[7]) );
  AOI22D0BWP12T30P140 U92 ( .A1(mem[23]), .A2(n36), .B1(mem[7]), .B2(n35), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U93 ( .A1(mem[31]), .A2(n38), .B1(mem[15]), .B2(n37), 
        .ZN(n39) );
  ND2D0BWP12T30P140 U94 ( .A1(n40), .A2(n39), .ZN(dout[8]) );
  INR2D1BWP12T30P140 U95 ( .A1(gb), .B1(n41), .ZN(full) );
  ND2D0BWP12T30P140 U96 ( .A1(rp[0]), .A2(n44), .ZN(n42) );
  OAI32D0BWP12T30P140 U97 ( .A1(n45), .A2(rp[0]), .A3(n44), .B1(n43), .B2(n42), 
        .ZN(n46) );
  AOI21D0BWP12T30P140 U98 ( .A1(gb), .A2(n47), .B(n46), .ZN(n85) );
  INR3D1BWP12T30P140 U99 ( .A1(rst), .B1(n85), .B2(clr), .ZN(n48) );
endmodule


module fifo4_dw8_0 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [8:1] din;
  output [8:1] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   gb, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124;
  wire   [1:0] wp;
  wire   [1:0] rp;
  wire   [31:0] mem;

  DFCNQD1BWP12T30P140 wp_reg_0_ ( .D(n88), .CP(n87), .CDN(rst), .Q(wp[0]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n121), .CP(clk), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_0__8_ ( .D(n92), .CP(n87), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_1__8_ ( .D(n100), .CP(n87), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_2__8_ ( .D(n108), .CP(n86), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_3__8_ ( .D(n116), .CP(n86), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_0__7_ ( .D(n93), .CP(n87), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_0__6_ ( .D(n94), .CP(n87), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n95), .CP(n87), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n97), .CP(n87), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n98), .CP(n87), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n99), .CP(n87), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_1__7_ ( .D(n101), .CP(n86), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_1__6_ ( .D(n102), .CP(n86), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n103), .CP(n86), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_1__4_ ( .D(n104), .CP(n86), .Q(mem[19]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n105), .CP(n86), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n106), .CP(n86), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n107), .CP(n86), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_2__7_ ( .D(n109), .CP(n86), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_2__6_ ( .D(n110), .CP(n86), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n111), .CP(n86), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n112), .CP(n86), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n114), .CP(n86), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n115), .CP(n87), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_3__7_ ( .D(n117), .CP(n87), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_3__6_ ( .D(n118), .CP(n86), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n119), .CP(n87), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n120), .CP(n86), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n122), .CP(n87), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n123), .CP(n86), .Q(mem[0]) );
  DFCNQD1BWP12T30P140 wp_reg_1_ ( .D(n89), .CP(n87), .CDN(rst), .Q(wp[1]) );
  DFCNQD1BWP12T30P140 rp_reg_1_ ( .D(n91), .CP(n87), .CDN(rst), .Q(rp[1]) );
  DFCNQD1BWP12T30P140 rp_reg_0_ ( .D(n90), .CP(n87), .CDN(rst), .Q(rp[0]) );
  DFQD1BWP12T30P140 mem_reg_0__4_ ( .D(n96), .CP(n87), .Q(mem[27]) );
  DFQD1BWP12T30P140 mem_reg_2__3_ ( .D(n113), .CP(n86), .Q(mem[10]) );
  DFQD1BWP12T30P140 gb_reg ( .D(n124), .CP(n87), .Q(gb) );
  INVD0BWP12T30P140 U3 ( .I(wp[0]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(rp[1]), .ZN(n20) );
  INVD0BWP12T30P140 U5 ( .I(wp[1]), .ZN(n4) );
  AOI22D0BWP12T30P140 U6 ( .A1(wp[1]), .A2(n20), .B1(rp[1]), .B2(n4), .ZN(n44)
         );
  ND2D0BWP12T30P140 U7 ( .A1(n7), .A2(rp[0]), .ZN(n1) );
  OAI211D0BWP12T30P140 U8 ( .A1(rp[0]), .A2(n7), .B(n44), .C(n1), .ZN(n41) );
  NR2D0BWP12T30P140 U9 ( .A1(gb), .A2(n41), .ZN(empty) );
  ND2D0BWP12T30P140 U10 ( .A1(we), .A2(n7), .ZN(n43) );
  NR2D0BWP12T30P140 U11 ( .A1(n4), .A2(n43), .ZN(n11) );
  INVD0BWP12T30P140 U12 ( .I(din[8]), .ZN(n17) );
  MAOI22D0BWP12T30P140 U13 ( .A1(n11), .A2(n17), .B1(mem[15]), .B2(n11), .ZN(
        n108) );
  ND2D0BWP12T30P140 U14 ( .A1(wp[0]), .A2(we), .ZN(n45) );
  NR2D0BWP12T30P140 U15 ( .A1(wp[1]), .A2(n45), .ZN(n12) );
  INVD0BWP12T30P140 U16 ( .I(din[7]), .ZN(n13) );
  MAOI22D0BWP12T30P140 U17 ( .A1(n12), .A2(n13), .B1(mem[22]), .B2(n12), .ZN(
        n101) );
  INVD0BWP12T30P140 U18 ( .I(din[2]), .ZN(n8) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n11), .A2(n8), .B1(mem[9]), .B2(n11), .ZN(
        n114) );
  INVD0BWP12T30P140 U20 ( .I(rp[0]), .ZN(n19) );
  INVD0BWP12T30P140 U21 ( .I(re), .ZN(n47) );
  NR2D0BWP12T30P140 U22 ( .A1(n19), .A2(n47), .ZN(n3) );
  AOI211D0BWP12T30P140 U23 ( .A1(n19), .A2(n47), .B(n3), .C(clr), .ZN(n90) );
  NR2D0BWP12T30P140 U24 ( .A1(n4), .A2(n45), .ZN(n18) );
  INVD0BWP12T30P140 U25 ( .I(din[4]), .ZN(n9) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n18), .A2(n9), .B1(mem[3]), .B2(n18), .ZN(
        n120) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n12), .A2(n9), .B1(mem[19]), .B2(n12), .ZN(
        n104) );
  INVD0BWP12T30P140 U28 ( .I(n3), .ZN(n2) );
  AOI221D0BWP12T30P140 U29 ( .A1(rp[1]), .A2(n3), .B1(n20), .B2(n2), .C(clr), 
        .ZN(n91) );
  INVD0BWP12T30P140 U30 ( .I(din[6]), .ZN(n14) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n11), .A2(n14), .B1(mem[13]), .B2(n11), .ZN(
        n110) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n12), .A2(n8), .B1(mem[17]), .B2(n12), .ZN(
        n106) );
  INVD0BWP12T30P140 U33 ( .I(din[1]), .ZN(n6) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n18), .A2(n6), .B1(mem[0]), .B2(n18), .ZN(
        n123) );
  INVD0BWP12T30P140 U35 ( .I(din[5]), .ZN(n15) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n12), .A2(n15), .B1(mem[20]), .B2(n12), .ZN(
        n103) );
  INVD0BWP12T30P140 U37 ( .I(n45), .ZN(n5) );
  AOI221D0BWP12T30P140 U38 ( .A1(n5), .A2(wp[1]), .B1(n45), .B2(n4), .C(clr), 
        .ZN(n89) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n18), .A2(n14), .B1(mem[5]), .B2(n18), .ZN(
        n118) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n12), .A2(n6), .B1(mem[16]), .B2(n12), .ZN(
        n107) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n12), .A2(n14), .B1(mem[21]), .B2(n12), .ZN(
        n102) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n18), .A2(n13), .B1(mem[6]), .B2(n18), .ZN(
        n117) );
  NR2D0BWP12T30P140 U43 ( .A1(wp[1]), .A2(n43), .ZN(n16) );
  INVD0BWP12T30P140 U44 ( .I(din[3]), .ZN(n10) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n16), .A2(n10), .B1(mem[26]), .B2(n16), .ZN(
        n97) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n16), .A2(n6), .B1(mem[24]), .B2(n16), .ZN(
        n99) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n12), .A2(n10), .B1(mem[18]), .B2(n12), .ZN(
        n105) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n11), .A2(n6), .B1(mem[8]), .B2(n11), .ZN(
        n115) );
  AOI221D0BWP12T30P140 U49 ( .A1(we), .A2(n43), .B1(n7), .B2(n43), .C(clr), 
        .ZN(n88) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n11), .A2(n13), .B1(mem[14]), .B2(n11), .ZN(
        n109) );
  MAOI22D0BWP12T30P140 U51 ( .A1(n18), .A2(n8), .B1(mem[1]), .B2(n18), .ZN(
        n122) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n11), .A2(n15), .B1(mem[12]), .B2(n11), .ZN(
        n111) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n16), .A2(n8), .B1(mem[25]), .B2(n16), .ZN(
        n98) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n11), .A2(n9), .B1(mem[11]), .B2(n11), .ZN(
        n112) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n18), .A2(n10), .B1(mem[2]), .B2(n18), .ZN(
        n121) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n16), .A2(n9), .B1(mem[27]), .B2(n16), .ZN(
        n96) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n11), .A2(n10), .B1(mem[10]), .B2(n11), .ZN(
        n113) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n12), .A2(n17), .B1(mem[23]), .B2(n12), .ZN(
        n100) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n16), .A2(n17), .B1(mem[31]), .B2(n16), .ZN(
        n92) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n16), .A2(n13), .B1(mem[30]), .B2(n16), .ZN(
        n93) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n18), .A2(n15), .B1(mem[4]), .B2(n18), .ZN(
        n119) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n16), .A2(n14), .B1(mem[29]), .B2(n16), .ZN(
        n94) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n16), .A2(n15), .B1(mem[28]), .B2(n16), .ZN(
        n95) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n18), .A2(n17), .B1(mem[7]), .B2(n18), .ZN(
        n116) );
  CKBD0BWP12T30P140 U65 ( .I(clk), .Z(n86) );
  CKBD0BWP12T30P140 U66 ( .I(clk), .Z(n87) );
  NR2D0BWP12T30P140 U67 ( .A1(rp[1]), .A2(n19), .ZN(n36) );
  NR2D0BWP12T30P140 U68 ( .A1(n20), .A2(n19), .ZN(n35) );
  AOI22D0BWP12T30P140 U69 ( .A1(mem[23]), .A2(n36), .B1(mem[7]), .B2(n35), 
        .ZN(n22) );
  NR2D0BWP12T30P140 U70 ( .A1(rp[1]), .A2(rp[0]), .ZN(n38) );
  NR2D0BWP12T30P140 U71 ( .A1(rp[0]), .A2(n20), .ZN(n37) );
  AOI22D0BWP12T30P140 U72 ( .A1(mem[31]), .A2(n38), .B1(mem[15]), .B2(n37), 
        .ZN(n21) );
  ND2D0BWP12T30P140 U73 ( .A1(n22), .A2(n21), .ZN(dout[8]) );
  AOI22D0BWP12T30P140 U74 ( .A1(n36), .A2(mem[17]), .B1(n35), .B2(mem[1]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U75 ( .A1(n38), .A2(mem[25]), .B1(n37), .B2(mem[9]), 
        .ZN(n23) );
  ND2D0BWP12T30P140 U76 ( .A1(n24), .A2(n23), .ZN(dout[2]) );
  AOI22D0BWP12T30P140 U77 ( .A1(n36), .A2(mem[18]), .B1(n35), .B2(mem[2]), 
        .ZN(n26) );
  AOI22D0BWP12T30P140 U78 ( .A1(n38), .A2(mem[26]), .B1(n37), .B2(mem[10]), 
        .ZN(n25) );
  ND2D0BWP12T30P140 U79 ( .A1(n26), .A2(n25), .ZN(dout[3]) );
  AOI22D0BWP12T30P140 U80 ( .A1(n36), .A2(mem[19]), .B1(n35), .B2(mem[3]), 
        .ZN(n28) );
  AOI22D0BWP12T30P140 U81 ( .A1(n38), .A2(mem[27]), .B1(n37), .B2(mem[11]), 
        .ZN(n27) );
  ND2D0BWP12T30P140 U82 ( .A1(n28), .A2(n27), .ZN(dout[4]) );
  AOI22D0BWP12T30P140 U83 ( .A1(n36), .A2(mem[20]), .B1(n35), .B2(mem[4]), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U84 ( .A1(n38), .A2(mem[28]), .B1(n37), .B2(mem[12]), 
        .ZN(n29) );
  ND2D0BWP12T30P140 U85 ( .A1(n30), .A2(n29), .ZN(dout[5]) );
  AOI22D0BWP12T30P140 U86 ( .A1(n36), .A2(mem[21]), .B1(n35), .B2(mem[5]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U87 ( .A1(n38), .A2(mem[29]), .B1(n37), .B2(mem[13]), 
        .ZN(n31) );
  ND2D0BWP12T30P140 U88 ( .A1(n32), .A2(n31), .ZN(dout[6]) );
  AOI22D0BWP12T30P140 U89 ( .A1(n36), .A2(mem[22]), .B1(n35), .B2(mem[6]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U90 ( .A1(n38), .A2(mem[30]), .B1(n37), .B2(mem[14]), 
        .ZN(n33) );
  ND2D0BWP12T30P140 U91 ( .A1(n34), .A2(n33), .ZN(dout[7]) );
  AOI22D0BWP12T30P140 U92 ( .A1(n36), .A2(mem[16]), .B1(n35), .B2(mem[0]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U93 ( .A1(n38), .A2(mem[24]), .B1(n37), .B2(mem[8]), 
        .ZN(n39) );
  ND2D0BWP12T30P140 U94 ( .A1(n40), .A2(n39), .ZN(dout[1]) );
  INR2D1BWP12T30P140 U95 ( .A1(gb), .B1(n41), .ZN(full) );
  ND2D0BWP12T30P140 U96 ( .A1(rp[0]), .A2(n44), .ZN(n42) );
  OAI32D0BWP12T30P140 U97 ( .A1(n45), .A2(rp[0]), .A3(n44), .B1(n43), .B2(n42), 
        .ZN(n46) );
  AOI21D0BWP12T30P140 U98 ( .A1(gb), .A2(n47), .B(n46), .ZN(n85) );
  INR3D1BWP12T30P140 U99 ( .A1(rst), .B1(n85), .B2(clr), .ZN(n124) );
endmodule


module simple_spi_top ( clk_i, rst_i, cyc_i, stb_i, adr_i, we_i, dat_i, dat_o, 
        ack_o, inta_o, sck_o, mosi_o, miso_i );
  input [1:0] adr_i;
  input [7:0] dat_i;
  output [7:0] dat_o;
  input clk_i, rst_i, cyc_i, stb_i, we_i, miso_i;
  output ack_o, inta_o, sck_o, mosi_o;
  wire   wfwe, spsr_7, spsr_6, N64, N65, N66, N67, N68, N69, N70, N71, rfre,
         N73, N76, N78, N79, rfwe, wfre, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N177, N178, n98, n99, n100, n101,
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
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259;
  wire   [7:0] spcr;
  wire   [7:0] sper;
  wire   [3:0] spsr;
  wire   [7:0] rfdout;
  wire   [6:0] treg;
  wire   [7:0] wfdout;
  wire   [11:0] clkcnt;
  wire   [1:0] state;
  wire   [2:0] bcnt;
  wire   [1:0] tcnt;

  fifo4_dw8_1 rfifo ( .clk(n257), .rst(n256), .clr(n130), .din({mosi_o, treg}), 
        .we(rfwe), .dout(rfdout), .re(rfre), .full(spsr[1]), .empty(spsr[0])
         );
  fifo4_dw8_0 wfifo ( .clk(n257), .rst(n256), .clr(n130), .din(dat_i), .we(
        wfwe), .dout(wfdout), .re(wfre), .full(spsr[3]), .empty(spsr[2]) );
  DFSNQD1BWP12T30P140 spcr_reg_4_ ( .D(n118), .CP(clk_i), .SDN(rst_i), .Q(
        spcr[4]) );
  DFCNQD1BWP12T30P140 sper_reg_5_ ( .D(n127), .CP(clk_i), .CDN(rst_i), .Q(
        sper[5]) );
  DFCNQD1BWP12T30P140 ack_o_reg ( .D(N73), .CP(clk_i), .CDN(n256), .Q(ack_o)
         );
  DFCNQD1BWP12T30P140 sper_reg_6_ ( .D(n128), .CP(clk_i), .CDN(rst_i), .Q(
        sper[6]) );
  DFCNQD1BWP12T30P140 sper_reg_2_ ( .D(n124), .CP(n259), .CDN(rst_i), .Q(
        sper[2]) );
  DFQD2BWP12T30P140 clkcnt_reg_6_ ( .D(N123), .CP(n257), .Q(clkcnt[6]) );
  DFQD2BWP12T30P140 dat_o_reg_0_ ( .D(N64), .CP(n258), .Q(dat_o[0]) );
  DFQD2BWP12T30P140 dat_o_reg_1_ ( .D(N65), .CP(n258), .Q(dat_o[1]) );
  DFQD2BWP12T30P140 dat_o_reg_2_ ( .D(N66), .CP(n258), .Q(dat_o[2]) );
  DFQD2BWP12T30P140 dat_o_reg_3_ ( .D(N67), .CP(n258), .Q(dat_o[3]) );
  DFQD2BWP12T30P140 dat_o_reg_4_ ( .D(N68), .CP(n258), .Q(dat_o[4]) );
  DFQD2BWP12T30P140 dat_o_reg_5_ ( .D(N69), .CP(n258), .Q(dat_o[5]) );
  DFQD2BWP12T30P140 dat_o_reg_6_ ( .D(N70), .CP(n259), .Q(dat_o[6]) );
  DFQD2BWP12T30P140 inta_o_reg ( .D(N79), .CP(n259), .Q(inta_o) );
  DFCNQD1BWP12T30P140 spcr_reg_3_ ( .D(n117), .CP(n259), .CDN(n256), .Q(
        spcr[3]) );
  DFCNQD1BWP12T30P140 sper_reg_3_ ( .D(n125), .CP(n259), .CDN(rst_i), .Q(
        sper[3]) );
  DFCNQD1BWP12T30P140 spcr_reg_5_ ( .D(n119), .CP(n259), .CDN(n256), .Q(
        spcr[5]) );
  DFCNQD1BWP12T30P140 spcr_reg_2_ ( .D(n116), .CP(n259), .CDN(n256), .Q(
        spcr[2]) );
  DFCNQD1BWP12T30P140 sper_reg_4_ ( .D(n126), .CP(n259), .CDN(rst_i), .Q(
        sper[4]) );
  DFQD2BWP12T30P140 clkcnt_reg_11_ ( .D(N128), .CP(n257), .Q(clkcnt[11]) );
  DFQD2BWP12T30P140 clkcnt_reg_2_ ( .D(N119), .CP(n257), .Q(clkcnt[2]) );
  DFQD2BWP12T30P140 clkcnt_reg_4_ ( .D(N121), .CP(n257), .Q(clkcnt[4]) );
  DFQD2BWP12T30P140 clkcnt_reg_5_ ( .D(N122), .CP(n257), .Q(clkcnt[5]) );
  DFQD2BWP12T30P140 clkcnt_reg_7_ ( .D(N124), .CP(n257), .Q(clkcnt[7]) );
  DFQD2BWP12T30P140 clkcnt_reg_8_ ( .D(N125), .CP(n257), .Q(clkcnt[8]) );
  DFQD2BWP12T30P140 clkcnt_reg_9_ ( .D(N126), .CP(n257), .Q(clkcnt[9]) );
  DFQD2BWP12T30P140 clkcnt_reg_10_ ( .D(N127), .CP(n257), .Q(clkcnt[10]) );
  DFQD2BWP12T30P140 clkcnt_reg_3_ ( .D(N120), .CP(n257), .Q(clkcnt[3]) );
  DFQD2BWP12T30P140 wfre_reg ( .D(N177), .CP(n258), .Q(wfre) );
  DFCNQD1BWP12T30P140 sper_reg_7_ ( .D(n129), .CP(n259), .CDN(rst_i), .Q(
        sper[7]) );
  DFCNQD1BWP12T30P140 spcr_reg_7_ ( .D(n121), .CP(n259), .CDN(n256), .Q(
        spcr[7]) );
  DFQD2BWP12T30P140 clkcnt_reg_0_ ( .D(N117), .CP(n257), .Q(clkcnt[0]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n99), .CP(n257), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n98), .CP(n257), .Q(state[1]) );
  DFQD2BWP12T30P140 tcnt_reg_0_ ( .D(n113), .CP(n259), .Q(tcnt[0]) );
  DFQD2BWP12T30P140 wcol_reg ( .D(N78), .CP(n258), .Q(spsr_6) );
  DFCNQD1BWP12T30P140 sper_reg_1_ ( .D(n123), .CP(n259), .CDN(n256), .Q(
        sper[1]) );
  DFQD2BWP12T30P140 sck_o_reg ( .D(n111), .CP(n259), .Q(sck_o) );
  DFCNQD1BWP12T30P140 spcr_reg_0_ ( .D(n114), .CP(n259), .CDN(n256), .Q(
        spcr[0]) );
  DFQD2BWP12T30P140 treg_reg_7_ ( .D(n109), .CP(n258), .Q(mosi_o) );
  DFQD2BWP12T30P140 spif_reg ( .D(N76), .CP(n259), .Q(spsr_7) );
  DFQD2BWP12T30P140 treg_reg_1_ ( .D(n103), .CP(n258), .Q(treg[1]) );
  DFQD2BWP12T30P140 treg_reg_3_ ( .D(n105), .CP(n258), .Q(treg[3]) );
  DFQD2BWP12T30P140 treg_reg_4_ ( .D(n106), .CP(n258), .Q(treg[4]) );
  DFQD2BWP12T30P140 treg_reg_5_ ( .D(n107), .CP(n258), .Q(treg[5]) );
  DFQD2BWP12T30P140 treg_reg_6_ ( .D(n108), .CP(n258), .Q(treg[6]) );
  DFCNQD1BWP12T30P140 sper_reg_0_ ( .D(n122), .CP(n259), .CDN(n256), .Q(
        sper[0]) );
  DFQD2BWP12T30P140 treg_reg_0_ ( .D(n110), .CP(n258), .Q(treg[0]) );
  DFQD2BWP12T30P140 bcnt_reg_0_ ( .D(n102), .CP(n258), .Q(bcnt[0]) );
  DFQD2BWP12T30P140 bcnt_reg_2_ ( .D(n100), .CP(n258), .Q(bcnt[2]) );
  DFQD2BWP12T30P140 tcnt_reg_1_ ( .D(n112), .CP(n259), .Q(tcnt[1]) );
  DFQD2BWP12T30P140 bcnt_reg_1_ ( .D(n101), .CP(n258), .Q(bcnt[1]) );
  DFQD2BWP12T30P140 rfwe_reg ( .D(N178), .CP(n258), .Q(rfwe) );
  DFCNQD1BWP12T30P140 spcr_reg_6_ ( .D(n120), .CP(n259), .CDN(n256), .Q(
        spcr[6]) );
  DFCNQD1BWP12T30P140 spcr_reg_1_ ( .D(n115), .CP(n259), .CDN(n256), .Q(
        spcr[1]) );
  DFQD1BWP12T30P140 dat_o_reg_7_ ( .D(N71), .CP(n259), .Q(dat_o[7]) );
  DFQD1BWP12T30P140 clkcnt_reg_1_ ( .D(N118), .CP(n257), .Q(clkcnt[1]) );
  DFQD1BWP12T30P140 treg_reg_2_ ( .D(n104), .CP(n258), .Q(treg[2]) );
  ND3D0BWP12T30P140 U161 ( .A1(cyc_i), .A2(stb_i), .A3(we_i), .ZN(n198) );
  ND2D0BWP12T30P140 U162 ( .A1(adr_i[1]), .A2(adr_i[0]), .ZN(n140) );
  NR2D0BWP12T30P140 U163 ( .A1(n198), .A2(n140), .ZN(n210) );
  INVD0BWP12T30P140 U164 ( .I(dat_i[5]), .ZN(n148) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n210), .A2(n148), .B1(sper[5]), .B2(n210), 
        .ZN(n127) );
  ND2D0BWP12T30P140 U166 ( .A1(cyc_i), .A2(stb_i), .ZN(n239) );
  NR2D0BWP12T30P140 U167 ( .A1(ack_o), .A2(n239), .ZN(N73) );
  INVD0BWP12T30P140 U168 ( .I(dat_i[6]), .ZN(n223) );
  INVD0BWP12T30P140 U169 ( .I(sper[6]), .ZN(n195) );
  INVD0BWP12T30P140 U170 ( .I(n210), .ZN(n207) );
  AOI22D0BWP12T30P140 U171 ( .A1(n210), .A2(n223), .B1(n195), .B2(n207), .ZN(
        n128) );
  INVD0BWP12T30P140 U172 ( .I(dat_i[2]), .ZN(n149) );
  INVD0BWP12T30P140 U173 ( .I(sper[2]), .ZN(n139) );
  AOI22D0BWP12T30P140 U174 ( .A1(n210), .A2(n149), .B1(n139), .B2(n207), .ZN(
        n124) );
  INVD0BWP12T30P140 U175 ( .I(spcr[6]), .ZN(n130) );
  NR2D0BWP12T30P140 U176 ( .A1(state[1]), .A2(state[0]), .ZN(n252) );
  NR2D0BWP12T30P140 U177 ( .A1(n252), .A2(n130), .ZN(n201) );
  NR2D0BWP12T30P140 U178 ( .A1(clkcnt[1]), .A2(clkcnt[0]), .ZN(n183) );
  INVD0BWP12T30P140 U179 ( .I(n183), .ZN(n152) );
  NR2D0BWP12T30P140 U180 ( .A1(clkcnt[2]), .A2(n152), .ZN(n151) );
  INVD0BWP12T30P140 U181 ( .I(n151), .ZN(n177) );
  NR2D0BWP12T30P140 U182 ( .A1(clkcnt[3]), .A2(n177), .ZN(n176) );
  INVD0BWP12T30P140 U183 ( .I(n176), .ZN(n155) );
  NR2D0BWP12T30P140 U184 ( .A1(clkcnt[4]), .A2(n155), .ZN(n154) );
  INVD0BWP12T30P140 U185 ( .I(n154), .ZN(n158) );
  NR2D0BWP12T30P140 U186 ( .A1(clkcnt[5]), .A2(n158), .ZN(n157) );
  INVD0BWP12T30P140 U187 ( .I(clkcnt[6]), .ZN(n131) );
  ND2D0BWP12T30P140 U188 ( .A1(n157), .A2(n131), .ZN(n162) );
  NR2D0BWP12T30P140 U189 ( .A1(clkcnt[7]), .A2(n162), .ZN(n161) );
  INVD0BWP12T30P140 U190 ( .I(n161), .ZN(n165) );
  NR2D0BWP12T30P140 U191 ( .A1(clkcnt[8]), .A2(n165), .ZN(n164) );
  INVD0BWP12T30P140 U192 ( .I(n164), .ZN(n169) );
  NR2D0BWP12T30P140 U193 ( .A1(clkcnt[9]), .A2(n169), .ZN(n168) );
  INVD0BWP12T30P140 U194 ( .I(n168), .ZN(n173) );
  NR2D0BWP12T30P140 U195 ( .A1(clkcnt[10]), .A2(n173), .ZN(n172) );
  INVD0BWP12T30P140 U196 ( .I(n172), .ZN(n150) );
  NR2D0BWP12T30P140 U197 ( .A1(clkcnt[11]), .A2(n150), .ZN(n193) );
  INVD0BWP12T30P140 U198 ( .I(n193), .ZN(n190) );
  ND2D0BWP12T30P140 U199 ( .A1(n201), .A2(n190), .ZN(n189) );
  ND3D0BWP12T30P140 U200 ( .A1(n189), .A2(spcr[0]), .A3(spcr[1]), .ZN(n182) );
  INVD0BWP12T30P140 U201 ( .I(sper[0]), .ZN(n208) );
  ND2D0BWP12T30P140 U202 ( .A1(sper[1]), .A2(n189), .ZN(n181) );
  OAI21D0BWP12T30P140 U203 ( .A1(n131), .A2(n157), .B(n162), .ZN(n132) );
  INVD0BWP12T30P140 U204 ( .I(n189), .ZN(n178) );
  ND2D0BWP12T30P140 U205 ( .A1(n132), .A2(n178), .ZN(n133) );
  OAI211D0BWP12T30P140 U206 ( .A1(n182), .A2(n208), .B(n181), .C(n133), .ZN(
        N123) );
  NR2D0BWP12T30P140 U207 ( .A1(adr_i[1]), .A2(adr_i[0]), .ZN(n231) );
  INVD0BWP12T30P140 U208 ( .I(n231), .ZN(n145) );
  INVD0BWP12T30P140 U209 ( .I(spcr[0]), .ZN(n200) );
  INVD0BWP12T30P140 U210 ( .I(adr_i[1]), .ZN(n134) );
  NR2D0BWP12T30P140 U211 ( .A1(adr_i[0]), .A2(n134), .ZN(n230) );
  ND2D0BWP12T30P140 U212 ( .A1(adr_i[0]), .A2(n134), .ZN(n197) );
  INVD0BWP12T30P140 U213 ( .I(n197), .ZN(n229) );
  AOI22D0BWP12T30P140 U214 ( .A1(n230), .A2(rfdout[0]), .B1(n229), .B2(spsr[0]), .ZN(n136) );
  INVD0BWP12T30P140 U215 ( .I(n140), .ZN(n232) );
  ND2D0BWP12T30P140 U216 ( .A1(sper[0]), .A2(n232), .ZN(n135) );
  OAI211D0BWP12T30P140 U217 ( .A1(n145), .A2(n200), .B(n136), .C(n135), .ZN(
        N64) );
  INVD0BWP12T30P140 U218 ( .I(spcr[1]), .ZN(n224) );
  AOI22D0BWP12T30P140 U219 ( .A1(n230), .A2(rfdout[1]), .B1(n229), .B2(spsr[1]), .ZN(n138) );
  ND2D0BWP12T30P140 U220 ( .A1(sper[1]), .A2(n232), .ZN(n137) );
  OAI211D0BWP12T30P140 U221 ( .A1(n145), .A2(n224), .B(n138), .C(n137), .ZN(
        N65) );
  INVD0BWP12T30P140 U222 ( .I(spcr[2]), .ZN(n242) );
  INVD0BWP12T30P140 U223 ( .I(spsr[2]), .ZN(n191) );
  OAI22D0BWP12T30P140 U224 ( .A1(n191), .A2(n197), .B1(n140), .B2(n139), .ZN(
        n141) );
  AOI21D0BWP12T30P140 U225 ( .A1(n230), .A2(rfdout[2]), .B(n141), .ZN(n142) );
  OAI21D0BWP12T30P140 U226 ( .A1(n242), .A2(n145), .B(n142), .ZN(N66) );
  INVD0BWP12T30P140 U227 ( .I(spcr[3]), .ZN(n146) );
  AOI22D0BWP12T30P140 U228 ( .A1(spsr[3]), .A2(n229), .B1(n230), .B2(rfdout[3]), .ZN(n144) );
  ND2D0BWP12T30P140 U229 ( .A1(n232), .A2(sper[3]), .ZN(n143) );
  OAI211D0BWP12T30P140 U230 ( .A1(n145), .A2(n146), .B(n144), .C(n143), .ZN(
        N67) );
  AO222D0BWP12T30P140 U231 ( .A1(n230), .A2(rfdout[4]), .B1(sper[4]), .B2(n232), .C1(n231), .C2(spcr[4]), .Z(N68) );
  AO222D0BWP12T30P140 U232 ( .A1(n230), .A2(rfdout[5]), .B1(sper[5]), .B2(n232), .C1(spcr[5]), .C2(n231), .Z(N69) );
  AN2D0BWP12T30P140 U233 ( .A1(spsr_7), .A2(spcr[7]), .Z(N79) );
  NR2D0BWP12T30P140 U234 ( .A1(n198), .A2(n145), .ZN(n226) );
  INVD0BWP12T30P140 U235 ( .I(dat_i[3]), .ZN(n147) );
  INVD0BWP12T30P140 U236 ( .I(n226), .ZN(n240) );
  AOI22D0BWP12T30P140 U237 ( .A1(n226), .A2(n147), .B1(n146), .B2(n240), .ZN(
        n117) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n210), .A2(n147), .B1(sper[3]), .B2(n210), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n226), .A2(n148), .B1(spcr[5]), .B2(n226), 
        .ZN(n119) );
  AOI22D0BWP12T30P140 U240 ( .A1(n226), .A2(n149), .B1(n242), .B2(n240), .ZN(
        n116) );
  CKMUX2D0BWP12T30P140 U241 ( .I0(sper[4]), .I1(dat_i[4]), .S(n210), .Z(n126)
         );
  AN3D0BWP12T30P140 U242 ( .A1(clkcnt[11]), .A2(n201), .A3(n150), .Z(N128) );
  AOI21D0BWP12T30P140 U243 ( .A1(clkcnt[2]), .A2(n152), .B(n151), .ZN(n153) );
  OAI21D0BWP12T30P140 U244 ( .A1(sper[1]), .A2(sper[0]), .B(n189), .ZN(n188)
         );
  OAI211D0BWP12T30P140 U245 ( .A1(n153), .A2(n189), .B(n188), .C(n182), .ZN(
        N119) );
  AOI21D0BWP12T30P140 U246 ( .A1(clkcnt[4]), .A2(n155), .B(n154), .ZN(n156) );
  INVD0BWP12T30P140 U247 ( .I(n181), .ZN(n170) );
  AOI31D0BWP12T30P140 U248 ( .A1(spcr[1]), .A2(sper[0]), .A3(n189), .B(n170), 
        .ZN(n159) );
  ND3D0BWP12T30P140 U249 ( .A1(n189), .A2(n200), .A3(sper[0]), .ZN(n180) );
  OAI211D0BWP12T30P140 U250 ( .A1(n156), .A2(n189), .B(n159), .C(n180), .ZN(
        N121) );
  AOI21D0BWP12T30P140 U251 ( .A1(clkcnt[5]), .A2(n158), .B(n157), .ZN(n160) );
  OAI21D0BWP12T30P140 U252 ( .A1(n160), .A2(n189), .B(n159), .ZN(N122) );
  AOI21D0BWP12T30P140 U253 ( .A1(clkcnt[7]), .A2(n162), .B(n161), .ZN(n163) );
  OAI21D0BWP12T30P140 U254 ( .A1(n163), .A2(n189), .B(n181), .ZN(N124) );
  NR2D0BWP12T30P140 U255 ( .A1(spcr[0]), .A2(spcr[1]), .ZN(n167) );
  AOI21D0BWP12T30P140 U256 ( .A1(clkcnt[8]), .A2(n165), .B(n164), .ZN(n166) );
  OAI22D0BWP12T30P140 U257 ( .A1(n167), .A2(n181), .B1(n166), .B2(n189), .ZN(
        N125) );
  AOI21D0BWP12T30P140 U258 ( .A1(clkcnt[9]), .A2(n169), .B(n168), .ZN(n171) );
  ND2D0BWP12T30P140 U259 ( .A1(spcr[1]), .A2(n170), .ZN(n174) );
  OAI21D0BWP12T30P140 U260 ( .A1(n171), .A2(n189), .B(n174), .ZN(N126) );
  AOI21D0BWP12T30P140 U261 ( .A1(clkcnt[10]), .A2(n173), .B(n172), .ZN(n175)
         );
  OAI22D0BWP12T30P140 U262 ( .A1(n175), .A2(n189), .B1(n200), .B2(n174), .ZN(
        N127) );
  AOI32D0BWP12T30P140 U263 ( .A1(clkcnt[3]), .A2(n178), .A3(n177), .B1(n176), 
        .B2(n178), .ZN(n179) );
  ND4D0BWP12T30P140 U264 ( .A1(n182), .A2(n181), .A3(n180), .A4(n179), .ZN(
        N120) );
  AOI21D0BWP12T30P140 U265 ( .A1(clkcnt[0]), .A2(clkcnt[1]), .B(n183), .ZN(
        n185) );
  ND2D0BWP12T30P140 U266 ( .A1(spcr[1]), .A2(n189), .ZN(n184) );
  OAI211D0BWP12T30P140 U267 ( .A1(n185), .A2(n189), .B(n188), .C(n184), .ZN(
        N118) );
  INVD0BWP12T30P140 U268 ( .I(dat_i[7]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n210), .A2(n186), .B1(sper[7]), .B2(n210), 
        .ZN(n129) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n226), .A2(n186), .B1(spcr[7]), .B2(n226), 
        .ZN(n121) );
  OAI21D0BWP12T30P140 U271 ( .A1(spcr[0]), .A2(spcr[1]), .B(n189), .ZN(n187)
         );
  OAI211D0BWP12T30P140 U272 ( .A1(clkcnt[0]), .A2(n189), .B(n188), .C(n187), 
        .ZN(N117) );
  NR3D0BWP12T30P140 U273 ( .A1(bcnt[1]), .A2(bcnt[0]), .A3(bcnt[2]), .ZN(n247)
         );
  INVD0BWP12T30P140 U274 ( .I(n247), .ZN(n245) );
  NR2D0BWP12T30P140 U275 ( .A1(n190), .A2(n245), .ZN(n222) );
  ND2D0BWP12T30P140 U276 ( .A1(spcr[6]), .A2(state[0]), .ZN(n246) );
  INVD0BWP12T30P140 U277 ( .I(state[1]), .ZN(n203) );
  ND2D0BWP12T30P140 U278 ( .A1(state[0]), .A2(n193), .ZN(n202) );
  ND2D0BWP12T30P140 U279 ( .A1(spcr[6]), .A2(n202), .ZN(n251) );
  AOI22D0BWP12T30P140 U280 ( .A1(n252), .A2(n191), .B1(n203), .B2(n251), .ZN(
        n192) );
  OAI22D0BWP12T30P140 U281 ( .A1(n222), .A2(n246), .B1(n192), .B2(n130), .ZN(
        n99) );
  NR2D0BWP12T30P140 U282 ( .A1(n203), .A2(n246), .ZN(n221) );
  INVD0BWP12T30P140 U283 ( .I(n221), .ZN(n244) );
  OAI22D0BWP12T30P140 U284 ( .A1(n193), .A2(n244), .B1(n192), .B2(n246), .ZN(
        n98) );
  INVD0BWP12T30P140 U285 ( .I(rfwe), .ZN(n194) );
  NR2D0BWP12T30P140 U286 ( .A1(tcnt[0]), .A2(n194), .ZN(n204) );
  AOI22D0BWP12T30P140 U287 ( .A1(tcnt[0]), .A2(n194), .B1(n204), .B2(tcnt[1]), 
        .ZN(n196) );
  NR2D0BWP12T30P140 U288 ( .A1(n204), .A2(n130), .ZN(n237) );
  OAI22D0BWP12T30P140 U289 ( .A1(n196), .A2(n130), .B1(n237), .B2(n195), .ZN(
        n113) );
  ND2D0BWP12T30P140 U290 ( .A1(n230), .A2(ack_o), .ZN(n238) );
  NR2D0BWP12T30P140 U291 ( .A1(n198), .A2(n238), .ZN(wfwe) );
  NR2D0BWP12T30P140 U292 ( .A1(n198), .A2(n197), .ZN(n206) );
  AOI21D0BWP12T30P140 U293 ( .A1(spsr[3]), .A2(wfwe), .B(spsr_6), .ZN(n199) );
  AOI211D0BWP12T30P140 U294 ( .A1(dat_i[6]), .A2(n206), .B(n199), .C(n130), 
        .ZN(N78) );
  INVD0BWP12T30P140 U295 ( .I(dat_i[1]), .ZN(n225) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n210), .A2(n225), .B1(sper[1]), .B2(n210), 
        .ZN(n123) );
  ND2D0BWP12T30P140 U297 ( .A1(spcr[6]), .A2(n252), .ZN(n217) );
  NR2D0BWP12T30P140 U298 ( .A1(spsr[2]), .A2(n217), .ZN(N177) );
  INVD0BWP12T30P140 U299 ( .I(dat_i[0]), .ZN(n209) );
  AOI22D0BWP12T30P140 U300 ( .A1(n226), .A2(n209), .B1(n200), .B2(n240), .ZN(
        n114) );
  INVD0BWP12T30P140 U301 ( .I(n217), .ZN(n241) );
  OAI21D0BWP12T30P140 U302 ( .A1(n203), .A2(n202), .B(n201), .ZN(n214) );
  ND2D0BWP12T30P140 U303 ( .A1(n221), .A2(n214), .ZN(n220) );
  INVD0BWP12T30P140 U304 ( .I(n220), .ZN(n212) );
  INVD0BWP12T30P140 U305 ( .I(n214), .ZN(n211) );
  AO222D0BWP12T30P140 U306 ( .A1(n241), .A2(wfdout[7]), .B1(n212), .B2(treg[6]), .C1(n211), .C2(mosi_o), .Z(n109) );
  INR2D1BWP12T30P140 U307 ( .A1(n204), .B1(tcnt[1]), .ZN(n235) );
  OAI21D0BWP12T30P140 U308 ( .A1(n235), .A2(spsr_7), .B(spcr[6]), .ZN(n205) );
  AOI21D0BWP12T30P140 U309 ( .A1(n206), .A2(dat_i[7]), .B(n205), .ZN(N76) );
  AO222D0BWP12T30P140 U310 ( .A1(n241), .A2(wfdout[1]), .B1(n212), .B2(treg[0]), .C1(treg[1]), .C2(n211), .Z(n103) );
  AO222D0BWP12T30P140 U311 ( .A1(n241), .A2(wfdout[2]), .B1(n212), .B2(treg[1]), .C1(treg[2]), .C2(n211), .Z(n104) );
  AO222D0BWP12T30P140 U312 ( .A1(n241), .A2(wfdout[3]), .B1(n212), .B2(treg[2]), .C1(treg[3]), .C2(n211), .Z(n105) );
  AO222D0BWP12T30P140 U313 ( .A1(n241), .A2(wfdout[4]), .B1(n212), .B2(treg[3]), .C1(treg[4]), .C2(n211), .Z(n106) );
  AO222D0BWP12T30P140 U314 ( .A1(n241), .A2(wfdout[5]), .B1(n212), .B2(treg[4]), .C1(treg[5]), .C2(n211), .Z(n107) );
  AO222D0BWP12T30P140 U315 ( .A1(n241), .A2(wfdout[6]), .B1(n212), .B2(treg[5]), .C1(treg[6]), .C2(n211), .Z(n108) );
  AOI22D0BWP12T30P140 U316 ( .A1(n210), .A2(n209), .B1(n208), .B2(n207), .ZN(
        n122) );
  AO222D0BWP12T30P140 U317 ( .A1(n241), .A2(wfdout[0]), .B1(n212), .B2(miso_i), 
        .C1(n211), .C2(treg[0]), .Z(n110) );
  INVD0BWP12T30P140 U318 ( .I(bcnt[0]), .ZN(n215) );
  ND2D0BWP12T30P140 U319 ( .A1(n212), .A2(n215), .ZN(n213) );
  OAI211D0BWP12T30P140 U320 ( .A1(n215), .A2(n214), .B(n217), .C(n213), .ZN(
        n102) );
  OAI21D0BWP12T30P140 U321 ( .A1(n215), .A2(n244), .B(n214), .ZN(n218) );
  AOI32D0BWP12T30P140 U322 ( .A1(n221), .A2(bcnt[2]), .A3(bcnt[1]), .B1(n218), 
        .B2(bcnt[2]), .ZN(n216) );
  OAI211D0BWP12T30P140 U323 ( .A1(n220), .A2(n245), .B(n217), .C(n216), .ZN(
        n100) );
  AOI21D0BWP12T30P140 U324 ( .A1(bcnt[1]), .A2(n218), .B(n241), .ZN(n219) );
  OAI31D0BWP12T30P140 U325 ( .A1(bcnt[1]), .A2(bcnt[0]), .A3(n220), .B(n219), 
        .ZN(n101) );
  AN2D0BWP12T30P140 U326 ( .A1(n222), .A2(n221), .Z(N178) );
  AOI22D0BWP12T30P140 U327 ( .A1(n226), .A2(n223), .B1(n130), .B2(n240), .ZN(
        n120) );
  AOI22D0BWP12T30P140 U328 ( .A1(n226), .A2(n225), .B1(n224), .B2(n240), .ZN(
        n115) );
  CKBD0BWP12T30P140 U329 ( .I(clk_i), .Z(n258) );
  CKBD0BWP12T30P140 U330 ( .I(clk_i), .Z(n259) );
  CKBD0BWP12T30P140 U331 ( .I(clk_i), .Z(n257) );
  CKBD0BWP12T30P140 U332 ( .I(rst_i), .Z(n256) );
  AOI22D0BWP12T30P140 U333 ( .A1(spsr_6), .A2(n229), .B1(n230), .B2(rfdout[6]), 
        .ZN(n228) );
  AOI22D0BWP12T30P140 U334 ( .A1(spcr[6]), .A2(n231), .B1(n232), .B2(sper[6]), 
        .ZN(n227) );
  ND2D0BWP12T30P140 U335 ( .A1(n228), .A2(n227), .ZN(N70) );
  AOI22D0BWP12T30P140 U336 ( .A1(n230), .A2(rfdout[7]), .B1(n229), .B2(spsr_7), 
        .ZN(n234) );
  AOI22D0BWP12T30P140 U337 ( .A1(sper[7]), .A2(n232), .B1(n231), .B2(spcr[7]), 
        .ZN(n233) );
  ND2D0BWP12T30P140 U338 ( .A1(n234), .A2(n233), .ZN(N71) );
  OAI21D0BWP12T30P140 U339 ( .A1(n235), .A2(n130), .B(sper[7]), .ZN(n236) );
  IOA21D0BWP12T30P140 U340 ( .A1(n237), .A2(tcnt[1]), .B(n236), .ZN(n112) );
  NR3D0BWP12T30P140 U341 ( .A1(we_i), .A2(n239), .A3(n238), .ZN(rfre) );
  IND2D1BWP12T30P140 U342 ( .A1(spcr[4]), .B1(n240), .ZN(n118) );
  OAI21D0BWP12T30P140 U343 ( .A1(spsr[2]), .A2(n242), .B(n241), .ZN(n243) );
  OAI21D0BWP12T30P140 U344 ( .A1(n245), .A2(n244), .B(n243), .ZN(n250) );
  AOI21D0BWP12T30P140 U345 ( .A1(state[1]), .A2(n247), .B(n246), .ZN(n248) );
  AOI21D0BWP12T30P140 U346 ( .A1(N177), .A2(spcr[2]), .B(n248), .ZN(n249) );
  MAOI22D0BWP12T30P140 U347 ( .A1(spcr[3]), .A2(n250), .B1(sck_o), .B2(n249), 
        .ZN(n255) );
  INVD0BWP12T30P140 U348 ( .I(sck_o), .ZN(n254) );
  NR2D0BWP12T30P140 U349 ( .A1(n252), .A2(n251), .ZN(n253) );
  MUX2ND0BWP12T30P140 U350 ( .I0(n255), .I1(n254), .S(n253), .ZN(n111) );
endmodule

