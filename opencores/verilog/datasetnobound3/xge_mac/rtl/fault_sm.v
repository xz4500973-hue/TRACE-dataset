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
reg    [7:0]  holdoff_timer;        // additional state element for variation

/*AUTOWIRE*/

parameter [1:0]
             SM_INIT       = 2'd0,
             SM_COUNT      = 2'd1,
             SM_FAULT      = 2'd2,
             SM_NEW_FAULT  = 2'd3;

// --- Combinational logic (always @*) ---
always @(local_fault_msg_det or remote_fault_msg_det) begin
    fault_sequence = local_fault_msg_det | remote_fault_msg_det;
    // Use case(1'b1) priority encoder style instead of if-else chain
    case (1'b1)
        |local_fault_msg_det:  seq_type = `LINK_FAULT_LOCAL;
        |remote_fault_msg_det: seq_type = `LINK_FAULT_REMOTE;
        default:               seq_type = `LINK_FAULT_OK;
    endcase
    // Ternary assignment style
    seq_add = (|remote_fault_msg_det) ? (remote_fault_msg_det[1] + remote_fault_msg_det[0])
                                      : (local_fault_msg_det[1] + local_fault_msg_det[0]);
end

// --- Status outputs (separate sequential block) ---
always @(posedge clk_xgmii_rx or negedge reset_xgmii_rx_n) begin
    if (reset_xgmii_rx_n == 1'b0) begin
        status_local_fault_crx  <= 1'b0;
        status_remote_fault_crx <= 1'b0;
    end else begin
        status_local_fault_crx  <= (curr_state == SM_FAULT) && (link_fault == `LINK_FAULT_LOCAL);
        status_remote_fault_crx <= (curr_state == SM_FAULT) && (link_fault == `LINK_FAULT_REMOTE);
    end
end

// --- Holdoff timer (injected for structural variation, functionally neutral) ---
always @(posedge clk_xgmii_rx or negedge reset_xgmii_rx_n) begin
    if (reset_xgmii_rx_n == 1'b0)
        holdoff_timer <= 8'd0;
    else if (curr_state == SM_FAULT && |fault_sequence)
        holdoff_timer <= 8'd63;
    else if (holdoff_timer > 8'd0)
        holdoff_timer <= holdoff_timer - 8'd1;
end

// --- Main FSM sequential logic ---
always @(posedge clk_xgmii_rx or negedge reset_xgmii_rx_n) begin
    if (reset_xgmii_rx_n == 1'b0) begin
        curr_state    <= SM_INIT;
        col_cnt       <= 8'b0;
        last_seq_type <= `LINK_FAULT_OK;
        link_fault    <= `LINK_FAULT_OK;
        seq_cnt       <= 3'b0;
    end else begin
        case (curr_state)
          SM_INIT: begin
              last_seq_type <= seq_type;
              if (|fault_sequence) begin
                  col_cnt <= fault_sequence[0] ? 8'd2 : 8'd1;
                  seq_cnt <= {1'b0, seq_add};
                  curr_state <= SM_COUNT;
              end else begin
                  col_cnt <= 8'b0;
                  seq_cnt <= 3'b0;
              end
          end
          SM_COUNT: begin
              col_cnt <= col_cnt + 8'd2;
              seq_cnt <= seq_cnt + {1'b0, seq_add};
              if (!fault_sequence[0] && col_cnt >= 8'd127)
                  curr_state <= SM_INIT;
              else if (col_cnt > 8'd127)
                  curr_state <= SM_INIT;
              else if (|fault_sequence) begin
                  if (seq_type != last_seq_type)
                      curr_state <= SM_NEW_FAULT;
                  else if ((seq_cnt + {1'b0, seq_add}) > 3'd3) begin
                      col_cnt    <= 8'b0;
                      link_fault <= seq_type;
                      curr_state <= SM_FAULT;
                  end
              end
          end
          SM_FAULT: begin
              col_cnt <= col_cnt + 8'd2;
              if (!fault_sequence[0] && col_cnt >= 8'd127)
                  curr_state <= SM_INIT;
              else if (col_cnt > 8'd127)
                  curr_state <= SM_INIT;
              else if (|fault_sequence) begin
                  col_cnt <= 8'd0;
                  if (seq_type != last_seq_type)
                      curr_state <= SM_NEW_FAULT;
              end
          end
          SM_NEW_FAULT: begin
              col_cnt       <= 8'b0;
              last_seq_type <= seq_type;
              seq_cnt       <= {1'b0, seq_add};
              curr_state    <= SM_COUNT;
          end
        endcase
    end
end

endmodule