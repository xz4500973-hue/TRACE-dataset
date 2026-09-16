// vcnt.v - 可综合的可配置计数器
// 取代原 versatile_counter 宏定义方式
`define USE_CLEAR
`define USE_SET
`define USE_REW
`define USE_CE
`define USE_Q_OUT
`define USE_Q_BIN
`define USE_Z_OUT
`define USE_ZQ_OUT
`define USE_LEVEL1
`define USE_LEVEL2
(* keep_hierarchy = "yes" *) module vcnt #(
    parameter CNT_LENGTH = 8,               // 计数器位宽
    parameter CNT_RESET_VALUE = 0,          // 复位值
    parameter CNT_TYPE = "BINARY",          // "BINARY", "GRAY", "LFSR"
    parameter CNT_WRAP = 0,                 // 非0使能回绕，wrap_value有效
    parameter WRAP_VALUE = 0,               // 回绕值（当CNT_WRAP=1时）
    parameter CNT_CLEAR = 0,                // 1: 支持clear输入
    parameter CNT_SET = 0,                  // 1: 支持set输入
    parameter SET_VALUE = 0,                // 置位值
    parameter CNT_REW = 0,                  // 1: 支持双向计数
    parameter CNT_CE = 0,                   // 1: 支持时钟使能
    parameter CNT_Q_OUT = 1,                // 1: 输出q
    parameter CNT_Q_BIN = 0,                // 1: 在格雷码模式下额外输出二进制q_bin
    parameter CNT_Z_OUT = 0,                // 1: 输出零标志z
    parameter CNT_ZQ_OUT = 0,               // 1: 输出寄存的零标志zq
    parameter CNT_LEVEL1 = 0,               // 1: 输出level1
    parameter LEVEL1_VALUE = 0,             // level1触发值
    parameter CNT_LEVEL2 = 0,               // 1: 输出level2
    parameter LEVEL2_VALUE = 0,              // level2触发值
    // LFSR 多项式选择（仅在CNT_TYPE="LFSR"时有效）
    parameter LFSR_POLY = 0                 // 实际使用CNT_LENGTH决定多项式，此参数保留
) (
    input clk,
    input rst,
`ifdef USE_CLEAR
    input clear,
`endif
`ifdef USE_SET
    input set,
`endif
`ifdef USE_REW
    input rew,
`endif
`ifdef USE_CE
    input cke,
`endif
`ifdef USE_Q_OUT
    output reg [CNT_LENGTH:1] q,
`endif
`ifdef USE_Q_BIN
    output reg [CNT_LENGTH:1] q_bin,
`endif
`ifdef USE_Z_OUT
    output z,
`endif
`ifdef USE_ZQ_OUT
    output reg zq,
`endif
`ifdef USE_LEVEL1
    output reg level1,
`endif
`ifdef USE_LEVEL2
    output reg level2
`endif
);

// 本地参数处理
localparam USE_CLEAR = CNT_CLEAR;
localparam USE_SET = CNT_SET;
localparam USE_REW = CNT_REW;
localparam USE_CE = CNT_CE;
localparam USE_Q_OUT = CNT_Q_OUT;
localparam USE_Q_BIN = CNT_Q_BIN;
localparam USE_Z_OUT = CNT_Z_OUT;
localparam USE_ZQ_OUT = CNT_ZQ_OUT;
localparam USE_LEVEL1 = CNT_LEVEL1;
localparam USE_LEVEL2 = CNT_LEVEL2;

reg [CNT_LENGTH:1] qi;
wire [CNT_LENGTH:1] q_next;

// 二进制加法/减法/回绕/置位/清零逻辑
wire [CNT_LENGTH:1] q_next_bin;
wire [CNT_LENGTH:1] q_next_bin_fw, q_next_bin_rew;

