// vcnt.v - dataset3: two-process style with next-state wires

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
    parameter CNT_LENGTH = 8, parameter CNT_RESET_VALUE = 0,
    parameter CNT_TYPE = "BINARY", parameter CNT_WRAP = 0,
    parameter WRAP_VALUE = 0, parameter CNT_CLEAR = 0,
    parameter CNT_SET = 0, parameter SET_VALUE = 0,
    parameter CNT_REW = 0, parameter CNT_CE = 0,
    parameter CNT_Q_OUT = 1, parameter CNT_Q_BIN = 0,
    parameter CNT_Z_OUT = 0, parameter CNT_ZQ_OUT = 0,
    parameter CNT_LEVEL1 = 0, parameter LEVEL1_VALUE = 0,
    parameter CNT_LEVEL2 = 0, parameter LEVEL2_VALUE = 0,
    parameter LFSR_POLY = 0
) (
    input clk, rst,
`ifdef USE_CLEAR input clear, `endif `ifdef USE_SET input set, `endif `ifdef USE_REW input rew, `endif
`ifdef USE_CE input cke, `endif `ifdef USE_Q_OUT output reg [CNT_LENGTH:1] q, `endif
`ifdef USE_Q_BIN output reg [CNT_LENGTH:1] q_bin, `endif `ifdef USE_Z_OUT output z, `endif
`ifdef USE_ZQ_OUT output reg zq, `endif `ifdef USE_LEVEL1 output reg level1, `endif
`ifdef USE_LEVEL2 output reg level2 `endif
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
reg [CNT_LENGTH:1] qi_pipe; // extra pipeline stage

// Combinational next-state wires
wire [CNT_LENGTH:1] nxt_bin =
    (USE_CLEAR&&clear) ? {CNT_LENGTH{1'b0}} :
    (USE_SET&&set)     ? SET_VALUE[CNT_LENGTH:1] :
    (CNT_WRAP&&(qi==WRAP_VALUE[CNT_LENGTH:1])) ? {CNT_LENGTH{1'b0}} : qi+1;
wire [CNT_LENGTH:1] nxt_bin_rew =
    (USE_CLEAR&&clear) ? {CNT_LENGTH{1'b0}} :
    (USE_SET&&set)     ? SET_VALUE[CNT_LENGTH:1] :
    (CNT_WRAP&&(qi=={CNT_LENGTH{1'b0}})) ? WRAP_VALUE[CNT_LENGTH:1] : qi-1;

wire LFSR_FB,LFSR_FB_REW;
lfsr_feedback #(.LENGTH(CNT_LENGTH)) ufb(.qi(qi),.fb(LFSR_FB),.fb_rew(LFSR_FB_REW));

wire nxt_lfsr_fw = {qi[CNT_LENGTH-1:1],~LFSR_FB};
wire nxt_lfsr_rew = {~LFSR_FB_REW,qi[CNT_LENGTH:2]};

wire [CNT_LENGTH:1] nxt_fw = (CNT_TYPE=="LFSR")?nxt_lfsr_fw:nxt_bin;
wire [CNT_LENGTH:1] nxt_rew = (CNT_TYPE=="LFSR")?nxt_lfsr_rew:nxt_bin_rew;
wire [CNT_LENGTH:1] nxt = (USE_REW&&rew)?nxt_rew:nxt_fw;

// Sequential
always @(posedge clk or posedge rst) begin
    if(rst) begin qi<=CNT_RESET_VALUE[CNT_LENGTH:1]; qi_pipe<=CNT_RESET_VALUE[CNT_LENGTH:1]; end
    else if(!USE_CE||(USE_CE&&cke)) begin qi<=nxt; qi_pipe<=qi; end
end

generate if(USE_Q_OUT) begin
    if(CNT_TYPE=="GRAY") begin
        always @(posedge clk or posedge rst) if(rst) q<=CNT_RESET_VALUE[CNT_LENGTH:1]; else if(!USE_CE||(USE_CE&&cke)) q<=(nxt>>1)^nxt; end
        if(USE_Q_BIN) always @(*) q_bin=qi_pipe;
    end else always @(*) q=qi_pipe;
endgenerate

generate if(USE_Z_OUT) assign z=(qi_pipe=={CNT_LENGTH{1'b0}}); endgenerate
generate if(USE_ZQ_OUT) always @(posedge clk or posedge rst) if(rst)zq<=1;else if(!USE_CE||(USE_CE&&cke))zq<=(nxt=={CNT_LENGTH{1'b0}}); endgenerate
generate if(USE_LEVEL1) always @(posedge clk or posedge rst) if(rst)level1<=0;else if(!USE_CE||(USE_CE&&cke))level1<=(nxt==LEVEL1_VALUE[CNT_LENGTH:1])?1:(USE_REW&&rew&&(qi==LEVEL1_VALUE[CNT_LENGTH:1])?0:level1);endgenerate
generate if(USE_LEVEL2) always @(posedge clk or posedge rst) if(rst)level2<=0;else if(!USE_CE||(USE_CE&&cke))level2<=(nxt==LEVEL2_VALUE[CNT_LENGTH:1])?1:(USE_REW&&rew&&(qi==LEVEL2_VALUE[CNT_LENGTH:1])?0:level2);endgenerate
endmodule

(* keep_hierarchy = "yes" *) module lfsr_feedback #(parameter LENGTH=8)(input[LENGTH:1]qi,output fb,fb_rew);
reg fb_r,fb_rew_r; assign fb=fb_r; assign fb_rew=fb_rew_r;
always @(*) case(LENGTH)
2:begin fb_r=qi[2]^qi[1];fb_rew_r=qi[1]^qi[2];end
3:begin fb_r=qi[3]^qi[2];fb_rew_r=qi[1]^qi[3];end
4:begin fb_r=qi[4]^qi[3];fb_rew_r=qi[1]^qi[4];end
5:begin fb_r=qi[5]^qi[3];fb_rew_r=qi[1]^qi[4];end
6:begin fb_r=qi[6]^qi[5];fb_rew_r=qi[1]^qi[6];end
7:begin fb_r=qi[7]^qi[6];fb_rew_r=qi[1]^qi[7];end
8:begin fb_r=qi[8]^qi[6]^qi[5]^qi[4];fb_rew_r=qi[1]^qi[7]^qi[6]^qi[5];end
default:begin fb_r=0;fb_rew_r=0;end
endcase
endmodule