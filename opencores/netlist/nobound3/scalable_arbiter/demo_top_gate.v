/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:08:42 2026
/////////////////////////////////////////////////////////////


module pulser_count99 ( enable, out, clock, reset );
  input enable, clock, reset;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [7:0] counter;

  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n3), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 counter_reg_3_ ( .D(n5), .CP(clock), .Q(counter[3]) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n4), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n6), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n2), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n7), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n8), .CP(clock), .Q(counter[0]) );
  DFQD2BWP12T30P140 out_reg ( .D(counter[7]), .CP(clock), .Q(out) );
  DFQD2BWP12T30P140 counter_reg_7_ ( .D(n1), .CP(clock), .Q(counter[7]) );
  INVD0BWP12T30P140 U3 ( .I(counter[5]), .ZN(n12) );
  INVD0BWP12T30P140 U4 ( .I(counter[3]), .ZN(n10) );
  ND3D0BWP12T30P140 U5 ( .A1(counter[1]), .A2(counter[0]), .A3(counter[2]), 
        .ZN(n17) );
  NR2D0BWP12T30P140 U6 ( .A1(n10), .A2(n17), .ZN(n14) );
  ND2D0BWP12T30P140 U7 ( .A1(n14), .A2(counter[4]), .ZN(n13) );
  NR2D0BWP12T30P140 U8 ( .A1(n12), .A2(n13), .ZN(n11) );
  NR2D0BWP12T30P140 U9 ( .A1(n11), .A2(counter[6]), .ZN(n9) );
  AOI211D0BWP12T30P140 U10 ( .A1(n11), .A2(counter[6]), .B(counter[7]), .C(n9), 
        .ZN(n2) );
  INVD0BWP12T30P140 U11 ( .I(counter[7]), .ZN(n19) );
  AOI32D0BWP12T30P140 U12 ( .A1(n17), .A2(n19), .A3(n10), .B1(n14), .B2(n19), 
        .ZN(n5) );
  ND2D0BWP12T30P140 U13 ( .A1(counter[1]), .A2(counter[0]), .ZN(n16) );
  OA211D0BWP12T30P140 U14 ( .A1(counter[1]), .A2(counter[0]), .B(n19), .C(n16), 
        .Z(n7) );
  AN3D0BWP12T30P140 U15 ( .A1(n11), .A2(counter[6]), .A3(n19), .Z(n1) );
  AOI211D0BWP12T30P140 U16 ( .A1(n13), .A2(n12), .B(counter[7]), .C(n11), .ZN(
        n3) );
  OAI21D0BWP12T30P140 U17 ( .A1(counter[4]), .A2(n14), .B(n13), .ZN(n15) );
  ND2D0BWP12T30P140 U18 ( .A1(n15), .A2(n19), .ZN(n4) );
  ND2D0BWP12T30P140 U19 ( .A1(counter[0]), .A2(n19), .ZN(n8) );
  INVD0BWP12T30P140 U20 ( .I(n16), .ZN(n18) );
  OAI21D0BWP12T30P140 U21 ( .A1(counter[2]), .A2(n18), .B(n17), .ZN(n20) );
  ND2D0BWP12T30P140 U22 ( .A1(n20), .A2(n19), .ZN(n6) );
endmodule


module pulser_count1000 ( enable, out, clock, reset );
  input enable, clock, reset;
  output out;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n2, n3, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [10:0] counter;

  DFQD2BWP12T30P140 counter_reg_9_ ( .D(n12), .CP(clock), .Q(counter[9]) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n7), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_3_ ( .D(n6), .CP(clock), .Q(counter[3]) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n9), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n5), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 out_reg ( .D(counter[10]), .CP(clock), .Q(out) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n4), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_7_ ( .D(n10), .CP(clock), .Q(counter[7]) );
  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n8), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n14), .CP(clock), .Q(counter[0]) );
  DFQD2BWP12T30P140 counter_reg_10_ ( .D(n13), .CP(clock), .Q(counter[10]) );
  DFQD1BWP12T30P140 counter_reg_8_ ( .D(n11), .CP(clock), .Q(counter[8]) );
  INVD0BWP12T30P140 U3 ( .I(counter[3]), .ZN(n3) );
  INVD0BWP12T30P140 U4 ( .I(counter[10]), .ZN(n31) );
  ND3D0BWP12T30P140 U5 ( .A1(counter[2]), .A2(counter[1]), .A3(counter[0]), 
        .ZN(n15) );
  NR2D0BWP12T30P140 U6 ( .A1(counter[10]), .A2(enable), .ZN(n30) );
  OR2D0BWP12T30P140 U7 ( .A1(n15), .A2(n30), .Z(n2) );
  NR3D0BWP12T30P140 U8 ( .A1(n30), .A2(n15), .A3(n3), .ZN(n41) );
  AOI32D0BWP12T30P140 U9 ( .A1(n3), .A2(n31), .A3(n2), .B1(n41), .B2(n31), 
        .ZN(n6) );
  ND2D0BWP12T30P140 U10 ( .A1(enable), .A2(n31), .ZN(n43) );
  INVD0BWP12T30P140 U11 ( .I(counter[4]), .ZN(n40) );
  NR3D0BWP12T30P140 U12 ( .A1(n15), .A2(n3), .A3(n40), .ZN(n29) );
  ND2D0BWP12T30P140 U13 ( .A1(counter[5]), .A2(n29), .ZN(n19) );
  AO31D0BWP12T30P140 U14 ( .A1(counter[5]), .A2(enable), .A3(n29), .B(
        counter[10]), .Z(n16) );
  INVD0BWP12T30P140 U15 ( .I(counter[6]), .ZN(n20) );
  OAI32D0BWP12T30P140 U16 ( .A1(counter[6]), .A2(n43), .A3(n19), .B1(n16), 
        .B2(n20), .ZN(n9) );
  ND2D0BWP12T30P140 U17 ( .A1(counter[1]), .A2(counter[0]), .ZN(n18) );
  NR2D0BWP12T30P140 U18 ( .A1(counter[1]), .A2(n43), .ZN(n27) );
  AOI21D0BWP12T30P140 U19 ( .A1(enable), .A2(counter[0]), .B(counter[10]), 
        .ZN(n28) );
  OAI21D0BWP12T30P140 U20 ( .A1(n27), .A2(n28), .B(counter[2]), .ZN(n17) );
  OAI31D0BWP12T30P140 U21 ( .A1(counter[2]), .A2(n43), .A3(n18), .B(n17), .ZN(
        n5) );
  NR2D0BWP12T30P140 U22 ( .A1(n20), .A2(n19), .ZN(n24) );
  INVD0BWP12T30P140 U23 ( .I(n24), .ZN(n23) );
  IOA21D0BWP12T30P140 U24 ( .A1(enable), .A2(n24), .B(n31), .ZN(n22) );
  INVD0BWP12T30P140 U25 ( .I(counter[7]), .ZN(n21) );
  OAI32D0BWP12T30P140 U26 ( .A1(counter[7]), .A2(n43), .A3(n23), .B1(n22), 
        .B2(n21), .ZN(n10) );
  ND2D0BWP12T30P140 U27 ( .A1(counter[7]), .A2(n24), .ZN(n35) );
  AO31D0BWP12T30P140 U28 ( .A1(counter[7]), .A2(enable), .A3(n24), .B(
        counter[10]), .Z(n25) );
  INVD0BWP12T30P140 U29 ( .I(counter[8]), .ZN(n36) );
  OAI32D0BWP12T30P140 U30 ( .A1(counter[8]), .A2(n43), .A3(n35), .B1(n25), 
        .B2(n36), .ZN(n11) );
  INVD0BWP12T30P140 U31 ( .I(counter[0]), .ZN(n26) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n43), .A2(n26), .B1(n26), .B2(n30), .ZN(n14)
         );
  AO22D0BWP12T30P140 U33 ( .A1(counter[1]), .A2(n28), .B1(counter[0]), .B2(n27), .Z(n4) );
  INVD0BWP12T30P140 U34 ( .I(n29), .ZN(n34) );
  AOI21D0BWP12T30P140 U35 ( .A1(n31), .A2(n34), .B(n30), .ZN(n33) );
  INVD0BWP12T30P140 U36 ( .I(counter[5]), .ZN(n32) );
  OAI32D0BWP12T30P140 U37 ( .A1(counter[5]), .A2(n43), .A3(n34), .B1(n33), 
        .B2(n32), .ZN(n8) );
  INVD0BWP12T30P140 U38 ( .I(counter[9]), .ZN(n42) );
  NR2D0BWP12T30P140 U39 ( .A1(n36), .A2(n35), .ZN(n44) );
  ND2D0BWP12T30P140 U40 ( .A1(n44), .A2(enable), .ZN(n38) );
  NR2D0BWP12T30P140 U41 ( .A1(n42), .A2(n38), .ZN(n37) );
  AOI211D0BWP12T30P140 U42 ( .A1(n42), .A2(n38), .B(counter[10]), .C(n37), 
        .ZN(n12) );
  AOI21D0BWP12T30P140 U43 ( .A1(n41), .A2(n40), .B(counter[10]), .ZN(n39) );
  OAI21D0BWP12T30P140 U44 ( .A1(n41), .A2(n40), .B(n39), .ZN(n7) );
  INR3D1BWP12T30P140 U45 ( .A1(n44), .B1(n43), .B2(n42), .ZN(n13) );
