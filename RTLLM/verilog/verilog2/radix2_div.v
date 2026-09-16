`timescale 1ns/1ps
module radix2_div(
    input wire clk, rst,
    input wire [7:0] dividend, divisor,
    input wire sign,
    input wire opn_valid,
    output reg res_valid,
    input wire res_ready,
    output wire [15:0] result
);

    // FSM-based sequential divider (restoring)
    localparam IDLE=3'd0, COMPUTE=3'd1, DONE=3'd2;
    reg [2:0] state;
    reg [7:0] div_s, dsr_s;
    reg [15:0] sr;
    reg [8:0] neg_dsr;
    reg [3:0] cnt;

    wire [8:0] a = {1'b0, sr[15:8]} + neg_dsr;
    wire co = a[8];
    wire [8:0] mux_res = co ? a[8:0] : {1'b0, sr[15:8]};

    wire [7:0] dvd_abs = (sign & dividend[7]) ? ~dividend+1 : dividend;
    wire [7:0] rem = (sign & div_s[7]) ? ~sr[15:8]+1 : sr[15:8];
    wire [7:0] quot = (sign & (div_s[7] ^ dsr_s[7])) ? ~sr[7:0]+1 : sr[7:0];
    assign result = {rem, quot};

    always @(posedge clk) begin
        if(rst) begin
            state <= IDLE; sr <= 0; cnt <= 0;
            res_valid <= 0; div_s <= 0; dsr_s <= 0;
        end else begin
            case(state)
                IDLE: if(opn_valid && !res_valid) begin
                    state <= COMPUTE; cnt <= 1;
                    div_s <= dividend; dsr_s <= divisor;
                    sr <= {7'b0, dvd_abs, 1'b0};
                    neg_dsr <= (sign & divisor[7]) ? {1'b1, divisor} : ~{1'b0, divisor}+1;
                end
                COMPUTE: begin
                    if(cnt[3]) begin
                        sr <= {mux_res[7:0], sr[7:1], co};
                        state <= DONE;
                    end else begin
                        cnt <= cnt + 1;
                        sr <= {mux_res[6:0], sr[7:1], co, 1'b0};
                    end
                end
                DONE: begin
                    res_valid <= 1;
                    if(res_ready) begin
                        res_valid <= 0;
                        state <= IDLE;
                    end
                end
            endcase
        end
    end
endmodule