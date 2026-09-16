// re1ce.v - dataset2: simplified edge detector

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module re1ce(den, din, clk, rst, trg, pls);
    input den, din, clk, rst;
    output trg, pls;

    reg QIn;
    reg [1:0] QSync;

    wire Rst_QIn = (rst | pls);

    always @(posedge din or posedge Rst_QIn) begin
        if(Rst_QIn) QIn <= 0; else if(den) QIn <= den;
    end
    assign trg = QIn;

    always @(posedge clk or posedge rst) begin
        if(rst) QSync <= 2'b0;
        else QSync <= {QSync[0], QIn};
    end
    assign pls = QSync[1];
endmodule