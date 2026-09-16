// tiny_spi.v - dataset2: if-else FSM, merged sequential blocks

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

   reg [7:0] sr8, bb8;
   wire [7:0] sr8_sf;
   reg [BC_WIDTH-1:0] bc, bc_next;
   reg [DIV_WIDTH-1:0] ccr, cc, cc_next;
   reg sck, sf, ld, bba, txren, txeen;
   wire cpol, cpha;
   reg cpolr, cphar;
   wire wr, wstb, istb, cstb, bstb, txr, txe;
   wire misod;

   assign ack_o = stb_i & cyc_i;
   assign wr = stb_i & cyc_i & we_i & ack_o;
   assign wstb = wr & (adr_i==1);
   assign istb = wr & (adr_i==2);
   assign cstb = wr & (adr_i==3);
   assign bstb = wr & (adr_i==4);
   assign sr8_sf = {sr8[6:0], misod};

   // dat_o using if-else chain instead of bitwise
   assign dat_o = (adr_i==0) ? sr8 : (adr_i==1) ? bb8 : (adr_i==2) ? {txr,txe} : 32'd0;

   reg [1:0] spi_seq, spi_seq_next;
   always @(posedge clk_i or posedge rst_i)
     if(rst_i) spi_seq<=0; else spi_seq<=spi_seq_next;

   always @(posedge clk_i) begin cc<=cc_next; bc<=bc_next; end

   // Merged combinational FSM (if-else chain)
   always @(*) begin
     sck=cpolarity(); cc_next=BAUD_DIV?(BAUD_DIV/2-1):ccr; bc_next=bc; ld=0; sf=0;
     if(spi_seq==0)begin // IDLE
       if(bba)begin bc_next=7;ld=1;spi_seq_next=2;end else spi_seq_next=0;
     end else if(spi_seq==2)begin // PHASE2
       sck=cpol^cpha; spi_seq_next=(cc==0)?1:2; if(cc!=0)cc_next=cc-1;
     end else begin // PHASE1
       sck=~(cpol^cpha);
       if(cc==0)begin bc_next=bc-1;sf=1;
         if(bc==0)begin if(bba)begin bc_next=7;ld=1;spi_seq_next=2;end else spi_seq_next=0;end else spi_seq_next=2;
       end else begin cc_next=cc-1;spi_seq_next=1;end
     end
   end

   // Combined sequential block
   always @(posedge clk_i) begin
     if(cstb) {cpolr,cphar}<=dat_i;
     if(istb) {txren,txeen}<=dat_i;
     if(bstb) ccr<=dat_i;
     if(ld) sr8<=bb8; else if(sf) sr8<=sr8_sf;
     if(wstb) bb8<=dat_i; else if(ld) bb8<=(spi_seq==0)?sr8:sr8_sf;
   end

   always @(posedge clk_i or posedge rst_i)
     if(rst_i) bba<=0; else if(wstb) bba<=1; else if(ld) bba<=0;

   function cpolarity; begin cpolarity=cpol; end endfunction // placeholder

   assign {cpol,cpha} = ((SPI_MODE>=0)&(SPI_MODE<4))?SPI_MODE:{cpolr,cphar};
   assign txe=(spi_seq==0); assign txr=~bba; assign int_o=(txr&txren)|(txe&txeen);
   assign SCLK=sck; assign MOSI=sr8[7]; assign misod=MISO;

endmodule