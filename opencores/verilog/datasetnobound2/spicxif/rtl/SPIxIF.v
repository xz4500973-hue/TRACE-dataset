////////////////////////////////////////////////////////////////////////////////
//
//  Copyright 2008-2013 by Michael A. Morris, dba M. A. Morris & Associates
//
//  All rights reserved. The source code contained herein is publicly released
//  under the terms and conditions of the GNU Lesser Public License.
//
//  Refactored variant (dataset2): merged always blocks, ROM lookup for rate
//
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:         M. A. Morris & Associates 
// Engineer:        Michael A. Morris
// 
// Module Name:     SPIxIF.v 
// Description:     SPI Master Interface (Merged always block variant)
////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module SPIxIF (
    input   Rst,                // System Reset (synchronous)
    input   Clk,                // System Clk
//
    input   LSB,                // SPI LSB First Shift Direction
    input   [1:0] Mode,         // SPI Operating Mode
    input   [2:0] Rate,         // SPI Shift Rate Select: SCK = Clk/2**(Rate+1)
//
    input   DAV,                // SPI Transmit Data Available
    output  reg FRE,            // SPI Transmit FIFO Read Enable
    input   [8:0] TD,           // SPI Transmit Data 
//
    output  reg FWE,            // SPI Receive FIFO Write Enable
    output  [7:0] RD,           // SPI Receive Data
//
    output  reg SS,             // SPI Slave Select
    output  reg SCK,            // SPI Shift Clock
    output  MOSI,               // SPI Master Out, Slave In: Serial Data Output
    input   MISO                // SPI Master In, Slave Out: Serial Data In
);

////////////////////////////////////////////////////////////////////////////////
//
//  Module Parameters
//

////////////////////////////////////////////////////////////////////////////////    
//
//  Module Declarations
//

reg     Dir;                                // Shift Register Shift Direction
reg     SCK_Lvl, SCK_Inv, COS_SCK_Lvl;      // SCK level and edge control
reg     [2:0] rRate;                        // SPI SCK Rate Select Register
reg     [6:0] CE_Cntr;                      // SPI CE Counter (2x SCK)
wire    CE;                                 // SPI Clock Enable (TC CE_Cntr)

wire    CE_SCK, Rst_SCK;                    // SCK generator control signals
reg     Ld;                                 // SPI Transfer Cycle Start Pulse

wire    CE_OSR, CE_ISR;                     // SPI Shift Register Clock Enables
reg     [7:0] OSR, ISR;                     // SPI Output/Input Shift Registers
reg     RdEn;                               // SPI Read Enable (9th bit in TD)

reg     [2:0] BitCnt;                       // SPI Transfer Cycle Length Cntr
wire    TC_BitCnt;                          // SPI Bit Counter Terminal Count

// ROM-based CE reload values
wire [6:0] CE_Reload [0:7];
assign CE_Reload[0] = 7'd0;
assign CE_Reload[1] = 7'd1;
assign CE_Reload[2] = 7'd3;
assign CE_Reload[3] = 7'd7;
assign CE_Reload[4] = 7'd15;
assign CE_Reload[5] = 7'd31;
assign CE_Reload[6] = 7'd63;
assign CE_Reload[7] = 7'd127;
    
////////////////////////////////////////////////////////////////////////////////
//
//  Implementation (Refactored: merged always blocks)
//

//  Combined control capture block: Dir, SCK_Inv, SCK_Lvl, COS_SCK_Lvl, rRate, Ld
always @(posedge Clk)
begin
    if(Rst) begin
        Dir         <= #1 0;
        SCK_Inv     <= #1 0;
        SCK_Lvl     <= #1 0;
        COS_SCK_Lvl <= #1 0;
        rRate       <= #1 ~0;
        Ld          <= #1 0;
    end else begin
        // SS not asserted: capture control
        if(~SS) begin
            Dir         <= #1 LSB;
            SCK_Inv     <= #1 ^Mode;
            SCK_Lvl     <= #1 Mode[0];
            rRate       <= #1 Rate;
            Ld          <= #1 DAV & ~Ld;
        end else if(Ld) begin
            Ld          <= #1 0;
        end
        // COS_SCK_Lvl always updates
        COS_SCK_Lvl <= #1 ((~SS) ? (SCK_Lvl ^ Mode[0]) : 0);
    end
end

//
//  Serial SPI Clock Generator (ROM-based reload)
//
always @(posedge Clk)
begin
    if(Rst)
        CE_Cntr <= #1 ~0;
    else if(CE)
        CE_Cntr <= #1 CE_Reload[rRate];
    else if(SS)
        CE_Cntr <= #1 (CE_Cntr - 1);
end

assign CE = (Ld | (~|CE_Cntr));

assign CE_SCK  = CE & SS;
assign Rst_SCK = Rst | Ld | (COS_SCK_Lvl & ~SS) | (TC_BitCnt & CE_OSR & ~DAV);

always @(posedge Clk)
begin
    if(Rst_SCK) 
        #1 SCK <= (Ld ? SCK_Inv : SCK_Lvl);
    else if(CE_SCK)
        #1 SCK <= ~SCK;
end

//
//  SPI Shift Registers (OSR + ISR merged)
//

assign CE_OSR = CE_SCK & (SCK_Inv ^ SCK);   
assign Ld_OSR = Ld | (TC_BitCnt & CE_OSR);   

always @(posedge Clk)
begin
    if(Rst) begin
        OSR <= #1 0;
        ISR <= #1 0;
    end else begin
        if(Ld_OSR)
            OSR <= #1 TD;
        else if(CE_OSR)
            OSR <= #1 ((Dir) ? {SCK_Lvl, OSR[7:1]} : {OSR[6:0], SCK_Lvl});
        
        if(Ld)
            ISR <= #1 0;
        else if(CE_ISR)
            ISR <= #1 ((Dir) ? {MISO, ISR[7:1]} : {ISR[6:0], MISO});
    end
end

assign CE_ISR = CE_SCK & (SCK_Inv ^ ~SCK);   
assign MOSI = SS & ((Dir) ? OSR[0] : OSR[7]);

//
//  SPI SR Bit Counter
//

assign CE_BitCnt  = CE_OSR & SS;
assign Rst_BitCnt = Rst | Ld | (TC_BitCnt & CE_OSR);

always @(posedge Clk)
begin
    if(Rst_BitCnt)
        BitCnt <= #1 7;
    else if(CE_BitCnt)
        BitCnt <= #1 (BitCnt - 1);
end

assign TC_BitCnt = ~|BitCnt;

//
//  SPI Control: SS, RdEn, FRE, FWE (merged block)
//

always @(posedge Clk)
begin
    if(Rst) begin
        SS   <= #1 0;
        RdEn <= #1 0;
        FRE  <= #1 0;
        FWE  <= #1 0;
    end else begin
        if(Ld_OSR) begin
            SS   <= #1 DAV;
            RdEn <= #1 ((DAV) ? TD[8] : 0);
        end
        FRE  <= #1 (Ld | (DAV & (TC_BitCnt & CE_OSR)));
        FWE  <= #1 (RdEn & (TC_BitCnt & CE_ISR));
    end
end

assign RD = ISR;

endmodule