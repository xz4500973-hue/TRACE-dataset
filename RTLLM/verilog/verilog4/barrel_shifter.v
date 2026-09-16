`timescale 1ns/1ps

module barrel_shifter (
    input  [7:0] in,
    input  [2:0] ctrl,
    output [7:0] out
);

    // MUX-based: case on ctrl, explicitly enumerate all 8 shift amounts
    reg [7:0] result;
    always @(*) begin
        case (ctrl)
            3'd0: result = in;
            3'd1: result = in >> 1;
            3'd2: result = in >> 2;
            3'd3: result = in >> 3;
            3'd4: result = in >> 4;
            3'd5: result = in >> 5;
            3'd6: result = in >> 6;
            3'd7: result = in >> 7;
        endcase
    end
    assign out = result;

endmodule