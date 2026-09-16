// SSPx_Slv.v - dataset3: two-process nxt_ wires, MISO pipeline

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
    
    reg [15:1] RDI;
    reg [11:0] rDO;
    reg SSP_Rst;
    reg MISO_pipe;
    reg EOC;

    assign Rst_SSP = (Rst | ~SSEL);

    // Next-state wires
    wire [3:0] nxt_BC = SSP_Rst ? 0 : (BC + 1);
    wire nxt_EOC = SSP_Rst ? 0 : (BC == 14);
    wire [2:0] nxt_RA = Rst_SSP ? 0 : ((BC==2) ? RDI[15:13] : RA);
    wire nxt_WnR = Rst_SSP ? 0 : (EOC ? 0 : ((BC==3) ? RDI[12] : WnR));

    always @(posedge SCK or posedge Rst_SSP)
        if(Rst_SSP) SSP_Rst <= ~0; else SSP_Rst <= 0;

    always @(negedge SCK or posedge SSP_Rst)
        if(SSP_Rst) begin BC <= 0; EOC <= 0; end else begin BC <= nxt_BC; EOC <= nxt_EOC; end

    assign En = BC[3] | BC[2];

    always @(posedge SCK or posedge Rst_SSP)
        if(Rst_SSP) RDI <= 15'b0;
        else begin
        case(BC) 0:RDI[15]<=MOSI;1:RDI[14]<=MOSI;2:RDI[13]<=MOSI;3:RDI[12]<=MOSI;
              4:RDI[11]<=MOSI;5:RDI[10]<=MOSI;6:RDI[9]<=MOSI;7:RDI[8]<=MOSI;8:RDI[7]<=MOSI;
              9:RDI[6]<=MOSI;10:RDI[5]<=MOSI;11:RDI[4]<=MOSI;12:RDI[3]<=MOSI;13:RDI[2]<=MOSI;
              14:RDI[1]<=MOSI; 
              default:; 
              endcase
        end

    always @(negedge SCK or posedge Rst_SSP) begin
        if (Rst_SSP) begin
            RA <= 0;
            WnR <= 0;
        end else begin
            RA <= nxt_RA;
            WnR <= nxt_WnR;
        end
    end

    always @(*) DI <= {RDI[11:1], MOSI};

    always @(negedge SCK or posedge Rst)
        if(Rst) rDO <= 0; else if(BC==3) rDO <= DO;

    always @(*) case(BC)
        0,1,2,3: MISO <= MOSI; 4:MISO<=rDO[11];5:MISO<=rDO[10];6:MISO<=rDO[9];7:MISO<=rDO[8];
        8:MISO<=rDO[7];9:MISO<=rDO[6];10:MISO<=rDO[5];11:MISO<=rDO[4];12:MISO<=rDO[3];
        13:MISO<=rDO[2];14:MISO<=rDO[1];15:MISO<=rDO[0]; endcase

endmodule