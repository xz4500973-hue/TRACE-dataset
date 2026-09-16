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

    reg  [ADDR_WIDTH:0] waddr_bin, raddr_bin;
    wire [ADDR_WIDTH:0] waddr_gray, raddr_gray;
    reg  [ADDR_WIDTH:0] wptr, rptr;

    always @(posedge wclk or negedge wrstn) begin
        if(!wrstn) waddr_bin <= 0;
        else if(!wfull && winc) waddr_bin <= waddr_bin + 1;
    end
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) raddr_bin <= 0;
        else if(!rempty && rinc) raddr_bin <= raddr_bin + 1;
    end

    assign waddr_gray = waddr_bin ^ (waddr_bin>>1);
    assign raddr_gray = raddr_bin ^ (raddr_bin>>1);

    always @(posedge wclk or negedge wrstn) if(!wrstn) wptr<=0; else wptr<=waddr_gray;
    always @(posedge rclk or negedge rrstn) if(!rrstn) rptr<=0; else rptr<=raddr_gray;

    // 2-stage synchronizers with generate
    reg [ADDR_WIDTH:0] rptr_sync [0:1];
    reg [ADDR_WIDTH:0] wptr_sync [0:1];
    genvar g;
    generate
        always @(posedge wclk or negedge wrstn) begin
            if(!wrstn) begin rptr_sync[0]<='d0; rptr_sync[1]<='d0; end
            else begin rptr_sync[0]<=rptr; rptr_sync[1]<=rptr_sync[0]; end
        end
        always @(posedge rclk or negedge rrstn) begin
            if(!rrstn) begin wptr_sync[0]<='d0; wptr_sync[1]<='d0; end
            else begin wptr_sync[0]<=wptr; wptr_sync[1]<=wptr_sync[0]; end
        end
    endgenerate

    assign wfull  = (wptr == {~rptr_sync[1][ADDR_WIDTH:ADDR_WIDTH-1], rptr_sync[1][ADDR_WIDTH-2:0]});
    assign rempty = (rptr == wptr_sync[1]);

    // RAM
    wire wen = winc & !wfull;
    wire ren = rinc & !rempty;
    reg  [WIDTH-1:0] mem [0:DEPTH-1];
    reg  [WIDTH-1:0] rdata_r;
    always @(posedge wclk) if(wen) mem[waddr_bin[ADDR_WIDTH-1:0]] <= wdata;
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) rdata_r <= 0;
        else if(ren) rdata_r <= mem[raddr_bin[ADDR_WIDTH-1:0]];
    end
    assign rdata = rdata_r;

endmodule