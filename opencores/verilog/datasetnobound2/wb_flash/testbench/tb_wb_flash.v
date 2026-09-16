`timescale 1ns / 1ps

module tb_wb_flash;
    parameter aw=19; parameter dw=32; parameter ws=4'hf;

    reg clk_i, nrst_i;
    reg [aw-1:0] wb_adr_i; reg [dw-1:0] wb_dat_i;
    reg [3:0] wb_sel_i; reg wb_we_i,wb_stb_i,wb_cyc_i;
    wire [dw-1:0] wb_dat_o; wire wb_ack_o;
    wire [18:0] flash_adr_o; wire [7:0] flash_dat_o;
    reg [7:0] flash_dat_i; wire flash_oe,flash_ce,flash_we;

    wb_flash #(.aw(aw),.dw(dw),.ws(ws)) uut(.clk_i(clk_i),.nrst_i(nrst_i),.wb_adr_i(wb_adr_i),.wb_dat_o(wb_dat_o),.wb_dat_i(wb_dat_i),.wb_sel_i(wb_sel_i),.wb_we_i(wb_we_i),.wb_stb_i(wb_stb_i),.wb_cyc_i(wb_cyc_i),.wb_ack_o(wb_ack_o),.flash_adr_o(flash_adr_o),.flash_dat_o(flash_dat_o),.flash_dat_i(flash_dat_i),.flash_oe(flash_oe),.flash_ce(flash_ce),.flash_we(flash_we));

    initial clk_i=0; always #5 clk_i=~clk_i;

    task wb_write; input [aw-1:0] addr; input [31:0] data; input [3:0] sel;
      begin @(posedge clk_i); wb_adr_i<=addr;wb_dat_i<=data;wb_sel_i<=sel;wb_we_i<=1;wb_cyc_i<=1;wb_stb_i<=1;
            @(posedge clk_i); while(!wb_ack_o) @(posedge clk_i); wb_cyc_i<=0;wb_stb_i<=0;wb_we_i<=0; end endtask

    task wb_read; input [aw-1:0] addr; input [3:0] sel; output [31:0] data;
      begin @(posedge clk_i); wb_adr_i<=addr;wb_sel_i<=sel;wb_we_i<=0;wb_cyc_i<=1;wb_stb_i<=1;
            @(posedge clk_i); while(!wb_ack_o) @(posedge clk_i); data=wb_dat_o; wb_cyc_i<=0;wb_stb_i<=0; end endtask

    reg [31:0] rd; integer i; reg [7:0] flash_mem [0:2**aw-1];

    initial begin
        $dumpfile("wb_flash.vcd"); $dumpvars(0,tb_wb_flash);
        nrst_i=0; wb_adr_i=0;wb_dat_i=0;wb_sel_i=0;wb_we_i=0;wb_cyc_i=0;wb_stb_i=0; flash_dat_i=8'hFF;
        for(i=0;i<1024;i=i+1) flash_mem[i]=i%256;
        #100; nrst_i=1; #100;

        // Different pattern: burst byte writes
        for(i=0;i<16;i=i+1) wb_write(i, 32'hAB+i, 4'b0001);
        for(i=0;i<16;i=i+1) wb_write(i+16, 32'hCD+i, 4'b0010);
        for(i=0;i<16;i=i+1) wb_write(i+32, 32'hEF+i, 4'b0100);

        // Readback
        for(i=0;i<16;i=i+1) begin wb_read(i, 4'b1111, rd); end

        // Word writes
        wb_write(19'h100, 32'hCAFEBABE, 4'b1111);
        wb_write(19'h104, 32'hDEADBEEF, 4'b1111);
        wb_read(19'h100, 4'b1111, rd);
        wb_read(19'h104, 4'b1111, rd);

        #1000; $display("Done at %0t",$time); $finish;
    end

    always @(posedge clk_i) begin
        if(!flash_ce&&!flash_oe) flash_dat_i<=flash_mem[flash_adr_o];
        else flash_dat_i<=8'hFF;
    end

endmodule