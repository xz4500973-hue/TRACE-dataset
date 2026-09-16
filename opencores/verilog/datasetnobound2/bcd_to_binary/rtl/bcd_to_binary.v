// VARIANT: Split busy/register logic from bit_counter into separate always blocks
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


// 第一个 always 块：仅处理 busy_bit 和 dat_binary_o
always @(posedge clk_i) begin
    if (rst_i) begin
        busy_bit     <= 0;
        dat_binary_o <= 0;
    end else if (start_i && ~busy_bit) begin
        busy_bit <= 1;
    end else if (busy_bit && ce_i && bit_count_done && ~start_i) begin
        busy_bit     <= 0;
        dat_binary_o <= bin_next;
    end
end

// 第二个 always 块：仅处理 bin_reg 和 bcd_reg 的更新（包含所有赋值）
always @(posedge clk_i) begin
    if (rst_i) begin
        bin_reg <= 0;
        bcd_reg <= 0;   // 或者保持默认值，根据需要
    end else if (start_i && ~busy_bit) begin
        bcd_reg <= dat_bcd_i;
        bin_reg <= 0;
    end else if (busy_bit && ce_i && ~bit_count_done) begin
        bin_reg <= bin_next;
        bcd_reg <= bcd_next;
    end
end
assign done_o = ~busy_bit;

// Bit counter
always @(posedge clk_i) begin
  if (~busy_bit) bit_count <= 0;
  else if (ce_i && ~bit_count_done) bit_count <= bit_count + 1;
end
assign bit_count_done = (bit_count == (BITS_OUT_PP-1));

endmodule