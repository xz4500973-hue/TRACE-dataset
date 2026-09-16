// vcnt.v - dataset2: case-style counter with merged generates

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
    parameter CNT_LENGTH = 8,
    parameter CNT_RESET_VALUE = 0,
    parameter CNT_TYPE = "BINARY",
    parameter CNT_WRAP = 0,
    parameter WRAP_VALUE = 0,
    parameter CNT_CLEAR = 0,
    parameter CNT_SET = 0,
    parameter SET_VALUE = 0,
    parameter CNT_REW = 0,
    parameter CNT_CE = 0,
    parameter CNT_Q_OUT = 1,
    parameter CNT_Q_BIN = 0,
    parameter CNT_Z_OUT = 0,
    parameter CNT_ZQ_OUT = 0,
    parameter CNT_LEVEL1 = 0,
    parameter LEVEL1_VALUE = 0,
    parameter CNT_LEVEL2 = 0,
    parameter LEVEL2_VALUE = 0,
    parameter LFSR_POLY = 0
) (
    input clk, rst,
`ifdef USE_CLEAR input clear, `endif
`ifdef USE_SET input set, `endif
`ifdef USE_REW input rew, `endif
`ifdef USE_CE input cke, `endif
`ifdef USE_Q_OUT output reg [CNT_LENGTH:1] q, `endif
`ifdef USE_Q_BIN output reg [CNT_LENGTH:1] q_bin, `endif
`ifdef USE_Z_OUT output z, `endif
`ifdef USE_ZQ_OUT output reg zq, `endif
`ifdef USE_LEVEL1 output reg level1, `endif
`ifdef USE_LEVEL2 output reg level2 `endif
);

localparam USE_CLEAR=CNT_CLEAR, USE_SET=CNT_SET, USE_REW=CNT_REW, USE_CE=CNT_CE;
localparam USE_Q_OUT=CNT_Q_OUT, USE_Q_BIN=CNT_Q_BIN, USE_Z_OUT=CNT_Z_OUT, USE_ZQ_OUT=CNT_ZQ_OUT;
localparam USE_LEVEL1=CNT_LEVEL1, USE_LEVEL2=CNT_LEVEL2;

reg [CNT_LENGTH:1] qi;

// Binary next-state using case-style
reg [CNT_LENGTH:1] q_next_bin;
always @(*) begin
    casex({USE_CLEAR&&clear, USE_SET&&set, CNT_WRAP&&(qi==WRAP_VALUE[CNT_LENGTH:1]), USE_REW&&rew})
        4'b1xxx: q_next_bin = {CNT_LENGTH{1'b0}};
        4'bx1xx: q_next_bin = SET_VALUE[CNT_LENGTH:1];
        4'bxx10: q_next_bin = {CNT_LENGTH{1'b0}};
        4'bxxx1: q_next_bin = qi - 1'b1;
        default: q_next_bin = qi + 1'b1;
    endcase
end

// LFSR feedback
wire LFSR_FB, LFSR_FB_REW;
lfsr_feedback #(.LENGTH(CNT_LENGTH)) ufb(.qi(qi),.fb(LFSR_FB),.fb_rew(LFSR_FB_REW));

wire [CNT_LENGTH:1] q_lfsr_fw = {qi[CNT_LENGTH-1:1], ~LFSR_FB};
wire [CNT_LENGTH:1] q_lfsr_rew = {~LFSR_FB_REW, qi[CNT_LENGTH:2]};

wire [CNT_LENGTH:1] q_next_lfsrfw = (CNT_TYPE=="LFSR") ? q_lfsr_fw : q_next_bin;
wire [CNT_LENGTH:1] q_next_lfsrrew = (CNT_TYPE=="LFSR") ? q_lfsr_rew : q_next_bin;

wire [CNT_LENGTH:1] q_next = (USE_REW&&rew) ? q_next_lfsrrew : q_next_lfsrfw;

// Merged sequential block
always @(posedge clk or posedge rst) begin
    if(rst) qi <= CNT_RESET_VALUE[CNT_LENGTH:1];
    else if(!USE_CE||(USE_CE&&cke)) qi <= q_next;
end

// Gray output using case
generate if(USE_Q_OUT) begin
    if(CNT_TYPE=="GRAY") begin
        always @(posedge clk or posedge rst) begin
            if(rst) q <= CNT_RESET_VALUE[CNT_LENGTH:1];
            else if(!USE_CE||(USE_CE&&cke)) q <= (q_next>>1)^q_next;
        end
        if(USE_Q_BIN) always @(*) q_bin = qi;
    end else always @(*) q = qi;
end endgenerate

generate if(USE_Z_OUT) assign z = (qi=={CNT_LENGTH{1'b0}}); endgenerate
generate if(USE_ZQ_OUT) always @(posedge clk or posedge rst) begin
    if(rst) zq<=1; else if(!USE_CE||(USE_CE&&cke)) zq<=(q_next=={CNT_LENGTH{1'b0}}); end endgenerate
generate if(USE_LEVEL1) always @(posedge clk or posedge rst) begin
    if(rst) level1<=0; else if(!USE_CE||(USE_CE&&cke)) level1<=(q_next==LEVEL1_VALUE[CNT_LENGTH:1])?1:(USE_REW&&rew&&(qi==LEVEL1_VALUE[CNT_LENGTH:1])?0:level1); end endgenerate
generate if(USE_LEVEL2) always @(posedge clk or posedge rst) begin
    if(rst) level2<=0; else if(!USE_CE||(USE_CE&&cke)) level2<=(q_next==LEVEL2_VALUE[CNT_LENGTH:1])?1:(USE_REW&&rew&&(qi==LEVEL2_VALUE[CNT_LENGTH:1])?0:level2); end endgenerate
endmodule

// LFSR feedback module (unchanged logic)
(* keep_hierarchy = "yes" *) module lfsr_feedback #(parameter LENGTH=8)(input[LENGTH:1]qi,output fb,fb_rew);
reg fb_r,fb_rew_r; assign fb=fb_r; assign fb_rew=fb_rew_r;
always @(*) case(LENGTH)
2:begin fb_r=qi[2]^qi[1]; fb_rew_r=qi[1]^qi[2];end
3:begin fb_r=qi[3]^qi[2]; fb_rew_r=qi[1]^qi[3];end
4:begin fb_r=qi[4]^qi[3]; fb_rew_r=qi[1]^qi[4];end
5:begin fb_r=qi[5]^qi[3]; fb_rew_r=qi[1]^qi[4];end
6:begin fb_r=qi[6]^qi[5]; fb_rew_r=qi[1]^qi[6];end
7:begin fb_r=qi[7]^qi[6]; fb_rew_r=qi[1]^qi[7];end
8:begin fb_r=qi[8]^qi[6]^qi[5]^qi[4]; fb_rew_r=qi[1]^qi[7]^qi[6]^qi[5];end
default:begin fb_r=0;fb_rew_r=0;end
endcase
endmodule