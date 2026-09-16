// SSPx_Slv.v - dataset2: if-else chain RDI and MISO

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module SSPx_Slv(
    input Rst, SSEL, SCK, MOSI,
    output reg MISO,
    output reg [2:0] RA, WnR,
    output En, EOC,
    output reg [11:0] DI,
    input [11:0] DO,
    output reg [3:0] BC
);
    reg EOC;
    reg [15:1] RDI;
    reg [11:0] rDO;
    reg SSP_Rst;

    assign Rst_SSP = (Rst | ~SSEL);

    always @(posedge SCK or posedge Rst_SSP)
        if(Rst_SSP) SSP_Rst <= ~0; else SSP_Rst <= 0;

    always @(negedge SCK or posedge SSP_Rst)
        if(SSP_Rst) BC <= 4'd0; else BC <= BC + 1;

    always @(negedge SCK or posedge SSP_Rst)
        if(SSP_Rst) EOC <= 1'b0; else EOC <= (BC == 14);

    assign En = BC[3] | BC[2];

    // RDI using if-else chain
    always @(posedge SCK or posedge Rst_SSP)
        if(Rst_SSP) RDI <= 15'b0;
        else begin
            if(BC==0)      RDI[15] <= MOSI;
            else if(BC==1) RDI[14] <= MOSI;
            else if(BC==2) RDI[13] <= MOSI;
            else if(BC==3) RDI[12] <= MOSI;
            else if(BC==4) RDI[11] <= MOSI;
            else if(BC==5) RDI[10] <= MOSI;
            else if(BC==6) RDI[9]  <= MOSI;
            else if(BC==7) RDI[8]  <= MOSI;
            else if(BC==8) RDI[7]  <= MOSI;
            else if(BC==9) RDI[6]  <= MOSI;
            else if(BC==10) RDI[5]  <= MOSI;
            else if(BC==11) RDI[4]  <= MOSI;
            else if(BC==12) RDI[3]  <= MOSI;
            else if(BC==13) RDI[2]  <= MOSI;
            else if(BC==14) RDI[1]  <= MOSI;
        end

    always @(negedge SCK or posedge Rst_SSP)
        if(Rst_SSP) RA <= 0; else if(BC==2) RA <= RDI[15:13];

    always @(negedge SCK or posedge Rst_SSP)
        if(Rst_SSP) WnR <= 0; else if(EOC) WnR <= 0; else if(BC==3) WnR <= RDI[12];

    always @(*) DI <= {RDI[11:1], MOSI};

    always @(negedge SCK or posedge Rst)
        if(Rst) rDO <= 0; else if(BC==3) rDO <= DO;

    // MISO using if-else chain
    always @(*) begin
        if(BC<4) MISO <= MOSI;
        else if(BC==4)  MISO <= rDO[11];
        else if(BC==5)  MISO <= rDO[10];
        else if(BC==6)  MISO <= rDO[9];
        else if(BC==7)  MISO <= rDO[8];
        else if(BC==8)  MISO <= rDO[7];
        else if(BC==9)  MISO <= rDO[6];
        else if(BC==10) MISO <= rDO[5];
        else if(BC==11) MISO <= rDO[4];
        else if(BC==12) MISO <= rDO[3];
        else if(BC==13) MISO <= rDO[2];
        else if(BC==14) MISO <= rDO[1];
        else            MISO <= rDO[0];
    end

endmodule