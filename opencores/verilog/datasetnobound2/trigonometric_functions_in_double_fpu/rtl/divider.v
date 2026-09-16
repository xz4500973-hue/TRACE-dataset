// divider.v - dataset2: if-else modulo, registered pipeline

`timescale 1ns / 100ps
`define INPUT_WIDTH 32

(* keep_hierarchy = "yes" *) module dividor (clk, inp, rst, out);
  input clk, rst;
  input [`INPUT_WIDTH-1:0] inp;
  output reg [`INPUT_WIDTH-1:0] out;

  wire [`INPUT_WIDTH-1:0] DIVISOR = 360;

  always @(posedge clk)
    if(rst) out <= 8'd0;
    else if(inp < DIVISOR) out <= inp;
    else out <= inp % DIVISOR;
endmodule