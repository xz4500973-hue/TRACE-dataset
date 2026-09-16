//////////////////////////////////////////////////////////////////////
////  wb_size_bridge.v - 32bit to 16/8bit Wishbone bridge       ////
////  Dataset2: merged always blocks, unified FSM function        ////
//////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

(* keep_hierarchy = "yes" *) module wb_size_bridge(
   input         wb_hi_clk_i, wb_hi_rst_i,
   output [31:0] wb_hi_dat_o,
   input  [31:0] wb_hi_dat_i, wb_hi_adr_i,
   input         wb_hi_cyc_i, wb_hi_stb_i, wb_hi_we_i,
   input  [3:0]  wb_hi_sel_i,
   output        wb_hi_ack_o, wb_hi_err_o, wb_hi_rty_o,
   output        wb_lo_clk_o, wb_lo_rst_o,
   input  [15:0] wb_lo_dat_i,
   output [15:0] wb_lo_dat_o,
   output [31:0] wb_lo_adr_o,
   output        wb_lo_cyc_o, wb_lo_stb_o, wb_lo_we_o,
   output [1:0]  wb_lo_sel_o,
   input         wb_lo_ack_i, wb_lo_err_i, wb_lo_rty_i,
   input         lo_byte_if_i
);

   // --- State machine encoder (unchanged combinational) ---
   reg [2:0] state_enc;
   wire      state_enc_3_more_chunks = state_enc[2];
   wire      state_enc_1_more_chunks = state_enc[1];
   wire      state_enc_error         = state_enc[0];

   always @(*)
     case( { lo_byte_if_i, wb_hi_sel_i } )
       5'b1_0001,5'b1_0010,5'b1_0100,5'b1_1000: state_enc = 3'b000;
       5'b1_0011,5'b1_1100:                       state_enc = 3'b010;
       5'b1_1111:                                 state_enc = 3'b100;
       5'b0_0001,5'b0_0010,5'b0_0100,5'b0_1000,
       5'b0_0011,5'b0_1100:                       state_enc = 3'b000;
       5'b0_1111:                                 state_enc = 3'b010;
       default:                                   state_enc = 3'b001;
     endcase

   // --- State machine (merged: single always with function-based transition) ---
   localparam ST_PASS = 2'd0, ST_1MORE = 2'd1, ST_2MORE = 2'd2, ST_3MORE = 2'd3;

   function [1:0] fsm_next;
       input [1:0] curr;
       input       more1, more3, ack, active;
       begin
           case (curr)
               ST_PASS:  fsm_next = (more1 && ack && active) ? ST_1MORE :
                                    (more3 && ack && active) ? ST_3MORE : ST_PASS;
               ST_3MORE: fsm_next = ack ? ST_2MORE : ST_3MORE;
               ST_2MORE: fsm_next = ack ? ST_1MORE : ST_2MORE;
               ST_1MORE: fsm_next = ack ? ST_PASS  : ST_1MORE;
               default:  fsm_next = ST_PASS;
           endcase
       end
   endfunction

   reg [1:0] state;
   wire active = wb_hi_stb_i & wb_hi_cyc_i;
   always @(posedge wb_hi_clk_i or posedge wb_hi_rst_i)
       if (wb_hi_rst_i)
           state <= ST_PASS;
       else
           state <= fsm_next(state, state_enc_1_more_chunks, state_enc_3_more_chunks, wb_lo_ack_i, active);

   // --- Byte enable & select (if-else priority chain instead of casez) ---
   reg [3:0] byte_enable;
   always @(*)
       if (!lo_byte_if_i)                              byte_enable = 4'b0000;
       else if (wb_hi_sel_i == 4'b0001 && state == ST_PASS)  byte_enable = 4'b0001;
       else if (wb_hi_sel_i == 4'b0010 && state == ST_PASS)  byte_enable = 4'b0010;
       else if (wb_hi_sel_i == 4'b0100 && state == ST_PASS)  byte_enable = 4'b0100;
       else if (wb_hi_sel_i == 4'b1000 && state == ST_PASS)  byte_enable = 4'b1000;
       else if (wb_hi_sel_i == 4'b0011 && state == ST_PASS)  byte_enable = 4'b0001;
       else if (wb_hi_sel_i == 4'b0011 && state == ST_1MORE)  byte_enable = 4'b0010;
       else if (wb_hi_sel_i == 4'b1100 && state == ST_PASS)  byte_enable = 4'b0100;
       else if (wb_hi_sel_i == 4'b1100 && state == ST_1MORE)  byte_enable = 4'b1000;
       else if (wb_hi_sel_i == 4'b1111 && state == ST_PASS)  byte_enable = 4'b0001;
       else if (wb_hi_sel_i == 4'b1111 && state == ST_3MORE) byte_enable = 4'b0010;
       else if (wb_hi_sel_i == 4'b1111 && state == ST_2MORE) byte_enable = 4'b0100;
       else if (wb_hi_sel_i == 4'b1111 && state == ST_1MORE) byte_enable = 4'b1000;
       else                                                  byte_enable = 4'b0000;

   reg [1:0] byte_select;
   always @(*)
       case(byte_enable)
           4'b0001: byte_select = 2'b00;
           4'b0010: byte_select = 2'b01;
           4'b0100: byte_select = 2'b10;
           4'b1000: byte_select = 2'b11;
           default: byte_select = 2'bxx;
       endcase

   // --- Word enable (if-else priority chain) ---
   reg [1:0] word_enable;
   always @(*)
       if (lo_byte_if_i)                                      word_enable = 2'b00;
       else if (wb_hi_sel_i==4'b0011 && state==ST_PASS)     word_enable = 2'b01;
       else if (wb_hi_sel_i==4'b1100 && state==ST_PASS)     word_enable = 2'b10;
       else if (wb_hi_sel_i==4'b1111 && state==ST_PASS)     word_enable = 2'b01;
       else if (wb_hi_sel_i==4'b1111 && state==ST_1MORE)    word_enable = 2'b10;
       else if (wb_hi_sel_i[1:0]==2'b01 && state==ST_PASS)  word_enable = 2'b01;
       else if (wb_hi_sel_i[1:0]==2'b10 && state==ST_PASS)  word_enable = 2'b01;
       else if (wb_hi_sel_i[3:2]==2'b01 && state==ST_PASS)  word_enable = 2'b10;
       else if (wb_hi_sel_i[3:2]==2'b10 && state==ST_PASS)  word_enable = 2'b10;
       else                                                  word_enable = 2'b00;

   reg word_select;
   always @(*) word_select = word_enable[1] ? 1'b1 : 1'b0;

   // --- Write mux (if-else chain) ---
   reg [1:0] byte_write_mux_enc;
   always @(*)
       if (lo_byte_if_i && byte_select==2'b00)       byte_write_mux_enc = 2'b00;
       else if (lo_byte_if_i && byte_select==2'b01)   byte_write_mux_enc = 2'b01;
       else if (lo_byte_if_i && byte_select==2'b10)   byte_write_mux_enc = 2'b10;
       else if (lo_byte_if_i && byte_select==2'b11)   byte_write_mux_enc = 2'b11;
       else if (!lo_byte_if_i && word_select==1'b0)   byte_write_mux_enc = 2'b00;
       else if (!lo_byte_if_i && word_select==1'b1)   byte_write_mux_enc = 2'b10;
       else                                            byte_write_mux_enc = 2'b00;

   reg [7:0] byte_write_mux;
   always @(*) byte_write_mux = (byte_write_mux_enc==2'b00) ? wb_hi_dat_i[7:0]   :
                                 (byte_write_mux_enc==2'b01) ? wb_hi_dat_i[15:8]  :
                                 (byte_write_mux_enc==2'b10) ? wb_hi_dat_i[23:16] :
                                 (byte_write_mux_enc==2'b11) ? wb_hi_dat_i[31:24] : wb_hi_dat_i[7:0];

   reg [7:0] word_write_mux;
   always @(*) word_write_mux = word_select ? wb_hi_dat_i[31:24] : wb_hi_dat_i[15:8];

   // --- Read buffer (merged 4 always into 1) ---
   wire [7:0] read_word_lo = wb_lo_dat_i[7:0];
   wire [7:0] read_word_hi = (word_enable[0]|word_enable[1]) ? wb_lo_dat_i[15:8] : wb_lo_dat_i[7:0];

   wire rb0 = (byte_enable[0] | word_enable[0]) & ~wb_hi_we_i;
   wire rb1 = (byte_enable[1] | word_enable[0]) & ~wb_hi_we_i;
   wire rb2 = (byte_enable[2] | word_enable[1]) & ~wb_hi_we_i;
   wire rb3 = (byte_enable[3] | word_enable[1]) & ~wb_hi_we_i;

   reg [31:0] read_buffer;
   always @(posedge wb_hi_clk_i) begin
       if (rb0) read_buffer[7:0]   <= read_word_lo;
       if (rb1) read_buffer[15:8]  <= read_word_hi;
       if (rb2) read_buffer[23:16] <= read_word_lo;
       if (rb3) read_buffer[31:24] <= read_word_hi;
   end

   wire [31:0] read_buffer_mux;
   assign read_buffer_mux[7:0]   = rb0 ? read_word_lo : read_buffer[7:0];
   assign read_buffer_mux[15:8]  = rb1 ? read_word_hi : read_buffer[15:8];
   assign read_buffer_mux[23:16] = rb2 ? read_word_lo : read_buffer[23:16];
   assign read_buffer_mux[31:24] = rb3 ? read_word_hi : read_buffer[31:24];

   // --- Misc ---
   wire [1:0] lo_addr_bits;
   assign lo_addr_bits = (|byte_enable) ? byte_select : {word_select, 1'b0};

   wire all_done = (~(|state_enc) && state==ST_PASS) | (|state_enc && state==ST_1MORE);

   reg [1:0] wb_lo_sel_r;
   always @(*)
       if (!lo_byte_if_i && wb_hi_sel_i==4'b0001 && state==ST_PASS)  wb_lo_sel_r=2'b01;
       else if (!lo_byte_if_i && wb_hi_sel_i==4'b0010 && state==ST_PASS)  wb_lo_sel_r=2'b10;
       else if (!lo_byte_if_i && wb_hi_sel_i==4'b0100 && state==ST_PASS)  wb_lo_sel_r=2'b01;
       else if (!lo_byte_if_i && wb_hi_sel_i==4'b1000 && state==ST_PASS)  wb_lo_sel_r=2'b10;
       else                                                                wb_lo_sel_r=2'b11;

   assign wb_hi_dat_o = read_buffer_mux;
   assign wb_hi_err_o = (wb_lo_err_i | state_enc_error) & wb_hi_stb_i & wb_hi_cyc_i;
   assign wb_hi_rty_o = wb_lo_rty_i;
   assign wb_hi_ack_o = all_done & wb_hi_stb_i & wb_hi_cyc_i & wb_lo_ack_i;
   assign wb_lo_adr_o = { wb_hi_adr_i[31:2], lo_addr_bits };
   assign wb_lo_clk_o = wb_hi_clk_i;
   assign wb_lo_rst_o = wb_hi_rst_i;
   assign wb_lo_cyc_o = wb_hi_cyc_i;
   assign wb_lo_stb_o = wb_hi_stb_i;
   assign wb_lo_we_o  = wb_hi_we_i & wb_hi_stb_i & wb_hi_cyc_i;
   assign wb_lo_dat_o = {word_write_mux, byte_write_mux};
   assign wb_lo_sel_o = wb_lo_sel_r;

endmodule