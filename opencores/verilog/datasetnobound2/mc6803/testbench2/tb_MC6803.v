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

    // ALU-intensive instruction sequence from 0x0000
    // 86 55    LDAA #$55      ; A=0x55
    // C6 AA    LDAB #$AA      ; B=0xAA
    // 1B       ABA             ; A=A+B=0xFF, flags set
    // 8B 33    ADDA #$33      ; A=0x32, C=1
    // 19       DAA             ; decimal adjust A=0x38
    // 40       NEGA            ; A=0xC8
    // 43       COMA            ; A=0x37
    // 44       LSRA            ; A=0x1B
    // 4C       INCA            ; A=0x1C
    // 01       NOP             ; loop
    always @* begin
        case (ADDRESS)
            16'hFFFE: DATA_IN = 8'h00;
            16'hFFFF: DATA_IN = 8'h00;
            16'h0000: DATA_IN = 8'h86;
            16'h0001: DATA_IN = 8'h55;
            16'h0002: DATA_IN = 8'hC6;
            16'h0003: DATA_IN = 8'hAA;
            16'h0004: DATA_IN = 8'h1B;
            16'h0005: DATA_IN = 8'h8B;
            16'h0006: DATA_IN = 8'h33;
            16'h0007: DATA_IN = 8'h19;
            16'h0008: DATA_IN = 8'h40;
            16'h0009: DATA_IN = 8'h43;
            16'h000A: DATA_IN = 8'h44;
            16'h000B: DATA_IN = 8'h4C;
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

        #5_000_000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule
