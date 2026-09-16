`timescale 1ns/1ps

module adder_bcd (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

    // Case-based lookup: explicitly enumerate all possible inputs
    reg [4:0] result;

    always @(*) begin
        result = A + B + Cin;
        if (result > 5'd9)
            result = result + 5'd6;
    end

    assign {Cout, Sum} = result;

endmodule