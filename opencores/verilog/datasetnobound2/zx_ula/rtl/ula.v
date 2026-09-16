`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Dept. Architecture and Computing Technology. University of Seville
// Engineer:       Miguel Angel Rodriguez Jodar. rodriguj@atc.us.es
// 
// Create Date:    19:13:39 4-Apr-2012 
// Design Name:    ZX Spectrum
// Module Name:    ula 
// Description:    Refactored variant - merged always blocks, case-based logic
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
    // Internal registers
    // ====================================================================
    reg [2:0]  border_color = 3'b100;
    reg        clk7         = 0;
    reg [8:0]  hcnt         = 0;        // horizontal counter
    reg [8:0]  vcnt         = 0;        // vertical counter
    reg        hblank_n     = 1;
    reg        hsync_n      = 1;
    reg        vblank_n     = 1;
    reg        vsync_n      = 1;
    reg        int_n        = 1;
    reg        border_n     = 1;
    reg        viden_n      = 1;
    reg        datalatch_n  = 1;
    reg        attrlatch_n  = 1;
    reg        sload        = 0;
    reg        aolatch_n    = 1;
    
    reg [7:0]  bitmap_reg   = 0;
    reg [7:0]  shift_reg    = 0;
    reg [7:0]  attr_reg     = 0;
    reg [7:0]  attr_out     = 0;
    reg [4:0]  flash_cnt    = 0;
    
    reg        rR, rG, rB, rI;
    reg [13:0] va_reg       = 0;
    reg        vcs_reg      = 0;
    reg        voe_reg      = 0;
    reg        vwe_reg      = 0;
    reg [8:0]  v_latched    = 0;
    reg [8:0]  c_latched    = 0;
    
    reg        cpuclk_reg   = 0;
    reg        ioreq_t3      = 0;
    reg        mreq_t23      = 0;
    reg        mic_reg      = 0;
    reg        spk_reg      = 0;

    // ====================================================================
    // Pixel clock divider
    // ====================================================================
    always @(posedge clk14) begin
        clk7 <= ~clk7;
    end

    // ====================================================================
    // Horizontal & Vertical counters (merged)
    // ====================================================================
    always @(posedge clk7) begin
        if (hcnt == 9'd447) begin
            hcnt <= 9'd0;
            if (vcnt == 9'd311)
                vcnt <= 9'd0;
            else
                vcnt <= vcnt + 9'd1;
        end else begin
            hcnt <= hcnt + 9'd1;
        end
    end

    // ====================================================================
    // Merged negedge clk7 sequential logic block
    // Consolidating: HBlank, HSync, VBlank, VSync, INT, Border, VidEN,
    //                DataLatch, AttrLatch, SLoad, AOLatch, SRegister,
    //                AttrOut, VRAM latch, CPU contention, mic/spk
    // ====================================================================
    always @(negedge clk7) begin
        
        // --- HBlank ---
        if (hcnt == 9'd320)
            hblank_n <= 1'b0;
        else if (hcnt == 9'd416)
            hblank_n <= 1'b1;

        // --- HSync ---
        if (hcnt == 9'd344)
            hsync_n <= 1'b0;
        else if (hcnt == 9'd376)
            hsync_n <= 1'b1;

        // --- VBlank ---
        if (vcnt == 9'd248)
            vblank_n <= 1'b0;
        else if (vcnt == 9'd256)
            vblank_n <= 1'b1;

        // --- VSync ---
        if (vcnt == 9'd248)
            vsync_n <= 1'b0;
        else if (vcnt == 9'd252)
            vsync_n <= 1'b1;

        // --- INT ---
        if (vcnt == 9'd248 && hcnt == 9'd0)
            int_n <= 1'b0;
        else if (vcnt == 9'd248 && hcnt == 9'd32)
            int_n <= 1'b1;

        // --- Border ---
        if ((vcnt[7] & vcnt[6]) | vcnt[8] | hcnt[8])
            border_n <= 1'b0;
        else
            border_n <= 1'b1;

        // --- VidEN (delayed Border by 8 clocks) ---
        if (hcnt[3])
            viden_n <= ~border_n;

        // --- DataLatch ---
        datalatch_n <= ~(hcnt[0] & ~hcnt[1] & border_n & hcnt[3]);

        // --- AttrLatch ---
        attrlatch_n <= ~(hcnt[0] & hcnt[1] & border_n & hcnt[3]);

        // --- SLoad ---
        sload <= ~hcnt[0] & ~hcnt[1] & hcnt[2] & ~viden_n;

        // --- AOLatch ---
        aolatch_n <= ~(hcnt[0] & ~hcnt[1] & hcnt[2]);

        // --- Shift Register ---
        if (sload)
            shift_reg <= bitmap_reg;
        else
            shift_reg <= {shift_reg[6:0], 1'b0};

        // --- Attribute Output ---
        if (~viden_n)
            attr_out <= attr_reg;
        else
            attr_out <= {2'b00, border_color, border_color};

        // --- VRAM latch: capture V and C at cycles 7 and 11 ---
        if (border_n && (hcnt[3:0] == 4'b0111 || hcnt[3:0] == 4'b1011)) begin
            c_latched <= hcnt;
            v_latched <= vcnt;
        end

        // --- CPU Clock (contention-based) ---
        if (cpuclk_reg && !clk_contention(1'b0))
            cpuclk_reg <= 1'b0;
        else
            cpuclk_reg <= 1'b1;

        // --- Mic/Spk/Border write ---
        if (!iorq_n && !a[0] && !wr_n)
            {spk_reg, mic_reg, border_color} <= din[5:0];
    end

    // ====================================================================
    // Clock contention helper
    // ====================================================================
    function clk_contention;
        input dummy;
        reg n1, n2;
        begin
            n1 = (~(a[14] | ~(a[0] | iorq_n))) |
                 (~(~a[15] | ~(a[0] | iorq_n))) |
                 (~(hcnt[2] | hcnt[3])) |
                 (~border_n | ~ioreq_t3 | ~cpuclk_reg | ~mreq_t23);
            n2 = (~(hcnt[2] | hcnt[3])) |
                 ~border_n |
                 ~cpuclk_reg |
                 (a[0] | iorq_n) |
                 ~ioreq_t3;
            clk_contention = ~n1 | ~n2;
        end
    endfunction

    // ====================================================================
    // Posedge CPUClk: latch ioreq/mreq delayed versions
    // ====================================================================
    always @(posedge cpuclk_reg) begin
        ioreq_t3 <= (a[0] | iorq_n);
        mreq_t23 <= mreq_n;
    end

    // ====================================================================
    // Bitmap & Attribute capture (negedge latch signals)
    // ====================================================================
    always @(negedge datalatch_n) begin
        bitmap_reg <= vramdout;
    end

    always @(negedge attrlatch_n) begin
        attr_reg <= vramdout;
    end

    // ====================================================================
    // Flash counter (negedge vsync)
    // ====================================================================
    always @(negedge vsync_n) begin
        flash_cnt <= flash_cnt + 5'd1;
    end

    // ====================================================================
    // Pixel generation
    // ====================================================================
    wire pixel = shift_reg[7] ^ (attr_out[7] & flash_cnt[4]);

    // ====================================================================
    // RGB generation (using always @*)
    // ====================================================================
    assign r = rR;
    assign g = rG;
    assign b = rB;
    assign i = rI;
    
    always @(*) begin
        if (hblank_n && vblank_n) begin
            if (pixel) begin
                rI = attr_out[6];
                rR = attr_out[0];
                rG = attr_out[1];
                rB = attr_out[2];
            end else begin
                rI = attr_out[6];
                rR = attr_out[3];
                rG = attr_out[4];
                rB = attr_out[5];
            end
        end else begin
            {rI, rG, rR, rB} = 4'b0000;
        end
    end

    // ====================================================================
    // CSync generation
    // ====================================================================
    assign csync = hsync_n & vsync_n;

    // ====================================================================
    // VRAM address and control (restructured as case-based priority logic)
    // ====================================================================
    assign va     = va_reg;
    assign vramcs = vcs_reg;
    assign vramoe = voe_reg;
    assign vramwe = vwe_reg;

    always @(*) begin
        if (border_n) begin
            case (hcnt[3:0])
                4'b1000, 4'b1001, 4'b1100, 4'b1101: begin
                    // Display address
                    va_reg  = {1'b0, v_latched[7:6], v_latched[2:0], v_latched[5:3], c_latched[7:3]};
                    vcs_reg = 1'b1;
                    voe_reg = ~hcnt[0];
                    vwe_reg = 1'b0;
                end
                4'b1010, 4'b1011, 4'b1110, 4'b1111: begin
                    // Attribute address
                    va_reg  = {4'b0110, v_latched[7:3], c_latched[7:3]};
                    vcs_reg = 1'b1;
                    voe_reg = ~hcnt[0];
                    vwe_reg = 1'b0;
                end
                4'b0000: begin
                    // CPU access slot
                    va_reg  = a[13:0];
                    vcs_reg = 1'b0;
                    voe_reg = 1'b0;
                    vwe_reg = 1'b0;
                end
                default: begin
                    // CPU access
                    va_reg  = a[13:0];
                    vcs_reg = ~a[15] & a[14] & ~mreq_n;
                    voe_reg = ~rd_n;
                    vwe_reg = ~wr_n;
                end
            endcase
        end else begin
            // Border area - CPU access
            va_reg  = a[13:0];
            vcs_reg = ~a[15] & a[14] & ~mreq_n;
            voe_reg = ~rd_n;
            vwe_reg = ~wr_n;
        end
    end

    // ====================================================================
    // ULA-CPU interface
    // ====================================================================
    assign clkcpu  = cpuclk_reg;
    assign msk_int_n = int_n;
    
    assign dout = (~a[15] & a[14] & ~mreq_n) ? vramdout :
                  (~iorq_n & ~a[0])          ? {1'b1, ear, 1'b1, kbcolumns} :
                  (border_n)                  ? attr_reg :
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
    
    assign mic = mic_reg;
    assign spk = spk_reg;

endmodule