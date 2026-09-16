`timescale 1ns / 1ps

module tb_SSPx_Slv_v;
    reg Rst,SSEL,SCK,MOSI; wire MISO;
    wire[2:0]RA; wire WnR,En,EOC; wire[11:0]DI; reg[11:0]DO; wire[3:0]BC;
    integer i;

    SSPx_Slv uut(.Rst(Rst),.SSEL(SSEL),.SCK(SCK),.MOSI(MOSI),.MISO(MISO),.RA(RA),.WnR(WnR),.En(En),.EOC(EOC),.DI(DI),.DO(DO),.BC(BC));

    task SSP; input[2:0]RAIn,Cmd; input[11:0]DIn,DOut;
      begin SSEL=1;MOSI=RAIn[2];DO=DOut;#5 SCK=1;#5 SCK=0;MOSI=RAIn[1];#5 SCK=1;#5 SCK=0;MOSI=RAIn[0];
            #5 SCK=1;#5 SCK=0;MOSI=Cmd;#5 SCK=1;#5 SCK=0;
            for(i=0;i<12;i=i+1)begin MOSI=DIn[11-i];#5 SCK=1;#5 SCK=0;end SSEL=0;end endtask

    initial begin
        $dumpfile("SSPx_Slv.vcd");$dumpvars(0,tb_SSPx_Slv_v);
        Rst=1;SSEL=1;SCK=0;MOSI=0;DO=0;
        #50 Rst=0;#20;
        for(i=0;i<60;i=i+1)begin SSP(i%8,1, i*16, 0);#30;end
        #1000;$display("Simulation finished at %0t",$time);$finish;
    end
endmodule