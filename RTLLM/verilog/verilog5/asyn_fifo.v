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

    parameter AW = $clog2(DEPTH);

    // Handshake token ring for full/empty
    reg [AW:0] wtoken, rtoken;
    reg [AW:0] rtoken_w1, rtoken_w2, wtoken_r1, wtoken_r2;
    reg [WIDTH-1:0] mem [0:DEPTH-1];
    reg [WIDTH-1:0] rdata_r;

    // Write side: token advances when writing
    always @(posedge wclk or negedge wrstn) begin
        if(!wrstn) wtoken <= 0;
        else if(winc && !wfull) wtoken <= wtoken + 1;
    end

    // Read side: token advances when reading
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) rtoken <= 0;
        else if(rinc && !rempty) rtoken <= rtoken + 1;
    end

    // Synchronize rtoken into wclk domain
    always @(posedge wclk or negedge wrstn) begin
        if(!wrstn) begin rtoken_w1 <= 0; rtoken_w2 <= 0; end
        else begin rtoken_w1 <= rtoken; rtoken_w2 <= rtoken_w1; end
    end
    // Synchronize wtoken into rclk domain
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) begin wtoken_r1 <= 0; wtoken_r2 <= 0; end
        else begin wtoken_r1 <= wtoken; wtoken_r2 <= wtoken_r1; end
    end

    assign wfull  = (wtoken - rtoken_w2 == DEPTH);
    assign rempty = (wtoken_r2 == rtoken);

    // Inferred block RAM write
    always @(posedge wclk) if(winc && !wfull) mem[wtoken[AW-1:0]] <= wdata;
    // Read
    always @(posedge rclk or negedge rrstn) begin
        if(!rrstn) rdata_r <= 0;
        else if(rinc && !rempty) rdata_r <= mem[rtoken[AW-1:0]];
    end
    assign rdata = rdata_r;

endmodule