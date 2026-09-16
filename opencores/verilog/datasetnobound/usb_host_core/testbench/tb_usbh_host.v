`timescale 1ns / 1ps
`include "usbh_host_defs.v"

module tb_usbh_host;

    reg         clk;
    reg         rst;

    // AXI4-Lite 配置接口
    reg         cfg_awvalid;
    reg  [31:0] cfg_awaddr;
    reg         cfg_wvalid;
    reg  [31:0] cfg_wdata;
    reg  [3:0]  cfg_wstrb;
    reg         cfg_bready;
    reg         cfg_arvalid;
    reg  [31:0] cfg_araddr;
    reg         cfg_rready;

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
    reg  [7:0]  utmi_data_in;
    reg         utmi_txready;
    reg         utmi_rxvalid;
    reg         utmi_rxactive;
    reg         utmi_rxerror;
    reg  [1:0]  utmi_linestate;

    wire [7:0]  utmi_data_out;
    wire        utmi_txvalid;
    wire [1:0]  utmi_op_mode;
    wire [1:0]  utmi_xcvrselect;
    wire        utmi_termselect;
    wire        utmi_dppulldown;
    wire        utmi_dmpulldown;

    // 例化 DUT
    usbh_host u_dut (
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

    // 时钟：60MHz（周期 16.667ns，取整为 #8.333，这里使用 #8 简化，即 ~62.5MHz）
    always #8 clk = ~clk;
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

    // AXI4-Lite 读任务（可用于轮询状态）
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

    integer i;
    reg [31:0] rdata;

    // UTMI 接收响应模型（简单回一些 NAK 或 ACK）
    task utmi_send_response;
        input [7:0] pid;
        begin
            // 等待 txvalid 结束，表示主机发完一个包
            @(negedge utmi_txvalid);
            // 短暂延迟
            repeat (20) @(posedge clk);
            // 发送响应 PID
            utmi_rxactive <= 1;
            utmi_rxvalid  <= 1;
            utmi_data_in  <= pid;
            @(posedge clk);
            utmi_rxvalid  <= 0;
            utmi_rxactive <= 0;
        end
    endtask

    initial begin
        // 生成 VCD
        $dumpfile("usbh_host.vcd");
        $dumpvars(0, tb_usbh_host);

        // 初始化
        rst = 1;
        cfg_awvalid = 0; cfg_wvalid = 0; cfg_bready = 0;
        cfg_arvalid = 0; cfg_rready = 0;
        utmi_data_in = 0;
        utmi_txready = 1;       // 始终可发送
        utmi_rxvalid = 0;
        utmi_rxactive = 0;
        utmi_rxerror = 0;
        utmi_linestate = 2'b01; // J 状态

        #200;
        rst = 0;
        #100;

        // ---- 配置 USB 主机 ----
        // 1. 设置 PHY：下拉电阻不使能，全速模式，OPMODE=0
        axi_write(`USB_CTRL, {
            1'b0,               // phy_dmpulldown
            1'b0,               // phy_dppulldown
            1'b0,               // phy_termselect
            2'b01,              // xcvrselect (full speed)
            2'b00,              // opmode (normal)
            1'b0,               // tx_flush (auto clear)
            1'b1                // enable_sof
        });

        // 2. 使能 SOF 及中断
        axi_write(`USB_IRQ_MASK, {
            1'b0,               // device_detect
            1'b0,               // err
            1'b1,               // done
            1'b1                // sof
        });

        // ---- 循环发起传输 ----
        for (i = 0; i < 20; i = i + 1) begin
            // 向 TX FIFO 写入一个字节（假设发送一个 SETUP 令牌后的数据）
            axi_write(`USB_WR_DATA, 8'h80);  // 示例数据

            // 设置传输数据长度（1 字节）
            axi_write(`USB_XFER_DATA, 16'd1);

            // 发起令牌：设备地址 1，端点 0，PID=SETUP(0x2D)，IN=0，ACK=1，DATAX=0
            axi_write(`USB_XFER_TOKEN, {
                1'b0,               // start (will set)
                1'b0,               // in_transfer
                1'b1,               // ack
                1'b0,               // pid_datax
                8'h2D,              // pid_bits (SETUP)
                7'd1,               // dev_addr
                4'd0                // ep_addr
            });

            // 等待传输完成中断 (done)，这里简单延时等待
            repeat (200) @(posedge clk);
            // 可选读取状态
            axi_read(`USB_IRQ_STS, rdata);
            // 清除 done 中断
            axi_write(`USB_IRQ_ACK, 32'h4); // bit 2 = done
        end

        // 再发送一个 OUT 传输示例
        axi_write(`USB_WR_DATA, 8'hA5);
        axi_write(`USB_XFER_DATA, 16'd1);
        axi_write(`USB_XFER_TOKEN, {
            1'b0,
            1'b0,
            1'b1,
            1'b1,
            8'hE1,      // OUT
            7'd2,
            4'd1
        });
        repeat (200) @(posedge clk);

        // 仿真结束
        #5000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule