// statled.v - dataset3: two-process counter, pipeline output

`timescale 1ns / 100ps

(* keep_hierarchy = "yes" *) module statled (
    input clk, rst,
    input [3:0] status,
    output led
);

parameter tDLY = 1;
parameter STATLED_CLK = 50_000_000;
parameter STATLED_PULSE_MS = 225;
parameter STATLED_PULSE_CLKCNT = STATLED_CLK/1000 * STATLED_PULSE_MS;

parameter CODE_ONE = 16'b10_00_00_00_00_00_00_00;
parameter CODE_TWO = 16'b10_10_00_00_00_00_00_00;
parameter CODE_THREE = 16'b10_10_10_00_00_00_00_00;
parameter CODE_FOUR = 16'b10_10_10_10_00_00_00_00;
parameter CODE_FIVE = 16'b10_10_10_10_10_00_00_00;
parameter CODE_SIX = 16'b10_10_10_10_10_10_00_00;
parameter CODE_50_50 = 16'b10_10_10_10_10_10_10_10;

reg [32:0] pre;
reg [7:0] bcnt;
reg [15:0] lsr, cr;
reg [3:0] str;
wire rate;
reg led_pipe;

// Next-state wires
wire [32:0] nxt_pre = rate ? 0 : (pre + 1);
wire [7:0] nxt_bcnt = rst ? 15 : (bcnt==16 ? 0 : (rate ? bcnt+1 : bcnt));
wire nxt_led = rst ? 1 : lsr[15];

assign rate = (pre == STATLED_PULSE_CLKCNT);

always @(posedge clk or posedge rst)
  if(rst) begin pre<=0; bcnt<=15; end
  else begin pre<=nxt_pre; bcnt<=nxt_bcnt; end

always @(posedge clk or posedge rst)
  if(rst) str<=0; else str<=status;

always @(posedge clk or posedge rst)
  if(rst) lsr<=0; else if(bcnt==16) lsr<=cr; else if(rate) lsr<=lsr<<1;

always @* case(str)
  0: cr=CODE_50_50; 1: cr=CODE_ONE; 2: cr=CODE_TWO; 3: cr=CODE_THREE;
  4: cr=CODE_FOUR; 5: cr=CODE_FIVE; 6: cr=CODE_SIX; default: cr=0; endcase

always @(posedge clk or posedge rst)
  if(rst) led_pipe<=1; else led_pipe<=nxt_led;

assign led = led_pipe;

endmodule