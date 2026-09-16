`timescale 1ns / 1ps
`include "usbf_device_defs.v"

module tb_usbf_device;
    reg clk,rst;
    reg cfg_awvalid,cfg_wvalid,cfg_bready,cfg_arvalid,cfg_rready;
    reg[31:0] cfg_awaddr,cfg_wdata,cfg_araddr; reg[3:0] cfg_wstrb;
    reg[7:0] utmi_data_in; reg utmi_txready,utmi_rxvalid,utmi_rxactive,utmi_rxerror; reg[1:0] utmi_linestate;
    wire cfg_awready,cfg_wready,cfg_bvalid,cfg_arready,cfg_rvalid,intr;
    wire[31:0] cfg_rdata; wire[7:0] utmi_data_out; wire utmi_txvalid;

    usbf_device u_dut(
        .clk_i(clk),.rst_i(rst),.cfg_awvalid_i(cfg_awvalid),.cfg_awaddr_i(cfg_awaddr),
        .cfg_wvalid_i(cfg_wvalid),.cfg_wdata_i(cfg_wdata),.cfg_wstrb_i(cfg_wstrb),.cfg_bready_i(cfg_bready),
        .cfg_arvalid_i(cfg_arvalid),.cfg_araddr_i(cfg_araddr),.cfg_rready_i(cfg_rready),
        .cfg_awready_o(cfg_awready),.cfg_wready_o(cfg_wready),.cfg_bvalid_o(cfg_bvalid),
        .cfg_arready_o(cfg_arready),.cfg_rvalid_o(cfg_rvalid),.cfg_rdata_o(cfg_rdata),.intr_o(intr),
        .utmi_data_in_i(utmi_data_in),.utmi_txready_i(utmi_txready),.utmi_rxvalid_i(utmi_rxvalid),
        .utmi_rxactive_i(utmi_rxactive),.utmi_rxerror_i(utmi_rxerror),.utmi_linestate_i(utmi_linestate),
        .utmi_data_out_o(utmi_data_out),.utmi_txvalid_o(utmi_txvalid));

    initial clk=0; always #10 clk=~clk;

    initial begin
        $dumpfile("usbf_device.vcd"); $dumpvars(0,tb_usbf_device);
        rst=1; cfg_awvalid=0;cfg_wvalid=0;cfg_bready=0;cfg_arvalid=0;cfg_rready=0;
        utmi_data_in=8'hAA; utmi_txready=1;utmi_rxvalid=1;utmi_rxactive=1;utmi_rxerror=0;utmi_linestate=2'b11;
        #300 rst=0; #1000;
        $display("Done at %0t",$time); $finish;
    end
endmodule