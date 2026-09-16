/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:17:32 2026
/////////////////////////////////////////////////////////////


module square_wave ( clk, freq, wave_out );
  input [7:0] freq;
  input clk;
  output wave_out;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, n23, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [7:0] cnt;

  DFQD2BWP12T30P140 cnt_reg_7_ ( .D(N28), .CP(clk), .Q(cnt[7]) );
  DFQD2BWP12T30P140 wave_out_reg ( .D(n23), .CP(clk), .Q(wave_out) );
  DFQD2BWP12T30P140 cnt_reg_5_ ( .D(N26), .CP(clk), .Q(cnt[5]) );
  DFQD2BWP12T30P140 cnt_reg_4_ ( .D(N25), .CP(clk), .Q(cnt[4]) );
  DFQD2BWP12T30P140 cnt_reg_6_ ( .D(N27), .CP(clk), .Q(cnt[6]) );
  DFQD2BWP12T30P140 cnt_reg_2_ ( .D(N23), .CP(clk), .Q(cnt[2]) );
  DFQD2BWP12T30P140 cnt_reg_3_ ( .D(N24), .CP(clk), .Q(cnt[3]) );
  DFQD2BWP12T30P140 cnt_reg_0_ ( .D(N21), .CP(clk), .Q(cnt[0]) );
  DFQD1BWP12T30P140 cnt_reg_1_ ( .D(N22), .CP(clk), .Q(cnt[1]) );
  INVD0BWP12T30P140 U35 ( .I(cnt[1]), .ZN(n54) );
  INVD0BWP12T30P140 U36 ( .I(cnt[0]), .ZN(n53) );
  INVD0BWP12T30P140 U37 ( .I(freq[5]), .ZN(n27) );
  OR2D0BWP12T30P140 U38 ( .A1(freq[1]), .A2(freq[0]), .Z(n31) );
  NR2D0BWP12T30P140 U39 ( .A1(freq[2]), .A2(n31), .ZN(n30) );
  INVD0BWP12T30P140 U40 ( .I(n30), .ZN(n29) );
  NR2D0BWP12T30P140 U41 ( .A1(freq[3]), .A2(n29), .ZN(n28) );
  INVD0BWP12T30P140 U42 ( .I(n28), .ZN(n42) );
  NR2D0BWP12T30P140 U43 ( .A1(freq[4]), .A2(n42), .ZN(n41) );
  ND2D0BWP12T30P140 U44 ( .A1(n27), .A2(n41), .ZN(n26) );
  NR2D0BWP12T30P140 U45 ( .A1(freq[6]), .A2(n26), .ZN(n25) );
  INVD0BWP12T30P140 U46 ( .I(n25), .ZN(n52) );
  AN2D0BWP12T30P140 U47 ( .A1(freq[7]), .A2(n52), .Z(n50) );
  INVD0BWP12T30P140 U48 ( .I(cnt[7]), .ZN(n62) );
  AOI21D0BWP12T30P140 U49 ( .A1(freq[6]), .A2(n26), .B(n25), .ZN(n48) );
  OAI21D0BWP12T30P140 U50 ( .A1(n27), .A2(n41), .B(n26), .ZN(n46) );
  INVD0BWP12T30P140 U51 ( .I(cnt[5]), .ZN(n56) );
  AOI21D0BWP12T30P140 U52 ( .A1(freq[3]), .A2(n29), .B(n28), .ZN(n40) );
  AOI21D0BWP12T30P140 U53 ( .A1(freq[2]), .A2(n31), .B(n30), .ZN(n36) );
  INVD0BWP12T30P140 U54 ( .I(freq[0]), .ZN(n34) );
  NR2D0BWP12T30P140 U55 ( .A1(freq[0]), .A2(n53), .ZN(n32) );
  MAOI222D0BWP12T30P140 U56 ( .A(cnt[1]), .B(freq[1]), .C(n32), .ZN(n33) );
  OAI21D0BWP12T30P140 U57 ( .A1(freq[1]), .A2(n34), .B(n33), .ZN(n35) );
  MAOI222D0BWP12T30P140 U58 ( .A(cnt[2]), .B(n36), .C(n35), .ZN(n38) );
  ND2D0BWP12T30P140 U59 ( .A1(n40), .A2(cnt[3]), .ZN(n37) );
  ND2D0BWP12T30P140 U60 ( .A1(n38), .A2(n37), .ZN(n39) );
  OA21D0BWP12T30P140 U61 ( .A1(n40), .A2(cnt[3]), .B(n39), .Z(n44) );
  AOI21D0BWP12T30P140 U62 ( .A1(freq[4]), .A2(n42), .B(n41), .ZN(n43) );
  MAOI222D0BWP12T30P140 U63 ( .A(n44), .B(cnt[4]), .C(n43), .ZN(n45) );
  MAOI222D0BWP12T30P140 U64 ( .A(n46), .B(n56), .C(n45), .ZN(n47) );
  MAOI222D0BWP12T30P140 U65 ( .A(cnt[6]), .B(n48), .C(n47), .ZN(n49) );
  MAOI222D0BWP12T30P140 U66 ( .A(n50), .B(n62), .C(n49), .ZN(n51) );
  OAI21D0BWP12T30P140 U67 ( .A1(freq[7]), .A2(n52), .B(n51), .ZN(n66) );
  INVD0BWP12T30P140 U68 ( .I(n66), .ZN(n69) );
  AOI221D0BWP12T30P140 U69 ( .A1(cnt[1]), .A2(cnt[0]), .B1(n54), .B2(n53), .C(
        n69), .ZN(N22) );
  INVD0BWP12T30P140 U70 ( .I(cnt[4]), .ZN(n57) );
  INVD0BWP12T30P140 U71 ( .I(cnt[2]), .ZN(n65) );
  ND2D0BWP12T30P140 U72 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(n64) );
  NR2D0BWP12T30P140 U73 ( .A1(n65), .A2(n64), .ZN(n68) );
  ND2D0BWP12T30P140 U74 ( .A1(cnt[3]), .A2(n68), .ZN(n67) );
  NR2D0BWP12T30P140 U75 ( .A1(n57), .A2(n67), .ZN(n58) );
  INVD0BWP12T30P140 U76 ( .I(n58), .ZN(n55) );
  AOI221D0BWP12T30P140 U77 ( .A1(cnt[5]), .A2(n58), .B1(n56), .B2(n55), .C(n69), .ZN(N26) );
  AOI211D0BWP12T30P140 U78 ( .A1(n57), .A2(n67), .B(n58), .C(n69), .ZN(N25) );
  INVD0BWP12T30P140 U79 ( .I(cnt[6]), .ZN(n60) );
  ND2D0BWP12T30P140 U80 ( .A1(cnt[5]), .A2(n58), .ZN(n59) );
  NR2D0BWP12T30P140 U81 ( .A1(n60), .A2(n59), .ZN(n63) );
  AOI211D0BWP12T30P140 U82 ( .A1(n60), .A2(n59), .B(n63), .C(n69), .ZN(N27) );
  INVD0BWP12T30P140 U83 ( .I(n63), .ZN(n61) );
  AOI221D0BWP12T30P140 U84 ( .A1(cnt[7]), .A2(n63), .B1(n62), .B2(n61), .C(n69), .ZN(N28) );
  AOI211D0BWP12T30P140 U85 ( .A1(n65), .A2(n64), .B(n68), .C(n69), .ZN(N23) );
  OA211D0BWP12T30P140 U86 ( .A1(cnt[3]), .A2(n68), .B(n67), .C(n66), .Z(N24)
         );
  NR2D0BWP12T30P140 U87 ( .A1(cnt[0]), .A2(n69), .ZN(N21) );
  INVD0BWP12T30P140 U88 ( .I(wave_out), .ZN(n70) );
  MUX2ND0BWP12T30P140 U89 ( .I0(n70), .I1(wave_out), .S(n69), .ZN(n23) );
endmodule

