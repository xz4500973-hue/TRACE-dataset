/////////////////////////////////////////////////////////////////////
////                                                             ////
////  OpenCores                    MC68HC11E based SPI interface ////
////                                                             ////
////  Author: Richard Herveille                                  ////
////          richard@asics.ws                                   ////
////          www.asics.ws                                       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////  Refactored variant (dataset3): two-process FSM with nxt_state
/////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module simple_spi_top(
  input  wire       clk_i,
  input  wire       rst_i,
  input  wire       cyc_i,
  input  wire       stb_i,
  input  wire [1:0] adr_i,
  input  wire       we_i,
  input  wire [7:0] dat_i,
  output reg  [7:0] dat_o,
  output reg        ack_o,
  output reg        inta_o,
  output reg        sck_o,
  output wire       mosi_o,
  input  wire       miso_i
);

  reg  [7:0] spcr;
  wire [7:0] spsr;
  reg  [7:0] sper;
  reg  [7:0] treg, rreg;

  wire [7:0] rfdout;
  reg        wfre, rfwe;
  wire       rfre, rffull, rfempty;
  wire [7:0] wfdout;
  wire       wfwe, wffull, wfempty;

  wire      tirq;
  wire      wfov;
  reg [1:0] state;
  reg [1:0] nxt_state;  // dataset3: two-process next state wire
  reg [2:0] bcnt;

  wire wb_acc = cyc_i & stb_i;
  wire wb_wr  = wb_acc & we_i;

  always @(posedge clk_i or negedge rst_i)
    if (~rst_i) begin
      spcr <= #1 8'h10;
      sper <= #1 8'h00;
    end else if (wb_wr) begin
      if (adr_i == 2'b00) spcr <= #1 dat_i | 8'h10;
      if (adr_i == 2'b11) sper <= #1 dat_i;
    end

  assign wfwe = wb_acc & (adr_i == 2'b10) & ack_o &  we_i;
  assign wfov = wfwe & wffull;

  always @(posedge clk_i)
    case(adr_i)
      2'b00: dat_o <= #1 spcr;
      2'b01: dat_o <= #1 spsr;
      2'b10: dat_o <= #1 rfdout;
      2'b11: dat_o <= #1 sper;
    endcase

  assign rfre = wb_acc & (adr_i == 2'b10) & ack_o & ~we_i;

  always @(posedge clk_i or negedge rst_i)
    if (~rst_i) ack_o <= #1 1'b0;
    else ack_o <= #1 wb_acc & !ack_o;

  wire       spie = spcr[7];
  wire       spe  = spcr[6];
  wire       cpol = spcr[3];
  wire       cpha = spcr[2];
  wire [1:0] spr  = spcr[1:0];
  wire [1:0] icnt = sper[7:6];
  wire [1:0] spre = sper[1:0];
  wire [3:0] espr = {spre, spr};
  wire wr_spsr = wb_wr & (adr_i == 2'b01);

  reg spif;
  always @(posedge clk_i)
    if (~spe) spif <= #1 1'b0;
    else spif <= #1 (tirq | spif) & ~(wr_spsr & dat_i[7]);

  reg wcol;
  always @(posedge clk_i)
    if (~spe) wcol <= #1 1'b0;
    else wcol <= #1 (wfov | wcol) & ~(wr_spsr & dat_i[6]);

  assign spsr[7] = spif;    assign spsr[6] = wcol;
  assign spsr[5:4] = 2'b00; assign spsr[3] = wffull;
  assign spsr[2] = wfempty; assign spsr[1] = rffull;
  assign spsr[0] = rfempty;

  always @(posedge clk_i) inta_o <= #1 spif & spie;

  fifo4 #(8)
  rfifo(.clk(clk_i),.rst(rst_i),.clr(~spe),.din(treg),.we(rfwe),.dout(rfdout),.re(rfre),.full(rffull),.empty(rfempty)),
  wfifo(.clk(clk_i),.rst(rst_i),.clr(~spe),.din(dat_i),.we(wfwe),.dout(wfdout),.re(wfre),.full(wffull),.empty(wfempty));

  reg [11:0] clkcnt;
  always @(posedge clk_i)
    if(spe & (|clkcnt & |state)) clkcnt <= #1 clkcnt - 11'h1;
    else
      case (espr)
        4'b0000: clkcnt <= #1 12'h0;   4'b0001: clkcnt <= #1 12'h1;
        4'b0010: clkcnt <= #1 12'h3;   4'b0011: clkcnt <= #1 12'hf;
        4'b0100: clkcnt <= #1 12'h1f;  4'b0101: clkcnt <= #1 12'h7;
        4'b0110: clkcnt <= #1 12'h3f;  4'b0111: clkcnt <= #1 12'h7f;
        4'b1000: clkcnt <= #1 12'hff;  4'b1001: clkcnt <= #1 12'h1ff;
        4'b1010: clkcnt <= #1 12'h3ff; 4'b1011: clkcnt <= #1 12'h7ff;
      endcase

  wire ena = ~|clkcnt;

  // Comb next-state logic
  always @(state or wfempty or ena or cpol or cpha or bcnt or miso_i or treg or wfdout) begin
    nxt_state = state;
    case (state)
      2'b00: if (~wfempty) nxt_state = 2'b01;
      2'b01: if (ena)      nxt_state = 2'b11;
      2'b11: if (ena)      nxt_state = (~|bcnt) ? 2'b00 : 2'b01;
      2'b10: nxt_state = 2'b00;
    endcase
  end

  // Sequential FSM
  always @(posedge clk_i) begin
    if (~spe) begin
      state <= #1 2'b00; bcnt <= #1 3'h0; treg <= #1 8'h00;
      wfre <= #1 1'b0; rfwe <= #1 1'b0; sck_o <= #1 1'b0;
    end else begin
      state <= nxt_state;
      wfre <= #1 1'b0; rfwe <= #1 1'b0;
      if (state == 2'b00) begin
        bcnt <= #1 3'h7; treg <= #1 wfdout; sck_o <= #1 cpol;
        if (~wfempty) begin wfre <= #1 1'b1; if (cpha) sck_o <= #1 ~sck_o; end
      end
      else if (state == 2'b01) begin
        if (ena) begin sck_o <= #1 ~sck_o; end
      end
      else if (state == 2'b11) begin
        if (ena) begin
          treg <= #1 {treg[6:0], miso_i}; bcnt <= #1 bcnt -3'h1;
          if (~|bcnt) begin sck_o <= #1 cpol; rfwe <= #1 1'b1; end
          else begin sck_o <= #1 ~sck_o; end
        end
      end
    end
  end

  assign mosi_o = treg[7];

  reg [1:0] tcnt;
  always @(posedge clk_i)
    if (~spe) tcnt <= #1 icnt;
    else if (rfwe) tcnt <= #1 (|tcnt) ? (tcnt - 2'h1) : icnt;

  assign tirq = ~|tcnt & rfwe;

endmodule