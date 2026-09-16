/*------------------------------------------------------------------------------
  Video Stream Scaler testbench - Nearest neighbor, high toggle rate
-------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`default_nettype wire

module scaler_tb;

parameter DATA_WIDTH = 8;
parameter CHANNELS = 3;
parameter DISCARD_CNT_WIDTH = 8;
parameter INPUT_X_RES_WIDTH = 11;
parameter INPUT_Y_RES_WIDTH = 11;
parameter OUTPUT_X_RES_WIDTH = 11;
parameter OUTPUT_Y_RES_WIDTH = 11;
parameter FRACTION_BITS = 8;
parameter SCALE_INT_BITS = 4;
parameter SCALE_FRAC_BITS = 14;
parameter BUFFER_SIZE = 4;

// 更大分辨率，增加处理量
parameter INPUT_X_RES = 1279;   // 1280x720
parameter INPUT_Y_RES = 719;
parameter OUTPUT_X_RES = 639;   // 640x360
parameter OUTPUT_Y_RES = 359;
parameter SCALE_BITS = SCALE_INT_BITS + SCALE_FRAC_BITS;

parameter X_SCALE = {SCALE_BITS{1'b0}} + (1<<(SCALE_FRAC_BITS));   // 缩小为 1/2
parameter Y_SCALE = {SCALE_BITS{1'b0}} + (1<<(SCALE_FRAC_BITS));

reg clk, rst;
reg [DATA_WIDTH*CHANNELS-1:0] dIn;
reg dInValid;
wire nextDin;
reg start;
wire [DATA_WIDTH*CHANNELS-1:0] dOut;
wire dOutValid;
reg nextDout;
reg [SCALE_BITS-1:0] leftOffset = 0, topFracOffset = 0;
reg nearestNeighbor = 1;      // 最近邻
reg done;

integer x_cnt, y_cnt;

// 时钟
initial begin clk=0; #5 forever #5 clk=~clk; end
initial begin rst=1; #50 rst=0; end

// 生成高频数据：每个像素 RGB 交替 (0xFF,0x00,0xFF) / (0x00,0xFF,0x00)
always @(posedge clk) begin
    if (rst) begin
        x_cnt <= 0;
        y_cnt <= 0;
        dInValid <= 0;
        start <= 0;
    end else begin
        if (y_cnt == 0 && x_cnt == 0) begin
            start <= 1;
            #10 start <= 0;
        end
        if (start) begin
            dInValid <= 1;
            // 每两个像素颜色翻转
            if ((x_cnt ^ y_cnt) & 1)
                dIn <= {24'hFF00FF};
            else
                dIn <= {24'h00FF00};
            if (nextDin) begin
                if (x_cnt == INPUT_X_RES) begin
                    x_cnt <= 0;
                    if (y_cnt == INPUT_Y_RES)
                        y_cnt <= 0;
                    else
                        y_cnt <= y_cnt + 1;
                end else
                    x_cnt <= x_cnt + 1;
            end
        end else begin
            dInValid <= 0;
        end
    end
end

// 输出读出：连续读取
initial begin
    nextDout = 1;
end

// 统计完成条件
integer dOutCount;
initial begin
    $dumpfile("scaler_nearest.vcd");
    $dumpvars(0, scaler_tb);
    dOutCount = 0;
    while (dOutCount < (OUTPUT_X_RES+1)*(OUTPUT_Y_RES+1)) begin
        #10;
        if (dOutValid) dOutCount = dOutCount + 1;
    end
    $display("Nearest neighbor simulation finished at %0t ns", $time);
    $finish;
end

// 实例化
streamScaler #(
    .DATA_WIDTH(DATA_WIDTH), .CHANNELS(CHANNELS), .DISCARD_CNT_WIDTH(DISCARD_CNT_WIDTH),
    .INPUT_X_RES_WIDTH(INPUT_X_RES_WIDTH), .INPUT_Y_RES_WIDTH(INPUT_Y_RES_WIDTH),
    .OUTPUT_X_RES_WIDTH(OUTPUT_X_RES_WIDTH), .OUTPUT_Y_RES_WIDTH(OUTPUT_Y_RES_WIDTH),
    .BUFFER_SIZE(BUFFER_SIZE)
) scaler_inst (
    .clk(clk), .rst(rst), .dIn(dIn), .dInValid(dInValid), .nextDin(nextDin), .start(start),
    .dOut(dOut), .dOutValid(dOutValid), .nextDout(nextDout),
    .inputDiscardCnt(8'd0), .inputXRes(INPUT_X_RES), .inputYRes(INPUT_Y_RES),
    .outputXRes(OUTPUT_X_RES), .outputYRes(OUTPUT_Y_RES),
    .xScale(X_SCALE), .yScale(Y_SCALE),
    .leftOffset(leftOffset), .topFracOffset(topFracOffset), .nearestNeighbor(nearestNeighbor)
);

endmodule