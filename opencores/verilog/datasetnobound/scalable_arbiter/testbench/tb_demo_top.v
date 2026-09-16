/*
 * Testbench for demo_top
 * Simulates button presses and observes indicators output.
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

    // Clock generation: 50 MHz reference clock (period = 20 ns)
    initial begin
        refclock = 0;
        forever #10 refclock = ~refclock;   // 50 MHz
    end

    // Helper task: generate a button press (active high rising edge)
    // 'button_idx' : 0 or 1
    // 'press_duration_us' : how long to hold the button (microseconds)
    task press_button(input integer button_idx, input integer press_duration_us);
        begin
            $display("Pressing button %0d for %0d us", button_idx, press_duration_us);
            buttons[button_idx] = 1;
            #(press_duration_us * 1000);   // convert us to ns
            buttons[button_idx] = 0;
            $display("Button %0d released", button_idx);
        end
    endtask

    // Main test sequence
    initial begin
        // Dump waveform
        $dumpfile("demo_top.vcd");
        $dumpvars(0, u_dut);
        $display("=== Starting demo_top testbench ===");

        // Initial state: no button pressed
        buttons = 2'b00;

        // Wait for PLL lock and internal reset to deassert
        // The top module's reset = ~locked; locked may take some time to go high.
        // We'll wait a few microseconds to be safe.
        #50000;   // 50 us (enough for typical PLL lock)

        // Test sequence: press button 1 (next_test) and button 0 (next_step)
        $display("--- Press button 1 (next_test) ---");
        press_button(1, 500);   // 500 us press

        #500000;   // 500 us gap

        $display("--- Press button 0 (next_step) ---");
        press_button(0, 500);

        #500000;

        $display("--- Rapid button presses (debounce test) ---");
        // Rapidly toggle button 1
        repeat (5) begin
            press_button(1, 50);   // short 50 us press
            #20000;                // 20 us gap
        end

        #1000000;   // wait 1 ms

        // Long press to see stretching effect
        $display("--- Long press button 0 (stretch test) ---");
        press_button(0, 2000);   // 2 ms press

        #2000000;   // final wait

        $display("=== Testbench finished ===");
        $finish;
    end

endmodule