`timescale 1ns / 100ps

module tb_tiny_spi;
    reg rst_i, clk_i, stb_i, we_i, cyc_i;
    reg [2:0] adr_i;
    reg [31:0] dat_i;
    wire [31:0] dat_o;
    wire ack_o, int_o;
    wire MOSI, SCLK;
    reg MISO;

    tiny_spi #(.BAUD_WIDTH(8),.BAUD_DIV(0),.SPI_MODE(0),.BC_WIDTH(3)) uut(
        .rst_i(rst_i),.clk_i(clk_i),.stb_i(stb_i),.we_i(we_i),.dat_o(dat_o),
        .dat_i(dat_i),.int_o(int_o),.adr_i(adr_i),.cyc_i(cyc_i),.ack_o(ack_o),
        .MOSI(MOSI),.SCLK(SCLK),.MISO(MISO));

    initial clk_i=0; always #10 clk_i=~clk_i;

    task wr; input [2:0] a; input [31:0] d;
      begin @(posedge clk_i); adr_i<=a;dat_i<=d;we_i<=1;stb_i<=1;cyc_i<=1;
            @(posedge clk_i);stb_i<=0;cyc_i<=0;we_i<=0; end endtask

    integer i;
    initial begin
        $dumpfile("tiny_spi.vcd"); $dumpvars(0,tb_tiny_spi);
        rst_i=1; stb_i=0;we_i=0;cyc_i=0;adr_i=0;dat_i=0;MISO=0;
        #100 rst_i=0; #100;
        wr(4,32'd1); wr(2,32'h3);
        // Different pattern: more data, MISO toggling
        for(i=0;i<128;i=i+1) begin MISO<=$random%2; wr(1,$random%256); #800; end
        // Fixed bytes with known MISO
        MISO<=1; wr(1,8'hFF); #2000;
        MISO<=0; wr(1,8'h00); #2000;
        #5000;
        $display("Simulation finished at %0t",$time); $finish;
    end
endmodule