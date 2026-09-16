`timescale 1ns / 1ps
//
// Z80 bus functional model (BFM) - simplified memory/IO cycle generator
// Produces alternating MREQ and IORQ cycles for ULA stimulation
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
   reg [2:0]  phase;

   // Simple cycle generator: alternates between MREQ writes and IORQ writes
   always @(posedge clk) begin
      if (cycle_cnt == 5'd0) begin
         phase    <= phase + 1'b1;
         cycle_cnt <= 5'd19;  // ~20 clock cycles per bus cycle
         
         case (phase[1:0])
           2'd0: begin  // MREQ write cycle
              a      <= 16'h4010;   // VRAM address area (A14=1, A15=0)
              d      <= 8'haa;
              mreq_n <= 1'b0;
              iorq_n <= 1'b1;
              wr_n   <= 1'b0;
              rfsh_n <= 1'b1;
           end
           2'd1: begin  // IORQ write (ULA port FE - A0=0)
              a      <= 16'h00fe;
              d      <= {2'b00, ($random & 6'h3f)};  // random border color + spk/mic
              mreq_n <= 1'b1;
              iorq_n <= 1'b0;
              wr_n   <= 1'b0;
              rfsh_n <= 1'b1;
           end
           2'd2: begin  // MREQ write - different address
              a      <= 16'h5800;   // attribute area
              d      <= 8'h3c;
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
         endcase // case (phase[1:0])
      end else begin
         cycle_cnt <= cycle_cnt - 1'b1;
      end
   end

endmodule