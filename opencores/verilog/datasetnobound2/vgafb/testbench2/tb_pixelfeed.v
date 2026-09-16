`timescale 1ns / 1ps

module tb_pixelfeed;

    reg sys_clk,sys_rst,vga_rst;
    wire pixel_valid; wire fml_stb; wire [25:0] fml_adr;
    integer seed;

    initial sys_clk=0; always #5 sys_clk=~sys_clk;
    reg [63:0] fml_di;
    vgafb_pixelfeed dut(
        .sys_clk(sys_clk),.sys_rst(sys_rst),.vga_rst(vga_rst),
        .nbursts(18'd200),.baseaddress(26'd4096),.baseaddress_ack(),
        .fml_adr(fml_adr),.fml_stb(fml_stb),.fml_ack(fml_stb),
        .fml_di(fml_di),.dcb_stb(),.dcb_adr(),.dcb_dat(64'h0),.dcb_hit(1'b0),
        .pixel_valid(pixel_valid),.pixel(),.pixel_ack(pixel_valid));


    always @(posedge sys_clk) if(fml_stb) fml_di<={$urandom(seed),$urandom(seed)};

    initial begin
        $dumpfile("vgafb_pixelfeed.vcd"); $dumpvars(0,tb_pixelfeed);
        seed=54321; fml_di=64'h0; sys_rst=1; vga_rst=1;
        #30 sys_rst=0; #30 vga_rst=0;
        #50000;
        $display("doone at %0t",$time); $finish;
    end

endmodule