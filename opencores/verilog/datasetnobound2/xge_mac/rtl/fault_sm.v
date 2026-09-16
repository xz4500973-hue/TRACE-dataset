//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "fault_sm.v"                                      ////
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

(* keep_hierarchy = "yes" *) module fault_sm(/*AUTOARG*/
  // Outputs
  status_local_fault_crx, status_remote_fault_crx,
  // Inputs
  clk_xgmii_rx, reset_xgmii_rx_n, local_fault_msg_det,
  remote_fault_msg_det
  );

input         clk_xgmii_rx;
input         reset_xgmii_rx_n;
   
input  [1:0]  local_fault_msg_det;
input  [1:0]  remote_fault_msg_det;

output        status_local_fault_crx;
output        status_remote_fault_crx;

/*AUTOREG*/
// Beginning of automatic regs (for this module's undeclared outputs)
reg                     status_local_fault_crx;
reg                     status_remote_fault_crx;
// End of automatics

reg    [1:0]  curr_state;

reg    [7:0]  col_cnt;
reg    [1:0]  fault_sequence;
reg    [1:0]  last_seq_type;
reg    [1:0]  link_fault;
reg    [2:0]  seq_cnt;
reg    [1:0]  seq_type;

    reg    [1:0]  seq_add;
    
    // Two-process style refactoring: next-state wires
    wire [1:0] next_state;
    wire [7:0] next_col_cnt;
    wire [1:0] next_last_seq_type;
    wire [1:0] next_link_fault;
    wire [2:0] next_seq_cnt;
    wire       next_status_local_fault;
    wire       next_status_remote_fault;

    /*AUTOWIRE*/


    parameter [1:0]
                 SM_INIT       = 2'd0,
                 SM_COUNT      = 2'd1,
                 SM_FAULT      = 2'd2,
                 SM_NEW_FAULT  = 2'd3;


    always @(/*AS*/local_fault_msg_det or remote_fault_msg_det) begin

        fault_sequence = local_fault_msg_det | remote_fault_msg_det;

        // Sequence type using ternary chain
        seq_type = (|local_fault_msg_det)   ? `LINK_FAULT_LOCAL :
                   (|remote_fault_msg_det)  ? `LINK_FAULT_REMOTE :
                                              `LINK_FAULT_OK;

        // Adder: changed to use conditional ternary
        seq_add = (|remote_fault_msg_det) ? 
                  (remote_fault_msg_det[1] + remote_fault_msg_det[0]) :
                  (local_fault_msg_det[1] + local_fault_msg_det[0]);
    end

    // --- Combinational next-state logic ---
    assign next_status_local_fault  = (curr_state == SM_FAULT) && (link_fault == `LINK_FAULT_LOCAL);
    assign next_status_remote_fault = (curr_state == SM_FAULT) && (link_fault == `LINK_FAULT_REMOTE);

    // Next state FSM using if-else chain instead of case
    wire [7:0] col_plus2 = col_cnt + 8'd2;
    wire [2:0] seq_plus  = seq_cnt + {1'b0, seq_add};
    wire       fault_gt_3 = (seq_cnt + {1'b0, seq_add}) > 3'd3;

    assign next_state =
        (curr_state == SM_INIT) ?
            (|fault_sequence ?
                SM_COUNT : SM_INIT) :
        (curr_state == SM_COUNT) ?
            ((!fault_sequence[0] && col_cnt >= 8'd127) ? SM_INIT :
             (col_cnt > 8'd127)                       ? SM_INIT :
             (|fault_sequence && seq_type != last_seq_type) ? SM_NEW_FAULT :
             (|fault_sequence && fault_gt_3)          ? SM_FAULT :
                                                        SM_COUNT) :
        (curr_state == SM_FAULT) ?
            ((!fault_sequence[0] && col_cnt >= 8'd127) ? SM_INIT :
             (col_cnt > 8'd127)                       ? SM_INIT :
             (|fault_sequence && seq_type != last_seq_type) ? SM_NEW_FAULT :
                                                            SM_FAULT) :
        // SM_NEW_FAULT
            SM_COUNT;

    assign next_col_cnt =
        (curr_state == SM_INIT) ?
            (|fault_sequence ? (fault_sequence[0] ? 8'd2 : 8'd1) : 8'd0) :
        (curr_state == SM_COUNT) ?
            ((|fault_sequence && fault_gt_3) ? 8'd0 : col_plus2) :
        (curr_state == SM_FAULT) ?
            ((|fault_sequence) ? 8'd0 : col_plus2) :
        // SM_NEW_FAULT
            8'd0;

    assign next_last_seq_type =
        (curr_state == SM_INIT && |fault_sequence) ? seq_type :
        (curr_state == SM_NEW_FAULT)               ? seq_type :
                                                     last_seq_type;

    assign next_link_fault =
        (curr_state == SM_COUNT && |fault_sequence && fault_gt_3 && seq_type == last_seq_type) ? seq_type :
                                                                                                 link_fault;

    assign next_seq_cnt =
        (curr_state == SM_INIT) ?
            (|fault_sequence ? {1'b0, seq_add} : 3'b0) :
        (curr_state == SM_COUNT) ?
            ((|fault_sequence && fault_gt_3) ? 3'b0 : seq_plus) :
        (curr_state == SM_NEW_FAULT) ?
            {1'b0, seq_add} :
            seq_cnt;

    // --- Sequential logic (single unified always block) ---
    always @(posedge clk_xgmii_rx or negedge reset_xgmii_rx_n) begin
        if (reset_xgmii_rx_n == 1'b0) begin
            status_local_fault_crx  <= 1'b0;
            status_remote_fault_crx <= 1'b0;
            curr_state              <= SM_INIT;
            col_cnt                 <= 8'b0;
            last_seq_type           <= `LINK_FAULT_OK;
            link_fault              <= `LINK_FAULT_OK;
            seq_cnt                 <= 3'b0;
        end else begin
            status_local_fault_crx  <= next_status_local_fault;
            status_remote_fault_crx <= next_status_remote_fault;
            curr_state              <= next_state;
            col_cnt                 <= next_col_cnt;
            last_seq_type           <= next_last_seq_type;
            link_fault              <= next_link_fault;
            seq_cnt                 <= next_seq_cnt;
        end
    end

endmodule

