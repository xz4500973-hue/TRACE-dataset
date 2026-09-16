//////////////////////////////////////////////////////////////////////
////  delay_counter.v - Dataset2: two-process style               ////
//////////////////////////////////////////////////////////////////////

`include "lcd_defines.v"

(* keep_hierarchy = "yes" *) module delay_counter #( parameter counter_width = 32 )
( input clk, reset, input [counter_width-1:0] count, input load, output done );

   reg [counter_width-1:0] counter;

   // Combinational next-value
   wire [counter_width-1:0] nxt_counter = load ? count : (counter - 1'b1);
   wire nxt_done = (counter == 0);

   always @(posedge clk)
       counter <= nxt_counter;

   assign done = nxt_done;

endmodule