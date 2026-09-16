`timescale 1ns / 1ps

module tb_dragonball_wbmaster;

    parameter adr_hi = 9;

    reg           clk;
    reg           reset_n;
    reg  [adr_hi:1] a;
    reg           cs_n;
    wire [15:0]   d;
    reg           lwe_n, uwe_n, oe_n;
    wire          dtack_n, berr;

    wire          clk_o, rst_o, cyc_o, stb_o;
    wire [adr_hi:1] adr_o;
    wire [1:0]    sel_o;
    wire          we_o;
    wire [15:0]   dat_o;
    reg  [15:0]   wb_dat_i;
    reg           ack_i, err_i;

    reg [15:0]    d_drive;
    reg           d_oe;
    assign d = d_oe ? d_drive : 16'bz;

    dragonball_wbmaster #(.adr_hi(adr_hi)) uut (
        .clk(clk), .reset_n(reset_n), .a(a), .cs_n(cs_n), .d(d),
        .lwe_n(lwe_n), .uwe_n(uwe_n), .oe_n(oe_n), .dtack_n(dtack_n), .berr(berr),
        .clk_o(clk_o), .rst_o(rst_o), .cyc_o(cyc_o), .stb_o(stb_o),
        .adr_o(adr_o), .sel_o(sel_o), .we_o(we_o), .dat_o(dat_o),
        .dat_i(wb_dat_i), .ack_i(ack_i), .err_i(err_i)
    );

    initial clk = 0;
    always #10 clk = ~clk;

    // Wishbone slave model
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ack_i <= 1'b0; wb_dat_i <= 16'h0;
        end else begin
            if (cyc_o && stb_o && !ack_i) begin
                ack_i <= 1'b1;
                if (!we_o) wb_dat_i <= $random % 65536;
            end else ack_i <= 1'b0;
        end
    end
    initial err_i = 1'b0;

    task m68k_write;
        input [adr_hi:1] addr; input [15:0] data; input uwe, lwe;
        begin
            @(posedge clk);
            a <= addr; cs_n <= 1'b0; oe_n <= 1'b1;
            lwe_n <= ~lwe; uwe_n <= ~uwe; d_oe <= 1'b1; d_drive <= data;
            @(negedge dtack_n); @(posedge clk);
            cs_n <= 1'b1; lwe_n <= 1'b1; uwe_n <= 1'b1; d_oe <= 1'b0;
            @(posedge clk);
        end
    endtask

    task m68k_read;
        input [adr_hi:1] addr; output [15:0] data;
        begin
            @(posedge clk);
            a <= addr; cs_n <= 1'b0; oe_n <= 1'b0;
            lwe_n <= 1'b1; uwe_n <= 1'b1; d_oe <= 1'b0;
            @(negedge dtack_n);
            data = d; @(posedge clk);
            cs_n <= 1'b1; oe_n <= 1'b1; @(posedge clk);
        end
    endtask

    integer i; reg [15:0] rd_data, addr;

    initial begin
        $dumpfile("dragonball_wbmaster.vcd");
        $dumpvars(0, tb_dragonball_wbmaster);

        clk = 0; reset_n = 1'b0; cs_n = 1'b1; oe_n = 1'b1;
        lwe_n = 1'b1; uwe_n = 1'b1; d_oe = 1'b0; a = 0;
        #100; reset_n = 1'b1; #100;

        // Different pattern: byte writes only (alternating high/low)
        for (i = 0; i < 80; i = i + 1) begin
            addr = $random % (1 << adr_hi);
            m68k_write(addr, $random % 65536, (i%2), ~(i%2));
        end

        // Reads with increased count
        for (i = 0; i < 80; i = i + 1) begin
            addr = $random % (1 << adr_hi);
            m68k_read(addr, rd_data);
        end

        #1000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule