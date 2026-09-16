/*
 * Testbench for demo_top - Single short button press
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
    task press_button(input integer button_idx, input integer press_duration_us);
        begin
            $display("Pressing button %0d for %0d us", button_idx, press_duration_us);
            buttons[button_idx] = 1;
            #(press_duration_us * 1000);
            buttons[button_idx] = 0;
            $display("Button %0d released", button_idx);
        end
    endtask

    // Main test sequence
    initial begin
        $dumpfile("demo_top_single_press.vcd");
        $dumpvars(0, u_dut);
        $display("=== Starting demo_top testbench (single short press) ===");

        buttons = 2'b00;
        #50000;   // wait for PLL lock

        // Press button 0 (next_step) for a short duration (100 us)
        press_button(0, 100);

        #2000000;   // 2 ms

        $display("=== Single press testbench finished ===");
        $finish;
    end

    always @(posedge u_dut.clock) begin
        if (u_dut.valid_stretcher.out !== 1'b0 || u_dut.select_stretcher.out !== 0)
            $display("TIME %0t ns: indicators = %b (valid=%b, select=%b)",
                     $time, indicators, indicators[0], indicators[SELECT_WIDTH:1]);
    end

endmodule