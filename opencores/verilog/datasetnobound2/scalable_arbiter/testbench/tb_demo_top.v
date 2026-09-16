/*
 * Testbench for demo_top - Rapid button presses (debounce test)
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

    task press_button(input integer button_idx, input integer press_duration_us);
        begin
            buttons[button_idx] = 1;
            #(press_duration_us * 1000);
            buttons[button_idx] = 0;
        end
    endtask

    initial begin
        $dumpfile("demo_top_rapid_presses.vcd");
        $dumpvars(0, u_dut);
        $display("=== Starting demo_top testbench (rapid presses) ===");

        buttons = 2'b00;
        #50000;

        // Rapidly press button 0 (next_step) 10 times with short duration and gaps
        repeat (10) begin
            press_button(0, 50);   // 50 us press
            #20000;                // 20 us gap
        end

        // Rapidly press button 1 (next_test) 10 times
        repeat (10) begin
            press_button(1, 50);
            #20000;
        end

        // Interleaved rapid presses
        for (integer i = 0; i < 20; i = i + 1) begin
            press_button(i % 2, 40);
            #15000;
        end

        #500000;
        $display("=== Rapid presses testbench finished ===");
        $finish;
    end

    always @(posedge u_dut.clock) begin
        if (u_dut.valid_stretcher.out !== 1'b0 || u_dut.select_stretcher.out !== 0)
            $display("TIME %0t ns: indicators = %b (valid=%b, select=%b)",
                     $time, indicators, indicators[0], indicators[SELECT_WIDTH:1]);
    end

endmodule