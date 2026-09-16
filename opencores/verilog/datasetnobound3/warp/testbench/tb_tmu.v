module tb_tmu_idle();

parameter fml_depth = 26;
parameter wbm_depth = 26;

reg sys_clk;
reg sys_rst;

reg [13:0] csr_a;
reg csr_we;
reg [31:0] csr_di;
wire [31:0] csr_do;

wire irq;

wire [31:0] wbm_adr_o;
wire [2:0] wbm_cti_o;
wire wbm_cyc_o;
wire wbm_stb_o;
reg wbm_ack_i;
reg [31:0] wbm_dat_i;

wire [fml_depth-1:0] fmlr_adr;
wire fmlr_stb;
reg fmlr_ack;
reg [63:0] fmlr_di;

wire [fml_depth-1:0] fmlw_adr;
wire fmlw_stb;
reg fmlw_ack;
wire [7:0] fmlw_sel;
wire [63:0] fmlw_do;

// 时钟
initial sys_clk = 1'b0;
always #5 sys_clk = ~sys_clk;

// DUT 实例化
tmu #(
    .fml_depth(fml_depth),
    .pixin_cache_depth(12)
) dut (
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .csr_a(csr_a),
    .csr_we(csr_we),
    .csr_di(csr_di),
    .csr_do(csr_do),
    .irq(irq),
    .wbm_adr_o(wbm_adr_o),
    .wbm_cti_o(wbm_cti_o),
    .wbm_cyc_o(wbm_cyc_o),
    .wbm_stb_o(wbm_stb_o),
    .wbm_ack_i(wbm_ack_i),
    .wbm_dat_i(wbm_dat_i),
    .fmlr_adr(fmlr_adr),
    .fmlr_stb(fmlr_stb),
    .fmlr_ack(fmlr_ack),
    .fmlr_di(fmlr_di),
    .fmlw_adr(fmlw_adr),
    .fmlw_stb(fmlw_stb),
    .fmlw_ack(fmlw_ack),
    .fmlw_sel(fmlw_sel),
    .fmlw_do(fmlw_do)
);

// Wishbone 读回环（简单返回固定值，确保不 stall）
always @(posedge sys_clk) begin
    if (wbm_stb_o && !wbm_ack_i) begin
        wbm_dat_i <= 32'hDEADBEEF;
        wbm_ack_i <= 1'b1;
    end else
        wbm_ack_i <= 1'b0;
end

// FML 读回环（简单返回零）
always @(posedge sys_clk) begin
    fmlr_ack <= fmlr_stb;
    if (fmlr_stb)
        fmlr_di <= 64'h0;
end

// FML 写回环（只应答）
always @(posedge sys_clk) begin
    fmlw_ack <= fmlw_stb;
end

task waitclock;
    @(posedge sys_clk);
    #1;
endtask

task csrwrite;
    input [31:0] address;
    input [31:0] data;
begin
    csr_a = address[16:2];
    csr_di = data;
    csr_we = 1'b1;
    waitclock;
    $display("CSR Write: %x=%x", address, data);
    csr_we = 1'b0;
end
endtask

task csrread;
    input [31:0] address;
begin
    csr_a = address[16:2];
    waitclock;
    $display("CSR Read : %x=%x", address, csr_do);
end
endtask

initial begin
    $dumpfile("tmu_idle.vcd");
    $dumpvars(0, tb_tmu_idle);
    sys_rst=1;csr_a=0;csr_di=0;csr_we=0;fmlr_di=0;fmlr_ack=0;fmlw_ack=0;
     waitclock;sys_rst=0;waitclock;
     // Different address and mesh settings
     csrwrite(32'h24,32'h03000000);
     csrwrite(32'h08,32'd1); csrwrite(32'h10,32'd1);
     csrwrite(32'h0c,32'd10); csrwrite(32'h14,32'd10);
     csrwrite(32'h00,32'd1);
    #20000;
    $finish;
end

endmodule
