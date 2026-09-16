`timescale 1ns / 1ps
`default_nettype wire

module tb_sdspi;
    reg clk;
    reg  wb_cyc, wb_stb, wb_we;
    reg [1:0] wb_addr;
    reg [31:0] wb_wdata;
    wire [31:0] wb_rdata;
    wire wb_ack, wb_stall;
    wire cs_n, sck, mosi;
    reg  miso_reg;
    wire miso = (cs_n) ? 1'bz : miso_reg;
    wire intr;
    wire i_bus_grant = 1'b1;
    wire [31:0] debug;

    sdspi #(.LGFIFOLN(7)) uut (
        .i_clk(clk), .i_wb_cyc(wb_cyc), .i_wb_stb(wb_stb), .i_wb_we(wb_we),
        .i_wb_addr(wb_addr), .i_wb_data(wb_wdata), .o_wb_ack(wb_ack),
        .o_wb_stall(wb_stall), .o_wb_data(wb_rdata), .o_cs_n(cs_n),
        .o_sck(sck), .o_mosi(mosi), .i_miso(miso), .o_int(intr),
        .i_bus_grant(i_bus_grant), .o_debug(debug)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    task wb_write;
        input [1:0] addr; input [31:0] data;
        begin @(posedge clk); {wb_cyc,wb_stb,wb_we}=3'b111; wb_addr<=addr; wb_wdata<=data;
        while(!wb_ack)@(posedge clk); {wb_cyc,wb_stb,wb_we}=3'b000; end
    endtask

    initial begin
        $dumpfile("sdspi.vcd"); $dumpvars(0, tb_sdspi);
        {wb_cyc,wb_stb,wb_we}=0; wb_addr=0; wb_wdata=0; miso_reg=1;
        #100;
        // Variant 3: register read/write test + short command
        wb_write(0, 32'h40);  // CMD register setup
        wb_write(1, 32'hA5A5); // data register test pattern
        #10000;
        wb_write(0, 32'h41);  // different CMD
        #10000;
        wb_write(0, 32'h42);
        #50000;
        $display("Sim v3 done at %0t", $time);
        $finish;
    end
endmodule