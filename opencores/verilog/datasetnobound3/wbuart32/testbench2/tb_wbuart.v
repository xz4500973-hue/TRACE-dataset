`timescale 1ns / 1ps
`default_nettype wire

module tb_wbuart;

    reg clk; reg rst;
    reg         wb_cyc; reg wb_stb; reg wb_we;
    reg  [1:0]  wb_addr; reg [31:0] wb_wdata;
    wire [31:0] wb_rdata; wire wb_ack; wire wb_stall;
    wire uart_tx; reg uart_rx; wire cts_n; wire rts_n;
    wire rx_int, tx_int, rxfifo_int, txfifo_int;

    wbuart #(.INITIAL_SETUP(31'd25), .LGFLEN(4), .HARDWARE_FLOW_CONTROL_PRESENT(1'b1))
    dut(.i_clk(clk),.i_rst(rst),.i_wb_cyc(wb_cyc),.i_wb_stb(wb_stb),
        .i_wb_we(wb_we),.i_wb_addr(wb_addr),.i_wb_data(wb_wdata),
        .o_wb_ack(wb_ack),.o_wb_stall(wb_stall),.o_wb_data(wb_rdata),
        .i_uart_rx(uart_rx),.o_uart_tx(uart_tx),
        .i_cts_n(cts_n),.o_rts_n(rts_n),
        .o_uart_rx_int(rx_int),.o_uart_tx_int(tx_int),
        .o_uart_rxfifo_int(rxfifo_int),.o_uart_txfifo_int(txfifo_int));

    initial clk = 0; always #5 clk = ~clk;

    task wb_write; input [1:0] a; input [31:0] d;
      begin @(posedge clk); wb_cyc<=1;wb_stb<=1;wb_we<=1;wb_addr<=a;wb_wdata<=d;
            @(posedge clk);@(posedge clk); wb_cyc<=0;wb_stb<=0;wb_we<=0; end endtask

    task wb_read; input [1:0] a; output [31:0] d;
      begin @(posedge clk); wb_cyc<=1;wb_stb<=1;wb_we<=0;wb_addr<=a;
            @(posedge clk);@(posedge clk); d=wb_rdata; wb_cyc<=0;wb_stb<=0; end endtask

    task uart_send_byte; input [7:0] b; integer i;
      begin uart_rx=1'b0; repeat(26)@(posedge clk);
            for(i=0;i<8;i=i+1) begin uart_rx=b[i]; repeat(26)@(posedge clk); end
            uart_rx=1'b1; repeat(26)@(posedge clk); end endtask

    integer i; reg [31:0] r; reg [7:0] s;

    initial begin
        $dumpfile("wbuart.vcd"); $dumpvars(0, tb_wbuart);
        rst=1; wb_cyc=0; wb_stb=0; wb_we=0; wb_addr=0; wb_wdata=0; uart_rx=1'b1;
        #100; rst=0; #100;

        // Burst write 60 bytes then read-back via loopback
        for (i=0;i<60;i=i+1) begin
            s = 8'h80 + i[5:0];
            wb_write(2'b11, {24'h0, s});
        end

        // Let TX drain
        #50000;

        // Burst receive 60 bytes with different pattern
        for (i=0;i<60;i=i+1) begin
            s = 8'hc0 + i[5:0];
            uart_send_byte(s);
            @(posedge clk); while(!rx_int)@(posedge clk);
            wb_read(2'b10, r);
        end

        // Mixed read/write FIFO status
        wb_read(2'b01, r);
        $display("FIFO status = %h", r);

        #5000;
        $display("Simulation finished at %0t", $time); $finish;
    end

endmodule