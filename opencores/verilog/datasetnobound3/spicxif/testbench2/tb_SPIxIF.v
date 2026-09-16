///////////////////////////////////////////////////////////////////////////////
//
//  Testbench variant 4: different data patterns, 80 random cycles
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_SPIxIF;

reg     Rst;
reg     Clk;
reg     LSB;
reg     [1:0] Mode;
reg     [2:0] Rate;
reg     DAV;
wire    FRE;
reg     [8:0] TD;
wire    FWE;
wire    [7:0] RD;
wire    SSEL;
wire    SCK;
wire    MOSI;

integer i      = 0;
integer SS_Len = 0;
    
SPIxIF  uut (
    .Rst(Rst), .Clk(Clk),
    .LSB(LSB), .Mode(Mode), .Rate(Rate), 
    .DAV(DAV), .FRE(FRE), .TD(TD), 
    .FWE(FWE), .RD(RD), 
    .SS(SS), .SCK(SCK), .MOSI(MOSI), .MISO(MOSI)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_SPIxIF);
    
    Rst  = 1; Clk = 0; LSB = 0; Mode = 3; Rate = 0; DAV = 0; TD = 0;
    #101 Rst = 0;
    
    $display("Testing: MSB first, Mode 3, Rate 0\n");
    
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h169;
    @(posedge FRE) DAV = 0;
    @(negedge FWE);
    
    $display("Testing single-byte transfers\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h0FF; @(negedge FRE); DAV = 0; @(negedge SS) #1;
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h100; @(negedge FRE); DAV = 0; @(negedge SS) #1;

    // Random transfers
    $display("Random transfers for power analysis\n");
    repeat (80) begin
        @(negedge SS or posedge Clk);
        Mode = $random % 4;
        Rate = $random % 8;
        LSB  = $random % 2;
        DAV = 1;
        TD  = {$random} % 512;
        repeat (3) @(posedge Clk);
        DAV = 0;
        repeat ({$random} % 4 + 1) begin
            @(posedge FRE);
            TD  = {$random} % 512;
            DAV = 1;
            repeat (2) @(posedge Clk);
            DAV = 0;
        end
        @(negedge SS);
    end

    #1000;
    $display("Simulation finished at %0t", $time);
    $finish;
end

always #5 Clk = ~Clk;
always @(negedge SS) SS_Len = i;
always @(posedge Clk or negedge SS) begin
    if(~SS) #10 i = 0; else i = i + 1;
end

endmodule