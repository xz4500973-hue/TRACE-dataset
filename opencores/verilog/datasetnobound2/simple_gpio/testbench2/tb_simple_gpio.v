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

        // Variant 2: alternating pattern 0x55/0xAA on outputs
        wb_write(1'b0, 8'h55);  // half pins as output
        for (i=0; i<30; i=i+1) begin
            wb_write(1'b1, (i%2) ? 8'hAA : 8'h55);
            #30;
        end

        wb_write(1'b0, 8'h0F);  // lower 4 output, upper 4 input
        gpio_oe = 1;
        for (i=0; i<15; i=i+1) begin
            gpio_drive = {4'bz, $random % 16};
            #40;
            wb_read(1'b1, r);
        end

        #300; $display("Sim v2 done at %0t", $time); $finish;
    end
endmodule