///////////////////////////////////////////////////////////////////////////////
//
//  Testbench variant 2: LSB first, different data patterns, slower rates, 150 random cycles
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
    
    Rst  = 1; Clk = 0; LSB = 1; Mode = 1; Rate = 2; DAV = 0; TD = 0;
    #101 Rst = 0;
    
    $display("Testing: LSB first, Mode 1, Rate 2\n");
    
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h1C3;
    @(posedge FRE) DAV = 0;
    @(negedge FWE);
    
    $display("Testing multi-cycle with LSB first\n");
    @(posedge Clk) #1;
    DAV = 1; TD = 9'h1E7; @(negedge FRE);
    TD = 9'h0DB; @(negedge FRE);
    TD = 9'h0F0; @(negedge FRE); DAV = 0;
    @(negedge SS) #1;

    $display("Testing Mode 3, Rate 4\n");
    Mode = 3; Rate = 4;
    @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1; @(posedge Clk) #1;
    DAV = 1; TD = 9'h055; @(negedge FRE);
    TD = 9'h0AA; @(negedge FRE); DAV = 0;
    @(negedge SS) #1;

    // Random transfers
    $display("Random transfers for power analysis\n");
    repeat (150) begin
        @(negedge SS or posedge Clk);
        Mode = $random % 4;
        Rate = $random % 8;
        LSB  = $random % 2;
        DAV = 1;
        TD  = {$random} % 512;
        repeat (3) @(posedge Clk);
        DAV = 0;
        repeat ({$random} % 5 + 1) begin
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