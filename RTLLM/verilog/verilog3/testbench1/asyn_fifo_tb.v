`timescale 1ns/1ps
module asyn_fifo_tb;
    reg wclk,rclk,wrstn,rrstn,winc,rinc; reg[7:0]wdata; wire wfull,rempty; wire[7:0]rdata;
    asyn_fifo dut(.wclk(wclk),.rclk(rclk),.wrstn(wrstn),.rrstn(rrstn),.winc(winc),.rinc(rinc),.wdata(wdata),.wfull(wfull),.rempty(rempty),.rdata(rdata));
    always #5 wclk=~wclk; always #9 rclk=~rclk;
    integer p;
    initial begin
        $dumpfile("asyn_fifo_tb.vcd");$dumpvars(0,asyn_fifo_tb);
        wclk=0;rclk=0;wrstn=0;rrstn=0;winc=0;rinc=0;wdata=0;
        #10 wrstn=1;rrstn=1;
        for(p=0;p<8;p=p+1)begin @(posedge wclk);wdata=p*10;winc=(p%2)?1'b1:1'b0;end
        repeat(5)@(posedge wclk);winc=0;
        repeat(4)@(posedge rclk);for(p=0;p<4;p=p+1)begin @(posedge rclk);rinc=1;end @(posedge rclk)rinc=0;
        repeat(10)@(posedge rclk);$finish;
    end
endmodule