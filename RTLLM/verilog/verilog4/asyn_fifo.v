`timescale 1ns/1ps

module asyn_fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 16
)(
    input                    wclk, rclk, wrstn, rrstn, winc, rinc,
    input  [WIDTH-1:0]       wdata,
    output wire              wfull, rempty,
    output wire [WIDTH-1:0]  rdata
);

    parameter ADDR_WIDTH = $clog2(DEPTH);
    reg  [ADDR_WIDTH:0] wptr_bin, rptr_bin;
    reg  [WIDTH-1:0]    mem [0:DEPTH-1];
    reg  [WIDTH-1:0]    rdata_r;
    wire [ADDR_WIDTH:0] wptr_gry, rptr_gry;
    reg  [ADDR_WIDTH:0] wptr_gry_reg, rptr_gry_reg;
    reg  [ADDR_WIDTH:0] rptr_s1, rptr_s2, wptr_s1, wptr_s2;

    // Binary Gray conversion function-style
    function [ADDR_WIDTH:0] bin2gray;
        input [ADDR_WIDTH:0] bin;
        bin2gray = bin ^ (bin >> 1);
    endfunction

    always @(posedge wclk or negedge wrstn) begin
        if(!wrstn) wptr_bin <= 0;
        else if(winc && !wfull) wptr_bin <= wptr_bin + 1;
    end
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) rptr_bin <= 0;
        else if(rinc && !rempty) rptr_bin <= rptr_bin + 1;
    end

    assign wptr_gry = bin2gray(wptr_bin);
    assign rptr_gry = bin2gray(rptr_bin);

    always @(posedge wclk or negedge wrstn) begin
        if(!wrstn) begin wptr_gry_reg<=0; rptr_s1<=0; rptr_s2<=0; end
        else begin wptr_gry_reg<=wptr_gry; rptr_s1<=rptr_gry_reg; rptr_s2<=rptr_s1; end
    end
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) begin rptr_gry_reg<=0; wptr_s1<=0; wptr_s2<=0; end
        else begin rptr_gry_reg<=rptr_gry; wptr_s1<=wptr_gry_reg; wptr_s2<=wptr_s1; end
    end

    assign wfull  = (wptr_gry_reg == {~rptr_s2[ADDR_WIDTH:ADDR_WIDTH-1], rptr_s2[ADDR_WIDTH-2:0]});
    assign rempty = (rptr_gry_reg == wptr_s2);

    wire wen = winc && !wfull;
    wire ren = rinc && !rempty;
    always @(posedge wclk) if(wen) mem[wptr_bin[ADDR_WIDTH-1:0]] <= wdata;
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) rdata_r <= 0;
        else if(ren) rdata_r <= mem[rptr_bin[ADDR_WIDTH-1:0]];
    end
    assign rdata = rdata_r;

endmodule