`timescale 1ns / 1ps

module tb_ula;

    // Inputs
    reg clk14;
    wire [15:0] a;
    wire [7:0] din;
    wire mreq_n;
    wire iorq_n;
    wire wr_n;
    wire rfsh_n;
    reg [7:0] vramdout;
    reg ear;
    reg [4:0] kbcolumns;

    // Outputs
    wire [7:0] dout;
    wire clkcpu;
    wire msk_int_n;
    wire [13:0] va;
    wire [7:0] vramdin;
    wire vramoe;
    wire vramcs;
    wire vramwe;
    wire mic;
    wire spk;
    wire [7:0] kbrows;
    wire r, g, b, i;
    wire csync;

    // DUT
    ula uut (
        .clk14(clk14),
        .a(a), .din(din), .dout(dout),
        .mreq_n(mreq_n), .iorq_n(iorq_n),
        .rd_n(1'b1),
        .wr_n(wr_n), .rfsh_n(rfsh_n),
        .clkcpu(clkcpu), .msk_int_n(msk_int_n),
        .va(va),
        .vramdout(vramdout), .vramdin(vramdin),
        .vramoe(vramoe), .vramcs(vramcs), .vramwe(vramwe),
        .ear(ear),
        .mic(mic), .spk(spk),
        .kbrows(kbrows), .kbcolumns(kbcolumns),
        .r(r), .g(g), .b(b), .i(i), .csync(csync)
    );

    // Z80 bus functional model - variant 2
    z80memio cpu (
        .clk(clkcpu),
        .a(a), .d(din),
        .mreq_n(mreq_n), .iorq_n(iorq_n),
        .wr_n(wr_n), .rfsh_n(rfsh_n)
    );

    // 14 MHz clock
    initial clk14 = 0;
    always begin
        #35.714286 clk14 = ~clk14;
    end

    // Test procedure - variant 4: most aggressive stimulus
    initial begin
        // Generate VCD
        $dumpfile("ula.vcd");
        $dumpvars(0, tb_ula);

        // Initialize
        vramdout = 8'b00000000;
        ear = 1;
        kbcolumns = 5'b11111;

        #500_000;

        // Rapid sequential toggles
        repeat (5) begin
            vramdout = $urandom;
            ear      = $urandom % 2;
            kbcolumns = $urandom % 32;
            #200_000;
        end

        // Settle
        ear = 0;
        vramdout = 8'b00111100;

        #2_000_000;

        // More toggles
        repeat (10) begin
            vramdout = $urandom;
            ear      = $urandom % 2;
            kbcolumns = $urandom % 32;
            #100_000;
        end

        #500_000;

        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule