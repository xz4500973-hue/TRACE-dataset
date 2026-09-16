`timescale 1ns / 1ps
`include "serirq_defines.v"

(* keep_hierarchy = "yes" *) module serirq_top
(
    input           clk_i,
    input           nrst_i,         // Active low reset
    input           serirq_mode_i,  // Host mode: 0=Continuous, 1=Quiet
    input  [31:0]   irq_i,          // Slave IRQ inputs (from peripherals)
    output [31:0]   irq_o           // Host IRQ status outputs
);

    // SERIRQ bus signals (internal)
    wire        host_serirq_o, host_serirq_oe;
    wire        slave_serirq_o, slave_serirq_oe;
    wire        serirq_line;

    // Host instance
    serirq_host u_host
    (
        .clk_i          (clk_i),
        .nrst_i         (nrst_i),
        .serirq_mode_i  (serirq_mode_i),
        .irq_o          (irq_o),
        .serirq_o       (host_serirq_o),
        .serirq_i       (serirq_line),
        .serirq_oe      (host_serirq_oe)
    );

    // Slave instance
    serirq_slave u_slave
    (
        .clk_i          (clk_i),
        .nrst_i         (nrst_i),
        .irq_i          (irq_i),
        .serirq_o       (slave_serirq_o),
        .serirq_i       (serirq_line),
        .serirq_oe      (slave_serirq_oe)
    );

    // SERIRQ bus modelling (open-drain with pull-up)
    assign serirq_line = host_serirq_oe  ? host_serirq_o  :
                         slave_serirq_oe ? slave_serirq_o :
                         1'b1;     // idle high (pull-up)

endmodule