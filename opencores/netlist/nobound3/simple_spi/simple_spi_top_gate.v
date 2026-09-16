/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:15:11 2026
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
  NR2D0BWP12T30P140 U11 ( .A1(n4), .A2(n43), .ZN(n16) );
  INVD0BWP12T30P140 U12 ( .I(din[8]), .ZN(n13) );
  MAOI22D0BWP12T30P140 U13 ( .A1(n16), .A2(n13), .B1(mem[15]), .B2(n16), .ZN(
        n108) );
  ND2D0BWP12T30P140 U14 ( .A1(wp[0]), .A2(we), .ZN(n45) );
  NR2D0BWP12T30P140 U15 ( .A1(wp[1]), .A2(n45), .ZN(n9) );
  INVD0BWP12T30P140 U16 ( .I(din[7]), .ZN(n6) );
  MAOI22D0BWP12T30P140 U17 ( .A1(n9), .A2(n6), .B1(mem[22]), .B2(n9), .ZN(n101) );
  INVD0BWP12T30P140 U18 ( .I(din[2]), .ZN(n8) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n16), .A2(n8), .B1(mem[9]), .B2(n16), .ZN(
        n114) );
  INVD0BWP12T30P140 U20 ( .I(rp[0]), .ZN(n19) );
  INVD0BWP12T30P140 U21 ( .I(re), .ZN(n47) );
  NR2D0BWP12T30P140 U22 ( .A1(n19), .A2(n47), .ZN(n3) );
  AOI211D0BWP12T30P140 U23 ( .A1(n19), .A2(n47), .B(n3), .C(clr), .ZN(n90) );
  NR2D0BWP12T30P140 U24 ( .A1(n4), .A2(n45), .ZN(n14) );
  INVD0BWP12T30P140 U25 ( .I(din[4]), .ZN(n15) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n14), .A2(n15), .B1(mem[3]), .B2(n14), .ZN(
        n120) );
  INVD0BWP12T30P140 U27 ( .I(din[6]), .ZN(n17) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n16), .A2(n17), .B1(mem[13]), .B2(n16), .ZN(
        n110) );
  INVD0BWP12T30P140 U29 ( .I(n3), .ZN(n2) );
  AOI221D0BWP12T30P140 U30 ( .A1(rp[1]), .A2(n3), .B1(n20), .B2(n2), .C(clr), 
        .ZN(n91) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n9), .A2(n8), .B1(mem[17]), .B2(n9), .ZN(n106) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n9), .A2(n15), .B1(mem[19]), .B2(n9), .ZN(
        n104) );
  INVD0BWP12T30P140 U33 ( .I(din[1]), .ZN(n12) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n14), .A2(n12), .B1(mem[0]), .B2(n14), .ZN(
        n123) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n9), .A2(n13), .B1(mem[23]), .B2(n9), .ZN(
        n100) );
  INVD0BWP12T30P140 U36 ( .I(n45), .ZN(n5) );
  AOI221D0BWP12T30P140 U37 ( .A1(n5), .A2(wp[1]), .B1(n45), .B2(n4), .C(clr), 
        .ZN(n89) );
  MAOI22D0BWP12T30P140 U38 ( .A1(n14), .A2(n17), .B1(mem[5]), .B2(n14), .ZN(
        n118) );
  INVD0BWP12T30P140 U39 ( .I(din[5]), .ZN(n11) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n9), .A2(n11), .B1(mem[20]), .B2(n9), .ZN(
        n103) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n9), .A2(n12), .B1(mem[16]), .B2(n9), .ZN(
        n107) );
  NR2D0BWP12T30P140 U42 ( .A1(wp[1]), .A2(n43), .ZN(n18) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n18), .A2(n15), .B1(mem[27]), .B2(n18), .ZN(
        n96) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n14), .A2(n6), .B1(mem[6]), .B2(n14), .ZN(
        n117) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n9), .A2(n17), .B1(mem[21]), .B2(n9), .ZN(
        n102) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n14), .A2(n8), .B1(mem[1]), .B2(n14), .ZN(
        n122) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n18), .A2(n6), .B1(mem[30]), .B2(n18), .ZN(
        n93) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n16), .A2(n6), .B1(mem[14]), .B2(n16), .ZN(
        n109) );
  AOI221D0BWP12T30P140 U49 ( .A1(we), .A2(n43), .B1(n7), .B2(n43), .C(clr), 
        .ZN(n88) );
  INVD0BWP12T30P140 U50 ( .I(din[3]), .ZN(n10) );
  MAOI22D0BWP12T30P140 U51 ( .A1(n18), .A2(n10), .B1(mem[26]), .B2(n18), .ZN(
        n97) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n18), .A2(n8), .B1(mem[25]), .B2(n18), .ZN(
        n98) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n9), .A2(n10), .B1(mem[18]), .B2(n9), .ZN(
        n105) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n16), .A2(n11), .B1(mem[12]), .B2(n16), .ZN(
        n111) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n18), .A2(n13), .B1(mem[31]), .B2(n18), .ZN(
        n92) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n14), .A2(n10), .B1(mem[2]), .B2(n14), .ZN(
        n121) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n14), .A2(n11), .B1(mem[4]), .B2(n14), .ZN(
        n119) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n16), .A2(n10), .B1(mem[10]), .B2(n16), .ZN(
        n113) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n18), .A2(n11), .B1(mem[28]), .B2(n18), .ZN(
        n95) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n16), .A2(n12), .B1(mem[8]), .B2(n16), .ZN(
        n115) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n18), .A2(n12), .B1(mem[24]), .B2(n18), .ZN(
        n99) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n14), .A2(n13), .B1(mem[7]), .B2(n14), .ZN(
        n116) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n16), .A2(n15), .B1(mem[11]), .B2(n16), .ZN(
        n112) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n18), .A2(n17), .B1(mem[29]), .B2(n18), .ZN(
        n94) );
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
  AOI22D0BWP12T30P140 U74 ( .A1(n36), .A2(mem[16]), .B1(n35), .B2(mem[0]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U75 ( .A1(n38), .A2(mem[24]), .B1(n37), .B2(mem[8]), 
        .ZN(n23) );
  ND2D0BWP12T30P140 U76 ( .A1(n24), .A2(n23), .ZN(dout[1]) );
  AOI22D0BWP12T30P140 U77 ( .A1(n36), .A2(mem[17]), .B1(n35), .B2(mem[1]), 
        .ZN(n26) );
  AOI22D0BWP12T30P140 U78 ( .A1(n38), .A2(mem[25]), .B1(n37), .B2(mem[9]), 
        .ZN(n25) );
  ND2D0BWP12T30P140 U79 ( .A1(n26), .A2(n25), .ZN(dout[2]) );
  AOI22D0BWP12T30P140 U80 ( .A1(n36), .A2(mem[18]), .B1(n35), .B2(mem[2]), 
        .ZN(n28) );
  AOI22D0BWP12T30P140 U81 ( .A1(n38), .A2(mem[26]), .B1(n37), .B2(mem[10]), 
        .ZN(n27) );
  ND2D0BWP12T30P140 U82 ( .A1(n28), .A2(n27), .ZN(dout[3]) );
  AOI22D0BWP12T30P140 U83 ( .A1(n36), .A2(mem[19]), .B1(n35), .B2(mem[3]), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U84 ( .A1(n38), .A2(mem[27]), .B1(n37), .B2(mem[11]), 
        .ZN(n29) );
  ND2D0BWP12T30P140 U85 ( .A1(n30), .A2(n29), .ZN(dout[4]) );
  AOI22D0BWP12T30P140 U86 ( .A1(n36), .A2(mem[20]), .B1(n35), .B2(mem[4]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U87 ( .A1(n38), .A2(mem[28]), .B1(n37), .B2(mem[12]), 
        .ZN(n31) );
  ND2D0BWP12T30P140 U88 ( .A1(n32), .A2(n31), .ZN(dout[5]) );
  AOI22D0BWP12T30P140 U89 ( .A1(n36), .A2(mem[21]), .B1(n35), .B2(mem[5]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U90 ( .A1(n38), .A2(mem[29]), .B1(n37), .B2(mem[13]), 
        .ZN(n33) );
  ND2D0BWP12T30P140 U91 ( .A1(n34), .A2(n33), .ZN(dout[6]) );
  AOI22D0BWP12T30P140 U92 ( .A1(n36), .A2(mem[22]), .B1(n35), .B2(mem[6]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U93 ( .A1(n38), .A2(mem[30]), .B1(n37), .B2(mem[14]), 
        .ZN(n39) );
  ND2D0BWP12T30P140 U94 ( .A1(n40), .A2(n39), .ZN(dout[7]) );
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
  wire   wfwe, spsr_7, spsr_6, N48, N49, N50, N51, N52, N53, N54, N55, rfre,
         N57, N60, N62, N63, rfwe, wfre, N220, N221, n108, n109, n110, n111,
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
         n277, n278, n279, n280, n281, n282, n283, n284;
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

  fifo4_dw8_1 rfifo ( .clk(n282), .rst(n281), .clr(n152), .din({mosi_o, treg}), 
        .we(rfwe), .dout(rfdout), .re(rfre), .full(spsr[1]), .empty(spsr[0])
         );
  fifo4_dw8_0 wfifo ( .clk(n282), .rst(n281), .clr(n152), .din(dat_i), .we(
        wfwe), .dout(wfdout), .re(wfre), .full(spsr[3]), .empty(spsr[2]) );
  DFSNQD1BWP12T30P140 spcr_reg_4_ ( .D(n140), .CP(clk_i), .SDN(rst_i), .Q(
        spcr[4]) );
  DFCNQD1BWP12T30P140 sper_reg_5_ ( .D(n149), .CP(clk_i), .CDN(rst_i), .Q(
        sper[5]) );
  DFCNQD1BWP12T30P140 ack_o_reg ( .D(N57), .CP(clk_i), .CDN(n281), .Q(ack_o)
         );
  DFCNQD1BWP12T30P140 sper_reg_6_ ( .D(n150), .CP(clk_i), .CDN(rst_i), .Q(
        sper[6]) );
  DFCNQD1BWP12T30P140 sper_reg_3_ ( .D(n147), .CP(n284), .CDN(rst_i), .Q(
        sper[3]) );
  DFCNQD1BWP12T30P140 sper_reg_2_ ( .D(n146), .CP(n284), .CDN(rst_i), .Q(
        sper[2]) );
  DFCNQD1BWP12T30P140 sper_reg_0_ ( .D(n144), .CP(n284), .CDN(n281), .Q(
        sper[0]) );
  DFQD2BWP12T30P140 dat_o_reg_0_ ( .D(N48), .CP(n283), .Q(dat_o[0]) );
  DFQD2BWP12T30P140 dat_o_reg_1_ ( .D(N49), .CP(n283), .Q(dat_o[1]) );
  DFQD2BWP12T30P140 dat_o_reg_2_ ( .D(N50), .CP(n283), .Q(dat_o[2]) );
  DFQD2BWP12T30P140 dat_o_reg_3_ ( .D(N51), .CP(n283), .Q(dat_o[3]) );
  DFQD2BWP12T30P140 dat_o_reg_4_ ( .D(N52), .CP(n283), .Q(dat_o[4]) );
  DFQD2BWP12T30P140 dat_o_reg_5_ ( .D(N53), .CP(n283), .Q(dat_o[5]) );
  DFQD2BWP12T30P140 dat_o_reg_6_ ( .D(N54), .CP(n283), .Q(dat_o[6]) );
  DFQD2BWP12T30P140 dat_o_reg_7_ ( .D(N55), .CP(n284), .Q(dat_o[7]) );
  DFCNQD1BWP12T30P140 spcr_reg_5_ ( .D(n141), .CP(n284), .CDN(n281), .Q(
        spcr[5]) );
  DFCNQD1BWP12T30P140 sper_reg_4_ ( .D(n148), .CP(n284), .CDN(rst_i), .Q(
        sper[4]) );
  DFQD2BWP12T30P140 clkcnt_reg_6_ ( .D(n113), .CP(n282), .Q(clkcnt[6]) );
  DFQD2BWP12T30P140 clkcnt_reg_11_ ( .D(n108), .CP(n282), .Q(clkcnt[11]) );
  DFQD2BWP12T30P140 clkcnt_reg_5_ ( .D(n114), .CP(n282), .Q(clkcnt[5]) );
  DFQD2BWP12T30P140 wfre_reg ( .D(N220), .CP(n283), .Q(wfre) );
  DFCNQD1BWP12T30P140 spcr_reg_3_ ( .D(n139), .CP(n284), .CDN(n281), .Q(
        spcr[3]) );
  DFCNQD1BWP12T30P140 sper_reg_1_ ( .D(n145), .CP(n284), .CDN(n281), .Q(
        sper[1]) );
  DFCNQD1BWP12T30P140 sper_reg_7_ ( .D(n151), .CP(n284), .CDN(rst_i), .Q(
        sper[7]) );
  DFCNQD1BWP12T30P140 spcr_reg_2_ ( .D(n138), .CP(n284), .CDN(n281), .Q(
        spcr[2]) );
  DFCNQD1BWP12T30P140 spcr_reg_7_ ( .D(n143), .CP(n284), .CDN(n281), .Q(
        spcr[7]) );
  DFQD2BWP12T30P140 tcnt_reg_0_ ( .D(n135), .CP(n284), .Q(tcnt[0]) );
  DFQD2BWP12T30P140 clkcnt_reg_4_ ( .D(n115), .CP(n282), .Q(clkcnt[4]) );
  DFQD2BWP12T30P140 clkcnt_reg_0_ ( .D(n119), .CP(n282), .Q(clkcnt[0]) );
  DFQD2BWP12T30P140 clkcnt_reg_8_ ( .D(n111), .CP(n282), .Q(clkcnt[8]) );
  DFQD2BWP12T30P140 sck_o_reg ( .D(n133), .CP(n283), .Q(sck_o) );
  DFQD2BWP12T30P140 treg_reg_7_ ( .D(n131), .CP(n283), .Q(mosi_o) );
  DFQD2BWP12T30P140 clkcnt_reg_2_ ( .D(n117), .CP(n282), .Q(clkcnt[2]) );
  DFQD2BWP12T30P140 clkcnt_reg_10_ ( .D(n109), .CP(n282), .Q(clkcnt[10]) );
  DFQD2BWP12T30P140 clkcnt_reg_3_ ( .D(n116), .CP(n282), .Q(clkcnt[3]) );
  DFQD2BWP12T30P140 clkcnt_reg_7_ ( .D(n112), .CP(n282), .Q(clkcnt[7]) );
  DFQD2BWP12T30P140 spif_reg ( .D(N60), .CP(n284), .Q(spsr_7) );
  DFQD2BWP12T30P140 bcnt_reg_0_ ( .D(n124), .CP(n282), .Q(bcnt[0]) );
  DFQD2BWP12T30P140 clkcnt_reg_1_ ( .D(n118), .CP(n282), .Q(clkcnt[1]) );
  DFCNQD1BWP12T30P140 spcr_reg_6_ ( .D(n142), .CP(n284), .CDN(n281), .Q(
        spcr[6]) );
  DFCNQD1BWP12T30P140 spcr_reg_0_ ( .D(n136), .CP(n284), .CDN(n281), .Q(
        spcr[0]) );
  DFQD2BWP12T30P140 treg_reg_0_ ( .D(n132), .CP(n283), .Q(treg[0]) );
  DFQD2BWP12T30P140 treg_reg_2_ ( .D(n126), .CP(n283), .Q(treg[2]) );
  DFQD2BWP12T30P140 treg_reg_3_ ( .D(n127), .CP(n283), .Q(treg[3]) );
  DFQD2BWP12T30P140 treg_reg_4_ ( .D(n128), .CP(n283), .Q(treg[4]) );
  DFQD2BWP12T30P140 treg_reg_5_ ( .D(n129), .CP(n283), .Q(treg[5]) );
  DFQD2BWP12T30P140 treg_reg_6_ ( .D(n130), .CP(n283), .Q(treg[6]) );
  DFCNQD1BWP12T30P140 spcr_reg_1_ ( .D(n137), .CP(n284), .CDN(n281), .Q(
        spcr[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n120), .CP(n282), .Q(state[0]) );
  DFQD2BWP12T30P140 bcnt_reg_2_ ( .D(n122), .CP(n284), .Q(bcnt[2]) );
  DFQD2BWP12T30P140 tcnt_reg_1_ ( .D(n134), .CP(n284), .Q(tcnt[1]) );
  DFQD2BWP12T30P140 clkcnt_reg_9_ ( .D(n110), .CP(n282), .Q(clkcnt[9]) );
  DFQD2BWP12T30P140 bcnt_reg_1_ ( .D(n123), .CP(n284), .Q(bcnt[1]) );
  DFQD2BWP12T30P140 rfwe_reg ( .D(N221), .CP(n283), .Q(rfwe) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n121), .CP(n283), .Q(state[1]) );
  DFQD1BWP12T30P140 inta_o_reg ( .D(N63), .CP(n284), .Q(inta_o) );
  DFQD1BWP12T30P140 wcol_reg ( .D(N62), .CP(n283), .Q(spsr_6) );
  DFQD1BWP12T30P140 treg_reg_1_ ( .D(n125), .CP(n283), .Q(treg[1]) );
  ND3D0BWP12T30P140 U171 ( .A1(cyc_i), .A2(stb_i), .A3(we_i), .ZN(n190) );
  ND2D0BWP12T30P140 U172 ( .A1(adr_i[1]), .A2(adr_i[0]), .ZN(n164) );
  NR2D0BWP12T30P140 U173 ( .A1(n190), .A2(n164), .ZN(n179) );
  INVD0BWP12T30P140 U174 ( .I(dat_i[5]), .ZN(n166) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n179), .A2(n166), .B1(sper[5]), .B2(n179), 
        .ZN(n149) );
  ND2D0BWP12T30P140 U176 ( .A1(cyc_i), .A2(stb_i), .ZN(n276) );
  NR2D0BWP12T30P140 U177 ( .A1(ack_o), .A2(n276), .ZN(N57) );
  INVD0BWP12T30P140 U178 ( .I(dat_i[6]), .ZN(n231) );
  INVD0BWP12T30P140 U179 ( .I(sper[6]), .ZN(n184) );
  INVD0BWP12T30P140 U180 ( .I(n179), .ZN(n177) );
  AOI22D0BWP12T30P140 U181 ( .A1(n179), .A2(n231), .B1(n184), .B2(n177), .ZN(
        n150) );
  INVD0BWP12T30P140 U182 ( .I(dat_i[3]), .ZN(n176) );
  INVD0BWP12T30P140 U183 ( .I(sper[3]), .ZN(n163) );
  AOI22D0BWP12T30P140 U184 ( .A1(n179), .A2(n176), .B1(n163), .B2(n177), .ZN(
        n147) );
  INVD0BWP12T30P140 U185 ( .I(dat_i[2]), .ZN(n181) );
  INVD0BWP12T30P140 U186 ( .I(sper[2]), .ZN(n158) );
  AOI22D0BWP12T30P140 U187 ( .A1(n179), .A2(n181), .B1(n158), .B2(n177), .ZN(
        n146) );
  INVD0BWP12T30P140 U188 ( .I(dat_i[0]), .ZN(n233) );
  INVD0BWP12T30P140 U189 ( .I(sper[0]), .ZN(n214) );
  AOI22D0BWP12T30P140 U190 ( .A1(n179), .A2(n233), .B1(n214), .B2(n177), .ZN(
        n144) );
  INVD0BWP12T30P140 U191 ( .I(adr_i[1]), .ZN(n153) );
  NR2D0BWP12T30P140 U192 ( .A1(adr_i[0]), .A2(n153), .ZN(n263) );
  ND2D0BWP12T30P140 U193 ( .A1(adr_i[0]), .A2(n153), .ZN(n189) );
  INVD0BWP12T30P140 U194 ( .I(n189), .ZN(n262) );
  AOI22D0BWP12T30P140 U195 ( .A1(n263), .A2(rfdout[0]), .B1(n262), .B2(spsr[0]), .ZN(n155) );
  NR2D0BWP12T30P140 U196 ( .A1(adr_i[1]), .A2(adr_i[0]), .ZN(n264) );
  ND2D0BWP12T30P140 U197 ( .A1(spcr[0]), .A2(n264), .ZN(n154) );
  OAI211D0BWP12T30P140 U198 ( .A1(n164), .A2(n214), .B(n155), .C(n154), .ZN(
        N48) );
  INVD0BWP12T30P140 U199 ( .I(sper[1]), .ZN(n178) );
  AOI22D0BWP12T30P140 U200 ( .A1(n263), .A2(rfdout[1]), .B1(n262), .B2(spsr[1]), .ZN(n157) );
  ND2D0BWP12T30P140 U201 ( .A1(spcr[1]), .A2(n264), .ZN(n156) );
  OAI211D0BWP12T30P140 U202 ( .A1(n164), .A2(n178), .B(n157), .C(n156), .ZN(
        N49) );
  INVD0BWP12T30P140 U203 ( .I(spcr[2]), .ZN(n180) );
  INVD0BWP12T30P140 U204 ( .I(n264), .ZN(n165) );
  INVD0BWP12T30P140 U205 ( .I(spsr[2]), .ZN(n198) );
  OAI22D0BWP12T30P140 U206 ( .A1(n198), .A2(n189), .B1(n164), .B2(n158), .ZN(
        n159) );
  AOI21D0BWP12T30P140 U207 ( .A1(n263), .A2(rfdout[2]), .B(n159), .ZN(n160) );
  OAI21D0BWP12T30P140 U208 ( .A1(n180), .A2(n165), .B(n160), .ZN(N50) );
  AOI22D0BWP12T30P140 U209 ( .A1(spsr[3]), .A2(n262), .B1(n263), .B2(rfdout[3]), .ZN(n162) );
  ND2D0BWP12T30P140 U210 ( .A1(spcr[3]), .A2(n264), .ZN(n161) );
  OAI211D0BWP12T30P140 U211 ( .A1(n163), .A2(n164), .B(n162), .C(n161), .ZN(
        N51) );
  INVD0BWP12T30P140 U212 ( .I(n164), .ZN(n265) );
  AO222D0BWP12T30P140 U213 ( .A1(n263), .A2(rfdout[4]), .B1(sper[4]), .B2(n265), .C1(n264), .C2(spcr[4]), .Z(N52) );
  AO222D0BWP12T30P140 U214 ( .A1(n263), .A2(rfdout[5]), .B1(sper[5]), .B2(n265), .C1(spcr[5]), .C2(n264), .Z(N53) );
  AN2D0BWP12T30P140 U215 ( .A1(spsr_7), .A2(spcr[7]), .Z(N63) );
  NR2D0BWP12T30P140 U216 ( .A1(n190), .A2(n165), .ZN(n238) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n238), .A2(n166), .B1(spcr[5]), .B2(n238), 
        .ZN(n141) );
  CKMUX2D0BWP12T30P140 U218 ( .I0(sper[4]), .I1(dat_i[4]), .S(n179), .Z(n148)
         );
  INVD0BWP12T30P140 U219 ( .I(spcr[6]), .ZN(n152) );
  NR3D0BWP12T30P140 U220 ( .A1(clkcnt[0]), .A2(clkcnt[1]), .A3(clkcnt[2]), 
        .ZN(n203) );
  INVD0BWP12T30P140 U221 ( .I(clkcnt[3]), .ZN(n167) );
  IND3D1BWP12T30P140 U222 ( .A1(clkcnt[4]), .B1(n203), .B2(n167), .ZN(n188) );
  NR3D0BWP12T30P140 U223 ( .A1(clkcnt[6]), .A2(clkcnt[5]), .A3(n188), .ZN(n195) );
  INVD0BWP12T30P140 U224 ( .I(n195), .ZN(n218) );
  NR3D0BWP12T30P140 U225 ( .A1(clkcnt[8]), .A2(clkcnt[7]), .A3(n218), .ZN(n247) );
  INR4D0BWP12T30P140 U226 ( .A1(n247), .B1(clkcnt[11]), .B2(clkcnt[10]), .B3(
        clkcnt[9]), .ZN(n269) );
  NR2D0BWP12T30P140 U227 ( .A1(state[1]), .A2(state[0]), .ZN(n168) );
  NR2D0BWP12T30P140 U228 ( .A1(n168), .A2(n152), .ZN(n279) );
  INVD0BWP12T30P140 U229 ( .I(n279), .ZN(n246) );
  NR2D0BWP12T30P140 U230 ( .A1(n269), .A2(n246), .ZN(n227) );
  INVD0BWP12T30P140 U231 ( .I(n227), .ZN(n217) );
  INVD0BWP12T30P140 U232 ( .I(clkcnt[5]), .ZN(n174) );
  NR3D0BWP12T30P140 U233 ( .A1(n227), .A2(n178), .A3(n214), .ZN(n193) );
  AOI21D0BWP12T30P140 U234 ( .A1(n227), .A2(n188), .B(n193), .ZN(n175) );
  OAI21D0BWP12T30P140 U235 ( .A1(n174), .A2(n217), .B(n175), .ZN(n169) );
  INVD0BWP12T30P140 U236 ( .I(spcr[1]), .ZN(n236) );
  INVD0BWP12T30P140 U237 ( .I(n193), .ZN(n245) );
  ND2D0BWP12T30P140 U238 ( .A1(n217), .A2(n245), .ZN(n230) );
  AOI21D0BWP12T30P140 U239 ( .A1(n178), .A2(n214), .B(n230), .ZN(n192) );
  INVD0BWP12T30P140 U240 ( .I(n192), .ZN(n228) );
  AOI21D0BWP12T30P140 U241 ( .A1(n178), .A2(n236), .B(n228), .ZN(n171) );
  AOI22D0BWP12T30P140 U242 ( .A1(clkcnt[6]), .A2(n169), .B1(spcr[0]), .B2(n171), .ZN(n170) );
  NR2D0BWP12T30P140 U243 ( .A1(n178), .A2(n230), .ZN(n248) );
  INVD0BWP12T30P140 U244 ( .I(n248), .ZN(n209) );
  OAI211D0BWP12T30P140 U245 ( .A1(n217), .A2(n218), .B(n170), .C(n209), .ZN(
        n113) );
  NR2D0BWP12T30P140 U246 ( .A1(n188), .A2(n217), .ZN(n172) );
  AOI21D0BWP12T30P140 U247 ( .A1(n172), .A2(n174), .B(n171), .ZN(n173) );
  OAI21D0BWP12T30P140 U248 ( .A1(n175), .A2(n174), .B(n173), .ZN(n114) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n238), .A2(n176), .B1(spcr[3]), .B2(n238), 
        .ZN(n139) );
  INVD0BWP12T30P140 U250 ( .I(dat_i[1]), .ZN(n237) );
  AOI22D0BWP12T30P140 U251 ( .A1(n179), .A2(n237), .B1(n178), .B2(n177), .ZN(
        n145) );
  INVD0BWP12T30P140 U252 ( .I(dat_i[7]), .ZN(n182) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n179), .A2(n182), .B1(sper[7]), .B2(n179), 
        .ZN(n151) );
  INVD0BWP12T30P140 U254 ( .I(n238), .ZN(n277) );
  AOI22D0BWP12T30P140 U255 ( .A1(n238), .A2(n181), .B1(n180), .B2(n277), .ZN(
        n138) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n238), .A2(n182), .B1(spcr[7]), .B2(n238), 
        .ZN(n143) );
  INVD0BWP12T30P140 U257 ( .I(rfwe), .ZN(n183) );
  NR2D0BWP12T30P140 U258 ( .A1(tcnt[0]), .A2(n183), .ZN(n219) );
  AOI22D0BWP12T30P140 U259 ( .A1(tcnt[0]), .A2(n183), .B1(n219), .B2(tcnt[1]), 
        .ZN(n185) );
  NR2D0BWP12T30P140 U260 ( .A1(n219), .A2(n152), .ZN(n274) );
  OAI22D0BWP12T30P140 U261 ( .A1(n185), .A2(n152), .B1(n274), .B2(n184), .ZN(
        n135) );
  INVD0BWP12T30P140 U262 ( .I(spcr[0]), .ZN(n232) );
  OAI31D0BWP12T30P140 U263 ( .A1(sper[1]), .A2(spcr[1]), .A3(n232), .B(n192), 
        .ZN(n187) );
  OAI21D0BWP12T30P140 U264 ( .A1(n203), .A2(n217), .B(n245), .ZN(n212) );
  AOI32D0BWP12T30P140 U265 ( .A1(clkcnt[3]), .A2(clkcnt[4]), .A3(n227), .B1(
        n212), .B2(clkcnt[4]), .ZN(n186) );
  OAI211D0BWP12T30P140 U266 ( .A1(n217), .A2(n188), .B(n187), .C(n186), .ZN(
        n115) );
  ND2D0BWP12T30P140 U267 ( .A1(n263), .A2(ack_o), .ZN(n275) );
  NR2D0BWP12T30P140 U268 ( .A1(n190), .A2(n275), .ZN(wfwe) );
  NR2D0BWP12T30P140 U269 ( .A1(n190), .A2(n189), .ZN(n221) );
  AOI21D0BWP12T30P140 U270 ( .A1(spsr[3]), .A2(wfwe), .B(spsr_6), .ZN(n191) );
  AOI211D0BWP12T30P140 U271 ( .A1(dat_i[6]), .A2(n221), .B(n191), .C(n152), 
        .ZN(N62) );
  NR2D0BWP12T30P140 U272 ( .A1(spcr[1]), .A2(spcr[0]), .ZN(n197) );
  INVD0BWP12T30P140 U273 ( .I(clkcnt[0]), .ZN(n225) );
  AOI221D0BWP12T30P140 U274 ( .A1(n193), .A2(clkcnt[0]), .B1(n227), .B2(n225), 
        .C(n192), .ZN(n194) );
  OAI21D0BWP12T30P140 U275 ( .A1(n197), .A2(n230), .B(n194), .ZN(n119) );
  ND2D0BWP12T30P140 U276 ( .A1(n247), .A2(n227), .ZN(n251) );
  OAI21D0BWP12T30P140 U277 ( .A1(n195), .A2(n246), .B(n245), .ZN(n215) );
  AOI32D0BWP12T30P140 U278 ( .A1(n279), .A2(clkcnt[8]), .A3(clkcnt[7]), .B1(
        n215), .B2(clkcnt[8]), .ZN(n196) );
  OAI211D0BWP12T30P140 U279 ( .A1(n197), .A2(n209), .B(n251), .C(n196), .ZN(
        n111) );
  NR3D0BWP12T30P140 U280 ( .A1(state[1]), .A2(state[0]), .A3(n152), .ZN(n252)
         );
  INVD0BWP12T30P140 U281 ( .I(n252), .ZN(n243) );
  NR2D0BWP12T30P140 U282 ( .A1(spsr[2]), .A2(n243), .ZN(N220) );
  INVD0BWP12T30P140 U283 ( .I(state[0]), .ZN(n268) );
  AOI21D0BWP12T30P140 U284 ( .A1(n279), .A2(n268), .B(n227), .ZN(n202) );
  INVD0BWP12T30P140 U285 ( .I(state[1]), .ZN(n259) );
  NR3D0BWP12T30P140 U286 ( .A1(n152), .A2(n259), .A3(n268), .ZN(n241) );
  NR3D0BWP12T30P140 U287 ( .A1(bcnt[1]), .A2(bcnt[0]), .A3(bcnt[2]), .ZN(n239)
         );
  ND2D0BWP12T30P140 U288 ( .A1(n241), .A2(n239), .ZN(n256) );
  AOI32D0BWP12T30P140 U289 ( .A1(spcr[2]), .A2(n256), .A3(n198), .B1(n243), 
        .B2(n256), .ZN(n200) );
  AOI21D0BWP12T30P140 U290 ( .A1(state[1]), .A2(n239), .B(n268), .ZN(n271) );
  AOI22D0BWP12T30P140 U291 ( .A1(spcr[6]), .A2(n271), .B1(N220), .B2(spcr[2]), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U292 ( .A1(spcr[3]), .A2(n200), .B1(sck_o), .B2(n199), 
        .ZN(n201) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n202), .A2(n201), .B1(sck_o), .B2(n202), 
        .ZN(n133) );
  OAI21D0BWP12T30P140 U294 ( .A1(n246), .A2(state[1]), .B(n202), .ZN(n235) );
  ND2D0BWP12T30P140 U295 ( .A1(n241), .A2(n202), .ZN(n255) );
  INVD0BWP12T30P140 U296 ( .I(n255), .ZN(n234) );
  AO222D0BWP12T30P140 U297 ( .A1(n235), .A2(mosi_o), .B1(treg[6]), .B2(n234), 
        .C1(n252), .C2(wfdout[7]), .Z(n131) );
  NR3D0BWP12T30P140 U298 ( .A1(n230), .A2(n236), .A3(n232), .ZN(n206) );
  INVD0BWP12T30P140 U299 ( .I(n206), .ZN(n208) );
  ND2D0BWP12T30P140 U300 ( .A1(n203), .A2(n227), .ZN(n210) );
  OAI21D0BWP12T30P140 U301 ( .A1(n217), .A2(n225), .B(n245), .ZN(n224) );
  AOI32D0BWP12T30P140 U302 ( .A1(clkcnt[1]), .A2(clkcnt[2]), .A3(n227), .B1(
        n224), .B2(clkcnt[2]), .ZN(n204) );
  ND4D0BWP12T30P140 U303 ( .A1(n208), .A2(n228), .A3(n210), .A4(n204), .ZN(
        n117) );
  INVD0BWP12T30P140 U304 ( .I(clkcnt[9]), .ZN(n205) );
  AOI32D0BWP12T30P140 U305 ( .A1(n247), .A2(n245), .A3(n205), .B1(n246), .B2(
        n245), .ZN(n278) );
  AOI22D0BWP12T30P140 U306 ( .A1(clkcnt[10]), .A2(n278), .B1(sper[1]), .B2(
        n206), .ZN(n207) );
  OAI31D0BWP12T30P140 U307 ( .A1(clkcnt[10]), .A2(clkcnt[9]), .A3(n251), .B(
        n207), .ZN(n109) );
  OAI211D0BWP12T30P140 U308 ( .A1(clkcnt[3]), .A2(n210), .B(n209), .C(n208), 
        .ZN(n211) );
  AOI21D0BWP12T30P140 U309 ( .A1(clkcnt[3]), .A2(n212), .B(n211), .ZN(n213) );
  OAI31D0BWP12T30P140 U310 ( .A1(spcr[0]), .A2(n214), .A3(n230), .B(n213), 
        .ZN(n116) );
  AOI21D0BWP12T30P140 U311 ( .A1(clkcnt[7]), .A2(n215), .B(n248), .ZN(n216) );
  OAI31D0BWP12T30P140 U312 ( .A1(clkcnt[7]), .A2(n218), .A3(n217), .B(n216), 
        .ZN(n112) );
  INR2D1BWP12T30P140 U313 ( .A1(n219), .B1(tcnt[1]), .ZN(n272) );
  OAI21D0BWP12T30P140 U314 ( .A1(n272), .A2(spsr_7), .B(spcr[6]), .ZN(n220) );
  AOI21D0BWP12T30P140 U315 ( .A1(n221), .A2(dat_i[7]), .B(n220), .ZN(N60) );
  INVD0BWP12T30P140 U316 ( .I(n235), .ZN(n240) );
  INVD0BWP12T30P140 U317 ( .I(bcnt[0]), .ZN(n223) );
  ND2D0BWP12T30P140 U318 ( .A1(n234), .A2(n223), .ZN(n222) );
  OAI211D0BWP12T30P140 U319 ( .A1(n240), .A2(n223), .B(n243), .C(n222), .ZN(
        n124) );
  INVD0BWP12T30P140 U320 ( .I(clkcnt[1]), .ZN(n226) );
  AOI32D0BWP12T30P140 U321 ( .A1(n227), .A2(n226), .A3(n225), .B1(clkcnt[1]), 
        .B2(n224), .ZN(n229) );
  OAI211D0BWP12T30P140 U322 ( .A1(n236), .A2(n230), .B(n229), .C(n228), .ZN(
        n118) );
  AOI22D0BWP12T30P140 U323 ( .A1(n238), .A2(n231), .B1(n152), .B2(n277), .ZN(
        n142) );
  AOI22D0BWP12T30P140 U324 ( .A1(n238), .A2(n233), .B1(n232), .B2(n277), .ZN(
        n136) );
  AO222D0BWP12T30P140 U325 ( .A1(n235), .A2(treg[0]), .B1(miso_i), .B2(n234), 
        .C1(n252), .C2(wfdout[0]), .Z(n132) );
  AO222D0BWP12T30P140 U326 ( .A1(n235), .A2(treg[1]), .B1(treg[0]), .B2(n234), 
        .C1(n252), .C2(wfdout[1]), .Z(n125) );
  AO222D0BWP12T30P140 U327 ( .A1(n235), .A2(treg[2]), .B1(treg[1]), .B2(n234), 
        .C1(n252), .C2(wfdout[2]), .Z(n126) );
  AO222D0BWP12T30P140 U328 ( .A1(n235), .A2(treg[3]), .B1(treg[2]), .B2(n234), 
        .C1(n252), .C2(wfdout[3]), .Z(n127) );
  AO222D0BWP12T30P140 U329 ( .A1(n235), .A2(treg[4]), .B1(treg[3]), .B2(n234), 
        .C1(n252), .C2(wfdout[4]), .Z(n128) );
  AO222D0BWP12T30P140 U330 ( .A1(n235), .A2(treg[5]), .B1(treg[4]), .B2(n234), 
        .C1(n252), .C2(wfdout[5]), .Z(n129) );
  AO222D0BWP12T30P140 U331 ( .A1(n235), .A2(treg[6]), .B1(treg[5]), .B2(n234), 
        .C1(n252), .C2(wfdout[6]), .Z(n130) );
  AOI22D0BWP12T30P140 U332 ( .A1(n238), .A2(n237), .B1(n236), .B2(n277), .ZN(
        n137) );
  INVD0BWP12T30P140 U333 ( .I(n239), .ZN(n244) );
  IOA21D0BWP12T30P140 U334 ( .A1(bcnt[0]), .A2(n241), .B(n240), .ZN(n253) );
  AOI32D0BWP12T30P140 U335 ( .A1(n241), .A2(bcnt[2]), .A3(bcnt[1]), .B1(n253), 
        .B2(bcnt[2]), .ZN(n242) );
  OAI211D0BWP12T30P140 U336 ( .A1(n255), .A2(n244), .B(n243), .C(n242), .ZN(
        n122) );
  OAI21D0BWP12T30P140 U337 ( .A1(n247), .A2(n246), .B(n245), .ZN(n249) );
  AOI22D0BWP12T30P140 U338 ( .A1(clkcnt[9]), .A2(n249), .B1(spcr[1]), .B2(n248), .ZN(n250) );
  OAI21D0BWP12T30P140 U339 ( .A1(clkcnt[9]), .A2(n251), .B(n250), .ZN(n110) );
  AOI21D0BWP12T30P140 U340 ( .A1(bcnt[1]), .A2(n253), .B(n252), .ZN(n254) );
  OAI31D0BWP12T30P140 U341 ( .A1(bcnt[1]), .A2(bcnt[0]), .A3(n255), .B(n254), 
        .ZN(n123) );
  INVD0BWP12T30P140 U342 ( .I(n269), .ZN(n258) );
  NR2D0BWP12T30P140 U343 ( .A1(n258), .A2(n256), .ZN(N221) );
  ND2D0BWP12T30P140 U344 ( .A1(spcr[6]), .A2(state[0]), .ZN(n257) );
  AOI221D0BWP12T30P140 U345 ( .A1(state[1]), .A2(n269), .B1(n259), .B2(n258), 
        .C(n257), .ZN(n121) );
  CKBD0BWP12T30P140 U346 ( .I(clk_i), .Z(n284) );
  CKBD0BWP12T30P140 U347 ( .I(clk_i), .Z(n283) );
  CKBD0BWP12T30P140 U348 ( .I(clk_i), .Z(n282) );
  CKBD0BWP12T30P140 U349 ( .I(rst_i), .Z(n281) );
  AOI22D0BWP12T30P140 U350 ( .A1(spsr_6), .A2(n262), .B1(n263), .B2(rfdout[6]), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U351 ( .A1(spcr[6]), .A2(n264), .B1(n265), .B2(sper[6]), 
        .ZN(n260) );
  ND2D0BWP12T30P140 U352 ( .A1(n261), .A2(n260), .ZN(N54) );
  AOI22D0BWP12T30P140 U353 ( .A1(n263), .A2(rfdout[7]), .B1(n262), .B2(spsr_7), 
        .ZN(n267) );
  AOI22D0BWP12T30P140 U354 ( .A1(sper[7]), .A2(n265), .B1(n264), .B2(spcr[7]), 
        .ZN(n266) );
  ND2D0BWP12T30P140 U355 ( .A1(n267), .A2(n266), .ZN(N55) );
  OAI22D0BWP12T30P140 U356 ( .A1(state[1]), .A2(spsr[2]), .B1(n269), .B2(n268), 
        .ZN(n270) );
  IAO21D0BWP12T30P140 U357 ( .A1(n271), .A2(n270), .B(n152), .ZN(n120) );
  OAI21D0BWP12T30P140 U358 ( .A1(n272), .A2(n152), .B(sper[7]), .ZN(n273) );
  IOA21D0BWP12T30P140 U359 ( .A1(n274), .A2(tcnt[1]), .B(n273), .ZN(n134) );
  NR3D0BWP12T30P140 U360 ( .A1(we_i), .A2(n276), .A3(n275), .ZN(rfre) );
  IND2D1BWP12T30P140 U361 ( .A1(spcr[4]), .B1(n277), .ZN(n140) );
  AOI21D0BWP12T30P140 U362 ( .A1(clkcnt[10]), .A2(n279), .B(n278), .ZN(n280)
         );
  INR2D1BWP12T30P140 U363 ( .A1(clkcnt[11]), .B1(n280), .ZN(n108) );
endmodule

