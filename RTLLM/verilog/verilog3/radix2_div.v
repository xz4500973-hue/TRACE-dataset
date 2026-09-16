`timescale 1ns/1ps
module radix2_div(
    input wire clk, rst,
    input wire [7:0] dividend, divisor, input wire sign,
    input wire opn_valid, output reg res_valid, input wire res_ready,
    output wire [15:0] result
);

    reg [7:0] dvd, dsr;
    reg [15:0] sr;
    reg [8:0] ndsr;
    reg [3:0] cnt;
    reg busy;

    wire [8:0] sum = {1'b0, sr[15:8]} + ndsr;
    wire co = sum[8];
    wire [8:0] mux = co ? sum : {1'b0, sr[15:8]};

    wire [7:0] dvd_abs = (sign & dividend[7]) ? ~dividend+1 : dividend;
    assign result = { (sign & dvd[7] ? ~sr[15:8]+1 : sr[15:8]),
                      (sign & (dvd[7]^dsr[7]) ? ~sr[7:0]+1 : sr[7:0]) };

    always @(posedge clk) begin
        if(rst) begin
            sr<=0; cnt<=0; busy<=0; res_valid<=0; dvd<=0; dsr<=0;
        end else begin
            if(!busy && opn_valid) begin
                dvd<=dividend; dsr<=divisor; busy<=1; cnt<=1;
                sr<={7'b0,dvd_abs,1'b0};
                ndsr<=(sign & divisor[7]) ? {1'b1,divisor} : ~{1'b0,divisor}+1;
            end else if(busy) begin
                if(cnt[3]) begin
                    sr<={mux[7:0], sr[7:1], co};
                    busy<=0; res_valid<=1;
                end else begin
                    cnt<=cnt+1; sr<={mux[6:0], sr[7:1], co, 1'b0};
                end
            end
            if(res_valid && res_ready) res_valid<=0;
        end
    end
endmodule