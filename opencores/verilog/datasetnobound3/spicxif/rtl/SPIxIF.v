////////////////////////////////////////////////////////////////////////////////
//
//  Copyright 2008-2013 by Michael A. Morris, dba M. A. Morris & Associates
//
//  All rights reserved. The source code contained herein is publicly released
//  under the terms and conditions of the GNU Lesser Public License.
//
//  Refactored variant (dataset3): combinational next-state wires, pipeline SCK
//
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:         M. A. Morris & Associates 
// Engineer:        Michael A. Morris
// 
// Module Name:     SPIxIF.v 
// Description:     SPI Master Interface (nxt_ wire variant + SCK pipeline)
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
//  Module Declarations
//

reg     Dir;                                
reg     SCK_Lvl, SCK_Inv, COS_SCK_Lvl;      
reg     [2:0] rRate;                        
reg     [6:0] CE_Cntr;                      
wire    CE;                                 

wire    CE_SCK, Rst_SCK;                    
reg     Ld;                                 

wire    CE_OSR, CE_ISR;                     
reg     [7:0] OSR, ISR;                     
reg     RdEn;                               

reg     [2:0] BitCnt;                       
wire    TC_BitCnt;                          

// Next-state wires for control registers
reg     nxt_Dir;
reg     nxt_SCK_Inv;
reg     nxt_SCK_Lvl;
reg     nxt_COS_SCK_Lvl;
reg     [2:0] nxt_rRate;
reg     nxt_Ld;

// Pipeline reg for SCK (extra flop)
reg     pipe_SCK;

////////////////////////////////////////////////////////////////////////////////
//
//  Implementation (nxt_ wire + pipeline variant)
//

//  Combinational next-state computation
always @(SS or LSB or Mode or Rate or DAV or Ld or SCK_Lvl or Dir or SCK_Inv or rRate) begin
    nxt_Dir         = Dir;
    nxt_SCK_Inv     = SCK_Inv;
    nxt_SCK_Lvl     = SCK_Lvl;
    nxt_rRate       = rRate;
    nxt_Ld          = Ld;
    nxt_COS_SCK_Lvl = 1'b0;
    
    if(~SS) begin
        nxt_Dir     = LSB;
        nxt_SCK_Inv = ^Mode;
        nxt_SCK_Lvl = Mode[0];
        nxt_rRate   = Rate;
        nxt_Ld      = DAV & ~Ld;
        nxt_COS_SCK_Lvl = (SCK_Lvl ^ Mode[0]);
    end else if(Ld) begin
        nxt_Ld = 1'b0;
    end
end

//  Sequential control register
always @(posedge Clk) begin
    if(Rst) begin
        Dir         <= #1 0;
        SCK_Inv     <= #1 0;
        SCK_Lvl     <= #1 0;
        COS_SCK_Lvl <= #1 0;
        rRate       <= #1 ~0;
        Ld          <= #1 0;
    end else begin
        Dir         <= #1 nxt_Dir;
        SCK_Inv     <= #1 nxt_SCK_Inv;
        SCK_Lvl     <= #1 nxt_SCK_Lvl;
        COS_SCK_Lvl <= #1 nxt_COS_SCK_Lvl;
        rRate       <= #1 nxt_rRate;
        Ld          <= #1 nxt_Ld;
    end
end

//
//  Serial SPI Clock Generator
//
always @(posedge Clk)
begin
    if(Rst)
        CE_Cntr <= #1 ~0;
    else if(CE)
        case(rRate)
            3'b000  : CE_Cntr <= #1 0;
            3'b001  : CE_Cntr <= #1 1;
            3'b010  : CE_Cntr <= #1 3;
            3'b011  : CE_Cntr <= #1 7;
            3'b100  : CE_Cntr <= #1 15;
            3'b101  : CE_Cntr <= #1 31;
            3'b110  : CE_Cntr <= #1 63;
            3'b111  : CE_Cntr <= #1 127;
        endcase
    else if(SS)
        CE_Cntr <= #1 (CE_Cntr - 1);
end

assign CE = (Ld | (~|CE_Cntr));

assign CE_SCK  = CE & SS;
assign Rst_SCK = Rst | Ld | (COS_SCK_Lvl & ~SS) | (TC_BitCnt & CE_OSR & ~DAV);

always @(posedge Clk)
begin
    if(Rst_SCK) 
        #1 pipe_SCK <= (Ld ? SCK_Inv : SCK_Lvl);
    else if(CE_SCK)
        #1 pipe_SCK <= ~pipe_SCK;
end

// Pipeline SCK to output (extra flop)
always @(posedge Clk) begin
    if(Rst)
        SCK <= #1 0;
    else
        SCK <= #1 pipe_SCK;
end

//
//  SPI Output Shift Register
//

assign CE_OSR = CE_SCK & (SCK_Inv ^ pipe_SCK);   
assign Ld_OSR = Ld | (TC_BitCnt & CE_OSR);   

always @(posedge Clk)
begin
    if(Rst)
        OSR <= #1 0;
    else if(Ld_OSR)
        OSR <= #1 TD;
    else if(CE_OSR)
        OSR <= #1 ((Dir) ? {SCK_Lvl, OSR[7:1]} : {OSR[6:0], SCK_Lvl});
end

assign MOSI = SS & ((Dir) ? OSR[0] : OSR[7]);

//
//  SPI Input Shift Register
//

assign CE_ISR = CE_SCK & (SCK_Inv ^ ~pipe_SCK);   

always @(posedge Clk)
begin
    if(Rst)
        ISR <= #1 0;
    else if(Ld)
        ISR <= #1 0;
    else if(CE_ISR)
        ISR <= #1 ((Dir) ? {MISO, ISR[7:1]} : {ISR[6:0], MISO});
end

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
//  SPI Slave Select Generator
//

always @(posedge Clk)
begin
    if(Rst)
        SS <= #1 0;
    else if(Ld_OSR)
        SS <= #1 DAV;
end

//
//  SPI MISO Read Enable Register
//

always @(posedge Clk)
begin
    if(Rst)
        RdEn <= #1 0;
    else if(Ld_OSR)
        RdEn <= #1 ((DAV) ? TD[8] : 0);
end

//
//  SPI Transmit FIFO Read Pulse Generator
//

always @(posedge Clk)
begin
    if(Rst)
        FRE <= #1 0;
    else
        FRE <= #1 (Ld | (DAV & (TC_BitCnt & CE_OSR)));
end

//
//  SPI Receive FIFO Write Pulse Generator
//

always @(posedge Clk)
begin
    if(Rst)
        FWE <= #1 0;
    else
        FWE <= #1 (RdEn & (TC_BitCnt & CE_ISR));
end

assign RD = ISR;

endmodule