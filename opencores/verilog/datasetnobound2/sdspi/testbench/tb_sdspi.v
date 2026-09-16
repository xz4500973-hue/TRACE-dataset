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
        begin @(posedge clk); {wb_cyc,wb_stb,wb_we} = 3'b111; wb_addr <= addr; wb_wdata <= data;
        while (!wb_ack) @(posedge clk); {wb_cyc,wb_stb,wb_we} = 3'b000; end
    endtask
    task wb_read;
        input [1:0] addr; output [31:0] data;
        begin @(posedge clk); {wb_cyc,wb_stb,wb_we} = 3'b110; wb_addr <= addr;
        while (!wb_ack) @(posedge clk); data = wb_rdata; {wb_cyc,wb_stb,wb_we} = 3'b000; end
    endtask

    reg [31:0] rdata; integer i;
    initial begin
        $dumpfile("sdspi.vcd"); $dumpvars(0, tb_sdspi);
        {wb_cyc,wb_stb,wb_we} = 0; wb_addr=0; wb_wdata=0; miso_reg=1;
        #100;
        // Variant 1: basic CMD0, CMD8, CMD55+ACMD41 sequence with random data
        wb_write(0, 32'h0);  // CMD register = 0 (CMD0)
        wb_write(1, 32'h0);  // data register = 0
        wb_write(0, 32'h1);  // start
        #50000;
        repeat (5) begin
            wb_write(0, {$random % 48, 8'h0}); // random R1/R2 commands
            #20000;
        end
        #5000;
        $display("Sim v1 done at %0t", $time);
        $finish;
    end
endmodule