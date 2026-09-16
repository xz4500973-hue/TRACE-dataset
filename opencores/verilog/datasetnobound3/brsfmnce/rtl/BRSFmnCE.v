`timescale 1ns / 1ps
// VARIANT: Single merged always for all flag+count registers, if-else chain
(* keep_hierarchy = "yes" *) module BRSFmnCE #(
    parameter pAddr = 10, pWidth = 8, pRAMInitSize = 128,
    parameter pFRAM_Init = "RAMINIT.mif"
)(
    input Rst, Clk, Clr, WE, RE,
    input  [(pWidth - 1):0] DI,
    output reg [(pWidth - 1):0] DO,
    output reg ACK,
    output reg FF, AF, AE, EF,
    output HF,
    output [pAddr:0] Cnt
);
    reg [(pWidth - 1):0] FRAM [((2**pAddr) - 1):0];
    reg [(pAddr - 1):0] WPtr, RPtr, WCnt;
    wire Wr, Rd, CE;
    assign Wr = WE & ~FF;
    assign Rd = RE & ~EF;
    assign CE = Wr ^ Rd;

    // VARIANT: Single merged sequential always for all registers
    always @(posedge Clk) begin
        // ACK
        if(Rst | Clr) ACK <= #1 0;
        else ACK <= #1 Rd;

        // WPtr
        if(Rst) WPtr <= #1 pRAMInitSize;
        else if(Clr) WPtr <= #1 0;
        else if(Wr) WPtr <= #1 WPtr + 1;

        // RPtr
        if(Rst | Clr) RPtr <= #1 0;
        else if(Rd) RPtr <= #1 RPtr + 1;

        // WCnt + flags using if-else chain
        if(Rst) begin
            WCnt <= #1 pRAMInitSize;
            EF <= #1 (pRAMInitSize == 0);
            AE <= #1 (pRAMInitSize == 1);
            FF <= #1 (pRAMInitSize == (1 << pAddr));
            AF <= #1 (pRAMInitSize == ((1 << pAddr) - 1));
        end else if(Clr) begin
            WCnt <= #1 0; EF <= #1 1; AE <= #1 0; FF <= #1 0; AF <= #1 0;
        end else if(CE) begin
            if(Wr & ~Rd) WCnt <= #1 WCnt + 1;
            else if(Rd & ~Wr) WCnt <= #1 WCnt - 1;
            EF <= #1 ((WE) ? 0 : (~|Cnt[pAddr:1]));
            AE <= #1 (Rd & (~|Cnt[pAddr:2]) & Cnt[1] & ~Cnt[0]) | (Wr & EF);
            FF <= #1 ((RE) ? 0 : (&WCnt));
            AF <= #1 (Wr & (~Cnt[pAddr] & (&Cnt[(pAddr-1):1]) & ~Cnt[0])) | (Rd & FF);
        end

        // DO
        DO <= #1 FRAM[RPtr];
    end

    assign Cnt = {FF, WCnt};
    assign HF = ~EF & (Cnt[pAddr] | Cnt[(pAddr - 1)]);

`ifndef SYNTHESIS
    initial $readmemh(pFRAM_Init, FRAM, 0, ((1 << pAddr) - 1));
`endif
    always @(posedge Clk)
        if(Wr) FRAM[WPtr] <= #1 DI;
endmodule