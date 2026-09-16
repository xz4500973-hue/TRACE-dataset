//////////////////////////////////////////////////////////////////////
////  delay_counter.v - Dataset3: case-style load with extra reg  ////
//////////////////////////////////////////////////////////////////////

`include "lcd_defines.v"

(* keep_hierarchy = "yes" *) module delay_counter #( parameter counter_width = 32 )
( input clk, reset, input [counter_width-1:0] count, input load, output done );

   reg [counter_width-1:0] counter;
   reg done_r;

   always @(posedge clk)
       case (load)
           1'b1: counter <= count;
           1'b0: counter <= counter - 1'b1;
       endcase

   always @(posedge clk)
       done_r <= (counter == 0);

   assign done = done_r;

endmodule