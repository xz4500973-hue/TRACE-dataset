///////////////////////////////////////////////////////////////////////////////
//
//  Copyright 2008-2013 by Michael A. Morris, dba M. A. Morris & Associates
//
//  All rights reserved. The source code contained herein is publicly released
//  under the terms and conditions of the GNU Lesser Public License.
//
//  Testbench variant 1: modes 0-3 fast rate, with $finish
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_SPIxIF;

// Inputs
reg     Rst;
reg     Clk;

reg     LSB;
reg     [1:0] Mode;
reg     [2:0] Rate;

reg     DAV;
wire    FRE;
reg     [8:0] TD;

wire    FWE;
wire    [7:0] RD;

wire    SSEL;
wire    SCK;
wire    MOSI;

integer i      = 0;
integer SS_Len = 0;
    
	// Instantiate the Unit Under Test (UUT)
	
SPIxIF  uut (
            .Rst(Rst), 
            .Clk(Clk),
            
            .LSB(LSB), 
            .Mode(Mode), 
            .Rate(Rate), 

            .DAV(DAV), 
            .FRE(FRE), 
            .TD(TD), 

            .FWE(FWE), 
            .RD(RD), 

            .SS(SS), 
            .SCK(SCK), 
            .MOSI(MOSI), 
            .MISO(MOSI)
        );

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_SPIxIF);
    
    Rst  = 1;
    Clk  = 0;
    
    LSB  = 0;
    Mode = 0;
    Rate = 0;
    
    DAV  = 0;
    TD   = 0;
    
    #101 Rst = 0;
    
    $display("Testing: MSB first, all four SPI modes, fastest SPI SCK rate\n");
    
    Mode = 0; Rate = 0; LSB = 0;

    $display("\tTest - Mode 0\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h1AB;
    @(posedge FRE) DAV = 0;
    @(negedge FWE) Mode = 1;
    if(RD != TD[7:0]) $display("Error: RD != TD"); else $display("Pass: RD == TD");

    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;

    $display("\tTest - Mode 1\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h15A;
    @(posedge FRE) DAV = 0;
    @(negedge FWE) Mode = 2;

    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;

    $display("\tTest - Mode 2\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h1A5;
    @(posedge FRE) DAV = 0;
    @(negedge FWE) Mode = 3;

    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;
    @(posedge Clk) #1;

    $display("\tTest - Mode 3\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h169;
    @(posedge FRE) DAV = 0;
    @(negedge FWE) Mode = 0;

    $display("Testing multi-cycle transfer\n");
    @(posedge Clk) #1;
    DAV = 1;
    TD = 9'h002;
    @(negedge FRE);
    TD = 9'h000;
    @(negedge FRE);
    TD = 9'h0AA;
    @(negedge FRE);
    TD = 9'h055;
    @(negedge FRE);
    TD = 9'h000;
    DAV = 0;
    @(negedge SS) #1;

    // More rates
    $display("Testing with Rate=3\n");
    Rate = 3;
    @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1;
    DAV = 1; TD = 9'h0F0; @(negedge FRE); DAV = 0;
    @(negedge SS) #1;

    $display("Testing with Rate=5\n");
    Rate = 5;
    @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1;
    DAV = 1; TD = 9'h123; @(negedge FRE); DAV = 0;
    @(negedge SS) #1;

    // Random transfers for power analysis
    $display("Random transfers for power analysis\n");
    repeat (100) begin
        @(negedge SS or posedge Clk);
        Mode = $random % 4;
        Rate = $random % 8;
        LSB  = $random % 2;
        DAV = 1;
        TD  = {$random} % 512;
        repeat (2) @(posedge Clk);
        DAV = 0;
        repeat ({$random} % 4 + 1) begin
            @(posedge FRE);
            TD  = {$random} % 512;
            DAV = 1;
            @(posedge Clk);
            DAV = 0;
        end
        @(negedge SS);
    end

    #1000;
    $display("Simulation finished at %0t", $time);
    $finish;
end

always #5 Clk = ~Clk;
    
always @(negedge SS) SS_Len = i;

always @(posedge Clk or negedge SS)
begin
    if(~SS)
        #10 i = 0;
    else
        i = i + 1;
end

endmodule