// tiny_spi.v - dataset3: two-process FSM with nxt_ wires, pipeline

(* keep_hierarchy = "yes" *) module tiny_spi(
   input rst_i, clk_i,
   input stb_i, we_i, cyc_i,
   output [31:0] dat_o, output int_o,
   input [31:0] dat_i, input [2:0] adr_i,
   output ack_o,
   output MOSI, SCLK, input MISO
);

   parameter BAUD_WIDTH=8, BAUD_DIV=0, SPI_MODE=0, BC_WIDTH=3;
   parameter DIV_WIDTH = BAUD_DIV ? $clog2(BAUD_DIV/2-1) : BAUD_WIDTH;

   reg [7:0] sr8, bb8, sr8_pipe;
   wire [7:0] sr8_sf;
   reg [BC_WIDTH-1:0] bc;
   reg [DIV_WIDTH-1:0] ccr, cc;
   reg sck, sf, ld, bba, txren, txeen;
   wire cpol, cpha;
   reg cpolr, cphar;
   wire wr, wstb, istb, cstb, bstb, txr, txe;
   wire misod;

   assign ack_o = stb_i & cyc_i;
   assign wr = stb_i & cyc_i & we_i & ack_o;
   assign wstb = wr & (adr_i==1); assign istb = wr & (adr_i==2);
   assign cstb = wr & (adr_i==3); assign bstb = wr & (adr_i==4);
   assign sr8_sf = {sr8[6:0], misod};
   assign dat_o = (adr_i==0)?sr8_pipe:(adr_i==1)?bb8:(adr_i==2)?{txr,txe}:32'd0;

   // Two-process: next-state wires
   reg [1:0] spi_seq, spi_seq_next;
   wire [DIV_WIDTH-1:0] nxt_cc;
   wire [BC_WIDTH-1:0] nxt_bc;
   wire nxt_ld, nxt_sf, nxt_sck;
   wire [1:0] nxt_state;

   assign nxt_sck = (spi_seq==0) ? cpol : (spi_seq==2) ? (cpol^cpha) : ~(cpol^cpha);
   assign nxt_cc = (spi_seq==0) ? (BAUD_DIV?(BAUD_DIV/2-1):ccr) : (cc==0 ? cc : cc-1);
   assign nxt_state = (spi_seq==0) ? (bba?2:0) :
                      (spi_seq==2) ? ((cc==0)?1:2) :
                      (cc==0) ? ((bc==0)?(bba?2:0):2) : 1;
   assign nxt_bc = (spi_seq==0&&bba) ? 7 : (spi_seq==1&&cc==0) ? ((bc==0)?(bba?7:bc):bc-1) : bc;
   assign nxt_ld = (spi_seq==0&&bba) || (spi_seq==1&&cc==0&&bc==0&&bba);
   assign nxt_sf = (spi_seq==1&&cc==0);

   always @(posedge clk_i or posedge rst_i)
     if(rst_i) spi_seq<=0; else spi_seq<=nxt_state;

   always @(posedge clk_i) begin
     cc<=nxt_cc; bc<=nxt_bc; ld<=nxt_ld; sf<=nxt_sf; sck<=nxt_sck;
   end

   always @(posedge clk_i) begin
     if(cstb) {cpolr,cphar}<=dat_i; if(istb) {txren,txeen}<=dat_i; if(bstb) ccr<=dat_i;
     if(ld) sr8<=bb8; else if(sf) sr8<=sr8_sf;
     sr8_pipe<=sr8;
     if(wstb) bb8<=dat_i; else if(ld) bb8<=(spi_seq==0)?sr8:sr8_sf;
   end

   always @(posedge clk_i or posedge rst_i)
     if(rst_i) bba<=0; else if(wstb) bba<=1; else if(ld) bba<=0;

   assign {cpol,cpha} = ((SPI_MODE>=0)&(SPI_MODE<4))?SPI_MODE:{cpolr,cphar};
   assign txe=(spi_seq==0); assign txr=~bba; assign int_o=(txr&txren)|(txe&txeen);
   assign SCLK=sck; assign MOSI=sr8_pipe[7]; assign misod=MISO;

endmodule