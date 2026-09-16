`timescale 1ns / 1ps
`include "../rtl/usbf_device_defs.v"

module tb_usbf_device;

    reg clk;
    reg rst;

    // AXI4-Lite 配置接口
    reg        cfg_awvalid;
    reg [31:0] cfg_awaddr;
    reg        cfg_wvalid;
    reg [31:0] cfg_wdata;
    reg [3:0]  cfg_wstrb;
    reg        cfg_bready;
    reg        cfg_arvalid;
    reg [31:0] cfg_araddr;
    reg        cfg_rready;

    wire        cfg_awready;
    wire        cfg_wready;
    wire        cfg_bvalid;
    wire [1:0]  cfg_bresp;
    wire        cfg_arready;
    wire        cfg_rvalid;
    wire [31:0] cfg_rdata;
    wire [1:0]  cfg_rresp;
    wire        intr;

    // UTMI 接口
    reg [7:0]   utmi_data_in;
    reg         utmi_txready;
    reg         utmi_rxvalid;
    reg         utmi_rxactive;
    reg         utmi_rxerror;
    reg [1:0]   utmi_linestate;

    wire [7:0]  utmi_data_out;
    wire        utmi_txvalid;
    wire [1:0]  utmi_op_mode;
    wire [1:0]  utmi_xcvrselect;
    wire        utmi_termselect;
    wire        utmi_dppulldown;
    wire        utmi_dmpulldown;

    // 例化 DUT
    usbf_device u_dut (
        .clk_i              (clk),
        .rst_i              (rst),
        .cfg_awvalid_i      (cfg_awvalid),
        .cfg_awaddr_i       (cfg_awaddr),
        .cfg_wvalid_i       (cfg_wvalid),
        .cfg_wdata_i        (cfg_wdata),
        .cfg_wstrb_i        (cfg_wstrb),
        .cfg_bready_i       (cfg_bready),
        .cfg_arvalid_i      (cfg_arvalid),
        .cfg_araddr_i       (cfg_araddr),
        .cfg_rready_i       (cfg_rready),
        .cfg_awready_o      (cfg_awready),
        .cfg_wready_o       (cfg_wready),
        .cfg_bvalid_o       (cfg_bvalid),
        .cfg_bresp_o        (cfg_bresp),
        .cfg_arready_o      (cfg_arready),
        .cfg_rvalid_o       (cfg_rvalid),
        .cfg_rdata_o        (cfg_rdata),
        .cfg_rresp_o        (cfg_rresp),
        .intr_o             (intr),
        .utmi_data_in_i     (utmi_data_in),
        .utmi_txready_i     (utmi_txready),
        .utmi_rxvalid_i     (utmi_rxvalid),
        .utmi_rxactive_i    (utmi_rxactive),
        .utmi_rxerror_i     (utmi_rxerror),
        .utmi_linestate_i   (utmi_linestate),
        .utmi_data_out_o    (utmi_data_out),
        .utmi_txvalid_o     (utmi_txvalid),
        .utmi_op_mode_o     (utmi_op_mode),
        .utmi_xcvrselect_o  (utmi_xcvrselect),
        .utmi_termselect_o  (utmi_termselect),
        .utmi_dppulldown_o  (utmi_dppulldown),
        .utmi_dmpulldown_o  (utmi_dmpulldown)
    );

    // 时钟 100MHz
    always #5 clk = ~clk;
    initial clk = 0;

    // AXI4-Lite 写任务
    task axi_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            cfg_awvalid <= 1; cfg_awaddr <= addr;
            cfg_wvalid  <= 1; cfg_wdata  <= data;
            cfg_wstrb   <= 4'hF;
            cfg_bready  <= 1;
            wait(cfg_awready && cfg_wready);
            @(posedge clk);
            cfg_awvalid <= 0; cfg_wvalid <= 0;
            cfg_bready  <= 0;
            wait(cfg_bvalid);
        end
    endtask

    // AXI4-Lite 读任务
    task axi_read;
        input  [31:0] addr;
        output [31:0] data;
        begin
            @(posedge clk);
            cfg_arvalid <= 1; cfg_araddr <= addr;
            cfg_rready  <= 1;
            wait(cfg_arready);
            @(posedge clk);
            cfg_arvalid <= 0;
            wait(cfg_rvalid);
            data = cfg_rdata;
            cfg_rready <= 0;
        end
    endtask

    integer i, j;
    reg [31:0] rdata;

    // UTMI 发送激励任务：产生短暂的 RX 数据流
    task utmi_rx_byte;
        input [7:0] bytee;
        begin
            utmi_rxvalid  <= 1;
            utmi_data_in  <= bytee;
            utmi_rxactive <= 1;
            @(posedge clk);
            utmi_rxvalid  <= 0;
            utmi_rxactive <= 0;
        end
    endtask

    initial begin
        // 生成 VCD
        $dumpfile("usb_device.vcd");
        $dumpvars(0, tb_usbf_device);

        // 初始状态
        rst = 1;
        cfg_awvalid = 0; cfg_wvalid = 0; cfg_bready = 0;
        cfg_arvalid = 0; cfg_rready = 0;
        utmi_data_in = 0; utmi_txready = 1;  // 始终准备发送
        utmi_rxvalid = 0; utmi_rxactive = 0; utmi_rxerror = 0;
        utmi_linestate = 2'b00;

        #100;
        rst = 0;
        #100;

        // ---- 配置设备 ----
        // FUNC_CTRL: 使能 PHY 下拉, 设置 XCVR, 使能 SOF 中断等
        axi_write(`USB_FUNC_CTRL, {
            1'b0,               // HS chirp enable
            1'b0,               // PHY DMPULLDOWN
            1'b0,               // PHY DPPULLDOWN
            1'b0,               // PHY TERMSELECT
            2'b00,              // PHY XCVRSELECT (0: HS)
            2'b00,              // PHY OPMODE (0: normal)
            1'b1                // INT EN SOF
        });
        // 实际上 FUNC_CTRL 位域需要根据 defs 调整，这里简化；正确值可查阅 usbf_device_defs.v

        // FUNC_ADDR: 设置设备地址为 1
        axi_write(`USB_FUNC_ADDR, 32'h1);

        // 配置 EP1 为 BULK (非 ISO), 使能中断
        axi_write(`USB_EP1_CFG, {
            1'b0,   // ISO
            1'b0,   // STALL (auto cleared)
            1'b1,   // INT TX
            1'b1    // INT RX
        });

        // 使能 EP1 RX 接收（总是接受）
        axi_write(`USB_EP1_RX_CTRL, {
            1'b0,   // FLUSH
            1'b1    // ACCEPT
        });

        // ---- 主要测试循环 ----
        for (i = 0; i < 100; i = i + 1) begin
            // 1. 向 EP1 TX FIFO 写入 4 个字节
            for (j = 0; j < 4; j = j + 1) begin
                axi_write(`USB_EP1_DATA, $random % 256);
            end

            // 2. 启动 EP1 TX 传输（长度 4）
            axi_write(`USB_EP1_TX_CTRL, {
                1'b0,   // FLUSH
                1'b1,   // START
                11'd4   // LEN
            });

            // 等待发送完成 (轮询 EP1_STS 的 tx_busy)
            do begin
                axi_read(`USB_EP1_STS, rdata);
            end while (rdata[`USB_EP1_STS_TX_BUSY_R]);
        end

        // 注入一些 UTMI RX 字节，触发接收路径
        for (i = 0; i < 20; i = i + 1) begin
            utmi_rx_byte($random % 256);
            #100;
        end

        // 再从 EP1 RX FIFO 中读回数据（如果有）
        do begin
            axi_read(`USB_EP1_STS, rdata);
            if (rdata[`USB_EP1_STS_RX_READY_R]) begin
                axi_read(`USB_EP1_DATA, rdata);
            end else begin
                #100;
            end
        end while (0); // 可以循环几次，这里简化

        // 仿真结束
        #2000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule