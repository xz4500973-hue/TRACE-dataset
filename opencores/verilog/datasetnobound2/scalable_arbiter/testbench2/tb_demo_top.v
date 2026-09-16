/*
 * Testbench for demo_top - Random stress test (highest toggle rate)
 */

`timescale 1ns / 1ps

module tb_demo_top;

    // Parameters (must match the top module's `define)
    localparam MHZ = 100;
    localparam WIDTH = 8;
    localparam SELECT_WIDTH = 3;
    localparam DEBOUNCE_MSEC = 250;
    localparam STRETCH_MSEC = 250;

    // Signals to connect to DUT
    reg [1:0] buttons;
    wire [SELECT_WIDTH:0] indicators;
    reg refclock;

    // Instantiate the design under test
    demo_top u_dut (
        .buttons     (buttons),
        .indicators  (indicators),
        .refclock    (refclock)
    );

    initial begin
        refclock = 0;
        forever #10 refclock = ~refclock;
    end

    // Random stimulus generation
    integer seed;
    initial begin
        seed = 12345;
        buttons = 2'b00;
        #50000;

        // Randomly press buttons for a long duration
        forever begin
            integer button_idx;
            integer press_len_us;
            integer idle_len_us;
            button_idx = {$random(seed)} % 2;
            press_len_us = 10 + ({$random(seed)} % 500);   // 10 to 510 us
            idle_len_us = 10 + ({$random(seed)} % 500);    // 10 to 510 us

            // Press the button
            buttons[button_idx] = 1;
            #(press_len_us * 1000);
            buttons[button_idx] = 0;
            #(idle_len_us * 1000);
        end
    end

    initial begin
        $dumpfile("demo_top_random_stress.vcd");
        $dumpvars(0, u_dut);
        $display("=== Starting demo_top testbench (random stress) ===");

        // Run for 10 ms then finish
        #10_000_000;
        $display("=== Random stress testbench finished ===");
        $finish;
    end

    always @(posedge u_dut.clock) begin
        if (u_dut.valid_stretcher.out !== 1'b0 || u_dut.select_stretcher.out !== 0)
            $display("TIME %0t ns: indicators = %b (valid=%b, select=%b)",
                     $time, indicators, indicators[0], indicators[SELECT_WIDTH:1]);
    end

endmodule