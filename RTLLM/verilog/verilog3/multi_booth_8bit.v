`timescale 1ns/1ps

module multi_booth_8bit (p, rdy, clk, reset, a, b);
    input clk, reset;
    input [7:0] a, b;
    output reg [15:0] p;
    output reg rdy;

    reg [15:0] shift_reg;  // {product[15:8], multiplier[7:0], append_bit}
    reg [3:0]  cnt;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= {8'd0, b, 1'b0};
            cnt <= 0; rdy <= 0; p <= 0;
        end else if (cnt < 8) begin
            case (shift_reg[1:0])
                2'b01: shift_reg[15:8] <= shift_reg[15:8] + a;
                2'b10: shift_reg[15:8] <= shift_reg[15:8] - a;
                default: ;
            endcase
            shift_reg <= {shift_reg[15], shift_reg[15:1]};
            cnt <= cnt + 1;
        end else begin
            p   <= shift_reg[15:0];
            rdy <= 1;
        end
    end
endmodule