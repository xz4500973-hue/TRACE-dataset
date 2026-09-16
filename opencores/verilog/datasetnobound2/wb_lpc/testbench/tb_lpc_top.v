//////////////////////////////////////////////////////////////////////
////                                                              ////
////  tb_lpc_top.v                                                ////
////                                                              ////
////  This file is part of the Wishbone LPC Bridge project        ////
////  http://www.opencores.org/projects/wb_lpc/                   ////
////                                                              ////
////  Author:                                                     ////
////      - Howard M. Harte (hharte@opencores.org)                ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2008 Howard M. Harte                           ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns

`include "wb_lpc_defines.v"

// Define Module for Test Fixture
module wb_lpc_master_bench();

// LPC Host Inputs
    reg clk_i;
    reg nrst_i;
    reg [31:0] wbs_adr_i;
    reg [31:0] wbs_dat_i;
    reg [3:0] wbs_sel_i;
    reg [1:0] wbs_tga_i;
    reg wbs_we_i;
    reg wbs_stb_i;
    reg wbs_cyc_i;
    wire [3:0] lad_i;
    reg [2:0] dma_chan_i;
    reg dma_tc_i;

// LPC Host Outputs
    wire [31:0] wbs_dat_o;
    wire wbs_ack_o;
    wire wbs_err_o;
    wire lframe_o;
    wire [3:0] lad_o;
    wire lad_oe;

// Bidirs
    wire [3:0] lad_bus;

// LPC Peripheral Inputs
    wire [31:0] wbm_dat_i;
    wire wbm_ack_i;
    wire wbm_err_i;	 

// LPC Peripheral Outputs
    wire [31:0] wbm_adr_o;
    wire [31:0] wbm_dat_o;
    wire [3:0] wbm_sel_o;
    wire [1:0] wbm_tga_o;
    wire wbm_we_o;
    wire wbm_stb_o;
    wire wbm_cyc_o;
    wire [2:0] dma_chan_o;
    wire dma_tc_o;


    reg dma_req_i;

    reg [7:0]  regfile_ws;

task Reset;
begin
    nrst_i = 1; # 1000;
    nrst_i = 0; # 1000;
    nrst_i = 1; # 1000;
end
endtask


task wb_write;
    input reg [31:0] adr_i;
    input reg [3:0]  sel_i;
    input reg [31:0] dat_i;
    input reg expect_err;
    reg [7:0] wait_cnt;
    begin

    wbs_adr_i = adr_i;
    wbs_sel_i = sel_i;
    wbs_dat_i = dat_i;
    wbs_stb_i = 1'b1;
    wbs_cyc_i = 1'b1;
    wbs_we_i = 1'b1;

    wait_cnt = 0;
    
    while ((wbs_ack_o == 0) & (wait_cnt < 1000))
    begin
        wait_cnt = wait_cnt+1;
        # 100;
    end

    if(wait_cnt == 1000)
    begin
        $display($time, " Error, wb_w[%x/%x]: timeout waiting for ack", adr_i, dat_i); $stop(1);
    end
	 
	 if(expect_err != wbs_err_o)
	 begin
        $display($time, " Error: wb_w[%x/%x]: wb_err_o is %d, expected %d", adr_i, dat_i, wbs_err_o, expect_err); $stop(1);
    end
    wbs_stb_i = 1'b0;
    wbs_cyc_i = 1'b0;
    wbs_we_i = 1'b0;

    wait_cnt = 0;

    while ((wbs_ack_o == 1) & (wait_cnt < 100))
    begin
        wait_cnt = wait_cnt+1;
        # 100;
    end

    if(wait_cnt == 100)
    begin
        $display($time, " Error, wb_w[%x]: timeout waiting for ack to go away", adr_i); $stop(1);
    end

    end
endtask


task wb_read;
    input reg [31:0] adr_i;
    input reg [3:0]  sel_i;
    input reg [31:0] dat_i;
    input reg expect_err;
    reg [7:0] wait_cnt;
    begin

    wbs_adr_i = adr_i;
    wbs_sel_i = sel_i;   
    wbs_dat_i = 32'h0;
    wbs_stb_i = 1'b1;
    wbs_cyc_i = 1'b1;
    wbs_we_i = 1'b0;

    wait_cnt = 0;
    
    while ((wbs_ack_o == 0) & (wait_cnt < 1000))
    begin
        wait_cnt = wait_cnt+1;
        # 100;
    end

    if(wait_cnt == 1000)
    begin
        $display($time, " Error, wb_r[%x]: timeout waiting for ack", adr_i); $stop(1);
    end

    wbs_stb_i = 1'b0;
    wbs_cyc_i = 1'b0;

	 if(expect_err != wbs_err_o)
	 begin
        $display($time, " Error: wb_r[%x/%x]: wb_err_o is %d, expected %d", adr_i, dat_i, wbs_err_o, expect_err); $stop(1);
    end

    if(wbs_err_o == 0) begin
        if(dat_i != wbs_dat_o)
        begin
            $display($time, " Error, wb_r[%x]: expected %x, got %x", adr_i, dat_i, wbs_dat_o); $stop(1);
        end
    end

    wait_cnt = 0;

    while ((wbs_ack_o == 1) & (wait_cnt < 100))
    begin
        wait_cnt = wait_cnt+1;
        # 100;
    end

    if(wait_cnt == 100)
    begin
        $display($time, " Error, wb_r[%x]: timeout waiting for ack to go away", adr_i); $stop(1);
    end
end

endtask


   always begin
       #50 clk_i = 0;
       #50 clk_i = 1;
   end

    lpc_top u_top (
        .clk_i          (clk_i),
        .nrst_i         (nrst_i),
        .wbs_adr_i      (wbs_adr_i),
        .wbs_dat_i      (wbs_dat_i),
        .wbs_sel_i      (wbs_sel_i),
        .wbs_tga_i      (wbs_tga_i),
        .wbs_we_i       (wbs_we_i),
        .wbs_stb_i      (wbs_stb_i),
        .wbs_cyc_i      (wbs_cyc_i),
        .wbs_dat_o      (wbs_dat_o),
        .wbs_ack_o      (wbs_ack_o),
        .wbs_err_o      (wbs_err_o),
        .dma_chan_i     (dma_chan_i),
        .dma_tc_i       (dma_tc_i),
        .dma_req_i      (dma_req_i),
        .regfile_ws_i   (regfile_ws_i)
    );

// Instantiate the module

wire       ldrq_o;
wire [2:0] master_dma_chan_o;
wire       master_dma_req_o;

// Instantiate the module


wire [31:0] datareg0;
wire [31:0] datareg1;

// Instantiate the module


// Initialize Inputs
initial begin
    $dumpfile("wb_lpc_io.vcd");
    $dumpvars(0, wb_lpc_master_bench);
    // 初始化同原始...
    Reset();
    regfile_ws = 8'h0;
    wbs_tga_i = `WB_TGA_IO;
    repeat (50) begin
        wb_write(32'h00000000, `WB_SEL_BYTE, $random, 0);
        wb_read(32'h00000000, `WB_SEL_BYTE, 32'hXXXXXXXX, 0);
        #1000;
    end
    $finish;
end

endmodule // wb_lpc_master_tf