endmodule


module debouncer_low_count250_1 ( enable, in, out, rising_pulse, falling_pulse, 
        valid, clock, reset );
  input [0:0] in;
  output [0:0] out;
  input enable, clock, reset;
  output rising_pulse, falling_pulse, valid;
  wire   in_reg_0_, N32, N33, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46;
  wire   [8:0] counter;

  DFQD2BWP12T30P140 falling_pulse_reg ( .D(N33), .CP(clock), .Q(falling_pulse)
         );
  DFQD2BWP12T30P140 valid_reg ( .D(counter[8]), .CP(clock), .Q(valid) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n21), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_7_ ( .D(n22), .CP(clock), .Q(counter[7]) );
  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n20), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 in_reg_reg_0_ ( .D(in[0]), .CP(clock), .Q(in_reg_0_) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n19), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n17), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n16), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n24), .CP(clock), .Q(counter[0]) );
  DFQD2BWP12T30P140 counter_reg_3_ ( .D(n18), .CP(clock), .Q(counter[3]) );
  DFQD2BWP12T30P140 counter_reg_8_ ( .D(n23), .CP(clock), .Q(counter[8]) );
  DFQD2BWP12T30P140 rising_pulse_reg ( .D(N32), .CP(clock), .Q(rising_pulse)
         );
  DFQD1BWP12T30P140 out_reg_reg_0_ ( .D(n15), .CP(clock), .Q(out[0]) );
  AN3D0BWP12T30P140 U3 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .Z(n33) );
  ND3D0BWP12T30P140 U4 ( .A1(n33), .A2(counter[3]), .A3(counter[4]), .ZN(n7)
         );
  INVD0BWP12T30P140 U5 ( .I(counter[8]), .ZN(n46) );
  INVD0BWP12T30P140 U6 ( .I(in_reg_0_), .ZN(n44) );
  ND2D0BWP12T30P140 U7 ( .A1(in[0]), .A2(n44), .ZN(n8) );
  OAI21D0BWP12T30P140 U8 ( .A1(in[0]), .A2(n44), .B(n8), .ZN(n43) );
  INVD0BWP12T30P140 U9 ( .I(n43), .ZN(n29) );
  ND3D0BWP12T30P140 U10 ( .A1(enable), .A2(n46), .A3(n29), .ZN(n40) );
  INVD0BWP12T30P140 U11 ( .I(n40), .ZN(n28) );
  INVD0BWP12T30P140 U12 ( .I(counter[5]), .ZN(n11) );
  NR2D0BWP12T30P140 U13 ( .A1(n28), .A2(n43), .ZN(n38) );
  AOI221D0BWP12T30P140 U14 ( .A1(n7), .A2(n28), .B1(n11), .B2(n28), .C(n38), 
        .ZN(n3) );
  INVD0BWP12T30P140 U15 ( .I(counter[6]), .ZN(n4) );
  NR2D0BWP12T30P140 U16 ( .A1(n40), .A2(n7), .ZN(n9) );
  ND3D0BWP12T30P140 U17 ( .A1(n4), .A2(n9), .A3(counter[5]), .ZN(n2) );
  OAI211D0BWP12T30P140 U18 ( .A1(n3), .A2(n4), .B(n8), .C(n2), .ZN(n21) );
  NR3D0BWP12T30P140 U19 ( .A1(n7), .A2(n11), .A3(n4), .ZN(n5) );
  ND2D0BWP12T30P140 U20 ( .A1(n28), .A2(n5), .ZN(n41) );
  INVD0BWP12T30P140 U21 ( .I(counter[7]), .ZN(n42) );
  INVD0BWP12T30P140 U22 ( .I(n38), .ZN(n32) );
  OA32D0BWP12T30P140 U23 ( .A1(n40), .A2(n42), .A3(n5), .B1(n32), .B2(n42), 
        .Z(n6) );
  OAI211D0BWP12T30P140 U24 ( .A1(counter[7]), .A2(n41), .B(n8), .C(n6), .ZN(
        n22) );
  AOI21D0BWP12T30P140 U25 ( .A1(n28), .A2(n7), .B(n38), .ZN(n12) );
  INVD0BWP12T30P140 U26 ( .I(n8), .ZN(n37) );
  AOI21D0BWP12T30P140 U27 ( .A1(n9), .A2(n11), .B(n37), .ZN(n10) );
  OAI21D0BWP12T30P140 U28 ( .A1(n12), .A2(n11), .B(n10), .ZN(n20) );
  INVD0BWP12T30P140 U29 ( .I(out[0]), .ZN(n45) );
  AOI22D0BWP12T30P140 U30 ( .A1(counter[8]), .A2(n44), .B1(n45), .B2(n46), 
        .ZN(n15) );
  INVD0BWP12T30P140 U31 ( .I(counter[3]), .ZN(n25) );
  ND2D0BWP12T30P140 U32 ( .A1(n28), .A2(n33), .ZN(n36) );
  AOI31D0BWP12T30P140 U33 ( .A1(n33), .A2(counter[3]), .A3(n28), .B(n43), .ZN(
        n13) );
  AOI21D0BWP12T30P140 U34 ( .A1(counter[4]), .A2(n13), .B(n37), .ZN(n14) );
  OAI31D0BWP12T30P140 U35 ( .A1(counter[4]), .A2(n25), .A3(n36), .B(n14), .ZN(
        n19) );
  ND3D0BWP12T30P140 U36 ( .A1(n28), .A2(counter[0]), .A3(counter[1]), .ZN(n27)
         );
  AOI21D0BWP12T30P140 U37 ( .A1(counter[2]), .A2(n27), .B(n43), .ZN(n26) );
  OAI21D0BWP12T30P140 U38 ( .A1(counter[2]), .A2(n27), .B(n26), .ZN(n17) );
  INVD0BWP12T30P140 U39 ( .I(n27), .ZN(n31) );
  AOI21D0BWP12T30P140 U40 ( .A1(counter[0]), .A2(n28), .B(counter[1]), .ZN(n30) );
  OAI21D0BWP12T30P140 U41 ( .A1(n31), .A2(n30), .B(n29), .ZN(n16) );
  OAI21D0BWP12T30P140 U42 ( .A1(n33), .A2(n40), .B(n32), .ZN(n34) );
  AOI21D0BWP12T30P140 U43 ( .A1(counter[3]), .A2(n34), .B(n37), .ZN(n35) );
  OAI21D0BWP12T30P140 U44 ( .A1(counter[3]), .A2(n36), .B(n35), .ZN(n18) );
  AOI21D0BWP12T30P140 U45 ( .A1(counter[0]), .A2(n38), .B(n37), .ZN(n39) );
  OAI21D0BWP12T30P140 U46 ( .A1(counter[0]), .A2(n40), .B(n39), .ZN(n24) );
  OAI22D0BWP12T30P140 U47 ( .A1(n43), .A2(n46), .B1(n42), .B2(n41), .ZN(n23)
         );
  NR3D0BWP12T30P140 U48 ( .A1(out[0]), .A2(n46), .A3(n44), .ZN(N32) );
  NR3D0BWP12T30P140 U49 ( .A1(in_reg_0_), .A2(n46), .A3(n45), .ZN(N33) );
