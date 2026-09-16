/////////////////////////////////////////////////////////////////////
////  OpenCores Simple General Purpose IO core (dataset3: nxt_* style refactored)
/////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module simple_gpio(
  clk_i, rst_i, cyc_i, stb_i, adr_i, we_i, dat_i, dat_o, ack_o,
  gpio
);
  parameter io = 8;
  input         clk_i;
  input         rst_i;
  input         cyc_i;
  input         stb_i;
  input         adr_i;
  input         we_i;
  input  [ 7:0] dat_i;
  output [ 7:0] dat_o;
  output        ack_o;
  inout  [io:1] gpio;

  reg [io:1] ctrl, line;
  reg [io:1] lgpio, llgpio;

  wire wb_acc = cyc_i & stb_i;
  wire wb_wr  = wb_acc & we_i;

  // Dataset3: nxt_* combinational wires for ctrl/line write mux
  wire [io:1] nxt_ctrl, nxt_line;
  assign nxt_ctrl = (wb_wr && ~adr_i) ? dat_i[io-1:0] : ctrl;
  assign nxt_line = (wb_wr &&  adr_i) ? dat_i[io-1:0] : line;

  always @(posedge clk_i or negedge rst_i)
    if (~rst_i) begin
      ctrl <= #1 {{io}{1'b0}};
      line <= #1 {{io}{1'b0}};
    end else begin
      ctrl <= #1 nxt_ctrl;
      line <= #1 nxt_line;
    end

  reg [7:0] dat_o;
  always @(posedge clk_i)
    case(adr_i)
      1'b0: dat_o <= #1 { {{8-io}{1'b0}}, ctrl};
      1'b1: dat_o <= #1 { {{8-io}{1'b0}}, llgpio};
    endcase

  reg ack_o;
  always @(posedge clk_i or negedge rst_i)
    if (~rst_i) ack_o <= #1 1'b0;
    else ack_o <= #1 wb_acc & !ack_o;

  always @(posedge clk_i) lgpio <= #1 gpio;
  always @(posedge clk_i) llgpio <= #1 lgpio;

  // Dataset3: generate-for loop for output mux
  genvar n;
  generate
    for(n=1; n<=io; n=n+1) begin : gpio_out_gen
      assign gpio[n] = ctrl[n] ? line[n] : 1'bz;
    end
  endgenerate

endmodule