/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:30:22 2026
/////////////////////////////////////////////////////////////


module pseudo_random ( clk, ce, rst, q );
  output [31:0] q;
  input clk, ce, rst;
  wire   n46, n47, n49, n51, n53, n55, n57, n59, n61, n63, n65, n67, n69, n71,
         n73, n75, n77, n79, n81, n83, n85, n87, n89, n91, n93, n95, n97, n99,
         n101, n103, n105, n107, n109, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n48, n50, n52, n54, n56, n58;

  DFSNQD1BWP12T30P140 q_reg_1_ ( .D(n77), .CP(n58), .SDN(n56), .Q(q[1]) );
  DFSNQD1BWP12T30P140 q_reg_3_ ( .D(n75), .CP(n58), .SDN(n56), .Q(q[3]) );
  DFSNQD1BWP12T30P140 q_reg_5_ ( .D(n73), .CP(n58), .SDN(n56), .Q(q[5]) );
  DFSNQD1BWP12T30P140 q_reg_7_ ( .D(n71), .CP(n58), .SDN(n56), .Q(q[7]) );
  DFSNQD1BWP12T30P140 q_reg_9_ ( .D(n69), .CP(n58), .SDN(n56), .Q(q[9]) );
  DFSNQD1BWP12T30P140 q_reg_11_ ( .D(n67), .CP(n58), .SDN(n56), .Q(q[11]) );
  DFSNQD1BWP12T30P140 q_reg_13_ ( .D(n65), .CP(n58), .SDN(n56), .Q(q[13]) );
  DFSNQD1BWP12T30P140 q_reg_15_ ( .D(n63), .CP(n58), .SDN(n56), .Q(q[15]) );
  DFSNQD1BWP12T30P140 q_reg_17_ ( .D(n61), .CP(n58), .SDN(n56), .Q(q[17]) );
  DFSNQD1BWP12T30P140 q_reg_19_ ( .D(n59), .CP(n58), .SDN(n56), .Q(q[19]) );
  DFSNQD1BWP12T30P140 q_reg_21_ ( .D(n57), .CP(n58), .SDN(n56), .Q(q[21]) );
  DFSNQD1BWP12T30P140 q_reg_23_ ( .D(n55), .CP(n58), .SDN(n56), .Q(q[23]) );
  DFSNQD1BWP12T30P140 q_reg_25_ ( .D(n53), .CP(n58), .SDN(n56), .Q(q[25]) );
  DFSNQD1BWP12T30P140 q_reg_27_ ( .D(n51), .CP(n58), .SDN(n56), .Q(q[27]) );
  DFSNQD1BWP12T30P140 q_reg_29_ ( .D(n49), .CP(n58), .SDN(n56), .Q(q[29]) );
  DFSNQD1BWP12T30P140 q_reg_31_ ( .D(n47), .CP(n58), .SDN(n56), .Q(q[31]) );
  DFCNQD1BWP12T30P140 q_reg_6_ ( .D(n103), .CP(clk), .CDN(n46), .Q(q[6]) );
  DFCNQD1BWP12T30P140 q_reg_8_ ( .D(n101), .CP(clk), .CDN(n46), .Q(q[8]) );
  DFCNQD1BWP12T30P140 q_reg_10_ ( .D(n99), .CP(clk), .CDN(n46), .Q(q[10]) );
  DFCNQD1BWP12T30P140 q_reg_16_ ( .D(n93), .CP(clk), .CDN(n46), .Q(q[16]) );
  DFCNQD1BWP12T30P140 q_reg_18_ ( .D(n91), .CP(clk), .CDN(n46), .Q(q[18]) );
  DFCNQD1BWP12T30P140 q_reg_30_ ( .D(n79), .CP(clk), .CDN(n46), .Q(q[30]) );
  DFCNQD1BWP12T30P140 q_reg_0_ ( .D(n109), .CP(clk), .CDN(n56), .Q(q[0]) );
  DFCNQD1BWP12T30P140 q_reg_12_ ( .D(n97), .CP(clk), .CDN(n46), .Q(q[12]) );
  DFCNQD1BWP12T30P140 q_reg_4_ ( .D(n105), .CP(clk), .CDN(n56), .Q(q[4]) );
  DFCNQD1BWP12T30P140 q_reg_14_ ( .D(n95), .CP(clk), .CDN(n46), .Q(q[14]) );
  DFCNQD1BWP12T30P140 q_reg_20_ ( .D(n89), .CP(clk), .CDN(n46), .Q(q[20]) );
  DFCNQD1BWP12T30P140 q_reg_22_ ( .D(n87), .CP(n58), .CDN(n46), .Q(q[22]) );
  DFCNQD1BWP12T30P140 q_reg_24_ ( .D(n85), .CP(n58), .CDN(n56), .Q(q[24]) );
  DFCNQD1BWP12T30P140 q_reg_26_ ( .D(n83), .CP(n58), .CDN(n46), .Q(q[26]) );
  DFCNQD1BWP12T30P140 q_reg_2_ ( .D(n107), .CP(clk), .CDN(n56), .Q(q[2]) );
  DFCNQD1BWP12T30P140 q_reg_28_ ( .D(n81), .CP(n58), .CDN(n46), .Q(q[28]) );
  CKBD0BWP12T30P140 U2 ( .I(ce), .Z(n44) );
  INVD0BWP12T30P140 U3 ( .I(q[0]), .ZN(n43) );
  INVD0BWP12T30P140 U4 ( .I(q[1]), .ZN(n3) );
  INVD0BWP12T30P140 U5 ( .I(ce), .ZN(n50) );
  AOI22D0BWP12T30P140 U6 ( .A1(n44), .A2(n43), .B1(n3), .B2(n50), .ZN(n77) );
  INVD0BWP12T30P140 U7 ( .I(q[9]), .ZN(n34) );
  INVD0BWP12T30P140 U8 ( .I(q[10]), .ZN(n8) );
  INVD0BWP12T30P140 U9 ( .I(ce), .ZN(n12) );
  AOI22D0BWP12T30P140 U10 ( .A1(n44), .A2(n34), .B1(n8), .B2(n12), .ZN(n99) );
  INVD0BWP12T30P140 U11 ( .I(q[28]), .ZN(n18) );
  INVD0BWP12T30P140 U12 ( .I(q[29]), .ZN(n15) );
  AOI22D0BWP12T30P140 U13 ( .A1(ce), .A2(n18), .B1(n15), .B2(n50), .ZN(n49) );
  INVD0BWP12T30P140 U14 ( .I(q[3]), .ZN(n30) );
  INVD0BWP12T30P140 U15 ( .I(q[4]), .ZN(n32) );
  AOI22D0BWP12T30P140 U16 ( .A1(n44), .A2(n30), .B1(n32), .B2(n12), .ZN(n105)
         );
  INVD0BWP12T30P140 U17 ( .I(q[5]), .ZN(n7) );
  AOI22D0BWP12T30P140 U18 ( .A1(n44), .A2(n32), .B1(n7), .B2(n50), .ZN(n73) );
  INVD0BWP12T30P140 U19 ( .I(q[23]), .ZN(n22) );
  INVD0BWP12T30P140 U20 ( .I(q[24]), .ZN(n1) );
  AOI22D0BWP12T30P140 U21 ( .A1(n44), .A2(n22), .B1(n1), .B2(n12), .ZN(n85) );
  INVD0BWP12T30P140 U22 ( .I(q[25]), .ZN(n5) );
  AOI22D0BWP12T30P140 U23 ( .A1(ce), .A2(n1), .B1(n5), .B2(n12), .ZN(n53) );
  INVD0BWP12T30P140 U24 ( .I(q[27]), .ZN(n16) );
  AOI22D0BWP12T30P140 U25 ( .A1(n44), .A2(n16), .B1(n18), .B2(n50), .ZN(n81)
         );
  INVD0BWP12T30P140 U26 ( .I(q[21]), .ZN(n2) );
  INVD0BWP12T30P140 U27 ( .I(q[22]), .ZN(n14) );
  AOI22D0BWP12T30P140 U28 ( .A1(n44), .A2(n2), .B1(n14), .B2(n12), .ZN(n87) );
  INVD0BWP12T30P140 U29 ( .I(q[30]), .ZN(n9) );
  AOI22D0BWP12T30P140 U30 ( .A1(n44), .A2(n15), .B1(n9), .B2(n50), .ZN(n79) );
  INVD0BWP12T30P140 U31 ( .I(q[19]), .ZN(n21) );
  INVD0BWP12T30P140 U32 ( .I(q[20]), .ZN(n23) );
  AOI22D0BWP12T30P140 U33 ( .A1(n44), .A2(n21), .B1(n23), .B2(n12), .ZN(n89)
         );
  INVD0BWP12T30P140 U34 ( .I(q[17]), .ZN(n52) );
  INVD0BWP12T30P140 U35 ( .I(q[18]), .ZN(n4) );
  AOI22D0BWP12T30P140 U36 ( .A1(n44), .A2(n52), .B1(n4), .B2(n12), .ZN(n91) );
  AOI22D0BWP12T30P140 U37 ( .A1(ce), .A2(n23), .B1(n2), .B2(n50), .ZN(n57) );
  INVD0BWP12T30P140 U38 ( .I(q[2]), .ZN(n29) );
  AOI22D0BWP12T30P140 U39 ( .A1(n44), .A2(n3), .B1(n29), .B2(n12), .ZN(n107)
         );
  AOI22D0BWP12T30P140 U40 ( .A1(n44), .A2(n29), .B1(n30), .B2(n50), .ZN(n75)
         );
  AOI22D0BWP12T30P140 U41 ( .A1(ce), .A2(n4), .B1(n21), .B2(n50), .ZN(n59) );
  INVD0BWP12T30P140 U42 ( .I(q[26]), .ZN(n13) );
  AOI22D0BWP12T30P140 U43 ( .A1(n44), .A2(n5), .B1(n13), .B2(n12), .ZN(n83) );
  INVD0BWP12T30P140 U44 ( .I(q[7]), .ZN(n10) );
  INVD0BWP12T30P140 U45 ( .I(q[8]), .ZN(n6) );
  AOI22D0BWP12T30P140 U46 ( .A1(n44), .A2(n10), .B1(n6), .B2(n12), .ZN(n101)
         );
  AOI22D0BWP12T30P140 U47 ( .A1(ce), .A2(n6), .B1(n34), .B2(n50), .ZN(n69) );
  INVD0BWP12T30P140 U48 ( .I(q[6]), .ZN(n11) );
  AOI22D0BWP12T30P140 U49 ( .A1(n44), .A2(n7), .B1(n11), .B2(n12), .ZN(n103)
         );
  INVD0BWP12T30P140 U50 ( .I(q[11]), .ZN(n24) );
  AOI22D0BWP12T30P140 U51 ( .A1(ce), .A2(n8), .B1(n24), .B2(n50), .ZN(n67) );
  INVD0BWP12T30P140 U52 ( .I(q[31]), .ZN(n20) );
  AOI22D0BWP12T30P140 U53 ( .A1(ce), .A2(n9), .B1(n20), .B2(n50), .ZN(n47) );
  AOI22D0BWP12T30P140 U54 ( .A1(ce), .A2(n11), .B1(n10), .B2(n50), .ZN(n71) );
  INVD0BWP12T30P140 U55 ( .I(q[14]), .ZN(n28) );
  INVD0BWP12T30P140 U56 ( .I(q[15]), .ZN(n26) );
  AOI22D0BWP12T30P140 U57 ( .A1(ce), .A2(n28), .B1(n26), .B2(n50), .ZN(n63) );
  INVD0BWP12T30P140 U58 ( .I(q[12]), .ZN(n48) );
  AOI22D0BWP12T30P140 U59 ( .A1(n44), .A2(n24), .B1(n48), .B2(n12), .ZN(n97)
         );
  INVD0BWP12T30P140 U60 ( .I(q[13]), .ZN(n45) );
  AOI22D0BWP12T30P140 U61 ( .A1(n44), .A2(n45), .B1(n28), .B2(n12), .ZN(n95)
         );
  INVD0BWP12T30P140 U62 ( .I(q[16]), .ZN(n54) );
  AOI22D0BWP12T30P140 U63 ( .A1(n44), .A2(n26), .B1(n54), .B2(n12), .ZN(n93)
         );
  AOI22D0BWP12T30P140 U64 ( .A1(ce), .A2(n13), .B1(n16), .B2(n12), .ZN(n51) );
  AOI22D0BWP12T30P140 U65 ( .A1(ce), .A2(n14), .B1(n22), .B2(n50), .ZN(n55) );
  AOI22D0BWP12T30P140 U66 ( .A1(q[29]), .A2(q[27]), .B1(n16), .B2(n15), .ZN(
        n17) );
  MUX2ND0BWP12T30P140 U67 ( .I0(n18), .I1(q[28]), .S(n17), .ZN(n19) );
  MUX2ND0BWP12T30P140 U68 ( .I0(n20), .I1(q[31]), .S(n19), .ZN(n41) );
  AOI22D0BWP12T30P140 U69 ( .A1(q[19]), .A2(q[17]), .B1(n52), .B2(n21), .ZN(
        n38) );
  AOI22D0BWP12T30P140 U70 ( .A1(q[23]), .A2(q[20]), .B1(n23), .B2(n22), .ZN(
        n37) );
  AOI22D0BWP12T30P140 U71 ( .A1(q[12]), .A2(q[11]), .B1(n24), .B2(n48), .ZN(
        n25) );
  MUX2ND0BWP12T30P140 U72 ( .I0(n26), .I1(q[15]), .S(n25), .ZN(n27) );
  MUX2ND0BWP12T30P140 U73 ( .I0(n28), .I1(q[14]), .S(n27), .ZN(n36) );
  AOI22D0BWP12T30P140 U74 ( .A1(q[2]), .A2(q[3]), .B1(n30), .B2(n29), .ZN(n31)
         );
  MUX2ND0BWP12T30P140 U75 ( .I0(n32), .I1(q[4]), .S(n31), .ZN(n33) );
  MUX2ND0BWP12T30P140 U76 ( .I0(q[9]), .I1(n34), .S(n33), .ZN(n35) );
  XNR4D0BWP12T30P140 U77 ( .A1(n38), .A2(n37), .A3(n36), .A4(n35), .ZN(n40) );
  ND2D0BWP12T30P140 U78 ( .A1(n41), .A2(n40), .ZN(n39) );
  OAI211D0BWP12T30P140 U79 ( .A1(n41), .A2(n40), .B(n44), .C(n39), .ZN(n42) );
  OAI21D0BWP12T30P140 U80 ( .A1(n44), .A2(n43), .B(n42), .ZN(n109) );
  AOI22D0BWP12T30P140 U81 ( .A1(ce), .A2(n48), .B1(n45), .B2(n50), .ZN(n65) );
  AOI22D0BWP12T30P140 U82 ( .A1(ce), .A2(n54), .B1(n52), .B2(n50), .ZN(n61) );
  CKBD0BWP12T30P140 U83 ( .I(clk), .Z(n58) );
  INVD0BWP12T30P140 U84 ( .I(rst), .ZN(n46) );
  CKBD0BWP12T30P140 U85 ( .I(n46), .Z(n56) );
endmodule


module random_pulse_generator ( clk, ce, rst, q );
  input clk, ce, rst;
  output q;
  wire   n4, n5, n6, n7, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28;
  wire   [3:0] uniform_random;

  pseudo_random pseudo_random_gen ( .clk(clk), .ce(ce), .rst(rst), .q({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, uniform_random}) );
  DFQD1BWP12T30P140 q_reg ( .D(n4), .CP(clk), .Q(q) );
  OR4D0BWP12T30P140 U7 ( .A1(uniform_random[2]), .A2(uniform_random[3]), .A3(
        uniform_random[1]), .A4(uniform_random[0]), .Z(n7) );
  INVD0BWP12T30P140 U8 ( .I(ce), .ZN(n6) );
  INVD0BWP12T30P140 U9 ( .I(q), .ZN(n5) );
  OAI32D0BWP12T30P140 U10 ( .A1(q), .A2(n7), .A3(n6), .B1(ce), .B2(n5), .ZN(n4) );
endmodule