endmodule


module debouncer_low_count250_0 ( enable, in, out, rising_pulse, falling_pulse, 
        valid, clock, reset );
  input [0:0] in;
  output [0:0] out;
  input enable, clock, reset;
  output rising_pulse, falling_pulse, valid;
  wire   in_reg_0_, N32, N33, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56;
  wire   [8:0] counter;

  DFQD2BWP12T30P140 falling_pulse_reg ( .D(N33), .CP(clock), .Q(falling_pulse)
         );
  DFQD2BWP12T30P140 valid_reg ( .D(counter[8]), .CP(clock), .Q(valid) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n50), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_7_ ( .D(n49), .CP(clock), .Q(counter[7]) );
  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n51), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 in_reg_reg_0_ ( .D(in[0]), .CP(clock), .Q(in_reg_0_) );
  DFQD2BWP12T30P140 out_reg_reg_0_ ( .D(n56), .CP(clock), .Q(out[0]) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n52), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n54), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n55), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n47), .CP(clock), .Q(counter[0]) );
  DFQD2BWP12T30P140 counter_reg_8_ ( .D(n48), .CP(clock), .Q(counter[8]) );
  DFQD1BWP12T30P140 counter_reg_3_ ( .D(n53), .CP(clock), .Q(counter[3]) );
  DFQD1BWP12T30P140 rising_pulse_reg ( .D(N32), .CP(clock), .Q(rising_pulse)
         );
  INVD0BWP12T30P140 U3 ( .I(counter[8]), .ZN(n46) );
  INVD0BWP12T30P140 U4 ( .I(in_reg_0_), .ZN(n44) );
  ND2D0BWP12T30P140 U5 ( .A1(in[0]), .A2(n44), .ZN(n13) );
  OAI21D0BWP12T30P140 U6 ( .A1(in[0]), .A2(n44), .B(n13), .ZN(n8) );
  INVD0BWP12T30P140 U7 ( .I(n8), .ZN(n34) );
  ND3D0BWP12T30P140 U8 ( .A1(enable), .A2(n46), .A3(n34), .ZN(n38) );
  INVD0BWP12T30P140 U9 ( .I(n38), .ZN(n33) );
  AN3D0BWP12T30P140 U10 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .Z(n39) );
  ND3D0BWP12T30P140 U11 ( .A1(n39), .A2(counter[3]), .A3(counter[4]), .ZN(n27)
         );
  INVD0BWP12T30P140 U12 ( .I(counter[5]), .ZN(n30) );
  INVD0BWP12T30P140 U13 ( .I(counter[6]), .ZN(n14) );
  NR3D0BWP12T30P140 U14 ( .A1(n27), .A2(n30), .A3(n14), .ZN(n2) );
  ND2D0BWP12T30P140 U15 ( .A1(n33), .A2(n2), .ZN(n6) );
  INVD0BWP12T30P140 U16 ( .I(counter[7]), .ZN(n7) );
  NR2D0BWP12T30P140 U17 ( .A1(n33), .A2(n8), .ZN(n26) );
  INVD0BWP12T30P140 U18 ( .I(n26), .ZN(n37) );
  OA32D0BWP12T30P140 U19 ( .A1(n38), .A2(n7), .A3(n2), .B1(n37), .B2(n7), .Z(
        n3) );
  OAI211D0BWP12T30P140 U20 ( .A1(counter[7]), .A2(n6), .B(n13), .C(n3), .ZN(
        n49) );
  INVD0BWP12T30P140 U21 ( .I(out[0]), .ZN(n45) );
  AOI22D0BWP12T30P140 U22 ( .A1(counter[8]), .A2(n44), .B1(n45), .B2(n46), 
        .ZN(n56) );
  ND3D0BWP12T30P140 U23 ( .A1(n33), .A2(counter[0]), .A3(counter[1]), .ZN(n32)
         );
  AOI21D0BWP12T30P140 U24 ( .A1(counter[2]), .A2(n32), .B(n8), .ZN(n4) );
  OAI21D0BWP12T30P140 U25 ( .A1(counter[2]), .A2(n32), .B(n4), .ZN(n54) );
  INVD0BWP12T30P140 U26 ( .I(n13), .ZN(n40) );
  AOI21D0BWP12T30P140 U27 ( .A1(counter[0]), .A2(n26), .B(n40), .ZN(n5) );
  OAI21D0BWP12T30P140 U28 ( .A1(counter[0]), .A2(n38), .B(n5), .ZN(n47) );
  OAI22D0BWP12T30P140 U29 ( .A1(n8), .A2(n46), .B1(n7), .B2(n6), .ZN(n48) );
  INVD0BWP12T30P140 U30 ( .I(counter[3]), .ZN(n11) );
  ND2D0BWP12T30P140 U31 ( .A1(n33), .A2(n39), .ZN(n43) );
  AOI31D0BWP12T30P140 U32 ( .A1(n39), .A2(counter[3]), .A3(n33), .B(n8), .ZN(
        n9) );
  AOI21D0BWP12T30P140 U33 ( .A1(counter[4]), .A2(n9), .B(n40), .ZN(n10) );
  OAI31D0BWP12T30P140 U34 ( .A1(counter[4]), .A2(n11), .A3(n43), .B(n10), .ZN(
        n52) );
  AOI221D0BWP12T30P140 U35 ( .A1(n27), .A2(n33), .B1(n30), .B2(n33), .C(n26), 
        .ZN(n25) );
  NR2D0BWP12T30P140 U36 ( .A1(n38), .A2(n27), .ZN(n28) );
  ND3D0BWP12T30P140 U37 ( .A1(n14), .A2(n28), .A3(counter[5]), .ZN(n12) );
  OAI211D0BWP12T30P140 U38 ( .A1(n25), .A2(n14), .B(n13), .C(n12), .ZN(n50) );
  AOI21D0BWP12T30P140 U39 ( .A1(n33), .A2(n27), .B(n26), .ZN(n31) );
  AOI21D0BWP12T30P140 U40 ( .A1(n28), .A2(n30), .B(n40), .ZN(n29) );
  OAI21D0BWP12T30P140 U41 ( .A1(n31), .A2(n30), .B(n29), .ZN(n51) );
  INVD0BWP12T30P140 U42 ( .I(n32), .ZN(n36) );
  AOI21D0BWP12T30P140 U43 ( .A1(counter[0]), .A2(n33), .B(counter[1]), .ZN(n35) );
  OAI21D0BWP12T30P140 U44 ( .A1(n36), .A2(n35), .B(n34), .ZN(n55) );
  OAI21D0BWP12T30P140 U45 ( .A1(n39), .A2(n38), .B(n37), .ZN(n41) );
  AOI21D0BWP12T30P140 U46 ( .A1(counter[3]), .A2(n41), .B(n40), .ZN(n42) );
  OAI21D0BWP12T30P140 U47 ( .A1(counter[3]), .A2(n43), .B(n42), .ZN(n53) );
  NR3D0BWP12T30P140 U48 ( .A1(out[0]), .A2(n46), .A3(n44), .ZN(N32) );
  NR3D0BWP12T30P140 U49 ( .A1(in_reg_0_), .A2(n46), .A3(n45), .ZN(N33) );
