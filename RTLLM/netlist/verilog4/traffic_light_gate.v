/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:56:00 2026
/////////////////////////////////////////////////////////////


module traffic_light ( rst_n, clk, pass_request, clock, red, yellow, green );
  output [7:0] clock;
  input rst_n, clk, pass_request;
  output red, yellow, green;
  wire   N20, N24, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [1:0] phase;
  wire   [7:0] timer;

  DFSNQD1BWP12T30P140 timer_reg_1_ ( .D(n21), .CP(clk), .SDN(rst_n), .Q(
        timer[1]) );
  DFSNQD1BWP12T30P140 clock_reg_1_ ( .D(timer[1]), .CP(n26), .SDN(rst_n), .Q(
        clock[1]) );
  DFSNQD1BWP12T30P140 timer_reg_3_ ( .D(n19), .CP(n26), .SDN(n28), .Q(timer[3]) );
  DFSNQD1BWP12T30P140 clock_reg_3_ ( .D(timer[3]), .CP(clk), .SDN(n28), .Q(
        clock[3]) );
  DFCNQD1BWP12T30P140 clock_reg_0_ ( .D(timer[0]), .CP(n26), .CDN(n28), .Q(
        clock[0]) );
  DFCNQD1BWP12T30P140 clock_reg_6_ ( .D(timer[6]), .CP(n26), .CDN(rst_n), .Q(
        clock[6]) );
  DFCNQD1BWP12T30P140 clock_reg_7_ ( .D(timer[7]), .CP(clk), .CDN(n28), .Q(
        clock[7]) );
  DFCNQD1BWP12T30P140 yellow_reg ( .D(phase[1]), .CP(n26), .CDN(rst_n), .Q(
        yellow) );
  DFCNQD1BWP12T30P140 clock_reg_2_ ( .D(timer[2]), .CP(clk), .CDN(n28), .Q(
        clock[2]) );
  DFCNQD1BWP12T30P140 green_reg ( .D(N20), .CP(n26), .CDN(rst_n), .Q(green) );
  DFCNQD1BWP12T30P140 clock_reg_4_ ( .D(timer[4]), .CP(clk), .CDN(n28), .Q(
        clock[4]) );
  DFCNQD1BWP12T30P140 clock_reg_5_ ( .D(timer[5]), .CP(n26), .CDN(rst_n), .Q(
        clock[5]) );
  DFCNQD1BWP12T30P140 red_reg ( .D(N24), .CP(clk), .CDN(n28), .Q(red) );
  DFCNQD1BWP12T30P140 phase_reg_0_ ( .D(n22), .CP(n26), .CDN(rst_n), .Q(
        phase[0]) );
  DFCNQD1BWP12T30P140 timer_reg_5_ ( .D(n17), .CP(clk), .CDN(n28), .Q(timer[5]) );
  DFCNQD1BWP12T30P140 timer_reg_7_ ( .D(n15), .CP(n26), .CDN(rst_n), .Q(
        timer[7]) );
  DFCNQD1BWP12T30P140 timer_reg_6_ ( .D(n16), .CP(clk), .CDN(n28), .Q(timer[6]) );
  DFCNQD1BWP12T30P140 timer_reg_4_ ( .D(n18), .CP(n26), .CDN(rst_n), .Q(
        timer[4]) );
  DFCNQD1BWP12T30P140 timer_reg_2_ ( .D(n20), .CP(clk), .CDN(n28), .Q(timer[2]) );
  DFCNQD1BWP12T30P140 phase_reg_1_ ( .D(n23), .CP(clk), .CDN(n28), .Q(phase[1]) );
  DFCNQD1BWP12T30P140 timer_reg_0_ ( .D(n24), .CP(n26), .CDN(rst_n), .Q(
        timer[0]) );
  INVD0BWP12T30P140 U29 ( .I(clk), .ZN(n25) );
  INVD0BWP12T30P140 U30 ( .I(n25), .ZN(n26) );
  INVD0BWP12T30P140 U31 ( .I(rst_n), .ZN(n27) );
  INVD0BWP12T30P140 U32 ( .I(n27), .ZN(n28) );
  INVD0BWP12T30P140 U33 ( .I(phase[0]), .ZN(n46) );
  NR2D0BWP12T30P140 U34 ( .A1(phase[1]), .A2(n46), .ZN(N20) );
  NR4D0BWP12T30P140 U35 ( .A1(timer[7]), .A2(timer[6]), .A3(timer[5]), .A4(
        timer[4]), .ZN(n31) );
  IOA21D0BWP12T30P140 U36 ( .A1(timer[2]), .A2(timer[3]), .B(n31), .ZN(n29) );
  ND3D0BWP12T30P140 U37 ( .A1(n29), .A2(pass_request), .A3(N20), .ZN(n53) );
  INVD0BWP12T30P140 U38 ( .I(n53), .ZN(n45) );
  NR3D0BWP12T30P140 U39 ( .A1(timer[2]), .A2(timer[3]), .A3(timer[1]), .ZN(n30) );
  ND3D0BWP12T30P140 U40 ( .A1(n31), .A2(timer[0]), .A3(n30), .ZN(n43) );
  OAI22D0BWP12T30P140 U41 ( .A1(n45), .A2(timer[0]), .B1(n46), .B2(n43), .ZN(
        n24) );
  NR3D0BWP12T30P140 U42 ( .A1(timer[2]), .A2(timer[1]), .A3(timer[0]), .ZN(n41) );
  INVD0BWP12T30P140 U43 ( .I(timer[3]), .ZN(n33) );
  INVD0BWP12T30P140 U44 ( .I(n43), .ZN(n47) );
  AOI21D0BWP12T30P140 U45 ( .A1(n47), .A2(n46), .B(n45), .ZN(n32) );
  ND2D0BWP12T30P140 U46 ( .A1(n41), .A2(n33), .ZN(n39) );
  OAI211D0BWP12T30P140 U47 ( .A1(n41), .A2(n33), .B(n32), .C(n39), .ZN(n19) );
  NR2D0BWP12T30P140 U48 ( .A1(phase[1]), .A2(phase[0]), .ZN(N24) );
  AOI21D0BWP12T30P140 U49 ( .A1(phase[1]), .A2(phase[0]), .B(n43), .ZN(n34) );
  ND2D0BWP12T30P140 U50 ( .A1(N24), .A2(n34), .ZN(n51) );
  OAI21D0BWP12T30P140 U51 ( .A1(n34), .A2(n46), .B(n51), .ZN(n22) );
  AOI22D0BWP12T30P140 U52 ( .A1(phase[1]), .A2(n34), .B1(timer[1]), .B2(
        timer[0]), .ZN(n35) );
  OAI211D0BWP12T30P140 U53 ( .A1(timer[1]), .A2(timer[0]), .B(n35), .C(n53), 
        .ZN(n21) );
  NR2D0BWP12T30P140 U54 ( .A1(timer[4]), .A2(n39), .ZN(n50) );
  INVD0BWP12T30P140 U55 ( .I(timer[5]), .ZN(n49) );
  ND2D0BWP12T30P140 U56 ( .A1(n50), .A2(n49), .ZN(n48) );
  NR2D0BWP12T30P140 U57 ( .A1(timer[6]), .A2(n48), .ZN(n37) );
  OAI21D0BWP12T30P140 U58 ( .A1(timer[7]), .A2(n37), .B(n53), .ZN(n36) );
  AOI21D0BWP12T30P140 U59 ( .A1(timer[7]), .A2(n37), .B(n36), .ZN(n15) );
  AOI21D0BWP12T30P140 U60 ( .A1(timer[6]), .A2(n48), .B(n37), .ZN(n38) );
  NR2D0BWP12T30P140 U61 ( .A1(n45), .A2(n38), .ZN(n16) );
  AOI21D0BWP12T30P140 U62 ( .A1(timer[4]), .A2(n39), .B(n50), .ZN(n40) );
  OAI21D0BWP12T30P140 U63 ( .A1(n45), .A2(n40), .B(n51), .ZN(n18) );
  OR2D0BWP12T30P140 U64 ( .A1(timer[1]), .A2(timer[0]), .Z(n42) );
  AOI21D0BWP12T30P140 U65 ( .A1(timer[2]), .A2(n42), .B(n41), .ZN(n44) );
  OAI22D0BWP12T30P140 U66 ( .A1(n45), .A2(n44), .B1(phase[1]), .B2(n43), .ZN(
        n20) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n47), .A2(n46), .B1(phase[1]), .B2(n47), .ZN(
        n23) );
  OAI21D0BWP12T30P140 U68 ( .A1(n50), .A2(n49), .B(n48), .ZN(n52) );
  IOA21D0BWP12T30P140 U69 ( .A1(n53), .A2(n52), .B(n51), .ZN(n17) );
endmodule

