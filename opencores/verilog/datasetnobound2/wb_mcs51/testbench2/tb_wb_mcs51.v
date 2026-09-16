`timescale 1ns / 1ps

module tb_wb_mcs51;

    parameter mcs51_aw = 8;
    parameter wb_aw = 16;

    reg nrst_i,clk_i;
    reg mcs51_ale,mcs51_rd,mcs51_wr;
    wire [mcs51_aw-1:0] mcs51_ad_inout;
    wire [wb_aw-1:0] wbm_adr_o;
    wire [7:0] wbm_dat_i,wbm_dat_o;
    wire wbm_sel_o,wbm_cyc_o,wbm_stb_o,wbm_we_o;
    reg wbm_ack_i,wbm_rty_i,wbm_err_i;
    reg [7:0] wbm_dat_i_reg;
    reg [mcs51_aw-1:0] mcs51_ad_drive;
    reg mcs51_ad_oe;
    assign mcs51_ad_inout = mcs51_ad_oe ? mcs51_ad_drive : {mcs51_aw{1'bz}};

    wb_mcs51 #(.mcs51_aw(mcs51_aw),.wb_aw(wb_aw)) uut(
        .nrst_i(nrst_i),.clk_i(clk_i),.mcs51_ale(mcs51_ale),.mcs51_rd(mcs51_rd),
        .mcs51_wr(mcs51_wr),.mcs51_ad_inout(mcs51_ad_inout),.wbm_adr_o(wbm_adr_o),
        .wbm_dat_i(wbm_dat_i),.wbm_dat_o(wbm_dat_o),.wbm_sel_o(wbm_sel_o),
        .wbm_cyc_o(wbm_cyc_o),.wbm_stb_o(wbm_stb_o),.wbm_we_o(wbm_we_o),
        .wbm_ack_i(wbm_ack_i),.wbm_rty_i(wbm_rty_i),.wbm_err_i(wbm_err_i));

    always @(posedge clk_i or negedge nrst_i)
        if(!nrst_i) begin wbm_ack_i<=0;wbm_dat_i_reg<=0;wbm_rty_i<=0;wbm_err_i<=0; end
        else begin
            if(wbm_cyc_o&&wbm_stb_o&&!wbm_ack_i) begin wbm_ack_i<=1;if(!wbm_we_o) wbm_dat_i_reg<=$random%256; end
            else wbm_ack_i<=0; end
    assign wbm_dat_i=wbm_dat_i_reg;

    initial clk_i=0; always #5 clk_i=~clk_i;

    task wr; input [mcs51_aw-1:0] a; input [7:0] d;
        begin mcs51_ale=1;mcs51_rd=1;mcs51_wr=1;mcs51_ad_oe=1;mcs51_ad_drive=a;
        #20;mcs51_ale=0;#10;mcs51_ad_drive=d;mcs51_wr=0;#40;mcs51_wr=1;#10;mcs51_ad_oe=0; end endtask

    task rd; input [mcs51_aw-1:0] a; output [7:0] d;
        begin mcs51_ale=1;mcs51_rd=1;mcs51_wr=1;mcs51_ad_oe=1;mcs51_ad_drive=a;
        #20;mcs51_ale=0;#10;mcs51_ad_oe=0;mcs51_rd=0;#40;d=mcs51_ad_inout;mcs51_rd=1;#10; end endtask

    integer i; reg [7:0] r;

    initial begin
        $dumpfile("wb_mcs51.vcd"); $dumpvars(0,tb_wb_mcs51);
        nrst_i=0;mcs51_ale=1;mcs51_rd=1;mcs51_wr=1;mcs51_ad_oe=0;mcs51_ad_drive=0;
        #100;nrst_i=1;#100;

        // Random burst access
        for(i=0;i<100;i=i+1) begin
            wr($random%256,$random%256);
            if(i%3==0) rd($random%256,r);
        end

        #1000; $display("Done at %0t",$time); $finish;
    end

endmodule