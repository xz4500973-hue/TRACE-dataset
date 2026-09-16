`timescale 1ns/1ps

module ring_counter (
    input wire clk,
    input wire reset,
    output wire [7:0] out
);

    // One-hot ring: 8 DFFs in a loop
    reg [7:0] ff;

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : ring_bit
            always @(posedge clk or posedge reset) begin
                if (reset)
                    ff[i] <= (i == 0);  // bit0=1, rest=0
                else if (i == 0)
                    ff[i] <= ff[7];
                else
                    ff[i] <= ff[i-1];
            end
        end
    endgenerate

    assign out = ff;

endmodule