endmodule


module lfsr_width8 ( enable, load, in, out, clock, reset );
  output [7:0] out;
  input enable, load, in, clock, reset;
  wire   n14, n15, n17, n19, n21, n23, n25, n27, n29, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n16;

  DFSNQD1BWP12T30P140 out_reg_0_ ( .D(n29), .CP(clock), .SDN(n14), .Q(out[0])
         );
  DFSNQD1BWP12T30P140 out_reg_1_ ( .D(n27), .CP(clock), .SDN(n14), .Q(out[1])
         );
  DFSNQD1BWP12T30P140 out_reg_2_ ( .D(n25), .CP(clock), .SDN(n14), .Q(out[2])
         );
  DFSNQD1BWP12T30P140 out_reg_3_ ( .D(n23), .CP(clock), .SDN(n14), .Q(out[3])
         );
  DFSNQD1BWP12T30P140 out_reg_4_ ( .D(n21), .CP(clock), .SDN(n14), .Q(out[4])
         );
  DFSNQD1BWP12T30P140 out_reg_5_ ( .D(n19), .CP(clock), .SDN(n14), .Q(out[5])
         );
  DFSNQD1BWP12T30P140 out_reg_6_ ( .D(n17), .CP(clock), .SDN(n14), .Q(out[6])
         );
  DFSNQD1BWP12T30P140 out_reg_7_ ( .D(n15), .CP(clock), .SDN(n14), .Q(out[7])
         );
  INVD0BWP12T30P140 U2 ( .I(reset), .ZN(n14) );
  INVD0BWP12T30P140 U3 ( .I(out[0]), .ZN(n6) );
  INVD0BWP12T30P140 U4 ( .I(out[3]), .ZN(n9) );
  INVD0BWP12T30P140 U5 ( .I(out[4]), .ZN(n10) );
  AOI22D0BWP12T30P140 U6 ( .A1(out[4]), .A2(out[3]), .B1(n9), .B2(n10), .ZN(n4) );
  INVD0BWP12T30P140 U7 ( .I(out[5]), .ZN(n11) );
  INVD0BWP12T30P140 U8 ( .I(out[7]), .ZN(n13) );
  AOI22D0BWP12T30P140 U9 ( .A1(out[7]), .A2(out[5]), .B1(n11), .B2(n13), .ZN(
        n3) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(n2) );
  OAI211D0BWP12T30P140 U11 ( .A1(n4), .A2(n3), .B(enable), .C(n2), .ZN(n5) );
  OAI21D0BWP12T30P140 U12 ( .A1(enable), .A2(n6), .B(n5), .ZN(n29) );
  INVD0BWP12T30P140 U13 ( .I(out[1]), .ZN(n7) );
  INVD0BWP12T30P140 U14 ( .I(enable), .ZN(n12) );
  AOI22D0BWP12T30P140 U15 ( .A1(enable), .A2(n6), .B1(n7), .B2(n12), .ZN(n27)
         );
  INVD0BWP12T30P140 U16 ( .I(out[2]), .ZN(n8) );
  AOI22D0BWP12T30P140 U17 ( .A1(enable), .A2(n7), .B1(n8), .B2(n12), .ZN(n25)
         );
  AOI22D0BWP12T30P140 U18 ( .A1(enable), .A2(n8), .B1(n9), .B2(n12), .ZN(n23)
         );
  AOI22D0BWP12T30P140 U19 ( .A1(enable), .A2(n9), .B1(n10), .B2(n12), .ZN(n21)
         );
  AOI22D0BWP12T30P140 U20 ( .A1(enable), .A2(n10), .B1(n11), .B2(n12), .ZN(n19) );
  INVD0BWP12T30P140 U21 ( .I(out[6]), .ZN(n16) );
  AOI22D0BWP12T30P140 U22 ( .A1(enable), .A2(n11), .B1(n16), .B2(n12), .ZN(n17) );
  AOI22D0BWP12T30P140 U23 ( .A1(enable), .A2(n16), .B1(n13), .B2(n12), .ZN(n15) );
endmodule


module arbiter_node_3 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n2, n1, n3, n4;

  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n2), 
        .Q(select) );
  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n2), .Q(next_state) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n2) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module arbiter_node_4 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n1, n3, n4, n5;

  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n5), 
        .Q(select) );
  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n5), .Q(next_state) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module arbiter_node_1 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n1, n3, n4, n5;

  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n5), .Q(next_state) );
  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n5), 
        .Q(select) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module arbiter_node_0 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n4;

  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n4), .Q(next_state) );
  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n4), 
        .Q(select) );
  AN2D0BWP12T30P140 U3 ( .A1(select), .A2(req[1]), .Z(grant[1]) );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(grant[0]) );
  OR2D0BWP12T30P140 U5 ( .A1(grant[0]), .A2(req[1]), .Z(valid) );
  INVD0BWP12T30P140 U6 ( .I(reset), .ZN(n4) );
  INR2D1BWP12T30P140 U7 ( .A1(req[1]), .B1(grant[0]), .ZN(next_state_pipe) );
endmodule


module mux_node_1 ( in, select, out );
  input [1:0] in;
  input select;
  output out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(in[0]), .I1(in[1]), .S(select), .Z(out) );
endmodule


module mux_node_2 ( in, select, out );
  input [1:0] in;
  input select;
  output out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(in[0]), .I1(in[1]), .S(select), .Z(out) );
endmodule


module mux_array_width2 ( in, select, out );
  input [3:0] in;
  input [1:0] select;
  output [1:0] out;


  mux_node_1 nodes_0_ ( .in(in[1:0]), .select(select[0]), .out(out[0]) );
  mux_node_2 nodes_1_ ( .in(in[3:2]), .select(select[1]), .out(out[1]) );
endmodule


module mux_node_3 ( in, select, out );
  input [1:0] in;
  input select;
  output out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(in[0]), .I1(in[1]), .S(select), .Z(out) );
endmodule


module mux_array_width1_0 ( in, select, out );
  input [1:0] in;
  input [0:0] select;
  output [0:0] out;


  mux_node_3 nodes_0_ ( .in(in), .select(select[0]), .out(out[0]) );
endmodule


module arbiter_node_2 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n1, n3, n4, n5;

  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n5), .Q(next_state) );
  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n5), 
        .Q(select) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module arbiter_node_6 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n1, n3, n4, n5;

  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n5), 
        .Q(select) );
  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n5), .Q(next_state) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module arbiter_node_5 ( enable, req, grant, select, valid, clock, reset );
  input [1:0] req;
  output [1:0] grant;
  input enable, clock, reset;
  output select, valid;
  wire   next_state_pipe, next_state, n1, n3, n4, n5;

  DFCNQD1BWP12T30P140 grant_state_reg ( .D(next_state), .CP(clock), .CDN(n5), 
        .Q(select) );
  DFCNQD1BWP12T30P140 next_state_reg ( .D(next_state_pipe), .CP(clock), .CDN(
        n5), .Q(next_state) );
  AN3D0BWP12T30P140 U3 ( .A1(select), .A2(enable), .A3(req[1]), .Z(grant[1])
         );
  INR2D1BWP12T30P140 U4 ( .A1(req[0]), .B1(select), .ZN(n1) );
  AN2D0BWP12T30P140 U5 ( .A1(enable), .A2(n1), .Z(grant[0]) );
  INVD0BWP12T30P140 U6 ( .I(req[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U7 ( .A1(n1), .A2(n3), .ZN(next_state_pipe) );
  INVD0BWP12T30P140 U8 ( .I(reset), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(n1), .ZN(n4) );
  ND2D0BWP12T30P140 U10 ( .A1(n4), .A2(n3), .ZN(valid) );
endmodule


module mux_node_0 ( in, select, out );
  input [1:0] in;
  input select;
  output out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(in[0]), .I1(in[1]), .S(select), .Z(out) );
endmodule


module mux_array_width1_1 ( in, select, out );
  input [1:0] in;
  input [0:0] select;
  output [0:0] out;


  mux_node_0 nodes_0_ ( .in(in), .select(select[0]), .out(out[0]) );
endmodule


module arbiter_width8_select_width3 ( enable, req, grant, select, valid, clock, 
        reset );
  input [7:0] req;
  output [7:0] grant;
  output [2:0] select;
  input enable, clock, reset;
  output valid;
  wire   n1, interconnect_mux_4, interconnect_mux_3, interconnect_mux_1,
         interconnect_mux_0, n2, n3, n4;
  wire   [6:0] interconnect_req;
  wire   [14:1] interconnect_grant;
  wire   [2:0] interconnect_select;
  wire   [10:7] interconnect_mux;

  arbiter_node_3 gen_arb_8__nodes_0_ ( .enable(interconnect_grant[3]), .req(
        req[1:0]), .grant(interconnect_grant[8:7]), .select(
        interconnect_mux[7]), .valid(interconnect_req[3]), .clock(n3), .reset(
        reset) );
  arbiter_node_4 gen_arb_8__nodes_1_ ( .enable(interconnect_grant[4]), .req(
        req[3:2]), .grant(interconnect_grant[10:9]), .select(
        interconnect_mux[8]), .valid(interconnect_req[4]), .clock(n3), .reset(
        reset) );
  arbiter_node_5 gen_arb_8__nodes_2_ ( .enable(interconnect_grant[5]), .req(
        req[5:4]), .grant(interconnect_grant[12:11]), .select(
        interconnect_mux[9]), .valid(interconnect_req[5]), .clock(n4), .reset(
        reset) );
  arbiter_node_6 gen_arb_8__nodes_3_ ( .enable(interconnect_grant[6]), .req(
        req[7:6]), .grant(interconnect_grant[14:13]), .select(
        interconnect_mux[10]), .valid(interconnect_req[6]), .clock(n3), 
        .reset(reset) );
  arbiter_node_1 gen_arb_4__nodes_0_ ( .enable(interconnect_grant[1]), .req(
        interconnect_req[4:3]), .grant(interconnect_grant[4:3]), .select(
        interconnect_select[1]), .valid(interconnect_req[1]), .clock(n4), 
        .reset(reset) );
  arbiter_node_2 gen_arb_4__nodes_1_ ( .enable(interconnect_grant[2]), .req(
        interconnect_req[6:5]), .grant(interconnect_grant[6:5]), .select(
        interconnect_select[2]), .valid(interconnect_req[2]), .clock(n3), 
        .reset(reset) );
  arbiter_node_0 gen_arb_2__nodes_0_ ( .enable(n1), .req(interconnect_req[2:1]), .grant(interconnect_grant[2:1]), .select(interconnect_select[0]), .valid(
        interconnect_req[0]), .clock(n4), .reset(reset) );
  mux_array_width2 gen_mux_4__mux_array_0_ ( .in(interconnect_mux), .select(
        interconnect_select[2:1]), .out({interconnect_mux_4, 
        interconnect_mux_3}) );
  mux_array_width1_0 gen_mux_2__mux_array_0_ ( .in({interconnect_mux_4, 
        interconnect_mux_3}), .select(interconnect_select[0]), .out(
        interconnect_mux_0) );
  mux_array_width1_1 gen_mux_2__mux_array_1_ ( .in(interconnect_select[2:1]), 
        .select(interconnect_select[0]), .out(interconnect_mux_1) );
  DFCNQD1BWP12T30P140 grant_reg_7_ ( .D(interconnect_grant[14]), .CP(n3), 
        .CDN(n2), .Q(grant[7]) );
  DFCNQD1BWP12T30P140 grant_reg_6_ ( .D(interconnect_grant[13]), .CP(n4), 
        .CDN(n2), .Q(grant[6]) );
  DFCNQD1BWP12T30P140 grant_reg_5_ ( .D(interconnect_grant[12]), .CP(n3), 
        .CDN(n2), .Q(grant[5]) );
  DFCNQD1BWP12T30P140 grant_reg_4_ ( .D(interconnect_grant[11]), .CP(n4), 
        .CDN(n2), .Q(grant[4]) );
  DFCNQD1BWP12T30P140 grant_reg_3_ ( .D(interconnect_grant[10]), .CP(n3), 
        .CDN(n2), .Q(grant[3]) );
  DFCNQD1BWP12T30P140 grant_reg_2_ ( .D(interconnect_grant[9]), .CP(n4), .CDN(
        n2), .Q(grant[2]) );
  DFCNQD1BWP12T30P140 grant_reg_1_ ( .D(interconnect_grant[8]), .CP(n3), .CDN(
        n2), .Q(grant[1]) );
  DFCNQD1BWP12T30P140 grant_reg_0_ ( .D(interconnect_grant[7]), .CP(n4), .CDN(
        n2), .Q(grant[0]) );
  DFCNQD1BWP12T30P140 select_reg_0_ ( .D(interconnect_mux_0), .CP(n3), .CDN(n2), .Q(select[0]) );
  DFCNQD1BWP12T30P140 select_reg_1_ ( .D(interconnect_mux_1), .CP(n4), .CDN(n2), .Q(select[1]) );
  DFCNQD1BWP12T30P140 valid_reg ( .D(interconnect_req[0]), .CP(n3), .CDN(n2), 
        .Q(valid) );
  DFCNQD1BWP12T30P140 select_reg_2_ ( .D(interconnect_select[0]), .CP(n4), 
        .CDN(n2), .Q(select[2]) );
  CKBD0BWP12T30P140 U3 ( .I(clock), .Z(n3) );
  CKBD0BWP12T30P140 U4 ( .I(clock), .Z(n4) );
  TIEHBWP12T30P140 U5 ( .Z(n1) );
  INVD0BWP12T30P140 U6 ( .I(reset), .ZN(n2) );
endmodule


module demo_width8_select_width3 ( next_test, next_step, select, valid, clock, 
        reset );
  output [2:0] select;
  input next_test, next_step, clock, reset;
  output valid;
  wire   n_Logic0_, n13, n14, n15, n16, n17, n18, n19, n20, n21, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10;
  wire   [7:0] seq;
  wire   [7:0] req;
  wire   [7:0] grant;

  lfsr_width8 lfsr ( .enable(next_test), .load(n_Logic0_), .in(n_Logic0_), 
        .out(seq), .clock(clock), .reset(reset) );
  arbiter_width8_select_width3 arbiter ( .enable(n14), .req(req), .grant(grant), .select(select), .valid(valid), .clock(clock), .reset(reset) );
  DFQD2BWP12T30P140 req_reg_0_ ( .D(n21), .CP(clock), .Q(req[0]) );
  DFQD2BWP12T30P140 req_reg_2_ ( .D(n19), .CP(clock), .Q(req[2]) );
  DFQD2BWP12T30P140 req_reg_4_ ( .D(n17), .CP(clock), .Q(req[4]) );
  DFQD2BWP12T30P140 req_reg_6_ ( .D(n15), .CP(clock), .Q(req[6]) );
  DFQD2BWP12T30P140 req_reg_1_ ( .D(n20), .CP(clock), .Q(req[1]) );
  DFQD2BWP12T30P140 req_reg_3_ ( .D(n18), .CP(clock), .Q(req[3]) );
  DFQD2BWP12T30P140 req_reg_5_ ( .D(n16), .CP(clock), .Q(req[5]) );
  DFQD1BWP12T30P140 req_reg_7_ ( .D(n13), .CP(clock), .Q(req[7]) );
  TIELBWP12T30P140 U4 ( .ZN(n_Logic0_) );
  TIEHBWP12T30P140 U5 ( .Z(n14) );
  INR2D1BWP12T30P140 U6 ( .A1(next_test), .B1(reset), .ZN(n10) );
  OR2D0BWP12T30P140 U7 ( .A1(reset), .A2(next_test), .Z(n8) );
  AOI21D0BWP12T30P140 U8 ( .A1(next_step), .A2(grant[2]), .B(n8), .ZN(n1) );
  AO22D0BWP12T30P140 U9 ( .A1(n10), .A2(seq[2]), .B1(req[2]), .B2(n1), .Z(n19)
         );
  AOI21D0BWP12T30P140 U10 ( .A1(next_step), .A2(grant[6]), .B(n8), .ZN(n2) );
  AO22D0BWP12T30P140 U11 ( .A1(n10), .A2(seq[6]), .B1(req[6]), .B2(n2), .Z(n15) );
  AOI21D0BWP12T30P140 U12 ( .A1(next_step), .A2(grant[3]), .B(n8), .ZN(n3) );
  AO22D0BWP12T30P140 U13 ( .A1(n10), .A2(seq[3]), .B1(req[3]), .B2(n3), .Z(n18) );
  AOI21D0BWP12T30P140 U14 ( .A1(next_step), .A2(grant[0]), .B(n8), .ZN(n4) );
  AO22D0BWP12T30P140 U15 ( .A1(req[0]), .A2(n4), .B1(n10), .B2(seq[0]), .Z(n21) );
  AOI21D0BWP12T30P140 U16 ( .A1(next_step), .A2(grant[4]), .B(n8), .ZN(n5) );
  AO22D0BWP12T30P140 U17 ( .A1(n10), .A2(seq[4]), .B1(req[4]), .B2(n5), .Z(n17) );
  AOI21D0BWP12T30P140 U18 ( .A1(next_step), .A2(grant[1]), .B(n8), .ZN(n6) );
  AO22D0BWP12T30P140 U19 ( .A1(n10), .A2(seq[1]), .B1(req[1]), .B2(n6), .Z(n20) );
  AOI21D0BWP12T30P140 U20 ( .A1(next_step), .A2(grant[5]), .B(n8), .ZN(n7) );
  AO22D0BWP12T30P140 U21 ( .A1(n10), .A2(seq[5]), .B1(req[5]), .B2(n7), .Z(n16) );
  AOI21D0BWP12T30P140 U22 ( .A1(next_step), .A2(grant[7]), .B(n8), .ZN(n9) );
  AO22D0BWP12T30P140 U23 ( .A1(n10), .A2(seq[7]), .B1(req[7]), .B2(n9), .Z(n13) );
endmodule


module stretcher_count250_width3 ( enable, in, out, valid, clock, reset );
  input [2:0] in;
  output [2:0] out;
  input enable, clock, reset;
  output valid;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;
  wire   [8:0] counter;

  DFQD2BWP12T30P140 valid_reg ( .D(counter[8]), .CP(clock), .Q(valid) );
  DFQD2BWP12T30P140 out_reg_0_ ( .D(n16), .CP(clock), .Q(out[0]) );
  DFQD2BWP12T30P140 out_reg_2_ ( .D(n15), .CP(clock), .Q(out[2]) );
  DFQD2BWP12T30P140 out_reg_1_ ( .D(n14), .CP(clock), .Q(out[1]) );
  DFQD2BWP12T30P140 counter_reg_7_ ( .D(n23), .CP(clock), .Q(counter[7]) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n20), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n18), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n21), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 counter_reg_3_ ( .D(n19), .CP(clock), .Q(counter[3]) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n22), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n17), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n24), .CP(clock), .Q(counter[0]) );
  DFQD2BWP12T30P140 counter_reg_8_ ( .D(n25), .CP(clock), .Q(counter[8]) );
  INVD0BWP12T30P140 U3 ( .I(out[2]), .ZN(n3) );
  INVD0BWP12T30P140 U4 ( .I(counter[8]), .ZN(n39) );
  MAOI22D0BWP12T30P140 U5 ( .A1(n3), .A2(n39), .B1(n39), .B2(in[2]), .ZN(n15)
         );
  INVD0BWP12T30P140 U6 ( .I(out[1]), .ZN(n6) );
  MAOI22D0BWP12T30P140 U7 ( .A1(n6), .A2(n39), .B1(n39), .B2(in[1]), .ZN(n14)
         );
  ND2D0BWP12T30P140 U8 ( .A1(enable), .A2(n39), .ZN(n42) );
  INVD0BWP12T30P140 U9 ( .I(out[0]), .ZN(n36) );
  OAI22D0BWP12T30P140 U10 ( .A1(n36), .A2(in[0]), .B1(n3), .B2(in[2]), .ZN(n2)
         );
  AOI221D0BWP12T30P140 U11 ( .A1(n36), .A2(in[0]), .B1(in[2]), .B2(n3), .C(n2), 
        .ZN(n4) );
  OAI21D0BWP12T30P140 U12 ( .A1(in[1]), .A2(n6), .B(n4), .ZN(n5) );
  AOI32D0BWP12T30P140 U13 ( .A1(in[1]), .A2(counter[8]), .A3(n6), .B1(n5), 
        .B2(counter[8]), .ZN(n45) );
  ND2D0BWP12T30P140 U14 ( .A1(n42), .A2(n45), .ZN(n35) );
  INVD0BWP12T30P140 U15 ( .I(counter[6]), .ZN(n7) );
  INVD0BWP12T30P140 U16 ( .I(counter[4]), .ZN(n10) );
  AN3D0BWP12T30P140 U17 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .Z(n29) );
  ND2D0BWP12T30P140 U18 ( .A1(counter[3]), .A2(n29), .ZN(n12) );
  NR2D0BWP12T30P140 U19 ( .A1(n10), .A2(n12), .ZN(n27) );
  ND2D0BWP12T30P140 U20 ( .A1(counter[5]), .A2(n27), .ZN(n34) );
  INVD0BWP12T30P140 U21 ( .I(n42), .ZN(n13) );
  OAI21D0BWP12T30P140 U22 ( .A1(n7), .A2(n34), .B(n13), .ZN(n9) );
  NR2D0BWP12T30P140 U23 ( .A1(n7), .A2(n34), .ZN(n8) );
  ND2D0BWP12T30P140 U24 ( .A1(n13), .A2(n8), .ZN(n37) );
  INVD0BWP12T30P140 U25 ( .I(counter[7]), .ZN(n38) );
  AOI32D0BWP12T30P140 U26 ( .A1(n35), .A2(counter[7]), .A3(n9), .B1(n37), .B2(
        n38), .ZN(n23) );
  NR2D0BWP12T30P140 U27 ( .A1(counter[3]), .A2(n42), .ZN(n28) );
  OAI21D0BWP12T30P140 U28 ( .A1(n29), .A2(n42), .B(n35), .ZN(n30) );
  NR2D0BWP12T30P140 U29 ( .A1(n28), .A2(n30), .ZN(n11) );
  OAI32D0BWP12T30P140 U30 ( .A1(counter[4]), .A2(n42), .A3(n12), .B1(n11), 
        .B2(n10), .ZN(n20) );
  ND3D0BWP12T30P140 U31 ( .A1(n13), .A2(counter[0]), .A3(counter[1]), .ZN(n43)
         );
  INVD0BWP12T30P140 U32 ( .I(n45), .ZN(n40) );
  AOI21D0BWP12T30P140 U33 ( .A1(counter[2]), .A2(n43), .B(n40), .ZN(n26) );
  OAI21D0BWP12T30P140 U34 ( .A1(counter[2]), .A2(n43), .B(n26), .ZN(n18) );
  OAI21D0BWP12T30P140 U35 ( .A1(n27), .A2(n42), .B(n35), .ZN(n31) );
  NR2D0BWP12T30P140 U36 ( .A1(counter[5]), .A2(n42), .ZN(n32) );
  AO22D0BWP12T30P140 U37 ( .A1(counter[5]), .A2(n31), .B1(n32), .B2(n27), .Z(
        n21) );
  AO22D0BWP12T30P140 U38 ( .A1(counter[3]), .A2(n30), .B1(n29), .B2(n28), .Z(
        n19) );
  OAI21D0BWP12T30P140 U39 ( .A1(n32), .A2(n31), .B(counter[6]), .ZN(n33) );
  OAI31D0BWP12T30P140 U40 ( .A1(counter[6]), .A2(n42), .A3(n34), .B(n33), .ZN(
        n22) );
  INVD0BWP12T30P140 U41 ( .I(counter[0]), .ZN(n41) );
  AOI22D0BWP12T30P140 U42 ( .A1(counter[0]), .A2(n35), .B1(n42), .B2(n41), 
        .ZN(n24) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n36), .A2(n39), .B1(n39), .B2(in[0]), .ZN(n16) );
  OAI22D0BWP12T30P140 U44 ( .A1(n40), .A2(n39), .B1(n38), .B2(n37), .ZN(n25)
         );
  NR2D0BWP12T30P140 U45 ( .A1(n42), .A2(n41), .ZN(n44) );
  OAI21D0BWP12T30P140 U46 ( .A1(n44), .A2(counter[1]), .B(n43), .ZN(n46) );
  ND2D0BWP12T30P140 U47 ( .A1(n46), .A2(n45), .ZN(n17) );
