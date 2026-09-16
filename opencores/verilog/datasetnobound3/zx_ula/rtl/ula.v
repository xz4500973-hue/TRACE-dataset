`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Dept. Architecture and Computing Technology. University of Seville
// Engineer:       Miguel Angel Rodriguez Jodar. rodriguj@atc.us.es
// 
// Create Date:    19:13:39 4-Apr-2012 
// Design Name:    ZX Spectrum
// Module Name:    ula 
// Description:    Refactored variant 2 - two-process style, separated comb/seq
//
// GPL License policies apply to the contents of this file.
//////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module ula(
    input clk14,			// 14MHz master clock
    // CPU interfacing
    input [15:0] a,		// Address bus from CPU
    input [7:0] din,		// Input data bus from CPU
    output [7:0] dout,	// Output data bus to CPU
    input mreq_n,			// MREQ from CPU
    input iorq_n,			// IORQ from CPU
    input rd_n,			// RD from CPU
    input wr_n,			// WR from CPU
    input rfsh_n,			// RFSH from CPU
    output clkcpu,		// CLK to CPU
    output msk_int_n,	// Vertical retrace interrupt, to CPU
    // VRAM interfacing
    output [13:0] va,	// Address bus to VRAM (16K)
    input [7:0] vramdout, // Data from VRAM to ULA/CPU
    output [7:0] vramdin, // Data from CPU to VRAM
    output vramoe,		 // 
    output vramcs,		 // Control signals for VRAM
    output vramwe,		 //
    // ULA I/O
    input ear,				//
    output mic,			// I/O ports
    output spk,            //
    output [7:0] kbrows,   // Keyboard rows
    input [4:0] kbcolumns, //  Keyboard columns
    // Video output
    output r,				//
    output g,				// RGB TTL signal
    output b,				// with separate bright
    output i,				// and composite sync
    output csync			//		 
);

    // ====================================================================
    // Two-process style: registers declared separately with _q suffix
    // ====================================================================
    reg        clk7_q;
    reg [8:0]  hc_q, vc_q;
    reg        hblank_q, hsync_q, vblank_q, vsync_q;
    reg        int_q;
    reg        bdr_n_q;
    reg        viden_q;
    reg        dlatch_q, alatch_q;
    reg        sl_q;
    reg        aol_q;
    reg [2:0]  bdr_col_q;
    
    reg [7:0]  bmp_q, sreg_q, attr_q, attro_q;
    reg [4:0]  flash_q;
    
    reg        rr_q, rg_q, rb_q, ri_q;
    
    reg [13:0] va_q;
    reg        vcs_q, voe_q, vwe_q;
    reg [8:0]  vlat_q, clat_q;
    
    reg        cpuclk_q;
    reg        iot3_q, mrt23_q;
    reg        mic_q, spk_q;

    // ====================================================================
    // Combinational next-state logic wires
    // ====================================================================
    wire       clk7_nxt   = ~clk7_q;
    
    wire       hc_max     = (hc_q == 9'd447);
    wire [8:0] hc_nxt     = hc_max ? 9'd0 : (hc_q + 9'd1);
    wire       vc_max     = (vc_q == 9'd311);
    wire [8:0] vc_nxt     = (hc_max) ? (vc_max ? 9'd0 : (vc_q + 9'd1)) : vc_q;

    // Video timing next-state
    wire hblank_nxt = (hc_q == 9'd320) ? 1'b0 : ((hc_q == 9'd416) ? 1'b1 : hblank_q);
    wire hsync_nxt  = (hc_q == 9'd344) ? 1'b0 : ((hc_q == 9'd376) ? 1'b1 : hsync_q);
    wire vblank_nxt = (vc_q == 9'd248) ? 1'b0 : ((vc_q == 9'd256) ? 1'b1 : vblank_q);
    wire vsync_nxt  = (vc_q == 9'd248) ? 1'b0 : ((vc_q == 9'd252) ? 1'b1 : vsync_q);
    
    wire int_nxt = (vc_q == 9'd248 && hc_q == 9'd0)  ? 1'b0 :
                   (vc_q == 9'd248 && hc_q == 9'd32) ? 1'b1 : int_q;
    
    wire bdr_n_nxt      = ((vc_q[7] & vc_q[6]) | vc_q[8] | hc_q[8]) ? 1'b0 : 1'b1;
    wire viden_nxt      = hc_q[3] ? ~bdr_n_nxt : viden_q;
    
    wire dlatch_nxt     = ~(hc_q[0] & ~hc_q[1] & bdr_n_q & hc_q[3]);
    wire alatch_nxt     = ~(hc_q[0] & hc_q[1] & bdr_n_q & hc_q[3]);
    wire sl_nxt         = ~hc_q[0] & ~hc_q[1] & hc_q[2] & ~viden_q;
    wire aol_nxt        = ~(hc_q[0] & ~hc_q[1] & hc_q[2]);
    
    // Shift register next
    wire [7:0] sreg_nxt = sl_q ? bmp_q : {sreg_q[6:0], 1'b0};
    
    // Attribute output next
    wire [7:0] attro_nxt = (~viden_q) ? attr_q : {2'b00, bdr_col_q, bdr_col_q};
    
    // VRAM latch condition (cycles 7 and 11)
    wire vram_latch_en   = bdr_n_q && (hc_q[3:0] == 4'b0111 || hc_q[3:0] == 4'b1011);
    wire [8:0] clat_nxt  = vram_latch_en ? hc_q : clat_q;
    wire [8:0] vlat_nxt  = vram_latch_en ? vc_q : vlat_q;

    // CPU clock contention
    wire ct_nor1 = (~(a[14] | ~(a[0] | iorq_n))) |
                   (~(~a[15] | ~(a[0] | iorq_n))) |
                   (~(hc_q[2] | hc_q[3])) |
                   (~bdr_n_q | ~iot3_q | ~cpuclk_q | ~mrt23_q);
    wire ct_nor2 = (~(hc_q[2] | hc_q[3])) |
                   ~bdr_n_q |
                   ~cpuclk_q |
                   (a[0] | iorq_n) |
                   ~iot3_q;
    wire clk_ct  = ~ct_nor1 | ~ct_nor2;
    wire cpuclk_nxt = (cpuclk_q && !clk_ct) ? 1'b0 : 1'b1;

    // IO write decoding
    wire io_wr      = !iorq_n && !a[0] && !wr_n;
    wire [2:0] bdr_col_nxt = io_wr ? din[2:0] : bdr_col_q;
    wire spk_nxt    = io_wr ? din[5] : spk_q;
    wire mic_nxt    = io_wr ? din[4] : mic_q;

    // IORQ/MREQ delayed latches
    wire iot3_nxt  = (a[0] | iorq_n);
    wire mrt23_nxt = mreq_n;

    // Flash counter
    wire [4:0] flash_nxt = flash_q + 5'd1;

    // Pixel
    wire pixel = sreg_q[7] ^ (attro_q[7] & flash_q[4]);

    // RGB
    wire [3:0] rgb_nxt = (hblank_q && vblank_q) ?
                          (pixel ? {attro_q[6], attro_q[2], attro_q[1], attro_q[0]} 
                                 : {attro_q[6], attro_q[5], attro_q[4], attro_q[3]})
                          : 4'b0000;

    // VRAM address combinational (using ternary chain instead of case)
    wire [3:0] hc_lo = hc_q[3:0];
    wire is_disp_addr = bdr_n_q && (hc_lo == 4'b1000 || hc_lo == 4'b1001 || hc_lo == 4'b1100 || hc_lo == 4'b1101);
    wire is_attr_addr = bdr_n_q && (hc_lo == 4'b1010 || hc_lo == 4'b1011 || hc_lo == 4'b1110 || hc_lo == 4'b1111);
    wire is_cpu_slot   = bdr_n_q && (hc_lo == 4'b0000);
    wire [13:0] disp_va = {1'b0, vlat_q[7:6], vlat_q[2:0], vlat_q[5:3], clat_q[7:3]};
    wire [13:0] attr_va = {4'b0110, vlat_q[7:3], clat_q[7:3]};
    wire cpu_vcs = ~a[15] & a[14] & ~mreq_n;

    wire [13:0] va_nxt  = is_disp_addr ? disp_va :
                           is_attr_addr ? attr_va :
                           a[13:0];
    wire        vcs_nxt = is_disp_addr ? 1'b1 :
                           is_attr_addr ? 1'b1 :
                           is_cpu_slot   ? 1'b0 :
                           cpu_vcs;
    wire        voe_nxt = is_disp_addr ? ~hc_q[0] :
                           is_attr_addr ? ~hc_q[0] :
                           is_cpu_slot   ? 1'b0 :
                           ~rd_n;
    wire        vwe_nxt = is_disp_addr ? 1'b0 :
                           is_attr_addr ? 1'b0 :
                           is_cpu_slot   ? 1'b0 :
                           ~wr_n;

    // ====================================================================
    // Sequential logic: single massive clocked process (posedge clk14 + posedge clk7)
    // ====================================================================
    always @(posedge clk14) begin
        clk7_q <= clk7_nxt;
    end

    always @(posedge clk7_q) begin
        hc_q  <= hc_nxt;
        vc_q  <= vc_nxt;
    end

    always @(negedge clk7_q) begin
        // Video timing
        hblank_q  <= hblank_nxt;
        hsync_q   <= hsync_nxt;
        vblank_q  <= vblank_nxt;
        vsync_q   <= vsync_nxt;
        int_q     <= int_nxt;
        bdr_n_q   <= bdr_n_nxt;
        viden_q   <= viden_nxt;
        // Latches
        dlatch_q  <= dlatch_nxt;
        alatch_q  <= alatch_nxt;
        sl_q      <= sl_nxt;
        aol_q     <= aol_nxt;
        // Shift register
        sreg_q    <= sreg_nxt;
        // Attribute output
        attro_q   <= attro_nxt;
        // VRAM latch
        clat_q    <= clat_nxt;
        vlat_q    <= vlat_nxt;
        // CPU clock
        cpuclk_q  <= cpuclk_nxt;
        // Border / spk / mic
        bdr_col_q <= bdr_col_nxt;
        spk_q     <= spk_nxt;
        mic_q     <= mic_nxt;
    end

    always @(posedge cpuclk_q) begin
        iot3_q  <= iot3_nxt;
        mrt23_q <= mrt23_nxt;
    end

    // Bitmap & attribute capture on falling edge of latch signals
    always @(negedge dlatch_q) begin
        bmp_q  <= vramdout;
    end
    always @(negedge alatch_q) begin
        attr_q <= vramdout;
    end

    // Flash timer on negedge vsync
    always @(negedge vsync_q) begin
        flash_q <= flash_nxt;
    end

    // RGB output registers (updated each cycle by the combinational logic,
    // but here we register them to change timing profile)
    always @(negedge clk7_q) begin
        {ri_q, rg_q, rb_q, rr_q} <= rgb_nxt;
    end

    // VRAM control outputs
    always @(negedge clk7_q) begin
        va_q  <= va_nxt;
        vcs_q <= vcs_nxt;
        voe_q <= voe_nxt;
        vwe_q <= vwe_nxt;
    end

    // ====================================================================
    // Output assignments
    // ====================================================================
    assign clkcpu   = cpuclk_q;
    assign msk_int_n = int_q;
    assign csync    = hsync_q & vsync_q;

    assign r = rr_q;
    assign g = rg_q;
    assign b = rb_q;
    assign i = ri_q;

    assign va     = va_q;
    assign vramcs = vcs_q;
    assign vramoe = voe_q;
    assign vramwe = vwe_q;

    assign dout = (~a[15] & a[14] & ~mreq_n) ? vramdout :
                  (~iorq_n & ~a[0])          ? {1'b1, ear, 1'b1, kbcolumns} :
                  (bdr_n_q)                   ? attr_q :
                                                8'hFF;

    assign vramdin = din;

    assign kbrows = {a[11] ? 1'bz : 1'b0,
                     a[10] ? 1'bz : 1'b0,
                     a[9]  ? 1'bz : 1'b0,
                     a[12] ? 1'bz : 1'b0,
                     a[13] ? 1'bz : 1'b0,
                     a[8]  ? 1'bz : 1'b0,
                     a[14] ? 1'bz : 1'b0,
                     a[15] ? 1'bz : 1'b0};

    assign mic = mic_q;
    assign spk = spk_q;

endmodule