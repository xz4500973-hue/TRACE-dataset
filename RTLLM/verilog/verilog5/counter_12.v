`timescale 1ns/1ps
module counter_12(input rst_n, clk, valid_count, output[3:0]out);
    reg[3:0] out_r;
    wire load = valid_count && out_r==11;
    wire inc  = valid_count && out_r!=11;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) out_r<=0;
        else if(load) out_r<=0;
        else if(inc)  out_r<=out_r+1;
    end
    assign out=out_r;
endmodule