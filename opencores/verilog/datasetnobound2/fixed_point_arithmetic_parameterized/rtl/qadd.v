`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:18 08/24/2011 
// Design Name: 
// Module Name:    q15_add 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: refactored to registered output with clock
//
//////////////////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module qadd #(
    parameter Q = 15,
    parameter N = 32
)(
    input [N-1:0] a,
    input [N-1:0] b,
    input clk,
    output reg [N-1:0] c
);

reg [N-1:0] res;

always @(posedge clk) begin
    //both negative
    if(a[N-1] == 1 && b[N-1] == 1) begin
        res[N-1] = 1;
        res[N-2:0] = a[N-2:0] + b[N-2:0];
    end
    //both positive
    else if(a[N-1] == 0 && b[N-1] == 0) begin
        res[N-1] = 0;
        res[N-2:0] = a[N-2:0] + b[N-2:0];
    end
    //subtract a-b
    else if(a[N-1] == 0 && b[N-1] == 1) begin
        if(a[N-2:0] > b[N-2:0])
            res[N-1] = 1;
        else
            res[N-1] = 0;
        res[N-2:0] = a[N-2:0] - b[N-2:0];
    end
    //subtract b-a
    else begin
        if(a[N-2:0] < b[N-2:0])
            res[N-1] = 1;
        else
            res[N-1] = 0;
        res[N-2:0] = b[N-2:0] - a[N-2:0];
    end
    c <= res;
end

endmodule