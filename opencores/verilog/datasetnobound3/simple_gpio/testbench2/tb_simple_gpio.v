`timescale 1ns / 1ps

module tb_simple_gpio;
    reg clk_i; reg rst_i;
    reg  cyc_i, stb_i, we_i; reg  adr_i; reg  [7:0] dat_i;
    wire [7:0] dat_o; wire ack_o; wire [7:0] gpio;
    reg  [7:0] gpio_drive; reg  gpio_oe;
    assign gpio = gpio_oe ? gpio_drive : 8'bz;

    simple_gpio #(.io(8)) uut (
        .clk_i(clk_i), .rst_i(rst_i), .cyc_i(cyc_i), .stb_i(stb_i),
        .adr_i(adr_i), .we_i(we_i), .dat_i(dat_i), .dat_o(dat_o),
        .ack_o(ack_o), .gpio(gpio)
    );

    initial clk_i = 0; always #5 clk_i = ~clk_i;

    task wb_write; input addr; input [7:0] data;
        begin @(posedge clk_i); {cyc_i,stb_i,we_i}=3'b111; adr_i<=addr; dat_i<=data;
        @(posedge clk_i); {cyc_i,stb_i,we_i}=3'b000; end endtask

    task wb_read; input addr; output [7:0] data;
        begin @(posedge clk_i); {cyc_i,stb_i,we_i}=3'b110; adr_i<=addr;
        @(posedge clk_i); data=dat_o; {cyc_i,stb_i,we_i}=3'b000; end endtask

    reg [7:0] r; integer i;

    initial begin
        $dumpfile("simple_gpio.vcd"); $dumpvars(0, tb_simple_gpio);
        rst_i=0; {cyc_i,stb_i,we_i}=0; adr_i=0; dat_i=0; gpio_oe=0; gpio_drive=0;
        #100; rst_i=1; #100;

        // Variant 4: all output toggle rapidly
        wb_write(1'b0, 8'hFF);
        for (i=0; i<40; i=i+1) begin
            wb_write(1'b1, (i%3==0) ? 8'hFF : ((i%3==1) ? 8'h00 : 8'hF0));
            #20;
        end

        // Rapid mixed read/write
        for (i=0; i<15; i=i+1) begin
            wb_write(1'b0, (i%2) ? 8'hF0 : 8'h0F);
            wb_write(1'b1, $random % 256);
            #25;
            wb_read(1'b0, r); wb_read(1'b1, r);
        end

        #200; $display("Sim v4 done at %0t", $time); $finish;
    end
endmodule