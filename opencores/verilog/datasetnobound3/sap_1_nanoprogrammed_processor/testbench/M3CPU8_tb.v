`timescale 1ns / 1ps
module M3CPU8_tb;
    reg clk, rst;
    wire [3:0] PC_o; wire [3:0] MAR_o; wire [8:0] SRAM_o; wire [4:0] IR_o_1; wire [3:0] IR_o_2; wire [3:0] AR_o; wire [3:0] PRE_o; wire [4:0] ROM_o; wire [4:0] NANO_PRE_o; wire [16:0] NANO_ROM_o; wire EP_o, CP_o, LM_o, CE_o, LI_o, EI_o, CS_o, LA_o, EA_o, SU_o, AD_o, EU_o, LB_o, LO_o, LOAD_MICRO_o, CLEAR_MICRO_o, INC_MICRO_o; wire [8:0] B_out, ALU_out, A_out, OR_out;
    M3CPU8 uut(.clk(clk),.rst(rst),.PC_o(PC_o),.MAR_o(MAR_o),.SRAM_o(SRAM_o),.IR_o_1(IR_o_1),.IR_o_2(IR_o_2),.AR_o(AR_o),.PRE_o(PRE_o),.ROM_o(ROM_o),.NANO_PRE_o(NANO_PRE_o),.NANO_ROM_o(NANO_ROM_o),.EP_o(EP_o),.CP_o(CP_o),.LM_o(LM_o),.CE_o(CE_o),.LI_o(LI_o),.EI_o(EI_o),.CS_o(CS_o),.LA_o(LA_o),.EA_o(EA_o),.SU_o(SU_o),.AD_o(AD_o),.EU_o(EU_o),.LB_o(LB_o),.LO_o(LO_o),.LOAD_MICRO_o(LOAD_MICRO_o),.CLEAR_MICRO_o(CLEAR_MICRO_o),.INC_MICRO_o(INC_MICRO_o),.B_out(B_out),.ALU_out(ALU_out),.A_out(A_out),.OR_out(OR_out));
    initial begin $dumpfile("M3CPU8.vcd"); $dumpvars(0, M3CPU8_tb); end
    integer loop;
    // Variant 3: 15 loops, alternate rst every 2
    initial begin clk=0;rst=0;
        for(loop=0;loop<15;loop=loop+1) begin
            repeat(24) begin #50;clk=~clk; end
            rst=~rst; #10; rst=0;
        end
        #500; $display("Sim v3 done"); $finish;
    end
endmodule