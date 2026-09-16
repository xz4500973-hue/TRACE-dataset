`timescale 1ns/1ps
module radix2_div(
    input wire clk, rst,
    input wire [7:0] dividend, divisor, input wire sign,
    input wire opn_valid, output reg res_valid, input wire res_ready,
    output wire [15:0] result
);

    // Non-restoring division: 8 iterations
    reg [15:0] sr;
    reg [3:0] cnt;
    reg busy;
    reg [7:0] dvd, dsr;

    wire [7:0] dvd_abs = sign && dividend[7] ? ~dividend + 1 : dividend;
    assign result = { (sign && dvd[7] ? ~sr[15:8] + 1 : sr[15:8]),
                      (sign && (dvd[7] ^ dsr[7]) ? ~sr[7:0] + 1 : sr[7:0]) };

    always @(posedge clk) begin
        if(rst) begin
            sr<=0; cnt<=0; busy<=0; res_valid<=0; dvd<=0; dsr<=0;
        end else begin
            if(!busy && opn_valid) begin
                dvd<=dividend; dsr<=divisor; busy<=1; cnt<=0;
                sr<={8'd0, dvd_abs};
            end else if(busy && cnt<8) begin
                sr <= {sr[14:0], 1'b0};
                if(!sr[15])
                    sr[15:8] <= sr[14:7] - divisor;
                else
                    sr[15:8] <= sr[14:7] + divisor;
                sr[0] <= ~sr[15];
                cnt <= cnt + 1;
            end else if(cnt==8) begin
                busy<=0; res_valid<=1;
            end
            if(res_valid && res_ready) res_valid<=0;
        end
    end
endmodule