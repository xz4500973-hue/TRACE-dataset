`timescale 1ns / 1ps

module bcd_to_binary_tb;

    reg clk_i; reg ce_i; reg rst_i; reg start_i;
    reg [23:0] dat_bcd_i;
    wire [15:0] dat_binary_o; wire done_o;

    bcd_to_binary #(6, 16, 4) u_dut (.clk_i(clk_i),.ce_i(ce_i),.rst_i(rst_i),.start_i(start_i),.dat_bcd_i(dat_bcd_i),.dat_binary_o(dat_binary_o),.done_o(done_o));

    initial clk_i = 0; always #5 clk_i = ~clk_i;
    integer i; reg [31:0] seed;

    function [23:0] rand_bcd;
        input [31:0] seed; integer j; reg [3:0] digit;
        begin rand_bcd = 0; for (j=0; j<6; j=j+1) begin digit = {$random(seed)} % 10; rand_bcd = rand_bcd | (digit << (4*j)); end end
    endfunction

    initial begin
        $dumpfile("bcd_to_binary.vcd"); $dumpvars(0, bcd_to_binary_tb);
        ce_i = 1'b1; rst_i = 1'b1; start_i = 1'b0; dat_bcd_i = 24'h0; seed = 22222;
        #100; rst_i = 1'b0; #100;
        for (i = 0; i < 750; i = i + 1) begin
            dat_bcd_i = rand_bcd(seed);
            @(posedge clk_i); start_i = 1'b1; @(posedge clk_i); start_i = 1'b0;
            wait (done_o);
            repeat({$random(seed)} % 4 + 1) @(posedge clk_i);
        end
        #200; $finish;
    end
endmodule