`timescale 1ns/1ps

module asyn_fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 16
)(
    input                    wclk,
    input                    rclk,
    input                    wrstn,
    input                    rrstn,
    input                    winc,
    input                    rinc,
    input  [WIDTH-1:0]       wdata,
    output wire              wfull,
    output wire              rempty,
    output wire [WIDTH-1:0]  rdata
);

    parameter ADDR_WIDTH = $clog2(DEPTH);

    // Simplified: use synchronous pointers + full/empty via counter
    reg [ADDR_WIDTH-1:0] waddr, raddr;
    reg [ADDR_WIDTH:0]   wcnt, rcnt;
    reg [WIDTH-1:0]      mem [0:DEPTH-1];
    reg [WIDTH-1:0]      rdata_reg;

    // Write logic
    always @(posedge wclk or negedge wrstn) begin
        if (!wrstn) begin
            waddr <= 0;
            wcnt  <= 0;
        end else if (winc && !wfull) begin
            mem[waddr] <= wdata;
            waddr      <= waddr + 1'b1;
            wcnt       <= wcnt + 1'b1;
        end
    end

    // Read logic
    always @(posedge rclk or negedge rrstn) begin
        if (!rrstn) begin
            raddr     <= 0;
            rcnt      <= 0;
            rdata_reg <= 0;
        end else if (rinc && !rempty) begin
            rdata_reg <= mem[raddr];
            raddr     <= raddr + 1'b1;
            rcnt      <= rcnt + 1'b1;
        end
    end

    // Synchronized counters for full/empty
    reg [ADDR_WIDTH:0] rcnt_sync1_w, rcnt_sync2_w;
    reg [ADDR_WIDTH:0] wcnt_sync1_r, wcnt_sync2_r;

    always @(posedge wclk or negedge wrstn) begin
        if (!wrstn) begin
            rcnt_sync1_w <= 0;
            rcnt_sync2_w <= 0;
        end else begin
            rcnt_sync1_w <= rcnt;
            rcnt_sync2_w <= rcnt_sync1_w;
        end
    end

    always @(posedge rclk or negedge rrstn) begin
        if (!rrstn) begin
            wcnt_sync1_r <= 0;
            wcnt_sync2_r <= 0;
        end else begin
            wcnt_sync1_r <= wcnt;
            wcnt_sync2_r <= wcnt_sync1_r;
        end
    end

    assign wfull  = (wcnt - rcnt_sync2_w == DEPTH);
    assign rempty = (wcnt_sync2_r == rcnt);
    assign rdata  = rdata_reg;

endmodule