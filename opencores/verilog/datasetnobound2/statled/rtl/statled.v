// statled.v - dataset2: if-else chain code selection, merged counter

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

// Merged pre and bcnt into single always block
always @(posedge clk or posedge rst)
  if(rst) begin pre<=0; bcnt<=15; end
  else if(rate) begin pre<=0; bcnt<=bcnt+1; end
  else begin pre<=pre+1; if(bcnt==16) bcnt<=0; end

assign rate = (pre == STATLED_PULSE_CLKCNT);

always @(posedge clk or posedge rst)
  if(rst) str<=0; else str<=status;

always @(posedge clk or posedge rst)
  if(rst) lsr<=0; else if(bcnt==16) lsr<=cr; else if(rate) lsr<=lsr<<1;

// Code selection using if-else chain instead of case
always @* begin
  if(str==0) cr=CODE_50_50;
  else if(str==1) cr=CODE_ONE;
  else if(str==2) cr=CODE_TWO;
  else if(str==3) cr=CODE_THREE;
  else if(str==4) cr=CODE_FOUR;
  else if(str==5) cr=CODE_FIVE;
  else if(str==6) cr=CODE_SIX;
  else cr=0;
end

assign led = rst ? 1 : lsr[15];

endmodule