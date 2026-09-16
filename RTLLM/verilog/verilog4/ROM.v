`timescale 1ns/1ps

module ROM (
    input  wire [7:0]  addr,
    output reg  [15:0] dout
);

    // ROM with register output (synchronous read)
    reg [15:0] mem [0:7];
    wire [15:0] rd_data;

    assign rd_data = mem[addr[2:0]];

    always @(*) begin
        mem[0] = 16'hA0A0;
        mem[1] = 16'hB1B1;
        mem[2] = 16'hC2C2;
        mem[3] = 16'hD3D3;
        mem[4] = 16'hE4E4;
        mem[5] = 16'hF5F5;
        mem[6] = 16'h0606;
        mem[7] = 16'h1717;
    end

    always @(addr) begin
        dout = rd_data;
    end

endmodule