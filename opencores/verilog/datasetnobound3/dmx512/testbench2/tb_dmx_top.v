/*
 * Milkymist VJ SoC – DMX Testbench (Top-level wrapper)
 * Copyright (C) 2007, 2008, 2009, 2010 Sebastien Bourdeauducq
 * Modified to use dmx_top for synthesis + simulation
 */

module tb_dmx_top;

reg         sys_clk;
reg         sys_rst;
reg  [13:0] csr_a;
reg         csr_we;
reg  [31:0] csr_di;
wire [31:0] csr_doo;
wire        dmx_signal;

// ------------------------------------------------------------------
// Instantiate the top module (TX + RX loopback)
// ------------------------------------------------------------------
dmx_top u_top (
    .sys_clk    (sys_clk),
    .sys_rst    (sys_rst),
    .csr_a      (csr_a),
    .csr_we     (csr_we),
    .csr_di     (csr_di),
    .csr_doo     (csr_doo),
    .dmx_signal (dmx_signal)
);

// ------------------------------------------------------------------
// 83.333 MHz system clock
// ------------------------------------------------------------------
initial sys_clk = 1'b0;
always #6 sys_clk = ~sys_clk;   // 6 ns half period → 83.333 MHz

// ------------------------------------------------------------------
// Helper tasks
// ------------------------------------------------------------------
task waitclock;
begin
    @(posedge sys_clk);
    #1;   // avoid race conditions (same as original)
end
endtask

task csrwrite;
input [31:0] address;
input [31:0] data;
begin
    csr_a = address[16:2];   // convert byte address to word address
    csr_di = data;
    csr_we = 1'b1;
    waitclock;
    $display("CSR write: %x=%x", address, data);
    csr_we = 1'b0;
end
endtask

task csrread;
input [31:0] address;
begin
    csr_a = address[16:2];
    waitclock;
    $display("CSR read : %x=%x", address, csr_doo);
end
endtask

// ------------------------------------------------------------------
// Main test sequence (identical to original, but uses dmx_top)
// ------------------------------------------------------------------
initial begin
    $dumpfile("dmx_top.vcd");
    $dumpvars(0, u_top);          // dump everything inside the top module

    // Reset
    sys_rst = 1'b1;
    waitclock;
    sys_rst = 1'b0;
    waitclock;

    // Test TX: write to and read from address 0x0000
    csrread(32'h0000);
    csrwrite(32'h0000, 32'h23); csrwrite(32'h0000, 32'h67); csrwrite(32'h0000, 32'hab);
    csrread(32'h0000);

    #1000000;

    // Test RX: read registers at 0x1000 and 0x1004
    csrread(32'h1000);
    csrread(32'h1004);

    #40000000;

    $finish;
end

endmodule