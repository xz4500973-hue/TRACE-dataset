/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:10:45 2026
/////////////////////////////////////////////////////////////


module traffic_light ( rst_n, clk, pass_request, clock, red, yellow, green );
  output [7:0] clock;
  input rst_n, clk, pass_request;
  output red, yellow, green;
  wire   N75, N76, N77, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81;
  wire   [1:0] state;

  DFSNQD1BWP12T30P140 cnt_reg_3_ ( .D(n33), .CP(clk), .SDN(rst_n), .Q(clock[3]) );
  DFSNQD1BWP12T30P140 cnt_reg_1_ ( .D(n35), .CP(clk), .SDN(rst_n), .Q(clock[1]) );
  DFCNQD1BWP12T30P140 yellow_reg ( .D(N76), .CP(clk), .CDN(rst_n), .Q(yellow)
         );
  DFCNQD1BWP12T30P140 green_reg ( .D(N77), .CP(clk), .CDN(rst_n), .Q(green) );
  DFCNQD1BWP12T30P140 red_reg ( .D(N75), .CP(clk), .CDN(rst_n), .Q(red) );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n41), .CP(clk), .CDN(rst_n), .Q(clock[7]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n40), .CP(clk), .CDN(rst_n), .Q(clock[6]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n37), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n38), .CP(clk), .CDN(rst_n), .Q(clock[4]) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(clock[5]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n34), .CP(clk), .CDN(rst_n), .Q(clock[2]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n42), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n36), .CP(clk), .CDN(rst_n), .Q(clock[0]) );
  INVD0BWP12T30P140 U48 ( .I(state[0]), .ZN(n43) );
  INVD0BWP12T30P140 U49 ( .I(state[1]), .ZN(n70) );
  NR2D0BWP12T30P140 U50 ( .A1(n43), .A2(n70), .ZN(N77) );
  NR2D0BWP12T30P140 U51 ( .A1(state[0]), .A2(n70), .ZN(N76) );
  NR2D0BWP12T30P140 U52 ( .A1(state[1]), .A2(n43), .ZN(N75) );
  INVD0BWP12T30P140 U53 ( .I(clock[5]), .ZN(n50) );
  INVD0BWP12T30P140 U54 ( .I(clock[7]), .ZN(n52) );
  INVD0BWP12T30P140 U55 ( .I(clock[6]), .ZN(n55) );
  ND3D0BWP12T30P140 U56 ( .A1(n50), .A2(n52), .A3(n55), .ZN(n51) );
  NR2D0BWP12T30P140 U57 ( .A1(n51), .A2(clock[4]), .ZN(n46) );
  INVD0BWP12T30P140 U58 ( .I(n46), .ZN(n44) );
  AOI32D0BWP12T30P140 U59 ( .A1(clock[2]), .A2(pass_request), .A3(clock[3]), 
        .B1(n44), .B2(pass_request), .ZN(n47) );
  AOI211D0BWP12T30P140 U60 ( .A1(N77), .A2(n47), .B(N76), .C(N75), .ZN(n61) );
  OR2D0BWP12T30P140 U61 ( .A1(clock[0]), .A2(n61), .Z(n73) );
  NR2D0BWP12T30P140 U62 ( .A1(clock[2]), .A2(clock[1]), .ZN(n45) );
  INVD0BWP12T30P140 U63 ( .I(clock[3]), .ZN(n75) );
  AN4D0BWP12T30P140 U64 ( .A1(n46), .A2(n45), .A3(clock[0]), .A4(n75), .Z(n72)
         );
  INVD0BWP12T30P140 U65 ( .I(n47), .ZN(n48) );
  AOI22D0BWP12T30P140 U66 ( .A1(N76), .A2(n72), .B1(n48), .B2(N77), .ZN(n80)
         );
  NR2D0BWP12T30P140 U67 ( .A1(state[0]), .A2(state[1]), .ZN(n71) );
  OAI21D0BWP12T30P140 U68 ( .A1(clock[0]), .A2(n71), .B(clock[1]), .ZN(n49) );
  OAI211D0BWP12T30P140 U69 ( .A1(clock[1]), .A2(n73), .B(n80), .C(n49), .ZN(
        n35) );
  INVD0BWP12T30P140 U70 ( .I(n61), .ZN(n66) );
  NR3D0BWP12T30P140 U71 ( .A1(clock[2]), .A2(clock[0]), .A3(clock[1]), .ZN(n78) );
  ND2D0BWP12T30P140 U72 ( .A1(n78), .A2(n75), .ZN(n57) );
  NR2D0BWP12T30P140 U73 ( .A1(clock[4]), .A2(n57), .ZN(n60) );
  INVD0BWP12T30P140 U74 ( .I(n71), .ZN(n77) );
  AOI32D0BWP12T30P140 U75 ( .A1(n60), .A2(n77), .A3(n50), .B1(n61), .B2(n77), 
        .ZN(n54) );
  AOI21D0BWP12T30P140 U76 ( .A1(clock[6]), .A2(n66), .B(n54), .ZN(n53) );
  ND2D0BWP12T30P140 U77 ( .A1(n60), .A2(n66), .ZN(n62) );
  OAI22D0BWP12T30P140 U78 ( .A1(n53), .A2(n52), .B1(n51), .B2(n62), .ZN(n41)
         );
  INVD0BWP12T30P140 U79 ( .I(n54), .ZN(n56) );
  OAI32D0BWP12T30P140 U80 ( .A1(clock[6]), .A2(clock[5]), .A3(n62), .B1(n56), 
        .B2(n55), .ZN(n40) );
  ND2D0BWP12T30P140 U81 ( .A1(state[0]), .A2(n72), .ZN(n69) );
  OAI21D0BWP12T30P140 U82 ( .A1(n72), .A2(n70), .B(n69), .ZN(n37) );
  AOI21D0BWP12T30P140 U83 ( .A1(n66), .A2(n57), .B(n71), .ZN(n59) );
  INVD0BWP12T30P140 U84 ( .I(clock[4]), .ZN(n58) );
  ND2D0BWP12T30P140 U85 ( .A1(N75), .A2(n72), .ZN(n79) );
  OAI211D0BWP12T30P140 U86 ( .A1(n59), .A2(n58), .B(n79), .C(n62), .ZN(n38) );
  OAI21D0BWP12T30P140 U87 ( .A1(n61), .A2(n60), .B(n77), .ZN(n65) );
  INVD0BWP12T30P140 U88 ( .I(n79), .ZN(n64) );
  NR2D0BWP12T30P140 U89 ( .A1(clock[5]), .A2(n62), .ZN(n63) );
  AO211D0BWP12T30P140 U90 ( .A1(clock[5]), .A2(n65), .B(n64), .C(n63), .Z(n39)
         );
  AOI221D0BWP12T30P140 U91 ( .A1(clock[0]), .A2(n66), .B1(clock[1]), .B2(n66), 
        .C(n71), .ZN(n68) );
  INVD0BWP12T30P140 U92 ( .I(clock[2]), .ZN(n67) );
  ND2D0BWP12T30P140 U93 ( .A1(n78), .A2(n66), .ZN(n76) );
  OAI211D0BWP12T30P140 U94 ( .A1(n68), .A2(n67), .B(n76), .C(n69), .ZN(n34) );
  OA32D0BWP12T30P140 U95 ( .A1(state[0]), .A2(n70), .A3(n72), .B1(n69), .B2(
        n70), .Z(n42) );
  AOI22D0BWP12T30P140 U96 ( .A1(N77), .A2(n72), .B1(clock[0]), .B2(n71), .ZN(
        n74) );
  ND2D0BWP12T30P140 U97 ( .A1(n74), .A2(n73), .ZN(n36) );
  AOI32D0BWP12T30P140 U98 ( .A1(n78), .A2(clock[3]), .A3(n77), .B1(n76), .B2(
        n75), .ZN(n81) );
  IND3D1BWP12T30P140 U99 ( .A1(n81), .B1(n80), .B2(n79), .ZN(n33) );
endmodule

