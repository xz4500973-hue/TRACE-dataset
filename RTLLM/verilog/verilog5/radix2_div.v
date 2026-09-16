`timescale 1ns/1ps
module radix2_div #(parameter W=8)(
    input wire clk, rst,
    input wire [W-1:0] dividend, divisor, input wire sign,
    input wire opn_valid, output reg res_valid, input wire res_ready,
    output wire [2*W-1:0] result
);

    reg [W-1:0] dvd, dsr;
    reg [2*W-1:0] sr;
    reg [W:0] ndsr;
    reg [$clog2(W+1)-1:0] cnt;
    reg busy;

    wire [W:0] sum = {1'b0, sr[2*W-1:W]} + ndsr;
    wire co = sum[W];
    wire [W:0] mux = co ? sum : {1'b0, sr[2*W-1:W]};

    wire [W-1:0] dvd_abs = (sign & dividend[W-1]) ? ~dividend+1 : dividend;
    assign result = { (sign & dvd[W-1] ? ~sr[2*W-1:W]+1 : sr[2*W-1:W]),
                      (sign & (dvd[W-1]^dsr[W-1]) ? ~sr[W-1:0]+1 : sr[W-1:0]) };

    always @(posedge clk) begin
        if(rst) begin
            sr<=0; cnt<=0; busy<=0; res_valid<=0; dvd<=0; dsr<=0;
        end else begin
            if(!busy && opn_valid) begin
                dvd<=dividend; dsr<=divisor; busy<=1; cnt<=1;
                sr<={{(W-1){1'b0}}, dvd_abs, 1'b0};
                ndsr<=(sign & divisor[W-1]) ? {1'b1,divisor} : ~{1'b0,divisor}+1;
            end else if(busy) begin
                if(cnt[3]) begin // cnt==8
                    sr<={mux[W-1:0], sr[W-1:1], co};
                    busy<=0; res_valid<=1;
                end else begin
                    cnt<=cnt+1; sr<={mux[W-2:0], sr[W-1:1], co, 1'b0};
                end
            end
            if(res_valid && res_ready) res_valid<=0;
        end
    end
endmodule