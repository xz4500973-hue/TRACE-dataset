`timescale 1ns / 1ps

module tb_wb_flash;
    parameter aw=19,dw=32,ws=4'hf;
    reg clk_i,nrst_i; reg [aw-1:0] wb_adr_i; reg [dw-1:0] wb_dat_i;
    reg [3:0] wb_sel_i; reg wb_we_i,wb_stb_i,wb_cyc_i;
    wire [dw-1:0] wb_dat_o; wire wb_ack_o;
    wire [18:0] flash_adr_o; wire [7:0] flash_dat_o;
    reg [7:0] flash_dat_i; wire flash_oe,flash_ce,flash_we;

    wb_flash #(.aw(aw),.dw(dw),.ws(ws)) uut(.clk_i(clk_i),.nrst_i(nrst_i),.wb_adr_i(wb_adr_i),.wb_dat_o(wb_dat_o),.wb_dat_i(wb_dat_i),.wb_sel_i(wb_sel_i),.wb_we_i(wb_we_i),.wb_stb_i(wb_stb_i),.wb_cyc_i(wb_cyc_i),.wb_ack_o(wb_ack_o),.flash_adr_o(flash_adr_o),.flash_dat_o(flash_dat_o),.flash_dat_i(flash_dat_i),.flash_oe(flash_oe),.flash_ce(flash_ce),.flash_we(flash_we));

    initial clk_i=0; always #5 clk_i=~clk_i;

    task wr; input [aw-1:0] a; input [31:0] d; input [3:0] s;
      begin @(posedge clk_i); wb_adr_i<=a;wb_dat_i<=d;wb_sel_i<=s;wb_we_i<=1;wb_cyc_i<=1;wb_stb_i<=1;
            @(posedge clk_i);while(!wb_ack_o)@(posedge clk_i);wb_cyc_i<=0;wb_stb_i<=0;wb_we_i<=0;end endtask

    reg [31:0] rd; integer i; reg [7:0] mem[0:2**aw-1];

    initial begin
        $dumpfile("wb_flash.vcd");$dumpvars(0,tb_wb_flash);
        nrst_i=0;wb_adr_i=0;wb_dat_i=0;wb_sel_i=0;wb_we_i=0;wb_cyc_i=0;wb_stb_i=0;flash_dat_i=8'hFF;
        for(i=0;i<2048;i=i+1) mem[i]=$random%256;
        #100;nrst_i=1;#100;

        // Random mixed access
        for(i=0;i<100;i=i+1)begin wr($random%1024,$random,{$random}%16+1); end
        #1000;$display("Done at %0t",$time);$finish;
    end

    always @(posedge clk_i) flash_dat_i<=(!flash_ce&&!flash_oe)?mem[flash_adr_o]:8'hFF;

endmodule