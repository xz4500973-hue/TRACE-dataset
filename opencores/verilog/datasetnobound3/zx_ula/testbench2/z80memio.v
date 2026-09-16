`timescale 1ns / 1ps
//
// Z80 bus functional model (BFM) - variant 2
// Produces different bus cycle patterns compared to dataset2 variant
//
module z80memio(
    input clk,
    output reg [15:0] a,
    output reg [7:0] d,
    output reg mreq_n,
    output reg iorq_n,
    output reg wr_n,
    output reg rfsh_n
);

   reg [4:0]  cycle_cnt;
   reg [3:0]  phase;

   // Different sequence timing and patterns
   always @(posedge clk) begin
      if (cycle_cnt == 5'd0) begin
         phase     <= phase + 1'b1;
         cycle_cnt <= 5'd14;  // Different cycle length (15 clocks)

         case (phase[1:0])
           2'd0: begin  // IORQ write first (different order)
              a      <= 16'h00fe;
              d      <= {2'b00, ($urandom & 6'h3f)};  // random border color
              mreq_n <= 1'b1;
              iorq_n <= 1'b0;
              wr_n   <= 1'b0;
              rfsh_n <= 1'b1;
           end
           2'd1: begin  // MREQ write to attribute area
              a      <= 16'h5a00;   // different attribute address
              d      <= 8'hc3;
              mreq_n <= 1'b0;
              iorq_n <= 1'b1;
              wr_n   <= 1'b0;
              rfsh_n <= 1'b1;
           end
           2'd2: begin  // MREQ write to VRAM
              a      <= 16'h4100;   // different VRAM page
              d      <= 8'h55;
              mreq_n <= 1'b0;
              iorq_n <= 1'b1;
              wr_n   <= 1'b0;
              rfsh_n <= 1'b1;
           end
           2'd3: begin  // Refresh cycle
              a      <= 16'h0000;
              d      <= 8'h00;
              mreq_n <= 1'b1;
              iorq_n <= 1'b1;
              wr_n   <= 1'b1;
              rfsh_n <= 1'b0;
           end
         endcase
      end else begin
         cycle_cnt <= cycle_cnt - 1'b1;
      end
   end

endmodule