// redet.v - dataset2: if-else chain sync

`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module redet(rst, clk, din, pls);
    input rst, clk, din;
    output pls;

    reg [2:0] QSync;

    always @(posedge clk or posedge rst) begin
        if(rst) QSync <= 3'b0;
        else begin
            QSync[0] <= din;
            QSync[1] <= QSync[0];
            QSync[2] <= QSync[0] & ~QSync[1];
        end
    end

    assign pls = QSync[2];
endmodule