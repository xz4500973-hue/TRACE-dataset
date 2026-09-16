`timescale 1ns/1ps
module asyn_fifo_tb;
    reg wclk,rclk,wrstn,rrstn,winc,rinc; reg[7:0]wdata; wire wfull,rempty; wire[7:0]rdata;
    asyn_fifo dut(.wclk(wclk),.rclk(rclk),.wrstn(wrstn),.rrstn(rrstn),.winc(winc),.rinc(rinc),.wdata(wdata),.wfull(wfull),.rempty(rempty),.rdata(rdata));
    always #5 wclk=~wclk; always #6 rclk=~rclk;
    integer q;
    initial begin
        $dumpfile("asyn_fifo_tb.vcd");$dumpvars(0,asyn_fifo_tb);
        wclk=0;rclk=0;wrstn=0;rrstn=0;winc=0;rinc=0;wdata=0;
        #25 wrstn=1;rrstn=1;
        for(q=0;q<16;q=q+1)begin @(posedge wclk);wdata=q*3+5;winc=1;end @(posedge wclk)winc=0;
        repeat(1)@(posedge rclk);for(q=0;q<16;q=q+1)begin @(posedge rclk);rinc=1;end @(posedge rclk)rinc=0;
        repeat(10)@(posedge rclk);$finish;
    end
endmodule