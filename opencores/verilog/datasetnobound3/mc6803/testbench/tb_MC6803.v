`timescale 1ns / 1ps

module tb_MC6803;

    reg clk;
    reg RST;
    reg hold;
    reg halt;
    reg irq;
    reg nmi;
    reg [7:0] PORT_A_IN;
    reg [4:0] PORT_B_IN;
    reg [7:0] DATA_IN;
    wire [7:0] PORT_A_OUT;
    wire [4:0] PORT_B_OUT;
    wire [15:0] ADDRESS;
    wire [7:0] DATA_OUT;
    wire E_CLK;
    wire rw;

    MC6803_gen2 uut (
        .clk        (clk),
        .RST        (RST),
        .hold       (hold),
        .halt       (halt),
        .irq        (irq),
        .nmi        (nmi),
        .PORT_A_IN  (PORT_A_IN),
        .PORT_B_IN  (PORT_B_IN),
        .DATA_IN    (DATA_IN),
        .PORT_A_OUT (PORT_A_OUT),
        .PORT_B_OUT (PORT_B_OUT),
        .ADDRESS    (ADDRESS),
        .DATA_OUT   (DATA_OUT),
        .E_CLK      (E_CLK),
        .rw         (rw)
    );

    initial clk = 0;
    always #62.5 clk = ~clk;

    // Memory-access-intensive instruction sequence from 0x0000
    // CE 12 34  LDX #$1234     ; X=0x1234
    // DF 00 80  STX $0080      ; mem[0x0080]=0x12, mem[0x0081]=0x34
    // 96 00 80  LDAA $0080     ; A=mem[0x0080]=0x12
    // D6 00 81  LDAB $0081     ; B=mem[0x0081]=0x34
    // D7 00 90  STAB $0090     ; mem[0x0090]=0x34
    // 97 00 91  STAA $0091     ; mem[0x0091]=0x12
    // CE 56 78  LDX #$5678     ; X=0x5678
    // FF 00 A0  STX $00A0      ; mem[0x00A0]=0x56, mem[0x00A1]=0x78
    // FE 00 A0  LDX $00A0      ; X=mem[0x00A0:0x00A1]
    // 01        NOP
    always @* begin
        case (ADDRESS)
            16'hFFFE: DATA_IN = 8'h00;
            16'hFFFF: DATA_IN = 8'h00;
            16'h0000: DATA_IN = 8'hCE;
            16'h0001: DATA_IN = 8'h12;
            16'h0002: DATA_IN = 8'h34;
            16'h0003: DATA_IN = 8'hDF;
            16'h0004: DATA_IN = 8'h00;
            16'h0005: DATA_IN = 8'h80;
            16'h0006: DATA_IN = 8'h96;
            16'h0007: DATA_IN = 8'h00;
            16'h0008: DATA_IN = 8'h80;
            16'h0009: DATA_IN = 8'hD6;
            16'h000A: DATA_IN = 8'h00;
            16'h000B: DATA_IN = 8'h81;
            16'h000C: DATA_IN = 8'hD7;
            16'h000D: DATA_IN = 8'h00;
            16'h000E: DATA_IN = 8'h90;
            16'h000F: DATA_IN = 8'h97;
            16'h0010: DATA_IN = 8'h00;
            16'h0011: DATA_IN = 8'h91;
            16'h0012: DATA_IN = 8'hCE;
            16'h0013: DATA_IN = 8'h56;
            16'h0014: DATA_IN = 8'h78;
            16'h0015: DATA_IN = 8'hFF;
            16'h0016: DATA_IN = 8'h00;
            16'h0017: DATA_IN = 8'hA0;
            16'h0018: DATA_IN = 8'hFE;
            16'h0019: DATA_IN = 8'h00;
            16'h001A: DATA_IN = 8'hA0;
            default:  DATA_IN = 8'h01;  // NOP for unused addresses
        endcase
    end

    initial begin
        $dumpfile("MC6803.vcd");
        $dumpvars(0, tb_MC6803);

        RST        = 1;
        hold       = 0;
        halt       = 0;
        irq        = 0;
        nmi        = 0;
        PORT_A_IN  = 0;
        PORT_B_IN  = 0;

        #500;
        RST = 0;

        #8_000_000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule
