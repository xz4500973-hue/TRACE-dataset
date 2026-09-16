module adder_pipe_64bit
#(
    parameter DATA_WIDTH = 64,
    parameter STG_WIDTH = 16
)
(
    input clk,
    input rst_n,
    input i_en,
    input [63:0] adda,
    input [63:0] addb,
    output [64:0] result,
    output reg o_en
);

// 流水线级寄存器
reg stage1, stage2, stage3;

// 拆分输入为4个16bit块
wire [15:0] a1 = adda[15:0];
wire [15:0] b1 = addb[15:0];
wire [15:0] a2 = adda[31:16];
wire [15:0] b2 = addb[31:16];
wire [15:0] a3 = adda[47:32];
wire [15:0] b3 = addb[47:32];
wire [15:0] a4 = adda[63:48];
wire [15:0] b4 = addb[63:48];

// 各段延迟对齐的寄存器
reg [15:0] a2_ff1, b2_ff1;
reg [15:0] a3_ff1, b3_ff1;
reg [15:0] a3_ff2, b3_ff2;
reg [15:0] a4_ff1, b4_ff1;
reg [15:0] a4_ff2, b4_ff2;
reg [15:0] a4_ff3, b4_ff3;

// 进位和结果寄存器
reg c1, c2, c3, c4;
reg [15:0] s1, s2, s3, s4;

// 结果对齐寄存器
reg [15:0] s1_ff1, s1_ff2, s1_ff3;
reg [15:0] s2_ff1, s2_ff2;
reg [15:0] s3_ff1;

// 中间求和变量（关键修正点）
wire [16:0] sum1, sum2, sum3, sum4;

// 计算各段和（组合逻辑）
assign sum1 = {1'b0, a1} + {1'b0, b1};           // 17bit
assign sum2 = {1'b0, a2_ff1} + {1'b0, b2_ff1} + c1;
assign sum3 = {1'b0, a3_ff2} + {1'b0, b3_ff2} + c2;
assign sum4 = {1'b0, a4_ff3} + {1'b0, b4_ff3} + c3;

// 使能链
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        stage1 <= 1'b0;
        stage2 <= 1'b0;
        stage3 <= 1'b0;
        o_en <= 1'b0;
    end else begin
        stage1 <= i_en;
        stage2 <= stage1;
        stage3 <= stage2;
        o_en <= stage3;
    end
end

// 数据延迟对齐
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        a2_ff1 <= 16'd0; b2_ff1 <= 16'd0;
        a3_ff1 <= 16'd0; b3_ff1 <= 16'd0;
        a3_ff2 <= 16'd0; b3_ff2 <= 16'd0;
        a4_ff1 <= 16'd0; b4_ff1 <= 16'd0;
        a4_ff2 <= 16'd0; b4_ff2 <= 16'd0;
        a4_ff3 <= 16'd0; b4_ff3 <= 16'd0;
    end else begin
        a2_ff1 <= a2; b2_ff1 <= b2;
        a3_ff1 <= a3; b3_ff1 <= b3;
        a3_ff2 <= a3_ff1; b3_ff2 <= b3_ff1;
        a4_ff1 <= a4; b4_ff1 <= b4;
        a4_ff2 <= a4_ff1; b4_ff2 <= b4_ff1;
        a4_ff3 <= a4_ff2; b4_ff3 <= b4_ff2;
    end
end

// 第1级加法（16bit -> 17bit）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        c1 <= 1'b0;
        s1 <= 16'd0;
    end else if (i_en) begin
        c1 <= sum1[16];      // 进位
        s1 <= sum1[15:0];    // 和
    end
end

// 第2级加法
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        c2 <= 1'b0;
        s2 <= 16'd0;
    end else if (stage1) begin
        c2 <= sum2[16];
        s2 <= sum2[15:0];
    end
end

// 第3级加法
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        c3 <= 1'b0;
        s3 <= 16'd0;
    end else if (stage2) begin
        c3 <= sum3[16];
        s3 <= sum3[15:0];
    end
end

// 第4级加法
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        c4 <= 1'b0;
        s4 <= 16'd0;
    end else if (stage3) begin
        c4 <= sum4[16];
        s4 <= sum4[15:0];
    end
end

// 结果对齐（使各段结果在同一拍输出）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        s1_ff1 <= 16'd0; s1_ff2 <= 16'd0; s1_ff3 <= 16'd0;
        s2_ff1 <= 16'd0; s2_ff2 <= 16'd0;
        s3_ff1 <= 16'd0;
    end else begin
        s1_ff1 <= s1;
        s1_ff2 <= s1_ff1;
        s1_ff3 <= s1_ff2;
        s2_ff1 <= s2;
        s2_ff2 <= s2_ff1;
        s3_ff1 <= s3;
    end
end

// 最终结果拼接
assign result = {c4, s4, s3_ff1, s2_ff2, s1_ff3};

endmodule