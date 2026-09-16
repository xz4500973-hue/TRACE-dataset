module gfx_bench();

parameter point_width    = 16;
parameter subpixel_width = 16;
parameter fifo_depth     = 10;

  parameter GFX_CONTROL        = 8'h00;
  parameter GFX_STATUS         = 8'h04;
  parameter GFX_ALPHA          = 8'h08;
  parameter GFX_COLORKEY       = 8'h0c;

  parameter GFX_TARGET_BASE    = 8'h10;
  parameter GFX_TARGET_SIZE_X  = 8'h14;
  parameter GFX_TARGET_SIZE_Y  = 8'h18;

  parameter GFX_TEX0_BASE      = 8'h1c;
  parameter GFX_TEX0_SIZE_X    = 8'h20;
  parameter GFX_TEX0_SIZE_Y    = 8'h24;

  parameter GFX_SRC_PIXEL0_X   = 8'h28;
  parameter GFX_SRC_PIXEL0_Y   = 8'h2c;
  parameter GFX_SRC_PIXEL1_X   = 8'h30;
  parameter GFX_SRC_PIXEL1_Y   = 8'h34;

  parameter GFX_DEST_PIXEL_X   = 8'h38;
  parameter GFX_DEST_PIXEL_Y   = 8'h3c;
  parameter GFX_DEST_PIXEL_Z   = 8'h40;

  parameter GFX_AA             = 8'h44;
  parameter GFX_AB             = 8'h48;
  parameter GFX_AC             = 8'h4c;
  parameter GFX_TX             = 8'h50;
  parameter GFX_BA             = 8'h54;
  parameter GFX_BB             = 8'h58;
  parameter GFX_BC             = 8'h5c;
  parameter GFX_TY             = 8'h60;
  parameter GFX_CA             = 8'h64;
  parameter GFX_CB             = 8'h68;
  parameter GFX_CC             = 8'h6c;
  parameter GFX_TZ             = 8'h70;

  parameter GFX_CLIP_PIXEL0_X  = 8'h74;
  parameter GFX_CLIP_PIXEL0_Y  = 8'h78;
  parameter GFX_CLIP_PIXEL1_X  = 8'h7c;
  parameter GFX_CLIP_PIXEL1_Y  = 8'h80;

  parameter GFX_COLOR0         = 8'h84;
  parameter GFX_COLOR1         = 8'h88;
  parameter GFX_COLOR2         = 8'h8c;

  parameter GFX_U0             = 8'h90;
  parameter GFX_V0             = 8'h94;
  parameter GFX_U1             = 8'h98;
  parameter GFX_V1             = 8'h9c;
  parameter GFX_U2             = 8'ha0;
  parameter GFX_V2             = 8'ha4;

  parameter GFX_ZBUFFER_BASE   = 8'ha8;

  // Declare control register bits
  parameter GFX_CTRL_COLOR_DEPTH = 0;
  parameter GFX_CTRL_TEXTURE  = 2;
  parameter GFX_CTRL_BLENDING = 3;
  parameter GFX_CTRL_COLORKEY = 4;
  parameter GFX_CTRL_CLIPPING = 5;
  parameter GFX_CTRL_ZBUFFER  = 6;
  
  parameter GFX_CTRL_RECT     = 8;
  parameter GFX_CTRL_LINE     = 9;
  parameter GFX_CTRL_TRI      = 10;
  parameter GFX_CTRL_CURVE    = 11;
  parameter GFX_CTRL_INTERP   = 12;
  parameter GFX_CTRL_INSIDE   = 13;

  parameter GFX_CTRL_ACTIVE_POINT    = 16;
  parameter GFX_CTRL_FORWARD_POINT   = 18;
  parameter GFX_CTRL_TRANSFORM_POINT = 19;

  // Declare status register bits
  parameter GFX_STAT_BUSY     = 0;

