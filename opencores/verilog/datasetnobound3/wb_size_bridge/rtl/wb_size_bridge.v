//////////////////////////////////////////////////////////////////////
////  wb_size_bridge.v - 32bit to 16/8bit Wishbone bridge       ////
////  Dataset3: pipelined read output, reordered combinational    ////
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

   // --- State machine encoder (merged case rows) ---
   reg [2:0] state_enc;
   wire      state_enc_3_more = state_enc[2];
   wire      state_enc_1_more = state_enc[1];
   wire      state_enc_error  = state_enc[0];

   always @(*)
     case( {lo_byte_if_i, wb_hi_sel_i} )
       {1'b1,4'b0001}: state_enc = 3'b000;
       {1'b1,4'b0010}: state_enc = 3'b000;
       {1'b1,4'b0100}: state_enc = 3'b000;
       {1'b1,4'b1000}: state_enc = 3'b000;
       {1'b1,4'b0011}: state_enc = 3'b010;
       {1'b1,4'b1100}: state_enc = 3'b010;
       {1'b1,4'b1111}: state_enc = 3'b100;
       {1'b0,4'b0001}: state_enc = 3'b000;
       {1'b0,4'b0010}: state_enc = 3'b000;
       {1'b0,4'b0100}: state_enc = 3'b000;
       {1'b0,4'b1000}: state_enc = 3'b000;
       {1'b0,4'b0011}: state_enc = 3'b000;
       {1'b0,4'b1100}: state_enc = 3'b000;
       {1'b0,4'b1111}: state_enc = 3'b010;
       default:         state_enc = 3'b001;
     endcase

   // --- State machine (one-hot encoding + reg/next split) ---
   localparam S_IDLE=4'b0001, S_1CH=4'b0010, S_2CH=4'b0100, S_3CH=4'b1000;
   reg [3:0] state, next_state;

   always @(posedge wb_hi_clk_i or posedge wb_hi_rst_i)
     if(wb_hi_rst_i) state <= S_IDLE; else state <= next_state;

   wire active = wb_hi_stb_i & wb_hi_cyc_i;
   always @(*)
     case(state)
       S_IDLE: if(state_enc_1_more & wb_lo_ack_i & active) next_state = S_1CH;
               else if(state_enc_3_more & wb_lo_ack_i & active) next_state = S_3CH;
               else next_state = S_IDLE;
       S_3CH:  next_state = wb_lo_ack_i ? S_2CH : S_3CH;
       S_2CH:  next_state = wb_lo_ack_i ? S_1CH : S_2CH;
       S_1CH:  next_state = wb_lo_ack_i ? S_IDLE : S_1CH;
       default: next_state = S_IDLE;
     endcase

   // --- Byte enable ---
   reg [3:0] byte_enable;
   always @(*)
     casez({lo_byte_if_i, wb_hi_sel_i, state})
       {1'b1,4'b0001,S_IDLE}: byte_enable=4'b0001;
       {1'b1,4'b0010,S_IDLE}: byte_enable=4'b0010;
       {1'b1,4'b0100,S_IDLE}: byte_enable=4'b0100;
       {1'b1,4'b1000,S_IDLE}: byte_enable=4'b1000;
       {1'b1,4'b0011,S_IDLE}: byte_enable=4'b0001;
       {1'b1,4'b0011,S_1CH}:  byte_enable=4'b0010;
       {1'b1,4'b1100,S_IDLE}: byte_enable=4'b0100;
       {1'b1,4'b1100,S_1CH}:  byte_enable=4'b1000;
       {1'b1,4'b1111,S_IDLE}: byte_enable=4'b0001;
       {1'b1,4'b1111,S_3CH}:  byte_enable=4'b0010;
       {1'b1,4'b1111,S_2CH}:  byte_enable=4'b0100;
       {1'b1,4'b1111,S_1CH}:  byte_enable=4'b1000;
       {1'b0,4'b????,4'b????}:byte_enable=4'b0000;
       default:              byte_enable=4'b0000;
     endcase

   reg [1:0] byte_select;
   always @(*) byte_select = byte_enable[0]?2'b00:byte_enable[1]?2'b01:byte_enable[2]?2'b10:byte_enable[3]?2'b11:2'bxx;

   // --- Word enable ---
   reg [1:0] word_enable;
   always @(*)
     casez({lo_byte_if_i, wb_hi_sel_i, state})
       {1'b0,4'b0011,S_IDLE}: word_enable=2'b01;
       {1'b0,4'b1100,S_IDLE}: word_enable=2'b10;
       {1'b0,4'b0001,S_IDLE}: word_enable=2'b01;
       {1'b0,4'b0010,S_IDLE}: word_enable=2'b01;
       {1'b0,4'b0100,S_IDLE}: word_enable=2'b10;
       {1'b0,4'b1000,S_IDLE}: word_enable=2'b10;
       {1'b0,4'b1111,S_IDLE}: word_enable=2'b01;
       {1'b0,4'b1111,S_1CH}:  word_enable=2'b10;
       {1'b1,4'b????,4'b????}:word_enable=2'b00;
       default:              word_enable=2'b00;
     endcase

   reg word_select;
   always @(*) word_select = word_enable[1];

   // --- Write mux ---
   reg [1:0] byte_write_mux_enc;
   always @(*)
     casez({lo_byte_if_i, byte_select, word_select})
       {1'b1,2'b00,1'b?}: byte_write_mux_enc=2'b00;
       {1'b1,2'b01,1'b?}: byte_write_mux_enc=2'b01;
       {1'b1,2'b10,1'b?}: byte_write_mux_enc=2'b10;
       {1'b1,2'b11,1'b?}: byte_write_mux_enc=2'b11;
       {1'b0,2'b??,1'b0}: byte_write_mux_enc=2'b00;
       {1'b0,2'b??,1'b1}: byte_write_mux_enc=2'b10;
       default:           byte_write_mux_enc=2'b00;
     endcase

   reg [7:0] byte_write_mux;
   always @(*)
     case(byte_write_mux_enc)
       2'b00: byte_write_mux=wb_hi_dat_i[7:0];
       2'b01: byte_write_mux=wb_hi_dat_i[15:8];
       2'b10: byte_write_mux=wb_hi_dat_i[23:16];
       2'b11: byte_write_mux=wb_hi_dat_i[31:24];
     endcase

   reg [7:0] word_write_mux;
   always @(*) word_write_mux = word_select?wb_hi_dat_i[31:24]:wb_hi_dat_i[15:8];

   // --- Read buffer with pipeline stage ---
   wire [7:0] read_word_lo = wb_lo_dat_i[7:0];
   wire [7:0] read_word_hi = (|word_enable) ? wb_lo_dat_i[15:8] : wb_lo_dat_i[7:0];

   wire rb0 = (byte_enable[0]|word_enable[0]) & ~wb_hi_we_i;
   wire rb1 = (byte_enable[1]|word_enable[0]) & ~wb_hi_we_i;
   wire rb2 = (byte_enable[2]|word_enable[1]) & ~wb_hi_we_i;
   wire rb3 = (byte_enable[3]|word_enable[1]) & ~wb_hi_we_i;

   reg [31:0] read_buffer;
   always @(posedge wb_hi_clk_i) begin
       if(rb0) read_buffer[7:0]   <= read_word_lo;
       if(rb1) read_buffer[15:8]  <= read_word_hi;
       if(rb2) read_buffer[23:16] <= read_word_lo;
       if(rb3) read_buffer[31:24] <= read_word_hi;
   end

   // Extra pipeline stage: buffer -> output reg (1 cycle delay)
   reg [31:0] read_pipe;
   always @(posedge wb_hi_clk_i or posedge wb_hi_rst_i)
     if(wb_hi_rst_i) read_pipe <= 32'h0;
     else read_pipe <= read_buffer;

   wire [31:0] read_buffer_mux;
   assign read_buffer_mux[7:0]   = rb0?read_word_lo:read_pipe[7:0];
   assign read_buffer_mux[15:8]  = rb1?read_word_hi:read_pipe[15:8];
   assign read_buffer_mux[23:16] = rb2?read_word_lo:read_pipe[23:16];
   assign read_buffer_mux[31:24] = rb3?read_word_hi:read_pipe[31:24];

   // --- Misc ---
   wire [1:0] lo_addr_bits = (|byte_enable)?byte_select:{word_select,1'b0};
   wire all_done = (~(|state_enc) && state==S_IDLE) | (|state_enc && state==S_1CH);

   reg [1:0] wb_lo_sel_r;
   always @(*)
     casez({lo_byte_if_i,wb_hi_sel_i,state})
       {1'b0,4'b0001,S_IDLE}: wb_lo_sel_r=2'b01;
       {1'b0,4'b0010,S_IDLE}: wb_lo_sel_r=2'b10;
       {1'b0,4'b0100,S_IDLE}: wb_lo_sel_r=2'b01;
       {1'b0,4'b1000,S_IDLE}: wb_lo_sel_r=2'b10;
       default:               wb_lo_sel_r=2'b11;
     endcase

   assign wb_hi_dat_o = read_pipe;
   assign wb_hi_err_o = (wb_lo_err_i|state_enc_error) & active;
   assign wb_hi_rty_o = wb_lo_rty_i;
   assign wb_hi_ack_o = all_done & active & wb_lo_ack_i;
   assign wb_lo_adr_o = {wb_hi_adr_i[31:2], lo_addr_bits};
   assign wb_lo_clk_o = wb_hi_clk_i;
   assign wb_lo_rst_o = wb_hi_rst_i;
   assign wb_lo_cyc_o = wb_hi_cyc_i;
   assign wb_lo_stb_o = wb_hi_stb_i;
   assign wb_lo_we_o  = wb_hi_we_i & active;
   assign wb_lo_dat_o = {word_write_mux, byte_write_mux};
   assign wb_lo_sel_o = wb_lo_sel_r;

endmodule