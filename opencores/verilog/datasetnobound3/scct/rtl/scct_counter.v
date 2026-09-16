// $Id: scct_counter.v 2 2015-06-15 13:52:02Z fkluge $
// simple counter (dataset3: next-state wire variant)

`include "scct_constants.v"

(* keep_hierarchy = "yes" *) module scct_counter (
		     clk,
		     rst,
		     counter,
		     counter_changed,
		     irq_enable_i, irq_enable_i_wen,
		     irq_status_i, irq_status_i_wen,
		     prescaler_i, prescaler_i_wen,
		     irq_enable_o,
		     irq_status_o,
		     prescaler_o
		     );
   
   input 	 clk;
   input 	 rst;
   output [`SCCT_COUNTER_CTR_WIDTH-1:0] counter;
   input 				irq_enable_i;
   input 				irq_enable_i_wen;
   input 				irq_status_i;
   input 				irq_status_i_wen;
   input [`SCCT_COUNTER_PSC_WIDTH-1:0] 	prescaler_i;
   input 				prescaler_i_wen;
   output 				irq_enable_o;
   output 				irq_status_o;
   output [`SCCT_COUNTER_PSC_WIDTH-1:0] prescaler_o;
   output 				counter_changed;
   
   reg [`SCCT_COUNTER_CTR_WIDTH:0] 	my_counter;
   reg 					counter_changed;
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] 	prescaler;
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] 	prescaler_shadow;
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] 	prescaler_count;
   reg 					irq_enable;
   reg 					irq_status;
   
   wire 				prescaler_match;
   wire 				counter_overflow;
   
   assign prescaler_match = (prescaler_count == prescaler_shadow);
   assign counter[`SCCT_COUNTER_CTR_WIDTH-1:0] = my_counter[`SCCT_COUNTER_CTR_OV_BIT-1:0];
   assign counter_overflow = my_counter[`SCCT_COUNTER_CTR_OV_BIT];
   assign prescaler_o = prescaler;
   assign irq_status_o = irq_status;

   // Dataset3: combinatorial next-state wires
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] nxt_prescaler_count;
   reg [`SCCT_COUNTER_CTR_WIDTH:0]   nxt_my_counter;
   reg                                 nxt_counter_changed;
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] nxt_prescaler_shadow;
   reg                                 nxt_irq_status;
   reg                                 nxt_irq_enable;
   reg [`SCCT_COUNTER_PSC_WIDTH-1:0] nxt_prescaler;

   always @(prescaler_count or prescaler_shadow or prescaler or my_counter or irq_enable or irq_status or counter_overflow or prescaler_match or irq_enable_i or irq_enable_i_wen or irq_status_i or irq_status_i_wen or prescaler_i or prescaler_i_wen) begin
      nxt_prescaler_count  = prescaler_count + 1;
      nxt_my_counter       = my_counter;
      nxt_counter_changed  = 1'b0;
      nxt_prescaler_shadow = prescaler_shadow;
      nxt_irq_status       = irq_status;
      nxt_irq_enable       = irq_enable;
      nxt_prescaler        = prescaler;

      if (prescaler_match) begin
         nxt_my_counter       = my_counter + 1;
         nxt_prescaler_count  = 0;
         nxt_prescaler_shadow = prescaler;
         nxt_counter_changed  = 1'b1;
      end
      if (counter_overflow) begin
         nxt_my_counter[`SCCT_COUNTER_CTR_OV_BIT] = 1'b0;
         nxt_irq_status = irq_enable ? 1'b1 : 1'b0;
      end
      if (irq_enable_i_wen)       nxt_irq_enable = irq_enable_i;
      if (irq_status_i_wen && irq_status_i && !counter_overflow) nxt_irq_status = 1'b0;
      if (prescaler_i_wen)        nxt_prescaler = prescaler_i;
   end

   always @(posedge clk or posedge rst)
     if(rst) begin
        prescaler_shadow <= 0;
        prescaler_count  <= 0;
        my_counter       <= 0;
        irq_status       <= 0;
        prescaler        <= 0;
        irq_enable       <= 0;
        counter_changed  <= 0;
     end else begin
        prescaler_count  <= nxt_prescaler_count;
        my_counter       <= nxt_my_counter;
        counter_changed  <= nxt_counter_changed;
        prescaler_shadow <= nxt_prescaler_shadow;
        irq_status       <= nxt_irq_status;
        irq_enable       <= nxt_irq_enable;
        prescaler        <= nxt_prescaler;
     end
   
endmodule