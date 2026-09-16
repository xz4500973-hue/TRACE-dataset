`timescale 1ns / 1ps

module tb_SSP_UART_v;
    reg Rst,Clk; reg SSP_SSEL,SSP_SCK,SSP_WnR,SSP_EOC; reg[2:0]SSP_RA; reg[11:0]SSP_DI;
    wire[11:0]SSP_DO; wire TxD_232; reg RxD_232; wire xRTS; reg xCTS;
    wire TxD_485; reg RxD_485; wire xDE; wire IRQ,TxIdle,RxIdle;

    SSP_UART uut(.Rst(Rst),.Clk(Clk),.SSP_SSEL(SSP_SSEL),.SSP_SCK(SSP_SCK),.SSP_RA(SSP_RA),
        .SSP_WnR(SSP_WnR),.SSP_EOC(SSP_EOC),.SSP_DI(SSP_DI),.SSP_DO(SSP_DO),
        .TxD_232(TxD_232),.RxD_232(RxD_232),.xRTS(xRTS),.xCTS(xCTS),
        .TxD_485(TxD_485),.RxD_485(RxD_485),.xDE(xDE),.IRQ(IRQ),.TxIdle(TxIdle),.RxIdle(RxIdle));

    always #5 Clk=~Clk; integer i;
    initial begin
        $dumpfile("SSP_UART.vcd");$dumpvars(0,tb_SSP_UART_v);
        Clk=0;Rst=1;SSP_SSEL=1;SSP_SCK=0;SSP_RA=0;SSP_WnR=0;SSP_EOC=0;SSP_DI=0;
        RxD_232=1;xCTS=0;RxD_485=1;
        #50 Rst=0; #100;
        for(i=0;i<20;i=i+1)begin SSP_DI=$random%4096;SSP_WnR=1;SSP_SSEL=0;#40;SSP_SSEL=1;#120;end
        #3000;$display("Done at %0t",$time);$finish;
    end
endmodule