// GENERATE PARAMETERS FROM gfx_params.v (same as above)
parameter GFX_CTRL_CD8         = 0;
parameter GFX_CTRL_CD16        = 1 << GFX_CTRL_COLOR_DEPTH;
parameter GFX_CTRL_CD24        = 2 << GFX_CTRL_COLOR_DEPTH;
parameter GFX_CTRL_CD32        = 3 << GFX_CTRL_COLOR_DEPTH;
parameter GFX_CTRL_CDMASK      = 3 << GFX_CTRL_COLOR_DEPTH;
parameter GFX_TEXTURE_ENABLE   = 1 << GFX_CTRL_TEXTURE;
parameter GFX_BLEND_ENABLE     = 1 << GFX_CTRL_BLENDING;
parameter GFX_COLORKEY_ENABLE  = 1 << GFX_CTRL_COLORKEY;
parameter GFX_CLIPPING_ENABLE  = 1 << GFX_CTRL_CLIPPING;
parameter GFX_ZBUFFER_ENABLE   = 1 << GFX_CTRL_ZBUFFER;
parameter GFX_DRAW_RECT        = 1 << GFX_CTRL_RECT;
parameter GFX_DRAW_LINE        = 1 << GFX_CTRL_LINE;
parameter GFX_DRAW_TRI         = 1 << GFX_CTRL_TRI;
parameter GFX_DRAW_CURVE       = 1 << GFX_CTRL_CURVE;
parameter GFX_INTERP           = 1 << GFX_CTRL_INTERP;
parameter GFX_INSIDE           = 1 << GFX_CTRL_INSIDE;
parameter GFX_ACTIVE_POINT0    = 0;
parameter GFX_ACTIVE_POINT1    = 1 << GFX_CTRL_ACTIVE_POINT;
parameter GFX_ACTIVE_POINT2    = 2 << GFX_CTRL_ACTIVE_POINT;
parameter GFX_ACTIVE_POINTMASK = 3 << GFX_CTRL_ACTIVE_POINT;
parameter GFX_FORWARD_POINT    = 1 << GFX_CTRL_FORWARD_POINT;
parameter GFX_TRANSFORM_POINT  = 1 << GFX_CTRL_TRANSFORM_POINT;

// Common wishbone signals
reg         wb_clk_i;    reg         wb_rst_i;    wire        wb_inta_o;
wire        wbm_write_cyc_o;    wire        wbm_write_stb_o;    wire [ 2:0] wbm_write_cti_o;    wire [ 1:0] wbm_write_bte_o;
wire        wbm_write_we_o;     wire [31:0] wbm_write_adr_o;    wire [ 3:0] wbm_write_sel_o;
reg         wbm_write_ack_i;    reg         wbm_write_err_i;    wire [31:0] wbm_write_dat_o;
wire        wbm_read_cyc_o;     wire        wbm_read_stb_o;     wire [ 2:0] wbm_read_cti_o;    wire [ 1:0] wbm_read_bte_o;
wire        wbm_read_we_o;      wire [31:0] wbm_read_adr_o;     wire [ 3:0] wbm_read_sel_o;
reg         wbm_read_ack_i;     reg         wbm_read_err_i;     reg  [31:0] wbm_read_dat_i;
reg         wbs_cyc_i;          reg         wbs_stb_i;          reg  [ 2:0] wbs_cti_i;    reg  [ 1:0] wbs_bte_i;
reg         wbs_we_i;           reg  [31:0] wbs_adr_i;          reg  [ 3:0] wbs_sel_i;
wire        wbs_ack_o;          wire        wbs_err_o;          reg  [31:0] wbs_dat_i;    wire [31:0] wbs_dat_o;

parameter GFX_VMEM            = 32'h00800000;

