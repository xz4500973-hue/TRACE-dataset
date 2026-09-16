`timescale 1ns / 1ps

module binary_to_bcd_tb;

    reg clk_i; reg ce_i; reg rst_i; reg start_i;
    reg [15:0] dat_binary_i;
    wire [23:0] dat_bcd_o; wire done_o;
    integer i; reg [31:0] seed;

    binary_to_bcd #(16, 6, 4) u_dut (.clk_i(clk_i),.ce_i(ce_i),.rst_i(rst_i),.start_i(start_i),.dat_binary_i(dat_binary_i),.dat_bcd_o(dat_bcd_o),.done_o(done_o));

    initial clk_i = 0; always #5 clk_i = ~clk_i;

    initial begin
        $dumpfile("binary_to_bcd.vcd"); $dumpvars(0, binary_to_bcd_tb);
        ce_i = 1'b1; rst_i = 1'b1; start_i = 1'b0; dat_binary_i = 16'h0; seed = 44444;
        #100; rst_i = 1'b0; #100;
        for (i = 0; i < 600; i = i + 1) begin
            dat_binary_i = (i%2) ? {$random(seed)}[15:0] : 16'hBEEF;
            @(posedge clk_i); start_i = 1'b1; @(posedge clk_i); start_i = 1'b0;
            wait (done_o);
            repeat({$random(seed)} % 5 + 1) @(posedge clk_i);
        end
        #200; $finish;
    end
endmodule