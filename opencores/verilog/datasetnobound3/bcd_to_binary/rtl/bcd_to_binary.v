// VARIANT: Single merged always block + case-style state encoding using localparam
(* keep_hierarchy = "yes" *) module bcd_to_binary (
  clk_i, ce_i, rst_i, start_i, dat_bcd_i, dat_binary_o, done_o
  );
parameter BCD_DIGITS_IN_PP   = 5;
parameter BITS_OUT_PP        = 16;
parameter BIT_COUNT_WIDTH_PP = 4;

input  clk_i, ce_i, rst_i, start_i;
input  [4*BCD_DIGITS_IN_PP-1:0] dat_bcd_i;
output [BITS_OUT_PP-1:0] dat_binary_o;
output done_o;

reg [BITS_OUT_PP-1:0] dat_binary_o;
reg [BITS_OUT_PP-1:0] bin_reg;
reg [4*BCD_DIGITS_IN_PP-1:0] bcd_reg;
wire [BITS_OUT_PP-1:0] bin_next;
reg [4*BCD_DIGITS_IN_PP-1:0] bcd_next;
reg busy_bit;
reg [BIT_COUNT_WIDTH_PP-1:0] bit_count;
wire bit_count_done;

function [4*BCD_DIGITS_IN_PP-1:0] bcd_asr;
  input [4*BCD_DIGITS_IN_PP-1:0] din;
  integer k; reg cin; reg [3:0] digit, digit_more;
  begin
    cin = 1'b0;
    for (k=BCD_DIGITS_IN_PP-1; k>=0; k=k-1) begin
      digit[3] = 1'b0; digit[2] = din[4*k+3]; digit[1] = din[4*k+2]; digit[0] = din[4*k+1];
      digit_more = digit + 5;
      if (cin) {bcd_asr[4*k+3],bcd_asr[4*k+2],bcd_asr[4*k+1],bcd_asr[4*k+0]} = digit_more;
      else     {bcd_asr[4*k+3],bcd_asr[4*k+2],bcd_asr[4*k+1],bcd_asr[4*k+0]} = digit;
      cin = din[4*k+0];
    end
  end
endfunction

assign bin_next = {bcd_reg[0],bin_reg[BITS_OUT_PP-1:1]};
always @(bcd_reg) bcd_next <= bcd_asr(bcd_reg);

// VARIANT: Single merged always for all sequential logic
localparam S_IDLE  = 2'b00;
localparam S_BUSY  = 2'b01;
localparam S_DONE  = 2'b10;
reg [1:0] state, next_state;

always @(posedge clk_i) begin
  if (rst_i) begin
    state <= S_IDLE;
    dat_binary_o <= 0;
    bin_reg <= 0;
    bcd_reg <= 0;
    bit_count <= 0;
  end else begin
    state <= next_state;
    case (state)
      S_IDLE: begin
        if (start_i) begin
          bcd_reg <= dat_bcd_i;
          bin_reg <= 0;
          next_state = S_BUSY;
          bit_count <= 0;
        end else begin
          next_state = S_IDLE;
        end
      end
      S_BUSY: begin
        if (ce_i) begin
          bin_reg <= bin_next;
          bcd_reg <= bcd_next;
          bit_count <= bit_count + 1;
          if (bit_count_done && ~start_i) begin
            dat_binary_o <= bin_next;
            next_state = S_IDLE;
          end else
            next_state = S_BUSY;
        end else
          next_state = S_BUSY;
      end
      default: next_state = S_IDLE;
    endcase
  end
end

assign done_o = (state == S_IDLE);
assign bit_count_done = (bit_count == (BITS_OUT_PP-1));

endmodule