initial begin
  $dumpfile("gfx_config_only.vcd");
  $dumpvars(0,gfx_bench);
  wb_clk_i = 0; wb_rst_i = 1;
  wbm_write_ack_i = 0; wbm_read_ack_i = 0; wbm_write_err_i = 0; wbm_read_err_i = 0;
  wbs_cyc_i = 0; wbs_cti_i = 0; wbs_bte_i = 0; wbs_adr_i = 0; wbs_sel_i = 4'b1111; wbs_dat_i = 0;
  wbs_we_i = 1; wbs_stb_i = 1;
  wbm_read_dat_i = 32'h00000000;
  #2 wb_rst_i = 0;

  // Full configuration (no drawing)
  #2 wbs_cyc_i = 1; wbs_adr_i = GFX_COLOR0; wbs_dat_i = 32'h12345671; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = GFX_VMEM; wbs_adr_i = GFX_TARGET_BASE; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 640; wbs_adr_i = GFX_TARGET_SIZE_X; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 480; wbs_adr_i = GFX_TARGET_SIZE_Y; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = GFX_CTRL_CD16; wbs_adr_i = GFX_CONTROL; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 32'h0000F18F; wbs_adr_i = GFX_COLORKEY; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = GFX_COLORKEY_ENABLE | GFX_CTRL_CD16; wbs_adr_i = GFX_CONTROL; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 0; wbs_adr_i = GFX_CLIP_PIXEL0_X; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 0; wbs_adr_i = GFX_CLIP_PIXEL0_Y; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 640; wbs_adr_i = GFX_CLIP_PIXEL1_X; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 480; wbs_adr_i = GFX_CLIP_PIXEL1_Y; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = GFX_TEXTURE_ENABLE | GFX_COLORKEY_ENABLE | GFX_CTRL_CD16; wbs_adr_i = GFX_CONTROL; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = GFX_VMEM; wbs_adr_i = GFX_TEX0_BASE; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 10; wbs_adr_i = GFX_TEX0_SIZE_X; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 10; wbs_adr_i = GFX_TEX0_SIZE_Y; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 0; wbs_adr_i = GFX_U0; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 0; wbs_adr_i = GFX_V0; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 100; wbs_adr_i = GFX_U1; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 0; wbs_adr_i = GFX_V1; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 100; wbs_adr_i = GFX_U2; #4 wbs_cyc_i = 0;
  #2 wbs_cyc_i = 1; wbs_dat_i = 100; wbs_adr_i = GFX_V2; #4 wbs_cyc_i = 0;

  #1000000;
  $finish;
end

always @(posedge wb_clk_i) begin
  wbm_write_ack_i <= #1 wbm_write_cyc_o & !wbm_write_ack_i;
  wbm_read_ack_i  <= #1 wbm_read_cyc_o  & !wbm_read_ack_i;
end
always #5 wb_clk_i = ~wb_clk_i;

gfx_top top( .wb_clk_i (wb_clk_i), .wb_rst_i (wb_rst_i), .wb_inta_o (wb_inta_o),
  .wbm_write_cyc_o (wbm_write_cyc_o), .wbm_write_stb_o (wbm_write_stb_o), .wbm_write_cti_o (wbm_write_cti_o),
  .wbm_write_bte_o (wbm_write_bte_o), .wbm_write_we_o (wbm_write_we_o), .wbm_write_adr_o (wbm_write_adr_o),
  .wbm_write_sel_o (wbm_write_sel_o), .wbm_write_ack_i (wbm_write_ack_i), .wbm_write_err_i (wbm_write_err_i),
  .wbm_write_dat_o (wbm_write_dat_o), .wbm_read_cyc_o (wbm_read_cyc_o), .wbm_read_stb_o (wbm_read_stb_o),
  .wbm_read_cti_o (wbm_read_cti_o), .wbm_read_bte_o (wbm_read_bte_o), .wbm_read_we_o (wbm_read_we_o),
  .wbm_read_adr_o (wbm_read_adr_o), .wbm_read_sel_o (wbm_read_sel_o), .wbm_read_ack_i (wbm_read_ack_i),
  .wbm_read_err_i (wbm_read_err_i), .wbm_read_dat_i (wbm_read_dat_i), .wbs_cyc_i (wbs_cyc_i),
  .wbs_stb_i (wbs_stb_i), .wbs_cti_i (wbs_cti_i), .wbs_bte_i (wbs_bte_i), .wbs_we_i (wbs_we_i),
  .wbs_adr_i (wbs_adr_i), .wbs_sel_i (wbs_sel_i), .wbs_ack_o (wbs_ack_o), .wbs_err_o (wbs_err_o),
  .wbs_dat_i (wbs_dat_i), .wbs_dat_o (wbs_dat_o) );
endmodule