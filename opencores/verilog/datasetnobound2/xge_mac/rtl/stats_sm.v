//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "wishbone.v"                                      ////
////                                                              ////
////  This file is part of the "10GE MAC" project                 ////
////  http://www.opencores.org/cores/xge_mac/                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - A. Tanguay (antanguay@opencores.org)                  ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2008 AUTHORS. All rights reserved.             ////
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


`include "defines.v"

(* keep_hierarchy = "yes" *) module stats_sm(/*AUTOARG*/
  // Outputs
  stats_tx_octets, stats_tx_pkts, stats_rx_octets, stats_rx_pkts,
  // Inputs
  wb_clk_i, wb_rst_i, txsfifo_rdata, txsfifo_rempty, rxsfifo_rdata,
  rxsfifo_rempty, clear_stats_tx_octets, clear_stats_tx_pkts,
  clear_stats_rx_octets, clear_stats_rx_pkts
  );


input         wb_clk_i;
input         wb_rst_i;

input  [13:0] txsfifo_rdata;
input         txsfifo_rempty;

input  [13:0] rxsfifo_rdata;
input         rxsfifo_rempty;

output [31:0] stats_tx_octets;
output [31:0] stats_tx_pkts;

output [31:0] stats_rx_octets;
output [31:0] stats_rx_pkts;

input         clear_stats_tx_octets;
input         clear_stats_tx_pkts;
input         clear_stats_rx_octets;
input         clear_stats_rx_pkts;

/*AUTOREG*/
// Beginning of automatic regs (for this module's undeclared outputs)
reg [31:0]              stats_rx_octets;
reg [31:0]              stats_rx_pkts;
reg [31:0]              stats_tx_octets;
reg [31:0]              stats_tx_pkts;
// End of automatics


/*AUTOWIRE*/

    reg           txsfifo_rempty_d1;
    reg           rxsfifo_rempty_d1;

    // Variant: merged single-process style (combination of seq+comb)
    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i == 1'b1) begin
            txsfifo_rempty_d1 <= 1'b1;
            rxsfifo_rempty_d1 <= 1'b1;
            stats_tx_octets    <= 32'b0;
            stats_tx_pkts      <= 32'b0;
            stats_rx_octets    <= 32'b0;
            stats_rx_pkts      <= 32'b0;
        end else begin
            txsfifo_rempty_d1 <= txsfifo_rempty;
            rxsfifo_rempty_d1 <= rxsfifo_rempty;
            // Pre-compute cleared values using ternaries
            if (!clear_stats_tx_octets)
                stats_tx_octets <= (!txsfifo_rempty_d1) ? (stats_tx_octets + {18'b0, txsfifo_rdata}) : stats_tx_octets;
            else
                stats_tx_octets <= (!txsfifo_rempty_d1) ? {18'b0, txsfifo_rdata} : 32'b0;
            if (!clear_stats_tx_pkts)
                stats_tx_pkts <= (!txsfifo_rempty_d1) ? (stats_tx_pkts + 32'b1) : stats_tx_pkts;
            else
                stats_tx_pkts <= (!txsfifo_rempty_d1) ? 32'b1 : 32'b0;
            if (!clear_stats_rx_octets)
                stats_rx_octets <= (!rxsfifo_rempty_d1) ? (stats_rx_octets + {18'b0, rxsfifo_rdata}) : stats_rx_octets;
            else
                stats_rx_octets <= (!rxsfifo_rempty_d1) ? {18'b0, rxsfifo_rdata} : 32'b0;
            if (!clear_stats_rx_pkts)
                stats_rx_pkts <= (!rxsfifo_rempty_d1) ? (stats_rx_pkts + 32'b1) : stats_rx_pkts;
            else
                stats_rx_pkts <= (!rxsfifo_rempty_d1) ? 32'b1 : 32'b0;
        end
    end

endmodule