endmodule


module stretcher_count250 ( enable, in, out, valid, clock, reset );
  input [0:0] in;
  output [0:0] out;
  input enable, clock, reset;
  output valid;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n2, n3, n4, n5, n6,
         n7, n8, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;
  wire   [8:0] counter;

  DFQD2BWP12T30P140 valid_reg ( .D(counter[8]), .CP(clock), .Q(valid) );
  DFQD2BWP12T30P140 counter_reg_5_ ( .D(n14), .CP(clock), .Q(counter[5]) );
  DFQD2BWP12T30P140 out_reg_0_ ( .D(n9), .CP(clock), .Q(out[0]) );
  DFQD2BWP12T30P140 counter_reg_4_ ( .D(n13), .CP(clock), .Q(counter[4]) );
  DFQD2BWP12T30P140 counter_reg_2_ ( .D(n11), .CP(clock), .Q(counter[2]) );
  DFQD2BWP12T30P140 counter_reg_1_ ( .D(n10), .CP(clock), .Q(counter[1]) );
  DFQD2BWP12T30P140 counter_reg_6_ ( .D(n15), .CP(clock), .Q(counter[6]) );
  DFQD2BWP12T30P140 counter_reg_3_ ( .D(n12), .CP(clock), .Q(counter[3]) );
  DFQD2BWP12T30P140 counter_reg_0_ ( .D(n17), .CP(clock), .Q(counter[0]) );
  DFQD1BWP12T30P140 counter_reg_7_ ( .D(n16), .CP(clock), .Q(counter[7]) );
  DFQD1BWP12T30P140 counter_reg_8_ ( .D(n18), .CP(clock), .Q(counter[8]) );
  INVD0BWP12T30P140 U3 ( .I(counter[7]), .ZN(n29) );
  AN3D0BWP12T30P140 U4 ( .A1(counter[0]), .A2(counter[1]), .A3(counter[2]), 
        .Z(n25) );
  AN3D0BWP12T30P140 U5 ( .A1(counter[3]), .A2(n25), .A3(counter[4]), .Z(n5) );
  ND2D0BWP12T30P140 U6 ( .A1(counter[5]), .A2(n5), .ZN(n23) );
  IND2D1BWP12T30P140 U7 ( .A1(n23), .B1(counter[6]), .ZN(n30) );
  ND2D0BWP12T30P140 U8 ( .A1(n29), .A2(n30), .ZN(n2) );
  OAI21D0BWP12T30P140 U9 ( .A1(n29), .A2(n30), .B(n2), .ZN(n4) );
  INVD0BWP12T30P140 U10 ( .I(counter[8]), .ZN(n6) );
  ND2D0BWP12T30P140 U11 ( .A1(enable), .A2(n6), .ZN(n32) );
  ND2D0BWP12T30P140 U12 ( .A1(in[0]), .A2(out[0]), .ZN(n3) );
  OAI211D0BWP12T30P140 U13 ( .A1(in[0]), .A2(out[0]), .B(counter[8]), .C(n3), 
        .ZN(n35) );
  ND2D0BWP12T30P140 U14 ( .A1(n32), .A2(n35), .ZN(n27) );
  OAI22D0BWP12T30P140 U15 ( .A1(n4), .A2(n32), .B1(n29), .B2(n27), .ZN(n16) );
  OAI21D0BWP12T30P140 U16 ( .A1(n5), .A2(n32), .B(n27), .ZN(n20) );
  NR2D0BWP12T30P140 U17 ( .A1(counter[5]), .A2(n32), .ZN(n21) );
  AO22D0BWP12T30P140 U18 ( .A1(counter[5]), .A2(n20), .B1(n5), .B2(n21), .Z(
        n14) );
  OA22D0BWP12T30P140 U19 ( .A1(n6), .A2(in[0]), .B1(out[0]), .B2(counter[8]), 
        .Z(n9) );
  ND2D0BWP12T30P140 U20 ( .A1(counter[3]), .A2(n25), .ZN(n8) );
  NR2D0BWP12T30P140 U21 ( .A1(counter[3]), .A2(n32), .ZN(n24) );
  OAI21D0BWP12T30P140 U22 ( .A1(n25), .A2(n32), .B(n27), .ZN(n26) );
  OAI21D0BWP12T30P140 U23 ( .A1(n24), .A2(n26), .B(counter[4]), .ZN(n7) );
  OAI31D0BWP12T30P140 U24 ( .A1(counter[4]), .A2(n32), .A3(n8), .B(n7), .ZN(
        n13) );
  IND3D1BWP12T30P140 U25 ( .A1(n32), .B1(counter[0]), .B2(counter[1]), .ZN(n33) );
  ND2D0BWP12T30P140 U26 ( .A1(counter[2]), .A2(n33), .ZN(n19) );
  OAI211D0BWP12T30P140 U27 ( .A1(counter[2]), .A2(n33), .B(n35), .C(n19), .ZN(
        n11) );
  OAI21D0BWP12T30P140 U28 ( .A1(n21), .A2(n20), .B(counter[6]), .ZN(n22) );
  OAI31D0BWP12T30P140 U29 ( .A1(counter[6]), .A2(n32), .A3(n23), .B(n22), .ZN(
        n15) );
  AO22D0BWP12T30P140 U30 ( .A1(counter[3]), .A2(n26), .B1(n25), .B2(n24), .Z(
        n12) );
  INVD0BWP12T30P140 U31 ( .I(counter[0]), .ZN(n31) );
  AOI22D0BWP12T30P140 U32 ( .A1(counter[0]), .A2(n27), .B1(n32), .B2(n31), 
        .ZN(n17) );
  ND2D0BWP12T30P140 U33 ( .A1(counter[8]), .A2(n35), .ZN(n28) );
  OAI31D0BWP12T30P140 U34 ( .A1(n30), .A2(n32), .A3(n29), .B(n28), .ZN(n18) );
  NR2D0BWP12T30P140 U35 ( .A1(n32), .A2(n31), .ZN(n34) );
  OAI21D0BWP12T30P140 U36 ( .A1(n34), .A2(counter[1]), .B(n33), .ZN(n36) );
  ND2D0BWP12T30P140 U37 ( .A1(n36), .A2(n35), .ZN(n10) );
endmodule


module demo_top ( buttons, indicators, refclock );
  input [1:0] buttons;
  output [3:0] indicators;
  input refclock;
  wire   n_Logic1_, n_Logic0_, locked, reset, clock, usec_tick, msec_tick,
         next_test, next_step, valid, n3, n4, n5, n6, n7, n8, n9, n10,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [1:0] buttons_reg;
  wire   [2:0] select;

  clockgen clockgen ( .CLKIN_IN(refclock), .CLKFX_OUT(clock), .LOCKED_OUT(
        locked) );
  pulser_count99 usec_pulser ( .enable(n_Logic1_), .out(usec_tick), .clock(n3), 
        .reset(n_Logic0_) );
  pulser_count1000 msec_pulser ( .enable(usec_tick), .out(msec_tick), .clock(
        n9), .reset(n_Logic0_) );
  debouncer_low_count250_1 next_test_debouncer ( .enable(msec_tick), .in(
        buttons_reg[1]), .out(SYNOPSYS_UNCONNECTED_1), .rising_pulse(next_test), .clock(n4), .reset(n_Logic0_) );
  debouncer_low_count250_0 next_step_debouncer ( .enable(msec_tick), .in(
        buttons_reg[0]), .out(SYNOPSYS_UNCONNECTED_2), .rising_pulse(next_step), .clock(n10), .reset(n_Logic0_) );
  demo_width8_select_width3 demo ( .next_test(next_test), .next_step(next_step), .select(select), .valid(valid), .clock(n7), .reset(reset) );
  stretcher_count250_width3 select_stretcher ( .enable(msec_tick), .in(select), 
        .out(indicators[3:1]), .clock(n8), .reset(n_Logic0_) );
  stretcher_count250 valid_stretcher ( .enable(msec_tick), .in(valid), .out(
        indicators[0]), .clock(n5), .reset(n_Logic0_) );
  DFQD2BWP12T30P140 buttons_reg_reg_1_ ( .D(buttons[1]), .CP(n4), .Q(
        buttons_reg[1]) );
  DFQD2BWP12T30P140 buttons_reg_reg_0_ ( .D(buttons[0]), .CP(n10), .Q(
        buttons_reg[0]) );
  INVD0BWP12T30P140 U6 ( .I(n6), .ZN(n3) );
  INVD0BWP12T30P140 U7 ( .I(n6), .ZN(n4) );
  INVD0BWP12T30P140 U8 ( .I(n6), .ZN(n5) );
  INVD0BWP12T30P140 U9 ( .I(clock), .ZN(n6) );
  INVD0BWP12T30P140 U10 ( .I(n6), .ZN(n7) );
  INVD0BWP12T30P140 U11 ( .I(n6), .ZN(n8) );
  INVD0BWP12T30P140 U12 ( .I(n6), .ZN(n9) );
  INVD0BWP12T30P140 U13 ( .I(n6), .ZN(n10) );
  INVD0BWP12T30P140 U14 ( .I(locked), .ZN(reset) );
  TIEHBWP12T30P140 U15 ( .Z(n_Logic1_) );
  TIELBWP12T30P140 U16 ( .ZN(n_Logic0_) );
endmodule

