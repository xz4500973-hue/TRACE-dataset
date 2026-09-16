/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:50:43 2026
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

  DFSNQD1BWP12T30P140 q_reg_0_ ( .D(n109), .CP(n58), .SDN(n56), .Q(q[0]) );
  DFSNQD1BWP12T30P140 q_reg_2_ ( .D(n107), .CP(n58), .SDN(n56), .Q(q[2]) );
  DFSNQD1BWP12T30P140 q_reg_4_ ( .D(n105), .CP(n58), .SDN(n56), .Q(q[4]) );
  DFSNQD1BWP12T30P140 q_reg_6_ ( .D(n103), .CP(n58), .SDN(n56), .Q(q[6]) );
  DFSNQD1BWP12T30P140 q_reg_8_ ( .D(n101), .CP(n58), .SDN(n56), .Q(q[8]) );
  DFSNQD1BWP12T30P140 q_reg_10_ ( .D(n99), .CP(n58), .SDN(n56), .Q(q[10]) );
  DFSNQD1BWP12T30P140 q_reg_12_ ( .D(n97), .CP(n58), .SDN(n56), .Q(q[12]) );
  DFSNQD1BWP12T30P140 q_reg_14_ ( .D(n95), .CP(n58), .SDN(n56), .Q(q[14]) );
  DFSNQD1BWP12T30P140 q_reg_16_ ( .D(n93), .CP(n58), .SDN(n56), .Q(q[16]) );
  DFSNQD1BWP12T30P140 q_reg_18_ ( .D(n91), .CP(n58), .SDN(n56), .Q(q[18]) );
  DFSNQD1BWP12T30P140 q_reg_20_ ( .D(n89), .CP(n58), .SDN(n56), .Q(q[20]) );
  DFSNQD1BWP12T30P140 q_reg_22_ ( .D(n87), .CP(n58), .SDN(n56), .Q(q[22]) );
  DFSNQD1BWP12T30P140 q_reg_24_ ( .D(n85), .CP(n58), .SDN(n56), .Q(q[24]) );
  DFSNQD1BWP12T30P140 q_reg_26_ ( .D(n83), .CP(n58), .SDN(n56), .Q(q[26]) );
  DFSNQD1BWP12T30P140 q_reg_28_ ( .D(n81), .CP(n58), .SDN(n56), .Q(q[28]) );
  DFSNQD1BWP12T30P140 q_reg_30_ ( .D(n79), .CP(n58), .SDN(n56), .Q(q[30]) );
  DFCNQD1BWP12T30P140 q_reg_5_ ( .D(n73), .CP(clk), .CDN(n56), .Q(q[5]) );
  DFCNQD1BWP12T30P140 q_reg_7_ ( .D(n71), .CP(clk), .CDN(n56), .Q(q[7]) );
  DFCNQD1BWP12T30P140 q_reg_13_ ( .D(n65), .CP(clk), .CDN(n46), .Q(q[13]) );
  DFCNQD1BWP12T30P140 q_reg_21_ ( .D(n57), .CP(clk), .CDN(n46), .Q(q[21]) );
  DFCNQD1BWP12T30P140 q_reg_19_ ( .D(n59), .CP(clk), .CDN(n56), .Q(q[19]) );
  DFCNQD1BWP12T30P140 q_reg_23_ ( .D(n55), .CP(clk), .CDN(n46), .Q(q[23]) );
  DFCNQD1BWP12T30P140 q_reg_1_ ( .D(n77), .CP(clk), .CDN(n46), .Q(q[1]) );
  DFCNQD1BWP12T30P140 q_reg_11_ ( .D(n67), .CP(clk), .CDN(n46), .Q(q[11]) );
  DFCNQD1BWP12T30P140 q_reg_15_ ( .D(n63), .CP(clk), .CDN(n46), .Q(q[15]) );
  DFCNQD1BWP12T30P140 q_reg_17_ ( .D(n61), .CP(clk), .CDN(n46), .Q(q[17]) );
  DFCNQD1BWP12T30P140 q_reg_25_ ( .D(n53), .CP(n58), .CDN(n46), .Q(q[25]) );
  DFCNQD1BWP12T30P140 q_reg_9_ ( .D(n69), .CP(clk), .CDN(n46), .Q(q[9]) );
  DFCNQD1BWP12T30P140 q_reg_3_ ( .D(n75), .CP(clk), .CDN(n56), .Q(q[3]) );
  DFCNQD1BWP12T30P140 q_reg_29_ ( .D(n49), .CP(n58), .CDN(n46), .Q(q[29]) );
  DFCNQD1BWP12T30P140 q_reg_31_ ( .D(n47), .CP(n58), .CDN(n46), .Q(q[31]) );
  DFCNQD1BWP12T30P140 q_reg_27_ ( .D(n51), .CP(n58), .CDN(n46), .Q(q[27]) );
  INVD0BWP12T30P140 U2 ( .I(q[24]), .ZN(n15) );
  INVD0BWP12T30P140 U3 ( .I(q[25]), .ZN(n39) );
  INVD0BWP12T30P140 U4 ( .I(ce), .ZN(n20) );
  AOI22D0BWP12T30P140 U5 ( .A1(ce), .A2(n15), .B1(n39), .B2(n20), .ZN(n53) );
  INVD0BWP12T30P140 U6 ( .I(q[12]), .ZN(n45) );
  INVD0BWP12T30P140 U7 ( .I(q[13]), .ZN(n34) );
  INVD0BWP12T30P140 U8 ( .I(ce), .ZN(n42) );
  AOI22D0BWP12T30P140 U9 ( .A1(ce), .A2(n45), .B1(n34), .B2(n42), .ZN(n65) );
  CKBD0BWP12T30P140 U10 ( .I(ce), .Z(n54) );
  INVD0BWP12T30P140 U11 ( .I(q[0]), .ZN(n44) );
  INVD0BWP12T30P140 U12 ( .I(q[31]), .ZN(n21) );
  INVD0BWP12T30P140 U13 ( .I(q[28]), .ZN(n16) );
  INVD0BWP12T30P140 U14 ( .I(q[27]), .ZN(n17) );
  INVD0BWP12T30P140 U15 ( .I(q[29]), .ZN(n30) );
  AOI22D0BWP12T30P140 U16 ( .A1(q[29]), .A2(q[27]), .B1(n17), .B2(n30), .ZN(n1) );
  MUX2ND0BWP12T30P140 U17 ( .I0(n16), .I1(q[28]), .S(n1), .ZN(n2) );
  MUX2ND0BWP12T30P140 U18 ( .I0(n21), .I1(q[31]), .S(n2), .ZN(n13) );
  INVD0BWP12T30P140 U19 ( .I(q[17]), .ZN(n36) );
  INVD0BWP12T30P140 U20 ( .I(q[19]), .ZN(n19) );
  AOI22D0BWP12T30P140 U21 ( .A1(q[19]), .A2(q[17]), .B1(n36), .B2(n19), .ZN(
        n10) );
  INVD0BWP12T30P140 U22 ( .I(q[20]), .ZN(n37) );
  INVD0BWP12T30P140 U23 ( .I(q[23]), .ZN(n18) );
  AOI22D0BWP12T30P140 U24 ( .A1(q[23]), .A2(q[20]), .B1(n37), .B2(n18), .ZN(n9) );
  INVD0BWP12T30P140 U25 ( .I(q[14]), .ZN(n33) );
  INVD0BWP12T30P140 U26 ( .I(q[15]), .ZN(n52) );
  INVD0BWP12T30P140 U27 ( .I(q[11]), .ZN(n48) );
  AOI22D0BWP12T30P140 U28 ( .A1(q[12]), .A2(q[11]), .B1(n48), .B2(n45), .ZN(n3) );
  MUX2ND0BWP12T30P140 U29 ( .I0(n52), .I1(q[15]), .S(n3), .ZN(n4) );
  MUX2ND0BWP12T30P140 U30 ( .I0(n33), .I1(q[14]), .S(n4), .ZN(n8) );
  INVD0BWP12T30P140 U31 ( .I(q[9]), .ZN(n27) );
  INVD0BWP12T30P140 U32 ( .I(q[4]), .ZN(n26) );
  INVD0BWP12T30P140 U33 ( .I(q[3]), .ZN(n23) );
  INVD0BWP12T30P140 U34 ( .I(q[2]), .ZN(n24) );
  AOI22D0BWP12T30P140 U35 ( .A1(q[2]), .A2(q[3]), .B1(n23), .B2(n24), .ZN(n5)
         );
  MUX2ND0BWP12T30P140 U36 ( .I0(n26), .I1(q[4]), .S(n5), .ZN(n6) );
  MUX2ND0BWP12T30P140 U37 ( .I0(q[9]), .I1(n27), .S(n6), .ZN(n7) );
  XNR4D0BWP12T30P140 U38 ( .A1(n10), .A2(n9), .A3(n8), .A4(n7), .ZN(n12) );
  ND2D0BWP12T30P140 U39 ( .A1(n13), .A2(n12), .ZN(n11) );
  OAI211D0BWP12T30P140 U40 ( .A1(n13), .A2(n12), .B(n54), .C(n11), .ZN(n14) );
  OAI21D0BWP12T30P140 U41 ( .A1(n54), .A2(n44), .B(n14), .ZN(n109) );
  AOI22D0BWP12T30P140 U42 ( .A1(ce), .A2(n33), .B1(n52), .B2(n42), .ZN(n63) );
  AOI22D0BWP12T30P140 U43 ( .A1(n54), .A2(n23), .B1(n26), .B2(n20), .ZN(n105)
         );
  AOI22D0BWP12T30P140 U44 ( .A1(n54), .A2(n17), .B1(n16), .B2(n42), .ZN(n81)
         );
  AOI22D0BWP12T30P140 U45 ( .A1(n54), .A2(n18), .B1(n15), .B2(n20), .ZN(n85)
         );
  AOI22D0BWP12T30P140 U46 ( .A1(ce), .A2(n16), .B1(n30), .B2(n20), .ZN(n49) );
  INVD0BWP12T30P140 U47 ( .I(q[26]), .ZN(n38) );
  AOI22D0BWP12T30P140 U48 ( .A1(ce), .A2(n38), .B1(n17), .B2(n20), .ZN(n51) );
  INVD0BWP12T30P140 U49 ( .I(q[22]), .ZN(n40) );
  AOI22D0BWP12T30P140 U50 ( .A1(ce), .A2(n40), .B1(n18), .B2(n20), .ZN(n55) );
  INVD0BWP12T30P140 U51 ( .I(q[10]), .ZN(n35) );
  AOI22D0BWP12T30P140 U52 ( .A1(n54), .A2(n27), .B1(n35), .B2(n20), .ZN(n99)
         );
  INVD0BWP12T30P140 U53 ( .I(q[18]), .ZN(n22) );
  AOI22D0BWP12T30P140 U54 ( .A1(ce), .A2(n22), .B1(n19), .B2(n42), .ZN(n59) );
  AOI22D0BWP12T30P140 U55 ( .A1(n54), .A2(n19), .B1(n37), .B2(n20), .ZN(n89)
         );
  INVD0BWP12T30P140 U56 ( .I(q[1]), .ZN(n43) );
  AOI22D0BWP12T30P140 U57 ( .A1(n54), .A2(n43), .B1(n24), .B2(n20), .ZN(n107)
         );
  INVD0BWP12T30P140 U58 ( .I(q[30]), .ZN(n29) );
  AOI22D0BWP12T30P140 U59 ( .A1(ce), .A2(n29), .B1(n21), .B2(n20), .ZN(n47) );
  AOI22D0BWP12T30P140 U60 ( .A1(n54), .A2(n36), .B1(n22), .B2(n20), .ZN(n91)
         );
  AOI22D0BWP12T30P140 U61 ( .A1(n54), .A2(n24), .B1(n23), .B2(n42), .ZN(n75)
         );
  INVD0BWP12T30P140 U62 ( .I(q[6]), .ZN(n31) );
  INVD0BWP12T30P140 U63 ( .I(q[7]), .ZN(n25) );
  AOI22D0BWP12T30P140 U64 ( .A1(ce), .A2(n31), .B1(n25), .B2(n42), .ZN(n71) );
  INVD0BWP12T30P140 U65 ( .I(q[8]), .ZN(n28) );
  AOI22D0BWP12T30P140 U66 ( .A1(n54), .A2(n25), .B1(n28), .B2(n20), .ZN(n101)
         );
  INVD0BWP12T30P140 U67 ( .I(q[5]), .ZN(n32) );
  AOI22D0BWP12T30P140 U68 ( .A1(n54), .A2(n26), .B1(n32), .B2(n42), .ZN(n73)
         );
  AOI22D0BWP12T30P140 U69 ( .A1(ce), .A2(n28), .B1(n27), .B2(n42), .ZN(n69) );
  AOI22D0BWP12T30P140 U70 ( .A1(n54), .A2(n30), .B1(n29), .B2(n42), .ZN(n79)
         );
  AOI22D0BWP12T30P140 U71 ( .A1(n54), .A2(n32), .B1(n31), .B2(n20), .ZN(n103)
         );
  AOI22D0BWP12T30P140 U72 ( .A1(n54), .A2(n34), .B1(n33), .B2(n20), .ZN(n95)
         );
  AOI22D0BWP12T30P140 U73 ( .A1(ce), .A2(n35), .B1(n48), .B2(n42), .ZN(n67) );
  INVD0BWP12T30P140 U74 ( .I(q[16]), .ZN(n50) );
  AOI22D0BWP12T30P140 U75 ( .A1(ce), .A2(n50), .B1(n36), .B2(n42), .ZN(n61) );
  INVD0BWP12T30P140 U76 ( .I(q[21]), .ZN(n41) );
  AOI22D0BWP12T30P140 U77 ( .A1(ce), .A2(n37), .B1(n41), .B2(n42), .ZN(n57) );
  AOI22D0BWP12T30P140 U78 ( .A1(n54), .A2(n39), .B1(n38), .B2(n42), .ZN(n83)
         );
  AOI22D0BWP12T30P140 U79 ( .A1(n54), .A2(n41), .B1(n40), .B2(n20), .ZN(n87)
         );
  AOI22D0BWP12T30P140 U80 ( .A1(n54), .A2(n44), .B1(n43), .B2(n42), .ZN(n77)
         );
  AOI22D0BWP12T30P140 U81 ( .A1(n54), .A2(n48), .B1(n45), .B2(n42), .ZN(n97)
         );
  AOI22D0BWP12T30P140 U82 ( .A1(n54), .A2(n52), .B1(n50), .B2(n20), .ZN(n93)
         );
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

