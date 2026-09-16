`timescale 1ns / 1ps

module tb_SSP_UART_v;

    // UUT Interface
    reg        Rst;
    reg        Clk;

    reg        SSP_SSEL;
    reg        SSP_SCK;
    reg  [2:0] SSP_RA;
    reg        SSP_WnR;
    reg        SSP_EOC;
    reg [11:0] SSP_DI;
    wire [11:0] SSP_DO;

    wire       TxD_232;
    reg        RxD_232;
    wire       xRTS;
    reg        xCTS;

    wire       TxD_485;
    reg        RxD_485;
    wire       xDE;

    wire       IRQ;

    wire       TxIdle;
    wire       RxIdle;

    // Instantiate the Unit Under Test (UUT)
    SSP_UART uut (
        .Rst      (Rst),
        .Clk      (Clk),
        .SSP_SSEL (SSP_SSEL),
        .SSP_SCK  (SSP_SCK),
        .SSP_RA   (SSP_RA),
        .SSP_WnR  (SSP_WnR),
        .SSP_EOC  (SSP_EOC),
        .SSP_DI   (SSP_DI),
        .SSP_DO   (SSP_DO),
        .TxD_232  (TxD_232),
        .RxD_232  (RxD_232),
        .xRTS     (xRTS),
        .xCTS     (xCTS),
        .TxD_485  (TxD_485),
        .RxD_485  (RxD_485),
        .xDE      (xDE),
        .IRQ      (IRQ),
        .TxIdle   (TxIdle),
        .RxIdle   (RxIdle)
    );

    // Clock generation (100MHz, period 10ns)
    always #5 Clk = ~Clk;

    //-----------------------------------------------------------------
    // SSP transfer task (simplified: 16-bit frame, SPI-like)
    // frame: [RA(2:0), WnR(1 bit), DI(11:0)]
    // This matches the design's SSP protocol.
    //-----------------------------------------------------------------
    task ss_transfer;
        input [2:0]  ra;
        input        wn_r;     // 0=read, 1=write
        input [11:0] di;
        output [11:0] dout;
        integer j;
        begin
            // Assert SSEL, send address + command + data
            SSP_SSEL = 1;
            SSP_RA   = ra;
            SSP_WnR  = wn_r;
            SSP_DI   = di;
            SSP_EOC  = 1;              // start of cycle
            // generate 16 SCK pulses (12 data + 3 addr + 1 cmd = 16 bits)
            for (j = 0; j < 16; j = j + 1) begin
                SSP_SCK = 0; #5;
                SSP_SCK = 1; #5;
            end
            SSP_EOC  = 0;
            SSP_SSEL = 0;
            dout = SSP_DO;             // sampled at end
            #10;
        end
    endtask

    // UART byte send on RxD_232 line (to stimulate receiver)
    // Baud rate is determined by internal BRG. We'll assume 115200 bps ~ 8.68us/bit
    // For simulation speed, we use a shorter bit time, e.g., 1000ns per bit.
    task uart_send_byte;
        input [7:0] data;
        integer i;
        begin
            // Start bit (low)
            RxD_232 = 0;
            #1000;
            // Data bits LSB first
            for (i = 0; i < 8; i = i + 1) begin
                RxD_232 = data[i];
                #1000;
            end
            // Stop bit (high)
            RxD_232 = 1;
            #1000;
        end
    endtask

    reg [11:0] rd_data;
    integer    k;

    initial begin
        // ① Generate VCD file
        $dumpfile("SSP_UART.vcd");
        $dumpvars(0, tb_SSP_UART_v);

        // ② Initialize
        Rst      = 1;
        Clk      = 1;
        SSP_SSEL = 0;
        SSP_SCK  = 1;
        SSP_RA   = 0;
        SSP_WnR  = 0;
        SSP_EOC  = 0;
        SSP_DI   = 0;
        RxD_232  = 1;
        xCTS     = 0;
        RxD_485  = 1;

        // ③ Release reset
        #101 Rst = 0;
        #100;

        // ④ Configure UART via SSP (example registers: 
        //    BRG Div/PS at address 0,1? We'll blindly write some valid values)
        // Assume address 0 = BRG Div, 1 = BRG PS, 2 = TX/RX FIFO, 3 = Control
        // Write BRG divider (e.g., for 115200 bps at 100MHz)
        ss_transfer(3'b000, 1'b1, 12'd54, rd_data);   // DIV
        ss_transfer(3'b001, 1'b1, 12'd1,  rd_data);   // PS
        // Enable transmitter/receiver
        ss_transfer(3'b011, 1'b1, 12'h003, rd_data);  // control

        // ⑤ Send several UART bytes from TX through SSP (write to TX register)
        for (k = 0; k < 20; k = k + 1) begin
            ss_transfer(3'b010, 1'b1, $random % 256, rd_data); // address 2 = TX FIFO
            // wait for not busy (poll status or just delay)
            repeat(20) @(posedge Clk);
        end

        // ⑥ Inject UART bytes on RxD_232 to stimulate receiver
        for (k = 0; k < 20; k = k + 1) begin
            uart_send_byte($random % 256);
            // Read received data from SSP (address 2 = RX FIFO)
            ss_transfer(3'b010, 1'b0, 12'd0, rd_data);
            $display("Received byte: 0x%h", rd_data[7:0]);
            repeat(10) @(posedge Clk);
        end

        // ⑦ Repeat the whole process a few times to increase activity
        repeat(3) begin
            for (k = 0; k < 10; k = k + 1) begin
                ss_transfer(3'b010, 1'b1, $random % 256, rd_data);
                repeat(10) @(posedge Clk);
            end
            for (k = 0; k < 10; k = k + 1) begin
                uart_send_byte($random % 256);
                ss_transfer(3'b010, 1'b0, 12'd0, rd_data);
                repeat(10) @(posedge Clk);
            end
        end

        // ⑧ Finish simulation
        #5000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule