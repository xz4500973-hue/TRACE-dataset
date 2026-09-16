`timescale 1ns/1ps

module multi_booth_8bit (p, rdy, clk, reset, a, b);
    input clk, reset;
    input [7:0] a, b;
    output reg [15:0] p;
    output rdy;
    reg [3:0] cnt;
    assign rdy = (cnt == 8);

    reg [15:0] prod;
    reg [15:0] mul_2a, mul_a;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cnt <= 0; prod <= 0;
            mul_2a <= {a, 1'b0};  // 2a
            mul_a  <= a;           // a
        end else if (cnt < 8) begin
            case ({b[cnt*2+1 -: 2], (cnt==0 ? 1'b0 : b[cnt*2-1])})
                3'b001, 3'b010: prod <= prod + (mul_a << (cnt*2));
                3'b011:         prod <= prod + (mul_2a << (cnt*2));
                3'b101:         prod <= prod - (mul_a << (cnt*2));
                3'b110:         prod <= prod - (mul_2a << (cnt*2));
                default: ;
            endcase
            cnt <= cnt + 1;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) p <= 0;
        else if (cnt == 8) p <= prod;
    end
endmodule