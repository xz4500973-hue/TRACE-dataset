`timescale 1ns/1ps
module asyn_fifo_tb;
    reg wclk,rclk,wrstn,rrstn,winc,rinc; reg[7:0]wdata; wire wfull,rempty; wire[7:0]rdata;
    asyn_fifo dut(.wclk(wclk),.rclk(rclk),.wrstn(wrstn),.rrstn(rrstn),.winc(winc),.rinc(rinc),.wdata(wdata),.wfull(wfull),.rempty(rempty),.rdata(rdata));
    always #5 wclk=~wclk; always #15 rclk=~rclk;
    integer t;
    initial begin
        $dumpfile("asyn_fifo_tb.vcd");$dumpvars(0,asyn_fifo_tb);
        wclk=0;rclk=0;wrstn=0;rrstn=0;winc=0;rinc=0;wdata=0;
        #14 wrstn=1;rrstn=1;
        for(t=0;t<8;t=t+1)begin @(posedge wclk);wdata=$random(1)%256;winc=1;end @(posedge wclk)winc=0;
        repeat(2)@(posedge rclk);rinc=1;repeat(8)@(posedge rclk);rinc=0;
        repeat(10)@(posedge rclk);$finish;
    end
endmodule