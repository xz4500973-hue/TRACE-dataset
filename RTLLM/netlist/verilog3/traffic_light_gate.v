/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:33:17 2026
/////////////////////////////////////////////////////////////


module traffic_light ( rst_n, clk, pass_request, clock, red, yellow, green );
  output [7:0] clock;
  input rst_n, clk, pass_request;
  output red, yellow, green;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78;
  wire   [2:0] state;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(n36), .CP(clk), .SDN(rst_n), .Q(
        state[0]) );
  DFSNQD1BWP12T30P140 cnt_reg_1_ ( .D(n43), .CP(clk), .SDN(rst_n), .Q(clock[1]) );
  DFSNQD1BWP12T30P140 cnt_reg_3_ ( .D(n41), .CP(clk), .SDN(rst_n), .Q(clock[3]) );
  DFCNQD1BWP12T30P140 y_reg ( .D(n33), .CP(clk), .CDN(rst_n), .Q(yellow) );
  DFCNQD1BWP12T30P140 g_reg ( .D(n32), .CP(clk), .CDN(rst_n), .Q(green) );
  DFCNQD1BWP12T30P140 r_reg ( .D(n31), .CP(clk), .CDN(rst_n), .Q(red) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(clock[5]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n42), .CP(clk), .CDN(rst_n), .Q(clock[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n40), .CP(clk), .CDN(rst_n), .Q(clock[4]) );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n37), .CP(clk), .CDN(rst_n), .Q(clock[7]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n38), .CP(clk), .CDN(rst_n), .Q(clock[6]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n35), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n34), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n44), .CP(clk), .CDN(rst_n), .Q(clock[0]) );
  INVD0BWP12T30P140 U47 ( .I(state[1]), .ZN(n75) );
  NR3D0BWP12T30P140 U48 ( .A1(state[0]), .A2(state[2]), .A3(n75), .ZN(n59) );
  INVD0BWP12T30P140 U49 ( .I(clock[2]), .ZN(n64) );
  INVD0BWP12T30P140 U50 ( .I(clock[3]), .ZN(n52) );
  NR3D0BWP12T30P140 U51 ( .A1(clock[4]), .A2(clock[7]), .A3(clock[6]), .ZN(n46) );
  OAI21D0BWP12T30P140 U52 ( .A1(n64), .A2(n52), .B(n46), .ZN(n45) );
  OAI21D0BWP12T30P140 U53 ( .A1(clock[5]), .A2(n45), .B(pass_request), .ZN(n49) );
  INVD0BWP12T30P140 U54 ( .I(state[0]), .ZN(n58) );
  NR3D0BWP12T30P140 U55 ( .A1(state[2]), .A2(state[1]), .A3(n58), .ZN(n60) );
  INVD0BWP12T30P140 U56 ( .I(state[2]), .ZN(n78) );
  NR3D0BWP12T30P140 U57 ( .A1(state[0]), .A2(state[1]), .A3(n78), .ZN(n53) );
  AOI211D0BWP12T30P140 U58 ( .A1(n59), .A2(n49), .B(n60), .C(n53), .ZN(n73) );
  INVD0BWP12T30P140 U59 ( .I(clock[5]), .ZN(n54) );
  ND4D0BWP12T30P140 U60 ( .A1(n46), .A2(clock[0]), .A3(n64), .A4(n54), .ZN(n47) );
  NR3D0BWP12T30P140 U61 ( .A1(clock[3]), .A2(clock[1]), .A3(n47), .ZN(n57) );
  ND2D0BWP12T30P140 U62 ( .A1(n59), .A2(n57), .ZN(n76) );
  OAI21D0BWP12T30P140 U63 ( .A1(n73), .A2(clock[0]), .B(n76), .ZN(n44) );
  NR2D0BWP12T30P140 U64 ( .A1(clock[1]), .A2(clock[0]), .ZN(n63) );
  NR3D0BWP12T30P140 U65 ( .A1(n60), .A2(n53), .A3(n59), .ZN(n56) );
  AOI21D0BWP12T30P140 U66 ( .A1(n57), .A2(state[2]), .B(n56), .ZN(n48) );
  OAI31D0BWP12T30P140 U67 ( .A1(state[0]), .A2(state[2]), .A3(n49), .B(n48), 
        .ZN(n50) );
  AO211D0BWP12T30P140 U68 ( .A1(clock[0]), .A2(clock[1]), .B(n63), .C(n50), 
        .Z(n43) );
  NR3D0BWP12T30P140 U69 ( .A1(clock[2]), .A2(clock[1]), .A3(clock[0]), .ZN(n62) );
  AOI21D0BWP12T30P140 U70 ( .A1(state[0]), .A2(n57), .B(n50), .ZN(n51) );
  ND2D0BWP12T30P140 U71 ( .A1(n62), .A2(n52), .ZN(n67) );
  OAI211D0BWP12T30P140 U72 ( .A1(n62), .A2(n52), .B(n51), .C(n67), .ZN(n41) );
  AO21D0BWP12T30P140 U73 ( .A1(n56), .A2(yellow), .B(n53), .Z(n33) );
  AO21D0BWP12T30P140 U74 ( .A1(n56), .A2(green), .B(n59), .Z(n32) );
  AO21D0BWP12T30P140 U75 ( .A1(n56), .A2(red), .B(n60), .Z(n31) );
  NR2D0BWP12T30P140 U76 ( .A1(clock[4]), .A2(n67), .ZN(n66) );
  ND2D0BWP12T30P140 U77 ( .A1(n66), .A2(n54), .ZN(n71) );
  OA21D0BWP12T30P140 U78 ( .A1(n66), .A2(n54), .B(n71), .Z(n55) );
  ND2D0BWP12T30P140 U79 ( .A1(n60), .A2(n57), .ZN(n74) );
  OAI21D0BWP12T30P140 U80 ( .A1(n73), .A2(n55), .B(n74), .ZN(n39) );
  NR2D0BWP12T30P140 U81 ( .A1(n57), .A2(n56), .ZN(n61) );
  INVD0BWP12T30P140 U82 ( .I(n61), .ZN(n77) );
  OAI32D0BWP12T30P140 U83 ( .A1(n61), .A2(n60), .A3(n59), .B1(n58), .B2(n77), 
        .ZN(n36) );
  IAO21D0BWP12T30P140 U84 ( .A1(n64), .A2(n63), .B(n62), .ZN(n65) );
  OAI211D0BWP12T30P140 U85 ( .A1(n73), .A2(n65), .B(n74), .C(n76), .ZN(n42) );
  AOI21D0BWP12T30P140 U86 ( .A1(clock[4]), .A2(n67), .B(n66), .ZN(n68) );
  OAI21D0BWP12T30P140 U87 ( .A1(n73), .A2(n68), .B(n74), .ZN(n40) );
  NR2D0BWP12T30P140 U88 ( .A1(clock[6]), .A2(n71), .ZN(n70) );
  NR2D0BWP12T30P140 U89 ( .A1(clock[7]), .A2(n70), .ZN(n69) );
  AOI211D0BWP12T30P140 U90 ( .A1(clock[7]), .A2(n70), .B(n73), .C(n69), .ZN(
        n37) );
  AOI21D0BWP12T30P140 U91 ( .A1(clock[6]), .A2(n71), .B(n70), .ZN(n72) );
  NR2D0BWP12T30P140 U92 ( .A1(n73), .A2(n72), .ZN(n38) );
  OAI21D0BWP12T30P140 U93 ( .A1(n75), .A2(n77), .B(n74), .ZN(n35) );
  OAI21D0BWP12T30P140 U94 ( .A1(n78), .A2(n77), .B(n76), .ZN(n34) );
endmodule

