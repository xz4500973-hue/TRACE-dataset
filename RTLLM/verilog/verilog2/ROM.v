`timescale 1ns/1ps

module ROM (
    input  wire [7:0]  addr,
    output reg  [15:0] dout
);

    // Combinational LUT-based ROM using case
    always @(*) begin
        case (addr)
            8'h00: dout = 16'hA0A0;
            8'h01: dout = 16'hB1B1;
            8'h02: dout = 16'hC2C2;
            8'h03: dout = 16'hD3D3;
            8'h04: dout = 16'hE4E4;
            8'h05: dout = 16'hF5F5;
            8'h06: dout = 16'h0606;
            8'h07: dout = 16'h1717;
            default: dout = 16'h0000;
        endcase
    end

endmodule