// 正向二进制计数
assign q_next_bin_fw = 
    (USE_CLEAR && clear) ? {CNT_LENGTH{1'b0}} :
    (USE_SET && set)     ? SET_VALUE[CNT_LENGTH:1] :
    (CNT_WRAP && (qi == WRAP_VALUE[CNT_LENGTH:1])) ? {CNT_LENGTH{1'b0}} :
    qi + 1'b1;

// 反向二进制计数
assign q_next_bin_rew = 
    (USE_CLEAR && clear) ? {CNT_LENGTH{1'b0}} :
    (USE_SET && set)     ? SET_VALUE[CNT_LENGTH:1] :
    (CNT_WRAP && (qi == {CNT_LENGTH{1'b0}})) ? WRAP_VALUE[CNT_LENGTH:1] :
    qi - 1'b1;

// LFSR 反馈多项式逻辑（内嵌，不依赖外部文件）
wire LFSR_FB, LFSR_FB_REW;
lfsr_feedback #(.LENGTH(CNT_LENGTH)) u_lfsr_fb (
    .qi(qi),
    .fb(LFSR_FB),
    .fb_rew(LFSR_FB_REW)
);

wire [CNT_LENGTH:1] q_next_lfsr_fw;
wire [CNT_LENGTH:1] q_next_lfsr_rew;

generate
    if (CNT_TYPE == "LFSR") begin
        assign q_next_lfsr_fw = {qi[CNT_LENGTH-1:1], ~LFSR_FB};
        assign q_next_lfsr_rew = {~LFSR_FB_REW, qi[CNT_LENGTH:2]};
    end else begin
        assign q_next_lfsr_fw = q_next_bin_fw;
        assign q_next_lfsr_rew = q_next_bin_rew;
    end
endgenerate

// 最终下一状态选择
wire [CNT_LENGTH:1] q_next_fw = (CNT_TYPE == "LFSR") ? q_next_lfsr_fw : q_next_bin_fw;
wire [CNT_LENGTH:1] q_next_rew = (CNT_TYPE == "LFSR") ? q_next_lfsr_rew : q_next_bin_rew;

assign q_next = (USE_REW && rew) ? q_next_rew : q_next_fw;

// 时序更新
always @(posedge clk or posedge rst) begin
    if (rst)
        qi <= CNT_RESET_VALUE[CNT_LENGTH:1];
    else if (!USE_CE || (USE_CE && cke))
        qi <= q_next;
end

// q 输出：二进制或格雷码
generate
    if (USE_Q_OUT) begin
        if (CNT_TYPE == "GRAY") begin
            always @(posedge clk or posedge rst) begin
                if (rst)
                    q <= CNT_RESET_VALUE[CNT_LENGTH:1];
                else if (!USE_CE || (USE_CE && cke))
                    q <= (q_next >> 1) ^ q_next;
            end
            if (USE_Q_BIN) begin
                always @(*) q_bin = qi;
            end
        end else begin
            always @(*) q = qi;
        end
    end
endgenerate

// z 零标志（组合）
generate
    if (USE_Z_OUT) begin
        assign z = (qi == {CNT_LENGTH{1'b0}});
    end
endgenerate

// zq 寄存零标志
generate
    if (USE_ZQ_OUT) begin
        always @(posedge clk or posedge rst) begin
            if (rst)
                zq <= 1'b1;
            else if (!USE_CE || (USE_CE && cke))
                zq <= (q_next == {CNT_LENGTH{1'b0}});
        end
    end
endgenerate

// level1
generate
    if (USE_LEVEL1) begin
        always @(posedge clk or posedge rst) begin
            if (rst)
                level1 <= 1'b0;
            else if (!USE_CE || (USE_CE && cke)) begin
                if (q_next == LEVEL1_VALUE[CNT_LENGTH:1])
                    level1 <= 1'b1;
                else if (USE_REW && rew && (qi == LEVEL1_VALUE[CNT_LENGTH:1]))
                    level1 <= 1'b0;
            end
        end
    end
endgenerate

// level2
generate
    if (USE_LEVEL2) begin
        always @(posedge clk or posedge rst) begin
            if (rst)
                level2 <= 1'b0;
            else if (!USE_CE || (USE_CE && cke)) begin
                if (q_next == LEVEL2_VALUE[CNT_LENGTH:1])
                    level2 <= 1'b1;
                else if (USE_REW && rew && (qi == LEVEL2_VALUE[CNT_LENGTH:1]))
                    level2 <= 1'b0;
            end
        end
    end
endgenerate

endmodule

// LFSR 反馈多项式选择模块（内部使用，不单独文件）
(* keep_hierarchy = "yes" *) module lfsr_feedback #(
    parameter LENGTH = 8
) (
    input  [LENGTH:1] qi,
    output            fb,
    output            fb_rew
);
    reg fb_r, fb_rew_r;
    assign fb = fb_r;
    assign fb_rew = fb_rew_r;

    always @(*) begin
        case (LENGTH)
            2: begin fb_r = qi[2]^qi[1]; fb_rew_r = qi[1]^qi[2]; end
            3: begin fb_r = qi[3]^qi[2]; fb_rew_r = qi[1]^qi[3]; end
            4: begin fb_r = qi[4]^qi[3]; fb_rew_r = qi[1]^qi[4]; end
            5: begin fb_r = qi[5]^qi[3]; fb_rew_r = qi[1]^qi[4]; end
            6: begin fb_r = qi[6]^qi[5]; fb_rew_r = qi[1]^qi[6]; end
            7: begin fb_r = qi[7]^qi[6]; fb_rew_r = qi[1]^qi[7]; end
            8: begin fb_r = qi[8]^qi[6]^qi[5]^qi[4]; fb_rew_r = qi[1]^qi[7]^qi[6]^qi[5]; end
            9: begin fb_r = qi[9]^qi[5]; fb_rew_r = qi[1]^qi[6]; end
            10: begin fb_r = qi[10]^qi[7]; fb_rew_r = qi[1]^qi[8]; end
            11: begin fb_r = qi[11]^qi[9]; fb_rew_r = qi[1]^qi[10]; end
            12: begin fb_r = qi[12]^qi[6]^qi[4]^qi[1]; fb_rew_r = qi[1]^qi[7]^qi[5]^qi[2]; end
            13: begin fb_r = qi[13]^qi[4]^qi[3]^qi[1]; fb_rew_r = qi[1]^qi[5]^qi[4]^qi[2]; end
            14: begin fb_r = qi[14]^qi[5]^qi[3]^qi[1]; fb_rew_r = qi[1]^qi[6]^qi[4]^qi[2]; end
            15: begin fb_r = qi[15]^qi[14]; fb_rew_r = qi[1]^qi[15]; end
            16: begin fb_r = qi[16]^qi[15]^qi[13]^qi[4]; fb_rew_r = qi[1]^qi[16]^qi[14]^qi[5]; end
            17: begin fb_r = qi[17]^qi[14]; fb_rew_r = qi[1]^qi[15]; end
            18: begin fb_r = qi[18]^qi[11]; fb_rew_r = qi[1]^qi[12]; end
            19: begin fb_r = qi[19]^qi[6]^qi[2]^qi[1]; fb_rew_r = qi[1]^qi[7]^qi[3]^qi[2]; end
            20: begin fb_r = qi[20]^qi[17]; fb_rew_r = qi[1]^qi[18]; end
            21: begin fb_r = qi[21]^qi[19]; fb_rew_r = qi[1]^qi[20]; end
            22: begin fb_r = qi[22]^qi[21]; fb_rew_r = qi[1]^qi[22]; end
            23: begin fb_r = qi[23]^qi[18]; fb_rew_r = qi[1]^qi[19]; end
            24: begin fb_r = qi[24]^qi[23]^qi[22]^qi[17]; fb_rew_r = qi[1]^qi[24]^qi[23]^qi[18]; end
            25: begin fb_r = qi[25]^qi[22]; fb_rew_r = qi[1]^qi[23]; end
            26: begin fb_r = qi[26]^qi[6]^qi[2]^qi[1]; fb_rew_r = qi[1]^qi[7]^qi[3]^qi[2]; end
            27: begin fb_r = qi[27]^qi[5]^qi[2]^qi[1]; fb_rew_r = qi[1]^qi[6]^qi[3]^qi[2]; end
            28: begin fb_r = qi[28]^qi[25]; fb_rew_r = qi[1]^qi[26]; end
            29: begin fb_r = qi[29]^qi[27]; fb_rew_r = qi[1]^qi[28]; end
            30: begin fb_r = qi[30]^qi[6]^qi[4]^qi[1]; fb_rew_r = qi[1]^qi[7]^qi[5]^qi[2]; end
            31: begin fb_r = qi[31]^qi[28]; fb_rew_r = qi[1]^qi[29]; end
            32: begin fb_r = qi[32]^qi[22]^qi[2]^qi[1]; fb_rew_r = qi[1]^qi[23]^qi[3]^qi[2]; end
            default: begin fb_r = 1'b0; fb_rew_r = 1'b0; end
        endcase
    end
endmodule