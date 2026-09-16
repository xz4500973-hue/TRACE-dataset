`timescale 1ns/1ps
// 8-bit barrel shifter, variant 3: per-bit 8:1 mux
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : MUX
            reg r;
            always @(*) begin
                case (shamt)
                    3'd0: r = data[i];
                    3'd1: r = (i >= 1) ? data[i-1] : 1'b0;
                    3'd2: r = (i >= 2) ? data[i-2] : 1'b0;
                    3'd3: r = (i >= 3) ? data[i-3] : 1'b0;
                    3'd4: r = (i >= 4) ? data[i-4] : 1'b0;
                    3'd5: r = (i >= 5) ? data[i-5] : 1'b0;
                    3'd6: r = (i >= 6) ? data[i-6] : 1'b0;
                    3'd7: r = (i >= 7) ? data[i-7] : 1'b0;
                    default: r = 1'b0;
                endcase
            end
            assign out[i] = r;
        end
    endgenerate
endmodule
