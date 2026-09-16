`timescale 1ns/1ps

module ROM (
    input  wire [7:0]  addr,
    output wire [15:0] dout
);

    // LUT using assign with conditional operator tree
    assign dout = (addr == 8'h00) ? 16'hA0A0 :
                  (addr == 8'h01) ? 16'hB1B1 :
                  (addr == 8'h02) ? 16'hC2C2 :
                  (addr == 8'h03) ? 16'hD3D3 :
                  (addr == 8'h04) ? 16'hE4E4 :
                  (addr == 8'h05) ? 16'hF5F5 :
                  (addr == 8'h06) ? 16'h0606 :
                  (addr == 8'h07) ? 16'h1717 : 16'h0000;

endmodule