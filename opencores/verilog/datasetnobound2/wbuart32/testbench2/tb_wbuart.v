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

    task wb_write; input [1:0] addr; input [31:0] data;
      begin @(posedge clk); wb_cyc<=1; wb_stb<=1; wb_we<=1; wb_addr<=addr; wb_wdata<=data;
            @(posedge clk);@(posedge clk); wb_cyc<=0; wb_stb<=0; wb_we<=0; end endtask

    task wb_read; input [1:0] addr; output [31:0] data;
      begin @(posedge clk); wb_cyc<=1; wb_stb<=1; wb_we<=0; wb_addr<=addr;
            @(posedge clk);@(posedge clk); data=wb_rdata; wb_cyc<=0; wb_stb<=0; end endtask

    task uart_send_byte; input [7:0] bytee; integer i;
      begin uart_rx=1'b0; repeat(26) @(posedge clk);
            for(i=0;i<8;i=i+1) begin uart_rx=bytee[i]; repeat(26) @(posedge clk); end
            uart_rx=1'b1; repeat(26) @(posedge clk); end endtask

    integer i,j; reg [31:0] rdata; reg [7:0] s;

    initial begin
        $dumpfile("wbuart.vcd"); $dumpvars(0, tb_wbuart);
        rst=1; wb_cyc=0; wb_stb=0; wb_we=0; wb_addr=0; wb_wdata=0; uart_rx=1'b1;
        #100; rst=0; #100;

        // Send fixed pattern: alternating 0x55/0xAA x 50
        for (i=0;i<50;i=i+1) begin
            s = (i%2) ? 8'haa : 8'h55;
            wb_write(2'b11, {24'h0, s});
            #200;
        end

        #10000;

        // Receive similar pattern
        for (i=0;i<50;i=i+1) begin
            s = (i%2) ? 8'haa : 8'h55;
            uart_send_byte(s);
            @(posedge clk); while(!rx_int) @(posedge clk);
            wb_read(2'b10, rdata);
        end

        // Simultaneous TX + RX (different bytes)
        fork
          begin for (i=0;i<30;i=i+1) begin s = $random%256; wb_write(2'b11, {24'h0, s}); #500; end end
          begin for (j=0;j<30;j=j+1) begin s = $random%256; uart_send_byte(s);
            @(posedge clk); while(!rx_int) @(posedge clk); wb_read(2'b10, rdata); end end
        join

        #5000;
        $display("Simulation finished at %0t", $time); $finish;
    end

endmodule