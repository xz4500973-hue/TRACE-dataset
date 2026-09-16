// divider.v - dataset3: two-process next-state modulo

`timescale 1ns / 100ps
`define INPUT_WIDTH 32

(* keep_hierarchy = "yes" *) module dividor (clk, inp, rst, out);
  input clk, rst;
  input [`INPUT_WIDTH-1:0] inp;
  output [`INPUT_WIDTH-1:0] out;

  wire [`INPUT_WIDTH-1:0] DIVISOR = 360;
  wire [`INPUT_WIDTH-1:0] nxt_out = rst ? 0 : (inp % DIVISOR);
  reg [`INPUT_WIDTH-1:0] out_r, out_pipe;
  assign out = out_pipe;

  always @(posedge clk) begin
    out_r <= nxt_out;
    out_pipe <= out_r;
  end
endmodule