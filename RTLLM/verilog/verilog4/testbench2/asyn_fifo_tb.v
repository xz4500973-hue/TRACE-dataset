`timescale 1ns/1ps
module asyn_fifo_tb;
    reg wclk,rclk,wrstn,rrstn,winc,rinc; reg[7:0]wdata; wire wfull,rempty; wire[7:0]rdata;
    asyn_fifo dut(.wclk(wclk),.rclk(rclk),.wrstn(wrstn),.rrstn(rrstn),.winc(winc),.rinc(rinc),.wdata(wdata),.wfull(wfull),.rempty(rempty),.rdata(rdata));
    always #5 wclk=~wclk; always #13 rclk=~rclk;
    integer s; reg[31:0] lfsr; wire fb;
    assign fb=lfsr[31]^lfsr[21]^lfsr[1]^lfsr[0];
    always@(posedge wclk)lfsr<={lfsr[30:0],fb};
    initial begin
        $dumpfile("asyn_fifo_tb.vcd");$dumpvars(0,asyn_fifo_tb);
        wclk=0;rclk=0;wrstn=0;rrstn=0;winc=0;rinc=0;wdata=0;lfsr=32'hBEEF;
        #22 wrstn=1;rrstn=1;
        for(s=0;s<10;s=s+1)begin @(posedge wclk);wdata=lfsr[7:0];winc=1;end @(posedge wclk)winc=0;
        repeat(4)@(posedge rclk);for(s=0;s<10;s=s+1)begin @(posedge rclk);rinc=1;end @(posedge rclk)rinc=0;
        repeat(10)@(posedge rclk);$finish;
    end
endmodule