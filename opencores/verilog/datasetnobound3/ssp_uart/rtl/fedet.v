// fedet.v - dataset3: pipelined output

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module fedet(rst, clk, din, pls);
    input rst, clk, din;
    output pls;

    reg [2:0] QSync;
    reg pls_pipe;

    always @(posedge clk or posedge rst) begin
        if(rst) QSync <= 3'b011;
        else QSync <= {~QSync[0] & QSync[1], QSync[0], din};
    end

    always @(posedge clk or posedge rst)
        if(rst) pls_pipe <= 0; else pls_pipe <= QSync[2];

    assign pls = pls_pipe;
endmodule