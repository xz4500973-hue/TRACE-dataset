// lpc_top.v - 封装 LPC 桥接的所有子模块
(* keep_hierarchy = "yes" *) module lpc_top (
    input           clk_i,
    input           nrst_i,

    // Wishbone slave interface (from host CPU)
    input  [31:0]   wbs_adr_i,
    input  [31:0]   wbs_dat_i,
    input  [3:0]    wbs_sel_i,
    input  [1:0]    wbs_tga_i,
    input           wbs_we_i,
    input           wbs_stb_i,
    input           wbs_cyc_i,
    output [31:0]   wbs_dat_o,
    output          wbs_ack_o,
    output          wbs_err_o,

    // DMA control
    input  [2:0]    dma_chan_i,
    input           dma_tc_i,
    input           dma_req_i,

    // Wait state configuration (optional, can be tied to constant)
    input  [7:0]    regfile_ws_i
);

    // Internal LAD bus signals
    wire [3:0]  lad_bus;
    wire        lframe_o;
    wire [3:0]  lad_o_host, lad_o_periph;
    wire        lad_oe_host, lad_oe_periph;

    // Wishbone master signals (from LPC peripheral to register file)
    wire [31:0] wbm_adr_o;
    wire [31:0] wbm_dat_o;
    wire [3:0]  wbm_sel_o;
    wire [1:0]  wbm_tga_o;
    wire        wbm_we_o;
    wire        wbm_stb_o;
    wire        wbm_cyc_o;
    wire        wbm_ack_i;
    wire        wbm_err_i;
    wire [31:0] wbm_dat_i;   // from regfile to peripheral

    // DMA request periph/host connection
    wire        ldrq_o;

    // Wishbone slave address selection for regfile
    wire [31:0] regfile_adr;
    assign regfile_adr = (dma_chan_i == 3'b010) ? 32'h00000008 : wbm_adr_o;

    // ------------------------------------------------------------
    // LPC Host (master) instance
    // ------------------------------------------------------------
    wb_lpc_host UUT_Host (
        .clk_i      (clk_i),
        .nrst_i     (nrst_i),
        .wbs_adr_i  (wbs_adr_i),
        .wbs_dat_o  (wbs_dat_o),
        .wbs_dat_i  (wbs_dat_i),
        .wbs_sel_i  (wbs_sel_i),
        .wbs_tga_i  (wbs_tga_i),
        .wbs_we_i   (wbs_we_i),
        .wbs_stb_i  (wbs_stb_i),
        .wbs_cyc_i  (wbs_cyc_i),
        .wbs_ack_o  (wbs_ack_o),
        .wbs_err_o  (wbs_err_o),
        .dma_chan_i (dma_chan_i),
        .dma_tc_i   (dma_tc_i),
        .lframe_o   (lframe_o),
        .lad_i      (lad_bus),
        .lad_o      (lad_o_host),
        .lad_oe     (lad_oe_host)
    );

    // ------------------------------------------------------------
    // LPC Peripheral (slave) instance
    // ------------------------------------------------------------
    wb_lpc_periph UUT_Periph (
        .clk_i      (clk_i),
        .nrst_i     (nrst_i),
        .wbm_adr_o  (wbm_adr_o),
        .wbm_dat_o  (wbm_dat_o),
        .wbm_dat_i  (wbm_dat_i),
        .wbm_sel_o  (wbm_sel_o),
        .wbm_tga_o  (wbm_tga_o),
        .wbm_we_o   (wbm_we_o),
        .wbm_stb_o  (wbm_stb_o),
        .wbm_cyc_o  (wbm_cyc_o),
        .wbm_ack_i  (wbm_ack_i),
        .wbm_err_i  (wbm_err_i),
        .dma_chan_o (),
        .dma_tc_o   (),
        .lframe_i   (lframe_o),
        .lad_i      (lad_bus),
        .lad_o      (lad_o_periph),
        .lad_oe     (lad_oe_periph)
    );

    // ------------------------------------------------------------
    // DMA request peripherals
    // ------------------------------------------------------------
    wb_dreq_periph UUT_DREQ_Periph (
        .clk_i      (clk_i),
        .nrst_i     (nrst_i),
        .dma_chan_i (dma_chan_i),
        .dma_req_i  (dma_req_i),
        .ldrq_o     (ldrq_o)
    );

    wb_dreq_host UUT_DREQ_Host (
        .clk_i      (clk_i),
        .nrst_i     (nrst_i),
        .dma_chan_o (),
        .dma_req_o  (),
        .ldrq_i     (ldrq_o)
    );

    // ------------------------------------------------------------
    // Register file (Wishbone slave)
    // ------------------------------------------------------------
    wb_regfile regfile (
        .clk_i      (clk_i),
        .nrst_i     (nrst_i),
        .wb_adr_i   (regfile_adr),
        .wb_dat_o   (wbm_dat_i),
        .wb_dat_i   (wbm_dat_o),
        .wb_sel_i   (wbm_sel_o),
        .wb_we_i    (wbm_we_o),
        .wb_stb_i   (wbm_stb_o),
        .wb_cyc_i   (wbm_cyc_o),
        .wb_ack_o   (wbm_ack_i),
        .wb_err_o   (wbm_err_i),
        .ws_i       (regfile_ws_i),
        .datareg0   (),
        .datareg1   ()
    );

    // ------------------------------------------------------------
    // LAD bus tristate logic
    // ------------------------------------------------------------
    assign lad_bus = lad_oe_host ? lad_o_host :
                    (lad_oe_periph ? lad_o_periph : 4'bzzzz);

endmodule