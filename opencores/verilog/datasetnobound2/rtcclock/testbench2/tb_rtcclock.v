`timescale 1ns / 1ps

module tb_rtcclock;
    reg clk; reg i_wb_cyc, i_wb_stb, i_wb_we;
    reg [2:0] i_wb_addr; reg [31:0] i_wb_data;
    wire [31:0] o_data; wire [31:0] o_sseg;
    wire [15:0] o_led; wire o_interrupt, o_ppd;
    reg i_hack;
    rtcclock dut (.i_clk(clk),.i_wb_cyc(i_wb_cyc),.i_wb_stb(i_wb_stb),.i_wb_we(i_wb_we),.i_wb_addr(i_wb_addr),.i_wb_data(i_wb_data),.o_data(o_data),.o_sseg(o_sseg),.o_led(o_led),.o_interrupt(o_interrupt),.o_ppd(o_ppd),.i_hack(i_hack));

    initial clk=0; always #30 clk=~clk;  // ~16.7MHz

    task wb_write; input [2:0] addr; input [31:0] data;
        begin @(posedge clk); i_wb_cyc<=1; i_wb_stb<=1; i_wb_we<=1; i_wb_addr<=addr; i_wb_data<=data;
        @(posedge clk); i_wb_cyc<=0; i_wb_stb<=0; i_wb_we<=0; end
    endtask

    initial begin
        $dumpfile("rtcclock.vcd"); $dumpvars(0,tb_rtcclock);
        i_wb_cyc=0; i_wb_stb=0; i_wb_we=0; i_wb_addr=0; i_wb_data=0; i_hack=0;
        #100;
        wb_write(3'b100, 32'h7FFFFFFF);              // half ckspeed
        wb_write(3'b000, {6'h00, 4'h0, 22'h063000}); // time = 06:30:00
        wb_write(3'b011, {6'h00, 1'b0, 1'b1, 2'b00, 22'h063030}); // alarm 06:30:30 enabled
        wb_write(3'b001, {6'h00, 2'b00, 24'h000060}); // timer = 60
        wb_write(3'b010, 32'h00000001);              // start stopwatch
        #3_000_000;
        $display("Done at %0t", $time); $finish;
    end
endmodule