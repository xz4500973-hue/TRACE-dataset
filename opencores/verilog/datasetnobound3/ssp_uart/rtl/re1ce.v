// re1ce.v - dataset3: ternary sync pipeline

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module re1ce(den, din, clk, rst, trg, pls);
    input den, din, clk, rst;
    output trg, pls;

    reg QIn;
    reg [2:0] QSync;
    reg pls_pipe;

    wire Rst_QIn = (rst | pls);

    always @(posedge din or posedge Rst_QIn) begin
        if(Rst_QIn) QIn <= 0; else if(den) QIn <= den;
    end
    assign trg = QIn;

    always @(posedge clk or posedge rst) begin
        if(rst) QSync <= 3'b0;
        else QSync <= {QSync[0] & ~QSync[1], QSync[0], QIn};
    end

    always @(posedge clk or posedge rst)
        if(rst) pls_pipe <= 0; else pls_pipe <= QSync[2];

    assign pls = pls_pipe;
endmodule