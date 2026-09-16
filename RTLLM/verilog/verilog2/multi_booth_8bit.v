`timescale 1ns/1ps

module multi_booth_8bit (p, rdy, clk, reset, a, b);
    input clk, reset;
    input [7:0] a, b;
    output reg [15:0] p;
    output reg rdy;

    // Booth radix-2 sequential: 8 iterations
    reg [16:0] acc;
    reg [7:0]  mr;
    reg [3:0]  count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            acc <= 0; mr <= b; count <= 0; rdy <= 0; p <= 0;
        end else if (count < 8) begin
            case ({acc[0], mr[0]})
                2'b01: acc[16:8] <= acc[16:8] + a;
                2'b10: acc[16:8] <= acc[16:8] - a;
                default: ;
            endcase
            {acc, mr} <= {acc[16], acc[16:1], mr[7:1]};
            count <= count + 1;
        end else begin
            p <= {acc[15:0], mr};
            rdy <= 1;
        end
    end
endmodule